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
  baseUrl = "https://metastore.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Dataproc Metastore",
  description = "The Dataproc Metastore API is used to manage the lifecycle and configuration of metastore services.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/dataproc-metastore/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "metastore:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://metastore.mtls.googleapis.com/",
  name = "metastore",
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
    operations = {
      methods = {
        cancel = {
          description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
          flatPath = "v1/operations/{operationsId}:cancel",
          httpMethod = "POST",
          id = "metastore.operations.cancel",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be cancelled.",
              location = "path",
              pattern = "^operations/.*$",
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
      },
    },
    projects = {
      resources = {
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "metastore.projects.locations.get",
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
              id = "metastore.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https://google.aip.dev/160).",
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
                  description = "A page token received from the next_page_token field in the response. Send that page token to receive the subsequent page.",
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
            federations = {
              methods = {
                create = {
                  description = "Creates a metastore federation in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/federations",
                  httpMethod = "POST",
                  id = "metastore.projects.locations.federations.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    federationId = {
                      description = "Required. The ID of the metastore federation, which is used as the final component of the metastore federation's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The relative resource name of the location in which to create a federation service, in the following form:projects/{project_number}/locations/{location_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/federations",
                  request = {
                    ["$ref"] = "Federation",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single federation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/federations/{federationsId}",
                  httpMethod = "DELETE",
                  id = "metastore.projects.locations.federations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the metastore federation to delete, in the following form:projects/{project_number}/locations/{location_id}/federations/{federation_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/federations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
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
                  description = "Gets the details of a single federation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/federations/{federationsId}",
                  httpMethod = "GET",
                  id = "metastore.projects.locations.federations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the metastore federation to retrieve, in the following form:projects/{project_number}/locations/{location_id}/federations/{federation_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/federations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Federation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/federations/{federationsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "metastore.projects.locations.federations.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/federations/[^/]+$",
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
                  description = "Lists federations in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/federations",
                  httpMethod = "GET",
                  id = "metastore.projects.locations.federations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. The filter to apply to list results.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_patterns#sorting_order). If not specified, the results will be sorted in the default order.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of federations to return. The response may contain less than the maximum number. If unspecified, no more than 500 services are returned. The maximum value is 1000; values above 1000 are changed to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A page token, received from a previous ListFederationServices call. Provide this token to retrieve the subsequent page.To retrieve the first page, supply an empty page token.When paginating, other parameters provided to ListFederationServices must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The relative resource name of the location of metastore federations to list, in the following form: projects/{project_number}/locations/{location_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/federations",
                  response = {
                    ["$ref"] = "ListFederationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the fields of a federation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/federations/{federationsId}",
                  httpMethod = "PATCH",
                  id = "metastore.projects.locations.federations.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/federations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A field mask used to specify the fields to be overwritten in the metastore federation resource by the update. Fields specified in the update_mask are relative to the resource (not to the full request). A field is overwritten if it is in the mask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Federation",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/federations/{federationsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "metastore.projects.locations.federations.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/federations/[^/]+$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/federations/{federationsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "metastore.projects.locations.federations.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/federations/[^/]+$",
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
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "metastore.projects.locations.operations.delete",
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
                  id = "metastore.projects.locations.operations.get",
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
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "metastore.projects.locations.operations.list",
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
            services = {
              methods = {
                create = {
                  description = "Creates a metastore service in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services",
                  httpMethod = "POST",
                  id = "metastore.projects.locations.services.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The relative resource name of the location in which to create a metastore service, in the following form:projects/{project_number}/locations/{location_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
                      location = "query",
                      type = "string",
                    },
                    serviceId = {
                      description = "Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/services",
                  request = {
                    ["$ref"] = "Service",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "DELETE",
                  id = "metastore.projects.locations.services.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the metastore service to delete, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
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
                exportMetadata = {
                  description = "Exports metadata from a service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:exportMetadata",
                  httpMethod = "POST",
                  id = "metastore.projects.locations.services.exportMetadata",
                  parameterOrder = {
                    "service",
                  },
                  parameters = {
                    service = {
                      description = "Required. The relative resource name of the metastore service to run export, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+service}:exportMetadata",
                  request = {
                    ["$ref"] = "ExportMetadataRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the details of a single service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "GET",
                  id = "metastore.projects.locations.services.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The relative resource name of the metastore service to retrieve, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Service",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "metastore.projects.locations.services.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    ["options.requestedPolicyVersion"] = {
                      description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
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
                  description = "Lists services in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services",
                  httpMethod = "GET",
                  id = "metastore.projects.locations.services.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. The filter to apply to list results.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_patterns#sorting_order). If not specified, the results will be sorted in the default order.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of services to return. The response may contain less than the maximum number. If unspecified, no more than 500 services are returned. The maximum value is 1000; values above 1000 are changed to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A page token, received from a previous DataprocMetastore.ListServices call. Provide this token to retrieve the subsequent page.To retrieve the first page, supply an empty page token.When paginating, other parameters provided to DataprocMetastore.ListServices must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The relative resource name of the location of metastore services to list, in the following form:projects/{project_number}/locations/{location_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/services",
                  response = {
                    ["$ref"] = "ListServicesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}",
                  httpMethod = "PATCH",
                  id = "metastore.projects.locations.services.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A field mask used to specify the fields to be overwritten in the metastore service resource by the update. Fields specified in the update_mask are relative to the resource (not to the full request). A field is overwritten if it is in the mask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Service",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                restore = {
                  description = "Restores a service from a backup.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:restore",
                  httpMethod = "POST",
                  id = "metastore.projects.locations.services.restore",
                  parameterOrder = {
                    "service",
                  },
                  parameters = {
                    service = {
                      description = "Required. The relative resource name of the metastore service to run restore, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+service}:restore",
                  request = {
                    ["$ref"] = "RestoreServiceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "metastore.projects.locations.services.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "metastore.projects.locations.services.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
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
                backups = {
                  methods = {
                    create = {
                      description = "Creates a new backup in a given project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/backups",
                      httpMethod = "POST",
                      id = "metastore.projects.locations.services.backups.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        backupId = {
                          description = "Required. The ID of the backup, which is used as the final component of the backup's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The relative resource name of the service in which to create a backup of the following form:projects/{project_number}/locations/{location_id}/services/{service_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/backups",
                      request = {
                        ["$ref"] = "Backup",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a single backup.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/backups/{backupsId}",
                      httpMethod = "DELETE",
                      id = "metastore.projects.locations.services.backups.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The relative resource name of the backup to delete, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
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
                      description = "Gets details of a single backup.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/backups/{backupsId}",
                      httpMethod = "GET",
                      id = "metastore.projects.locations.services.backups.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The relative resource name of the backup to retrieve, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Backup",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/backups/{backupsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "metastore.projects.locations.services.backups.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        ["options.requestedPolicyVersion"] = {
                          description = "Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected.Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset.The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+/backups/[^/]+$",
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
                      description = "Lists backups in a service.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/backups",
                      httpMethod = "GET",
                      id = "metastore.projects.locations.services.backups.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. The filter to apply to list results.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_patterns#sorting_order). If not specified, the results will be sorted in the default order.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of backups to return. The response may contain less than the maximum number. If unspecified, no more than 500 backups are returned. The maximum value is 1000; values above 1000 are changed to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. A page token, received from a previous DataprocMetastore.ListBackups call. Provide this token to retrieve the subsequent page.To retrieve the first page, supply an empty page token.When paginating, other parameters provided to DataprocMetastore.ListBackups must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The relative resource name of the service whose backups to list, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/backups",
                      response = {
                        ["$ref"] = "ListBackupsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/backups/{backupsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "metastore.projects.locations.services.backups.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+/backups/[^/]+$",
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
                  },
                },
                metadataImports = {
                  methods = {
                    create = {
                      description = "Creates a new MetadataImport in a given project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/metadataImports",
                      httpMethod = "POST",
                      id = "metastore.projects.locations.services.metadataImports.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        metadataImportId = {
                          description = "Required. The ID of the metadata import, which is used as the final component of the metadata import's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The relative resource name of the service in which to create a metastore import, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/metadataImports",
                      request = {
                        ["$ref"] = "MetadataImport",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets details of a single import.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/metadataImports/{metadataImportsId}",
                      httpMethod = "GET",
                      id = "metastore.projects.locations.services.metadataImports.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The relative resource name of the metadata import to retrieve, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{import_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+/metadataImports/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "MetadataImport",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists imports in a service.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/metadataImports",
                      httpMethod = "GET",
                      id = "metastore.projects.locations.services.metadataImports.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. The filter to apply to list results.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_patterns#sorting_order). If not specified, the results will be sorted in the default order.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of imports to return. The response may contain less than the maximum number. If unspecified, no more than 500 imports are returned. The maximum value is 1000; values above 1000 are changed to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. A page token, received from a previous DataprocMetastore.ListServices call. Provide this token to retrieve the subsequent page.To retrieve the first page, supply an empty page token.When paginating, other parameters provided to DataprocMetastore.ListServices must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The relative resource name of the service whose metadata imports to list, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/metadataImports",
                      response = {
                        ["$ref"] = "ListMetadataImportsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates a single import. Only the description field of MetadataImport is supported to be updated.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/services/{servicesId}/metadataImports/{metadataImportsId}",
                      httpMethod = "PATCH",
                      id = "metastore.projects.locations.services.metadataImports.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/services/[^/]+/metadataImports/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
                          location = "query",
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. A field mask used to specify the fields to be overwritten in the metadata import resource by the update. Fields specified in the update_mask are relative to the resource (not to the full request). A field is overwritten if it is in the mask.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "MetadataImport",
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
    },
  },
  revision = "20230106",
  rootUrl = "https://metastore.googleapis.com/",
  schemas = {
    AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs.If there are AuditConfigs for both allServices and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted.Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts jose@example.com from DATA_READ logging, and aliya@example.com from DATA_WRITE logging.",
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
          description = "Specifies a service that will be enabled for audit logging. For example, storage.googleapis.com, cloudsql.googleapis.com. allServices is a special value that covers all services.",
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
    BackendMetastore = {
      description = "Represents a backend metastore for the federation.",
      id = "BackendMetastore",
      properties = {
        metastoreType = {
          description = "The type of the backend metastore.",
          enum = {
            "METASTORE_TYPE_UNSPECIFIED",
            "DATAPROC_METASTORE",
          },
          enumDescriptions = {
            "The metastore type is not set.",
            "The backend metastore is Dataproc Metastore.",
          },
          type = "string",
        },
        name = {
          description = "The relative resource name of the metastore that is being federated. The formats of the relative resource names for the currently supported metastores are listed below: Dataplex projects/{project_id}/locations/{location}/lakes/{lake_id} BigQuery projects/{project_id} Dataproc Metastore projects/{project_id}/locations/{location}/services/{service_id}",
          type = "string",
        },
      },
      type = "object",
    },
    Backup = {
      description = "The details of a backup resource.",
      id = "Backup",
      properties = {
        createTime = {
          description = "Output only. The time when the backup was started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The description of the backup.",
          type = "string",
        },
        endTime = {
          description = "Output only. The time when the backup finished creating.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}",
          type = "string",
        },
        restoringServices = {
          description = "Output only. Services that are restoring from the backup.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        serviceRevision = {
          ["$ref"] = "Service",
          description = "Output only. The revision of the service at the time of backup.",
          readOnly = true,
        },
        state = {
          description = "Output only. The current state of the backup.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "DELETING",
            "ACTIVE",
            "FAILED",
            "RESTORING",
          },
          enumDescriptions = {
            "The state of the backup is unknown.",
            "The backup is being created.",
            "The backup is being deleted.",
            "The backup is active and ready to use.",
            "The backup failed.",
            "The backup is being restored.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Binding = {
      description = "Associates members, or principals, with a role.",
      id = "Binding",
      properties = {
        condition = {
          ["$ref"] = "Expr",
          description = "The condition that is associated with this binding.If the condition evaluates to true, then this binding applies to the current request.If the condition evaluates to false, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
        },
        members = {
          description = "Specifies the principals requesting access for a Google Cloud resource. members can have the following values: allUsers: A special identifier that represents anyone who is on the internet; with or without a Google account. allAuthenticatedUsers: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. user:{emailid}: An email address that represents a specific Google account. For example, alice@example.com . serviceAccount:{emailid}: An email address that represents a Google service account. For example, my-other-app@appspot.gserviceaccount.com. serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]: An identifier for a Kubernetes service account (https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, my-project.svc.id.goog[my-namespace/my-kubernetes-sa]. group:{emailid}: An email address that represents a Google group. For example, admins@example.com. deleted:user:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a user that has been recently deleted. For example, alice@example.com?uid=123456789012345678901. If the user is recovered, this value reverts to user:{emailid} and the recovered user retains the role in the binding. deleted:serviceAccount:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901. If the service account is undeleted, this value reverts to serviceAccount:{emailid} and the undeleted service account retains the role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, admins@example.com?uid=123456789012345678901. If the group is recovered, this value reverts to group:{emailid} and the recovered group retains the role in the binding. domain:{domain}: The G Suite domain (primary) that represents all the users of that domain. For example, google.com or example.com.",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Role that is assigned to the list of members, or principals. For example, roles/viewer, roles/editor, or roles/owner.",
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
    Consumer = {
      description = "Contains information of the customer's network configurations.",
      id = "Consumer",
      properties = {
        endpointUri = {
          description = "Output only. The URI of the endpoint used to access the metastore service.",
          readOnly = true,
          type = "string",
        },
        subnetwork = {
          description = "Immutable. The subnetwork of the customer project from which an IP address is reserved and used as the Dataproc Metastore service's endpoint. It is accessible to hosts in the subnet and to all hosts in a subnet in the same region and same network. There must be at least one IP address available in the subnet's primary range. The subnet is specified in the following form:projects/{project_number}/regions/{region_id}/subnetworks/{subnetwork_id}",
          type = "string",
        },
      },
      type = "object",
    },
    DatabaseDump = {
      description = "A specification of the location of and metadata about a database dump from a relational database management system.",
      id = "DatabaseDump",
      properties = {
        databaseType = {
          description = "The type of the database.",
          enum = {
            "DATABASE_TYPE_UNSPECIFIED",
            "MYSQL",
          },
          enumDescriptions = {
            "The type of the source database is unknown.",
            "The type of the source database is MySQL.",
          },
          type = "string",
        },
        gcsUri = {
          description = "A Cloud Storage object or folder URI that specifies the source from which to import metadata. It must begin with gs://.",
          type = "string",
        },
        sourceDatabase = {
          description = "The name of the source database.",
          type = "string",
        },
        type = {
          description = "Optional. The type of the database dump. If unspecified, defaults to MYSQL.",
          enum = {
            "TYPE_UNSPECIFIED",
            "MYSQL",
            "AVRO",
          },
          enumDescriptions = {
            "The type of the database dump is unknown.",
            "Database dump is a MySQL dump file.",
            "Database dump contains Avro files.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } ",
      id = "Empty",
      properties = {},
      type = "object",
    },
    EncryptionConfig = {
      description = "Encryption settings for the service.",
      id = "EncryptionConfig",
      properties = {
        kmsKey = {
          description = "The fully qualified customer provided Cloud KMS key name to use for customer data encryption, in the following form:projects/{project_number}/locations/{location_id}/keyRings/{key_ring_id}/cryptoKeys/{crypto_key_id}.",
          type = "string",
        },
      },
      type = "object",
    },
    ExportMetadataRequest = {
      description = "Request message for DataprocMetastore.ExportMetadata.",
      id = "ExportMetadataRequest",
      properties = {
        databaseDumpType = {
          description = "Optional. The type of the database dump. If unspecified, defaults to MYSQL.",
          enum = {
            "TYPE_UNSPECIFIED",
            "MYSQL",
            "AVRO",
          },
          enumDescriptions = {
            "The type of the database dump is unknown.",
            "Database dump is a MySQL dump file.",
            "Database dump contains Avro files.",
          },
          type = "string",
        },
        destinationGcsFolder = {
          description = "A Cloud Storage URI of a folder, in the format gs:///. A sub-folder containing exported files will be created below it.",
          type = "string",
        },
        requestId = {
          description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format). A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec.Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
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
    Federation = {
      description = "Represents a federation of multiple backend metastores.",
      id = "Federation",
      properties = {
        backendMetastores = {
          additionalProperties = {
            ["$ref"] = "BackendMetastore",
          },
          description = "A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.",
          type = "object",
        },
        createTime = {
          description = "Output only. The time when the metastore federation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endpointUri = {
          description = "Output only. The federation endpoint.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-defined labels for the metastore federation.",
          type = "object",
        },
        name = {
          description = "Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.",
          type = "string",
        },
        state = {
          description = "Output only. The current state of the federation.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "UPDATING",
            "DELETING",
            "ERROR",
          },
          enumDescriptions = {
            "The state of the metastore federation is unknown.",
            "The metastore federation is in the process of being created.",
            "The metastore federation is running and ready to serve queries.",
            "The metastore federation is being updated. It remains usable but cannot accept additional update requests or be deleted at this time.",
            "The metastore federation is undergoing deletion. It cannot be used.",
            "The metastore federation has encountered an error and cannot be used. The metastore federation should be deleted.",
          },
          readOnly = true,
          type = "string",
        },
        stateMessage = {
          description = "Output only. Additional information about the current state of the metastore federation, if available.",
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. The globally unique resource identifier of the metastore federation.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the metastore federation was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        version = {
          description = "Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.",
          type = "string",
        },
      },
      type = "object",
    },
    HiveMetastoreConfig = {
      description = "Specifies configuration information specific to running Hive metastore software as the metastore service.",
      id = "HiveMetastoreConfig",
      properties = {
        configOverrides = {
          additionalProperties = {
            type = "string",
          },
          description = "A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastore (configured in hive-site.xml). The mappings override system defaults (some keys cannot be overridden). These overrides are also applied to auxiliary versions and can be further customized in the auxiliary version's AuxiliaryVersionConfig.",
          type = "object",
        },
        kerberosConfig = {
          ["$ref"] = "KerberosConfig",
          description = "Information used to configure the Hive metastore service as a service principal in a Kerberos realm. To disable Kerberos, use the UpdateService method and specify this field's path (hive_metastore_config.kerberos_config) in the request's update_mask while omitting this field from the request's service.",
        },
        version = {
          description = "Immutable. The Hive metastore schema version.",
          type = "string",
        },
      },
      type = "object",
    },
    HiveMetastoreVersion = {
      description = "A specification of a supported version of the Hive Metastore software.",
      id = "HiveMetastoreVersion",
      properties = {
        isDefault = {
          description = "Whether version will be chosen by the server if a metastore service is created with a HiveMetastoreConfig that omits the version.",
          type = "boolean",
        },
        version = {
          description = "The semantic version of the Hive Metastore software.",
          type = "string",
        },
      },
      type = "object",
    },
    KerberosConfig = {
      description = "Configuration information for a Kerberos principal.",
      id = "KerberosConfig",
      properties = {
        keytab = {
          ["$ref"] = "Secret",
          description = "A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).",
        },
        krb5ConfigGcsUri = {
          description = "A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.",
          type = "string",
        },
        principal = {
          description = "A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format.",
          type = "string",
        },
      },
      type = "object",
    },
    ListBackupsResponse = {
      description = "Response message for DataprocMetastore.ListBackups.",
      id = "ListBackupsResponse",
      properties = {
        backups = {
          description = "The backups of the specified service.",
          items = {
            ["$ref"] = "Backup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListFederationsResponse = {
      description = "Response message for ListFederations",
      id = "ListFederationsResponse",
      properties = {
        federations = {
          description = "The services in the specified location.",
          items = {
            ["$ref"] = "Federation",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
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
    ListMetadataImportsResponse = {
      description = "Response message for DataprocMetastore.ListMetadataImports.",
      id = "ListMetadataImportsResponse",
      properties = {
        metadataImports = {
          description = "The imports in the specified service.",
          items = {
            ["$ref"] = "MetadataImport",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
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
    ListServicesResponse = {
      description = "Response message for DataprocMetastore.ListServices.",
      id = "ListServicesResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        services = {
          description = "The services in the specified location.",
          items = {
            ["$ref"] = "Service",
          },
          type = "array",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
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
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"} ",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: \"us-east1\".",
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
          description = "Resource name for the location, which may vary between implementations. For example: \"projects/example-project/locations/us-east1\"",
          type = "string",
        },
      },
      type = "object",
    },
    LocationMetadata = {
      description = "Metadata about the service in a location.",
      id = "LocationMetadata",
      properties = {
        supportedHiveMetastoreVersions = {
          description = "The versions of Hive Metastore that can be used when creating a new metastore service in this location. The server guarantees that exactly one HiveMetastoreVersion in the list will set is_default.",
          items = {
            ["$ref"] = "HiveMetastoreVersion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MaintenanceWindow = {
      description = "Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.",
      id = "MaintenanceWindow",
      properties = {
        dayOfWeek = {
          description = "The day of week, when the window starts.",
          enum = {
            "DAY_OF_WEEK_UNSPECIFIED",
            "MONDAY",
            "TUESDAY",
            "WEDNESDAY",
            "THURSDAY",
            "FRIDAY",
            "SATURDAY",
            "SUNDAY",
          },
          enumDescriptions = {
            "The day of the week is unspecified.",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
            "Sunday",
          },
          type = "string",
        },
        hourOfDay = {
          description = "The hour of day (0-23) when the window starts.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MetadataExport = {
      description = "The details of a metadata export operation.",
      id = "MetadataExport",
      properties = {
        databaseDumpType = {
          description = "Output only. The type of the database dump.",
          enum = {
            "TYPE_UNSPECIFIED",
            "MYSQL",
            "AVRO",
          },
          enumDescriptions = {
            "The type of the database dump is unknown.",
            "Database dump is a MySQL dump file.",
            "Database dump contains Avro files.",
          },
          readOnly = true,
          type = "string",
        },
        destinationGcsUri = {
          description = "Output only. A Cloud Storage URI of a folder that metadata are exported to, in the form of gs:////, where is automatically generated.",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time when the export ended.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. The time when the export started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the export.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "The state of the metadata export is unknown.",
            "The metadata export is running.",
            "The metadata export completed successfully.",
            "The metadata export failed.",
            "The metadata export is cancelled.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MetadataImport = {
      description = "A metastore resource that imports metadata.",
      id = "MetadataImport",
      properties = {
        createTime = {
          description = "Output only. The time when the metadata import was started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        databaseDump = {
          ["$ref"] = "DatabaseDump",
          description = "Immutable. A database dump from a pre-existing metastore's database.",
        },
        description = {
          description = "The description of the metadata import.",
          type = "string",
        },
        endTime = {
          description = "Output only. The time when the metadata import finished.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.",
          type = "string",
        },
        state = {
          description = "Output only. The current state of the metadata import.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "SUCCEEDED",
            "UPDATING",
            "FAILED",
          },
          enumDescriptions = {
            "The state of the metadata import is unknown.",
            "The metadata import is running.",
            "The metadata import completed successfully.",
            "The metadata import is being updated.",
            "The metadata import failed, and attempted metadata changes were rolled back.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the metadata import was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MetadataManagementActivity = {
      description = "The metadata management activities of the metastore service.",
      id = "MetadataManagementActivity",
      properties = {
        metadataExports = {
          description = "Output only. The latest metadata exports of the metastore service.",
          items = {
            ["$ref"] = "MetadataExport",
          },
          readOnly = true,
          type = "array",
        },
        restores = {
          description = "Output only. The latest restores of the metastore service.",
          items = {
            ["$ref"] = "Restore",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    NetworkConfig = {
      description = "Network configuration for the Dataproc Metastore service.",
      id = "NetworkConfig",
      properties = {
        consumers = {
          description = "Immutable. The consumer-side network configuration for the Dataproc Metastore instance.",
          items = {
            ["$ref"] = "Consumer",
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
          description = "If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.",
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
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations/{unique_id}.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get/Create/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.",
          type = "object",
        },
      },
      type = "object",
    },
    OperationMetadata = {
      description = "Represents the metadata of a long-running operation.",
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
          description = "Output only. Identifies whether the caller has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.",
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
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.A Policy is a collection of bindings. A binding binds one or more members, or principals, to a single role. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A role is a named list of permissions; each role can be an IAM predefined role or a user-created custom role.For some types of Google Cloud resources, a binding can also specify a condition, which is a logical expression that allows access to a resource only if the expression evaluates to true. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).JSON example: { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } YAML example: bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the IAM documentation (https://cloud.google.com/iam/docs/).",
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
          description = "Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.",
          items = {
            ["$ref"] = "Binding",
          },
          type = "array",
        },
        etag = {
          description = "etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Restore = {
      description = "The details of a metadata restore operation.",
      id = "Restore",
      properties = {
        backup = {
          description = "Output only. The relative resource name of the metastore service backup to restore from, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.",
          readOnly = true,
          type = "string",
        },
        details = {
          description = "Output only. The restore details containing the revision of the service to be restored to, in format of JSON.",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time when the restore ended.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. The time when the restore started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the restore.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "The state of the metadata restore is unknown.",
            "The metadata restore is running.",
            "The metadata restore completed successfully.",
            "The metadata restore failed.",
            "The metadata restore is cancelled.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. The type of restore.",
          enum = {
            "RESTORE_TYPE_UNSPECIFIED",
            "FULL",
            "METADATA_ONLY",
          },
          enumDescriptions = {
            "The restore type is unknown.",
            "The service's metadata and configuration are restored.",
            "Only the service's metadata is restored.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    RestoreServiceRequest = {
      description = "Request message for DataprocMetastore.Restore.",
      id = "RestoreServiceRequest",
      properties = {
        backup = {
          description = "Required. The relative resource name of the metastore service backup to restore from, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.",
          type = "string",
        },
        requestId = {
          description = "Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format). A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.",
          type = "string",
        },
        restoreType = {
          description = "Optional. The type of restore. If unspecified, defaults to METADATA_ONLY.",
          enum = {
            "RESTORE_TYPE_UNSPECIFIED",
            "FULL",
            "METADATA_ONLY",
          },
          enumDescriptions = {
            "The restore type is unknown.",
            "The service's metadata and configuration are restored.",
            "Only the service's metadata is restored.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Secret = {
      description = "A securely stored value.",
      id = "Secret",
      properties = {
        cloudSecret = {
          description = "The relative resource name of a Secret Manager secret version, in the following form:projects/{project_number}/secrets/{secret_id}/versions/{version_id}.",
          type = "string",
        },
      },
      type = "object",
    },
    Service = {
      description = "A managed metastore service that serves metadata queries.",
      id = "Service",
      properties = {
        artifactGcsUri = {
          description = "Output only. A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The time when the metastore service was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        databaseType = {
          description = "Immutable. The database type that the Metastore service stores its data.",
          enum = {
            "DATABASE_TYPE_UNSPECIFIED",
            "MYSQL",
            "SPANNER",
          },
          enumDescriptions = {
            "The DATABASE_TYPE is not set.",
            "MySQL is used to persist the metastore data.",
            "Spanner is used to persist the metastore data.",
          },
          type = "string",
        },
        encryptionConfig = {
          ["$ref"] = "EncryptionConfig",
          description = "Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.",
        },
        endpointUri = {
          description = "Output only. The URI of the endpoint used to access the metastore service.",
          readOnly = true,
          type = "string",
        },
        hiveMetastoreConfig = {
          ["$ref"] = "HiveMetastoreConfig",
          description = "Configuration information specific to running Hive metastore software as the metastore service.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-defined labels for the metastore service.",
          type = "object",
        },
        maintenanceWindow = {
          ["$ref"] = "MaintenanceWindow",
          description = "The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.",
        },
        metadataManagementActivity = {
          ["$ref"] = "MetadataManagementActivity",
          description = "Output only. The metadata management activities of the metastore service.",
          readOnly = true,
        },
        name = {
          description = "Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.",
          type = "string",
        },
        network = {
          description = "Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.",
          type = "string",
        },
        networkConfig = {
          ["$ref"] = "NetworkConfig",
          description = "The configuration specifying the network settings for the Dataproc Metastore service.",
        },
        port = {
          description = "The TCP port at which the metastore service is reached. Default: 9083.",
          format = "int32",
          type = "integer",
        },
        releaseChannel = {
          description = "Immutable. The release channel of the service. If unspecified, defaults to STABLE.",
          enum = {
            "RELEASE_CHANNEL_UNSPECIFIED",
            "CANARY",
            "STABLE",
          },
          enumDescriptions = {
            "Release channel is not specified.",
            "The CANARY release channel contains the newest features, which may be unstable and subject to unresolved issues with no known workarounds. Services using the CANARY release channel are not subject to any SLAs.",
            "The STABLE release channel contains features that are considered stable and have been validated for production use.",
          },
          type = "string",
        },
        state = {
          description = "Output only. The current state of the metastore service.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "SUSPENDING",
            "SUSPENDED",
            "UPDATING",
            "DELETING",
            "ERROR",
          },
          enumDescriptions = {
            "The state of the metastore service is unknown.",
            "The metastore service is in the process of being created.",
            "The metastore service is running and ready to serve queries.",
            "The metastore service is entering suspension. Its query-serving availability may cease unexpectedly.",
            "The metastore service is suspended and unable to serve queries.",
            "The metastore service is being updated. It remains usable but cannot accept additional update requests or be deleted at this time.",
            "The metastore service is undergoing deletion. It cannot be used.",
            "The metastore service has encountered an error and cannot be used. The metastore service should be deleted.",
          },
          readOnly = true,
          type = "string",
        },
        stateMessage = {
          description = "Output only. Additional information about the current state of the metastore service, if available.",
          readOnly = true,
          type = "string",
        },
        telemetryConfig = {
          ["$ref"] = "TelemetryConfig",
          description = "The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.",
        },
        tier = {
          description = "The tier of the service.",
          enum = {
            "TIER_UNSPECIFIED",
            "DEVELOPER",
            "ENTERPRISE",
          },
          enumDescriptions = {
            "The tier is not set.",
            "The developer tier provides limited scalability and no fault tolerance. Good for low-cost proof-of-concept.",
            "The enterprise tier provides multi-zone high availability, and sufficient scalability for enterprise-level Dataproc Metastore workloads.",
          },
          type = "string",
        },
        uid = {
          description = "Output only. The globally unique resource identifier of the metastore service.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when the metastore service was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SetIamPolicyRequest = {
      description = "Request message for SetIamPolicy method.",
      id = "SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used:paths: \"bindings, etag\"",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    Status = {
      description = "The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).",
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
    TelemetryConfig = {
      description = "Telemetry Configuration for the Dataproc Metastore service.",
      id = "TelemetryConfig",
      properties = {
        logFormat = {
          description = "The output format of the Dataproc Metastore service's logs.",
          enum = {
            "LOG_FORMAT_UNSPECIFIED",
            "LEGACY",
            "JSON",
          },
          enumDescriptions = {
            "The LOG_FORMAT is not set.",
            "Logging output uses the legacy textPayload format.",
            "Logging output uses the jsonPayload format.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TestIamPermissionsRequest = {
      description = "Request message for TestIamPermissions method.",
      id = "TestIamPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the resource. Permissions with wildcards (such as * or storage.*) are not allowed. For more information see IAM Overview (https://cloud.google.com/iam/docs/overview#permissions).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsResponse = {
      description = "Response message for TestIamPermissions method.",
      id = "TestIamPermissionsResponse",
      properties = {
        permissions = {
          description = "A subset of TestPermissionsRequest.permissions that the caller is allowed.",
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
  title = "Dataproc Metastore API",
  version = "v1",
  version_module = true,
}
