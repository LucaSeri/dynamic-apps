return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/chrome.management.policy"] = {
          description = "See, edit, create or delete policies applied to Chrome OS and Chrome Browsers managed within your organization",
        },
        ["https://www.googleapis.com/auth/chrome.management.policy.readonly"] = {
          description = "See policies applied to Chrome OS and Chrome Browsers managed within your organization",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://chromepolicy.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Chrome Policy",
  description = "The Chrome Policy API is a suite of services that allows Chrome administrators to control the policies applied to their managed Chrome OS devices and Chrome browsers.",
  discoveryVersion = "v1",
  documentationLink = "http://developers.google.com/chrome/policy",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "chromepolicy:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://chromepolicy.mtls.googleapis.com/",
  name = "chromepolicy",
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
    customers = {
      resources = {
        policies = {
          methods = {
            resolve = {
              description = "Gets the resolved policy values for a list of policies that match a search query.",
              flatPath = "v1/customers/{customersId}/policies:resolve",
              httpMethod = "POST",
              id = "chromepolicy.customers.policies.resolve",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "ID of the G Suite account or literal \"my_customer\" for the customer associated to the request.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+customer}/policies:resolve",
              request = {
                ["$ref"] = "GoogleChromePolicyVersionsV1ResolveRequest",
              },
              response = {
                ["$ref"] = "GoogleChromePolicyVersionsV1ResolveResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.policy",
                "https://www.googleapis.com/auth/chrome.management.policy.readonly",
              },
            },
          },
          resources = {
            groups = {
              methods = {
                batchDelete = {
                  description = "Delete multiple policy values that are applied to a specific group. All targets must have the same target format. That is to say that they must point to the same target resource and must have the same keys specified in `additionalTargetKeyNames`, though the values for those keys may be different. On failure the request will return the error details as part of the google.rpc.Status.",
                  flatPath = "v1/customers/{customersId}/policies/groups:batchDelete",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.groups.batchDelete",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "ID of the Google Workspace account or literal \"my_customer\" for the customer associated to the request.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/groups:batchDelete",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
                batchModify = {
                  description = "Modify multiple policy values that are applied to a specific group. All targets must have the same target format. That is to say that they must point to the same target resource and must have the same keys specified in `additionalTargetKeyNames`, though the values for those keys may be different. On failure the request will return the error details as part of the google.rpc.Status.",
                  flatPath = "v1/customers/{customersId}/policies/groups:batchModify",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.groups.batchModify",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "ID of the Google Workspace account or literal \"my_customer\" for the customer associated to the request.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/groups:batchModify",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
                listGroupPriorityOrdering = {
                  description = "Retrieve a group priority ordering for an app. The target app must be supplied in `additionalTargetKeyNames` in the PolicyTargetKey. On failure the request will return the error details as part of the google.rpc.Status.",
                  flatPath = "v1/customers/{customersId}/policies/groups:listGroupPriorityOrdering",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.groups.listGroupPriorityOrdering",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "Required. ID of the Google Workspace account or literal \"my_customer\" for the customer associated to the request.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/groups:listGroupPriorityOrdering",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                    "https://www.googleapis.com/auth/chrome.management.policy.readonly",
                  },
                },
                updateGroupPriorityOrdering = {
                  description = "Update a group priority ordering for an app. The target app must be supplied in `additionalTargetKeyNames` in the PolicyTargetKey. On failure the request will return the error details as part of the google.rpc.Status.",
                  flatPath = "v1/customers/{customersId}/policies/groups:updateGroupPriorityOrdering",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.groups.updateGroupPriorityOrdering",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "Required. ID of the Google Workspace account or literal \"my_customer\" for the customer associated to the request.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/groups:updateGroupPriorityOrdering",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
              },
            },
            networks = {
              methods = {
                defineCertificate = {
                  description = "Creates a certificate at a specified OU for a customer.",
                  flatPath = "v1/customers/{customersId}/policies/networks:defineCertificate",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.networks.defineCertificate",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "Required. The customer for which the certificate will apply.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/networks:defineCertificate",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1DefineCertificateRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1DefineCertificateResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
                defineNetwork = {
                  description = "Define a new network.",
                  flatPath = "v1/customers/{customersId}/policies/networks:defineNetwork",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.networks.defineNetwork",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "Required. The customer who will own this new network.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/networks:defineNetwork",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1DefineNetworkRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1DefineNetworkResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
                removeCertificate = {
                  description = "Remove an existing certificate by guid.",
                  flatPath = "v1/customers/{customersId}/policies/networks:removeCertificate",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.networks.removeCertificate",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "Required. The customer whose certificate will be removed.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/networks:removeCertificate",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1RemoveCertificateRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1RemoveCertificateResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
                removeNetwork = {
                  description = "Remove an existing network by guid.",
                  flatPath = "v1/customers/{customersId}/policies/networks:removeNetwork",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.networks.removeNetwork",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "Required. The customer whose network will be removed.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/networks:removeNetwork",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1RemoveNetworkRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1RemoveNetworkResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
              },
            },
            orgunits = {
              methods = {
                batchInherit = {
                  description = "Modify multiple policy values that are applied to a specific org unit so that they now inherit the value from a parent (if applicable). All targets must have the same target format. That is to say that they must point to the same target resource and must have the same keys specified in `additionalTargetKeyNames`, though the values for those keys may be different. On failure the request will return the error details as part of the google.rpc.Status.",
                  flatPath = "v1/customers/{customersId}/policies/orgunits:batchInherit",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.orgunits.batchInherit",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "ID of the G Suite account or literal \"my_customer\" for the customer associated to the request.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/orgunits:batchInherit",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
                batchModify = {
                  description = "Modify multiple policy values that are applied to a specific org unit. All targets must have the same target format. That is to say that they must point to the same target resource and must have the same keys specified in `additionalTargetKeyNames`, though the values for those keys may be different. On failure the request will return the error details as part of the google.rpc.Status.",
                  flatPath = "v1/customers/{customersId}/policies/orgunits:batchModify",
                  httpMethod = "POST",
                  id = "chromepolicy.customers.policies.orgunits.batchModify",
                  parameterOrder = {
                    "customer",
                  },
                  parameters = {
                    customer = {
                      description = "ID of the G Suite account or literal \"my_customer\" for the customer associated to the request.",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+customer}/policies/orgunits:batchModify",
                  request = {
                    ["$ref"] = "GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/chrome.management.policy",
                  },
                },
              },
            },
          },
        },
        policySchemas = {
          methods = {
            get = {
              description = "Get a specific policy schema for a customer by its resource name.",
              flatPath = "v1/customers/{customersId}/policySchemas/{policySchemasId}",
              httpMethod = "GET",
              id = "chromepolicy.customers.policySchemas.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The policy schema resource name to query.",
                  location = "path",
                  pattern = "^customers/[^/]+/policySchemas/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleChromePolicyVersionsV1PolicySchema",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.policy",
                "https://www.googleapis.com/auth/chrome.management.policy.readonly",
              },
            },
            list = {
              description = "Gets a list of policy schemas that match a specified filter value for a given customer.",
              flatPath = "v1/customers/{customersId}/policySchemas",
              httpMethod = "GET",
              id = "chromepolicy.customers.policySchemas.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "The schema filter used to find a particular schema based on fields like its resource name, description and `additionalTargetKeyNames`.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of policy schemas to return, defaults to 100 and has a maximum of 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The page token used to retrieve a specific page of the listing request.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The customer for which the listing request will apply.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/policySchemas",
              response = {
                ["$ref"] = "GoogleChromePolicyVersionsV1ListPolicySchemasResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/chrome.management.policy",
                "https://www.googleapis.com/auth/chrome.management.policy.readonly",
              },
            },
          },
        },
      },
    },
    media = {
      methods = {
        upload = {
          description = "Creates an enterprise file from the content provided by user. Returns a public download url for end user.",
          flatPath = "v1/customers/{customersId}/policies/files:uploadPolicyFile",
          httpMethod = "POST",
          id = "chromepolicy.media.upload",
          mediaUpload = {
            accept = {
              "*/*",
            },
            protocols = {
              simple = {
                multipart = true,
                path = "/upload/v1/{+customer}/policies/files:uploadPolicyFile",
              },
            },
          },
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "Required. The customer for which the file upload will apply.",
              location = "path",
              pattern = "^customers/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+customer}/policies/files:uploadPolicyFile",
          request = {
            ["$ref"] = "GoogleChromePolicyVersionsV1UploadPolicyFileRequest",
          },
          response = {
            ["$ref"] = "GoogleChromePolicyVersionsV1UploadPolicyFileResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/chrome.management.policy",
          },
          supportsMediaUpload = true,
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://chromepolicy.googleapis.com/",
  schemas = {
    ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle = {
      id = "ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle",
      properties = {
        description = {
          description = "Description about current life cycle.",
          type = "string",
        },
        endSupport = {
          ["$ref"] = "GoogleTypeDate",
          description = "End supporting date for current policy.",
        },
        policyApiLifecycleStage = {
          description = "Indicate current life cycle stage of the policy API.",
          enum = {
            "API_UNSPECIFIED",
            "API_PREVIEW",
            "API_DEVELOPMENT",
            "API_CURRENT",
            "API_DEPRECATED",
          },
          enumDescriptions = {
            "unspecified.",
            "Policy is not working yet, but giving developers heads up on format. This stage can transfer to API_DEVELOPEMNT or API_CURRENT.",
            "Policy can change format in backward incompatible way (breaking change). This stage can transfer to API_CURRENT or API_DEPRECATED. This could be used for policies launched only to TTs or launched to selected customers for emergency usage.",
            "Policy in official format. Policy can change format in backward compatible way (non-breaking change). Example: this policy can introduce a new field, which is considered non-breaking change, when field masks are properly utilized. This stage can transfer to API_DEPRECATED.",
            "Please stop using this policy. This policy is deprecated and may/will be removed in the future. Most likely a new policy was introduced to replace this one.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1AdditionalTargetKeyName = {
      description = "Additional key names that will be used to identify the target of the policy value.",
      id = "GoogleChromePolicyVersionsV1AdditionalTargetKeyName",
      properties = {
        key = {
          description = "Key name.",
          type = "string",
        },
        keyDescription = {
          description = "Key description.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest = {
      description = "Request message for specifying that multiple policy values will be deleted.",
      id = "GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest",
      properties = {
        requests = {
          description = "List of policies that will be deleted as defined by the `requests`. All requests in the list must follow these restrictions: 1. All schemas in the list must have the same root namespace. 2. All `policyTargetKey.targetResource` values must point to a group resource. 3. All `policyTargetKey` values must have the same `app_id` key name in the `additionalTargetKeys`. 4. No two modification requests can reference the same `policySchema` + ` policyTargetKey` pair. ",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest = {
      description = "Request message for specifying that multiple policy values inherit their value from their parents.",
      id = "GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest",
      properties = {
        requests = {
          description = "List of policies that have to inherit their values as defined by the `requests`. All requests in the list must follow these restrictions: 1. All schemas in the list must have the same root namespace. 2. All `policyTargetKey.targetResource` values must point to an org unit resource. 3. All `policyTargetKey` values must have the same key names in the ` additionalTargetKeys`. This also means if one of the targets has an empty `additionalTargetKeys` map, all of the targets must have an empty `additionalTargetKeys` map. 4. No two modification requests can reference the same `policySchema` + ` policyTargetKey` pair. ",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest = {
      description = "Request message for modifying multiple policy values for a specific group-based target.",
      id = "GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest",
      properties = {
        requests = {
          description = "List of policies to modify as defined by the `requests`. All requests in the list must follow these restrictions: 1. All schemas in the list must have the same root namespace. 2. All `policyTargetKey.targetResource` values must point to a group resource. 3. All `policyTargetKey` values must have the same `app_id` key name in the `additionalTargetKeys`. 4. No two modification requests can reference the same `policySchema` + ` policyTargetKey` pair. ",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest = {
      description = "Request message for modifying multiple policy values for a specific target.",
      id = "GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest",
      properties = {
        requests = {
          description = "List of policies to modify as defined by the `requests`. All requests in the list must follow these restrictions: 1. All schemas in the list must have the same root namespace. 2. All `policyTargetKey.targetResource` values must point to an org unit resource. 3. All `policyTargetKey` values must have the same key names in the ` additionalTargetKeys`. This also means if one of the targets has an empty `additionalTargetKeys` map, all of the targets must have an empty `additionalTargetKeys` map. 4. No two modification requests can reference the same `policySchema` + ` policyTargetKey` pair. ",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1CertificateReference = {
      description = "Error information for removing of a specific certificate on a specific target. A reference to a certificate.",
      id = "GoogleChromePolicyVersionsV1CertificateReference",
      properties = {
        network = {
          description = "Output only. The name of the referencing network.",
          readOnly = true,
          type = "string",
        },
        orgUnitId = {
          description = "Output only. The obfuscated id of the org unit the referencing network is in.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1DefineCertificateRequest = {
      description = "Request object for creating a certificate.",
      id = "GoogleChromePolicyVersionsV1DefineCertificateRequest",
      properties = {
        ceritificateName = {
          description = "Optional. The optional name of the certificate. If not specified, the certificate issuer will be used as the name.",
          type = "string",
        },
        certificate = {
          description = "Required. The raw contents of the .PEM, .CRT, or .CER file.",
          type = "string",
        },
        settings = {
          description = "Optional. Certificate settings within the chrome.networks.certificates namespace.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1NetworkSetting",
          },
          type = "array",
        },
        targetResource = {
          description = "Required. The target resource on which this certificate is applied. The following resources are supported: * Organizational Unit (\"orgunits/{orgunit_id}\")",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1DefineCertificateResponse = {
      description = "Response object for creating a certificate.",
      id = "GoogleChromePolicyVersionsV1DefineCertificateResponse",
      properties = {
        networkId = {
          description = "The guid of the certificate created by the action.",
          type = "string",
        },
        settings = {
          description = "the affiliated settings of the certificate (NOT IMPLEMENTED)",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1NetworkSetting",
          },
          type = "array",
        },
        targetResource = {
          description = "the resource at which the certificate is defined.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1DefineNetworkRequest = {
      description = "Request object for creating a new network.",
      id = "GoogleChromePolicyVersionsV1DefineNetworkRequest",
      properties = {
        name = {
          description = "Required. Name of the new created network.",
          type = "string",
        },
        settings = {
          description = "Required. Detailed network settings.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1NetworkSetting",
          },
          type = "array",
        },
        targetResource = {
          description = "Required. The target resource on which this new network will be defined. The following resources are supported: * Organizational Unit (\"orgunits/{orgunit_id}\")",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1DefineNetworkResponse = {
      description = "Response object for creating a network.",
      id = "GoogleChromePolicyVersionsV1DefineNetworkResponse",
      properties = {
        networkId = {
          description = "Network ID of the new created network.",
          type = "string",
        },
        settings = {
          description = "Detailed network settings of the new created network",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1NetworkSetting",
          },
          type = "array",
        },
        targetResource = {
          description = "The target resource on which this new network will be defined. The following resources are supported: * Organizational Unit (\"orgunits/{orgunit_id}\")",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest = {
      description = "Request parameters for deleting the policy value of a specific group target.",
      id = "GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest",
      properties = {
        policySchema = {
          description = "The fully qualified name of the policy schema that is being inherited.",
          type = "string",
        },
        policyTargetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Required. The key of the target for which we want to modify a policy. The target resource must point to a Group.",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1FieldConstraints = {
      description = "Information about any range constraints.",
      id = "GoogleChromePolicyVersionsV1FieldConstraints",
      properties = {
        numericRangeConstraint = {
          ["$ref"] = "GoogleChromePolicyVersionsV1NumericRangeConstraint",
          description = "The allowed range for numeric fields.",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest = {
      description = "Request parameters for inheriting policy value of a specific org unit target from the policy value of its parent org unit.",
      id = "GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest",
      properties = {
        policySchema = {
          description = "The fully qualified name of the policy schema that is being inherited.",
          type = "string",
        },
        policyTargetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Required. The key of the target for which we want to modify a policy. The target resource must point to an Org Unit.",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest = {
      description = "Request message for listing the group priority ordering of an app.",
      id = "GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest",
      properties = {
        policyNamespace = {
          description = "Required. The namespace of the policy type for the request.",
          type = "string",
        },
        policyTargetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Required. The key of the target for which we want to retrieve the group priority ordering. The target resource must point to an app.",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse = {
      description = "Response message for listing the group priority ordering of an app.",
      id = "GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse",
      properties = {
        groupIds = {
          description = "Output only. The group IDs, in priority ordering.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        policyNamespace = {
          description = "Output only. The namespace of the policy type of the group IDs.",
          readOnly = true,
          type = "string",
        },
        policyTargetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Output only. The target resource for which the group priority ordering has been retrieved.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1ListPolicySchemasResponse = {
      description = "Response message for listing policy schemas that match a filter.",
      id = "GoogleChromePolicyVersionsV1ListPolicySchemasResponse",
      properties = {
        nextPageToken = {
          description = "The page token used to get the next page of policy schemas.",
          type = "string",
        },
        policySchemas = {
          description = "The list of policy schemas that match the query.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1PolicySchema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest = {
      description = "Request parameters for modifying a policy value for a specific group target.",
      id = "GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest",
      properties = {
        policyTargetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Required. The key of the target for which we want to modify a policy. The target resource must point to a Group.",
        },
        policyValue = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyValue",
          description = "The new value for the policy.",
        },
        updateMask = {
          description = "Required. Policy fields to update. Only fields in this mask will be updated; other fields in `policy_value` will be ignored (even if they have values). If a field is in this list it must have a value in 'policy_value'.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest = {
      description = "Request parameters for modifying a policy value for a specific org unit target.",
      id = "GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest",
      properties = {
        policyTargetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Required. The key of the target for which we want to modify a policy. The target resource must point to an Org Unit.",
        },
        policyValue = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyValue",
          description = "The new value for the policy.",
        },
        updateMask = {
          description = "Required. Policy fields to update. Only fields in this mask will be updated; other fields in `policy_value` will be ignored (even if they have values). If a field is in this list it must have a value in 'policy_value'.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1NetworkSetting = {
      description = "A network setting contains network configurations.",
      id = "GoogleChromePolicyVersionsV1NetworkSetting",
      properties = {
        policySchema = {
          description = "The fully qualified name of the network setting.",
          type = "string",
        },
        value = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The value of the network setting.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1NumericRangeConstraint = {
      description = "A constraint on upper and/or lower bounds, with at least one being set.",
      id = "GoogleChromePolicyVersionsV1NumericRangeConstraint",
      properties = {
        maximum = {
          description = "Maximum value.",
          format = "int64",
          type = "string",
        },
        minimum = {
          description = "Minimum value.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicyModificationFieldError = {
      description = "Error information for a modification request of a specific field on a specific policy.",
      id = "GoogleChromePolicyVersionsV1PolicyModificationFieldError",
      properties = {
        error = {
          description = "Output only. The error message related to the field.",
          readOnly = true,
          type = "string",
        },
        field = {
          description = "Output only. The name of the field with the error.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicySchema = {
      description = "Resource representing a policy schema.",
      id = "GoogleChromePolicyVersionsV1PolicySchema",
      properties = {
        accessRestrictions = {
          description = "Output only. Specific access restrictions related to this policy.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        additionalTargetKeyNames = {
          description = "Output only. Additional key names that will be used to identify the target of the policy value. When specifying a `policyTargetKey`, each of the additional keys specified here will have to be included in the `additionalTargetKeys` map.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1AdditionalTargetKeyName",
          },
          readOnly = true,
          type = "array",
        },
        categoryTitle = {
          description = "Title of the category in which a setting belongs.",
          type = "string",
        },
        definition = {
          ["$ref"] = "Proto2FileDescriptorProto",
          description = "Schema definition using proto descriptor.",
        },
        fieldDescriptions = {
          description = "Output only. Detailed description of each field that is part of the schema.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1PolicySchemaFieldDescription",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Format: name=customers/{customer}/policySchemas/{schema_namespace}",
          type = "string",
        },
        notices = {
          description = "Output only. Special notice messages related to setting certain values in certain fields in the schema.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription",
          },
          readOnly = true,
          type = "array",
        },
        policyApiLifecycle = {
          ["$ref"] = "ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle",
          description = "Output only. Current lifecycle information.",
          readOnly = true,
        },
        policyApiLifeycle = {
          ["$ref"] = "ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle",
          description = "Deprecated field because of typo.",
        },
        policyDescription = {
          description = "Output only. Description about the policy schema for user consumption.",
          readOnly = true,
          type = "string",
        },
        schemaName = {
          description = "Output only. The fully qualified name of the policy schema. This value is used to fill the field `policy_schema` in PolicyValue when calling BatchInheritOrgUnitPolicies BatchModifyOrgUnitPolicies BatchModifyGroupPolicies or BatchDeleteGroupPolicies.",
          readOnly = true,
          type = "string",
        },
        supportUri = {
          description = "Output only. URI to related support article for this schema.",
          readOnly = true,
          type = "string",
        },
        validTargetResources = {
          description = "Output only. Information about applicable target resources for the policy.",
          items = {
            enum = {
              "TARGET_RESOURCE_UNSPECIFIED",
              "ORG_UNIT",
              "GROUP",
            },
            enumDescriptions = {
              "Unspecified target resource.",
              "Organizational Unit target resource.",
              "Group target resource.",
            },
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies = {
      description = "The field and the value it must have for another field to be allowed to be set.",
      id = "GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies",
      properties = {
        sourceField = {
          description = "The source field which this field depends on.",
          type = "string",
        },
        sourceFieldValue = {
          description = "The value which the source field must have for this field to be allowed to be set.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicySchemaFieldDescription = {
      description = "Provides detailed information for a particular field that is part of a PolicySchema.",
      id = "GoogleChromePolicyVersionsV1PolicySchemaFieldDescription",
      properties = {
        defaultValue = {
          description = "Output only. Client default if the policy is unset.",
          readOnly = true,
          type = "any",
        },
        description = {
          description = "Deprecated. Use name and field_description instead. The description for the field.",
          type = "string",
        },
        field = {
          description = "Output only. The name of the field for associated with this description.",
          readOnly = true,
          type = "string",
        },
        fieldConstraints = {
          ["$ref"] = "GoogleChromePolicyVersionsV1FieldConstraints",
          description = "Output only. Information on any input constraints associated on the values for the field.",
          readOnly = true,
        },
        fieldDependencies = {
          description = "Output only. Provides a list of fields and values. At least one of the fields must have the corresponding value in order for this field to be allowed to be set.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies",
          },
          readOnly = true,
          type = "array",
        },
        fieldDescription = {
          description = "Output only. The description of the field.",
          readOnly = true,
          type = "string",
        },
        inputConstraint = {
          description = "Output only. Any input constraints associated on the values for the field.",
          readOnly = true,
          type = "string",
        },
        knownValueDescriptions = {
          description = "Output only. If the field has a set of known values, this field will provide a description for these values.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Output only. The name of the field.",
          readOnly = true,
          type = "string",
        },
        nestedFieldDescriptions = {
          description = "Output only. Provides the description of the fields nested in this field, if the field is a message type that defines multiple fields.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1PolicySchemaFieldDescription",
          },
          readOnly = true,
          type = "array",
        },
        requiredItems = {
          description = "Output only. Provides a list of fields that are required to be set if this field has a certain value.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1PolicySchemaRequiredItems",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription = {
      description = "Provides detailed information about a known value that is allowed for a particular field in a PolicySchema.",
      id = "GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription",
      properties = {
        description = {
          description = "Output only. Additional description for this value.",
          readOnly = true,
          type = "string",
        },
        value = {
          description = "Output only. The string represenstation of the value that can be set for the field.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription = {
      description = "Provides special notice messages related to a particular value in a field that is part of a PolicySchema.",
      id = "GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription",
      properties = {
        acknowledgementRequired = {
          description = "Output only. Whether the user needs to acknowledge the notice message before the value can be set.",
          readOnly = true,
          type = "boolean",
        },
        field = {
          description = "Output only. The field name associated with the notice.",
          readOnly = true,
          type = "string",
        },
        noticeMessage = {
          description = "Output only. The notice message associate with the value of the field.",
          readOnly = true,
          type = "string",
        },
        noticeValue = {
          description = "Output only. The value of the field that has a notice. When setting the field to this value, the user may be required to acknowledge the notice message in order for the value to be set.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicySchemaRequiredItems = {
      description = "The fields that will become required based on the value of this field.",
      id = "GoogleChromePolicyVersionsV1PolicySchemaRequiredItems",
      properties = {
        fieldConditions = {
          description = "The value(s) of the field that provoke required field enforcement. An empty field_conditions implies that any value assigned to this field will provoke required field enforcement.",
          items = {
            type = "string",
          },
          type = "array",
        },
        requiredFields = {
          description = "The fields that are required as a consequence of the field conditions.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicyTargetKey = {
      description = "The key used to identify the target on which the policy will be applied.",
      id = "GoogleChromePolicyVersionsV1PolicyTargetKey",
      properties = {
        additionalTargetKeys = {
          additionalProperties = {
            type = "string",
          },
          description = "Map containing the additional target key name and value pairs used to further identify the target of the policy.",
          type = "object",
        },
        targetResource = {
          description = "The target resource on which this policy is applied. The following resources are supported: * Organizational Unit (\"orgunits/{orgunit_id}\") * Group (\"groups/{group_id}\")",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1PolicyValue = {
      description = "A particular value for a policy managed by the service.",
      id = "GoogleChromePolicyVersionsV1PolicyValue",
      properties = {
        policySchema = {
          description = "The fully qualified name of the policy schema associated with this policy.",
          type = "string",
        },
        value = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The value of the policy that is compatible with the schema that it is associated with.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1RemoveCertificateErrorDetails = {
      description = "Details of the errors encountered during a remove certificate request. This message will be returned as part of the details of a google.rpc.Status returned to the user when there is an error in their request.",
      id = "GoogleChromePolicyVersionsV1RemoveCertificateErrorDetails",
      properties = {
        certificateReferences = {
          description = "Output only. If the certificate was not removed, a list of references to the certificate that prevented it from being removed. Only unreferenced certificates can be removed.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1CertificateReference",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1RemoveCertificateRequest = {
      description = "Request object for removing a certificate.",
      id = "GoogleChromePolicyVersionsV1RemoveCertificateRequest",
      properties = {
        networkId = {
          description = "Required. The GUID of the certificate to remove.",
          type = "string",
        },
        targetResource = {
          description = "Required. The target resource on which this certificate will be removed. The following resources are supported: * Organizational Unit (\"orgunits/{orgunit_id}\")",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1RemoveCertificateResponse = {
      description = "Response object for removing a certificate.",
      id = "GoogleChromePolicyVersionsV1RemoveCertificateResponse",
      properties = {},
      type = "object",
    },
    GoogleChromePolicyVersionsV1RemoveNetworkRequest = {
      description = "Request object for removing a network",
      id = "GoogleChromePolicyVersionsV1RemoveNetworkRequest",
      properties = {
        networkId = {
          description = "Required. The GUID of the network to remove.",
          type = "string",
        },
        targetResource = {
          description = "Required. The target resource on which this network will be removed. The following resources are supported: * Organizational Unit (\"orgunits/{orgunit_id}\")",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1RemoveNetworkResponse = {
      description = "Response object for removing a network.",
      id = "GoogleChromePolicyVersionsV1RemoveNetworkResponse",
      properties = {},
      type = "object",
    },
    GoogleChromePolicyVersionsV1ResolveRequest = {
      description = "Request message for getting the resolved policy value for a specific target.",
      id = "GoogleChromePolicyVersionsV1ResolveRequest",
      properties = {
        pageSize = {
          description = "The maximum number of policies to return, defaults to 100 and has a maximum of 1000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "The page token used to retrieve a specific page of the request.",
          type = "string",
        },
        policySchemaFilter = {
          description = "The schema filter to apply to the resolve request. Specify a schema name to view a particular schema, for example: chrome.users.ShowLogoutButton Wildcards are supported, but only in the leaf portion of the schema name. Wildcards cannot be used in namespace directly. Please read https://developers.google.com/chrome/policy/guides/policy-schemas for details on schema namespaces. For example: Valid: \"chrome.users.*\", \"chrome.users.apps.*\", \"chrome.printers.*\" Invalid: \"*\", \"*.users\", \"chrome.*\", \"chrome.*.apps.*\"",
          type = "string",
        },
        policyTargetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Required. The key of the target resource on which the policies should be resolved.",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1ResolveResponse = {
      description = "Response message for getting the resolved policy value for a specific target.",
      id = "GoogleChromePolicyVersionsV1ResolveResponse",
      properties = {
        nextPageToken = {
          description = "The page token used to get the next set of resolved policies found by the request.",
          type = "string",
        },
        resolvedPolicies = {
          description = "The list of resolved policies found by the resolve request.",
          items = {
            ["$ref"] = "GoogleChromePolicyVersionsV1ResolvedPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1ResolvedPolicy = {
      description = "The resolved value of a policy for a given target.",
      id = "GoogleChromePolicyVersionsV1ResolvedPolicy",
      properties = {
        addedSourceKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Output only. The added source key establishes at which level an entity was explicitly added for management. This is useful for certain type of policies that are only applied if they are explicitly added for management. For example: apps and networks. An entity can only be deleted from management in an Organizational Unit that it was explicitly added to. If this is not present it means that the policy is managed without the need to explicitly add an entity, for example: standard user or device policies.",
          readOnly = true,
        },
        sourceKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Output only. The source resource from which this policy value is obtained. May be the same as `targetKey` if the policy is directly modified on the target, otherwise it would be another resource from which the policy gets its value (if applicable). If not present, the source is the default value for the customer.",
          readOnly = true,
        },
        targetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Output only. The target resource for which the resolved policy value applies.",
          readOnly = true,
        },
        value = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyValue",
          description = "Output only. The resolved value of the policy.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest = {
      description = "Request message for updating the group priority ordering of an app.",
      id = "GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest",
      properties = {
        groupIds = {
          description = "Required. The group IDs, in desired priority ordering.",
          items = {
            type = "string",
          },
          type = "array",
        },
        policyNamespace = {
          description = "Required. The namespace of the policy type for the request.",
          type = "string",
        },
        policyTargetKey = {
          ["$ref"] = "GoogleChromePolicyVersionsV1PolicyTargetKey",
          description = "Required. The key of the target for which we want to update the group priority ordering. The target resource must point to an app.",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1UploadPolicyFileRequest = {
      description = "Request message for uploading a file for a policy.",
      id = "GoogleChromePolicyVersionsV1UploadPolicyFileRequest",
      properties = {
        policyField = {
          description = "Required. The fully qualified policy schema and field name this file is uploaded for. This information will be used to validate the content type of the file.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleChromePolicyVersionsV1UploadPolicyFileResponse = {
      description = "Response message for downloading an uploaded file.",
      id = "GoogleChromePolicyVersionsV1UploadPolicyFileResponse",
      properties = {
        downloadUri = {
          description = "The uri for end user to download the file.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
    GoogleTypeDate = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "GoogleTypeDate",
      properties = {
        day = {
          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
          format = "int32",
          type = "integer",
        },
        year = {
          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Proto2DescriptorProto = {
      description = "Describes a message type.",
      id = "Proto2DescriptorProto",
      properties = {
        enumType = {
          items = {
            ["$ref"] = "Proto2EnumDescriptorProto",
          },
          type = "array",
        },
        field = {
          items = {
            ["$ref"] = "Proto2FieldDescriptorProto",
          },
          type = "array",
        },
        name = {
          type = "string",
        },
        nestedType = {
          items = {
            ["$ref"] = "Proto2DescriptorProto",
          },
          type = "array",
        },
        oneofDecl = {
          items = {
            ["$ref"] = "Proto2OneofDescriptorProto",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Proto2EnumDescriptorProto = {
      description = "Describes an enum type.",
      id = "Proto2EnumDescriptorProto",
      properties = {
        name = {
          type = "string",
        },
        value = {
          items = {
            ["$ref"] = "Proto2EnumValueDescriptorProto",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Proto2EnumValueDescriptorProto = {
      description = "Describes a value within an enum.",
      id = "Proto2EnumValueDescriptorProto",
      properties = {
        name = {
          type = "string",
        },
        number = {
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Proto2FieldDescriptorProto = {
      description = "Describes a field within a message.",
      id = "Proto2FieldDescriptorProto",
      properties = {
        defaultValue = {
          description = "For numeric types, contains the original text representation of the value. For booleans, \"true\" or \"false\". For strings, contains the default text contents (not escaped in any way). For bytes, contains the C escaped value. All bytes >= 128 are escaped.",
          type = "string",
        },
        jsonName = {
          description = "JSON name of this field. The value is set by protocol compiler. If the user has set a \"json_name\" option on this field, that option's value will be used. Otherwise, it's deduced from the field's name by converting it to camelCase.",
          type = "string",
        },
        label = {
          enum = {
            "LABEL_OPTIONAL",
            "LABEL_REQUIRED",
            "LABEL_REPEATED",
          },
          enumDescriptions = {
            "0 is reserved for errors",
            "",
            "",
          },
          type = "string",
        },
        name = {
          type = "string",
        },
        number = {
          format = "int32",
          type = "integer",
        },
        oneofIndex = {
          description = "If set, gives the index of a oneof in the containing type's oneof_decl list. This field is a member of that oneof.",
          format = "int32",
          type = "integer",
        },
        proto3Optional = {
          description = "If true, this is a proto3 \"optional\". When a proto3 field is optional, it tracks presence regardless of field type. When proto3_optional is true, this field must be belong to a oneof to signal to old proto3 clients that presence is tracked for this field. This oneof is known as a \"synthetic\" oneof, and this field must be its sole member (each proto3 optional field gets its own synthetic oneof). Synthetic oneofs exist in the descriptor only, and do not generate any API. Synthetic oneofs must be ordered after all \"real\" oneofs. For message fields, proto3_optional doesn't create any semantic change, since non-repeated message fields always track presence. However it still indicates the semantic detail of whether the user wrote \"optional\" or not. This can be useful for round-tripping the .proto file. For consistency we give message fields a synthetic oneof also, even though it is not required to track presence. This is especially important because the parser can't tell if a field is a message or an enum, so it must always create a synthetic oneof. Proto2 optional fields do not set this flag, because they already indicate optional with `LABEL_OPTIONAL`.",
          type = "boolean",
        },
        type = {
          description = "If type_name is set, this need not be set. If both this and type_name are set, this must be one of TYPE_ENUM, TYPE_MESSAGE or TYPE_GROUP.",
          enum = {
            "TYPE_DOUBLE",
            "TYPE_FLOAT",
            "TYPE_INT64",
            "TYPE_UINT64",
            "TYPE_INT32",
            "TYPE_FIXED64",
            "TYPE_FIXED32",
            "TYPE_BOOL",
            "TYPE_STRING",
            "TYPE_GROUP",
            "TYPE_MESSAGE",
            "TYPE_BYTES",
            "TYPE_UINT32",
            "TYPE_ENUM",
            "TYPE_SFIXED32",
            "TYPE_SFIXED64",
            "TYPE_SINT32",
            "TYPE_SINT64",
          },
          enumDescriptions = {
            "0 is reserved for errors. Order is weird for historical reasons.",
            "",
            "Not ZigZag encoded. Negative numbers take 10 bytes. Use TYPE_SINT64 if negative values are likely.",
            "",
            "Not ZigZag encoded. Negative numbers take 10 bytes. Use TYPE_SINT32 if negative values are likely.",
            "",
            "",
            "",
            "",
            "Tag-delimited aggregate. Group type is deprecated and not supported in proto3. However, Proto3 implementations should still be able to parse the group wire format and treat group fields as unknown fields.",
            "Length-delimited aggregate.",
            "New in version 2.",
            "",
            "",
            "",
            "",
            "Uses ZigZag encoding.",
            "Uses ZigZag encoding.",
          },
          type = "string",
        },
        typeName = {
          description = "For message and enum types, this is the name of the type. If the name starts with a '.', it is fully-qualified. Otherwise, C++-like scoping rules are used to find the type (i.e. first the nested types within this message are searched, then within the parent, on up to the root namespace).",
          type = "string",
        },
      },
      type = "object",
    },
    Proto2FileDescriptorProto = {
      description = "Describes a complete .proto file.",
      id = "Proto2FileDescriptorProto",
      properties = {
        enumType = {
          items = {
            ["$ref"] = "Proto2EnumDescriptorProto",
          },
          type = "array",
        },
        messageType = {
          description = "All top-level definitions in this file.",
          items = {
            ["$ref"] = "Proto2DescriptorProto",
          },
          type = "array",
        },
        name = {
          description = "file name, relative to root of source tree",
          type = "string",
        },
        package = {
          description = "e.g. \"foo\", \"foo.bar\", etc.",
          type = "string",
        },
        syntax = {
          description = "The syntax of the proto file. The supported values are \"proto2\", \"proto3\", and \"editions\". If `edition` is present, this value must be \"editions\".",
          type = "string",
        },
      },
      type = "object",
    },
    Proto2OneofDescriptorProto = {
      description = "Describes a oneof.",
      id = "Proto2OneofDescriptorProto",
      properties = {
        name = {
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Chrome Policy API",
  version = "v1",
  version_module = true,
}
