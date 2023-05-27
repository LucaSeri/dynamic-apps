-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]


-- TLS helpers for kong.clustering
local tls = {}


local openssl_x509 = require("resty.openssl.x509")
local pl_file = require("pl.file")
local ssl = require("ngx.ssl")
local http = require("resty.http")

local utils = require("kong.tools.utils")
local constants = require("kong.constants")


-- XXX EE [[
local ee_tls = require("kong.enterprise_edition.clustering.tls")
local ee_validate_client_cert = ee_tls.ee_validate_client_cert
-- ]] EE


local ngx_log = ngx.log
local WARN = ngx.WARN

local get_cn_parent_domain = utils.get_cn_parent_domain
local OCSP_TIMEOUT = constants.CLUSTERING_OCSP_TIMEOUT



local function log(lvl, ...)
  ngx_log(lvl, "[clustering] ", ...)
end


local function validate_shared_cert(cert, cert_digest)
  local digest, err = cert:digest("sha256")
  if not digest then
    return nil, "unable to retrieve data plane client certificate digest " ..
                "during handshake: " .. err
  end

  if digest ~= cert_digest then
    return nil, "data plane presented incorrect client certificate during " ..
                "handshake (digest does not match the control plane certifiate)"
  end

  return true
end

local check_for_revocation_status
do
  local get_full_client_certificate_chain = require("resty.kong.tls").get_full_client_certificate_chain
  check_for_revocation_status = function()
    --- XXX EE: ensure the OCSP code path is isolated
    local ocsp = require("ngx.ocsp")
    --- EE

    local cert, err = get_full_client_certificate_chain()
    if not cert then
      return nil, err or "no client certificate"
    end

    local der_cert
    der_cert, err = ssl.cert_pem_to_der(cert)
    if not der_cert then
      return nil, "failed to convert certificate chain from PEM to DER: " .. err
    end

    local ocsp_url
    ocsp_url, err = ocsp.get_ocsp_responder_from_der_chain(der_cert)
    if not ocsp_url then
      return nil, err or ("OCSP responder endpoint can not be determined, " ..
                          "maybe the client certificate is missing the " ..
                          "required extensions")
    end

    local ocsp_req
    ocsp_req, err = ocsp.create_ocsp_request(der_cert)
    if not ocsp_req then
      return nil, "failed to create OCSP request: " .. err
    end

    local c = http.new()
    local res
    res, err = c:request_uri(ocsp_url, {
      headers = {
        ["Content-Type"] = "application/ocsp-request",
      },
      timeout = OCSP_TIMEOUT,
      method = "POST",
      body = ocsp_req,
    })

    if not res then
      return nil, "failed sending request to OCSP responder: " .. tostring(err)
    end
    if res.status ~= 200 then
      return nil, "OCSP responder returns bad HTTP status code: " .. res.status
    end

    local ocsp_resp = res.body
    if not ocsp_resp or #ocsp_resp == 0 then
      return nil, "unexpected response from OCSP responder: empty body"
    end

    res, err = ocsp.validate_ocsp_response(ocsp_resp, der_cert)
    if not res then
      return false, "failed to validate OCSP response: " .. err
    end

    return true
  end
end


---@class kong.clustering.certinfo : table
---
---@field raw                 string      # raw, PEM-encoded certificate string
---@field cdata               ffi.cdata*  # cdata pointer returned by ngx.ssl.parse_pem_cert()
---@field x509                table       # resty.openssl.x509 object
---@field digest              string      # sha256 certificate digest
---@field common_name?        string      # CN field of the certificate
---@field parent_common_name? string      # parent domain of the certificate CN


--- Read and parse the cluster certificate from disk.
---
---@param  kong_config               table
---@return kong.clustering.certinfo? cert
---@return string|nil                error
function tls.get_cluster_cert(kong_config)
  local raw, cdata, x509, digest, cn, parent_cn
  local err

  raw, err = pl_file.read(kong_config.cluster_cert)
  if not raw then
    return nil, "failed reading the cluster certificate file: "
                .. tostring(err)
  end

  cdata, err = ssl.parse_pem_cert(raw)
  if not cdata then
    return nil, "failed parsing the cluster certificate PEM data: "
                .. tostring(err)
  end

  x509, err = openssl_x509.new(raw, "PEM")
  if not x509 then
    return nil, "failed creating x509 object for the cluster certificate: "
                .. tostring(err)
  end

  digest, err = x509:digest("sha256")
  if not digest then
    return nil, "failed calculating the cluster certificate digest: "
                .. tostring(err)
  end

  if kong_config.role == "control_plane" and
     kong_config.cluster_mtls == "pki_check_cn"
  then
    cn, parent_cn = get_cn_parent_domain(x509)
    if not cn then
      -- parent_cn is the error message in this case
      return nil, "failed parsing the cluster certificate Common Name: "
                  .. tostring(parent_cn)
    end
  end

  return {
    cdata                  = cdata,
    common_name            = cn,
    digest                 = digest,
    parent_common_name     = parent_cn,
    raw                    = raw,
    x509                   = x509,
  }
end


--- Read and parse the cluster certificate private key from disk.
---
---@param  kong_config    table
---@return ffi.cdata*|nil private_key
---@return string|nil     error
function tls.get_cluster_cert_key(kong_config)
  local key_pem, key, err

  key_pem, err = pl_file.read(kong_config.cluster_cert_key)
  if not key_pem then
    return nil, "failed reading the cluster certificate private key file: "
                .. tostring(err)
  end

  key, err = ssl.parse_pem_priv_key(key_pem)
  if not key then
    return nil, "failed parsing the cluster certificate private key PEM data: "
                .. tostring(err)
  end

  return key
end


--- Validate the client certificate presented by the data plane.
---
---@param kong_config  table                    # kong.configuration table
---@param cp_cert      kong.clustering.certinfo # clustering certinfo table
---@param dp_cert_pem  string                   # data plane cert text
---
---@return boolean? success
---@return string?  error
function tls.validate_client_cert(kong_config, cp_cert, dp_cert_pem)
  if not dp_cert_pem then
    return nil, "data plane failed to present client certificate during handshake"
  end

  local cert, err = openssl_x509.new(dp_cert_pem, "PEM")
  if not cert then
    return nil, "unable to load data plane client certificate during handshake: " .. err
  end

  local ok, _

  -- use mutual TLS authentication
  if kong_config.cluster_mtls == "shared" then
    _, err = validate_shared_cert(cert, cp_cert.digest)

  elseif kong_config.cluster_ocsp ~= "off" then
    ok, err = check_for_revocation_status()
    if ok == false then
      err = "data plane client certificate was revoked: " ..  err

    elseif not ok then
      if kong_config.cluster_ocsp == "on" then
        err = "data plane client certificate revocation check failed: " .. err

      else
        log(WARN, "data plane client certificate revocation check failed: ", err)
        err = nil
      end
    end
  end

  if err then
    return nil, err
  end

  -- XXX EE [[
  ok, err = ee_validate_client_cert(kong_config, cp_cert, cert)
  if not ok then
    return nil, err
  end
  -- ]] EE


  return true
end


return tls
