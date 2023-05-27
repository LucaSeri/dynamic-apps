return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://privateca.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Certificate Authority Service",
  description = "The Certificate Authority Service API is a highly-available, scalable service that enables you to simplify and automate the management of private certificate authorities (CAs) while staying in control of your private keys. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "privateca:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://privateca.mtls.googleapis.com/",
  name = "privateca",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    ["$.xgafv"] = {
      description = "V1 error format.",
      enum = {
        "1",
        "2",
      },
      enumDescriptions = {
        "v1 error format",
        "v2 error format",
      },
      location = "query",
      type = "string",
    },
    access_token = {
      description = "OAuth access token.",
      location = "query",
      type = "string",
    },
    alt = {
      default = "json",
      description = "Data format for response.",
      enum = {
        "json",
        "media",
        "proto",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
        "Media download with context-dependent Content-Type",
        "Responses with Content-Type of application/x-protobuf",
      },
      location = "query",
      type = "string",
    },
    callback = {
      description = "JSONP",
      location = "query",
      type = "string",
    },
    fields = {
      description = "Selector specifying which fields to include in a partial response.",
      location = "query",
      type = "string",
    },
    key = {
      description = "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.",
      location = "query",
      type = "string",
    },
    oauth_token = {
      description = "OAuth 2.0 token for the current user.",
      location = "query",
      type = "string",
    },
    prettyPrint = {
      default = "true",
      description = "Returns response with indentations and line breaks.",
      location = "query",
      type = "boolean",
    },
    quotaUser = {
      description = "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    uploadType = {
      description = "Legacy upload protocol for media (e.g. \"media\", \"multipart\").",
      location = "query",
      type = "string",
    },
    upload_protocol = {
      description = "Upload protocol for media (e.g. \"raw\", \"multipart\").",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    projects = {
      resources = {
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "privateca.projects.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "privateca.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            caPools = {
              methods = {
                create = {
                  description = "Create a CaPool.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools",
                  httpMethod = "POST",
                  id = "privateca.projects.locations.caPools.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    caPoolId = {
                      description = "Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the location associated with the CaPool, in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/caPools",
                  request = {
                    ["$ref"] = "CaPool",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a CaPool.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}",
                  httpMethod = "DELETE",
                  id = "privateca.projects.locations.caPools.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                fetchCaCerts = {
                  description = "FetchCaCerts returns the current trust anchor for the CaPool. This will include CA certificate chains for all ACTIVE CertificateAuthority resources in the CaPool.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}:fetchCaCerts",
                  httpMethod = "POST",
                  id = "privateca.projects.locations.caPools.fetchCaCerts",
                  parameterOrder = {
                    "caPool",
                  },
                  parameters = {
                    caPool = {
                      description = "Required. The resource name for the CaPool in the format `projects/*/locations/*/caPools/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+caPool}:fetchCaCerts",
                  request = {
                    ["$ref"] = "FetchCaCertsRequest",
                  },
                  response = {
                    ["$ref"] = "FetchCaCertsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns a CaPool.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}",
                  httpMethod = "GET",
                  id = "privateca.projects.locations.caPools.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the CaPool to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "CaPool",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "privateca.projects.locations.caPools.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists CaPools.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools",
                  httpMethod = "GET",
                  id = "privateca.projects.locations.caPools.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Only include resources that match the filter in the response.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specify how the results should be sorted.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Limit on the number of CaPools to include in the response. Further CaPools can subsequently be obtained by including the ListCaPoolsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Pagination token, returned earlier via ListCaPoolsResponse.next_page_token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the location associated with the CaPools, in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/caPools",
                  response = {
                    ["$ref"] = "ListCaPoolsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update a CaPool.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}",
                  httpMethod = "PATCH",
                  id = "privateca.projects.locations.caPools.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A list of fields to be updated in this request.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "CaPool",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "privateca.projects.locations.caPools.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "privateca.projects.locations.caPools.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                certificateAuthorities = {
                  methods = {
                    activate = {
                      description = "Activate a CertificateAuthority that is in state AWAITING_USER_ACTIVATION and is of type SUBORDINATE. After the parent Certificate Authority signs a certificate signing request from FetchCertificateAuthorityCsr, this method can complete the activation process.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}:activate",
                      httpMethod = "POST",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.activate",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:activate",
                      request = {
                        ["$ref"] = "ActivateCertificateAuthorityRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Create a new CertificateAuthority in a given Project and Location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities",
                      httpMethod = "POST",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        certificateAuthorityId = {
                          description = "Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the CaPool associated with the CertificateAuthorities, in the format `projects/*/locations/*/caPools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/certificateAuthorities",
                      request = {
                        ["$ref"] = "CertificateAuthority",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Delete a CertificateAuthority.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}",
                      httpMethod = "DELETE",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        ignoreActiveCertificates = {
                          description = "Optional. This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        skipGracePeriod = {
                          description = "Optional. If this flag is set, the Certificate Authority will be deleted as soon as possible without a 30-day grace period where undeletion would have been allowed. If you proceed, there will be no way to recover this CA.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    disable = {
                      description = "Disable a CertificateAuthority.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}:disable",
                      httpMethod = "POST",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.disable",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:disable",
                      request = {
                        ["$ref"] = "DisableCertificateAuthorityRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    enable = {
                      description = "Enable a CertificateAuthority.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}:enable",
                      httpMethod = "POST",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.enable",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:enable",
                      request = {
                        ["$ref"] = "EnableCertificateAuthorityRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    fetch = {
                      description = "Fetch a certificate signing request (CSR) from a CertificateAuthority that is in state AWAITING_USER_ACTIVATION and is of type SUBORDINATE. The CSR must then be signed by the desired parent Certificate Authority, which could be another CertificateAuthority resource, or could be an on-prem certificate authority. See also ActivateCertificateAuthority.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}:fetch",
                      httpMethod = "GET",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.fetch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:fetch",
                      response = {
                        ["$ref"] = "FetchCertificateAuthorityCsrResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns a CertificateAuthority.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}",
                      httpMethod = "GET",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the CertificateAuthority to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "CertificateAuthority",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists CertificateAuthorities.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities",
                      httpMethod = "GET",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Only include resources that match the filter in the response.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Specify how the results should be sorted.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Limit on the number of CertificateAuthorities to include in the response. Further CertificateAuthorities can subsequently be obtained by including the ListCertificateAuthoritiesResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Pagination token, returned earlier via ListCertificateAuthoritiesResponse.next_page_token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the CaPool associated with the CertificateAuthorities, in the format `projects/*/locations/*/caPools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/certificateAuthorities",
                      response = {
                        ["$ref"] = "ListCertificateAuthoritiesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Update a CertificateAuthority.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}",
                      httpMethod = "PATCH",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. A list of fields to be updated in this request.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "CertificateAuthority",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    undelete = {
                      description = "Undelete a CertificateAuthority that has been deleted.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}:undelete",
                      httpMethod = "POST",
                      id = "privateca.projects.locations.caPools.certificateAuthorities.undelete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:undelete",
                      request = {
                        ["$ref"] = "UndeleteCertificateAuthorityRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    certificateRevocationLists = {
                      methods = {
                        get = {
                          description = "Returns a CertificateRevocationList.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}/certificateRevocationLists/{certificateRevocationListsId}",
                          httpMethod = "GET",
                          id = "privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the CertificateRevocationList to get.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+/certificateRevocationLists/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "CertificateRevocationList",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getIamPolicy = {
                          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}/certificateRevocationLists/{certificateRevocationListsId}:getIamPolicy",
                          httpMethod = "GET",
                          id = "privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.getIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            ["options.requestedPolicyVersion"] = {
                              description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+/certificateRevocationLists/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+resource}:getIamPolicy",
                          response = {
                            ["$ref"] = "Policy",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists CertificateRevocationLists.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}/certificateRevocationLists",
                          httpMethod = "GET",
                          id = "privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Only include resources that match the filter in the response.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. Specify how the results should be sorted.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Limit on the number of CertificateRevocationLists to include in the response. Further CertificateRevocationLists can subsequently be obtained by including the ListCertificateRevocationListsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Pagination token, returned earlier via ListCertificateRevocationListsResponse.next_page_token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the location associated with the CertificateRevocationLists, in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/certificateRevocationLists",
                          response = {
                            ["$ref"] = "ListCertificateRevocationListsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Update a CertificateRevocationList.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}/certificateRevocationLists/{certificateRevocationListsId}",
                          httpMethod = "PATCH",
                          id = "privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Output only. The resource name for this CertificateRevocationList in the format `projects/*/locations/*/caPools/*certificateAuthorities/*/ certificateRevocationLists/*`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+/certificateRevocationLists/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            requestId = {
                              description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                              location = "query",
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. A list of fields to be updated in this request.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "CertificateRevocationList",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        setIamPolicy = {
                          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}/certificateRevocationLists/{certificateRevocationListsId}:setIamPolicy",
                          httpMethod = "POST",
                          id = "privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.setIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+/certificateRevocationLists/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+resource}:setIamPolicy",
                          request = {
                            ["$ref"] = "SetIamPolicyRequest",
                          },
                          response = {
                            ["$ref"] = "Policy",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        testIamPermissions = {
                          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificateAuthorities/{certificateAuthoritiesId}/certificateRevocationLists/{certificateRevocationListsId}:testIamPermissions",
                          httpMethod = "POST",
                          id = "privateca.projects.locations.caPools.certificateAuthorities.certificateRevocationLists.testIamPermissions",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificateAuthorities/[^/]+/certificateRevocationLists/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+resource}:testIamPermissions",
                          request = {
                            ["$ref"] = "TestIamPermissionsRequest",
                          },
                          response = {
                            ["$ref"] = "TestIamPermissionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                certificates = {
                  methods = {
                    create = {
                      description = "Create a new Certificate in a given Project, Location from a particular CaPool.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificates",
                      httpMethod = "POST",
                      id = "privateca.projects.locations.caPools.certificates.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        certificateId = {
                          description = "Optional. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. This field is required when using a CertificateAuthority in the Enterprise CertificateAuthority.Tier, but is optional and its value is ignored otherwise.",
                          location = "query",
                          type = "string",
                        },
                        issuingCertificateAuthorityId = {
                          description = "Optional. The resource ID of the CertificateAuthority that should issue the certificate. This optional field will ignore the load-balancing scheme of the Pool and directly issue the certificate from the CA with the specified ID, contained in the same CaPool referenced by `parent`. Per-CA quota rules apply. If left empty, a CertificateAuthority will be chosen from the CaPool by the service. For example, to issue a Certificate from a Certificate Authority with resource name \"projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca\", you can set the parent to \"projects/my-project/locations/us-central1/caPools/my-pool\" and the issuing_certificate_authority_id to \"my-ca\".",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the CaPool associated with the Certificate, in the format `projects/*/locations/*/caPools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. If this is true, no Certificate resource will be persisted regardless of the CaPool's tier, and the returned Certificate will not contain the pem_certificate field.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+parent}/certificates",
                      request = {
                        ["$ref"] = "Certificate",
                      },
                      response = {
                        ["$ref"] = "Certificate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns a Certificate.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificates/{certificatesId}",
                      httpMethod = "GET",
                      id = "privateca.projects.locations.caPools.certificates.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the Certificate to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Certificate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists Certificates.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificates",
                      httpMethod = "GET",
                      id = "privateca.projects.locations.caPools.certificates.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Only include resources that match the filter in the response. For details on supported filters and syntax, see [Certificates Filtering documentation](https://cloud.google.com/certificate-authority-service/docs/sorting-filtering-certificates#filtering_support).",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Specify how the results should be sorted. For details on supported fields and syntax, see [Certificates Sorting documentation](https://cloud.google.com/certificate-authority-service/docs/sorting-filtering-certificates#sorting_support).",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Limit on the number of Certificates to include in the response. Further Certificates can subsequently be obtained by including the ListCertificatesResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Pagination token, returned earlier via ListCertificatesResponse.next_page_token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the location associated with the Certificates, in the format `projects/*/locations/*/caPools/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/certificates",
                      response = {
                        ["$ref"] = "ListCertificatesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Update a Certificate. Currently, the only field you can update is the labels field.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificates/{certificatesId}",
                      httpMethod = "PATCH",
                      id = "privateca.projects.locations.caPools.certificates.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. A list of fields to be updated in this request.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Certificate",
                      },
                      response = {
                        ["$ref"] = "Certificate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    revoke = {
                      description = "Revoke a Certificate.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/caPools/{caPoolsId}/certificates/{certificatesId}:revoke",
                      httpMethod = "POST",
                      id = "privateca.projects.locations.caPools.certificates.revoke",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/caPools/[^/]+/certificates/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:revoke",
                      request = {
                        ["$ref"] = "RevokeCertificateRequest",
                      },
                      response = {
                        ["$ref"] = "Certificate",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            certificateTemplates = {
              methods = {
                create = {
                  description = "Create a new CertificateTemplate in a given Project and Location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateTemplates",
                  httpMethod = "POST",
                  id = "privateca.projects.locations.certificateTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    certificateTemplateId = {
                      description = "Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the location associated with the CertificateTemplate, in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificateTemplates",
                  request = {
                    ["$ref"] = "CertificateTemplate",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "DeleteCertificateTemplate deletes a CertificateTemplate.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateTemplates/{certificateTemplatesId}",
                  httpMethod = "DELETE",
                  id = "privateca.projects.locations.certificateTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns a CertificateTemplate.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateTemplates/{certificateTemplatesId}",
                  httpMethod = "GET",
                  id = "privateca.projects.locations.certificateTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the CertificateTemplate to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "CertificateTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateTemplates/{certificateTemplatesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "privateca.projects.locations.certificateTemplates.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists CertificateTemplates.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateTemplates",
                  httpMethod = "GET",
                  id = "privateca.projects.locations.certificateTemplates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Only include resources that match the filter in the response.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specify how the results should be sorted.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Limit on the number of CertificateTemplates to include in the response. Further CertificateTemplates can subsequently be obtained by including the ListCertificateTemplatesResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Pagination token, returned earlier via ListCertificateTemplatesResponse.next_page_token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the location associated with the CertificateTemplates, in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificateTemplates",
                  response = {
                    ["$ref"] = "ListCertificateTemplatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update a CertificateTemplate.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateTemplates/{certificateTemplatesId}",
                  httpMethod = "PATCH",
                  id = "privateca.projects.locations.certificateTemplates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A list of fields to be updated in this request.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "CertificateTemplate",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateTemplates/{certificateTemplatesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "privateca.projects.locations.certificateTemplates.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateTemplates/{certificateTemplatesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "privateca.projects.locations.certificateTemplates.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "privateca.projects.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "privateca.projects.locations.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "privateca.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "privateca.projects.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://privateca.googleapis.com/",
  schemas = {
    AccessUrls = {
      description = "URLs where a CertificateAuthority will publish content.",
      id = "AccessUrls",
      properties = {
        caCertificateAccessUrl = {
          description = "The URL where this CertificateAuthority's CA certificate is published. This will only be set for CAs that have been activated.",
          type = "string",
        },
        crlAccessUrls = {
          description = "The URLs where this CertificateAuthority's CRLs are published. This will only be set for CAs that have been activated.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ActivateCertificateAuthorityRequest = {
      description = "Request message for CertificateAuthorityService.ActivateCertificateAuthority.",
      id = "ActivateCertificateAuthorityRequest",
      properties = {
        pemCaCertificate = {
          description = "Required. The signed CA certificate issued from FetchCertificateAuthorityCsrResponse.pem_csr.",
          type = "string",
        },
        requestId = {
          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
        subordinateConfig = {
          ["$ref"] = "SubordinateConfig",
          description = "Required. Must include information about the issuer of 'pem_ca_certificate', and any further issuers until the self-signed CA.",
        },
      },
      type = "object",
    },
    AllowedKeyType = {
      description = "Describes a \"type\" of key that may be used in a Certificate issued from a CaPool. Note that a single AllowedKeyType may refer to either a fully-qualified key algorithm, such as RSA 4096, or a family of key algorithms, such as any RSA key.",
      id = "AllowedKeyType",
      properties = {
        ellipticCurve = {
          ["$ref"] = "EcKeyType",
          description = "Represents an allowed Elliptic Curve key type.",
        },
        rsa = {
          ["$ref"] = "RsaKeyType",
          description = "Represents an allowed RSA key type.",
        },
      },
      type = "object",
    },
    AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "AuditLogConfig",
          },
          type = "array",
        },
        service = {
          description = "Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.",
          type = "string",
        },
      },
      type = "object",
    },
    AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "AuditLogConfig",
      properties = {
        exemptedMembers = {
          description = "Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logType = {
          description = "The log type that this config enables.",
          enum = {
            "LOG_TYPE_UNSPECIFIED",
            "ADMIN_READ",
            "DATA_WRITE",
            "DATA_READ",
          },
          enumDescriptions = {
            "Default case. Should never be this.",
            "Admin reads. Example: CloudIAM getIamPolicy",
            "Data writes. Example: CloudSQL Users create",
            "Data reads. Example: CloudSQL Users list",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "Binding",
      properties = {
        condition = {
          ["$ref"] = "Expr",
          description = "The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
        },
        members = {
          description = "Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:{emailid}`: An email address that represents a specific Google account. For example, `alice@example.com` . * `serviceAccount:{emailid}`: An email address that represents a Google service account. For example, `my-other-app@appspot.gserviceaccount.com`. * `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An identifier for a [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:{emailid}`: An email address that represents a Google group. For example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:{emailid}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:{emailid}` and the undeleted service account retains the role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:{emailid}` and the recovered group retains the role in the binding. * `domain:{domain}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. ",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`.",
          type = "string",
        },
      },
      type = "object",
    },
    CaOptions = {
      description = "Describes values that are relevant in a CA certificate.",
      id = "CaOptions",
      properties = {
        isCa = {
          description = "Optional. Refers to the \"CA\" X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate.",
          type = "boolean",
        },
        maxIssuerPathLength = {
          description = "Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CaPool = {
      description = "A CaPool represents a group of CertificateAuthorities that form a trust anchor. A CaPool can be used to manage issuance policies for one or more CertificateAuthority resources and to rotate CA certificates in and out of the trust anchor.",
      id = "CaPool",
      properties = {
        issuancePolicy = {
          ["$ref"] = "IssuancePolicy",
          description = "Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Labels with user-defined metadata.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.",
          readOnly = true,
          type = "string",
        },
        publishingOptions = {
          ["$ref"] = "PublishingOptions",
          description = "Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.",
        },
        tier = {
          description = "Required. Immutable. The Tier of this CaPool.",
          enum = {
            "TIER_UNSPECIFIED",
            "ENTERPRISE",
            "DEVOPS",
          },
          enumDescriptions = {
            "Not specified.",
            "Enterprise tier.",
            "DevOps tier.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    CertChain = {
      id = "CertChain",
      properties = {
        certificates = {
          description = "The certificates that form the CA chain, from leaf to root order.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Certificate = {
      description = "A Certificate corresponds to a signed X.509 certificate issued by a CertificateAuthority.",
      id = "Certificate",
      properties = {
        certificateDescription = {
          ["$ref"] = "CertificateDescription",
          description = "Output only. A structured description of the issued X.509 certificate.",
          readOnly = true,
        },
        certificateTemplate = {
          description = "Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified, the caller must have the necessary permission to use this template. If this is omitted, no template will be used. This template must be in the same location as the Certificate.",
          type = "string",
        },
        config = {
          ["$ref"] = "CertificateConfig",
          description = "Immutable. A description of the certificate and key that does not require X.509 or ASN.1.",
        },
        createTime = {
          description = "Output only. The time at which this Certificate was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        issuerCertificateAuthority = {
          description = "Output only. The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Labels with user-defined metadata.",
          type = "object",
        },
        lifetime = {
          description = "Required. Immutable. The desired lifetime of a certificate. Used to create the \"not_before_time\" and \"not_after_time\" fields inside an X.509 certificate. Note that the lifetime may be truncated if it would extend past the life of any certificate authority in the issuing chain.",
          format = "google-duration",
          type = "string",
        },
        name = {
          description = "Output only. The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`.",
          readOnly = true,
          type = "string",
        },
        pemCertificate = {
          description = "Output only. The pem-encoded, signed X.509 certificate.",
          readOnly = true,
          type = "string",
        },
        pemCertificateChain = {
          description = "Output only. The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        pemCsr = {
          description = "Immutable. A pem-encoded X.509 certificate signing request (CSR).",
          type = "string",
        },
        revocationDetails = {
          ["$ref"] = "RevocationDetails",
          description = "Output only. Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.",
          readOnly = true,
        },
        subjectMode = {
          description = "Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.",
          enum = {
            "SUBJECT_REQUEST_MODE_UNSPECIFIED",
            "DEFAULT",
            "REFLECTED_SPIFFE",
          },
          enumDescriptions = {
            "Not specified.",
            "The default mode used in most cases. Indicates that the certificate's Subject and/or SubjectAltNames are specified in the certificate request. This mode requires the caller to have the `privateca.certificates.create` permission.",
            "A mode reserved for special cases. Indicates that the certificate should have one or more SPIFFE SubjectAltNames set by the service based on the caller's identity. This mode will ignore any explicitly specified Subject and/or SubjectAltNames in the certificate request. This mode requires the caller to have the `privateca.certificates.createForSelf` permission.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The time at which this Certificate was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CertificateAuthority = {
      description = "A CertificateAuthority represents an individual Certificate Authority. A CertificateAuthority can be used to create Certificates.",
      id = "CertificateAuthority",
      properties = {
        accessUrls = {
          ["$ref"] = "AccessUrls",
          description = "Output only. URLs for accessing content published by this CA, such as the CA certificate and CRLs.",
          readOnly = true,
        },
        caCertificateDescriptions = {
          description = "Output only. A structured description of this CertificateAuthority's CA certificate and its issuers. Ordered as self-to-root.",
          items = {
            ["$ref"] = "CertificateDescription",
          },
          readOnly = true,
          type = "array",
        },
        config = {
          ["$ref"] = "CertificateConfig",
          description = "Required. Immutable. The config used to create a self-signed X.509 certificate or CSR.",
        },
        createTime = {
          description = "Output only. The time at which this CertificateAuthority was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. The time at which this CertificateAuthority was soft deleted, if it is in the DELETED state.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        expireTime = {
          description = "Output only. The time at which this CertificateAuthority will be permanently purged, if it is in the DELETED state.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        gcsBucket = {
          description = "Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish content, such as the CA certificate and CRLs. This must be a bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named `my-bucket`, you would simply specify `my-bucket`. If not specified, a managed bucket will be created.",
          type = "string",
        },
        keySpec = {
          ["$ref"] = "KeyVersionSpec",
          description = "Required. Immutable. Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA certificate. Otherwise, it is used to sign a CSR.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Labels with user-defined metadata.",
          type = "object",
        },
        lifetime = {
          description = "Required. Immutable. The desired lifetime of the CA certificate. Used to create the \"not_before_time\" and \"not_after_time\" fields inside an X.509 certificate.",
          format = "google-duration",
          type = "string",
        },
        name = {
          description = "Output only. The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
          readOnly = true,
          type = "string",
        },
        pemCaCertificates = {
          description = "Output only. This CertificateAuthority's certificate chain, including the current CertificateAuthority's certificate. Ordered such that the root issuer is the final element (consistent with RFC 5246). For a self-signed CA, this will only list the current CertificateAuthority's certificate.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        state = {
          description = "Output only. The State for this CertificateAuthority.",
          enum = {
            "STATE_UNSPECIFIED",
            "ENABLED",
            "DISABLED",
            "STAGED",
            "AWAITING_USER_ACTIVATION",
            "DELETED",
          },
          enumDescriptions = {
            "Not specified.",
            "Certificates can be issued from this CA. CRLs will be generated for this CA. The CA will be part of the CaPool's trust anchor, and will be used to issue certificates from the CaPool.",
            "Certificates cannot be issued from this CA. CRLs will still be generated. The CA will be part of the CaPool's trust anchor, but will not be used to issue certificates from the CaPool.",
            "Certificates can be issued from this CA. CRLs will be generated for this CA. The CA will be part of the CaPool's trust anchor, but will not be used to issue certificates from the CaPool.",
            "Certificates cannot be issued from this CA. CRLs will not be generated. The CA will not be part of the CaPool's trust anchor, and will not be used to issue certificates from the CaPool.",
            "Certificates cannot be issued from this CA. CRLs will not be generated. The CA may still be recovered by calling CertificateAuthorityService.UndeleteCertificateAuthority before expire_time. The CA will not be part of the CaPool's trust anchor, and will not be used to issue certificates from the CaPool.",
          },
          readOnly = true,
          type = "string",
        },
        subordinateConfig = {
          ["$ref"] = "SubordinateConfig",
          description = "Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordinate configuration, which describes its issuers. This may be updated, but this CertificateAuthority must continue to validate.",
        },
        tier = {
          description = "Output only. The CaPool.Tier of the CaPool that includes this CertificateAuthority.",
          enum = {
            "TIER_UNSPECIFIED",
            "ENTERPRISE",
            "DEVOPS",
          },
          enumDescriptions = {
            "Not specified.",
            "Enterprise tier.",
            "DevOps tier.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Required. Immutable. The Type of this CertificateAuthority.",
          enum = {
            "TYPE_UNSPECIFIED",
            "SELF_SIGNED",
            "SUBORDINATE",
          },
          enumDescriptions = {
            "Not specified.",
            "Self-signed CA.",
            "Subordinate CA. Could be issued by a Private CA CertificateAuthority or an unmanaged CA.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The time at which this CertificateAuthority was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CertificateConfig = {
      description = "A CertificateConfig describes an X.509 certificate or CSR that is to be created, as an alternative to using ASN.1.",
      id = "CertificateConfig",
      properties = {
        publicKey = {
          ["$ref"] = "PublicKey",
          description = "Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.",
        },
        subjectConfig = {
          ["$ref"] = "SubjectConfig",
          description = "Required. Specifies some of the values in a certificate that are related to the subject.",
        },
        x509Config = {
          ["$ref"] = "X509Parameters",
          description = "Required. Describes how some of the technical X.509 fields in a certificate should be populated.",
        },
      },
      type = "object",
    },
    CertificateDescription = {
      description = "A CertificateDescription describes an X.509 certificate or CSR that has been issued, as an alternative to using ASN.1 / X.509.",
      id = "CertificateDescription",
      properties = {
        aiaIssuingCertificateUrls = {
          description = "Describes lists of issuer CA certificate URLs that appear in the \"Authority Information Access\" extension in the certificate.",
          items = {
            type = "string",
          },
          type = "array",
        },
        authorityKeyId = {
          ["$ref"] = "KeyId",
          description = "Identifies the subject_key_id of the parent certificate, per https://tools.ietf.org/html/rfc5280#section-4.2.1.1",
        },
        certFingerprint = {
          ["$ref"] = "CertificateFingerprint",
          description = "The hash of the x.509 certificate.",
        },
        crlDistributionPoints = {
          description = "Describes a list of locations to obtain CRL information, i.e. the DistributionPoint.fullName described by https://tools.ietf.org/html/rfc5280#section-4.2.1.13",
          items = {
            type = "string",
          },
          type = "array",
        },
        publicKey = {
          ["$ref"] = "PublicKey",
          description = "The public key that corresponds to an issued certificate.",
        },
        subjectDescription = {
          ["$ref"] = "SubjectDescription",
          description = "Describes some of the values in a certificate that are related to the subject and lifetime.",
        },
        subjectKeyId = {
          ["$ref"] = "KeyId",
          description = "Provides a means of identifiying certificates that contain a particular public key, per https://tools.ietf.org/html/rfc5280#section-4.2.1.2.",
        },
        x509Description = {
          ["$ref"] = "X509Parameters",
          description = "Describes some of the technical X.509 fields in a certificate.",
        },
      },
      type = "object",
    },
    CertificateExtensionConstraints = {
      description = "Describes a set of X.509 extensions that may be part of some certificate issuance controls.",
      id = "CertificateExtensionConstraints",
      properties = {
        additionalExtensions = {
          description = "Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.",
          items = {
            ["$ref"] = "ObjectId",
          },
          type = "array",
        },
        knownExtensions = {
          description = "Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.",
          items = {
            enum = {
              "KNOWN_CERTIFICATE_EXTENSION_UNSPECIFIED",
              "BASE_KEY_USAGE",
              "EXTENDED_KEY_USAGE",
              "CA_OPTIONS",
              "POLICY_IDS",
              "AIA_OCSP_SERVERS",
            },
            enumDescriptions = {
              "Not specified.",
              "Refers to a certificate's Key Usage extension, as described in [RFC 5280 section 4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3). This corresponds to the KeyUsage.base_key_usage field.",
              "Refers to a certificate's Extended Key Usage extension, as described in [RFC 5280 section 4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12). This corresponds to the KeyUsage.extended_key_usage message.",
              "Refers to a certificate's Basic Constraints extension, as described in [RFC 5280 section 4.2.1.9](https://tools.ietf.org/html/rfc5280#section-4.2.1.9). This corresponds to the X509Parameters.ca_options field.",
              "Refers to a certificate's Policy object identifiers, as described in [RFC 5280 section 4.2.1.4](https://tools.ietf.org/html/rfc5280#section-4.2.1.4). This corresponds to the X509Parameters.policy_ids field.",
              "Refers to OCSP servers in a certificate's Authority Information Access extension, as described in [RFC 5280 section 4.2.2.1](https://tools.ietf.org/html/rfc5280#section-4.2.2.1), This corresponds to the X509Parameters.aia_ocsp_servers field.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CertificateFingerprint = {
      description = "A group of fingerprints for the x509 certificate.",
      id = "CertificateFingerprint",
      properties = {
        sha256Hash = {
          description = "The SHA 256 hash, encoded in hexadecimal, of the DER x509 certificate.",
          type = "string",
        },
      },
      type = "object",
    },
    CertificateIdentityConstraints = {
      description = "Describes constraints on a Certificate's Subject and SubjectAltNames.",
      id = "CertificateIdentityConstraints",
      properties = {
        allowSubjectAltNamesPassthrough = {
          description = "Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.",
          type = "boolean",
        },
        allowSubjectPassthrough = {
          description = "Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.",
          type = "boolean",
        },
        celExpression = {
          ["$ref"] = "Expr",
          description = "Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel",
        },
      },
      type = "object",
    },
    CertificateRevocationList = {
      description = "A CertificateRevocationList corresponds to a signed X.509 certificate Revocation List (CRL). A CRL contains the serial numbers of certificates that should no longer be trusted.",
      id = "CertificateRevocationList",
      properties = {
        accessUrl = {
          description = "Output only. The location where 'pem_crl' can be accessed.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time at which this CertificateRevocationList was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Labels with user-defined metadata.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name for this CertificateRevocationList in the format `projects/*/locations/*/caPools/*certificateAuthorities/*/ certificateRevocationLists/*`.",
          readOnly = true,
          type = "string",
        },
        pemCrl = {
          description = "Output only. The PEM-encoded X.509 CRL.",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. The revision ID of this CertificateRevocationList. A new revision is committed whenever a new CRL is published. The format is an 8-character hexadecimal string.",
          readOnly = true,
          type = "string",
        },
        revokedCertificates = {
          description = "Output only. The revoked serial numbers that appear in pem_crl.",
          items = {
            ["$ref"] = "RevokedCertificate",
          },
          readOnly = true,
          type = "array",
        },
        sequenceNumber = {
          description = "Output only. The CRL sequence number that appears in pem_crl.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The State for this CertificateRevocationList.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "SUPERSEDED",
          },
          enumDescriptions = {
            "Not specified.",
            "The CertificateRevocationList is up to date.",
            "The CertificateRevocationList is no longer current.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time at which this CertificateRevocationList was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CertificateTemplate = {
      description = "A CertificateTemplate refers to a managed template for certificate issuance.",
      id = "CertificateTemplate",
      properties = {
        createTime = {
          description = "Output only. The time at which this CertificateTemplate was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A human-readable description of scenarios this template is intended for.",
          type = "string",
        },
        identityConstraints = {
          ["$ref"] = "CertificateIdentityConstraints",
          description = "Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Labels with user-defined metadata.",
          type = "object",
        },
        name = {
          description = "Output only. The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.",
          readOnly = true,
          type = "string",
        },
        passthroughExtensions = {
          ["$ref"] = "CertificateExtensionConstraints",
          description = "Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.",
        },
        predefinedValues = {
          ["$ref"] = "X509Parameters",
          description = "Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.",
        },
        updateTime = {
          description = "Output only. The time at which this CertificateTemplate was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DisableCertificateAuthorityRequest = {
      description = "Request message for CertificateAuthorityService.DisableCertificateAuthority.",
      id = "DisableCertificateAuthorityRequest",
      properties = {
        requestId = {
          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
      },
      type = "object",
    },
    EcKeyType = {
      description = "Describes an Elliptic Curve key that may be used in a Certificate issued from a CaPool.",
      id = "EcKeyType",
      properties = {
        signatureAlgorithm = {
          description = "Optional. A signature algorithm that must be used. If this is omitted, any EC-based signature algorithm will be allowed.",
          enum = {
            "EC_SIGNATURE_ALGORITHM_UNSPECIFIED",
            "ECDSA_P256",
            "ECDSA_P384",
            "EDDSA_25519",
          },
          enumDescriptions = {
            "Not specified. Signifies that any signature algorithm may be used.",
            "Refers to the Elliptic Curve Digital Signature Algorithm over the NIST P-256 curve.",
            "Refers to the Elliptic Curve Digital Signature Algorithm over the NIST P-384 curve.",
            "Refers to the Edwards-curve Digital Signature Algorithm over curve 25519, as described in RFC 8410.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    EnableCertificateAuthorityRequest = {
      description = "Request message for CertificateAuthorityService.EnableCertificateAuthority.",
      id = "EnableCertificateAuthorityRequest",
      properties = {
        requestId = {
          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "Expr",
      properties = {
        description = {
          description = "Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.",
          type = "string",
        },
        expression = {
          description = "Textual representation of an expression in Common Expression Language syntax.",
          type = "string",
        },
        location = {
          description = "Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.",
          type = "string",
        },
        title = {
          description = "Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.",
          type = "string",
        },
      },
      type = "object",
    },
    ExtendedKeyUsageOptions = {
      description = "KeyUsage.ExtendedKeyUsageOptions has fields that correspond to certain common OIDs that could be specified as an extended key usage value.",
      id = "ExtendedKeyUsageOptions",
      properties = {
        clientAuth = {
          description = "Corresponds to OID 1.3.6.1.5.5.7.3.2. Officially described as \"TLS WWW client authentication\", though regularly used for non-WWW TLS.",
          type = "boolean",
        },
        codeSigning = {
          description = "Corresponds to OID 1.3.6.1.5.5.7.3.3. Officially described as \"Signing of downloadable executable code client authentication\".",
          type = "boolean",
        },
        emailProtection = {
          description = "Corresponds to OID 1.3.6.1.5.5.7.3.4. Officially described as \"Email protection\".",
          type = "boolean",
        },
        ocspSigning = {
          description = "Corresponds to OID 1.3.6.1.5.5.7.3.9. Officially described as \"Signing OCSP responses\".",
          type = "boolean",
        },
        serverAuth = {
          description = "Corresponds to OID 1.3.6.1.5.5.7.3.1. Officially described as \"TLS WWW server authentication\", though regularly used for non-WWW TLS.",
          type = "boolean",
        },
        timeStamping = {
          description = "Corresponds to OID 1.3.6.1.5.5.7.3.8. Officially described as \"Binding the hash of an object to a time\".",
          type = "boolean",
        },
      },
      type = "object",
    },
    FetchCaCertsRequest = {
      description = "Request message for CertificateAuthorityService.FetchCaCerts.",
      id = "FetchCaCertsRequest",
      properties = {
        requestId = {
          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
      },
      type = "object",
    },
    FetchCaCertsResponse = {
      description = "Response message for CertificateAuthorityService.FetchCaCerts.",
      id = "FetchCaCertsResponse",
      properties = {
        caCerts = {
          description = "The PEM encoded CA certificate chains of all ACTIVE CertificateAuthority resources in this CaPool.",
          items = {
            ["$ref"] = "CertChain",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FetchCertificateAuthorityCsrResponse = {
      description = "Response message for CertificateAuthorityService.FetchCertificateAuthorityCsr.",
      id = "FetchCertificateAuthorityCsrResponse",
      properties = {
        pemCsr = {
          description = "Output only. The PEM-encoded signed certificate signing request (CSR).",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    IssuanceModes = {
      description = "IssuanceModes specifies the allowed ways in which Certificates may be requested from this CaPool.",
      id = "IssuanceModes",
      properties = {
        allowConfigBasedIssuance = {
          description = "Optional. When true, allows callers to create Certificates by specifying a CertificateConfig.",
          type = "boolean",
        },
        allowCsrBasedIssuance = {
          description = "Optional. When true, allows callers to create Certificates by specifying a CSR.",
          type = "boolean",
        },
      },
      type = "object",
    },
    IssuancePolicy = {
      description = "Defines controls over all certificate issuance within a CaPool.",
      id = "IssuancePolicy",
      properties = {
        allowedIssuanceModes = {
          ["$ref"] = "IssuanceModes",
          description = "Optional. If specified, then only methods allowed in the IssuanceModes may be used to issue Certificates.",
        },
        allowedKeyTypes = {
          description = "Optional. If any AllowedKeyType is specified, then the certificate request's public key must match one of the key types listed here. Otherwise, any key may be used.",
          items = {
            ["$ref"] = "AllowedKeyType",
          },
          type = "array",
        },
        baselineValues = {
          ["$ref"] = "X509Parameters",
          description = "Optional. A set of X.509 values that will be applied to all certificates issued through this CaPool. If a certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If a certificate request uses a CertificateTemplate that defines conflicting predefined_values for the same properties, the certificate issuance request will fail.",
        },
        identityConstraints = {
          ["$ref"] = "CertificateIdentityConstraints",
          description = "Optional. Describes constraints on identities that may appear in Certificates issued through this CaPool. If this is omitted, then this CaPool will not add restrictions on a certificate's identity.",
        },
        maximumLifetime = {
          description = "Optional. The maximum lifetime allowed for issued Certificates. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.",
          format = "google-duration",
          type = "string",
        },
        passthroughExtensions = {
          ["$ref"] = "CertificateExtensionConstraints",
          description = "Optional. Describes the set of X.509 extensions that may appear in a Certificate issued through this CaPool. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If a certificate request uses a CertificateTemplate with predefined_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this CaPool will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CaPool's baseline_values.",
        },
      },
      type = "object",
    },
    KeyId = {
      description = "A KeyId identifies a specific public key, usually by hashing the public key.",
      id = "KeyId",
      properties = {
        keyId = {
          description = "Optional. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 bit SHA-1 hash of the public key.",
          type = "string",
        },
      },
      type = "object",
    },
    KeyUsage = {
      description = "A KeyUsage describes key usage values that may appear in an X.509 certificate.",
      id = "KeyUsage",
      properties = {
        baseKeyUsage = {
          ["$ref"] = "KeyUsageOptions",
          description = "Describes high-level ways in which a key may be used.",
        },
        extendedKeyUsage = {
          ["$ref"] = "ExtendedKeyUsageOptions",
          description = "Detailed scenarios in which a key may be used.",
        },
        unknownExtendedKeyUsages = {
          description = "Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.",
          items = {
            ["$ref"] = "ObjectId",
          },
          type = "array",
        },
      },
      type = "object",
    },
    KeyUsageOptions = {
      description = "KeyUsage.KeyUsageOptions corresponds to the key usage values described in https://tools.ietf.org/html/rfc5280#section-4.2.1.3.",
      id = "KeyUsageOptions",
      properties = {
        certSign = {
          description = "The key may be used to sign certificates.",
          type = "boolean",
        },
        contentCommitment = {
          description = "The key may be used for cryptographic commitments. Note that this may also be referred to as \"non-repudiation\".",
          type = "boolean",
        },
        crlSign = {
          description = "The key may be used sign certificate revocation lists.",
          type = "boolean",
        },
        dataEncipherment = {
          description = "The key may be used to encipher data.",
          type = "boolean",
        },
        decipherOnly = {
          description = "The key may be used to decipher only.",
          type = "boolean",
        },
        digitalSignature = {
          description = "The key may be used for digital signatures.",
          type = "boolean",
        },
        encipherOnly = {
          description = "The key may be used to encipher only.",
          type = "boolean",
        },
        keyAgreement = {
          description = "The key may be used in a key agreement protocol.",
          type = "boolean",
        },
        keyEncipherment = {
          description = "The key may be used to encipher other keys.",
          type = "boolean",
        },
      },
      type = "object",
    },
    KeyVersionSpec = {
      description = "A Cloud KMS key configuration that a CertificateAuthority will use.",
      id = "KeyVersionSpec",
      properties = {
        algorithm = {
          description = "The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All managed keys will be have their ProtectionLevel as `HSM`.",
          enum = {
            "SIGN_HASH_ALGORITHM_UNSPECIFIED",
            "RSA_PSS_2048_SHA256",
            "RSA_PSS_3072_SHA256",
            "RSA_PSS_4096_SHA256",
            "RSA_PKCS1_2048_SHA256",
            "RSA_PKCS1_3072_SHA256",
            "RSA_PKCS1_4096_SHA256",
            "EC_P256_SHA256",
            "EC_P384_SHA384",
          },
          enumDescriptions = {
            "Not specified.",
            "maps to CryptoKeyVersionAlgorithm.RSA_SIGN_PSS_2048_SHA256",
            "maps to CryptoKeyVersionAlgorithm. RSA_SIGN_PSS_3072_SHA256",
            "maps to CryptoKeyVersionAlgorithm.RSA_SIGN_PSS_4096_SHA256",
            "maps to CryptoKeyVersionAlgorithm.RSA_SIGN_PKCS1_2048_SHA256",
            "maps to CryptoKeyVersionAlgorithm.RSA_SIGN_PKCS1_3072_SHA256",
            "maps to CryptoKeyVersionAlgorithm.RSA_SIGN_PKCS1_4096_SHA256",
            "maps to CryptoKeyVersionAlgorithm.EC_SIGN_P256_SHA256",
            "maps to CryptoKeyVersionAlgorithm.EC_SIGN_P384_SHA384",
          },
          type = "string",
        },
        cloudKmsKeyVersion = {
          description = "The resource name for an existing Cloud KMS CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. This option enables full flexibility in the key's capabilities and properties.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCaPoolsResponse = {
      description = "Response message for CertificateAuthorityService.ListCaPools.",
      id = "ListCaPoolsResponse",
      properties = {
        caPools = {
          description = "The list of CaPools.",
          items = {
            ["$ref"] = "CaPool",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListCertificateAuthoritiesRequest.next_page_token to retrieve the next page of results.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations (e.g. \"us-west1\") that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCertificateAuthoritiesResponse = {
      description = "Response message for CertificateAuthorityService.ListCertificateAuthorities.",
      id = "ListCertificateAuthoritiesResponse",
      properties = {
        certificateAuthorities = {
          description = "The list of CertificateAuthorities.",
          items = {
            ["$ref"] = "CertificateAuthority",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListCertificateAuthoritiesRequest.next_page_token to retrieve the next page of results.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations (e.g. \"us-west1\") that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCertificateRevocationListsResponse = {
      description = "Response message for CertificateAuthorityService.ListCertificateRevocationLists.",
      id = "ListCertificateRevocationListsResponse",
      properties = {
        certificateRevocationLists = {
          description = "The list of CertificateRevocationLists.",
          items = {
            ["$ref"] = "CertificateRevocationList",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListCertificateRevocationListsRequest.next_page_token to retrieve the next page of results.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations (e.g. \"us-west1\") that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCertificateTemplatesResponse = {
      description = "Response message for CertificateAuthorityService.ListCertificateTemplates.",
      id = "ListCertificateTemplatesResponse",
      properties = {
        certificateTemplates = {
          description = "The list of CertificateTemplates.",
          items = {
            ["$ref"] = "CertificateTemplate",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListCertificateTemplatesRequest.next_page_token to retrieve the next page of results.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations (e.g. \"us-west1\") that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCertificatesResponse = {
      description = "Response message for CertificateAuthorityService.ListCertificates.",
      id = "ListCertificatesResponse",
      properties = {
        certificates = {
          description = "The list of Certificates.",
          items = {
            ["$ref"] = "Certificate",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListCertificatesRequest.next_page_token to retrieve the next page of results.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations (e.g. \"us-west1\") that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "ListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Location",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
      },
      type = "object",
    },
    ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Location = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "Location",
      properties = {
        displayName = {
          description = "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"}",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: `\"us-east1\"`.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata. For example the available capacity at the given location.",
          type = "object",
        },
        name = {
          description = "Resource name for the location, which may vary between implementations. For example: `\"projects/example-project/locations/us-east1\"`",
          type = "string",
        },
      },
      type = "object",
    },
    ObjectId = {
      description = "An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.",
      id = "ObjectId",
      properties = {
        objectIdPath = {
          description = "Required. The parts of an OID path. The most significant parts of the path come first.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "Status",
          description = "The error result of the operation in case of failure or cancellation.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.",
          type = "object",
        },
        name = {
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.",
          type = "object",
        },
      },
      type = "object",
    },
    OperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the operation finished running.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
        },
        statusMessage = {
          description = "Output only. Human-readable status of the operation, if any.",
          readOnly = true,
          type = "string",
        },
        target = {
          description = "Output only. Server-defined resource path for the target of the operation.",
          readOnly = true,
          type = "string",
        },
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "Binding",
          },
          type = "array",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PublicKey = {
      description = "A PublicKey describes a public key.",
      id = "PublicKey",
      properties = {
        format = {
          description = "Required. The format of the public key.",
          enum = {
            "KEY_FORMAT_UNSPECIFIED",
            "PEM",
          },
          enumDescriptions = {
            "Default unspecified value.",
            "The key is PEM-encoded as defined in [RFC 7468](https://tools.ietf.org/html/rfc7468). It can be any of the following: a PEM-encoded PKCS#1/RFC 3447 RSAPublicKey structure, an RFC 5280 [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1) or a PEM-encoded X.509 certificate signing request (CSR). If a [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1) is specified, it can contain a A PEM-encoded PKCS#1/RFC 3447 RSAPublicKey or a NIST P-256/secp256r1/prime256v1 or P-384 key. If a CSR is specified, it will used solely for the purpose of extracting the public key. When generated by the service, it will always be an RFC 5280 [SubjectPublicKeyInfo](https://tools.ietf.org/html/rfc5280#section-4.1) structure containing an algorithm identifier and a key.",
          },
          type = "string",
        },
        key = {
          description = "Required. A public key. The padding and encoding must match with the `KeyFormat` value specified for the `format` field.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    PublishingOptions = {
      description = "Options relating to the publication of each CertificateAuthority's CA certificate and CRLs and their inclusion as extensions in issued Certificates. The options set here apply to certificates issued by any CertificateAuthority in the CaPool.",
      id = "PublishingOptions",
      properties = {
        publishCaCert = {
          description = "Optional. When true, publishes each CertificateAuthority's CA certificate and includes its URL in the \"Authority Information Access\" X.509 extension in all issued Certificates. If this is false, the CA certificate will not be published and the corresponding X.509 extension will not be written in issued certificates.",
          type = "boolean",
        },
        publishCrl = {
          description = "Optional. When true, publishes each CertificateAuthority's CRL and includes its URL in the \"CRL Distribution Points\" X.509 extension in all issued Certificates. If this is false, CRLs will not be published and the corresponding X.509 extension will not be written in issued certificates. CRLs will expire 7 days from their creation. However, we will rebuild daily. CRLs are also rebuilt shortly after a certificate is revoked.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ReconciliationOperationMetadata = {
      description = "Operation metadata returned by the CLH during resource state reconciliation.",
      id = "ReconciliationOperationMetadata",
      properties = {
        deleteResource = {
          description = "DEPRECATED. Use exclusive_action instead.",
          type = "boolean",
        },
        exclusiveAction = {
          description = "Excluisive action returned by the CLH.",
          enum = {
            "UNKNOWN_REPAIR_ACTION",
            "DELETE",
            "RETRY",
          },
          enumDescriptions = {
            "Unknown repair action.",
            "The resource has to be deleted. When using this bit, the CLH should fail the operation. DEPRECATED. Instead use DELETE_RESOURCE OperationSignal in SideChannel. For more information - go/ccfe-delete-on-upsert, go/ccfe-reconciliation-protocol-ug#apply_delete",
            "This resource could not be repaired but the repair should be tried again at a later time. This can happen if there is a dependency that needs to be resolved first- e.g. if a parent resource must be repaired before a child resource.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RevocationDetails = {
      description = "Describes fields that are relavent to the revocation of a Certificate.",
      id = "RevocationDetails",
      properties = {
        revocationState = {
          description = "Indicates why a Certificate was revoked.",
          enum = {
            "REVOCATION_REASON_UNSPECIFIED",
            "KEY_COMPROMISE",
            "CERTIFICATE_AUTHORITY_COMPROMISE",
            "AFFILIATION_CHANGED",
            "SUPERSEDED",
            "CESSATION_OF_OPERATION",
            "CERTIFICATE_HOLD",
            "PRIVILEGE_WITHDRAWN",
            "ATTRIBUTE_AUTHORITY_COMPROMISE",
          },
          enumDescriptions = {
            "Default unspecified value. This value does indicate that a Certificate has been revoked, but that a reason has not been recorded.",
            "Key material for this Certificate may have leaked.",
            "The key material for a certificate authority in the issuing path may have leaked.",
            "The subject or other attributes in this Certificate have changed.",
            "This Certificate has been superseded.",
            "This Certificate or entities in the issuing path have ceased to operate.",
            "This Certificate should not be considered valid, it is expected that it may become valid in the future.",
            "This Certificate no longer has permission to assert the listed attributes.",
            "The authority which determines appropriate attributes for a Certificate may have been compromised.",
          },
          type = "string",
        },
        revocationTime = {
          description = "The time at which this Certificate was revoked.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    RevokeCertificateRequest = {
      description = "Request message for CertificateAuthorityService.RevokeCertificate.",
      id = "RevokeCertificateRequest",
      properties = {
        reason = {
          description = "Required. The RevocationReason for revoking this certificate.",
          enum = {
            "REVOCATION_REASON_UNSPECIFIED",
            "KEY_COMPROMISE",
            "CERTIFICATE_AUTHORITY_COMPROMISE",
            "AFFILIATION_CHANGED",
            "SUPERSEDED",
            "CESSATION_OF_OPERATION",
            "CERTIFICATE_HOLD",
            "PRIVILEGE_WITHDRAWN",
            "ATTRIBUTE_AUTHORITY_COMPROMISE",
          },
          enumDescriptions = {
            "Default unspecified value. This value does indicate that a Certificate has been revoked, but that a reason has not been recorded.",
            "Key material for this Certificate may have leaked.",
            "The key material for a certificate authority in the issuing path may have leaked.",
            "The subject or other attributes in this Certificate have changed.",
            "This Certificate has been superseded.",
            "This Certificate or entities in the issuing path have ceased to operate.",
            "This Certificate should not be considered valid, it is expected that it may become valid in the future.",
            "This Certificate no longer has permission to assert the listed attributes.",
            "The authority which determines appropriate attributes for a Certificate may have been compromised.",
          },
          type = "string",
        },
        requestId = {
          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
      },
      type = "object",
    },
    RevokedCertificate = {
      description = "Describes a revoked Certificate.",
      id = "RevokedCertificate",
      properties = {
        certificate = {
          description = "The resource name for the Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`.",
          type = "string",
        },
        hexSerialNumber = {
          description = "The serial number of the Certificate.",
          type = "string",
        },
        revocationReason = {
          description = "The reason the Certificate was revoked.",
          enum = {
            "REVOCATION_REASON_UNSPECIFIED",
            "KEY_COMPROMISE",
            "CERTIFICATE_AUTHORITY_COMPROMISE",
            "AFFILIATION_CHANGED",
            "SUPERSEDED",
            "CESSATION_OF_OPERATION",
            "CERTIFICATE_HOLD",
            "PRIVILEGE_WITHDRAWN",
            "ATTRIBUTE_AUTHORITY_COMPROMISE",
          },
          enumDescriptions = {
            "Default unspecified value. This value does indicate that a Certificate has been revoked, but that a reason has not been recorded.",
            "Key material for this Certificate may have leaked.",
            "The key material for a certificate authority in the issuing path may have leaked.",
            "The subject or other attributes in this Certificate have changed.",
            "This Certificate has been superseded.",
            "This Certificate or entities in the issuing path have ceased to operate.",
            "This Certificate should not be considered valid, it is expected that it may become valid in the future.",
            "This Certificate no longer has permission to assert the listed attributes.",
            "The authority which determines appropriate attributes for a Certificate may have been compromised.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RsaKeyType = {
      description = "Describes an RSA key that may be used in a Certificate issued from a CaPool.",
      id = "RsaKeyType",
      properties = {
        maxModulusSize = {
          description = "Optional. The maximum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service will not enforce an explicit upper bound on RSA modulus sizes.",
          format = "int64",
          type = "string",
        },
        minModulusSize = {
          description = "Optional. The minimum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service-level min RSA modulus size will continue to apply.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: \"bindings, etag\"`",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    Status = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "Status",
      properties = {
        code = {
          description = "The status code, which should be an enum value of google.rpc.Code.",
          format = "int32",
          type = "integer",
        },
        details = {
          description = "A list of messages that carry the error details. There is a common set of message types for APIs to use.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        message = {
          description = "A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.",
          type = "string",
        },
      },
      type = "object",
    },
    Subject = {
      description = "Subject describes parts of a distinguished name that, in turn, describes the subject of the certificate.",
      id = "Subject",
      properties = {
        commonName = {
          description = "The \"common name\" of the subject.",
          type = "string",
        },
        countryCode = {
          description = "The country code of the subject.",
          type = "string",
        },
        locality = {
          description = "The locality or city of the subject.",
          type = "string",
        },
        organization = {
          description = "The organization of the subject.",
          type = "string",
        },
        organizationalUnit = {
          description = "The organizational_unit of the subject.",
          type = "string",
        },
        postalCode = {
          description = "The postal code of the subject.",
          type = "string",
        },
        province = {
          description = "The province, territory, or regional state of the subject.",
          type = "string",
        },
        streetAddress = {
          description = "The street address of the subject.",
          type = "string",
        },
      },
      type = "object",
    },
    SubjectAltNames = {
      description = "SubjectAltNames corresponds to a more modern way of listing what the asserted identity is in a certificate (i.e., compared to the \"common name\" in the distinguished name).",
      id = "SubjectAltNames",
      properties = {
        customSans = {
          description = "Contains additional subject alternative name values. For each custom_san, the `value` field must contain an ASN.1 encoded UTF8String.",
          items = {
            ["$ref"] = "X509Extension",
          },
          type = "array",
        },
        dnsNames = {
          description = "Contains only valid, fully-qualified host names.",
          items = {
            type = "string",
          },
          type = "array",
        },
        emailAddresses = {
          description = "Contains only valid RFC 2822 E-mail addresses.",
          items = {
            type = "string",
          },
          type = "array",
        },
        ipAddresses = {
          description = "Contains only valid 32-bit IPv4 addresses or RFC 4291 IPv6 addresses.",
          items = {
            type = "string",
          },
          type = "array",
        },
        uris = {
          description = "Contains only valid RFC 3986 URIs.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SubjectConfig = {
      description = "These values are used to create the distinguished name and subject alternative name fields in an X.509 certificate.",
      id = "SubjectConfig",
      properties = {
        subject = {
          ["$ref"] = "Subject",
          description = "Required. Contains distinguished name fields such as the common name, location and organization.",
        },
        subjectAltName = {
          ["$ref"] = "SubjectAltNames",
          description = "Optional. The subject alternative name fields.",
        },
      },
      type = "object",
    },
    SubjectDescription = {
      description = "These values describe fields in an issued X.509 certificate such as the distinguished name, subject alternative names, serial number, and lifetime.",
      id = "SubjectDescription",
      properties = {
        hexSerialNumber = {
          description = "The serial number encoded in lowercase hexadecimal.",
          type = "string",
        },
        lifetime = {
          description = "For convenience, the actual lifetime of an issued certificate.",
          format = "google-duration",
          type = "string",
        },
        notAfterTime = {
          description = "The time after which the certificate is expired. Per RFC 5280, the validity period for a certificate is the period of time from not_before_time through not_after_time, inclusive. Corresponds to 'not_before_time' + 'lifetime' - 1 second.",
          format = "google-datetime",
          type = "string",
        },
        notBeforeTime = {
          description = "The time at which the certificate becomes valid.",
          format = "google-datetime",
          type = "string",
        },
        subject = {
          ["$ref"] = "Subject",
          description = "Contains distinguished name fields such as the common name, location and / organization.",
        },
        subjectAltName = {
          ["$ref"] = "SubjectAltNames",
          description = "The subject alternative name fields.",
        },
      },
      type = "object",
    },
    SubordinateConfig = {
      description = "Describes a subordinate CA's issuers. This is either a resource name to a known issuing CertificateAuthority, or a PEM issuer certificate chain.",
      id = "SubordinateConfig",
      properties = {
        certificateAuthority = {
          description = "Required. This can refer to a CertificateAuthority that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.",
          type = "string",
        },
        pemIssuerChain = {
          ["$ref"] = "SubordinateConfigChain",
          description = "Required. Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.",
        },
      },
      type = "object",
    },
    SubordinateConfigChain = {
      description = "This message describes a subordinate CA's issuer certificate chain. This wrapper exists for compatibility reasons.",
      id = "SubordinateConfigChain",
      properties = {
        pemCertificates = {
          description = "Required. Expected to be in leaf-to-root order according to RFC 5246.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "TestIamPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "TestIamPermissionsResponse",
      properties = {
        permissions = {
          description = "A subset of `TestPermissionsRequest.permissions` that the caller is allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UndeleteCertificateAuthorityRequest = {
      description = "Request message for CertificateAuthorityService.UndeleteCertificateAuthority.",
      id = "UndeleteCertificateAuthorityRequest",
      properties = {
        requestId = {
          description = "Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and t he request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
          type = "string",
        },
      },
      type = "object",
    },
    X509Extension = {
      description = "An X509Extension specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.",
      id = "X509Extension",
      properties = {
        critical = {
          description = "Optional. Indicates whether or not this extension is critical (i.e., if the client does not know how to handle this extension, the client should consider this to be an error).",
          type = "boolean",
        },
        objectId = {
          ["$ref"] = "ObjectId",
          description = "Required. The OID for this X.509 extension.",
        },
        value = {
          description = "Required. The value of this X.509 extension.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    X509Parameters = {
      description = "An X509Parameters is used to describe certain fields of an X.509 certificate, such as the key usage fields, fields specific to CA certificates, certificate policy extensions and custom extensions.",
      id = "X509Parameters",
      properties = {
        additionalExtensions = {
          description = "Optional. Describes custom X.509 extensions.",
          items = {
            ["$ref"] = "X509Extension",
          },
          type = "array",
        },
        aiaOcspServers = {
          description = "Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the \"Authority Information Access\" extension in the certificate.",
          items = {
            type = "string",
          },
          type = "array",
        },
        caOptions = {
          ["$ref"] = "CaOptions",
          description = "Optional. Describes options in this X509Parameters that are relevant in a CA certificate.",
        },
        keyUsage = {
          ["$ref"] = "KeyUsage",
          description = "Optional. Indicates the intended use for keys that correspond to a certificate.",
        },
        policyIds = {
          description = "Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.",
          items = {
            ["$ref"] = "ObjectId",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Certificate Authority API",
  version = "v1",
  version_module = true,
}