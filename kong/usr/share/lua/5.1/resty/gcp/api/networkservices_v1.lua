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
  baseUrl = "https://networkservices.googleapis.com/",
  batchPath = "batch",
  canonicalName = "NetworkServices",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/networking",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "networkservices:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://networkservices.mtls.googleapis.com/",
  name = "networkservices",
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
              id = "networkservices.projects.locations.get",
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
              id = "networkservices.projects.locations.list",
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
            edgeCacheKeysets = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheKeysets/{edgeCacheKeysetsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.edgeCacheKeysets.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheKeysets/[^/]+$",
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
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheKeysets/{edgeCacheKeysetsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.edgeCacheKeysets.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheKeysets/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheKeysets/{edgeCacheKeysetsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.edgeCacheKeysets.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheKeysets/[^/]+$",
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
            edgeCacheOrigins = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheOrigins/{edgeCacheOriginsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.edgeCacheOrigins.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheOrigins/[^/]+$",
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
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheOrigins/{edgeCacheOriginsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.edgeCacheOrigins.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheOrigins/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheOrigins/{edgeCacheOriginsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.edgeCacheOrigins.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheOrigins/[^/]+$",
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
            edgeCacheServices = {
              methods = {
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheServices/{edgeCacheServicesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.edgeCacheServices.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheServices/[^/]+$",
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
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheServices/{edgeCacheServicesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.edgeCacheServices.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheServices/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/edgeCacheServices/{edgeCacheServicesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.edgeCacheServices.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/edgeCacheServices/[^/]+$",
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
            endpointPolicies = {
              methods = {
                create = {
                  description = "Creates a new EndpointPolicy in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/endpointPolicies",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.endpointPolicies.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    endpointPolicyId = {
                      description = "Required. Short name of the EndpointPolicy resource to be created. E.g. \"CustomECS\".",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the EndpointPolicy. Must be in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/endpointPolicies",
                  request = {
                    ["$ref"] = "EndpointPolicy",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single EndpointPolicy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/endpointPolicies/{endpointPoliciesId}",
                  httpMethod = "DELETE",
                  id = "networkservices.projects.locations.endpointPolicies.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the EndpointPolicy to delete. Must be in the format `projects/*/locations/global/endpointPolicies/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/endpointPolicies/[^/]+$",
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
                get = {
                  description = "Gets details of a single EndpointPolicy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/endpointPolicies/{endpointPoliciesId}",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.endpointPolicies.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the EndpointPolicy to get. Must be in the format `projects/*/locations/global/endpointPolicies/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/endpointPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "EndpointPolicy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/endpointPolicies/{endpointPoliciesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.endpointPolicies.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/endpointPolicies/[^/]+$",
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
                  description = "Lists EndpointPolicies in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/endpointPolicies",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.endpointPolicies.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of EndpointPolicies to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListEndpointPoliciesResponse` Indicates that this is a continuation of a prior `ListEndpointPolicies` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the EndpointPolicies should be listed, specified in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/endpointPolicies",
                  response = {
                    ["$ref"] = "ListEndpointPoliciesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single EndpointPolicy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/endpointPolicies/{endpointPoliciesId}",
                  httpMethod = "PATCH",
                  id = "networkservices.projects.locations.endpointPolicies.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/endpointPolicies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the EndpointPolicy resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "EndpointPolicy",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/endpointPolicies/{endpointPoliciesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.endpointPolicies.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/endpointPolicies/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/endpointPolicies/{endpointPoliciesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.endpointPolicies.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/endpointPolicies/[^/]+$",
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
            gateways = {
              methods = {
                create = {
                  description = "Creates a new Gateway in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gateways",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.gateways.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    gatewayId = {
                      description = "Required. Short name of the Gateway resource to be created.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the Gateway. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/gateways",
                  request = {
                    ["$ref"] = "Gateway",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Gateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gateways/{gatewaysId}",
                  httpMethod = "DELETE",
                  id = "networkservices.projects.locations.gateways.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the Gateway to delete. Must be in the format `projects/*/locations/*/gateways/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gateways/[^/]+$",
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
                get = {
                  description = "Gets details of a single Gateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gateways/{gatewaysId}",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.gateways.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the Gateway to get. Must be in the format `projects/*/locations/*/gateways/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Gateway",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gateways/{gatewaysId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.gateways.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/gateways/[^/]+$",
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
                  description = "Lists Gateways in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gateways",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.gateways.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of Gateways to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListGatewaysResponse` Indicates that this is a continuation of a prior `ListGateways` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the Gateways should be listed, specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/gateways",
                  response = {
                    ["$ref"] = "ListGatewaysResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single Gateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gateways/{gatewaysId}",
                  httpMethod = "PATCH",
                  id = "networkservices.projects.locations.gateways.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gateways/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the Gateway resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Gateway",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gateways/{gatewaysId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.gateways.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gateways/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gateways/{gatewaysId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.gateways.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gateways/[^/]+$",
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
            grpcRoutes = {
              methods = {
                create = {
                  description = "Creates a new GrpcRoute in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/grpcRoutes",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.grpcRoutes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    grpcRouteId = {
                      description = "Required. Short name of the GrpcRoute resource to be created.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the GrpcRoute. Must be in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/grpcRoutes",
                  request = {
                    ["$ref"] = "GrpcRoute",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single GrpcRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/grpcRoutes/{grpcRoutesId}",
                  httpMethod = "DELETE",
                  id = "networkservices.projects.locations.grpcRoutes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the GrpcRoute to delete. Must be in the format `projects/*/locations/global/grpcRoutes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/grpcRoutes/[^/]+$",
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
                get = {
                  description = "Gets details of a single GrpcRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/grpcRoutes/{grpcRoutesId}",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.grpcRoutes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the GrpcRoute to get. Must be in the format `projects/*/locations/global/grpcRoutes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/grpcRoutes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GrpcRoute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists GrpcRoutes in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/grpcRoutes",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.grpcRoutes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of GrpcRoutes to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListGrpcRoutesResponse` Indicates that this is a continuation of a prior `ListGrpcRoutes` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the GrpcRoutes should be listed, specified in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/grpcRoutes",
                  response = {
                    ["$ref"] = "ListGrpcRoutesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single GrpcRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/grpcRoutes/{grpcRoutesId}",
                  httpMethod = "PATCH",
                  id = "networkservices.projects.locations.grpcRoutes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the GrpcRoute resource. It matches pattern `projects/*/locations/global/grpcRoutes/`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/grpcRoutes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the GrpcRoute resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GrpcRoute",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            httpRoutes = {
              methods = {
                create = {
                  description = "Creates a new HttpRoute in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/httpRoutes",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.httpRoutes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    httpRouteId = {
                      description = "Required. Short name of the HttpRoute resource to be created.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the HttpRoute. Must be in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/httpRoutes",
                  request = {
                    ["$ref"] = "HttpRoute",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single HttpRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/httpRoutes/{httpRoutesId}",
                  httpMethod = "DELETE",
                  id = "networkservices.projects.locations.httpRoutes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the HttpRoute to delete. Must be in the format `projects/*/locations/global/httpRoutes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/httpRoutes/[^/]+$",
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
                get = {
                  description = "Gets details of a single HttpRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/httpRoutes/{httpRoutesId}",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.httpRoutes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the HttpRoute to get. Must be in the format `projects/*/locations/global/httpRoutes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/httpRoutes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "HttpRoute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists HttpRoute in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/httpRoutes",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.httpRoutes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of HttpRoutes to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListHttpRoutesResponse` Indicates that this is a continuation of a prior `ListHttpRoutes` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the HttpRoutes should be listed, specified in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/httpRoutes",
                  response = {
                    ["$ref"] = "ListHttpRoutesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single HttpRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/httpRoutes/{httpRoutesId}",
                  httpMethod = "PATCH",
                  id = "networkservices.projects.locations.httpRoutes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name>`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/httpRoutes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the HttpRoute resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "HttpRoute",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            meshes = {
              methods = {
                create = {
                  description = "Creates a new Mesh in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/meshes",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.meshes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    meshId = {
                      description = "Required. Short name of the Mesh resource to be created.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the Mesh. Must be in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/meshes",
                  request = {
                    ["$ref"] = "Mesh",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Mesh.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/meshes/{meshesId}",
                  httpMethod = "DELETE",
                  id = "networkservices.projects.locations.meshes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the Mesh to delete. Must be in the format `projects/*/locations/global/meshes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/meshes/[^/]+$",
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
                get = {
                  description = "Gets details of a single Mesh.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/meshes/{meshesId}",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.meshes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the Mesh to get. Must be in the format `projects/*/locations/global/meshes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/meshes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Mesh",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/meshes/{meshesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.meshes.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/meshes/[^/]+$",
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
                  description = "Lists Meshes in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/meshes",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.meshes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of Meshes to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListMeshesResponse` Indicates that this is a continuation of a prior `ListMeshes` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the Meshes should be listed, specified in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/meshes",
                  response = {
                    ["$ref"] = "ListMeshesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single Mesh.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/meshes/{meshesId}",
                  httpMethod = "PATCH",
                  id = "networkservices.projects.locations.meshes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/meshes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the Mesh resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Mesh",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/meshes/{meshesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.meshes.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/meshes/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/meshes/{meshesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.meshes.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/meshes/[^/]+$",
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
                  id = "networkservices.projects.locations.operations.cancel",
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
                  id = "networkservices.projects.locations.operations.delete",
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
                  id = "networkservices.projects.locations.operations.get",
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
                  id = "networkservices.projects.locations.operations.list",
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
            serviceBindings = {
              methods = {
                create = {
                  description = "Creates a new ServiceBinding in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceBindings",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.serviceBindings.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the ServiceBinding. Must be in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    serviceBindingId = {
                      description = "Required. Short name of the ServiceBinding resource to be created.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/serviceBindings",
                  request = {
                    ["$ref"] = "ServiceBinding",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single ServiceBinding.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceBindings/{serviceBindingsId}",
                  httpMethod = "DELETE",
                  id = "networkservices.projects.locations.serviceBindings.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the ServiceBinding to delete. Must be in the format `projects/*/locations/global/serviceBindings/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceBindings/[^/]+$",
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
                get = {
                  description = "Gets details of a single ServiceBinding.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceBindings/{serviceBindingsId}",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.serviceBindings.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the ServiceBinding to get. Must be in the format `projects/*/locations/global/serviceBindings/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceBindings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ServiceBinding",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceBindings/{serviceBindingsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.serviceBindings.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceBindings/[^/]+$",
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
                  description = "Lists ServiceBinding in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceBindings",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.serviceBindings.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of ServiceBindings to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListServiceBindingsResponse` Indicates that this is a continuation of a prior `ListRouters` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the ServiceBindings should be listed, specified in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/serviceBindings",
                  response = {
                    ["$ref"] = "ListServiceBindingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceBindings/{serviceBindingsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.serviceBindings.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceBindings/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/serviceBindings/{serviceBindingsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.serviceBindings.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/serviceBindings/[^/]+$",
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
            tcpRoutes = {
              methods = {
                create = {
                  description = "Creates a new TcpRoute in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tcpRoutes",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.tcpRoutes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the TcpRoute. Must be in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tcpRouteId = {
                      description = "Required. Short name of the TcpRoute resource to be created. E.g. TODO(Add an example).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/tcpRoutes",
                  request = {
                    ["$ref"] = "TcpRoute",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single TcpRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tcpRoutes/{tcpRoutesId}",
                  httpMethod = "DELETE",
                  id = "networkservices.projects.locations.tcpRoutes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the TcpRoute to delete. Must be in the format `projects/*/locations/global/tcpRoutes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tcpRoutes/[^/]+$",
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
                get = {
                  description = "Gets details of a single TcpRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tcpRoutes/{tcpRoutesId}",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.tcpRoutes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the TcpRoute to get. Must be in the format `projects/*/locations/global/tcpRoutes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tcpRoutes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "TcpRoute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists TcpRoute in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tcpRoutes",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.tcpRoutes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of TcpRoutes to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListTcpRoutesResponse` Indicates that this is a continuation of a prior `ListTcpRoutes` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the TcpRoutes should be listed, specified in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/tcpRoutes",
                  response = {
                    ["$ref"] = "ListTcpRoutesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single TcpRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tcpRoutes/{tcpRoutesId}",
                  httpMethod = "PATCH",
                  id = "networkservices.projects.locations.tcpRoutes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tcpRoutes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the TcpRoute resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "TcpRoute",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            tlsRoutes = {
              methods = {
                create = {
                  description = "Creates a new TlsRoute in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tlsRoutes",
                  httpMethod = "POST",
                  id = "networkservices.projects.locations.tlsRoutes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the TlsRoute. Must be in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    tlsRouteId = {
                      description = "Required. Short name of the TlsRoute resource to be created. E.g. TODO(Add an example).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/tlsRoutes",
                  request = {
                    ["$ref"] = "TlsRoute",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single TlsRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tlsRoutes/{tlsRoutesId}",
                  httpMethod = "DELETE",
                  id = "networkservices.projects.locations.tlsRoutes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the TlsRoute to delete. Must be in the format `projects/*/locations/global/tlsRoutes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tlsRoutes/[^/]+$",
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
                get = {
                  description = "Gets details of a single TlsRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tlsRoutes/{tlsRoutesId}",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.tlsRoutes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the TlsRoute to get. Must be in the format `projects/*/locations/global/tlsRoutes/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tlsRoutes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "TlsRoute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists TlsRoute in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tlsRoutes",
                  httpMethod = "GET",
                  id = "networkservices.projects.locations.tlsRoutes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of TlsRoutes to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListTlsRoutesResponse` Indicates that this is a continuation of a prior `ListTlsRoutes` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the TlsRoutes should be listed, specified in the format `projects/*/locations/global`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/tlsRoutes",
                  response = {
                    ["$ref"] = "ListTlsRoutesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single TlsRoute.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tlsRoutes/{tlsRoutesId}",
                  httpMethod = "PATCH",
                  id = "networkservices.projects.locations.tlsRoutes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name>`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tlsRoutes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the TlsRoute resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "TlsRoute",
                  },
                  response = {
                    ["$ref"] = "Operation",
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
  rootUrl = "https://networkservices.googleapis.com/",
  schemas = {
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
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    EndpointMatcher = {
      description = "A definition of a matcher that selects endpoints to which the policies should be applied.",
      id = "EndpointMatcher",
      properties = {
        metadataLabelMatcher = {
          ["$ref"] = "EndpointMatcherMetadataLabelMatcher",
          description = "The matcher is based on node metadata presented by xDS clients.",
        },
      },
      type = "object",
    },
    EndpointMatcherMetadataLabelMatcher = {
      description = "The matcher that is based on node metadata presented by xDS clients.",
      id = "EndpointMatcherMetadataLabelMatcher",
      properties = {
        metadataLabelMatchCriteria = {
          description = "Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Labels specified in the matcher should match the metadata presented by xDS client. MATCH_ALL: The metadata presented by the xDS client should contain all of the labels specified here. The selection is determined based on the best match. For example, suppose there are three EndpointPolicy resources P1, P2 and P3 and if P1 has a the matcher as MATCH_ANY , P2 has MATCH_ALL , and P3 has MATCH_ALL . If a client with label connects, the config from P1 will be selected. If a client with label connects, the config from P2 will be selected. If a client with label connects, the config from P3 will be selected. If there is more than one best match, (for example, if a config P4 with selector exists and if a client with label connects), an error will be thrown.",
          enum = {
            "METADATA_LABEL_MATCH_CRITERIA_UNSPECIFIED",
            "MATCH_ANY",
            "MATCH_ALL",
          },
          enumDescriptions = {
            "Default value. Should not be used.",
            "At least one of the Labels specified in the matcher should match the metadata presented by xDS client.",
            "The metadata presented by the xDS client should contain all of the labels specified here.",
          },
          type = "string",
        },
        metadataLabels = {
          description = "The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list can have at most 64 entries. The list can be empty if the match criteria is MATCH_ANY, to specify a wildcard match (i.e this matches any client).",
          items = {
            ["$ref"] = "EndpointMatcherMetadataLabelMatcherMetadataLabels",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EndpointMatcherMetadataLabelMatcherMetadataLabels = {
      description = "Defines a name-pair value for a single label.",
      id = "EndpointMatcherMetadataLabelMatcherMetadataLabels",
      properties = {
        labelName = {
          description = "Required. Label name presented as key in xDS Node Metadata.",
          type = "string",
        },
        labelValue = {
          description = "Required. Label value presented as value corresponding to the above key, in xDS Node Metadata.",
          type = "string",
        },
      },
      type = "object",
    },
    EndpointPolicy = {
      description = "EndpointPolicy is a resource that helps apply desired configuration on the endpoints that match specific criteria. For example, this resource can be used to apply \"authentication config\" an all endpoints that serve on port 8080.",
      id = "EndpointPolicy",
      properties = {
        authorizationPolicy = {
          description = "Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization policies to the inbound traffic at the matched endpoints. Refer to Authorization. If this field is not specified, authorization is disabled(no authz checks) for this endpoint.",
          type = "string",
        },
        clientTlsPolicy = {
          description = "Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify the authentication for traffic from the proxy to the actual endpoints. More specifically, it is applied to the outgoing traffic from the proxy to the endpoint. This is typically used for sidecar model where the proxy identifies itself as endpoint to the control plane, with the connection between sidecar and endpoint requiring authentication. If this field is not set, authentication is disabled(open). Applicable only when EndpointPolicyType is SIDECAR_PROXY.",
          type = "string",
        },
        createTime = {
          description = "Output only. The timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A free-text description of the resource. Max length 1024 characters.",
          type = "string",
        },
        endpointMatcher = {
          ["$ref"] = "EndpointMatcher",
          description = "Required. A matcher that selects endpoints to which the policies should be applied.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Set of label tags associated with the EndpointPolicy resource.",
          type = "object",
        },
        name = {
          description = "Required. Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/global/endpointPolicies/{endpoint_policy}`.",
          type = "string",
        },
        serverTlsPolicy = {
          description = "Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the authentication policy to be applied to terminate the inbound traffic at the identified backends. If this field is not set, authentication is disabled(open) for this endpoint.",
          type = "string",
        },
        trafficPortSelector = {
          ["$ref"] = "TrafficPortSelector",
          description = "Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched config is applied to all ports.",
        },
        type = {
          description = "Required. The type of endpoint policy. This is primarily used to validate the configuration.",
          enum = {
            "ENDPOINT_POLICY_TYPE_UNSPECIFIED",
            "SIDECAR_PROXY",
            "GRPC_SERVER",
          },
          enumDescriptions = {
            "Default value. Must not be used.",
            "Represents a proxy deployed as a sidecar.",
            "Represents a proxyless gRPC backend.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was updated.",
          format = "google-datetime",
          readOnly = true,
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
    Gateway = {
      description = "Gateway represents the configuration for a proxy, typically a load balancer. It captures the ip:port over which the services are exposed by the proxy, along with any policy configurations. Routes have reference to to Gateways to dictate how requests should be routed by this Gateway.",
      id = "Gateway",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A free-text description of the resource. Max length 1024 characters.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Set of label tags associated with the Gateway resource.",
          type = "object",
        },
        name = {
          description = "Required. Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`.",
          type = "string",
        },
        ports = {
          description = "Required. One or more port numbers (1-65535), on which the Gateway will receive traffic. The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 and support multiple ports.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        scope = {
          description = "Required. Immutable. Scope determines how configuration across multiple Gateway instances are merged. The configuration for multiple Gateway instances with the same scope will be merged as presented as a single coniguration to the proxy/load balancer. Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens.",
          type = "string",
        },
        selfLink = {
          description = "Output only. Server-defined URL of this resource",
          readOnly = true,
          type = "string",
        },
        serverTlsPolicy = {
          description = "Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated. If empty, TLS termination is disabled.",
          type = "string",
        },
        type = {
          description = "Immutable. The type of the customer managed gateway. This field is required. If unspecified, an error is returned.",
          enum = {
            "TYPE_UNSPECIFIED",
            "OPEN_MESH",
            "SECURE_WEB_GATEWAY",
          },
          enumDescriptions = {
            "The type of the customer managed gateway is unspecified.",
            "The type of the customer managed gateway is TrafficDirector Open Mesh.",
            "The type of the customer managed gateway is SecureWebGateway (SWG).",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GrpcRoute = {
      description = "GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or Gateway resource is routed.",
      id = "GrpcRoute",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A free-text description of the resource. Max length 1024 characters.",
          type = "string",
        },
        gateways = {
          description = "Optional. Gateways defines a list of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        hostnames = {
          description = "Required. Service hostnames with an optional port for which this route describes traffic. Format: [:] Hostname is the fully qualified domain name of a network host. This matches the RFC 1123 definition of a hostname with 2 notable exceptions: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (*.). The wildcard label must appear by itself as the first label. Hostname can be \"precise\" which is a domain name without the terminating dot of a network host (e.g. \"foo.example.com\") or \"wildcard\", which is a domain name prefixed with a single wildcard label (e.g. *.example.com). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateway must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames \"*.foo.bar.com\" and \"*.bar.com\" to be associated with the same route, it is not possible to associate two routes both with \"*.bar.com\" or both with \"bar.com\". If a port is specified, then gRPC clients must use the channel URI with the port to match this rule (i.e. \"xds:///service:123\"), otherwise they must supply the URI without a port (i.e. \"xds:///service\").",
          items = {
            type = "string",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Set of label tags associated with the GrpcRoute resource.",
          type = "object",
        },
        meshes = {
          description = "Optional. Meshes defines a list of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. Name of the GrpcRoute resource. It matches pattern `projects/*/locations/global/grpcRoutes/`",
          type = "string",
        },
        rules = {
          description = "Required. A list of detailed rules defining how to route traffic. Within a single GrpcRoute, the GrpcRoute.RouteAction associated with the first matching GrpcRoute.RouteRule will be executed. At least one rule must be supplied.",
          items = {
            ["$ref"] = "GrpcRouteRouteRule",
          },
          type = "array",
        },
        selfLink = {
          description = "Output only. Server-defined URL of this resource",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GrpcRouteDestination = {
      description = "The destination to which traffic will be routed.",
      id = "GrpcRouteDestination",
      properties = {
        serviceName = {
          description = "Required. The URL of a destination service to which to route traffic. Must refer to either a BackendService or ServiceDirectoryService.",
          type = "string",
        },
        weight = {
          description = "Optional. Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports. If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend. If weights are specified for any one service name, they need to be specified for all of them. If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GrpcRouteFaultInjectionPolicy = {
      description = "The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.",
      id = "GrpcRouteFaultInjectionPolicy",
      properties = {
        abort = {
          ["$ref"] = "GrpcRouteFaultInjectionPolicyAbort",
          description = "The specification for aborting to client requests.",
        },
        delay = {
          ["$ref"] = "GrpcRouteFaultInjectionPolicyDelay",
          description = "The specification for injecting delay to client requests.",
        },
      },
      type = "object",
    },
    GrpcRouteFaultInjectionPolicyAbort = {
      description = "Specification of how client requests are aborted as part of fault injection before being sent to a destination.",
      id = "GrpcRouteFaultInjectionPolicyAbort",
      properties = {
        httpStatus = {
          description = "The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.",
          format = "int32",
          type = "integer",
        },
        percentage = {
          description = "The percentage of traffic which will be aborted. The value must be between [0, 100]",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GrpcRouteFaultInjectionPolicyDelay = {
      description = "Specification of how client requests are delayed as part of fault injection before being sent to a destination.",
      id = "GrpcRouteFaultInjectionPolicyDelay",
      properties = {
        fixedDelay = {
          description = "Specify a fixed delay before forwarding the request.",
          format = "google-duration",
          type = "string",
        },
        percentage = {
          description = "The percentage of traffic on which delay will be injected. The value must be between [0, 100]",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GrpcRouteHeaderMatch = {
      description = "A match against a collection of headers.",
      id = "GrpcRouteHeaderMatch",
      properties = {
        key = {
          description = "Required. The key of the header.",
          type = "string",
        },
        type = {
          description = "Optional. Specifies how to match against the value of the header. If not specified, a default value of EXACT is used.",
          enum = {
            "TYPE_UNSPECIFIED",
            "EXACT",
            "REGULAR_EXPRESSION",
          },
          enumDescriptions = {
            "Unspecified.",
            "Will only match the exact value provided.",
            "Will match paths conforming to the prefix specified by value. RE2 syntax is supported.",
          },
          type = "string",
        },
        value = {
          description = "Required. The value of the header.",
          type = "string",
        },
      },
      type = "object",
    },
    GrpcRouteMethodMatch = {
      description = "Specifies a match against a method.",
      id = "GrpcRouteMethodMatch",
      properties = {
        caseSensitive = {
          description = "Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive must not be used with a type of REGULAR_EXPRESSION.",
          type = "boolean",
        },
        grpcMethod = {
          description = "Required. Name of the method to match against. If unspecified, will match all methods.",
          type = "string",
        },
        grpcService = {
          description = "Required. Name of the service to match against. If unspecified, will match all services.",
          type = "string",
        },
        type = {
          description = "Optional. Specifies how to match against the name. If not specified, a default value of \"EXACT\" is used.",
          enum = {
            "TYPE_UNSPECIFIED",
            "EXACT",
            "REGULAR_EXPRESSION",
          },
          enumDescriptions = {
            "Unspecified.",
            "Will only match the exact name provided.",
            "Will interpret grpc_method and grpc_service as regexes. RE2 syntax is supported.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GrpcRouteRetryPolicy = {
      description = "The specifications for retries.",
      id = "GrpcRouteRetryPolicy",
      properties = {
        numRetries = {
          description = "Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1.",
          format = "uint32",
          type = "integer",
        },
        retryConditions = {
          description = "- connect-failure: Router will retry on failures connecting to Backend Services, for example due to connection timeouts. - refused-stream: Router will retry if the backend service resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. - cancelled: Router will retry if the gRPC status code in the response header is set to cancelled - deadline-exceeded: Router will retry if the gRPC status code in the response header is set to deadline-exceeded - resource-exhausted: Router will retry if the gRPC status code in the response header is set to resource-exhausted - unavailable: Router will retry if the gRPC status code in the response header is set to unavailable",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GrpcRouteRouteAction = {
      description = "Specifies how to route matched traffic.",
      id = "GrpcRouteRouteAction",
      properties = {
        destinations = {
          description = "Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.",
          items = {
            ["$ref"] = "GrpcRouteDestination",
          },
          type = "array",
        },
        faultInjectionPolicy = {
          ["$ref"] = "GrpcRouteFaultInjectionPolicy",
          description = "Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy",
        },
        retryPolicy = {
          ["$ref"] = "GrpcRouteRetryPolicy",
          description = "Optional. Specifies the retry policy associated with this route.",
        },
        timeout = {
          description = "Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GrpcRouteRouteMatch = {
      description = "Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.",
      id = "GrpcRouteRouteMatch",
      properties = {
        headers = {
          description = "Optional. Specifies a collection of headers to match.",
          items = {
            ["$ref"] = "GrpcRouteHeaderMatch",
          },
          type = "array",
        },
        method = {
          ["$ref"] = "GrpcRouteMethodMatch",
          description = "Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods.",
        },
      },
      type = "object",
    },
    GrpcRouteRouteRule = {
      description = "Describes how to route traffic.",
      id = "GrpcRouteRouteRule",
      properties = {
        action = {
          ["$ref"] = "GrpcRouteRouteAction",
          description = "Required. A detailed rule defining how to route traffic. This field is required.",
        },
        matches = {
          description = "Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.",
          items = {
            ["$ref"] = "GrpcRouteRouteMatch",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HttpRoute = {
      description = "HttpRoute is the resource defining how HTTP traffic should be routed by a Mesh or Gateway resource.",
      id = "HttpRoute",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A free-text description of the resource. Max length 1024 characters.",
          type = "string",
        },
        gateways = {
          description = "Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        hostnames = {
          description = "Required. Hostnames define a set of hosts that should match against the HTTP host header to select a HttpRoute to process the request. Hostname is the fully qualified domain name of a network host, as defined by RFC 1123 with the exception that: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (*.). The wildcard label must appear by itself as the first label. Hostname can be \"precise\" which is a domain name without the terminating dot of a network host (e.g. \"foo.example.com\") or \"wildcard\", which is a domain name prefixed with a single wildcard label (e.g. *.example.com). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateways must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames \"*.foo.bar.com\" and \"*.bar.com\" to be associated with the same Mesh (or Gateways under the same scope), it is not possible to associate two routes both with \"*.bar.com\" or both with \"bar.com\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Set of label tags associated with the HttpRoute resource.",
          type = "object",
        },
        meshes = {
          description = "Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name>`.",
          type = "string",
        },
        rules = {
          description = "Required. Rules that define how traffic is routed and handled. Rules will be matched sequentially based on the RouteMatch specified for the rule.",
          items = {
            ["$ref"] = "HttpRouteRouteRule",
          },
          type = "array",
        },
        selfLink = {
          description = "Output only. Server-defined URL of this resource",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    HttpRouteCorsPolicy = {
      description = "The Specification for allowing client side cross-origin requests.",
      id = "HttpRouteCorsPolicy",
      properties = {
        allowCredentials = {
          description = "In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This translates to the Access-Control-Allow-Credentials header. Default value is false.",
          type = "boolean",
        },
        allowHeaders = {
          description = "Specifies the content for Access-Control-Allow-Headers header.",
          items = {
            type = "string",
          },
          type = "array",
        },
        allowMethods = {
          description = "Specifies the content for Access-Control-Allow-Methods header.",
          items = {
            type = "string",
          },
          type = "array",
        },
        allowOriginRegexes = {
          description = "Specifies the regular expression patterns that match allowed origins. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax.",
          items = {
            type = "string",
          },
          type = "array",
        },
        allowOrigins = {
          description = "Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if it matches either an item in allow_origins or an item in allow_origin_regexes.",
          items = {
            type = "string",
          },
          type = "array",
        },
        disabled = {
          description = "If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.",
          type = "boolean",
        },
        exposeHeaders = {
          description = "Specifies the content for Access-Control-Expose-Headers header.",
          items = {
            type = "string",
          },
          type = "array",
        },
        maxAge = {
          description = "Specifies how long result of a preflight request can be cached in seconds. This translates to the Access-Control-Max-Age header.",
          type = "string",
        },
      },
      type = "object",
    },
    HttpRouteDestination = {
      description = "Specifications of a destination to which the request should be routed to.",
      id = "HttpRouteDestination",
      properties = {
        serviceName = {
          description = "The URL of a BackendService to route traffic to.",
          type = "string",
        },
        weight = {
          description = "Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports. If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend. If weights are specified for any one service name, they need to be specified for all of them. If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HttpRouteFaultInjectionPolicy = {
      description = "The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced by client proxy on a percentage of requests before sending those requests to the destination service. Similarly requests can be aborted by client proxy for a percentage of requests.",
      id = "HttpRouteFaultInjectionPolicy",
      properties = {
        abort = {
          ["$ref"] = "HttpRouteFaultInjectionPolicyAbort",
          description = "The specification for aborting to client requests.",
        },
        delay = {
          ["$ref"] = "HttpRouteFaultInjectionPolicyDelay",
          description = "The specification for injecting delay to client requests.",
        },
      },
      type = "object",
    },
    HttpRouteFaultInjectionPolicyAbort = {
      description = "Specification of how client requests are aborted as part of fault injection before being sent to a destination.",
      id = "HttpRouteFaultInjectionPolicyAbort",
      properties = {
        httpStatus = {
          description = "The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.",
          format = "int32",
          type = "integer",
        },
        percentage = {
          description = "The percentage of traffic which will be aborted. The value must be between [0, 100]",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HttpRouteFaultInjectionPolicyDelay = {
      description = "Specification of how client requests are delayed as part of fault injection before being sent to a destination.",
      id = "HttpRouteFaultInjectionPolicyDelay",
      properties = {
        fixedDelay = {
          description = "Specify a fixed delay before forwarding the request.",
          format = "google-duration",
          type = "string",
        },
        percentage = {
          description = "The percentage of traffic on which delay will be injected. The value must be between [0, 100]",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HttpRouteHeaderMatch = {
      description = "Specifies how to select a route rule based on HTTP request headers.",
      id = "HttpRouteHeaderMatch",
      properties = {
        exactMatch = {
          description = "The value of the header should match exactly the content of exact_match.",
          type = "string",
        },
        header = {
          description = "The name of the HTTP header to match against.",
          type = "string",
        },
        invertMatch = {
          description = "If specified, the match result will be inverted before checking. Default value is set to false.",
          type = "boolean",
        },
        prefixMatch = {
          description = "The value of the header must start with the contents of prefix_match.",
          type = "string",
        },
        presentMatch = {
          description = "A header with header_name must exist. The match takes place whether or not the header has a value.",
          type = "boolean",
        },
        rangeMatch = {
          ["$ref"] = "HttpRouteHeaderMatchIntegerRange",
          description = "If specified, the rule will match if the request header value is within the range.",
        },
        regexMatch = {
          description = "The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax",
          type = "string",
        },
        suffixMatch = {
          description = "The value of the header must end with the contents of suffix_match.",
          type = "string",
        },
      },
      type = "object",
    },
    HttpRouteHeaderMatchIntegerRange = {
      description = "Represents an integer value range.",
      id = "HttpRouteHeaderMatchIntegerRange",
      properties = {
        ["end"] = {
          description = "End of the range (exclusive)",
          format = "int32",
          type = "integer",
        },
        start = {
          description = "Start of the range (inclusive)",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HttpRouteHeaderModifier = {
      description = "The specification for modifying HTTP header in HTTP request and HTTP response.",
      id = "HttpRouteHeaderModifier",
      properties = {
        add = {
          additionalProperties = {
            type = "string",
          },
          description = "Add the headers with given map where key is the name of the header, value is the value of the header.",
          type = "object",
        },
        remove = {
          description = "Remove headers (matching by header names) specified in the list.",
          items = {
            type = "string",
          },
          type = "array",
        },
        set = {
          additionalProperties = {
            type = "string",
          },
          description = "Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.",
          type = "object",
        },
      },
      type = "object",
    },
    HttpRouteQueryParameterMatch = {
      description = "Specifications to match a query parameter in the request.",
      id = "HttpRouteQueryParameterMatch",
      properties = {
        exactMatch = {
          description = "The value of the query parameter must exactly match the contents of exact_match. Only one of exact_match, regex_match, or present_match must be set.",
          type = "string",
        },
        presentMatch = {
          description = "Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespective of whether the parameter has a value or not. Only one of exact_match, regex_match, or present_match must be set.",
          type = "boolean",
        },
        queryParameter = {
          description = "The name of the query parameter to match.",
          type = "string",
        },
        regexMatch = {
          description = "The value of the query parameter must match the regular expression specified by regex_match. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of exact_match, regex_match, or present_match must be set.",
          type = "string",
        },
      },
      type = "object",
    },
    HttpRouteRedirect = {
      description = "The specification for redirecting traffic.",
      id = "HttpRouteRedirect",
      properties = {
        hostRedirect = {
          description = "The host that will be used in the redirect response instead of the one that was supplied in the request.",
          type = "string",
        },
        httpsRedirect = {
          description = "If set to true, the URL scheme in the redirected request is set to https. If set to false, the URL scheme of the redirected request will remain the same as that of the request. The default is set to false.",
          type = "boolean",
        },
        pathRedirect = {
          description = "The path that will be used in the redirect response instead of the one that was supplied in the request. path_redirect can not be supplied together with prefix_redirect. Supply one alone or neither. If neither is supplied, the path of the original request will be used for the redirect.",
          type = "string",
        },
        portRedirect = {
          description = "The port that will be used in the redirected request instead of the one that was supplied in the request.",
          format = "int32",
          type = "integer",
        },
        prefixRewrite = {
          description = "Indicates that during redirection, the matched prefix (or path) should be swapped with this value. This option allows URLs be dynamically created based on the request.",
          type = "string",
        },
        responseCode = {
          description = "The HTTP Status code to use for the redirect.",
          enum = {
            "RESPONSE_CODE_UNSPECIFIED",
            "MOVED_PERMANENTLY_DEFAULT",
            "FOUND",
            "SEE_OTHER",
            "TEMPORARY_REDIRECT",
            "PERMANENT_REDIRECT",
          },
          enumDescriptions = {
            "Default value",
            "Corresponds to 301.",
            "Corresponds to 302.",
            "Corresponds to 303.",
            "Corresponds to 307. In this case, the request method will be retained.",
            "Corresponds to 308. In this case, the request method will be retained.",
          },
          type = "string",
        },
        stripQuery = {
          description = "if set to true, any accompanying query portion of the original URL is removed prior to redirecting the request. If set to false, the query portion of the original URL is retained. The default is set to false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    HttpRouteRequestMirrorPolicy = {
      description = "Specifies the policy on how requests are shadowed to a separate mirrored destination service. The proxy does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.",
      id = "HttpRouteRequestMirrorPolicy",
      properties = {
        destination = {
          ["$ref"] = "HttpRouteDestination",
          description = "The destination the requests will be mirrored to. The weight of the destination will be ignored.",
        },
      },
      type = "object",
    },
    HttpRouteRetryPolicy = {
      description = "The specifications for retries.",
      id = "HttpRouteRetryPolicy",
      properties = {
        numRetries = {
          description = "Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1.",
          format = "int32",
          type = "integer",
        },
        perTryTimeout = {
          description = "Specifies a non-zero timeout per retry attempt.",
          format = "google-duration",
          type = "string",
        },
        retryConditions = {
          description = "Specifies one or more conditions when this retry policy applies. Valid values are: 5xx: Proxy will attempt a retry if the destination service responds with any 5xx response code, of if the destination service does not respond at all, example: disconnect, reset, read timeout, connection failure and refused streams. gateway-error: Similar to 5xx, but only applies to response codes 502, 503, 504. reset: Proxy will attempt a retry if the destination service does not respond at all (disconnect/reset/read timeout) connect-failure: Proxy will retry on failures connecting to destination for example due to connection timeouts. retriable-4xx: Proxy will retry fro retriable 4xx response codes. Currently the only retriable error supported is 409. refused-stream: Proxy will retry if the destination resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HttpRouteRouteAction = {
      description = "The specifications for routing traffic and applying associated policies.",
      id = "HttpRouteRouteAction",
      properties = {
        corsPolicy = {
          ["$ref"] = "HttpRouteCorsPolicy",
          description = "The specification for allowing client side cross-origin requests.",
        },
        destinations = {
          description = "The destination to which traffic should be forwarded.",
          items = {
            ["$ref"] = "HttpRouteDestination",
          },
          type = "array",
        },
        faultInjectionPolicy = {
          ["$ref"] = "HttpRouteFaultInjectionPolicy",
          description = "The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy",
        },
        redirect = {
          ["$ref"] = "HttpRouteRedirect",
          description = "If set, the request is directed as configured by this field.",
        },
        requestHeaderModifier = {
          ["$ref"] = "HttpRouteHeaderModifier",
          description = "The specification for modifying the headers of a matching request prior to delivery of the request to the destination.",
        },
        requestMirrorPolicy = {
          ["$ref"] = "HttpRouteRequestMirrorPolicy",
          description = "Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.",
        },
        responseHeaderModifier = {
          ["$ref"] = "HttpRouteHeaderModifier",
          description = "The specification for modifying the headers of a response prior to sending the response back to the client.",
        },
        retryPolicy = {
          ["$ref"] = "HttpRouteRetryPolicy",
          description = "Specifies the retry policy associated with this route.",
        },
        timeout = {
          description = "Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.",
          format = "google-duration",
          type = "string",
        },
        urlRewrite = {
          ["$ref"] = "HttpRouteURLRewrite",
          description = "The specification for rewrite URL before forwarding requests to the destination.",
        },
      },
      type = "object",
    },
    HttpRouteRouteMatch = {
      description = "RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.",
      id = "HttpRouteRouteMatch",
      properties = {
        fullPathMatch = {
          description = "The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.",
          type = "string",
        },
        headers = {
          description = "Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.",
          items = {
            ["$ref"] = "HttpRouteHeaderMatch",
          },
          type = "array",
        },
        ignoreCase = {
          description = "Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.",
          type = "boolean",
        },
        prefixMatch = {
          description = "The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.",
          type = "string",
        },
        queryParameters = {
          description = "Specifies a list of query parameters to match against. ALL of the query parameters must be matched.",
          items = {
            ["$ref"] = "HttpRouteQueryParameterMatch",
          },
          type = "array",
        },
        regexMatch = {
          description = "The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.",
          type = "string",
        },
      },
      type = "object",
    },
    HttpRouteRouteRule = {
      description = "Specifies how to match traffic and how to route traffic when traffic is matched.",
      id = "HttpRouteRouteRule",
      properties = {
        action = {
          ["$ref"] = "HttpRouteRouteAction",
          description = "The detailed rule defining how to route matched traffic.",
        },
        matches = {
          description = "A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.",
          items = {
            ["$ref"] = "HttpRouteRouteMatch",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HttpRouteURLRewrite = {
      description = "The specification for modifying the URL of the request, prior to forwarding the request to the destination.",
      id = "HttpRouteURLRewrite",
      properties = {
        hostRewrite = {
          description = "Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.",
          type = "string",
        },
        pathPrefixRewrite = {
          description = "Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.",
          type = "string",
        },
      },
      type = "object",
    },
    ListEndpointPoliciesResponse = {
      description = "Response returned by the ListEndpointPolicies method.",
      id = "ListEndpointPoliciesResponse",
      properties = {
        endpointPolicies = {
          description = "List of EndpointPolicy resources.",
          items = {
            ["$ref"] = "EndpointPolicy",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGatewaysResponse = {
      description = "Response returned by the ListGateways method.",
      id = "ListGatewaysResponse",
      properties = {
        gateways = {
          description = "List of Gateway resources.",
          items = {
            ["$ref"] = "Gateway",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGrpcRoutesResponse = {
      description = "Response returned by the ListGrpcRoutes method.",
      id = "ListGrpcRoutesResponse",
      properties = {
        grpcRoutes = {
          description = "List of GrpcRoute resources.",
          items = {
            ["$ref"] = "GrpcRoute",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListHttpRoutesResponse = {
      description = "Response returned by the ListHttpRoutes method.",
      id = "ListHttpRoutesResponse",
      properties = {
        httpRoutes = {
          description = "List of HttpRoute resources.",
          items = {
            ["$ref"] = "HttpRoute",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
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
    ListMeshesResponse = {
      description = "Response returned by the ListMeshes method.",
      id = "ListMeshesResponse",
      properties = {
        meshes = {
          description = "List of Mesh resources.",
          items = {
            ["$ref"] = "Mesh",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
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
    ListServiceBindingsResponse = {
      description = "Response returned by the ListServiceBindings method.",
      id = "ListServiceBindingsResponse",
      properties = {
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        serviceBindings = {
          description = "List of ServiceBinding resources.",
          items = {
            ["$ref"] = "ServiceBinding",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTcpRoutesResponse = {
      description = "Response returned by the ListTcpRoutes method.",
      id = "ListTcpRoutesResponse",
      properties = {
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        tcpRoutes = {
          description = "List of TcpRoute resources.",
          items = {
            ["$ref"] = "TcpRoute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTlsRoutesResponse = {
      description = "Response returned by the ListTlsRoutes method.",
      id = "ListTlsRoutesResponse",
      properties = {
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        tlsRoutes = {
          description = "List of TlsRoute resources.",
          items = {
            ["$ref"] = "TlsRoute",
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
    Mesh = {
      description = "Mesh represents a logical configuration grouping for workload to workload communication within a service mesh. Routes that point to mesh dictate how requests are routed within this logical mesh boundary.",
      id = "Mesh",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A free-text description of the resource. Max length 1024 characters.",
          type = "string",
        },
        interceptionPort = {
          description = "Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This will is applicable only for sidecar proxy deployments.",
          format = "int32",
          type = "integer",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Set of label tags associated with the Mesh resource.",
          type = "object",
        },
        name = {
          description = "Required. Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.",
          type = "string",
        },
        selfLink = {
          description = "Output only. Server-defined URL of this resource",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
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
    ServiceBinding = {
      description = "ServiceBinding is the resource that defines a Service Directory Service to be used in a BackendService resource.",
      id = "ServiceBinding",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A free-text description of the resource. Max length 1024 characters.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Set of label tags associated with the ServiceBinding resource.",
          type = "object",
        },
        name = {
          description = "Required. Name of the ServiceBinding resource. It matches pattern `projects/*/locations/global/serviceBindings/service_binding_name`.",
          type = "string",
        },
        service = {
          description = "Required. The full Service Directory Service name of the format projects/*/locations/*/namespaces/*/services/*",
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was updated.",
          format = "google-datetime",
          readOnly = true,
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
    TcpRoute = {
      description = "TcpRoute is the resource defining how TCP traffic should be routed by a Mesh/Gateway resource.",
      id = "TcpRoute",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A free-text description of the resource. Max length 1024 characters.",
          type = "string",
        },
        gateways = {
          description = "Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Set of label tags associated with the TcpRoute resource.",
          type = "object",
        },
        meshes = {
          description = "Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.",
          type = "string",
        },
        rules = {
          description = "Required. Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.",
          items = {
            ["$ref"] = "TcpRouteRouteRule",
          },
          type = "array",
        },
        selfLink = {
          description = "Output only. Server-defined URL of this resource",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    TcpRouteRouteAction = {
      description = "The specifications for routing traffic and applying associated policies.",
      id = "TcpRouteRouteAction",
      properties = {
        destinations = {
          description = "Optional. The destination services to which traffic should be forwarded. At least one destination service is required.",
          items = {
            ["$ref"] = "TcpRouteRouteDestination",
          },
          type = "array",
        },
        originalDestination = {
          description = "Optional. If true, Router will use the destination IP and port of the original connection as the destination of the request. Default is false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TcpRouteRouteDestination = {
      description = "Describe the destination for traffic to be routed to.",
      id = "TcpRouteRouteDestination",
      properties = {
        serviceName = {
          description = "Required. The URL of a BackendService to route traffic to.",
          type = "string",
        },
        weight = {
          description = "Optional. Specifies the proportion of requests forwarded to the backend referenced by the serviceName field. This is computed as: weight/Sum(weights in this destination list). For non-zero values, there may be some epsilon from the exact proportion defined here depending on the precision an implementation supports. If only one serviceName is specified and it has a weight greater than 0, 100% of the traffic is forwarded to that backend. If weights are specified for any one service name, they need to be specified for all of them. If weights are unspecified for all services, then, traffic is distributed in equal proportions to all of them.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TcpRouteRouteMatch = {
      description = "RouteMatch defines the predicate used to match requests to a given action. Multiple match types are \"OR\"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.",
      id = "TcpRouteRouteMatch",
      properties = {
        address = {
          description = "Required. Must be specified in the CIDR range format. A CIDR range consists of an IP Address and a prefix length to construct the subnet mask. By default, the prefix length is 32 (i.e. matches a single IP address). Only IPV4 addresses are supported. Examples: \"10.0.0.1\" - matches against this exact IP address. \"10.0.0.0/8\" - matches against any IP address within the 10.0.0.0 subnet and 255.255.255.0 mask. \"0.0.0.0/0\" - matches against any IP address'.",
          type = "string",
        },
        port = {
          description = "Required. Specifies the destination port to match against.",
          type = "string",
        },
      },
      type = "object",
    },
    TcpRouteRouteRule = {
      description = "Specifies how to match traffic and how to route traffic when traffic is matched.",
      id = "TcpRouteRouteRule",
      properties = {
        action = {
          ["$ref"] = "TcpRouteRouteAction",
          description = "Required. The detailed rule defining how to route matched traffic.",
        },
        matches = {
          description = "Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are \"OR\"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.",
          items = {
            ["$ref"] = "TcpRouteRouteMatch",
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
    TlsRoute = {
      description = "TlsRoute defines how traffic should be routed based on SNI and other matching L3 attributes.",
      id = "TlsRoute",
      properties = {
        createTime = {
          description = "Output only. The timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A free-text description of the resource. Max length 1024 characters.",
          type = "string",
        },
        gateways = {
          description = "Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        meshes = {
          description = "Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name>`.",
          type = "string",
        },
        rules = {
          description = "Required. Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.",
          items = {
            ["$ref"] = "TlsRouteRouteRule",
          },
          type = "array",
        },
        selfLink = {
          description = "Output only. Server-defined URL of this resource",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when the resource was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    TlsRouteRouteAction = {
      description = "The specifications for routing traffic and applying associated policies.",
      id = "TlsRouteRouteAction",
      properties = {
        destinations = {
          description = "Required. The destination services to which traffic should be forwarded. At least one destination service is required.",
          items = {
            ["$ref"] = "TlsRouteRouteDestination",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TlsRouteRouteDestination = {
      description = "Describe the destination for traffic to be routed to.",
      id = "TlsRouteRouteDestination",
      properties = {
        serviceName = {
          description = "Required. The URL of a BackendService to route traffic to.",
          type = "string",
        },
        weight = {
          description = "Optional. Specifies the proportion of requests forwareded to the backend referenced by the service_name field. This is computed as: weight/Sum(weights in destinations) Weights in all destinations does not need to sum up to 100.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TlsRouteRouteMatch = {
      description = "RouteMatch defines the predicate used to match requests to a given action. Multiple match types are \"AND\"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.",
      id = "TlsRouteRouteMatch",
      properties = {
        alpn = {
          description = "Optional. ALPN (Application-Layer Protocol Negotiation) to match against. Examples: \"http/1.1\", \"h2\". At least one of sni_host and alpn is required. Up to 5 alpns across all matches can be set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        sniHost = {
          description = "Optional. SNI (server name indicator) to match against. SNI will be matched against all wildcard domains, i.e. www.example.com will be first matched against www.example.com, then *.example.com, then *.com. Partial wildcards are not supported, and values like *w.example.com are invalid. At least one of sni_host and alpn is required. Up to 5 sni hosts across all matches can be set.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TlsRouteRouteRule = {
      description = "Specifies how to match traffic and how to route traffic when traffic is matched.",
      id = "TlsRouteRouteRule",
      properties = {
        action = {
          ["$ref"] = "TlsRouteRouteAction",
          description = "Required. The detailed rule defining how to route matched traffic.",
        },
        matches = {
          description = "Required. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are \"OR\"ed for evaluation.",
          items = {
            ["$ref"] = "TlsRouteRouteMatch",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TrafficPortSelector = {
      description = "Specification of a port-based selector.",
      id = "TrafficPortSelector",
      properties = {
        ports = {
          description = "Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all ports from 80 to 90, including 80 and 90) or named ports or * to specify all ports. If the list is empty, all ports are selected.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Network Services API",
  version = "v1",
  version_module = true,
}
