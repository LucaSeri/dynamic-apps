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
  baseUrl = "https://datastream.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Datastream",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/datastream/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "datastream:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://datastream.mtls.googleapis.com/",
  name = "datastream",
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
            fetchStaticIps = {
              description = "The FetchStaticIps API call exposes the static IP addresses used by Datastream.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}:fetchStaticIps",
              httpMethod = "GET",
              id = "datastream.projects.locations.fetchStaticIps",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name for the location for which static IPs should be returned. Must be in the format `projects/*/locations/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of Ips to return, will likely not be specified.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListStaticIps` call. will likely not be specified.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}:fetchStaticIps",
              response = {
                ["$ref"] = "FetchStaticIpsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "datastream.projects.locations.get",
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
              id = "datastream.projects.locations.list",
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
            connectionProfiles = {
              methods = {
                create = {
                  description = "Use this method to create a connection profile in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles",
                  httpMethod = "POST",
                  id = "datastream.projects.locations.connectionProfiles.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    connectionProfileId = {
                      description = "Required. The connection profile identifier.",
                      location = "query",
                      type = "string",
                    },
                    force = {
                      description = "Optional. Create the connection profile without validating it.",
                      location = "query",
                      type = "boolean",
                    },
                    parent = {
                      description = "Required. The parent that owns the collection of ConnectionProfiles.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. Only validate the connection profile, but don't create any resources. The default is false.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/connectionProfiles",
                  request = {
                    ["$ref"] = "ConnectionProfile",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Use this method to delete a connection profile.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}",
                  httpMethod = "DELETE",
                  id = "datastream.projects.locations.connectionProfiles.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the connection profile resource to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
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
                discover = {
                  description = "Use this method to discover a connection profile. The discover API call exposes the data objects and metadata belonging to the profile. Typically, a request returns children data objects of a parent data object that's optionally supplied in the request.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles:discover",
                  httpMethod = "POST",
                  id = "datastream.projects.locations.connectionProfiles.discover",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource of the connection profile type. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/connectionProfiles:discover",
                  request = {
                    ["$ref"] = "DiscoverConnectionProfileRequest",
                  },
                  response = {
                    ["$ref"] = "DiscoverConnectionProfileResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Use this method to get details about a connection profile.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}",
                  httpMethod = "GET",
                  id = "datastream.projects.locations.connectionProfiles.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the connection profile resource to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "ConnectionProfile",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Use this method to list connection profiles created in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles",
                  httpMethod = "GET",
                  id = "datastream.projects.locations.connectionProfiles.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter request.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Order by fields for the result.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of connection profiles to return. If unspecified, at most 50 connection profiles will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token received from a previous `ListConnectionProfiles` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListConnectionProfiles` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent that owns the collection of connection profiles.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/connectionProfiles",
                  response = {
                    ["$ref"] = "ListConnectionProfilesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Use this method to update the parameters of a connection profile.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/connectionProfiles/{connectionProfilesId}",
                  httpMethod = "PATCH",
                  id = "datastream.projects.locations.connectionProfiles.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "Optional. Update the connection profile without validating it.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Output only. The resource's name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/connectionProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the ConnectionProfile resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. Only validate the connection profile, but don't update any resources. The default is false.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "ConnectionProfile",
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
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "datastream.projects.locations.operations.cancel",
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
                  id = "datastream.projects.locations.operations.delete",
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
                  id = "datastream.projects.locations.operations.get",
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
                  id = "datastream.projects.locations.operations.list",
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
            privateConnections = {
              methods = {
                create = {
                  description = "Use this method to create a private connectivity configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections",
                  httpMethod = "POST",
                  id = "datastream.projects.locations.privateConnections.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    force = {
                      description = "Optional. If set to true, will skip validations.",
                      location = "query",
                      type = "boolean",
                    },
                    parent = {
                      description = "Required. The parent that owns the collection of PrivateConnections.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    privateConnectionId = {
                      description = "Required. The private connectivity identifier.",
                      location = "query",
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/privateConnections",
                  request = {
                    ["$ref"] = "PrivateConnection",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Use this method to delete a private connectivity configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections/{privateConnectionsId}",
                  httpMethod = "DELETE",
                  id = "datastream.projects.locations.privateConnections.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "Optional. If set to true, any child routes that belong to this PrivateConnection will also be deleted.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The name of the private connectivity configuration to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/privateConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
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
                  description = "Use this method to get details about a private connectivity configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections/{privateConnectionsId}",
                  httpMethod = "GET",
                  id = "datastream.projects.locations.privateConnections.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the private connectivity configuration to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/privateConnections/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "PrivateConnection",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Use this method to list private connectivity configurations in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections",
                  httpMethod = "GET",
                  id = "datastream.projects.locations.privateConnections.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter request.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Order by fields for the result.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of private connectivity configurations to return. If unspecified, at most 50 private connectivity configurations that will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token received from a previous `ListPrivateConnections` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPrivateConnections` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent that owns the collection of private connectivity configurations.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/privateConnections",
                  response = {
                    ["$ref"] = "ListPrivateConnectionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                routes = {
                  methods = {
                    create = {
                      description = "Use this method to create a route for a private connectivity configuration in a project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections/{privateConnectionsId}/routes",
                      httpMethod = "POST",
                      id = "datastream.projects.locations.privateConnections.routes.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent that owns the collection of Routes.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/privateConnections/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        routeId = {
                          description = "Required. The Route identifier.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/routes",
                      request = {
                        ["$ref"] = "Route",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Use this method to delete a route.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections/{privateConnectionsId}/routes/{routesId}",
                      httpMethod = "DELETE",
                      id = "datastream.projects.locations.privateConnections.routes.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the Route resource to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/privateConnections/[^/]+/routes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
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
                      description = "Use this method to get details about a route.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections/{privateConnectionsId}/routes/{routesId}",
                      httpMethod = "GET",
                      id = "datastream.projects.locations.privateConnections.routes.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the Route resource to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/privateConnections/[^/]+/routes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Route",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Use this method to list routes created for a private connectivity configuration in a project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/privateConnections/{privateConnectionsId}/routes",
                      httpMethod = "GET",
                      id = "datastream.projects.locations.privateConnections.routes.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter request.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Order by fields for the result.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Maximum number of Routes to return. The service may return fewer than this value. If unspecified, at most 50 Routes will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Page token received from a previous `ListRoutes` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListRoutes` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent that owns the collection of Routess.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/privateConnections/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/routes",
                      response = {
                        ["$ref"] = "ListRoutesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            streams = {
              methods = {
                create = {
                  description = "Use this method to create a stream.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams",
                  httpMethod = "POST",
                  id = "datastream.projects.locations.streams.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    force = {
                      description = "Optional. Create the stream without validating it.",
                      location = "query",
                      type = "boolean",
                    },
                    parent = {
                      description = "Required. The parent that owns the collection of streams.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    streamId = {
                      description = "Required. The stream identifier.",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. Only validate the stream, but don't create any resources. The default is false.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/streams",
                  request = {
                    ["$ref"] = "Stream",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Use this method to delete a stream.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams/{streamsId}",
                  httpMethod = "DELETE",
                  id = "datastream.projects.locations.streams.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the stream resource to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/streams/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
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
                  description = "Use this method to get details about a stream.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams/{streamsId}",
                  httpMethod = "GET",
                  id = "datastream.projects.locations.streams.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the stream resource to get.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/streams/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Stream",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Use this method to list streams in a project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams",
                  httpMethod = "GET",
                  id = "datastream.projects.locations.streams.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter request.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Order by fields for the result.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of streams to return. If unspecified, at most 50 streams will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token received from a previous `ListStreams` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListStreams` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent that owns the collection of streams.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/streams",
                  response = {
                    ["$ref"] = "ListStreamsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Use this method to update the configuration of a stream.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams/{streamsId}",
                  httpMethod = "PATCH",
                  id = "datastream.projects.locations.streams.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    force = {
                      description = "Optional. Update the stream without validating it.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Output only. The stream's name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/streams/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask is used to specify the fields to be overwritten in the stream resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. Only validate the stream with the changes, without actually updating it. The default is false.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Stream",
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
                objects = {
                  methods = {
                    get = {
                      description = "Use this method to get details about a stream object.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams/{streamsId}/objects/{objectsId}",
                      httpMethod = "GET",
                      id = "datastream.projects.locations.streams.objects.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the stream object resource to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/streams/[^/]+/objects/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "StreamObject",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Use this method to list the objects of a specific stream.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams/{streamsId}/objects",
                      httpMethod = "GET",
                      id = "datastream.projects.locations.streams.objects.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Maximum number of objects to return. Default is 50. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Page token received from a previous `ListStreamObjectsRequest` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListStreamObjectsRequest` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent stream that owns the collection of objects.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/streams/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/objects",
                      response = {
                        ["$ref"] = "ListStreamObjectsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    lookup = {
                      description = "Use this method to look up a stream object by its source object identifier.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams/{streamsId}/objects:lookup",
                      httpMethod = "POST",
                      id = "datastream.projects.locations.streams.objects.lookup",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent stream that owns the collection of objects.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/streams/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/objects:lookup",
                      request = {
                        ["$ref"] = "LookupStreamObjectRequest",
                      },
                      response = {
                        ["$ref"] = "StreamObject",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    startBackfillJob = {
                      description = "Use this method to start a backfill job for the specified stream object.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams/{streamsId}/objects/{objectsId}:startBackfillJob",
                      httpMethod = "POST",
                      id = "datastream.projects.locations.streams.objects.startBackfillJob",
                      parameterOrder = {
                        "object",
                      },
                      parameters = {
                        object = {
                          description = "Required. The name of the stream object resource to start a backfill job for.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/streams/[^/]+/objects/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+object}:startBackfillJob",
                      request = {
                        ["$ref"] = "StartBackfillJobRequest",
                      },
                      response = {
                        ["$ref"] = "StartBackfillJobResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    stopBackfillJob = {
                      description = "Use this method to stop a backfill job for the specified stream object.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/streams/{streamsId}/objects/{objectsId}:stopBackfillJob",
                      httpMethod = "POST",
                      id = "datastream.projects.locations.streams.objects.stopBackfillJob",
                      parameterOrder = {
                        "object",
                      },
                      parameters = {
                        object = {
                          description = "Required. The name of the stream object resource to stop the backfill job for.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/streams/[^/]+/objects/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+object}:stopBackfillJob",
                      request = {
                        ["$ref"] = "StopBackfillJobRequest",
                      },
                      response = {
                        ["$ref"] = "StopBackfillJobResponse",
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
  revision = "20230103",
  rootUrl = "https://datastream.googleapis.com/",
  schemas = {
    AvroFileFormat = {
      description = "AVRO file format configuration.",
      id = "AvroFileFormat",
      properties = {},
      type = "object",
    },
    BackfillAllStrategy = {
      description = "Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.",
      id = "BackfillAllStrategy",
      properties = {
        mysqlExcludedObjects = {
          ["$ref"] = "MysqlRdbms",
          description = "MySQL data source objects to avoid backfilling.",
        },
        oracleExcludedObjects = {
          ["$ref"] = "OracleRdbms",
          description = "Oracle data source objects to avoid backfilling.",
        },
        postgresqlExcludedObjects = {
          ["$ref"] = "PostgresqlRdbms",
          description = "PostgreSQL data source objects to avoid backfilling.",
        },
      },
      type = "object",
    },
    BackfillJob = {
      description = "Represents a backfill job on a specific stream object.",
      id = "BackfillJob",
      properties = {
        errors = {
          description = "Output only. Errors which caused the backfill job to fail.",
          items = {
            ["$ref"] = "Error",
          },
          readOnly = true,
          type = "array",
        },
        lastEndTime = {
          description = "Output only. Backfill job's end time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        lastStartTime = {
          description = "Output only. Backfill job's start time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Backfill job state.",
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_STARTED",
            "PENDING",
            "ACTIVE",
            "STOPPED",
            "FAILED",
            "COMPLETED",
            "UNSUPPORTED",
          },
          enumDescriptions = {
            "Default value.",
            "Backfill job was never started for the stream object (stream has backfill strategy defined as manual or object was explicitly excluded from automatic backfill).",
            "Backfill job will start pending available resources.",
            "Backfill job is running.",
            "Backfill job stopped (next job run will start from beginning).",
            "Backfill job failed (due to an error).",
            "Backfill completed successfully.",
            "Backfill job failed since the table structure is currently unsupported for backfill.",
          },
          type = "string",
        },
        trigger = {
          description = "Backfill job's triggering reason.",
          enum = {
            "TRIGGER_UNSPECIFIED",
            "AUTOMATIC",
            "MANUAL",
          },
          enumDescriptions = {
            "Default value.",
            "Object backfill job was triggered automatically according to the stream's backfill strategy.",
            "Object backfill job was triggered manually using the dedicated API.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BackfillNoneStrategy = {
      description = "Backfill strategy to disable automatic backfill for the Stream's objects.",
      id = "BackfillNoneStrategy",
      properties = {},
      type = "object",
    },
    BigQueryDestinationConfig = {
      id = "BigQueryDestinationConfig",
      properties = {
        dataFreshness = {
          description = "The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.",
          format = "google-duration",
          type = "string",
        },
        singleTargetDataset = {
          ["$ref"] = "SingleTargetDataset",
          description = "Single destination dataset.",
        },
        sourceHierarchyDatasets = {
          ["$ref"] = "SourceHierarchyDatasets",
          description = "Source hierarchy datasets.",
        },
      },
      type = "object",
    },
    BigQueryProfile = {
      description = "BigQuery warehouse profile.",
      id = "BigQueryProfile",
      properties = {},
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    ConnectionProfile = {
      description = "A set of reusable connection configurations to be used as a source or destination for a stream.",
      id = "ConnectionProfile",
      properties = {
        bigqueryProfile = {
          ["$ref"] = "BigQueryProfile",
          description = "BigQuery Connection Profile configuration.",
        },
        createTime = {
          description = "Output only. The create time of the resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. Display name.",
          type = "string",
        },
        forwardSshConnectivity = {
          ["$ref"] = "ForwardSshTunnelConnectivity",
          description = "Forward SSH tunnel connectivity.",
        },
        gcsProfile = {
          ["$ref"] = "GcsProfile",
          description = "Cloud Storage ConnectionProfile configuration.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels.",
          type = "object",
        },
        mysqlProfile = {
          ["$ref"] = "MysqlProfile",
          description = "MySQL ConnectionProfile configuration.",
        },
        name = {
          description = "Output only. The resource's name.",
          readOnly = true,
          type = "string",
        },
        oracleProfile = {
          ["$ref"] = "OracleProfile",
          description = "Oracle ConnectionProfile configuration.",
        },
        postgresqlProfile = {
          ["$ref"] = "PostgresqlProfile",
          description = "PostgreSQL Connection Profile configuration.",
        },
        privateConnectivity = {
          ["$ref"] = "PrivateConnectivity",
          description = "Private connectivity.",
        },
        staticServiceIpConnectivity = {
          ["$ref"] = "StaticServiceIpConnectivity",
          description = "Static Service IP connectivity.",
        },
        updateTime = {
          description = "Output only. The update time of the resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DatasetTemplate = {
      description = "Dataset template used for dynamic dataset creation.",
      id = "DatasetTemplate",
      properties = {
        datasetIdPrefix = {
          description = "If supplied, every created dataset will have its name prefixed by the provided value. The prefix and name will be separated by an underscore. i.e. _.",
          type = "string",
        },
        kmsKeyName = {
          description = "Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key. i.e. projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{cryptoKey}. See https://cloud.google.com/bigquery/docs/customer-managed-encryption for more information.",
          type = "string",
        },
        location = {
          description = "Required. The geographic location where the dataset should reside. See https://cloud.google.com/bigquery/docs/locations for supported locations.",
          type = "string",
        },
      },
      type = "object",
    },
    DestinationConfig = {
      description = "The configuration of the stream destination.",
      id = "DestinationConfig",
      properties = {
        bigqueryDestinationConfig = {
          ["$ref"] = "BigQueryDestinationConfig",
          description = "BigQuery destination configuration.",
        },
        destinationConnectionProfile = {
          description = "Required. Destination connection profile resource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`",
          type = "string",
        },
        gcsDestinationConfig = {
          ["$ref"] = "GcsDestinationConfig",
          description = "A configuration for how data should be loaded to Cloud Storage.",
        },
      },
      type = "object",
    },
    DiscoverConnectionProfileRequest = {
      description = "Request message for 'discover' ConnectionProfile request.",
      id = "DiscoverConnectionProfileRequest",
      properties = {
        connectionProfile = {
          ["$ref"] = "ConnectionProfile",
          description = "An ad-hoc connection profile configuration.",
        },
        connectionProfileName = {
          description = "A reference to an existing connection profile.",
          type = "string",
        },
        fullHierarchy = {
          description = "Whether to retrieve the full hierarchy of data objects (TRUE) or only the current level (FALSE).",
          type = "boolean",
        },
        hierarchyDepth = {
          description = "The number of hierarchy levels below the current level to be retrieved.",
          format = "int32",
          type = "integer",
        },
        mysqlRdbms = {
          ["$ref"] = "MysqlRdbms",
          description = "MySQL RDBMS to enrich with child data objects and metadata.",
        },
        oracleRdbms = {
          ["$ref"] = "OracleRdbms",
          description = "Oracle RDBMS to enrich with child data objects and metadata.",
        },
        postgresqlRdbms = {
          ["$ref"] = "PostgresqlRdbms",
          description = "PostgreSQL RDBMS to enrich with child data objects and metadata.",
        },
      },
      type = "object",
    },
    DiscoverConnectionProfileResponse = {
      description = "Response from a discover request.",
      id = "DiscoverConnectionProfileResponse",
      properties = {
        mysqlRdbms = {
          ["$ref"] = "MysqlRdbms",
          description = "Enriched MySQL RDBMS object.",
        },
        oracleRdbms = {
          ["$ref"] = "OracleRdbms",
          description = "Enriched Oracle RDBMS object.",
        },
        postgresqlRdbms = {
          ["$ref"] = "PostgresqlRdbms",
          description = "Enriched PostgreSQL RDBMS object.",
        },
      },
      type = "object",
    },
    DropLargeObjects = {
      description = "Configuration to drop large object values.",
      id = "DropLargeObjects",
      properties = {},
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    Error = {
      description = "Represent a user-facing Error.",
      id = "Error",
      properties = {
        details = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional information about the error.",
          type = "object",
        },
        errorTime = {
          description = "The time when the error occurred.",
          format = "google-datetime",
          type = "string",
        },
        errorUuid = {
          description = "A unique identifier for this specific error, allowing it to be traced throughout the system in logs and API responses.",
          type = "string",
        },
        message = {
          description = "A message containing more information about the error that occurred.",
          type = "string",
        },
        reason = {
          description = "A title that explains the reason for the error.",
          type = "string",
        },
      },
      type = "object",
    },
    FetchStaticIpsResponse = {
      description = "Response message for a 'FetchStaticIps' response.",
      id = "FetchStaticIpsResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        staticIps = {
          description = "list of static ips by account",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ForwardSshTunnelConnectivity = {
      description = "Forward SSH Tunnel connectivity.",
      id = "ForwardSshTunnelConnectivity",
      properties = {
        hostname = {
          description = "Required. Hostname for the SSH tunnel.",
          type = "string",
        },
        password = {
          description = "Input only. SSH password.",
          type = "string",
        },
        port = {
          description = "Port for the SSH tunnel, default value is 22.",
          format = "int32",
          type = "integer",
        },
        privateKey = {
          description = "Input only. SSH private key.",
          type = "string",
        },
        username = {
          description = "Required. Username for the SSH tunnel.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsDestinationConfig = {
      description = "Google Cloud Storage destination configuration",
      id = "GcsDestinationConfig",
      properties = {
        avroFileFormat = {
          ["$ref"] = "AvroFileFormat",
          description = "AVRO file format configuration.",
        },
        fileRotationInterval = {
          description = "The maximum duration for which new events are added before a file is closed and a new file is created.",
          format = "google-duration",
          type = "string",
        },
        fileRotationMb = {
          description = "The maximum file size to be saved in the bucket.",
          format = "int32",
          type = "integer",
        },
        jsonFileFormat = {
          ["$ref"] = "JsonFileFormat",
          description = "JSON file format configuration.",
        },
        path = {
          description = "Path inside the Cloud Storage bucket to write data to.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsProfile = {
      description = "Cloud Storage bucket profile.",
      id = "GcsProfile",
      properties = {
        bucket = {
          description = "Required. The Cloud Storage bucket name.",
          type = "string",
        },
        rootPath = {
          description = "The root path inside the Cloud Storage bucket.",
          type = "string",
        },
      },
      type = "object",
    },
    JsonFileFormat = {
      description = "JSON file format configuration.",
      id = "JsonFileFormat",
      properties = {
        compression = {
          description = "Compression of the loaded JSON file.",
          enum = {
            "JSON_COMPRESSION_UNSPECIFIED",
            "NO_COMPRESSION",
            "GZIP",
          },
          enumDescriptions = {
            "Unspecified json file compression.",
            "Do not compress JSON file.",
            "Gzip compression.",
          },
          type = "string",
        },
        schemaFileFormat = {
          description = "The schema file format along JSON data files.",
          enum = {
            "SCHEMA_FILE_FORMAT_UNSPECIFIED",
            "NO_SCHEMA_FILE",
            "AVRO_SCHEMA_FILE",
          },
          enumDescriptions = {
            "Unspecified schema file format.",
            "Do not attach schema file.",
            "Avro schema format.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ListConnectionProfilesResponse = {
      description = "Response message for listing connection profiles.",
      id = "ListConnectionProfilesResponse",
      properties = {
        connectionProfiles = {
          description = "List of connection profiles.",
          items = {
            ["$ref"] = "ConnectionProfile",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
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
    ListPrivateConnectionsResponse = {
      description = "Response containing a list of private connection configurations.",
      id = "ListPrivateConnectionsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        privateConnections = {
          description = "List of private connectivity configurations.",
          items = {
            ["$ref"] = "PrivateConnection",
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
    ListRoutesResponse = {
      description = "Route list response.",
      id = "ListRoutesResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        routes = {
          description = "List of Routes.",
          items = {
            ["$ref"] = "Route",
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
    ListStreamObjectsResponse = {
      description = "Response containing the objects for a stream.",
      id = "ListStreamObjectsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page.",
          type = "string",
        },
        streamObjects = {
          description = "List of stream objects.",
          items = {
            ["$ref"] = "StreamObject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListStreamsResponse = {
      description = "Response message for listing streams.",
      id = "ListStreamsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        streams = {
          description = "List of streams",
          items = {
            ["$ref"] = "Stream",
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
    LookupStreamObjectRequest = {
      description = "Request for looking up a specific stream object by its source object identifier.",
      id = "LookupStreamObjectRequest",
      properties = {
        sourceObjectIdentifier = {
          ["$ref"] = "SourceObjectIdentifier",
          description = "Required. The source object identifier which maps to the stream object.",
        },
      },
      type = "object",
    },
    MysqlColumn = {
      description = "MySQL Column.",
      id = "MysqlColumn",
      properties = {
        collation = {
          description = "Column collation.",
          type = "string",
        },
        column = {
          description = "Column name.",
          type = "string",
        },
        dataType = {
          description = "The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html",
          type = "string",
        },
        length = {
          description = "Column length.",
          format = "int32",
          type = "integer",
        },
        nullable = {
          description = "Whether or not the column can accept a null value.",
          type = "boolean",
        },
        ordinalPosition = {
          description = "The ordinal position of the column in the table.",
          format = "int32",
          type = "integer",
        },
        primaryKey = {
          description = "Whether or not the column represents a primary key.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MysqlDatabase = {
      description = "MySQL database.",
      id = "MysqlDatabase",
      properties = {
        database = {
          description = "Database name.",
          type = "string",
        },
        mysqlTables = {
          description = "Tables in the database.",
          items = {
            ["$ref"] = "MysqlTable",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MysqlObjectIdentifier = {
      description = "Mysql data source object identifier.",
      id = "MysqlObjectIdentifier",
      properties = {
        database = {
          description = "Required. The database name.",
          type = "string",
        },
        table = {
          description = "Required. The table name.",
          type = "string",
        },
      },
      type = "object",
    },
    MysqlProfile = {
      description = "MySQL database profile.",
      id = "MysqlProfile",
      properties = {
        hostname = {
          description = "Required. Hostname for the MySQL connection.",
          type = "string",
        },
        password = {
          description = "Required. Input only. Password for the MySQL connection.",
          type = "string",
        },
        port = {
          description = "Port for the MySQL connection, default value is 3306.",
          format = "int32",
          type = "integer",
        },
        sslConfig = {
          ["$ref"] = "MysqlSslConfig",
          description = "SSL configuration for the MySQL connection.",
        },
        username = {
          description = "Required. Username for the MySQL connection.",
          type = "string",
        },
      },
      type = "object",
    },
    MysqlRdbms = {
      description = "MySQL database structure",
      id = "MysqlRdbms",
      properties = {
        mysqlDatabases = {
          description = "Mysql databases on the server",
          items = {
            ["$ref"] = "MysqlDatabase",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MysqlSourceConfig = {
      description = "MySQL source configuration",
      id = "MysqlSourceConfig",
      properties = {
        excludeObjects = {
          ["$ref"] = "MysqlRdbms",
          description = "MySQL objects to exclude from the stream.",
        },
        includeObjects = {
          ["$ref"] = "MysqlRdbms",
          description = "MySQL objects to retrieve from the source.",
        },
        maxConcurrentCdcTasks = {
          description = "Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MysqlSslConfig = {
      description = "MySQL SSL configuration information.",
      id = "MysqlSslConfig",
      properties = {
        caCertificate = {
          description = "Input only. PEM-encoded certificate of the CA that signed the source database server's certificate.",
          type = "string",
        },
        caCertificateSet = {
          description = "Output only. Indicates whether the ca_certificate field is set.",
          readOnly = true,
          type = "boolean",
        },
        clientCertificate = {
          description = "Input only. PEM-encoded certificate that will be used by the replica to authenticate against the source database server. If this field is used then the 'client_key' and the 'ca_certificate' fields are mandatory.",
          type = "string",
        },
        clientCertificateSet = {
          description = "Output only. Indicates whether the client_certificate field is set.",
          readOnly = true,
          type = "boolean",
        },
        clientKey = {
          description = "Input only. PEM-encoded private key associated with the Client Certificate. If this field is used then the 'client_certificate' and the 'ca_certificate' fields are mandatory.",
          type = "string",
        },
        clientKeySet = {
          description = "Output only. Indicates whether the client_key field is set.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    MysqlTable = {
      description = "MySQL table.",
      id = "MysqlTable",
      properties = {
        mysqlColumns = {
          description = "MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excludes everything.",
          items = {
            ["$ref"] = "MysqlColumn",
          },
          type = "array",
        },
        table = {
          description = "Table name.",
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
        validationResult = {
          ["$ref"] = "ValidationResult",
          description = "Output only. Results of executed validations if there are any.",
          readOnly = true,
        },
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    OracleColumn = {
      description = "Oracle Column.",
      id = "OracleColumn",
      properties = {
        column = {
          description = "Column name.",
          type = "string",
        },
        dataType = {
          description = "The Oracle data type.",
          type = "string",
        },
        encoding = {
          description = "Column encoding.",
          type = "string",
        },
        length = {
          description = "Column length.",
          format = "int32",
          type = "integer",
        },
        nullable = {
          description = "Whether or not the column can accept a null value.",
          type = "boolean",
        },
        ordinalPosition = {
          description = "The ordinal position of the column in the table.",
          format = "int32",
          type = "integer",
        },
        precision = {
          description = "Column precision.",
          format = "int32",
          type = "integer",
        },
        primaryKey = {
          description = "Whether or not the column represents a primary key.",
          type = "boolean",
        },
        scale = {
          description = "Column scale.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    OracleObjectIdentifier = {
      description = "Oracle data source object identifier.",
      id = "OracleObjectIdentifier",
      properties = {
        schema = {
          description = "Required. The schema name.",
          type = "string",
        },
        table = {
          description = "Required. The table name.",
          type = "string",
        },
      },
      type = "object",
    },
    OracleProfile = {
      description = "Oracle database profile.",
      id = "OracleProfile",
      properties = {
        connectionAttributes = {
          additionalProperties = {
            type = "string",
          },
          description = "Connection string attributes",
          type = "object",
        },
        databaseService = {
          description = "Required. Database for the Oracle connection.",
          type = "string",
        },
        hostname = {
          description = "Required. Hostname for the Oracle connection.",
          type = "string",
        },
        password = {
          description = "Required. Password for the Oracle connection.",
          type = "string",
        },
        port = {
          description = "Port for the Oracle connection, default value is 1521.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Required. Username for the Oracle connection.",
          type = "string",
        },
      },
      type = "object",
    },
    OracleRdbms = {
      description = "Oracle database structure.",
      id = "OracleRdbms",
      properties = {
        oracleSchemas = {
          description = "Oracle schemas/databases in the database server.",
          items = {
            ["$ref"] = "OracleSchema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OracleSchema = {
      description = "Oracle schema.",
      id = "OracleSchema",
      properties = {
        oracleTables = {
          description = "Tables in the schema.",
          items = {
            ["$ref"] = "OracleTable",
          },
          type = "array",
        },
        schema = {
          description = "Schema name.",
          type = "string",
        },
      },
      type = "object",
    },
    OracleSourceConfig = {
      description = "Oracle data source configuration",
      id = "OracleSourceConfig",
      properties = {
        dropLargeObjects = {
          ["$ref"] = "DropLargeObjects",
          description = "Drop large object values.",
        },
        excludeObjects = {
          ["$ref"] = "OracleRdbms",
          description = "Oracle objects to exclude from the stream.",
        },
        includeObjects = {
          ["$ref"] = "OracleRdbms",
          description = "Oracle objects to include in the stream.",
        },
        maxConcurrentCdcTasks = {
          description = "Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.",
          format = "int32",
          type = "integer",
        },
        streamLargeObjects = {
          ["$ref"] = "StreamLargeObjects",
          description = "Stream large object values. NOTE: This feature is currently experimental.",
        },
      },
      type = "object",
    },
    OracleTable = {
      description = "Oracle table.",
      id = "OracleTable",
      properties = {
        oracleColumns = {
          description = "Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.",
          items = {
            ["$ref"] = "OracleColumn",
          },
          type = "array",
        },
        table = {
          description = "Table name.",
          type = "string",
        },
      },
      type = "object",
    },
    PostgresqlColumn = {
      description = "PostgreSQL Column.",
      id = "PostgresqlColumn",
      properties = {
        column = {
          description = "Column name.",
          type = "string",
        },
        dataType = {
          description = "The PostgreSQL data type.",
          type = "string",
        },
        length = {
          description = "Column length.",
          format = "int32",
          type = "integer",
        },
        nullable = {
          description = "Whether or not the column can accept a null value.",
          type = "boolean",
        },
        ordinalPosition = {
          description = "The ordinal position of the column in the table.",
          format = "int32",
          type = "integer",
        },
        precision = {
          description = "Column precision.",
          format = "int32",
          type = "integer",
        },
        primaryKey = {
          description = "Whether or not the column represents a primary key.",
          type = "boolean",
        },
        scale = {
          description = "Column scale.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PostgresqlObjectIdentifier = {
      description = "PostgreSQL data source object identifier.",
      id = "PostgresqlObjectIdentifier",
      properties = {
        schema = {
          description = "Required. The schema name.",
          type = "string",
        },
        table = {
          description = "Required. The table name.",
          type = "string",
        },
      },
      type = "object",
    },
    PostgresqlProfile = {
      description = "PostgreSQL database profile.",
      id = "PostgresqlProfile",
      properties = {
        database = {
          description = "Required. Database for the PostgreSQL connection.",
          type = "string",
        },
        hostname = {
          description = "Required. Hostname for the PostgreSQL connection.",
          type = "string",
        },
        password = {
          description = "Required. Password for the PostgreSQL connection.",
          type = "string",
        },
        port = {
          description = "Port for the PostgreSQL connection, default value is 5432.",
          format = "int32",
          type = "integer",
        },
        username = {
          description = "Required. Username for the PostgreSQL connection.",
          type = "string",
        },
      },
      type = "object",
    },
    PostgresqlRdbms = {
      description = "PostgreSQL database structure.",
      id = "PostgresqlRdbms",
      properties = {
        postgresqlSchemas = {
          description = "PostgreSQL schemas in the database server.",
          items = {
            ["$ref"] = "PostgresqlSchema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PostgresqlSchema = {
      description = "PostgreSQL schema.",
      id = "PostgresqlSchema",
      properties = {
        postgresqlTables = {
          description = "Tables in the schema.",
          items = {
            ["$ref"] = "PostgresqlTable",
          },
          type = "array",
        },
        schema = {
          description = "Schema name.",
          type = "string",
        },
      },
      type = "object",
    },
    PostgresqlSourceConfig = {
      description = "PostgreSQL data source configuration",
      id = "PostgresqlSourceConfig",
      properties = {
        excludeObjects = {
          ["$ref"] = "PostgresqlRdbms",
          description = "PostgreSQL objects to exclude from the stream.",
        },
        includeObjects = {
          ["$ref"] = "PostgresqlRdbms",
          description = "PostgreSQL objects to include in the stream.",
        },
        publication = {
          description = "Required. The name of the publication that includes the set of all tables that are defined in the stream's include_objects.",
          type = "string",
        },
        replicationSlot = {
          description = "Required. Immutable. The name of the logical replication slot that's configured with the pgoutput plugin.",
          type = "string",
        },
      },
      type = "object",
    },
    PostgresqlTable = {
      description = "PostgreSQL table.",
      id = "PostgresqlTable",
      properties = {
        postgresqlColumns = {
          description = "PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/excludes everything.",
          items = {
            ["$ref"] = "PostgresqlColumn",
          },
          type = "array",
        },
        table = {
          description = "Table name.",
          type = "string",
        },
      },
      type = "object",
    },
    PrivateConnection = {
      description = "The PrivateConnection resource is used to establish private connectivity between Datastream and a customer's network.",
      id = "PrivateConnection",
      properties = {
        createTime = {
          description = "Output only. The create time of the resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. Display name.",
          type = "string",
        },
        error = {
          ["$ref"] = "Error",
          description = "Output only. In case of error, the details of the error in a user-friendly format.",
          readOnly = true,
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels.",
          type = "object",
        },
        name = {
          description = "Output only. The resource's name.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The state of the Private Connection.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "CREATED",
            "FAILED",
            "DELETING",
            "FAILED_TO_DELETE",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The private connection is in creation state - creating resources.",
            "The private connection has been created with all of its resources.",
            "The private connection creation has failed.",
            "The private connection is being deleted.",
            "Delete request has failed, resource is in invalid state.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The update time of the resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        vpcPeeringConfig = {
          ["$ref"] = "VpcPeeringConfig",
          description = "VPC Peering Config.",
        },
      },
      type = "object",
    },
    PrivateConnectivity = {
      description = "Private Connectivity",
      id = "PrivateConnectivity",
      properties = {
        privateConnection = {
          description = "Required. A reference to a private connection resource. Format: `projects/{project}/locations/{location}/privateConnections/{name}`",
          type = "string",
        },
      },
      type = "object",
    },
    Route = {
      description = "The route resource is the child of the private connection resource, used for defining a route for a private connection.",
      id = "Route",
      properties = {
        createTime = {
          description = "Output only. The create time of the resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        destinationAddress = {
          description = "Required. Destination address for connection",
          type = "string",
        },
        destinationPort = {
          description = "Destination port for connection",
          format = "int32",
          type = "integer",
        },
        displayName = {
          description = "Required. Display name.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels.",
          type = "object",
        },
        name = {
          description = "Output only. The resource's name.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The update time of the resource.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SingleTargetDataset = {
      description = "A single target dataset to which all data will be streamed.",
      id = "SingleTargetDataset",
      properties = {
        datasetId = {
          description = "The dataset ID of the target dataset.",
          type = "string",
        },
      },
      type = "object",
    },
    SourceConfig = {
      description = "The configuration of the stream source.",
      id = "SourceConfig",
      properties = {
        mysqlSourceConfig = {
          ["$ref"] = "MysqlSourceConfig",
          description = "MySQL data source configuration.",
        },
        oracleSourceConfig = {
          ["$ref"] = "OracleSourceConfig",
          description = "Oracle data source configuration.",
        },
        postgresqlSourceConfig = {
          ["$ref"] = "PostgresqlSourceConfig",
          description = "PostgreSQL data source configuration.",
        },
        sourceConnectionProfile = {
          description = "Required. Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`",
          type = "string",
        },
      },
      type = "object",
    },
    SourceHierarchyDatasets = {
      description = "Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.",
      id = "SourceHierarchyDatasets",
      properties = {
        datasetTemplate = {
          ["$ref"] = "DatasetTemplate",
        },
      },
      type = "object",
    },
    SourceObjectIdentifier = {
      description = "Represents an identifier of an object in the data source.",
      id = "SourceObjectIdentifier",
      properties = {
        mysqlIdentifier = {
          ["$ref"] = "MysqlObjectIdentifier",
          description = "Mysql data source object identifier.",
        },
        oracleIdentifier = {
          ["$ref"] = "OracleObjectIdentifier",
          description = "Oracle data source object identifier.",
        },
        postgresqlIdentifier = {
          ["$ref"] = "PostgresqlObjectIdentifier",
          description = "PostgreSQL data source object identifier.",
        },
      },
      type = "object",
    },
    StartBackfillJobRequest = {
      description = "Request for manually initiating a backfill job for a specific stream object.",
      id = "StartBackfillJobRequest",
      properties = {},
      type = "object",
    },
    StartBackfillJobResponse = {
      description = "Response for manually initiating a backfill job for a specific stream object.",
      id = "StartBackfillJobResponse",
      properties = {
        object = {
          ["$ref"] = "StreamObject",
          description = "The stream object resource a backfill job was started for.",
        },
      },
      type = "object",
    },
    StaticServiceIpConnectivity = {
      description = "Static IP address connectivity.",
      id = "StaticServiceIpConnectivity",
      properties = {},
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
    StopBackfillJobRequest = {
      description = "Request for manually stopping a running backfill job for a specific stream object.",
      id = "StopBackfillJobRequest",
      properties = {},
      type = "object",
    },
    StopBackfillJobResponse = {
      description = "Response for manually stop a backfill job for a specific stream object.",
      id = "StopBackfillJobResponse",
      properties = {
        object = {
          ["$ref"] = "StreamObject",
          description = "The stream object resource the backfill job was stopped for.",
        },
      },
      type = "object",
    },
    Stream = {
      description = "A resource representing streaming data from a source to a destination.",
      id = "Stream",
      properties = {
        backfillAll = {
          ["$ref"] = "BackfillAllStrategy",
          description = "Automatically backfill objects included in the stream source configuration. Specific objects can be excluded.",
        },
        backfillNone = {
          ["$ref"] = "BackfillNoneStrategy",
          description = "Do not automatically backfill any objects.",
        },
        createTime = {
          description = "Output only. The creation time of the stream.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        customerManagedEncryptionKey = {
          description = "Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data. If left blank, data will be encrypted using an internal Stream-specific encryption key provisioned through KMS.",
          type = "string",
        },
        destinationConfig = {
          ["$ref"] = "DestinationConfig",
          description = "Required. Destination connection profile configuration.",
        },
        displayName = {
          description = "Required. Display name.",
          type = "string",
        },
        errors = {
          description = "Output only. Errors on the Stream.",
          items = {
            ["$ref"] = "Error",
          },
          readOnly = true,
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels.",
          type = "object",
        },
        name = {
          description = "Output only. The stream's name.",
          readOnly = true,
          type = "string",
        },
        sourceConfig = {
          ["$ref"] = "SourceConfig",
          description = "Required. Source connection profile configuration.",
        },
        state = {
          description = "The state of the stream.",
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_STARTED",
            "RUNNING",
            "PAUSED",
            "MAINTENANCE",
            "FAILED",
            "FAILED_PERMANENTLY",
            "STARTING",
            "DRAINING",
          },
          enumDescriptions = {
            "Unspecified stream state.",
            "The stream has been created but has not yet started streaming data.",
            "The stream is running.",
            "The stream is paused.",
            "The stream is in maintenance mode. Updates are rejected on the resource in this state.",
            "The stream is experiencing an error that is preventing data from being streamed.",
            "The stream has experienced a terminal failure.",
            "The stream is starting, but not yet running.",
            "The Stream is no longer reading new events, but still writing events in the buffer.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update time of the stream.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    StreamLargeObjects = {
      description = "Configuration to stream large object values.",
      id = "StreamLargeObjects",
      properties = {},
      type = "object",
    },
    StreamObject = {
      description = "A specific stream object (e.g a specific DB table).",
      id = "StreamObject",
      properties = {
        backfillJob = {
          ["$ref"] = "BackfillJob",
          description = "The latest backfill job that was initiated for the stream object.",
        },
        createTime = {
          description = "Output only. The creation time of the object.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. Display name.",
          type = "string",
        },
        errors = {
          description = "Output only. Active errors on the object.",
          items = {
            ["$ref"] = "Error",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Output only. The object resource's name.",
          readOnly = true,
          type = "string",
        },
        sourceObject = {
          ["$ref"] = "SourceObjectIdentifier",
          description = "The object identifier in the data source.",
        },
        updateTime = {
          description = "Output only. The last update time of the object.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Validation = {
      description = "A validation to perform on a stream.",
      id = "Validation",
      properties = {
        code = {
          description = "A custom code identifying this validation.",
          type = "string",
        },
        description = {
          description = "A short description of the validation.",
          type = "string",
        },
        message = {
          description = "Messages reflecting the validation results.",
          items = {
            ["$ref"] = "ValidationMessage",
          },
          type = "array",
        },
        state = {
          description = "Validation execution status.",
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_EXECUTED",
            "FAILED",
            "PASSED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Validation did not execute.",
            "Validation failed.",
            "Validation passed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ValidationMessage = {
      description = "Represent user-facing validation result message.",
      id = "ValidationMessage",
      properties = {
        code = {
          description = "A custom code identifying this specific message.",
          type = "string",
        },
        level = {
          description = "Message severity level (warning or error).",
          enum = {
            "LEVEL_UNSPECIFIED",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "Unspecified level.",
            "Potentially cause issues with the Stream.",
            "Definitely cause issues with the Stream.",
          },
          type = "string",
        },
        message = {
          description = "The result of the validation.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional metadata related to the result.",
          type = "object",
        },
      },
      type = "object",
    },
    ValidationResult = {
      description = "Contains the current validation results.",
      id = "ValidationResult",
      properties = {
        validations = {
          description = "A list of validations (includes both executed as well as not executed validations).",
          items = {
            ["$ref"] = "Validation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VpcPeeringConfig = {
      description = "The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.",
      id = "VpcPeeringConfig",
      properties = {
        subnet = {
          description = "Required. A free subnet for peering. (CIDR of /29)",
          type = "string",
        },
        vpc = {
          description = "Required. Fully qualified name of the VPC that Datastream will peer to. Format: `projects/{project}/global/{networks}/{name}`",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Datastream API",
  version = "v1",
  version_module = true,
}