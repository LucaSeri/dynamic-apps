-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local find = string.find
local upper = string.upper
local re_find = ngx.re.find

local normalize = require("kong.tools.uri").normalize

-- We do not percent decode route.path after 3.0, so here we do 1 last time for them
local normalize_regex
do
  local RESERVED_CHARACTERS = {
    [0x21] = true, -- !
    [0x23] = true, -- #
    [0x24] = true, -- $
    [0x25] = true, -- %
    [0x26] = true, -- &
    [0x27] = true, -- '
    [0x28] = true, -- (
    [0x29] = true, -- )
    [0x2A] = true, -- *
    [0x2B] = true, -- +
    [0x2C] = true, -- ,
    [0x2F] = true, -- /
    [0x3A] = true, -- :
    [0x3B] = true, -- ;
    [0x3D] = true, -- =
    [0x3F] = true, -- ?
    [0x40] = true, -- @
    [0x5B] = true, -- [
    [0x5D] = true, -- ]
  }
  local REGEX_META_CHARACTERS = {
    [0x2E] = [[\.]], -- .
    [0x5E] = [[\^]], -- ^
    -- $ in RESERVED_CHARACTERS
    -- * in RESERVED_CHARACTERS
    -- + in RESERVED_CHARACTERS
    [0x2D] = [[\-]], -- -
    -- ? in RESERVED_CHARACTERS
    -- ( in RESERVED_CHARACTERS
    -- ) in RESERVED_CHARACTERS
    -- [ in RESERVED_CHARACTERS
    -- ] in RESERVED_CHARACTERS
    [0x7B] = [[\{]], -- {
    [0x7D] = [[\}]], -- }
    [0x5C] = [[\\]], -- \
    [0x7C] = [[\|]], -- |
  }

  local tonumber    = tonumber
  local ngx_re_gsub = ngx.re.gsub
  local string_char = string.char

  local function percent_decode(m)
    local hex = m[1]
    local num = tonumber(hex, 16)
    if RESERVED_CHARACTERS[num] then
      return upper(m[0])
    end

    return REGEX_META_CHARACTERS[num] or
           string_char(num)
  end

  function normalize_regex(regex)
    if find(regex, "%", 1, true) then
      -- Decoding percent-encoded triplets of unreserved characters
      return ngx_re_gsub(regex, "%([\\dA-F]{2})", percent_decode, "joi")
    end
    return regex
  end
end

local function is_not_regex(path)
  return (re_find(path, [[[a-zA-Z0-9\.\-_~/%]*$]], "ajo"))
end

local function migrate_path(path)
  if is_not_regex(path) then
    local normalized = normalize(path, true)
    return normalized, normalized ~= path
  end

  local migrated = "~" .. normalize_regex(path)
  return migrated, true
end

return migrate_path