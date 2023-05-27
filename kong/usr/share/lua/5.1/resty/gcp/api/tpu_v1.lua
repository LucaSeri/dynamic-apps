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
  baseUrl = "https://tpu.googleapis.com/",
  batchPath = "batch",
  canonicalName = "TPU",
  description = "TPU API provides customers with access to Google TPU technology.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/tpu/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "tpu:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://tpu.mtls.googleapis.com/",
  name = "tpu",
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
              id = "tpu.projects.locations.get",
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
              id = "tpu.projects.locations.list",
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
            acceleratorTypes = {
              methods = {
                get = {
                  description = "Gets AcceleratorType.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/acceleratorTypes/{acceleratorTypesId}",
                  httpMethod = "GET",
                  id = "tpu.projects.locations.acceleratorTypes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/acceleratorTypes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "AcceleratorType",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists accelerator types supported by this API.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/acceleratorTypes",
                  httpMethod = "GET",
                  id = "tpu.projects.locations.acceleratorTypes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort results.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/acceleratorTypes",
                  response = {
                    ["$ref"] = "ListAcceleratorTypesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            nodes = {
              methods = {
                create = {
                  description = "Creates a node.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/nodes",
                  httpMethod = "POST",
                  id = "tpu.projects.locations.nodes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    nodeId = {
                      description = "The unqualified resource name.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/nodes",
                  request = {
                    ["$ref"] = "Node",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a node.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}",
                  httpMethod = "DELETE",
                  id = "tpu.projects.locations.nodes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$",
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
                  description = "Gets the details of a node.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}",
                  httpMethod = "GET",
                  id = "tpu.projects.locations.nodes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Node",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists nodes.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/nodes",
                  httpMethod = "GET",
                  id = "tpu.projects.locations.nodes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/nodes",
                  response = {
                    ["$ref"] = "ListNodesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                reimage = {
                  description = "Reimages a node's OS.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}:reimage",
                  httpMethod = "POST",
                  id = "tpu.projects.locations.nodes.reimage",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:reimage",
                  request = {
                    ["$ref"] = "ReimageNodeRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                start = {
                  description = "Starts a node.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}:start",
                  httpMethod = "POST",
                  id = "tpu.projects.locations.nodes.start",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:start",
                  request = {
                    ["$ref"] = "StartNodeRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                stop = {
                  description = "Stops a node, this operation is only available with single TPU nodes.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/nodes/{nodesId}:stop",
                  httpMethod = "POST",
                  id = "tpu.projects.locations.nodes.stop",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/nodes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:stop",
                  request = {
                    ["$ref"] = "StopNodeRequest",
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
                  id = "tpu.projects.locations.operations.cancel",
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
                  id = "tpu.projects.locations.operations.delete",
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
                  id = "tpu.projects.locations.operations.get",
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
                  id = "tpu.projects.locations.operations.list",
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
            tensorflowVersions = {
              methods = {
                get = {
                  description = "Gets TensorFlow Version.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tensorflowVersions/{tensorflowVersionsId}",
                  httpMethod = "GET",
                  id = "tpu.projects.locations.tensorflowVersions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/tensorflowVersions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "TensorFlowVersion",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List TensorFlow versions supported by this API.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/tensorflowVersions",
                  httpMethod = "GET",
                  id = "tpu.projects.locations.tensorflowVersions.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort results.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/tensorflowVersions",
                  response = {
                    ["$ref"] = "ListTensorFlowVersionsResponse",
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
  rootUrl = "https://tpu.googleapis.com/",
  schemas = {
    AcceleratorType = {
      description = "A accelerator type that a Node can be configured with.",
      id = "AcceleratorType",
      properties = {
        name = {
          description = "The resource name.",
          type = "string",
        },
        type = {
          description = "the accelerator type.",
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
    ListAcceleratorTypesResponse = {
      description = "Response for ListAcceleratorTypes.",
      id = "ListAcceleratorTypesResponse",
      properties = {
        acceleratorTypes = {
          description = "The listed nodes.",
          items = {
            ["$ref"] = "AcceleratorType",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The next page token or empty if none.",
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
    ListNodesResponse = {
      description = "Response for ListNodes.",
      id = "ListNodesResponse",
      properties = {
        nextPageToken = {
          description = "The next page token or empty if none.",
          type = "string",
        },
        nodes = {
          description = "The listed nodes.",
          items = {
            ["$ref"] = "Node",
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
    ListTensorFlowVersionsResponse = {
      description = "Response for ListTensorFlowVersions.",
      id = "ListTensorFlowVersionsResponse",
      properties = {
        nextPageToken = {
          description = "The next page token or empty if none.",
          type = "string",
        },
        tensorflowVersions = {
          description = "The listed nodes.",
          items = {
            ["$ref"] = "TensorFlowVersion",
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
    NetworkEndpoint = {
      description = "A network endpoint over which a TPU worker can be reached.",
      id = "NetworkEndpoint",
      properties = {
        ipAddress = {
          description = "The IP address of this network endpoint.",
          type = "string",
        },
        port = {
          description = "The port of this network endpoint.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Node = {
      description = "A TPU instance.",
      id = "Node",
      properties = {
        acceleratorType = {
          description = "Required. The type of hardware accelerators associated with this node.",
          type = "string",
        },
        apiVersion = {
          description = "Output only. The API version that created this Node.",
          enum = {
            "API_VERSION_UNSPECIFIED",
            "V1_ALPHA1",
            "V1",
            "V2_ALPHA1",
          },
          enumDescriptions = {
            "API version is unknown.",
            "TPU API V1Alpha1 version.",
            "TPU API V1 version.",
            "TPU API V2Alpha1 version.",
          },
          readOnly = true,
          type = "string",
        },
        cidrBlock = {
          description = "The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a /29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user's provided network, or the provided network is peered with another network that is using that CIDR block.",
          type = "string",
        },
        createTime = {
          description = "Output only. The time when the node was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The user-supplied description of the TPU. Maximum of 512 characters.",
          type = "string",
        },
        health = {
          description = "The health status of the TPU node.",
          enum = {
            "HEALTH_UNSPECIFIED",
            "HEALTHY",
            "DEPRECATED_UNHEALTHY",
            "TIMEOUT",
            "UNHEALTHY_TENSORFLOW",
            "UNHEALTHY_MAINTENANCE",
          },
          enumDescriptions = {
            "Health status is unknown: not initialized or failed to retrieve.",
            "The resource is healthy.",
            "The resource is unhealthy.",
            "The resource is unresponsive.",
            "The in-guest ML stack is unhealthy.",
            "The node is under maintenance/priority boost caused rescheduling and will resume running once rescheduled.",
          },
          type = "string",
        },
        healthDescription = {
          description = "Output only. If this field is populated, it contains a description of why the TPU Node is unhealthy.",
          readOnly = true,
          type = "string",
        },
        ipAddress = {
          description = "Output only. DEPRECATED! Use network_endpoints instead. The network address for the TPU Node as visible to Compute Engine instances.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Resource labels to represent user-provided metadata.",
          type = "object",
        },
        name = {
          description = "Output only. Immutable. The name of the TPU",
          readOnly = true,
          type = "string",
        },
        network = {
          description = "The name of a network they wish to peer the TPU node to. It must be a preexisting Compute Engine network inside of the project on which this API has been activated. If none is provided, \"default\" will be used.",
          type = "string",
        },
        networkEndpoints = {
          description = "Output only. The network endpoints where TPU workers can be accessed and sent work. It is recommended that Tensorflow clients of the node reach out to the 0th entry in this map first.",
          items = {
            ["$ref"] = "NetworkEndpoint",
          },
          readOnly = true,
          type = "array",
        },
        port = {
          description = "Output only. DEPRECATED! Use network_endpoints instead. The network port for the TPU Node as visible to Compute Engine instances.",
          type = "string",
        },
        schedulingConfig = {
          ["$ref"] = "SchedulingConfig",
          description = "The scheduling options for this node.",
        },
        serviceAccount = {
          description = "Output only. The service account used to run the tensor flow services within the node. To share resources, including Google Cloud Storage data, with the Tensorflow job running in the Node, this account must have permissions to that data.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state for the TPU Node.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "RESTARTING",
            "REIMAGING",
            "DELETING",
            "REPAIRING",
            "STOPPED",
            "STOPPING",
            "STARTING",
            "PREEMPTED",
            "TERMINATED",
            "HIDING",
            "HIDDEN",
            "UNHIDING",
          },
          enumDescriptions = {
            "TPU node state is not known/set.",
            "TPU node is being created.",
            "TPU node has been created.",
            "TPU node is restarting.",
            "TPU node is undergoing reimaging.",
            "TPU node is being deleted.",
            "TPU node is being repaired and may be unusable. Details can be found in the `help_description` field.",
            "TPU node is stopped.",
            "TPU node is currently stopping.",
            "TPU node is currently starting.",
            "TPU node has been preempted. Only applies to Preemptible TPU Nodes.",
            "TPU node has been terminated due to maintenance or has reached the end of its life cycle (for preemptible nodes).",
            "TPU node is currently hiding.",
            "TPU node has been hidden.",
            "TPU node is currently unhiding.",
          },
          readOnly = true,
          type = "string",
        },
        symptoms = {
          description = "Output only. The Symptoms that have occurred to the TPU Node.",
          items = {
            ["$ref"] = "Symptom",
          },
          readOnly = true,
          type = "array",
        },
        tensorflowVersion = {
          description = "Required. The version of Tensorflow running in the Node.",
          type = "string",
        },
        useServiceNetworking = {
          description = "Whether the VPC peering for the node is set up through Service Networking API. The VPC Peering should be set up before provisioning the node. If this field is set, cidr_block field should not be specified. If the network, that you want to peer the TPU Node to, is Shared VPC networks, the node must be created with this this field enabled.",
          type = "boolean",
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
      description = "Metadata describing an Operation",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "API version.",
          type = "string",
        },
        cancelRequested = {
          description = "Specifies if cancellation was requested for the operation.",
          type = "boolean",
        },
        createTime = {
          description = "The time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time the operation finished running.",
          format = "google-datetime",
          type = "string",
        },
        statusDetail = {
          description = "Human-readable status of the operation, if any.",
          type = "string",
        },
        target = {
          description = "Target of the operation - for example projects/project-1/connectivityTests/test-1",
          type = "string",
        },
        verb = {
          description = "Name of the verb executed by the operation.",
          type = "string",
        },
      },
      type = "object",
    },
    ReimageNodeRequest = {
      description = "Request for ReimageNode.",
      id = "ReimageNodeRequest",
      properties = {
        tensorflowVersion = {
          description = "The version for reimage to create.",
          type = "string",
        },
      },
      type = "object",
    },
    SchedulingConfig = {
      description = "Sets the scheduling options for this node.",
      id = "SchedulingConfig",
      properties = {
        preemptible = {
          description = "Defines whether the node is preemptible.",
          type = "boolean",
        },
        reserved = {
          description = "Whether the node is created under a reservation.",
          type = "boolean",
        },
      },
      type = "object",
    },
    StartNodeRequest = {
      description = "Request for StartNode.",
      id = "StartNodeRequest",
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
    StopNodeRequest = {
      description = "Request for StopNode.",
      id = "StopNodeRequest",
      properties = {},
      type = "object",
    },
    Symptom = {
      description = "A Symptom instance.",
      id = "Symptom",
      properties = {
        createTime = {
          description = "Timestamp when the Symptom is created.",
          format = "google-datetime",
          type = "string",
        },
        details = {
          description = "Detailed information of the current Symptom.",
          type = "string",
        },
        symptomType = {
          description = "Type of the Symptom.",
          enum = {
            "SYMPTOM_TYPE_UNSPECIFIED",
            "LOW_MEMORY",
            "OUT_OF_MEMORY",
            "EXECUTE_TIMED_OUT",
            "MESH_BUILD_FAIL",
            "HBM_OUT_OF_MEMORY",
            "PROJECT_ABUSE",
          },
          enumDescriptions = {
            "Unspecified symptom.",
            "TPU VM memory is low.",
            "TPU runtime is out of memory.",
            "TPU runtime execution has timed out.",
            "TPU runtime fails to construct a mesh that recognizes each TPU device's neighbors.",
            "TPU HBM is out of memory.",
            "Abusive behaviors have been identified on the current project.",
          },
          type = "string",
        },
        workerId = {
          description = "A string used to uniquely distinguish a worker within a TPU node.",
          type = "string",
        },
      },
      type = "object",
    },
    TensorFlowVersion = {
      description = "A tensorflow version that a Node can be configured with.",
      id = "TensorFlowVersion",
      properties = {
        name = {
          description = "The resource name.",
          type = "string",
        },
        version = {
          description = "the tensorflow version.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud TPU API",
  version = "v1",
  version_module = true,
}
