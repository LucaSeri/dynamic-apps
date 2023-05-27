return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloudkms"] = {
          description = "View and manage your keys and secrets stored in Cloud Key Management Service",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudkms.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud KMS",
  description = "Manages keys and performs cryptographic operations in a central cloud service, for direct use by other cloud resources and applications. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/kms/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudkms:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudkms.mtls.googleapis.com/",
  name = "cloudkms",
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
            generateRandomBytes = {
              description = "Generate random bytes using the Cloud KMS randomness source in the provided location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}:generateRandomBytes",
              httpMethod = "POST",
              id = "cloudkms.projects.locations.generateRandomBytes",
              parameterOrder = {
                "location",
              },
              parameters = {
                location = {
                  description = "The project-specific location in which to generate random bytes. For example, \"projects/my-project/locations/us-central1\".",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+location}:generateRandomBytes",
              request = {
                ["$ref"] = "GenerateRandomBytesRequest",
              },
              response = {
                ["$ref"] = "GenerateRandomBytesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloudkms",
              },
            },
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "cloudkms.projects.locations.get",
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
                "https://www.googleapis.com/auth/cloudkms",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "cloudkms.projects.locations.list",
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
                "https://www.googleapis.com/auth/cloudkms",
              },
            },
          },
          resources = {
            ekmConfig = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConfig:getIamPolicy",
                  httpMethod = "GET",
                  id = "cloudkms.projects.locations.ekmConfig.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/ekmConfig$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConfig:setIamPolicy",
                  httpMethod = "POST",
                  id = "cloudkms.projects.locations.ekmConfig.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/ekmConfig$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConfig:testIamPermissions",
                  httpMethod = "POST",
                  id = "cloudkms.projects.locations.ekmConfig.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/ekmConfig$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
              },
            },
            ekmConnections = {
              methods = {
                create = {
                  description = "Creates a new EkmConnection in a given Project and Location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConnections",
                  httpMethod = "POST",
                  id = "cloudkms.projects.locations.ekmConnections.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    ekmConnectionId = {
                      description = "Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the location associated with the EkmConnection, in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/ekmConnections",
                  request = {
                    ["$ref"] = "EkmConnection",
                  },
                  response = {
                    ["$ref"] = "EkmConnection",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                get = {
                  description = "Returns metadata for a given EkmConnection.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConnections/{ekmConnectionsId}",
                  httpMethod = "GET",
                  id = "cloudkms.projects.locations.ekmConnections.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the EkmConnection to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/ekmConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "EkmConnection",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConnections/{ekmConnectionsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "cloudkms.projects.locations.ekmConnections.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/ekmConnections/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                list = {
                  description = "Lists EkmConnections.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConnections",
                  httpMethod = "GET",
                  id = "cloudkms.projects.locations.ekmConnections.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Optional limit on the number of EkmConnections to include in the response. Further EkmConnections can subsequently be obtained by including the ListEkmConnectionsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Optional pagination token, returned earlier via ListEkmConnectionsResponse.next_page_token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the location associated with the EkmConnections to list, in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/ekmConnections",
                  response = {
                    ["$ref"] = "ListEkmConnectionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                patch = {
                  description = "Updates an EkmConnection's metadata.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConnections/{ekmConnectionsId}",
                  httpMethod = "PATCH",
                  id = "cloudkms.projects.locations.ekmConnections.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/ekmConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. List of fields to be updated in this request.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "EkmConnection",
                  },
                  response = {
                    ["$ref"] = "EkmConnection",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConnections/{ekmConnectionsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "cloudkms.projects.locations.ekmConnections.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/ekmConnections/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/ekmConnections/{ekmConnectionsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "cloudkms.projects.locations.ekmConnections.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/ekmConnections/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
              },
            },
            keyRings = {
              methods = {
                create = {
                  description = "Create a new KeyRing in a given Project and Location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings",
                  httpMethod = "POST",
                  id = "cloudkms.projects.locations.keyRings.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    keyRingId = {
                      description = "Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the location associated with the KeyRings, in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/keyRings",
                  request = {
                    ["$ref"] = "KeyRing",
                  },
                  response = {
                    ["$ref"] = "KeyRing",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                get = {
                  description = "Returns metadata for a given KeyRing.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}",
                  httpMethod = "GET",
                  id = "cloudkms.projects.locations.keyRings.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the KeyRing to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "KeyRing",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "cloudkms.projects.locations.keyRings.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                list = {
                  description = "Lists KeyRings.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings",
                  httpMethod = "GET",
                  id = "cloudkms.projects.locations.keyRings.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Optional limit on the number of KeyRings to include in the response. Further KeyRings can subsequently be obtained by including the ListKeyRingsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Optional pagination token, returned earlier via ListKeyRingsResponse.next_page_token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the location associated with the KeyRings, in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/keyRings",
                  response = {
                    ["$ref"] = "ListKeyRingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "cloudkms.projects.locations.keyRings.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "cloudkms.projects.locations.keyRings.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudkms",
                  },
                },
              },
              resources = {
                cryptoKeys = {
                  methods = {
                    create = {
                      description = "Create a new CryptoKey within a KeyRing. CryptoKey.purpose and CryptoKey.version_template.algorithm are required.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        cryptoKeyId = {
                          description = "Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the KeyRing associated with the CryptoKeys.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        skipInitialVersionCreation = {
                          description = "If set to true, the request will create a CryptoKey without any CryptoKeyVersions. You must manually call CreateCryptoKeyVersion or ImportCryptoKeyVersion before you can use this CryptoKey.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+parent}/cryptoKeys",
                      request = {
                        ["$ref"] = "CryptoKey",
                      },
                      response = {
                        ["$ref"] = "CryptoKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    decrypt = {
                      description = "Decrypts data that was protected by Encrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}:decrypt",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.decrypt",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the CryptoKey to use for decryption. The server will choose the appropriate version.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:decrypt",
                      request = {
                        ["$ref"] = "DecryptRequest",
                      },
                      response = {
                        ["$ref"] = "DecryptResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    encrypt = {
                      description = "Encrypts data, so that it can only be recovered by a call to Decrypt. The CryptoKey.purpose must be ENCRYPT_DECRYPT.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}:encrypt",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.encrypt",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the CryptoKey or CryptoKeyVersion to use for encryption. If a CryptoKey is specified, the server will use its primary version.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/.*$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:encrypt",
                      request = {
                        ["$ref"] = "EncryptRequest",
                      },
                      response = {
                        ["$ref"] = "EncryptResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    get = {
                      description = "Returns metadata for a given CryptoKey, as well as its primary CryptoKeyVersion.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}",
                      httpMethod = "GET",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the CryptoKey to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "CryptoKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    list = {
                      description = "Lists CryptoKeys.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys",
                      httpMethod = "GET",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Optional limit on the number of CryptoKeys to include in the response. Further CryptoKeys can subsequently be obtained by including the ListCryptoKeysResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Optional pagination token, returned earlier via ListCryptoKeysResponse.next_page_token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the KeyRing to list, in the format `projects/*/locations/*/keyRings/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        versionView = {
                          description = "The fields of the primary version to include in the response.",
                          enum = {
                            "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED",
                            "FULL",
                          },
                          enumDescriptions = {
                            "Default view for each CryptoKeyVersion. Does not include the attestation field.",
                            "Provides all fields in each CryptoKeyVersion, including the attestation.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/cryptoKeys",
                      response = {
                        ["$ref"] = "ListCryptoKeysResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    patch = {
                      description = "Update a CryptoKey.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}",
                      httpMethod = "PATCH",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. List of fields to be updated in this request.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "CryptoKey",
                      },
                      response = {
                        ["$ref"] = "CryptoKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    updatePrimaryVersion = {
                      description = "Update the version of a CryptoKey that will be used in Encrypt. Returns an error if called on a key whose purpose is not ENCRYPT_DECRYPT.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}:updatePrimaryVersion",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the CryptoKey to update.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:updatePrimaryVersion",
                      request = {
                        ["$ref"] = "UpdateCryptoKeyPrimaryVersionRequest",
                      },
                      response = {
                        ["$ref"] = "CryptoKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                  },
                  resources = {
                    cryptoKeyVersions = {
                      methods = {
                        asymmetricDecrypt = {
                          description = "Decrypts data that was encrypted with a public key retrieved from GetPublicKey corresponding to a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_DECRYPT.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}:asymmetricDecrypt",
                          httpMethod = "POST",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricDecrypt",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the CryptoKeyVersion to use for decryption.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:asymmetricDecrypt",
                          request = {
                            ["$ref"] = "AsymmetricDecryptRequest",
                          },
                          response = {
                            ["$ref"] = "AsymmetricDecryptResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        asymmetricSign = {
                          description = "Signs data using a CryptoKeyVersion with CryptoKey.purpose ASYMMETRIC_SIGN, producing a signature that can be verified with the public key retrieved from GetPublicKey.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}:asymmetricSign",
                          httpMethod = "POST",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.asymmetricSign",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the CryptoKeyVersion to use for signing.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:asymmetricSign",
                          request = {
                            ["$ref"] = "AsymmetricSignRequest",
                          },
                          response = {
                            ["$ref"] = "AsymmetricSignResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        create = {
                          description = "Create a new CryptoKeyVersion in a CryptoKey. The server will assign the next sequential id. If unset, state will be set to ENABLED.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions",
                          httpMethod = "POST",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The name of the CryptoKey associated with the CryptoKeyVersions.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/cryptoKeyVersions",
                          request = {
                            ["$ref"] = "CryptoKeyVersion",
                          },
                          response = {
                            ["$ref"] = "CryptoKeyVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        destroy = {
                          description = "Schedule a CryptoKeyVersion for destruction. Upon calling this method, CryptoKeyVersion.state will be set to DESTROY_SCHEDULED, and destroy_time will be set to the time destroy_scheduled_duration in the future. At that time, the state will automatically change to DESTROYED, and the key material will be irrevocably destroyed. Before the destroy_time is reached, RestoreCryptoKeyVersion may be called to reverse the process.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}:destroy",
                          httpMethod = "POST",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the CryptoKeyVersion to destroy.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:destroy",
                          request = {
                            ["$ref"] = "DestroyCryptoKeyVersionRequest",
                          },
                          response = {
                            ["$ref"] = "CryptoKeyVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        get = {
                          description = "Returns metadata for a given CryptoKeyVersion.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}",
                          httpMethod = "GET",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the CryptoKeyVersion to get.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "CryptoKeyVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        getPublicKey = {
                          description = "Returns the public key for the given CryptoKeyVersion. The CryptoKey.purpose must be ASYMMETRIC_SIGN or ASYMMETRIC_DECRYPT.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}/publicKey",
                          httpMethod = "GET",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the CryptoKeyVersion public key to get.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/publicKey",
                          response = {
                            ["$ref"] = "PublicKey",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        import = {
                          description = "Import wrapped key material into a CryptoKeyVersion. All requests must specify a CryptoKey. If a CryptoKeyVersion is additionally specified in the request, key material will be reimported into that version. Otherwise, a new version will be created, and will be assigned the next sequential id within the CryptoKey.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions:import",
                          httpMethod = "POST",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The name of the CryptoKey to be imported into. The create permission is only required on this key when creating a new CryptoKeyVersion.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/cryptoKeyVersions:import",
                          request = {
                            ["$ref"] = "ImportCryptoKeyVersionRequest",
                          },
                          response = {
                            ["$ref"] = "CryptoKeyVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        list = {
                          description = "Lists CryptoKeyVersions.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions",
                          httpMethod = "GET",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. Optional limit on the number of CryptoKeyVersions to include in the response. Further CryptoKeyVersions can subsequently be obtained by including the ListCryptoKeyVersionsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. Optional pagination token, returned earlier via ListCryptoKeyVersionsResponse.next_page_token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the CryptoKey to list, in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "The fields to include in the response.",
                              enum = {
                                "CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED",
                                "FULL",
                              },
                              enumDescriptions = {
                                "Default view for each CryptoKeyVersion. Does not include the attestation field.",
                                "Provides all fields in each CryptoKeyVersion, including the attestation.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/cryptoKeyVersions",
                          response = {
                            ["$ref"] = "ListCryptoKeyVersionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        macSign = {
                          description = "Signs data using a CryptoKeyVersion with CryptoKey.purpose MAC, producing a tag that can be verified by another source with the same key.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}:macSign",
                          httpMethod = "POST",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macSign",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the CryptoKeyVersion to use for signing.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:macSign",
                          request = {
                            ["$ref"] = "MacSignRequest",
                          },
                          response = {
                            ["$ref"] = "MacSignResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        macVerify = {
                          description = "Verifies MAC tag using a CryptoKeyVersion with CryptoKey.purpose MAC, and returns a response that indicates whether or not the verification was successful.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}:macVerify",
                          httpMethod = "POST",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.macVerify",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the CryptoKeyVersion to use for verification.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:macVerify",
                          request = {
                            ["$ref"] = "MacVerifyRequest",
                          },
                          response = {
                            ["$ref"] = "MacVerifyResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        patch = {
                          description = "Update a CryptoKeyVersion's metadata. state may be changed between ENABLED and DISABLED using this method. See DestroyCryptoKeyVersion and RestoreCryptoKeyVersion to move between other states.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}",
                          httpMethod = "PATCH",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Output only. The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. List of fields to be updated in this request.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "CryptoKeyVersion",
                          },
                          response = {
                            ["$ref"] = "CryptoKeyVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                        restore = {
                          description = "Restore a CryptoKeyVersion in the DESTROY_SCHEDULED state. Upon restoration of the CryptoKeyVersion, state will be set to DISABLED, and destroy_time will be cleared.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/cryptoKeys/{cryptoKeysId}/cryptoKeyVersions/{cryptoKeyVersionsId}:restore",
                          httpMethod = "POST",
                          id = "cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The resource name of the CryptoKeyVersion to restore.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/cryptoKeys/[^/]+/cryptoKeyVersions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:restore",
                          request = {
                            ["$ref"] = "RestoreCryptoKeyVersionRequest",
                          },
                          response = {
                            ["$ref"] = "CryptoKeyVersion",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudkms",
                          },
                        },
                      },
                    },
                  },
                },
                importJobs = {
                  methods = {
                    create = {
                      description = "Create a new ImportJob within a KeyRing. ImportJob.import_method is required.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/importJobs",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.importJobs.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        importJobId = {
                          description = "Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the KeyRing associated with the ImportJobs.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/importJobs",
                      request = {
                        ["$ref"] = "ImportJob",
                      },
                      response = {
                        ["$ref"] = "ImportJob",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    get = {
                      description = "Returns metadata for a given ImportJob.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/importJobs/{importJobsId}",
                      httpMethod = "GET",
                      id = "cloudkms.projects.locations.keyRings.importJobs.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the ImportJob to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/importJobs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "ImportJob",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/importJobs/{importJobsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "cloudkms.projects.locations.keyRings.importJobs.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/importJobs/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    list = {
                      description = "Lists ImportJobs.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/importJobs",
                      httpMethod = "GET",
                      id = "cloudkms.projects.locations.keyRings.importJobs.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Only include resources that match the filter in the response. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Specify how the results should be sorted. If not specified, the results will be sorted in the default order. For more information, see [Sorting and filtering list results](https://cloud.google.com/kms/docs/sorting-and-filtering).",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. Optional limit on the number of ImportJobs to include in the response. Further ImportJobs can subsequently be obtained by including the ListImportJobsResponse.next_page_token in a subsequent request. If unspecified, the server will pick an appropriate default.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Optional pagination token, returned earlier via ListImportJobsResponse.next_page_token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the KeyRing to list, in the format `projects/*/locations/*/keyRings/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/importJobs",
                      response = {
                        ["$ref"] = "ListImportJobsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/importJobs/{importJobsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.importJobs.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/importJobs/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/keyRings/{keyRingsId}/importJobs/{importJobsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "cloudkms.projects.locations.keyRings.importJobs.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/keyRings/[^/]+/importJobs/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudkms",
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230106",
  rootUrl = "https://cloudkms.googleapis.com/",
  schemas = {
    AsymmetricDecryptRequest = {
      description = "Request message for KeyManagementService.AsymmetricDecrypt.",
      id = "AsymmetricDecryptRequest",
      properties = {
        ciphertext = {
          description = "Required. The data encrypted with the named CryptoKeyVersion's public key using OAEP.",
          format = "byte",
          type = "string",
        },
        ciphertextCrc32c = {
          description = "Optional. An optional CRC32C checksum of the AsymmetricDecryptRequest.ciphertext. If specified, KeyManagementService will verify the integrity of the received AsymmetricDecryptRequest.ciphertext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricDecryptRequest.ciphertext) is equal to AsymmetricDecryptRequest.ciphertext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AsymmetricDecryptResponse = {
      description = "Response message for KeyManagementService.AsymmetricDecrypt.",
      id = "AsymmetricDecryptResponse",
      properties = {
        plaintext = {
          description = "The decrypted data originally encrypted with the matching public key.",
          format = "byte",
          type = "string",
        },
        plaintextCrc32c = {
          description = "Integrity verification field. A CRC32C checksum of the returned AsymmetricDecryptResponse.plaintext. An integrity check of AsymmetricDecryptResponse.plaintext can be performed by computing the CRC32C checksum of AsymmetricDecryptResponse.plaintext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        protectionLevel = {
          description = "The ProtectionLevel of the CryptoKeyVersion used in decryption.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
        verifiedCiphertextCrc32c = {
          description = "Integrity verification field. A flag indicating whether AsymmetricDecryptRequest.ciphertext_crc32c was received by KeyManagementService and used for the integrity verification of the ciphertext. A false value of this field indicates either that AsymmetricDecryptRequest.ciphertext_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set AsymmetricDecryptRequest.ciphertext_crc32c but this field is still false, discard the response and perform a limited number of retries.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AsymmetricSignRequest = {
      description = "Request message for KeyManagementService.AsymmetricSign.",
      id = "AsymmetricSignRequest",
      properties = {
        data = {
          description = "Optional. The data to sign. It can't be supplied if AsymmetricSignRequest.digest is supplied.",
          format = "byte",
          type = "string",
        },
        dataCrc32c = {
          description = "Optional. An optional CRC32C checksum of the AsymmetricSignRequest.data. If specified, KeyManagementService will verify the integrity of the received AsymmetricSignRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricSignRequest.data) is equal to AsymmetricSignRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        digest = {
          ["$ref"] = "Digest",
          description = "Optional. The digest of the data to sign. The digest must be produced with the same digest algorithm as specified by the key version's algorithm. This field may not be supplied if AsymmetricSignRequest.data is supplied.",
        },
        digestCrc32c = {
          description = "Optional. An optional CRC32C checksum of the AsymmetricSignRequest.digest. If specified, KeyManagementService will verify the integrity of the received AsymmetricSignRequest.digest using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(AsymmetricSignRequest.digest) is equal to AsymmetricSignRequest.digest_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AsymmetricSignResponse = {
      description = "Response message for KeyManagementService.AsymmetricSign.",
      id = "AsymmetricSignResponse",
      properties = {
        name = {
          description = "The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the intended resource was used for signing.",
          type = "string",
        },
        protectionLevel = {
          description = "The ProtectionLevel of the CryptoKeyVersion used for signing.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
        signature = {
          description = "The created signature.",
          format = "byte",
          type = "string",
        },
        signatureCrc32c = {
          description = "Integrity verification field. A CRC32C checksum of the returned AsymmetricSignResponse.signature. An integrity check of AsymmetricSignResponse.signature can be performed by computing the CRC32C checksum of AsymmetricSignResponse.signature and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        verifiedDataCrc32c = {
          description = "Integrity verification field. A flag indicating whether AsymmetricSignRequest.data_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that AsymmetricSignRequest.data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set AsymmetricSignRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries.",
          type = "boolean",
        },
        verifiedDigestCrc32c = {
          description = "Integrity verification field. A flag indicating whether AsymmetricSignRequest.digest_crc32c was received by KeyManagementService and used for the integrity verification of the digest. A false value of this field indicates either that AsymmetricSignRequest.digest_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set AsymmetricSignRequest.digest_crc32c but this field is still false, discard the response and perform a limited number of retries.",
          type = "boolean",
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
    Certificate = {
      description = "A Certificate represents an X.509 certificate used to authenticate HTTPS connections to EKM replicas.",
      id = "Certificate",
      properties = {
        issuer = {
          description = "Output only. The issuer distinguished name in RFC 2253 format. Only present if parsed is true.",
          readOnly = true,
          type = "string",
        },
        notAfterTime = {
          description = "Output only. The certificate is not valid after this time. Only present if parsed is true.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        notBeforeTime = {
          description = "Output only. The certificate is not valid before this time. Only present if parsed is true.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        parsed = {
          description = "Output only. True if the certificate was parsed successfully.",
          readOnly = true,
          type = "boolean",
        },
        rawDer = {
          description = "Required. The raw certificate bytes in DER format.",
          format = "byte",
          type = "string",
        },
        serialNumber = {
          description = "Output only. The certificate serial number as a hex string. Only present if parsed is true.",
          readOnly = true,
          type = "string",
        },
        sha256Fingerprint = {
          description = "Output only. The SHA-256 certificate fingerprint as a hex string. Only present if parsed is true.",
          readOnly = true,
          type = "string",
        },
        subject = {
          description = "Output only. The subject distinguished name in RFC 2253 format. Only present if parsed is true.",
          readOnly = true,
          type = "string",
        },
        subjectAlternativeDnsNames = {
          description = "Output only. The subject Alternative DNS names. Only present if parsed is true.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    CertificateChains = {
      description = "Certificate chains needed to verify the attestation. Certificates in chains are PEM-encoded and are ordered based on https://tools.ietf.org/html/rfc5246#section-7.4.2.",
      id = "CertificateChains",
      properties = {
        caviumCerts = {
          description = "Cavium certificate chain corresponding to the attestation.",
          items = {
            type = "string",
          },
          type = "array",
        },
        googleCardCerts = {
          description = "Google card certificate chain corresponding to the attestation.",
          items = {
            type = "string",
          },
          type = "array",
        },
        googlePartitionCerts = {
          description = "Google partition certificate chain corresponding to the attestation.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CryptoKey = {
      description = "A CryptoKey represents a logical key that can be used for cryptographic operations. A CryptoKey is made up of zero or more versions, which represent the actual key material used in cryptographic operations.",
      id = "CryptoKey",
      properties = {
        createTime = {
          description = "Output only. The time at which this CryptoKey was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        cryptoKeyBackend = {
          description = "Immutable. The resource name of the backend environment where the key material for all CryptoKeyVersions associated with this CryptoKey reside and where all related cryptographic operations are performed. Only applicable if CryptoKeyVersions have a ProtectionLevel of EXTERNAL_VPC, with the resource name in the format `projects/*/locations/*/ekmConnections/*`. Note, this list is non-exhaustive and may apply to additional ProtectionLevels in the future.",
          type = "string",
        },
        destroyScheduledDuration = {
          description = "Immutable. The period of time that versions of this key spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED. If not specified at creation time, the default duration is 24 hours.",
          format = "google-duration",
          type = "string",
        },
        importOnly = {
          description = "Immutable. Whether this key may contain imported versions only.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels with user-defined metadata. For more information, see [Labeling Keys](https://cloud.google.com/kms/docs/labeling-keys).",
          type = "object",
        },
        name = {
          description = "Output only. The resource name for this CryptoKey in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*`.",
          readOnly = true,
          type = "string",
        },
        nextRotationTime = {
          description = "At next_rotation_time, the Key Management Service will automatically: 1. Create a new version of this CryptoKey. 2. Mark the new version as primary. Key rotations performed manually via CreateCryptoKeyVersion and UpdateCryptoKeyPrimaryVersion do not affect next_rotation_time. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.",
          format = "google-datetime",
          type = "string",
        },
        primary = {
          ["$ref"] = "CryptoKeyVersion",
          description = "Output only. A copy of the \"primary\" CryptoKeyVersion that will be used by Encrypt when this CryptoKey is given in EncryptRequest.name. The CryptoKey's primary version can be updated via UpdateCryptoKeyPrimaryVersion. Keys with purpose ENCRYPT_DECRYPT may have a primary. For other keys, this field will be omitted.",
          readOnly = true,
        },
        purpose = {
          description = "Immutable. The immutable purpose of this CryptoKey.",
          enum = {
            "CRYPTO_KEY_PURPOSE_UNSPECIFIED",
            "ENCRYPT_DECRYPT",
            "ASYMMETRIC_SIGN",
            "ASYMMETRIC_DECRYPT",
            "MAC",
          },
          enumDescriptions = {
            "Not specified.",
            "CryptoKeys with this purpose may be used with Encrypt and Decrypt.",
            "CryptoKeys with this purpose may be used with AsymmetricSign and GetPublicKey.",
            "CryptoKeys with this purpose may be used with AsymmetricDecrypt and GetPublicKey.",
            "CryptoKeys with this purpose may be used with MacSign.",
          },
          type = "string",
        },
        rotationPeriod = {
          description = "next_rotation_time will be advanced by this period when the service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours. If rotation_period is set, next_rotation_time must also be set. Keys with purpose ENCRYPT_DECRYPT support automatic rotation. For other keys, this field must be omitted.",
          format = "google-duration",
          type = "string",
        },
        versionTemplate = {
          ["$ref"] = "CryptoKeyVersionTemplate",
          description = "A template describing settings for new CryptoKeyVersion instances. The properties of new CryptoKeyVersion instances created by either CreateCryptoKeyVersion or auto-rotation are controlled by this template.",
        },
      },
      type = "object",
    },
    CryptoKeyVersion = {
      description = "A CryptoKeyVersion represents an individual cryptographic key, and the associated key material. An ENABLED version can be used for cryptographic operations. For security reasons, the raw cryptographic key material represented by a CryptoKeyVersion can never be viewed or exported. It can only be used to encrypt, decrypt, or sign data when an authorized user or application invokes Cloud KMS.",
      id = "CryptoKeyVersion",
      properties = {
        algorithm = {
          description = "Output only. The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.",
          enum = {
            "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED",
            "GOOGLE_SYMMETRIC_ENCRYPTION",
            "RSA_SIGN_PSS_2048_SHA256",
            "RSA_SIGN_PSS_3072_SHA256",
            "RSA_SIGN_PSS_4096_SHA256",
            "RSA_SIGN_PSS_4096_SHA512",
            "RSA_SIGN_PKCS1_2048_SHA256",
            "RSA_SIGN_PKCS1_3072_SHA256",
            "RSA_SIGN_PKCS1_4096_SHA256",
            "RSA_SIGN_PKCS1_4096_SHA512",
            "RSA_SIGN_RAW_PKCS1_2048",
            "RSA_SIGN_RAW_PKCS1_3072",
            "RSA_SIGN_RAW_PKCS1_4096",
            "RSA_DECRYPT_OAEP_2048_SHA256",
            "RSA_DECRYPT_OAEP_3072_SHA256",
            "RSA_DECRYPT_OAEP_4096_SHA256",
            "RSA_DECRYPT_OAEP_4096_SHA512",
            "RSA_DECRYPT_OAEP_2048_SHA1",
            "RSA_DECRYPT_OAEP_3072_SHA1",
            "RSA_DECRYPT_OAEP_4096_SHA1",
            "EC_SIGN_P256_SHA256",
            "EC_SIGN_P384_SHA384",
            "EC_SIGN_SECP256K1_SHA256",
            "HMAC_SHA256",
            "HMAC_SHA1",
            "HMAC_SHA384",
            "HMAC_SHA512",
            "HMAC_SHA224",
            "EXTERNAL_SYMMETRIC_ENCRYPTION",
          },
          enumDescriptions = {
            "Not specified.",
            "Creates symmetric encryption keys.",
            "RSASSA-PSS 2048 bit key with a SHA256 digest.",
            "RSASSA-PSS 3072 bit key with a SHA256 digest.",
            "RSASSA-PSS 4096 bit key with a SHA256 digest.",
            "RSASSA-PSS 4096 bit key with a SHA512 digest.",
            "RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.",
            "RSAES-OAEP 2048 bit key with a SHA256 digest.",
            "RSAES-OAEP 3072 bit key with a SHA256 digest.",
            "RSAES-OAEP 4096 bit key with a SHA256 digest.",
            "RSAES-OAEP 4096 bit key with a SHA512 digest.",
            "RSAES-OAEP 2048 bit key with a SHA1 digest.",
            "RSAES-OAEP 3072 bit key with a SHA1 digest.",
            "RSAES-OAEP 4096 bit key with a SHA1 digest.",
            "ECDSA on the NIST P-256 curve with a SHA256 digest.",
            "ECDSA on the NIST P-384 curve with a SHA384 digest.",
            "ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level.",
            "HMAC-SHA256 signing with a 256 bit key.",
            "HMAC-SHA1 signing with a 160 bit key.",
            "HMAC-SHA384 signing with a 384 bit key.",
            "HMAC-SHA512 signing with a 512 bit key.",
            "HMAC-SHA224 signing with a 224 bit key.",
            "Algorithm representing symmetric encryption by an external key manager.",
          },
          readOnly = true,
          type = "string",
        },
        attestation = {
          ["$ref"] = "KeyOperationAttestation",
          description = "Output only. Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time at which this CryptoKeyVersion was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        destroyEventTime = {
          description = "Output only. The time this CryptoKeyVersion's key material was destroyed. Only present if state is DESTROYED.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        destroyTime = {
          description = "Output only. The time this CryptoKeyVersion's key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        externalProtectionLevelOptions = {
          ["$ref"] = "ExternalProtectionLevelOptions",
          description = "ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.",
        },
        generateTime = {
          description = "Output only. The time this CryptoKeyVersion's key material was generated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        importFailureReason = {
          description = "Output only. The root cause of the most recent import failure. Only present if state is IMPORT_FAILED.",
          readOnly = true,
          type = "string",
        },
        importJob = {
          description = "Output only. The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported.",
          readOnly = true,
          type = "string",
        },
        importTime = {
          description = "Output only. The time at which this CryptoKeyVersion's key material was most recently imported.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.",
          readOnly = true,
          type = "string",
        },
        protectionLevel = {
          description = "Output only. The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          readOnly = true,
          type = "string",
        },
        reimportEligible = {
          description = "Output only. Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.",
          readOnly = true,
          type = "boolean",
        },
        state = {
          description = "The current state of the CryptoKeyVersion.",
          enum = {
            "CRYPTO_KEY_VERSION_STATE_UNSPECIFIED",
            "PENDING_GENERATION",
            "ENABLED",
            "DISABLED",
            "DESTROYED",
            "DESTROY_SCHEDULED",
            "PENDING_IMPORT",
            "IMPORT_FAILED",
          },
          enumDescriptions = {
            "Not specified.",
            "This version is still being generated. It may not be used, enabled, disabled, or destroyed yet. Cloud KMS will automatically mark this version ENABLED as soon as the version is ready.",
            "This version may be used for cryptographic operations.",
            "This version may not be used, but the key material is still available, and the version can be placed back into the ENABLED state.",
            "This version is destroyed, and the key material is no longer stored. This version may only become ENABLED again if this version is reimport_eligible and the original key material is reimported with a call to KeyManagementService.ImportCryptoKeyVersion.",
            "This version is scheduled for destruction, and will be destroyed soon. Call RestoreCryptoKeyVersion to put it back into the DISABLED state.",
            "This version is still being imported. It may not be used, enabled, disabled, or destroyed yet. Cloud KMS will automatically mark this version ENABLED as soon as the version is ready.",
            "This version was not imported successfully. It may not be used, enabled, disabled, or destroyed. The submitted key material has been discarded. Additional details can be found in CryptoKeyVersion.import_failure_reason.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CryptoKeyVersionTemplate = {
      description = "A CryptoKeyVersionTemplate specifies the properties to use when creating a new CryptoKeyVersion, either manually with CreateCryptoKeyVersion or automatically as a result of auto-rotation.",
      id = "CryptoKeyVersionTemplate",
      properties = {
        algorithm = {
          description = "Required. Algorithm to use when creating a CryptoKeyVersion based on this template. For backwards compatibility, GOOGLE_SYMMETRIC_ENCRYPTION is implied if both this field is omitted and CryptoKey.purpose is ENCRYPT_DECRYPT.",
          enum = {
            "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED",
            "GOOGLE_SYMMETRIC_ENCRYPTION",
            "RSA_SIGN_PSS_2048_SHA256",
            "RSA_SIGN_PSS_3072_SHA256",
            "RSA_SIGN_PSS_4096_SHA256",
            "RSA_SIGN_PSS_4096_SHA512",
            "RSA_SIGN_PKCS1_2048_SHA256",
            "RSA_SIGN_PKCS1_3072_SHA256",
            "RSA_SIGN_PKCS1_4096_SHA256",
            "RSA_SIGN_PKCS1_4096_SHA512",
            "RSA_SIGN_RAW_PKCS1_2048",
            "RSA_SIGN_RAW_PKCS1_3072",
            "RSA_SIGN_RAW_PKCS1_4096",
            "RSA_DECRYPT_OAEP_2048_SHA256",
            "RSA_DECRYPT_OAEP_3072_SHA256",
            "RSA_DECRYPT_OAEP_4096_SHA256",
            "RSA_DECRYPT_OAEP_4096_SHA512",
            "RSA_DECRYPT_OAEP_2048_SHA1",
            "RSA_DECRYPT_OAEP_3072_SHA1",
            "RSA_DECRYPT_OAEP_4096_SHA1",
            "EC_SIGN_P256_SHA256",
            "EC_SIGN_P384_SHA384",
            "EC_SIGN_SECP256K1_SHA256",
            "HMAC_SHA256",
            "HMAC_SHA1",
            "HMAC_SHA384",
            "HMAC_SHA512",
            "HMAC_SHA224",
            "EXTERNAL_SYMMETRIC_ENCRYPTION",
          },
          enumDescriptions = {
            "Not specified.",
            "Creates symmetric encryption keys.",
            "RSASSA-PSS 2048 bit key with a SHA256 digest.",
            "RSASSA-PSS 3072 bit key with a SHA256 digest.",
            "RSASSA-PSS 4096 bit key with a SHA256 digest.",
            "RSASSA-PSS 4096 bit key with a SHA512 digest.",
            "RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.",
            "RSAES-OAEP 2048 bit key with a SHA256 digest.",
            "RSAES-OAEP 3072 bit key with a SHA256 digest.",
            "RSAES-OAEP 4096 bit key with a SHA256 digest.",
            "RSAES-OAEP 4096 bit key with a SHA512 digest.",
            "RSAES-OAEP 2048 bit key with a SHA1 digest.",
            "RSAES-OAEP 3072 bit key with a SHA1 digest.",
            "RSAES-OAEP 4096 bit key with a SHA1 digest.",
            "ECDSA on the NIST P-256 curve with a SHA256 digest.",
            "ECDSA on the NIST P-384 curve with a SHA384 digest.",
            "ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level.",
            "HMAC-SHA256 signing with a 256 bit key.",
            "HMAC-SHA1 signing with a 160 bit key.",
            "HMAC-SHA384 signing with a 384 bit key.",
            "HMAC-SHA512 signing with a 512 bit key.",
            "HMAC-SHA224 signing with a 224 bit key.",
            "Algorithm representing symmetric encryption by an external key manager.",
          },
          type = "string",
        },
        protectionLevel = {
          description = "ProtectionLevel to use when creating a CryptoKeyVersion based on this template. Immutable. Defaults to SOFTWARE.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DecryptRequest = {
      description = "Request message for KeyManagementService.Decrypt.",
      id = "DecryptRequest",
      properties = {
        additionalAuthenticatedData = {
          description = "Optional. Optional data that must match the data originally supplied in EncryptRequest.additional_authenticated_data.",
          format = "byte",
          type = "string",
        },
        additionalAuthenticatedDataCrc32c = {
          description = "Optional. An optional CRC32C checksum of the DecryptRequest.additional_authenticated_data. If specified, KeyManagementService will verify the integrity of the received DecryptRequest.additional_authenticated_data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(DecryptRequest.additional_authenticated_data) is equal to DecryptRequest.additional_authenticated_data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        ciphertext = {
          description = "Required. The encrypted data originally returned in EncryptResponse.ciphertext.",
          format = "byte",
          type = "string",
        },
        ciphertextCrc32c = {
          description = "Optional. An optional CRC32C checksum of the DecryptRequest.ciphertext. If specified, KeyManagementService will verify the integrity of the received DecryptRequest.ciphertext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(DecryptRequest.ciphertext) is equal to DecryptRequest.ciphertext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DecryptResponse = {
      description = "Response message for KeyManagementService.Decrypt.",
      id = "DecryptResponse",
      properties = {
        plaintext = {
          description = "The decrypted data originally supplied in EncryptRequest.plaintext.",
          format = "byte",
          type = "string",
        },
        plaintextCrc32c = {
          description = "Integrity verification field. A CRC32C checksum of the returned DecryptResponse.plaintext. An integrity check of DecryptResponse.plaintext can be performed by computing the CRC32C checksum of DecryptResponse.plaintext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: receiving this response message indicates that KeyManagementService is able to successfully decrypt the ciphertext. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        protectionLevel = {
          description = "The ProtectionLevel of the CryptoKeyVersion used in decryption.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
        usedPrimary = {
          description = "Whether the Decryption was performed using the primary key version.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DestroyCryptoKeyVersionRequest = {
      description = "Request message for KeyManagementService.DestroyCryptoKeyVersion.",
      id = "DestroyCryptoKeyVersionRequest",
      properties = {},
      type = "object",
    },
    Digest = {
      description = "A Digest holds a cryptographic message digest.",
      id = "Digest",
      properties = {
        sha256 = {
          description = "A message digest produced with the SHA-256 algorithm.",
          format = "byte",
          type = "string",
        },
        sha384 = {
          description = "A message digest produced with the SHA-384 algorithm.",
          format = "byte",
          type = "string",
        },
        sha512 = {
          description = "A message digest produced with the SHA-512 algorithm.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    EkmConnection = {
      description = "An EkmConnection represents an individual EKM connection. It can be used for creating CryptoKeys and CryptoKeyVersions with a ProtectionLevel of EXTERNAL_VPC, as well as performing cryptographic operations using keys created within the EkmConnection.",
      id = "EkmConnection",
      properties = {
        createTime = {
          description = "Output only. The time at which the EkmConnection was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Optional. Etag of the currently stored EkmConnection.",
          type = "string",
        },
        name = {
          description = "Output only. The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`.",
          readOnly = true,
          type = "string",
        },
        serviceResolvers = {
          description = "A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.",
          items = {
            ["$ref"] = "ServiceResolver",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EncryptRequest = {
      description = "Request message for KeyManagementService.Encrypt.",
      id = "EncryptRequest",
      properties = {
        additionalAuthenticatedData = {
          description = "Optional. Optional data that, if specified, must also be provided during decryption through DecryptRequest.additional_authenticated_data. The maximum size depends on the key version's protection_level. For SOFTWARE, EXTERNAL, and EXTERNAL_VPC keys the AAD must be no larger than 64KiB. For HSM keys, the combined length of the plaintext and additional_authenticated_data fields must be no larger than 8KiB.",
          format = "byte",
          type = "string",
        },
        additionalAuthenticatedDataCrc32c = {
          description = "Optional. An optional CRC32C checksum of the EncryptRequest.additional_authenticated_data. If specified, KeyManagementService will verify the integrity of the received EncryptRequest.additional_authenticated_data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(EncryptRequest.additional_authenticated_data) is equal to EncryptRequest.additional_authenticated_data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        plaintext = {
          description = "Required. The data to encrypt. Must be no larger than 64KiB. The maximum size depends on the key version's protection_level. For SOFTWARE, EXTERNAL, and EXTERNAL_VPC keys, the plaintext must be no larger than 64KiB. For HSM keys, the combined length of the plaintext and additional_authenticated_data fields must be no larger than 8KiB.",
          format = "byte",
          type = "string",
        },
        plaintextCrc32c = {
          description = "Optional. An optional CRC32C checksum of the EncryptRequest.plaintext. If specified, KeyManagementService will verify the integrity of the received EncryptRequest.plaintext using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(EncryptRequest.plaintext) is equal to EncryptRequest.plaintext_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EncryptResponse = {
      description = "Response message for KeyManagementService.Encrypt.",
      id = "EncryptResponse",
      properties = {
        ciphertext = {
          description = "The encrypted data.",
          format = "byte",
          type = "string",
        },
        ciphertextCrc32c = {
          description = "Integrity verification field. A CRC32C checksum of the returned EncryptResponse.ciphertext. An integrity check of EncryptResponse.ciphertext can be performed by computing the CRC32C checksum of EncryptResponse.ciphertext and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "The resource name of the CryptoKeyVersion used in encryption. Check this field to verify that the intended resource was used for encryption.",
          type = "string",
        },
        protectionLevel = {
          description = "The ProtectionLevel of the CryptoKeyVersion used in encryption.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
        verifiedAdditionalAuthenticatedDataCrc32c = {
          description = "Integrity verification field. A flag indicating whether EncryptRequest.additional_authenticated_data_crc32c was received by KeyManagementService and used for the integrity verification of the AAD. A false value of this field indicates either that EncryptRequest.additional_authenticated_data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set EncryptRequest.additional_authenticated_data_crc32c but this field is still false, discard the response and perform a limited number of retries.",
          type = "boolean",
        },
        verifiedPlaintextCrc32c = {
          description = "Integrity verification field. A flag indicating whether EncryptRequest.plaintext_crc32c was received by KeyManagementService and used for the integrity verification of the plaintext. A false value of this field indicates either that EncryptRequest.plaintext_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set EncryptRequest.plaintext_crc32c but this field is still false, discard the response and perform a limited number of retries.",
          type = "boolean",
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
    ExternalProtectionLevelOptions = {
      description = "ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.",
      id = "ExternalProtectionLevelOptions",
      properties = {
        ekmConnectionKeyPath = {
          description = "The path to the external key material on the EKM when using EkmConnection e.g., \"v0/my/key\". Set this field instead of external_key_uri when using an EkmConnection.",
          type = "string",
        },
        externalKeyUri = {
          description = "The URI for an external resource that this CryptoKeyVersion represents.",
          type = "string",
        },
      },
      type = "object",
    },
    GenerateRandomBytesRequest = {
      description = "Request message for KeyManagementService.GenerateRandomBytes.",
      id = "GenerateRandomBytesRequest",
      properties = {
        lengthBytes = {
          description = "The length in bytes of the amount of randomness to retrieve. Minimum 8 bytes, maximum 1024 bytes.",
          format = "int32",
          type = "integer",
        },
        protectionLevel = {
          description = "The ProtectionLevel to use when generating the random data. Currently, only HSM protection level is supported.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GenerateRandomBytesResponse = {
      description = "Response message for KeyManagementService.GenerateRandomBytes.",
      id = "GenerateRandomBytesResponse",
      properties = {
        data = {
          description = "The generated data.",
          format = "byte",
          type = "string",
        },
        dataCrc32c = {
          description = "Integrity verification field. A CRC32C checksum of the returned GenerateRandomBytesResponse.data. An integrity check of GenerateRandomBytesResponse.data can be performed by computing the CRC32C checksum of GenerateRandomBytesResponse.data and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ImportCryptoKeyVersionRequest = {
      description = "Request message for KeyManagementService.ImportCryptoKeyVersion.",
      id = "ImportCryptoKeyVersionRequest",
      properties = {
        algorithm = {
          description = "Required. The algorithm of the key being imported. This does not need to match the version_template of the CryptoKey this version imports into.",
          enum = {
            "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED",
            "GOOGLE_SYMMETRIC_ENCRYPTION",
            "RSA_SIGN_PSS_2048_SHA256",
            "RSA_SIGN_PSS_3072_SHA256",
            "RSA_SIGN_PSS_4096_SHA256",
            "RSA_SIGN_PSS_4096_SHA512",
            "RSA_SIGN_PKCS1_2048_SHA256",
            "RSA_SIGN_PKCS1_3072_SHA256",
            "RSA_SIGN_PKCS1_4096_SHA256",
            "RSA_SIGN_PKCS1_4096_SHA512",
            "RSA_SIGN_RAW_PKCS1_2048",
            "RSA_SIGN_RAW_PKCS1_3072",
            "RSA_SIGN_RAW_PKCS1_4096",
            "RSA_DECRYPT_OAEP_2048_SHA256",
            "RSA_DECRYPT_OAEP_3072_SHA256",
            "RSA_DECRYPT_OAEP_4096_SHA256",
            "RSA_DECRYPT_OAEP_4096_SHA512",
            "RSA_DECRYPT_OAEP_2048_SHA1",
            "RSA_DECRYPT_OAEP_3072_SHA1",
            "RSA_DECRYPT_OAEP_4096_SHA1",
            "EC_SIGN_P256_SHA256",
            "EC_SIGN_P384_SHA384",
            "EC_SIGN_SECP256K1_SHA256",
            "HMAC_SHA256",
            "HMAC_SHA1",
            "HMAC_SHA384",
            "HMAC_SHA512",
            "HMAC_SHA224",
            "EXTERNAL_SYMMETRIC_ENCRYPTION",
          },
          enumDescriptions = {
            "Not specified.",
            "Creates symmetric encryption keys.",
            "RSASSA-PSS 2048 bit key with a SHA256 digest.",
            "RSASSA-PSS 3072 bit key with a SHA256 digest.",
            "RSASSA-PSS 4096 bit key with a SHA256 digest.",
            "RSASSA-PSS 4096 bit key with a SHA512 digest.",
            "RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.",
            "RSAES-OAEP 2048 bit key with a SHA256 digest.",
            "RSAES-OAEP 3072 bit key with a SHA256 digest.",
            "RSAES-OAEP 4096 bit key with a SHA256 digest.",
            "RSAES-OAEP 4096 bit key with a SHA512 digest.",
            "RSAES-OAEP 2048 bit key with a SHA1 digest.",
            "RSAES-OAEP 3072 bit key with a SHA1 digest.",
            "RSAES-OAEP 4096 bit key with a SHA1 digest.",
            "ECDSA on the NIST P-256 curve with a SHA256 digest.",
            "ECDSA on the NIST P-384 curve with a SHA384 digest.",
            "ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level.",
            "HMAC-SHA256 signing with a 256 bit key.",
            "HMAC-SHA1 signing with a 160 bit key.",
            "HMAC-SHA384 signing with a 384 bit key.",
            "HMAC-SHA512 signing with a 512 bit key.",
            "HMAC-SHA224 signing with a 224 bit key.",
            "Algorithm representing symmetric encryption by an external key manager.",
          },
          type = "string",
        },
        cryptoKeyVersion = {
          description = "Optional. The optional name of an existing CryptoKeyVersion to target for an import operation. If this field is not present, a new CryptoKeyVersion containing the supplied key material is created. If this field is present, the supplied key material is imported into the existing CryptoKeyVersion. To import into an existing CryptoKeyVersion, the CryptoKeyVersion must be a child of ImportCryptoKeyVersionRequest.parent, have been previously created via ImportCryptoKeyVersion, and be in DESTROYED or IMPORT_FAILED state. The key material and algorithm must match the previous CryptoKeyVersion exactly if the CryptoKeyVersion has ever contained key material.",
          type = "string",
        },
        importJob = {
          description = "Required. The name of the ImportJob that was used to wrap this key material.",
          type = "string",
        },
        rsaAesWrappedKey = {
          description = "Optional. This field has the same meaning as wrapped_key. Prefer to use that field in new work. Either that field or this field (but not both) must be specified.",
          format = "byte",
          type = "string",
        },
        wrappedKey = {
          description = "Optional. The wrapped key material to import. Before wrapping, key material must be formatted. If importing symmetric key material, the expected key material format is plain bytes. If importing asymmetric key material, the expected key material format is PKCS#8-encoded DER (the PrivateKeyInfo structure from RFC 5208). When wrapping with import methods (RSA_OAEP_3072_SHA1_AES_256 or RSA_OAEP_4096_SHA1_AES_256 or RSA_OAEP_3072_SHA256_AES_256 or RSA_OAEP_4096_SHA256_AES_256), this field must contain the concatenation of: 1. An ephemeral AES-256 wrapping key wrapped with the public_key using RSAES-OAEP with SHA-1/SHA-256, MGF1 with SHA-1/SHA-256, and an empty label. 2. The formatted key to be imported, wrapped with the ephemeral AES-256 key using AES-KWP (RFC 5649). This format is the same as the format produced by PKCS#11 mechanism CKM_RSA_AES_KEY_WRAP. When wrapping with import methods (RSA_OAEP_3072_SHA256 or RSA_OAEP_4096_SHA256), this field must contain the formatted key to be imported, wrapped with the public_key using RSAES-OAEP with SHA-256, MGF1 with SHA-256, and an empty label.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    ImportJob = {
      description = "An ImportJob can be used to create CryptoKeys and CryptoKeyVersions using pre-existing key material, generated outside of Cloud KMS. When an ImportJob is created, Cloud KMS will generate a \"wrapping key\", which is a public/private key pair. You use the wrapping key to encrypt (also known as wrap) the pre-existing key material to protect it during the import process. The nature of the wrapping key depends on the choice of import_method. When the wrapping key generation is complete, the state will be set to ACTIVE and the public_key can be fetched. The fetched public key can then be used to wrap your pre-existing key material. Once the key material is wrapped, it can be imported into a new CryptoKeyVersion in an existing CryptoKey by calling ImportCryptoKeyVersion. Multiple CryptoKeyVersions can be imported with a single ImportJob. Cloud KMS uses the private key portion of the wrapping key to unwrap the key material. Only Cloud KMS has access to the private key. An ImportJob expires 3 days after it is created. Once expired, Cloud KMS will no longer be able to import or unwrap any key material that was wrapped with the ImportJob's public key. For more information, see [Importing a key](https://cloud.google.com/kms/docs/importing-a-key).",
      id = "ImportJob",
      properties = {
        attestation = {
          ["$ref"] = "KeyOperationAttestation",
          description = "Output only. Statement that was generated and signed by the key creator (for example, an HSM) at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only present if the chosen ImportMethod is one with a protection level of HSM.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The time at which this ImportJob was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        expireEventTime = {
          description = "Output only. The time this ImportJob expired. Only present if state is EXPIRED.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        expireTime = {
          description = "Output only. The time at which this ImportJob is scheduled for expiration and can no longer be used to import key material.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        generateTime = {
          description = "Output only. The time this ImportJob's key material was generated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        importMethod = {
          description = "Required. Immutable. The wrapping method to be used for incoming key material.",
          enum = {
            "IMPORT_METHOD_UNSPECIFIED",
            "RSA_OAEP_3072_SHA1_AES_256",
            "RSA_OAEP_4096_SHA1_AES_256",
            "RSA_OAEP_3072_SHA256_AES_256",
            "RSA_OAEP_4096_SHA256_AES_256",
            "RSA_OAEP_3072_SHA256",
            "RSA_OAEP_4096_SHA256",
          },
          enumDescriptions = {
            "Not specified.",
            "This ImportMethod represents the CKM_RSA_AES_KEY_WRAP key wrapping scheme defined in the PKCS #11 standard. In summary, this involves wrapping the raw key with an ephemeral AES key, and wrapping the ephemeral AES key with a 3072 bit RSA key. For more details, see [RSA AES key wrap mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).",
            "This ImportMethod represents the CKM_RSA_AES_KEY_WRAP key wrapping scheme defined in the PKCS #11 standard. In summary, this involves wrapping the raw key with an ephemeral AES key, and wrapping the ephemeral AES key with a 4096 bit RSA key. For more details, see [RSA AES key wrap mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).",
            "This ImportMethod represents the CKM_RSA_AES_KEY_WRAP key wrapping scheme defined in the PKCS #11 standard. In summary, this involves wrapping the raw key with an ephemeral AES key, and wrapping the ephemeral AES key with a 3072 bit RSA key. For more details, see [RSA AES key wrap mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).",
            "This ImportMethod represents the CKM_RSA_AES_KEY_WRAP key wrapping scheme defined in the PKCS #11 standard. In summary, this involves wrapping the raw key with an ephemeral AES key, and wrapping the ephemeral AES key with a 4096 bit RSA key. For more details, see [RSA AES key wrap mechanism](http://docs.oasis-open.org/pkcs11/pkcs11-curr/v2.40/cos01/pkcs11-curr-v2.40-cos01.html#_Toc408226908).",
            "This ImportMethod represents RSAES-OAEP with a 3072 bit RSA key. The key material to be imported is wrapped directly with the RSA key. Due to technical limitations of RSA wrapping, this method cannot be used to wrap RSA keys for import.",
            "This ImportMethod represents RSAES-OAEP with a 4096 bit RSA key. The key material to be imported is wrapped directly with the RSA key. Due to technical limitations of RSA wrapping, this method cannot be used to wrap RSA keys for import.",
          },
          type = "string",
        },
        name = {
          description = "Output only. The resource name for this ImportJob in the format `projects/*/locations/*/keyRings/*/importJobs/*`.",
          readOnly = true,
          type = "string",
        },
        protectionLevel = {
          description = "Required. Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
        publicKey = {
          ["$ref"] = "WrappingPublicKey",
          description = "Output only. The public key with which to wrap key material prior to import. Only returned if state is ACTIVE.",
          readOnly = true,
        },
        state = {
          description = "Output only. The current state of the ImportJob, indicating if it can be used.",
          enum = {
            "IMPORT_JOB_STATE_UNSPECIFIED",
            "PENDING_GENERATION",
            "ACTIVE",
            "EXPIRED",
          },
          enumDescriptions = {
            "Not specified.",
            "The wrapping key for this job is still being generated. It may not be used. Cloud KMS will automatically mark this job as ACTIVE as soon as the wrapping key is generated.",
            "This job may be used in CreateCryptoKey and CreateCryptoKeyVersion requests.",
            "This job can no longer be used and may not leave this state once entered.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    KeyOperationAttestation = {
      description = "Contains an HSM-generated attestation about a key operation. For more information, see [Verifying attestations] (https://cloud.google.com/kms/docs/attest-key).",
      id = "KeyOperationAttestation",
      properties = {
        certChains = {
          ["$ref"] = "CertificateChains",
          description = "Output only. The certificate chains needed to validate the attestation",
          readOnly = true,
        },
        content = {
          description = "Output only. The attestation data provided by the HSM when the key operation was performed.",
          format = "byte",
          readOnly = true,
          type = "string",
        },
        format = {
          description = "Output only. The format of the attestation data.",
          enum = {
            "ATTESTATION_FORMAT_UNSPECIFIED",
            "CAVIUM_V1_COMPRESSED",
            "CAVIUM_V2_COMPRESSED",
          },
          enumDescriptions = {
            "Not specified.",
            "Cavium HSM attestation compressed with gzip. Note that this format is defined by Cavium and subject to change at any time. See https://www.marvell.com/products/security-solutions/nitrox-hs-adapters/software-key-attestation.html.",
            "Cavium HSM attestation V2 compressed with gzip. This is a new format introduced in Cavium's version 3.2-08.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    KeyRing = {
      description = "A KeyRing is a toplevel logical grouping of CryptoKeys.",
      id = "KeyRing",
      properties = {
        createTime = {
          description = "Output only. The time at which this KeyRing was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name for the KeyRing in the format `projects/*/locations/*/keyRings/*`.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListCryptoKeyVersionsResponse = {
      description = "Response message for KeyManagementService.ListCryptoKeyVersions.",
      id = "ListCryptoKeyVersionsResponse",
      properties = {
        cryptoKeyVersions = {
          description = "The list of CryptoKeyVersions.",
          items = {
            ["$ref"] = "CryptoKeyVersion",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListCryptoKeyVersionsRequest.page_token to retrieve the next page of results.",
          type = "string",
        },
        totalSize = {
          description = "The total number of CryptoKeyVersions that matched the query.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListCryptoKeysResponse = {
      description = "Response message for KeyManagementService.ListCryptoKeys.",
      id = "ListCryptoKeysResponse",
      properties = {
        cryptoKeys = {
          description = "The list of CryptoKeys.",
          items = {
            ["$ref"] = "CryptoKey",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListCryptoKeysRequest.page_token to retrieve the next page of results.",
          type = "string",
        },
        totalSize = {
          description = "The total number of CryptoKeys that matched the query.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListEkmConnectionsResponse = {
      description = "Response message for EkmService.ListEkmConnections.",
      id = "ListEkmConnectionsResponse",
      properties = {
        ekmConnections = {
          description = "The list of EkmConnections.",
          items = {
            ["$ref"] = "EkmConnection",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListEkmConnectionsRequest.page_token to retrieve the next page of results.",
          type = "string",
        },
        totalSize = {
          description = "The total number of EkmConnections that matched the query.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListImportJobsResponse = {
      description = "Response message for KeyManagementService.ListImportJobs.",
      id = "ListImportJobsResponse",
      properties = {
        importJobs = {
          description = "The list of ImportJobs.",
          items = {
            ["$ref"] = "ImportJob",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListImportJobsRequest.page_token to retrieve the next page of results.",
          type = "string",
        },
        totalSize = {
          description = "The total number of ImportJobs that matched the query.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListKeyRingsResponse = {
      description = "Response message for KeyManagementService.ListKeyRings.",
      id = "ListKeyRingsResponse",
      properties = {
        keyRings = {
          description = "The list of KeyRings.",
          items = {
            ["$ref"] = "KeyRing",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in ListKeyRingsRequest.page_token to retrieve the next page of results.",
          type = "string",
        },
        totalSize = {
          description = "The total number of KeyRings that matched the query.",
          format = "int32",
          type = "integer",
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
    LocationMetadata = {
      description = "Cloud KMS metadata for the given google.cloud.location.Location.",
      id = "LocationMetadata",
      properties = {
        ekmAvailable = {
          description = "Indicates whether CryptoKeys with protection_level EXTERNAL can be created in this location.",
          type = "boolean",
        },
        hsmAvailable = {
          description = "Indicates whether CryptoKeys with protection_level HSM can be created in this location.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MacSignRequest = {
      description = "Request message for KeyManagementService.MacSign.",
      id = "MacSignRequest",
      properties = {
        data = {
          description = "Required. The data to sign. The MAC tag is computed over this data field based on the specific algorithm.",
          format = "byte",
          type = "string",
        },
        dataCrc32c = {
          description = "Optional. An optional CRC32C checksum of the MacSignRequest.data. If specified, KeyManagementService will verify the integrity of the received MacSignRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacSignRequest.data) is equal to MacSignRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MacSignResponse = {
      description = "Response message for KeyManagementService.MacSign.",
      id = "MacSignResponse",
      properties = {
        mac = {
          description = "The created signature.",
          format = "byte",
          type = "string",
        },
        macCrc32c = {
          description = "Integrity verification field. A CRC32C checksum of the returned MacSignResponse.mac. An integrity check of MacSignResponse.mac can be performed by computing the CRC32C checksum of MacSignResponse.mac and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the intended resource was used for signing.",
          type = "string",
        },
        protectionLevel = {
          description = "The ProtectionLevel of the CryptoKeyVersion used for signing.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
        verifiedDataCrc32c = {
          description = "Integrity verification field. A flag indicating whether MacSignRequest.data_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacSignRequest.data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacSignRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MacVerifyRequest = {
      description = "Request message for KeyManagementService.MacVerify.",
      id = "MacVerifyRequest",
      properties = {
        data = {
          description = "Required. The data used previously as a MacSignRequest.data to generate the MAC tag.",
          format = "byte",
          type = "string",
        },
        dataCrc32c = {
          description = "Optional. An optional CRC32C checksum of the MacVerifyRequest.data. If specified, KeyManagementService will verify the integrity of the received MacVerifyRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacVerifyRequest.data) is equal to MacVerifyRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
        mac = {
          description = "Required. The signature to verify.",
          format = "byte",
          type = "string",
        },
        macCrc32c = {
          description = "Optional. An optional CRC32C checksum of the MacVerifyRequest.mac. If specified, KeyManagementService will verify the integrity of the received MacVerifyRequest.mac using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacVerifyRequest.tag) is equal to MacVerifyRequest.mac_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MacVerifyResponse = {
      description = "Response message for KeyManagementService.MacVerify.",
      id = "MacVerifyResponse",
      properties = {
        name = {
          description = "The resource name of the CryptoKeyVersion used for verification. Check this field to verify that the intended resource was used for verification.",
          type = "string",
        },
        protectionLevel = {
          description = "The ProtectionLevel of the CryptoKeyVersion used for verification.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
        success = {
          description = "This field indicates whether or not the verification operation for MacVerifyRequest.mac over MacVerifyRequest.data was successful.",
          type = "boolean",
        },
        verifiedDataCrc32c = {
          description = "Integrity verification field. A flag indicating whether MacVerifyRequest.data_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacVerifyRequest.data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacVerifyRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries.",
          type = "boolean",
        },
        verifiedMacCrc32c = {
          description = "Integrity verification field. A flag indicating whether MacVerifyRequest.mac_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacVerifyRequest.mac_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacVerifyRequest.mac_crc32c but this field is still false, discard the response and perform a limited number of retries.",
          type = "boolean",
        },
        verifiedSuccessIntegrity = {
          description = "Integrity verification field. This value is used for the integrity verification of [MacVerifyResponse.success]. If the value of this field contradicts the value of [MacVerifyResponse.success], discard the response and perform a limited number of retries.",
          type = "boolean",
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
      description = "The public key for a given CryptoKeyVersion. Obtained via GetPublicKey.",
      id = "PublicKey",
      properties = {
        algorithm = {
          description = "The Algorithm associated with this key.",
          enum = {
            "CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED",
            "GOOGLE_SYMMETRIC_ENCRYPTION",
            "RSA_SIGN_PSS_2048_SHA256",
            "RSA_SIGN_PSS_3072_SHA256",
            "RSA_SIGN_PSS_4096_SHA256",
            "RSA_SIGN_PSS_4096_SHA512",
            "RSA_SIGN_PKCS1_2048_SHA256",
            "RSA_SIGN_PKCS1_3072_SHA256",
            "RSA_SIGN_PKCS1_4096_SHA256",
            "RSA_SIGN_PKCS1_4096_SHA512",
            "RSA_SIGN_RAW_PKCS1_2048",
            "RSA_SIGN_RAW_PKCS1_3072",
            "RSA_SIGN_RAW_PKCS1_4096",
            "RSA_DECRYPT_OAEP_2048_SHA256",
            "RSA_DECRYPT_OAEP_3072_SHA256",
            "RSA_DECRYPT_OAEP_4096_SHA256",
            "RSA_DECRYPT_OAEP_4096_SHA512",
            "RSA_DECRYPT_OAEP_2048_SHA1",
            "RSA_DECRYPT_OAEP_3072_SHA1",
            "RSA_DECRYPT_OAEP_4096_SHA1",
            "EC_SIGN_P256_SHA256",
            "EC_SIGN_P384_SHA384",
            "EC_SIGN_SECP256K1_SHA256",
            "HMAC_SHA256",
            "HMAC_SHA1",
            "HMAC_SHA384",
            "HMAC_SHA512",
            "HMAC_SHA224",
            "EXTERNAL_SYMMETRIC_ENCRYPTION",
          },
          enumDescriptions = {
            "Not specified.",
            "Creates symmetric encryption keys.",
            "RSASSA-PSS 2048 bit key with a SHA256 digest.",
            "RSASSA-PSS 3072 bit key with a SHA256 digest.",
            "RSASSA-PSS 4096 bit key with a SHA256 digest.",
            "RSASSA-PSS 4096 bit key with a SHA512 digest.",
            "RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.",
            "RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 2048 bit key.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 3072 bit key.",
            "RSASSA-PKCS1-v1_5 signing without encoding, with a 4096 bit key.",
            "RSAES-OAEP 2048 bit key with a SHA256 digest.",
            "RSAES-OAEP 3072 bit key with a SHA256 digest.",
            "RSAES-OAEP 4096 bit key with a SHA256 digest.",
            "RSAES-OAEP 4096 bit key with a SHA512 digest.",
            "RSAES-OAEP 2048 bit key with a SHA1 digest.",
            "RSAES-OAEP 3072 bit key with a SHA1 digest.",
            "RSAES-OAEP 4096 bit key with a SHA1 digest.",
            "ECDSA on the NIST P-256 curve with a SHA256 digest.",
            "ECDSA on the NIST P-384 curve with a SHA384 digest.",
            "ECDSA on the non-NIST secp256k1 curve. This curve is only supported for HSM protection level.",
            "HMAC-SHA256 signing with a 256 bit key.",
            "HMAC-SHA1 signing with a 160 bit key.",
            "HMAC-SHA384 signing with a 384 bit key.",
            "HMAC-SHA512 signing with a 512 bit key.",
            "HMAC-SHA224 signing with a 224 bit key.",
            "Algorithm representing symmetric encryption by an external key manager.",
          },
          type = "string",
        },
        name = {
          description = "The name of the CryptoKeyVersion public key. Provided here for verification. NOTE: This field is in Beta.",
          type = "string",
        },
        pem = {
          description = "The public key, encoded in PEM format. For more information, see the [RFC 7468](https://tools.ietf.org/html/rfc7468) sections for [General Considerations](https://tools.ietf.org/html/rfc7468#section-2) and [Textual Encoding of Subject Public Key Info] (https://tools.ietf.org/html/rfc7468#section-13).",
          type = "string",
        },
        pemCrc32c = {
          description = "Integrity verification field. A CRC32C checksum of the returned PublicKey.pem. An integrity check of PublicKey.pem can be performed by computing the CRC32C checksum of PublicKey.pem and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type. NOTE: This field is in Beta.",
          format = "int64",
          type = "string",
        },
        protectionLevel = {
          description = "The ProtectionLevel of the CryptoKeyVersion public key.",
          enum = {
            "PROTECTION_LEVEL_UNSPECIFIED",
            "SOFTWARE",
            "HSM",
            "EXTERNAL",
            "EXTERNAL_VPC",
          },
          enumDescriptions = {
            "Not specified.",
            "Crypto operations are performed in software.",
            "Crypto operations are performed in a Hardware Security Module.",
            "Crypto operations are performed by an external key manager.",
            "Crypto operations are performed in an EKM-over-VPC backend.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RestoreCryptoKeyVersionRequest = {
      description = "Request message for KeyManagementService.RestoreCryptoKeyVersion.",
      id = "RestoreCryptoKeyVersionRequest",
      properties = {},
      type = "object",
    },
    ServiceResolver = {
      description = "A ServiceResolver represents an EKM replica that can be reached within an EkmConnection.",
      id = "ServiceResolver",
      properties = {
        endpointFilter = {
          description = "Optional. The filter applied to the endpoints of the resolved service. If no filter is specified, all endpoints will be considered. An endpoint will be chosen arbitrarily from the filtered list for each request. For endpoint filter syntax and examples, see https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.",
          type = "string",
        },
        hostname = {
          description = "Required. The hostname of the EKM replica used at TLS and HTTP layers.",
          type = "string",
        },
        serverCertificates = {
          description = "Required. A list of leaf server certificates used to authenticate HTTPS connections to the EKM replica. Currently, a maximum of 10 Certificate is supported.",
          items = {
            ["$ref"] = "Certificate",
          },
          type = "array",
        },
        serviceDirectoryService = {
          description = "Required. The resource name of the Service Directory service pointing to an EKM replica, in the format `projects/*/locations/*/namespaces/*/services/*`.",
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
    UpdateCryptoKeyPrimaryVersionRequest = {
      description = "Request message for KeyManagementService.UpdateCryptoKeyPrimaryVersion.",
      id = "UpdateCryptoKeyPrimaryVersionRequest",
      properties = {
        cryptoKeyVersionId = {
          description = "Required. The id of the child CryptoKeyVersion to use as primary.",
          type = "string",
        },
      },
      type = "object",
    },
    WrappingPublicKey = {
      description = "The public key component of the wrapping key. For details of the type of key this public key corresponds to, see the ImportMethod.",
      id = "WrappingPublicKey",
      properties = {
        pem = {
          description = "The public key, encoded in PEM format. For more information, see the [RFC 7468](https://tools.ietf.org/html/rfc7468) sections for [General Considerations](https://tools.ietf.org/html/rfc7468#section-2) and [Textual Encoding of Subject Public Key Info] (https://tools.ietf.org/html/rfc7468#section-13).",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Key Management Service (KMS) API",
  version = "v1",
  version_module = true,
}
