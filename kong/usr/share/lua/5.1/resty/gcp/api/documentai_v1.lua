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
  baseUrl = "https://documentai.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Document",
  description = "Service to parse structured information from unstructured or semi-structured documents using state-of-the-art Google AI such as natural language, computer vision, translation, and AutoML.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/document-ai/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "documentai:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://documentai.mtls.googleapis.com/",
  name = "documentai",
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
        delete = {
          description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "DELETE",
          id = "documentai.operations.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be deleted.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleProtobufEmpty",
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
            fetchProcessorTypes = {
              description = "Fetches processor types. Note that we do not use ListProcessorTypes here because it is not paginated.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}:fetchProcessorTypes",
              httpMethod = "GET",
              id = "documentai.projects.locations.fetchProcessorTypes",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The project of processor type to list. The available processor types may depend on the allow-listing on projects. Format: `projects/{project}/locations/{location}`",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:fetchProcessorTypes",
              response = {
                ["$ref"] = "GoogleCloudDocumentaiV1FetchProcessorTypesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "documentai.projects.locations.get",
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
                ["$ref"] = "GoogleCloudLocationLocation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "documentai.projects.locations.list",
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
                ["$ref"] = "GoogleCloudLocationListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "documentai.projects.locations.operations.cancel",
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
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "documentai.projects.locations.operations.get",
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
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "documentai.projects.locations.operations.list",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/operations$",
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
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            processorTypes = {
              methods = {
                get = {
                  description = "Gets a processor type detail.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processorTypes/{processorTypesId}",
                  httpMethod = "GET",
                  id = "documentai.projects.locations.processorTypes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The processor type resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/processorTypes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDocumentaiV1ProcessorType",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists the processor types that exist.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processorTypes",
                  httpMethod = "GET",
                  id = "documentai.projects.locations.processorTypes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of processor types to return. If unspecified, at most 100 processor types will be returned. The maximum value is 500; values above 500 will be coerced to 500.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Used to retrieve the next page of results, empty if at the end of the list.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location of processor type to list. The available processor types may depend on the allow-listing on projects. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/processorTypes",
                  response = {
                    ["$ref"] = "GoogleCloudDocumentaiV1ListProcessorTypesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            processors = {
              methods = {
                batchProcess = {
                  description = "LRO endpoint to batch process many documents. The output is written to Cloud Storage as JSON in the [Document] format.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}:batchProcess",
                  httpMethod = "POST",
                  id = "documentai.projects.locations.processors.batchProcess",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of Processor or ProcessorVersion. Format: `projects/{project}/locations/{location}/processors/{processor}`, or `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:batchProcess",
                  request = {
                    ["$ref"] = "GoogleCloudDocumentaiV1BatchProcessRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a processor from the type processor that the user chose. The processor will be at \"ENABLED\" state by default after its creation.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors",
                  httpMethod = "POST",
                  id = "documentai.projects.locations.processors.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent (project and location) under which to create the processor. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/processors",
                  request = {
                    ["$ref"] = "GoogleCloudDocumentaiV1Processor",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDocumentaiV1Processor",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the processor, unloads all deployed model artifacts if it was enabled and then deletes all artifacts associated with this processor.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}",
                  httpMethod = "DELETE",
                  id = "documentai.projects.locations.processors.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The processor resource name to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                disable = {
                  description = "Disables a processor",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}:disable",
                  httpMethod = "POST",
                  id = "documentai.projects.locations.processors.disable",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The processor resource name to be disabled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:disable",
                  request = {
                    ["$ref"] = "GoogleCloudDocumentaiV1DisableProcessorRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                enable = {
                  description = "Enables a processor",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}:enable",
                  httpMethod = "POST",
                  id = "documentai.projects.locations.processors.enable",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The processor resource name to be enabled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:enable",
                  request = {
                    ["$ref"] = "GoogleCloudDocumentaiV1EnableProcessorRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a processor detail.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}",
                  httpMethod = "GET",
                  id = "documentai.projects.locations.processors.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The processor resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDocumentaiV1Processor",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all processors which belong to this project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors",
                  httpMethod = "GET",
                  id = "documentai.projects.locations.processors.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of processors to return. If unspecified, at most 50 processors will be returned. The maximum value is 100; values above 100 will be coerced to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "We will return the processors sorted by creation time. The page token will point to the next processor.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent (project and location) which owns this collection of Processors. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/processors",
                  response = {
                    ["$ref"] = "GoogleCloudDocumentaiV1ListProcessorsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                process = {
                  description = "Processes a single document.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}:process",
                  httpMethod = "POST",
                  id = "documentai.projects.locations.processors.process",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the Processor or ProcessorVersion to use for processing. If a Processor is specified, the server will use its default version. Format: `projects/{project}/locations/{location}/processors/{processor}`, or `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:process",
                  request = {
                    ["$ref"] = "GoogleCloudDocumentaiV1ProcessRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDocumentaiV1ProcessResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setDefaultProcessorVersion = {
                  description = "Set the default (active) version of a Processor that will be used in ProcessDocument and BatchProcessDocuments.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}:setDefaultProcessorVersion",
                  httpMethod = "POST",
                  id = "documentai.projects.locations.processors.setDefaultProcessorVersion",
                  parameterOrder = {
                    "processor",
                  },
                  parameters = {
                    processor = {
                      description = "Required. The resource name of the Processor to change default version.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+processor}:setDefaultProcessorVersion",
                  request = {
                    ["$ref"] = "GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                humanReviewConfig = {
                  methods = {
                    reviewDocument = {
                      description = "Send a document for Human Review. The input document should be processed by the specified processor.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}/humanReviewConfig:reviewDocument",
                      httpMethod = "POST",
                      id = "documentai.projects.locations.processors.humanReviewConfig.reviewDocument",
                      parameterOrder = {
                        "humanReviewConfig",
                      },
                      parameters = {
                        humanReviewConfig = {
                          description = "Required. The resource name of the HumanReviewConfig that the document will be reviewed with.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+/humanReviewConfig$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+humanReviewConfig}:reviewDocument",
                      request = {
                        ["$ref"] = "GoogleCloudDocumentaiV1ReviewDocumentRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                processorVersions = {
                  methods = {
                    batchProcess = {
                      description = "LRO endpoint to batch process many documents. The output is written to Cloud Storage as JSON in the [Document] format.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}/processorVersions/{processorVersionsId}:batchProcess",
                      httpMethod = "POST",
                      id = "documentai.projects.locations.processors.processorVersions.batchProcess",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of Processor or ProcessorVersion. Format: `projects/{project}/locations/{location}/processors/{processor}`, or `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+/processorVersions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:batchProcess",
                      request = {
                        ["$ref"] = "GoogleCloudDocumentaiV1BatchProcessRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes the processor version, all artifacts under the processor version will be deleted.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}/processorVersions/{processorVersionsId}",
                      httpMethod = "DELETE",
                      id = "documentai.projects.locations.processors.processorVersions.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The processor version resource name to be deleted.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+/processorVersions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    deploy = {
                      description = "Deploys the processor version.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}/processorVersions/{processorVersionsId}:deploy",
                      httpMethod = "POST",
                      id = "documentai.projects.locations.processors.processorVersions.deploy",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The processor version resource name to be deployed.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+/processorVersions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:deploy",
                      request = {
                        ["$ref"] = "GoogleCloudDocumentaiV1DeployProcessorVersionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets a processor version detail.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}/processorVersions/{processorVersionsId}",
                      httpMethod = "GET",
                      id = "documentai.projects.locations.processors.processorVersions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The processor resource name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+/processorVersions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDocumentaiV1ProcessorVersion",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists all versions of a processor.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}/processorVersions",
                      httpMethod = "GET",
                      id = "documentai.projects.locations.processors.processorVersions.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of processor versions to return. If unspecified, at most 10 processor versions will be returned. The maximum value is 20; values above 20 will be coerced to 20.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "We will return the processor versions sorted by creation time. The page token will point to the next processor version.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent (project, location and processor) to list all versions. Format: `projects/{project}/locations/{location}/processors/{processor}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/processorVersions",
                      response = {
                        ["$ref"] = "GoogleCloudDocumentaiV1ListProcessorVersionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    process = {
                      description = "Processes a single document.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}/processorVersions/{processorVersionsId}:process",
                      httpMethod = "POST",
                      id = "documentai.projects.locations.processors.processorVersions.process",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the Processor or ProcessorVersion to use for processing. If a Processor is specified, the server will use its default version. Format: `projects/{project}/locations/{location}/processors/{processor}`, or `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+/processorVersions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:process",
                      request = {
                        ["$ref"] = "GoogleCloudDocumentaiV1ProcessRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDocumentaiV1ProcessResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    undeploy = {
                      description = "Undeploys the processor version.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/processors/{processorsId}/processorVersions/{processorVersionsId}:undeploy",
                      httpMethod = "POST",
                      id = "documentai.projects.locations.processors.processorVersions.undeploy",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The processor version resource name to be undeployed.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/processors/[^/]+/processorVersions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:undeploy",
                      request = {
                        ["$ref"] = "GoogleCloudDocumentaiV1UndeployProcessorVersionRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
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
        operations = {
          methods = {
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "documentai.projects.operations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource.",
                  location = "path",
                  pattern = "^projects/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
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
  revision = "20230106",
  rootUrl = "https://documentai.googleapis.com/",
  schemas = {
    GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata = {
      id = "GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        errorDocumentCount = {
          description = "Total number of documents that failed to be deleted in storage.",
          format = "int32",
          type = "integer",
        },
        individualBatchDeleteStatuses = {
          description = "The list of response details of each document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus",
          },
          type = "array",
        },
        totalDocumentCount = {
          description = "Total number of documents deleting from dataset.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus = {
      description = "The status of each individual document in the batch delete process.",
      id = "GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus",
      properties = {
        documentId = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3DocumentId",
          description = "The document id of the document.",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status of deleting the document in storage.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse = {
      description = "Response of the delete documents operation.",
      id = "GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata = {
      id = "GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        destDatasetType = {
          description = "The destination dataset split type.",
          enum = {
            "DATASET_SPLIT_TYPE_UNSPECIFIED",
            "DATASET_SPLIT_TRAIN",
            "DATASET_SPLIT_TEST",
            "DATASET_SPLIT_UNASSIGNED",
          },
          enumDescriptions = {
            "Default value if the enum is not set. go/protodosdonts#do-include-an-unspecified-value-in-an-enum",
            "Identifies the train documents.",
            "Identifies the test documents.",
            "Identifies the unassigned documents.",
          },
          type = "string",
        },
        destSplitType = {
          description = "The destination dataset split type.",
          enum = {
            "DATASET_SPLIT_TYPE_UNSPECIFIED",
            "DATASET_SPLIT_TRAIN",
            "DATASET_SPLIT_TEST",
            "DATASET_SPLIT_UNASSIGNED",
          },
          enumDescriptions = {
            "Default value if the enum is not set. go/protodosdonts#do-include-an-unspecified-value-in-an-enum",
            "Identifies the train documents.",
            "Identifies the test documents.",
            "Identifies the unassigned documents.",
          },
          type = "string",
        },
        individualBatchMoveStatuses = {
          description = "The list of response details of each document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus = {
      description = "The status of each individual document in the batch move process.",
      id = "GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus",
      properties = {
        documentId = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3DocumentId",
          description = "The document id of the document.",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status of moving the document.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse = {
      description = "Response of the batch move documents operation.",
      id = "GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata = {
      description = "The common metadata for long running operations.",
      id = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
      properties = {
        createTime = {
          description = "The creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        resource = {
          description = "A related resource to this operation.",
          type = "string",
        },
        state = {
          description = "The state of the operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "CANCELLING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Operation is still running.",
            "Operation is being cancelled.",
            "Operation succeeded.",
            "Operation failed.",
            "Operation is cancelled.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing.",
          type = "string",
        },
        updateTime = {
          description = "The last update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata = {
      description = "The long running operation metadata for CreateLabelerPool.",
      id = "GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DeleteDataLabelingJobOperationMetadata = {
      description = "The long running operation metadata for DeleteDataLabelingJob.",
      id = "GoogleCloudDocumentaiUiv1beta3DeleteDataLabelingJobOperationMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata = {
      description = "The long running operation metadata for DeleteLabelerPool.",
      id = "GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata = {
      description = "The long running operation metadata for delete processor method.",
      id = "GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata = {
      description = "The long running operation metadata for delete processor version method.",
      id = "GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata = {
      description = "The long running operation metadata for deploy processor version method.",
      id = "GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse = {
      description = "Response message for the deploy processor version method.",
      id = "GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata = {
      description = "The long running operation metadata for disable processor method.",
      id = "GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse = {
      description = "Response message for the disable processor method. Intentionally empty proto for adding fields in future.",
      id = "GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DocumentId = {
      description = "Document Identifier.",
      id = "GoogleCloudDocumentaiUiv1beta3DocumentId",
      properties = {
        gcsManagedDocId = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3DocumentIdGCSManagedDocumentId",
        },
        revisionReference = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3RevisionReference",
          description = "Points to a specific revision of the document if set.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3DocumentIdGCSManagedDocumentId = {
      description = "Identifies a document uniquely within the scope of a dataset in the Cloud Storage option.",
      id = "GoogleCloudDocumentaiUiv1beta3DocumentIdGCSManagedDocumentId",
      properties = {
        cwDocId = {
          description = "Id of the document (indexed) managed by Content Warehouse.",
          type = "string",
        },
        gcsUri = {
          description = "Required. The Cloud Storage uri where the actual document is stored.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata = {
      description = "The long running operation metadata for enable processor method.",
      id = "GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse = {
      description = "Response message for the enable processor method. Intentionally empty proto for adding fields in future.",
      id = "GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata = {
      description = "Metadata of the EvaluateProcessorVersion method.",
      id = "GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse = {
      description = "Metadata of the EvaluateProcessorVersion method.",
      id = "GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse",
      properties = {
        evaluation = {
          description = "The resource name of the created evaluation.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadata = {
      description = "Metadata of the batch export documents operation.",
      id = "GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        individualExportStatuses = {
          description = "The list of response details of each document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus",
          },
          type = "array",
        },
        splitExportStats = {
          description = "The list of statistics for each dataset split type.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus = {
      description = "The status of each individual document in the export process.",
      id = "GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus",
      properties = {
        documentId = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3DocumentId",
          description = "The path to source docproto of the document.",
        },
        outputGcsDestination = {
          description = "The output_gcs_destination of the exported document if it was successful, otherwise empty.",
          type = "string",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status of the exporting of the document.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat = {
      description = "The statistic representing a dataset split type for this export.",
      id = "GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat",
      properties = {
        splitType = {
          description = "The dataset split type.",
          enum = {
            "DATASET_SPLIT_TYPE_UNSPECIFIED",
            "DATASET_SPLIT_TRAIN",
            "DATASET_SPLIT_TEST",
            "DATASET_SPLIT_UNASSIGNED",
          },
          enumDescriptions = {
            "Default value if the enum is not set. go/protodosdonts#do-include-an-unspecified-value-in-an-enum",
            "Identifies the train documents.",
            "Identifies the test documents.",
            "Identifies the unassigned documents.",
          },
          type = "string",
        },
        totalDocumentCount = {
          description = "Total number of documents with the given dataset split type to be exported.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ExportDocumentsResponse = {
      description = "The response proto of ExportDocuments method.",
      id = "GoogleCloudDocumentaiUiv1beta3ExportDocumentsResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata = {
      description = "Metadata message associated with the ExportProcessorVersion operation.",
      id = "GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The common metadata about the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse = {
      description = "Response message associated with the ExportProcessorVersion operation.",
      id = "GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse",
      properties = {
        gcsUri = {
          description = "The Cloud Storage URI containing the output artifacts.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata = {
      description = "Metadata of the import document operation.",
      id = "GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        importConfigValidationResults = {
          description = "Validation statuses of the batch documents import config.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult",
          },
          type = "array",
        },
        individualImportStatuses = {
          description = "The list of response details of each document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus",
          },
          type = "array",
        },
        totalDocumentCount = {
          description = "Total number of the documents that are qualified for importing.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult = {
      description = "The validation status of each import config. Status is set to errors if there is no documents to import in the import_config, or OK if the operation will try to proceed at least one document.",
      id = "GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult",
      properties = {
        inputGcsSource = {
          description = "The source Cloud Storage URI specified in the import config.",
          type = "string",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The validation status of import config.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus = {
      description = "The status of each individual document in the import process.",
      id = "GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus",
      properties = {
        inputGcsSource = {
          description = "The source Cloud Storage URI of the document.",
          type = "string",
        },
        outputGcsDestination = {
          description = "The output_gcs_destination of the processed document if it was successful, otherwise empty.",
          type = "string",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status of the importing of the document.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse = {
      description = "Response of the import document operation.",
      id = "GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata = {
      description = "The metadata proto of ResyncDataset method.",
      id = "GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        datasetResyncStatuses = {
          description = "The list of dataset resync statuses. Not checked when `dataset_documents` is specified in ResyncRequest.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus",
          },
          type = "array",
        },
        individualDocumentResyncStatuses = {
          description = "The list of document resync statuses. The same document could have multiple `individual_document_resync_statuses` if it has multiple inconsistencies.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus = {
      description = "Resync status against inconsistency types on the dataset level.",
      id = "GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus",
      properties = {
        datasetInconsistencyType = {
          description = "The type of the inconsistency of the dataset.",
          enum = {
            "DATASET_INCONSISTENCY_TYPE_UNSPECIFIED",
            "DATASET_INCONSISTENCY_TYPE_NO_STORAGE_MARKER",
          },
          enumDescriptions = {
            "Default value.",
            "The marker file under the dataset folder is not found.",
          },
          type = "string",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status of resyncing the dataset with regards to the detected inconsistency. Empty if `validate_only` is true in the request.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus = {
      description = "Resync status for each document per inconsistency type.",
      id = "GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus",
      properties = {
        documentId = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3DocumentId",
          description = "The document identifier.",
        },
        documentInconsistencyType = {
          description = "The type of document inconsistency.",
          enum = {
            "DOCUMENT_INCONSISTENCY_TYPE_UNSPECIFIED",
            "DOCUMENT_INCONSISTENCY_TYPE_INVALID_DOCPROTO",
            "DOCUMENT_INCONSISTENCY_TYPE_MISMATCHED_METADATA",
            "DOCUMENT_INCONSISTENCY_TYPE_NO_PAGE_IMAGE",
          },
          enumDescriptions = {
            "Default value.",
            "The document proto is invalid.",
            "Indexed docproto metadata is mismatched.",
            "The page image or thumbnails are missing.",
          },
          type = "string",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status of resyncing the document with regards to the detected inconsistency. Empty if `validate_only` is true in the request.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3ResyncDatasetResponse = {
      description = "The response proto of ResyncDataset method.",
      id = "GoogleCloudDocumentaiUiv1beta3ResyncDatasetResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3RevisionReference = {
      description = "The revision reference specifies which revision on the document to read.",
      id = "GoogleCloudDocumentaiUiv1beta3RevisionReference",
      properties = {
        latestProcessorVersion = {
          description = "Reads the revision generated by the processor version.",
          type = "string",
        },
        revisionCase = {
          description = "Reads the revision by the predefined case.",
          enum = {
            "REVISION_CASE_UNSPECIFIED",
            "LATEST_HUMAN_REVIEW",
            "LATEST_TIMESTAMP",
          },
          enumDescriptions = {
            "Unspecified case, fallback to read the first (OCR) revision.",
            "The latest revision made by a human.",
            "The latest revision based on timestamp.",
          },
          type = "string",
        },
        revisionId = {
          description = "Reads the revision given by the id.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata = {
      description = "The long running operation metadata for set default processor version method.",
      id = "GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse = {
      description = "Response message for set default processor version method.",
      id = "GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata = {
      description = "The metadata that represents a processor version being created.",
      id = "GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        testDatasetValidation = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation",
          description = "The test dataset validation information.",
        },
        trainingDatasetValidation = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation",
          description = "The training dataset validation information.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation = {
      description = "The dataset validation information. This includes any and all errors with documents and the dataset.",
      id = "GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation",
      properties = {
        datasetErrorCount = {
          description = "The total number of dataset errors.",
          format = "int32",
          type = "integer",
        },
        datasetErrors = {
          description = "Error information for the dataset as a whole. A maximum of 10 dataset errors will be returned. A single dataset error is terminal for training.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
        documentErrorCount = {
          description = "The total number of document errors.",
          format = "int32",
          type = "integer",
        },
        documentErrors = {
          description = "Error information pertaining to specific documents. A maximum of 10 document errors will be returned. Any document with errors will not be used throughout training.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse = {
      description = "The response for the TrainProcessorVersion method.",
      id = "GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse",
      properties = {
        processorVersion = {
          description = "The resource name of the processor version produced by training.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata = {
      description = "The long running operation metadata for the undeploy processor version method.",
      id = "GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse = {
      description = "Response message for the undeploy processor version method.",
      id = "GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata = {
      id = "GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata = {
      description = "The long running operation metadata for updating the human review configuration.",
      id = "GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata = {
      description = "The long running operation metadata for UpdateLabelerPool.",
      id = "GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1Barcode = {
      description = "Encodes the detailed information of a barcode.",
      id = "GoogleCloudDocumentaiV1Barcode",
      properties = {
        format = {
          description = "Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type. - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13 type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code type. - `DATABAR`: GS1 DataBar code type.",
          type = "string",
        },
        rawValue = {
          description = "Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`.",
          type = "string",
        },
        valueFormat = {
          description = "Value format describes the format of the value that a barcode encodes. The supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`: Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`: Calendar event. - `DRIVER_LICENSE`: Driver's license.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1BatchDocumentsInputConfig = {
      description = "The common config to specify a set of documents used as input.",
      id = "GoogleCloudDocumentaiV1BatchDocumentsInputConfig",
      properties = {
        gcsDocuments = {
          ["$ref"] = "GoogleCloudDocumentaiV1GcsDocuments",
          description = "The set of documents individually specified on Cloud Storage.",
        },
        gcsPrefix = {
          ["$ref"] = "GoogleCloudDocumentaiV1GcsPrefix",
          description = "The set of documents that match the specified Cloud Storage `gcs_prefix`.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1BatchProcessMetadata = {
      description = "The long running operation metadata for batch process method.",
      id = "GoogleCloudDocumentaiV1BatchProcessMetadata",
      properties = {
        createTime = {
          description = "The creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        individualProcessStatuses = {
          description = "The list of response details of each document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus",
          },
          type = "array",
        },
        state = {
          description = "The state of the current batch processing.",
          enum = {
            "STATE_UNSPECIFIED",
            "WAITING",
            "RUNNING",
            "SUCCEEDED",
            "CANCELLING",
            "CANCELLED",
            "FAILED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "Request operation is waiting for scheduling.",
            "Request is being processed.",
            "The batch processing completed successfully.",
            "The batch processing was being cancelled.",
            "The batch processing was cancelled.",
            "The batch processing has failed.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing. For example, the error message if the operation is failed.",
          type = "string",
        },
        updateTime = {
          description = "The last update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus = {
      description = "The status of a each individual document in the batch process.",
      id = "GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus",
      properties = {
        humanReviewStatus = {
          ["$ref"] = "GoogleCloudDocumentaiV1HumanReviewStatus",
          description = "The status of human review on the processed document.",
        },
        inputGcsSource = {
          description = "The source of the document, same as the [input_gcs_source] field in the request when the batch process started. The batch process is started by take snapshot of that document, since a user can move or change that document during the process.",
          type = "string",
        },
        outputGcsDestination = {
          description = "The output_gcs_destination (in the request as `output_gcs_destination`) of the processed document if it was successful, otherwise empty.",
          type = "string",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status processing the document.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1BatchProcessRequest = {
      description = "Request message for batch process document method.",
      id = "GoogleCloudDocumentaiV1BatchProcessRequest",
      properties = {
        documentOutputConfig = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentOutputConfig",
          description = "The overall output config for batch process.",
        },
        inputDocuments = {
          ["$ref"] = "GoogleCloudDocumentaiV1BatchDocumentsInputConfig",
          description = "The input documents for batch process.",
        },
        skipHumanReview = {
          description = "Whether Human Review feature should be skipped for this request. Default to false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1BatchProcessResponse = {
      description = "Response message for batch process document method.",
      id = "GoogleCloudDocumentaiV1BatchProcessResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1BoundingPoly = {
      description = "A bounding polygon for the detected image annotation.",
      id = "GoogleCloudDocumentaiV1BoundingPoly",
      properties = {
        normalizedVertices = {
          description = "The bounding polygon normalized vertices.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1NormalizedVertex",
          },
          type = "array",
        },
        vertices = {
          description = "The bounding polygon vertices.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1Vertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1CommonOperationMetadata = {
      description = "The common metadata for long running operations.",
      id = "GoogleCloudDocumentaiV1CommonOperationMetadata",
      properties = {
        createTime = {
          description = "The creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        resource = {
          description = "A related resource to this operation.",
          type = "string",
        },
        state = {
          description = "The state of the operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "CANCELLING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Operation is still running.",
            "Operation is being cancelled.",
            "Operation succeeded.",
            "Operation failed.",
            "Operation is cancelled.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing.",
          type = "string",
        },
        updateTime = {
          description = "The last update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DeleteProcessorMetadata = {
      description = "The long running operation metadata for delete processor method.",
      id = "GoogleCloudDocumentaiV1DeleteProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DeleteProcessorVersionMetadata = {
      description = "The long running operation metadata for delete processor version method.",
      id = "GoogleCloudDocumentaiV1DeleteProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DeployProcessorVersionMetadata = {
      description = "The long running operation metadata for deploy processor version method.",
      id = "GoogleCloudDocumentaiV1DeployProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DeployProcessorVersionRequest = {
      description = "Request message for the deploy processor version method.",
      id = "GoogleCloudDocumentaiV1DeployProcessorVersionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1DeployProcessorVersionResponse = {
      description = "Response message for the deploy processor version method.",
      id = "GoogleCloudDocumentaiV1DeployProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1DisableProcessorMetadata = {
      description = "The long running operation metadata for disable processor method.",
      id = "GoogleCloudDocumentaiV1DisableProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DisableProcessorRequest = {
      description = "Request message for the disable processor method.",
      id = "GoogleCloudDocumentaiV1DisableProcessorRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1DisableProcessorResponse = {
      description = "Response message for the disable processor method. Intentionally empty proto for adding fields in future.",
      id = "GoogleCloudDocumentaiV1DisableProcessorResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1Document = {
      description = "Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.",
      id = "GoogleCloudDocumentaiV1Document",
      properties = {
        content = {
          description = "Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.",
          format = "byte",
          type = "string",
        },
        entities = {
          description = "A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentEntity",
          },
          type = "array",
        },
        entityRelations = {
          description = "Placeholder. Relationship among Document.entities.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentEntityRelation",
          },
          type = "array",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Any error that occurred while processing this document.",
        },
        mimeType = {
          description = "An IANA published MIME type (also referred to as media type). For more information, see https://www.iana.org/assignments/media-types/media-types.xhtml.",
          type = "string",
        },
        pages = {
          description = "Visual page layout for the Document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPage",
          },
          type = "array",
        },
        revisions = {
          description = "Placeholder. Revision history of this document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentRevision",
          },
          type = "array",
        },
        shardInfo = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentShardInfo",
          description = "Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.",
        },
        text = {
          description = "Optional. UTF-8 encoded text in reading order from the document.",
          type = "string",
        },
        textChanges = {
          description = "Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentTextChange",
          },
          type = "array",
        },
        textStyles = {
          description = "Styles for the Document.text.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentStyle",
          },
          type = "array",
        },
        uri = {
          description = "Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. See [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris) for more info.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentEntity = {
      description = "An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.",
      id = "GoogleCloudDocumentaiV1DocumentEntity",
      properties = {
        confidence = {
          description = "Optional. Confidence of detected Schema entity. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        id = {
          description = "Optional. Canonical id. This will be a unique value in the entity list for this document.",
          type = "string",
        },
        mentionId = {
          description = "Optional. Deprecated. Use `id` field instead.",
          type = "string",
        },
        mentionText = {
          description = "Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.",
          type = "string",
        },
        normalizedValue = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentEntityNormalizedValue",
          description = "Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.",
        },
        pageAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageAnchor",
          description = "Optional. Represents the provenance of this entity wrt. the location on the page where it was found.",
        },
        properties = {
          description = "Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentEntity",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          description = "Optional. The history of this annotation.",
        },
        redacted = {
          description = "Optional. Whether the entity will be redacted for de-identification purposes.",
          type = "boolean",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentTextAnchor",
          description = "Optional. Provenance of the entity. Text anchor indexing into the Document.text.",
        },
        type = {
          description = "Required. Entity type from a schema e.g. `Address`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentEntityNormalizedValue = {
      description = "Parsed and normalized entity value.",
      id = "GoogleCloudDocumentaiV1DocumentEntityNormalizedValue",
      properties = {
        addressValue = {
          ["$ref"] = "GoogleTypePostalAddress",
          description = "Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto",
        },
        booleanValue = {
          description = "Boolean value. Can be used for entities with binary values, or for checkboxes.",
          type = "boolean",
        },
        dateValue = {
          ["$ref"] = "GoogleTypeDate",
          description = "Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto",
        },
        datetimeValue = {
          ["$ref"] = "GoogleTypeDateTime",
          description = "DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto",
        },
        floatValue = {
          description = "Float value.",
          format = "float",
          type = "number",
        },
        integerValue = {
          description = "Integer value.",
          format = "int32",
          type = "integer",
        },
        moneyValue = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto",
        },
        text = {
          description = "Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentEntityRelation = {
      description = "Relationship between Entities.",
      id = "GoogleCloudDocumentaiV1DocumentEntityRelation",
      properties = {
        objectId = {
          description = "Object entity id.",
          type = "string",
        },
        relation = {
          description = "Relationship description.",
          type = "string",
        },
        subjectId = {
          description = "Subject entity id.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentOutputConfig = {
      description = "Config that controls the output of documents. All documents will be written as a JSON file.",
      id = "GoogleCloudDocumentaiV1DocumentOutputConfig",
      properties = {
        gcsOutputConfig = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig",
          description = "Output config to write the results to Cloud Storage.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig = {
      description = "The configuration used when outputting documents.",
      id = "GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig",
      properties = {
        fieldMask = {
          description = "Specifies which fields to include in the output documents. Only supports top level document and pages field so it must be in the form of `{document_field_name}` or `pages.{page_field_name}`.",
          format = "google-fieldmask",
          type = "string",
        },
        gcsUri = {
          description = "The Cloud Storage uri (a directory) of the output.",
          type = "string",
        },
        shardingConfig = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig",
          description = "Specifies the sharding config for the output document.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig = {
      description = "The sharding config for the output document.",
      id = "GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig",
      properties = {
        pagesOverlap = {
          description = "The number of overlapping pages between consecutive shards.",
          format = "int32",
          type = "integer",
        },
        pagesPerShard = {
          description = "The number of pages per shard.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPage = {
      description = "A page in a Document.",
      id = "GoogleCloudDocumentaiV1DocumentPage",
      properties = {
        blocks = {
          description = "A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageBlock",
          },
          type = "array",
        },
        detectedBarcodes = {
          description = "A list of detected barcodes.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedBarcode",
          },
          type = "array",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        dimension = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDimension",
          description = "Physical dimension of the page.",
        },
        formFields = {
          description = "A list of visually detected form fields on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageFormField",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageImage",
          description = "Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.",
        },
        imageQualityScores = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageImageQualityScores",
          description = "Image Quality Scores.",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for the page.",
        },
        lines = {
          description = "A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLine",
          },
          type = "array",
        },
        pageNumber = {
          description = "1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.",
          format = "int32",
          type = "integer",
        },
        paragraphs = {
          description = "A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageParagraph",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          description = "The history of this page.",
        },
        symbols = {
          description = "A list of visually detected symbols on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageSymbol",
          },
          type = "array",
        },
        tables = {
          description = "A list of visually detected tables on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageTable",
          },
          type = "array",
        },
        tokens = {
          description = "A list of visually detected tokens on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageToken",
          },
          type = "array",
        },
        transforms = {
          description = "Transformation matrices that were applied to the original document image to produce Page.image.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageMatrix",
          },
          type = "array",
        },
        visualElements = {
          description = "A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageVisualElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageAnchor = {
      description = "Referencing the visual context of the entity in the Document.pages. Page anchors can be cross-page, consist of multiple bounding polygons and optionally reference specific layout element types.",
      id = "GoogleCloudDocumentaiV1DocumentPageAnchor",
      properties = {
        pageRefs = {
          description = "One or more references to visual page elements",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageAnchorPageRef",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageAnchorPageRef = {
      description = "Represents a weak reference to a page element within a document.",
      id = "GoogleCloudDocumentaiV1DocumentPageAnchorPageRef",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudDocumentaiV1BoundingPoly",
          description = "Optional. Identifies the bounding polygon of a layout element on the page.",
        },
        confidence = {
          description = "Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        layoutId = {
          description = "Optional. Deprecated. Use PageRef.bounding_poly instead.",
          type = "string",
        },
        layoutType = {
          description = "Optional. The type of the layout element that is being referenced if any.",
          enum = {
            "LAYOUT_TYPE_UNSPECIFIED",
            "BLOCK",
            "PARAGRAPH",
            "LINE",
            "TOKEN",
            "VISUAL_ELEMENT",
            "TABLE",
            "FORM_FIELD",
          },
          enumDescriptions = {
            "Layout Unspecified.",
            "References a Page.blocks element.",
            "References a Page.paragraphs element.",
            "References a Page.lines element.",
            "References a Page.tokens element.",
            "References a Page.visual_elements element.",
            "Refrrences a Page.tables element.",
            "References a Page.form_fields element.",
          },
          type = "string",
        },
        page = {
          description = "Required. Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageBlock = {
      description = "A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.",
      id = "GoogleCloudDocumentaiV1DocumentPageBlock",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for Block.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageDetectedBarcode = {
      description = "A detected barcode.",
      id = "GoogleCloudDocumentaiV1DocumentPageDetectedBarcode",
      properties = {
        barcode = {
          ["$ref"] = "GoogleCloudDocumentaiV1Barcode",
          description = "Detailed barcode information of the DetectedBarcode.",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for DetectedBarcode.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageDetectedLanguage = {
      description = "Detected language for a structural component.",
      id = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
      properties = {
        confidence = {
          description = "Confidence of detected language. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageDimension = {
      description = "Dimension for the page.",
      id = "GoogleCloudDocumentaiV1DocumentPageDimension",
      properties = {
        height = {
          description = "Page height.",
          format = "float",
          type = "number",
        },
        unit = {
          description = "Dimension unit.",
          type = "string",
        },
        width = {
          description = "Page width.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageFormField = {
      description = "A form field detected on the page.",
      id = "GoogleCloudDocumentaiV1DocumentPageFormField",
      properties = {
        correctedKeyText = {
          description = "Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.",
          type = "string",
        },
        correctedValueText = {
          description = "Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.",
          type = "string",
        },
        fieldName = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.",
        },
        fieldValue = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for the FormField value.",
        },
        nameDetectedLanguages = {
          description = "A list of detected languages for name together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          description = "The history of this annotation.",
        },
        valueDetectedLanguages = {
          description = "A list of detected languages for value together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        valueType = {
          description = "If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageImage = {
      description = "Rendered image contents for this page.",
      id = "GoogleCloudDocumentaiV1DocumentPageImage",
      properties = {
        content = {
          description = "Raw byte content of the image.",
          format = "byte",
          type = "string",
        },
        height = {
          description = "Height of the image in pixels.",
          format = "int32",
          type = "integer",
        },
        mimeType = {
          description = "Encoding mime type for the image.",
          type = "string",
        },
        width = {
          description = "Width of the image in pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageImageQualityScores = {
      description = "Image Quality Scores for the page image",
      id = "GoogleCloudDocumentaiV1DocumentPageImageQualityScores",
      properties = {
        detectedDefects = {
          description = "A list of detected defects.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect",
          },
          type = "array",
        },
        qualityScore = {
          description = "The overall quality score. Range `[0, 1]` where 1 is perfect quality.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect = {
      description = "Image Quality Defects",
      id = "GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect",
      properties = {
        confidence = {
          description = "Confidence of detected defect. Range `[0, 1]` where 1 indicates strong confidence of that the defect exists.",
          format = "float",
          type = "number",
        },
        type = {
          description = "Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageLayout = {
      description = "Visual element describing a layout unit on a page.",
      id = "GoogleCloudDocumentaiV1DocumentPageLayout",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudDocumentaiV1BoundingPoly",
          description = "The bounding polygon for the Layout.",
        },
        confidence = {
          description = "Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        orientation = {
          description = "Detected orientation for the Layout.",
          enum = {
            "ORIENTATION_UNSPECIFIED",
            "PAGE_UP",
            "PAGE_RIGHT",
            "PAGE_DOWN",
            "PAGE_LEFT",
          },
          enumDescriptions = {
            "Unspecified orientation.",
            "Orientation is aligned with page up.",
            "Orientation is aligned with page right. Turn the head 90 degrees clockwise from upright to read.",
            "Orientation is aligned with page down. Turn the head 180 degrees from upright to read.",
            "Orientation is aligned with page left. Turn the head 90 degrees counterclockwise from upright to read.",
          },
          type = "string",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentTextAnchor",
          description = "Text anchor indexing into the Document.text.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageLine = {
      description = "A collection of tokens that a human would perceive as a line. Does not cross column boundaries, can be horizontal, vertical, etc.",
      id = "GoogleCloudDocumentaiV1DocumentPageLine",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for Line.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageMatrix = {
      description = "Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.",
      id = "GoogleCloudDocumentaiV1DocumentPageMatrix",
      properties = {
        cols = {
          description = "Number of columns in the matrix.",
          format = "int32",
          type = "integer",
        },
        data = {
          description = "The matrix data.",
          format = "byte",
          type = "string",
        },
        rows = {
          description = "Number of rows in the matrix.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageParagraph = {
      description = "A collection of lines that a human would perceive as a paragraph.",
      id = "GoogleCloudDocumentaiV1DocumentPageParagraph",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for Paragraph.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageSymbol = {
      description = "A detected symbol.",
      id = "GoogleCloudDocumentaiV1DocumentPageSymbol",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for Symbol.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageTable = {
      description = "A table representation similar to HTML table structure.",
      id = "GoogleCloudDocumentaiV1DocumentPageTable",
      properties = {
        bodyRows = {
          description = "Body rows of the table.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageTableTableRow",
          },
          type = "array",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        headerRows = {
          description = "Header rows of the table.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageTableTableRow",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for Table.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          description = "The history of this table.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageTableTableCell = {
      description = "A cell representation inside the table.",
      id = "GoogleCloudDocumentaiV1DocumentPageTableTableCell",
      properties = {
        colSpan = {
          description = "How many columns this cell spans.",
          format = "int32",
          type = "integer",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for TableCell.",
        },
        rowSpan = {
          description = "How many rows this cell spans.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageTableTableRow = {
      description = "A row of table cells.",
      id = "GoogleCloudDocumentaiV1DocumentPageTableTableRow",
      properties = {
        cells = {
          description = "Cells that make up this row.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageTableTableCell",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageToken = {
      description = "A detected token.",
      id = "GoogleCloudDocumentaiV1DocumentPageToken",
      properties = {
        detectedBreak = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak",
          description = "Detected break at the end of a Token.",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for Token.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak = {
      description = "Detected break at the end of a Token.",
      id = "GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak",
      properties = {
        type = {
          description = "Detected break type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "SPACE",
            "WIDE_SPACE",
            "HYPHEN",
          },
          enumDescriptions = {
            "Unspecified break type.",
            "A single whitespace.",
            "A wider whitespace.",
            "A hyphen that indicates that a token has been split across lines.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentPageVisualElement = {
      description = "Detected non-text visual elements e.g. checkbox, signature etc. on the page.",
      id = "GoogleCloudDocumentaiV1DocumentPageVisualElement",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentPageLayout",
          description = "Layout for VisualElement.",
        },
        type = {
          description = "Type of the VisualElement.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentProvenance = {
      description = "Structure to identify provenance relationships between annotations in different revisions.",
      id = "GoogleCloudDocumentaiV1DocumentProvenance",
      properties = {
        id = {
          description = "The Id of this operation. Needs to be unique within the scope of the revision.",
          format = "int32",
          type = "integer",
        },
        parents = {
          description = "References to the original elements that are replaced.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenanceParent",
          },
          type = "array",
        },
        revision = {
          description = "The index of the revision that produced this element.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of provenance operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "ADD",
            "REMOVE",
            "REPLACE",
            "EVAL_REQUESTED",
            "EVAL_APPROVED",
            "EVAL_SKIPPED",
          },
          enumDescriptions = {
            "Operation type unspecified. If no operation is specified a provenance entry is simply used to match against a `parent`.",
            "Add an element.",
            "Remove an element identified by `parent`.",
            "Replace an element identified by `parent`.",
            "Request human review for the element identified by `parent`.",
            "Element is reviewed and approved at human review, confidence will be set to 1.0.",
            "Element is skipped in the validation process.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentProvenanceParent = {
      description = "The parent element the current element is based on. Used for referencing/aligning, removal and replacement operations.",
      id = "GoogleCloudDocumentaiV1DocumentProvenanceParent",
      properties = {
        id = {
          description = "The id of the parent provenance.",
          format = "int32",
          type = "integer",
        },
        index = {
          description = "The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.",
          format = "int32",
          type = "integer",
        },
        revision = {
          description = "The index of the index into current revision's parent_ids list.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentRevision = {
      description = "Contains past or forward revisions of this document.",
      id = "GoogleCloudDocumentaiV1DocumentRevision",
      properties = {
        agent = {
          description = "If the change was made by a person specify the name or id of that person.",
          type = "string",
        },
        createTime = {
          description = "The time that the revision was created.",
          format = "google-datetime",
          type = "string",
        },
        humanReview = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentRevisionHumanReview",
          description = "Human Review information of this revision.",
        },
        id = {
          description = "Id of the revision. Unique within the context of the document.",
          type = "string",
        },
        parent = {
          description = "The revisions that this revision is based on. This can include one or more parent (when documents are merged.) This field represents the index into the `revisions` field.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        parentIds = {
          description = "The revisions that this revision is based on. Must include all the ids that have anything to do with this revision - eg. there are `provenance.parent.revision` fields that index into this field.",
          items = {
            type = "string",
          },
          type = "array",
        },
        processor = {
          description = "If the annotation was made by processor identify the processor by its resource name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentRevisionHumanReview = {
      description = "Human Review information of the document.",
      id = "GoogleCloudDocumentaiV1DocumentRevisionHumanReview",
      properties = {
        state = {
          description = "Human review state. e.g. `requested`, `succeeded`, `rejected`.",
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentSchema = {
      description = "The schema defines the output of the processed document by a processor.",
      id = "GoogleCloudDocumentaiV1DocumentSchema",
      properties = {
        description = {
          description = "Description of the schema.",
          type = "string",
        },
        displayName = {
          description = "Display name to show to users.",
          type = "string",
        },
        entityTypes = {
          description = "Entity types of the schema.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentSchemaEntityType",
          },
          type = "array",
        },
        metadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentSchemaMetadata",
          description = "Metadata of the schema.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentSchemaEntityType = {
      description = "EntityType is the wrapper of a label of the corresponding model with detailed attributes and limitations for entity-based processors. Multiple types can also compose a dependency tree to represent nested types.",
      id = "GoogleCloudDocumentaiV1DocumentSchemaEntityType",
      properties = {
        baseTypes = {
          description = "The entity type that this type is derived from. For now, one and only one should be set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        displayName = {
          description = "User defined name for the type.",
          type = "string",
        },
        enumValues = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues",
          description = "If specified, lists all the possible values for this entity. This should not be more than a handful of values. If the number of values is >10 or could change frequently use the `EntityType.value_ontology` field and specify a list of all possible values in a value ontology file.",
        },
        name = {
          description = "Name of the type. It must be unique within the schema file and cannot be a 'Common Type'. Besides that we use the following naming conventions: - *use `snake_casing`* - name matching is case-sensitive - Maximum 64 characters. - Must start with a letter. - Allowed characters: ASCII letters `[a-z0-9_-]`. (For backward compatibility internal infrastructure and tooling can handle any ascii character) - The `/` is sometimes used to denote a property of a type. For example `line_item/amount`. This convention is deprecated, but will still be honored for backward compatibility.",
          type = "string",
        },
        properties = {
          description = "Describing the nested structure, or composition of an entity.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues = {
      description = "Defines the a list of enum values.",
      id = "GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues",
      properties = {
        values = {
          description = "The individual values that this enum values type can include.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty = {
      description = "Defines properties that can be part of the entity type.",
      id = "GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty",
      properties = {
        name = {
          description = "The name of the property. Follows the same guidelines as the EntityType name.",
          type = "string",
        },
        occurrenceType = {
          description = "Occurrence type limits the number of instances an entity type appears in the document.",
          enum = {
            "OCCURRENCE_TYPE_UNSPECIFIED",
            "OPTIONAL_ONCE",
            "OPTIONAL_MULTIPLE",
            "REQUIRED_ONCE",
            "REQUIRED_MULTIPLE",
          },
          enumDescriptions = {
            "Unspecified occurrence type.",
            "There will be zero or one instance of this entity type.",
            "The entity type will appear zero or multiple times.",
            "The entity type will only appear exactly once.",
            "The entity type will appear once or more times.",
          },
          type = "string",
        },
        valueType = {
          description = "A reference to the value type of the property. This type is subject to the same conventions as the `Entity.base_types` field.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentSchemaMetadata = {
      description = "Metadata for global schema behavior.",
      id = "GoogleCloudDocumentaiV1DocumentSchemaMetadata",
      properties = {
        documentAllowMultipleLabels = {
          description = "If true, on a given page, there can be multiple `document` annotations covering it.",
          type = "boolean",
        },
        documentSplitter = {
          description = "If true, a `document` entity type can be applied to subdocument ( splitting). Otherwise, it can only be applied to the entire document (classification).",
          type = "boolean",
        },
        prefixedNamingOnProperties = {
          description = "If set, all the nested entities must be prefixed with the parents.",
          type = "boolean",
        },
        skipNamingValidation = {
          description = "If set, we will skip the naming format validation in the schema. So the string values in `DocumentSchema.EntityType.name` and `DocumentSchema.EntityType.Property.name` will not be checked.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentShardInfo = {
      description = "For a large document, sharding may be performed to produce several document shards. Each document shard contains this field to detail which shard it is.",
      id = "GoogleCloudDocumentaiV1DocumentShardInfo",
      properties = {
        shardCount = {
          description = "Total number of shards.",
          format = "int64",
          type = "string",
        },
        shardIndex = {
          description = "The 0-based index of this shard.",
          format = "int64",
          type = "string",
        },
        textOffset = {
          description = "The index of the first character in Document.text in the overall document global text.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentStyle = {
      description = "Annotation for common text style attributes. This adheres to CSS conventions as much as possible.",
      id = "GoogleCloudDocumentaiV1DocumentStyle",
      properties = {
        backgroundColor = {
          ["$ref"] = "GoogleTypeColor",
          description = "Text background color.",
        },
        color = {
          ["$ref"] = "GoogleTypeColor",
          description = "Text color.",
        },
        fontFamily = {
          description = "Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp",
          type = "string",
        },
        fontSize = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentStyleFontSize",
          description = "Font size.",
        },
        fontWeight = {
          description = "Font weight. Possible values are normal, bold, bolder, and lighter. https://www.w3schools.com/cssref/pr_font_weight.asp",
          type = "string",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentTextAnchor",
          description = "Text anchor indexing into the Document.text.",
        },
        textDecoration = {
          description = "Text decoration. Follows CSS standard. https://www.w3schools.com/cssref/pr_text_text-decoration.asp",
          type = "string",
        },
        textStyle = {
          description = "Text style. Possible values are normal, italic, and oblique. https://www.w3schools.com/cssref/pr_font_font-style.asp",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentStyleFontSize = {
      description = "Font size with unit.",
      id = "GoogleCloudDocumentaiV1DocumentStyleFontSize",
      properties = {
        size = {
          description = "Font size for the text.",
          format = "float",
          type = "number",
        },
        unit = {
          description = "Unit for the font size. Follows CSS naming (in, px, pt, etc.).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentTextAnchor = {
      description = "Text reference indexing into the Document.text.",
      id = "GoogleCloudDocumentaiV1DocumentTextAnchor",
      properties = {
        content = {
          description = "Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.",
          type = "string",
        },
        textSegments = {
          description = "The text segments from the Document.text.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment = {
      description = "A text segment in the Document.text. The indices may be out of bounds which indicate that the text extends into another document shard for large sharded documents. See ShardInfo.text_offset",
      id = "GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment",
      properties = {
        endIndex = {
          description = "TextSegment half open end UTF-8 char index in the Document.text.",
          format = "int64",
          type = "string",
        },
        startIndex = {
          description = "TextSegment start UTF-8 char index in the Document.text.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1DocumentTextChange = {
      description = "This message is used for text changes aka. OCR corrections.",
      id = "GoogleCloudDocumentaiV1DocumentTextChange",
      properties = {
        changedText = {
          description = "The text that replaces the text identified in the `text_anchor`.",
          type = "string",
        },
        provenance = {
          description = "The history of this annotation.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1DocumentProvenance",
          },
          type = "array",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentTextAnchor",
          description = "Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1EnableProcessorMetadata = {
      description = "The long running operation metadata for enable processor method.",
      id = "GoogleCloudDocumentaiV1EnableProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1EnableProcessorRequest = {
      description = "Request message for the enable processor method.",
      id = "GoogleCloudDocumentaiV1EnableProcessorRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1EnableProcessorResponse = {
      description = "Response message for the enable processor method. Intentionally empty proto for adding fields in future.",
      id = "GoogleCloudDocumentaiV1EnableProcessorResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1FetchProcessorTypesResponse = {
      description = "Response message for fetch processor types.",
      id = "GoogleCloudDocumentaiV1FetchProcessorTypesResponse",
      properties = {
        processorTypes = {
          description = "The list of processor types.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1ProcessorType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1GcsDocument = {
      description = "Specifies a document stored on Cloud Storage.",
      id = "GoogleCloudDocumentaiV1GcsDocument",
      properties = {
        gcsUri = {
          description = "The Cloud Storage object uri.",
          type = "string",
        },
        mimeType = {
          description = "An IANA MIME type (RFC6838) of the content.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1GcsDocuments = {
      description = "Specifies a set of documents on Cloud Storage.",
      id = "GoogleCloudDocumentaiV1GcsDocuments",
      properties = {
        documents = {
          description = "The list of documents.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1GcsDocument",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1GcsPrefix = {
      description = "Specifies all documents on Cloud Storage with a common prefix.",
      id = "GoogleCloudDocumentaiV1GcsPrefix",
      properties = {
        gcsUriPrefix = {
          description = "The URI prefix.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1HumanReviewStatus = {
      description = "The status of human review on a processed document.",
      id = "GoogleCloudDocumentaiV1HumanReviewStatus",
      properties = {
        humanReviewOperation = {
          description = "The name of the operation triggered by the processed document. This field is populated only when the [state] is [HUMAN_REVIEW_IN_PROGRESS]. It has the same response type and metadata as the long running operation returned by [ReviewDocument] method.",
          type = "string",
        },
        state = {
          description = "The state of human review on the processing request.",
          enum = {
            "STATE_UNSPECIFIED",
            "SKIPPED",
            "VALIDATION_PASSED",
            "IN_PROGRESS",
            "ERROR",
          },
          enumDescriptions = {
            "Human review state is unspecified. Most likely due to an internal error.",
            "Human review is skipped for the document. This can happen because human review is not enabled on the processor or the processing request has been set to skip this document.",
            "Human review validation is triggered and passed, so no review is needed.",
            "Human review validation is triggered and the document is under review.",
            "Some error happened during triggering human review, see the [state_message] for details.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the human review state.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ListProcessorTypesResponse = {
      description = "Response message for list processor types.",
      id = "GoogleCloudDocumentaiV1ListProcessorTypesResponse",
      properties = {
        nextPageToken = {
          description = "Points to the next page, otherwise empty.",
          type = "string",
        },
        processorTypes = {
          description = "The processor types.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1ProcessorType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ListProcessorVersionsResponse = {
      description = "Response message for list processors.",
      id = "GoogleCloudDocumentaiV1ListProcessorVersionsResponse",
      properties = {
        nextPageToken = {
          description = "Points to the next processor, otherwise empty.",
          type = "string",
        },
        processorVersions = {
          description = "The list of processors.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1ProcessorVersion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ListProcessorsResponse = {
      description = "Response message for list processors.",
      id = "GoogleCloudDocumentaiV1ListProcessorsResponse",
      properties = {
        nextPageToken = {
          description = "Points to the next processor, otherwise empty.",
          type = "string",
        },
        processors = {
          description = "The list of processors.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1Processor",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudDocumentaiV1NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate (starts from the top of the image).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ProcessRequest = {
      description = "Request message for the process document method.",
      id = "GoogleCloudDocumentaiV1ProcessRequest",
      properties = {
        fieldMask = {
          description = "Specifies which fields to include in ProcessResponse's document. Only supports top level document and pages field so it must be in the form of `{document_field_name}` or `pages.{page_field_name}`.",
          format = "google-fieldmask",
          type = "string",
        },
        inlineDocument = {
          ["$ref"] = "GoogleCloudDocumentaiV1Document",
          description = "An inline document proto.",
        },
        rawDocument = {
          ["$ref"] = "GoogleCloudDocumentaiV1RawDocument",
          description = "A raw document content (bytes).",
        },
        skipHumanReview = {
          description = "Whether Human Review feature should be skipped for this request. Default to false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ProcessResponse = {
      description = "Response message for the process document method.",
      id = "GoogleCloudDocumentaiV1ProcessResponse",
      properties = {
        document = {
          ["$ref"] = "GoogleCloudDocumentaiV1Document",
          description = "The document payload, will populate fields based on the processor's behavior.",
        },
        humanReviewStatus = {
          ["$ref"] = "GoogleCloudDocumentaiV1HumanReviewStatus",
          description = "The status of human review on the processed document.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1Processor = {
      description = "The first-class citizen for Document AI. Each processor defines how to extract structural information from a document.",
      id = "GoogleCloudDocumentaiV1Processor",
      properties = {
        createTime = {
          description = "The time the processor was created.",
          format = "google-datetime",
          type = "string",
        },
        defaultProcessorVersion = {
          description = "The default processor version.",
          type = "string",
        },
        displayName = {
          description = "The display name of the processor.",
          type = "string",
        },
        kmsKeyName = {
          description = "The KMS key used for encryption/decryption in CMEK scenarios. See https://cloud.google.com/security-key-management.",
          type = "string",
        },
        name = {
          description = "Output only. Immutable. The resource name of the processor. Format: `projects/{project}/locations/{location}/processors/{processor}`",
          readOnly = true,
          type = "string",
        },
        processEndpoint = {
          description = "Output only. Immutable. The http endpoint that can be called to invoke processing.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The state of the processor.",
          enum = {
            "STATE_UNSPECIFIED",
            "ENABLED",
            "DISABLED",
            "ENABLING",
            "DISABLING",
            "CREATING",
            "FAILED",
            "DELETING",
          },
          enumDescriptions = {
            "The processor is in an unspecified state.",
            "The processor is enabled, i.e., has an enabled version which can currently serve processing requests and all the feature dependencies have been successfully initialized.",
            "The processor is disabled.",
            "The processor is being enabled, will become `ENABLED` if successful.",
            "The processor is being disabled, will become `DISABLED` if successful.",
            "The processor is being created, will become either `ENABLED` (for successful creation) or `FAILED` (for failed ones). Once a processor is in this state, it can then be used for document processing, but the feature dependencies of the processor might not be fully created yet.",
            "The processor failed during creation or initialization of feature dependencies. The user should delete the processor and recreate one as all the functionalities of the processor are disabled.",
            "The processor is being deleted, will be removed if successful.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "The processor type, e.g., `OCR_PROCESSOR`, `INVOICE_PROCESSOR`, etc. To get a list of processors types, see FetchProcessorTypes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ProcessorType = {
      description = "A processor type is responsible for performing a certain document understanding task on a certain type of document.",
      id = "GoogleCloudDocumentaiV1ProcessorType",
      properties = {
        allowCreation = {
          description = "Whether the processor type allows creation. If true, users can create a processor of this processor type. Otherwise, users need to request access.",
          type = "boolean",
        },
        availableLocations = {
          description = "The locations in which this processor is available.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1ProcessorTypeLocationInfo",
          },
          type = "array",
        },
        category = {
          description = "The processor category, used by UI to group processor types.",
          type = "string",
        },
        launchStage = {
          description = "Launch stage of the processor type",
          enum = {
            "LAUNCH_STAGE_UNSPECIFIED",
            "UNIMPLEMENTED",
            "PRELAUNCH",
            "EARLY_ACCESS",
            "ALPHA",
            "BETA",
            "GA",
            "DEPRECATED",
          },
          enumDescriptions = {
            "Do not use this default value.",
            "The feature is not yet implemented. Users can not use it.",
            "Prelaunch features are hidden from users and are only visible internally.",
            "Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.",
            "Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don't have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.",
            "Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.",
            "GA features are open to all developers and are considered stable and fully qualified for production use.",
            "Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our [Terms of Service](https://cloud.google.com/terms/) and the [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation) documentation.",
          },
          type = "string",
        },
        name = {
          description = "The resource name of the processor type. Format: `projects/{project}/processorTypes/{processor_type}`",
          type = "string",
        },
        sampleDocumentUris = {
          description = "A set of Cloud Storage URIs of sample documents for this processor.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "The processor type, e.g., `OCR_PROCESSOR`, `INVOICE_PROCESSOR`, etc.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ProcessorTypeLocationInfo = {
      description = "The location information about where the processor is available.",
      id = "GoogleCloudDocumentaiV1ProcessorTypeLocationInfo",
      properties = {
        locationId = {
          description = "The location id, currently must be one of [us, eu].",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ProcessorVersion = {
      description = "A processor version is an implementation of a processor. Each processor can have multiple versions, pre-trained by Google internally or up-trained by the customer. At a time, a processor can only have one default version version. So the processor's behavior (when processing documents) is defined by a default version",
      id = "GoogleCloudDocumentaiV1ProcessorVersion",
      properties = {
        createTime = {
          description = "The time the processor version was created.",
          format = "google-datetime",
          type = "string",
        },
        deprecationInfo = {
          ["$ref"] = "GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo",
          description = "If set, information about the eventual deprecation of this version.",
        },
        displayName = {
          description = "The display name of the processor version.",
          type = "string",
        },
        documentSchema = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentSchema",
          description = "The schema of the processor version. Describes the output.",
        },
        googleManaged = {
          description = "Denotes that this ProcessorVersion is managed by google.",
          type = "boolean",
        },
        kmsKeyName = {
          description = "The KMS key name used for encryption.",
          type = "string",
        },
        kmsKeyVersionName = {
          description = "The KMS key version with which data is encrypted.",
          type = "string",
        },
        name = {
          description = "The resource name of the processor version. Format: `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}`",
          type = "string",
        },
        state = {
          description = "The state of the processor version.",
          enum = {
            "STATE_UNSPECIFIED",
            "DEPLOYED",
            "DEPLOYING",
            "UNDEPLOYED",
            "UNDEPLOYING",
            "CREATING",
            "DELETING",
            "FAILED",
          },
          enumDescriptions = {
            "The processor version is in an unspecified state.",
            "The processor version is deployed and can be used for processing.",
            "The processor version is being deployed.",
            "The processor version is not deployed and cannot be used for processing.",
            "The processor version is being undeployed.",
            "The processor version is being created.",
            "The processor version is being deleted.",
            "The processor version failed and is in an indeterminate state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo = {
      description = "Information about the upcoming deprecation of this processor version.",
      id = "GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo",
      properties = {
        deprecationTime = {
          description = "The time at which this processor version will be deprecated.",
          format = "google-datetime",
          type = "string",
        },
        replacementProcessorVersion = {
          description = "If set, the processor version that will be used as a replacement.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1RawDocument = {
      description = "Payload message of raw document content (bytes).",
      id = "GoogleCloudDocumentaiV1RawDocument",
      properties = {
        content = {
          description = "Inline document content.",
          format = "byte",
          type = "string",
        },
        mimeType = {
          description = "An IANA MIME type (RFC6838) indicating the nature and format of the content.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata = {
      description = "The long running operation metadata for review document method.",
      id = "GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        questionId = {
          description = "The Crowd Compute question ID.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ReviewDocumentRequest = {
      description = "Request message for review document method.",
      id = "GoogleCloudDocumentaiV1ReviewDocumentRequest",
      properties = {
        documentSchema = {
          ["$ref"] = "GoogleCloudDocumentaiV1DocumentSchema",
          description = "The document schema of the human review task.",
        },
        enableSchemaValidation = {
          description = "Whether the validation should be performed on the ad-hoc review request.",
          type = "boolean",
        },
        inlineDocument = {
          ["$ref"] = "GoogleCloudDocumentaiV1Document",
          description = "An inline document proto.",
        },
        priority = {
          description = "The priority of the human review task.",
          enum = {
            "DEFAULT",
            "URGENT",
          },
          enumDescriptions = {
            "The default priority level.",
            "The urgent priority level. The labeling manager should allocate labeler resource to the urgent task queue to respect this priority level.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1ReviewDocumentResponse = {
      description = "Response message for review document method.",
      id = "GoogleCloudDocumentaiV1ReviewDocumentResponse",
      properties = {
        gcsDestination = {
          description = "The Cloud Storage uri for the human reviewed document if the review is succeeded.",
          type = "string",
        },
        rejectionReason = {
          description = "The reason why the review is rejected by reviewer.",
          type = "string",
        },
        state = {
          description = "The state of the review operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "REJECTED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "The review operation is rejected by the reviewer.",
            "The review operation is succeeded.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1SetDefaultProcessorVersionMetadata = {
      description = "The long running operation metadata for set default processor version method.",
      id = "GoogleCloudDocumentaiV1SetDefaultProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest = {
      description = "Request message for the set default processor version method.",
      id = "GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest",
      properties = {
        defaultProcessorVersion = {
          description = "Required. The resource name of child ProcessorVersion to use as default. Format: `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{version}`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse = {
      description = "Response message for set default processor version method.",
      id = "GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1UndeployProcessorVersionMetadata = {
      description = "The long running operation metadata for the undeploy processor version method.",
      id = "GoogleCloudDocumentaiV1UndeployProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1UndeployProcessorVersionRequest = {
      description = "Request message for the undeploy processor version method.",
      id = "GoogleCloudDocumentaiV1UndeployProcessorVersionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1UndeployProcessorVersionResponse = {
      description = "Response message for the undeploy processor version method.",
      id = "GoogleCloudDocumentaiV1UndeployProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1Vertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.",
      id = "GoogleCloudDocumentaiV1Vertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "int32",
          type = "integer",
        },
        y = {
          description = "Y coordinate (starts from the top of the image).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1Barcode = {
      description = "Encodes the detailed information of a barcode.",
      id = "GoogleCloudDocumentaiV1beta1Barcode",
      properties = {
        format = {
          description = "Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type. - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13 type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code type. - `DATABAR`: GS1 DataBar code type.",
          type = "string",
        },
        rawValue = {
          description = "Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`.",
          type = "string",
        },
        valueFormat = {
          description = "Value format describes the format of the value that a barcode encodes. The supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`: Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`: Calendar event. - `DRIVER_LICENSE`: Driver's license.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse = {
      description = "Response to an batch document processing request. This is returned in the LRO Operation after the operation is complete.",
      id = "GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse",
      properties = {
        responses = {
          description = "Responses for each individual document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1ProcessDocumentResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1BoundingPoly = {
      description = "A bounding polygon for the detected image annotation.",
      id = "GoogleCloudDocumentaiV1beta1BoundingPoly",
      properties = {
        normalizedVertices = {
          description = "The bounding polygon normalized vertices.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1NormalizedVertex",
          },
          type = "array",
        },
        vertices = {
          description = "The bounding polygon vertices.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1Vertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1Document = {
      description = "Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.",
      id = "GoogleCloudDocumentaiV1beta1Document",
      properties = {
        content = {
          description = "Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.",
          format = "byte",
          type = "string",
        },
        entities = {
          description = "A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentEntity",
          },
          type = "array",
        },
        entityRelations = {
          description = "Placeholder. Relationship among Document.entities.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentEntityRelation",
          },
          type = "array",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Any error that occurred while processing this document.",
        },
        mimeType = {
          description = "An IANA published MIME type (also referred to as media type). For more information, see https://www.iana.org/assignments/media-types/media-types.xhtml.",
          type = "string",
        },
        pages = {
          description = "Visual page layout for the Document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPage",
          },
          type = "array",
        },
        revisions = {
          description = "Placeholder. Revision history of this document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentRevision",
          },
          type = "array",
        },
        shardInfo = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentShardInfo",
          description = "Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.",
        },
        text = {
          description = "Optional. UTF-8 encoded text in reading order from the document.",
          type = "string",
        },
        textChanges = {
          description = "Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentTextChange",
          },
          type = "array",
        },
        textStyles = {
          description = "Styles for the Document.text.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentStyle",
          },
          type = "array",
        },
        uri = {
          description = "Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. See [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris) for more info.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentEntity = {
      description = "An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.",
      id = "GoogleCloudDocumentaiV1beta1DocumentEntity",
      properties = {
        confidence = {
          description = "Optional. Confidence of detected Schema entity. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        id = {
          description = "Optional. Canonical id. This will be a unique value in the entity list for this document.",
          type = "string",
        },
        mentionId = {
          description = "Optional. Deprecated. Use `id` field instead.",
          type = "string",
        },
        mentionText = {
          description = "Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.",
          type = "string",
        },
        normalizedValue = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue",
          description = "Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.",
        },
        pageAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageAnchor",
          description = "Optional. Represents the provenance of this entity wrt. the location on the page where it was found.",
        },
        properties = {
          description = "Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentEntity",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          description = "Optional. The history of this annotation.",
        },
        redacted = {
          description = "Optional. Whether the entity will be redacted for de-identification purposes.",
          type = "boolean",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentTextAnchor",
          description = "Optional. Provenance of the entity. Text anchor indexing into the Document.text.",
        },
        type = {
          description = "Required. Entity type from a schema e.g. `Address`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue = {
      description = "Parsed and normalized entity value.",
      id = "GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue",
      properties = {
        addressValue = {
          ["$ref"] = "GoogleTypePostalAddress",
          description = "Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto",
        },
        booleanValue = {
          description = "Boolean value. Can be used for entities with binary values, or for checkboxes.",
          type = "boolean",
        },
        dateValue = {
          ["$ref"] = "GoogleTypeDate",
          description = "Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto",
        },
        datetimeValue = {
          ["$ref"] = "GoogleTypeDateTime",
          description = "DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto",
        },
        floatValue = {
          description = "Float value.",
          format = "float",
          type = "number",
        },
        integerValue = {
          description = "Integer value.",
          format = "int32",
          type = "integer",
        },
        moneyValue = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto",
        },
        text = {
          description = "Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentEntityRelation = {
      description = "Relationship between Entities.",
      id = "GoogleCloudDocumentaiV1beta1DocumentEntityRelation",
      properties = {
        objectId = {
          description = "Object entity id.",
          type = "string",
        },
        relation = {
          description = "Relationship description.",
          type = "string",
        },
        subjectId = {
          description = "Subject entity id.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPage = {
      description = "A page in a Document.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPage",
      properties = {
        blocks = {
          description = "A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageBlock",
          },
          type = "array",
        },
        detectedBarcodes = {
          description = "A list of detected barcodes.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode",
          },
          type = "array",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        dimension = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDimension",
          description = "Physical dimension of the page.",
        },
        formFields = {
          description = "A list of visually detected form fields on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageFormField",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageImage",
          description = "Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.",
        },
        imageQualityScores = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores",
          description = "Image Quality Scores.",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for the page.",
        },
        lines = {
          description = "A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLine",
          },
          type = "array",
        },
        pageNumber = {
          description = "1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.",
          format = "int32",
          type = "integer",
        },
        paragraphs = {
          description = "A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageParagraph",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          description = "The history of this page.",
        },
        symbols = {
          description = "A list of visually detected symbols on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageSymbol",
          },
          type = "array",
        },
        tables = {
          description = "A list of visually detected tables on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageTable",
          },
          type = "array",
        },
        tokens = {
          description = "A list of visually detected tokens on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageToken",
          },
          type = "array",
        },
        transforms = {
          description = "Transformation matrices that were applied to the original document image to produce Page.image.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageMatrix",
          },
          type = "array",
        },
        visualElements = {
          description = "A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageVisualElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageAnchor = {
      description = "Referencing the visual context of the entity in the Document.pages. Page anchors can be cross-page, consist of multiple bounding polygons and optionally reference specific layout element types.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageAnchor",
      properties = {
        pageRefs = {
          description = "One or more references to visual page elements",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef = {
      description = "Represents a weak reference to a page element within a document.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1BoundingPoly",
          description = "Optional. Identifies the bounding polygon of a layout element on the page.",
        },
        confidence = {
          description = "Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        layoutId = {
          description = "Optional. Deprecated. Use PageRef.bounding_poly instead.",
          type = "string",
        },
        layoutType = {
          description = "Optional. The type of the layout element that is being referenced if any.",
          enum = {
            "LAYOUT_TYPE_UNSPECIFIED",
            "BLOCK",
            "PARAGRAPH",
            "LINE",
            "TOKEN",
            "VISUAL_ELEMENT",
            "TABLE",
            "FORM_FIELD",
          },
          enumDescriptions = {
            "Layout Unspecified.",
            "References a Page.blocks element.",
            "References a Page.paragraphs element.",
            "References a Page.lines element.",
            "References a Page.tokens element.",
            "References a Page.visual_elements element.",
            "Refrrences a Page.tables element.",
            "References a Page.form_fields element.",
          },
          type = "string",
        },
        page = {
          description = "Required. Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageBlock = {
      description = "A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageBlock",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for Block.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode = {
      description = "A detected barcode.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode",
      properties = {
        barcode = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1Barcode",
          description = "Detailed barcode information of the DetectedBarcode.",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for DetectedBarcode.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage = {
      description = "Detected language for a structural component.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
      properties = {
        confidence = {
          description = "Confidence of detected language. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageDimension = {
      description = "Dimension for the page.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageDimension",
      properties = {
        height = {
          description = "Page height.",
          format = "float",
          type = "number",
        },
        unit = {
          description = "Dimension unit.",
          type = "string",
        },
        width = {
          description = "Page width.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageFormField = {
      description = "A form field detected on the page.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageFormField",
      properties = {
        correctedKeyText = {
          description = "Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.",
          type = "string",
        },
        correctedValueText = {
          description = "Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.",
          type = "string",
        },
        fieldName = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.",
        },
        fieldValue = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for the FormField value.",
        },
        nameDetectedLanguages = {
          description = "A list of detected languages for name together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          description = "The history of this annotation.",
        },
        valueDetectedLanguages = {
          description = "A list of detected languages for value together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        valueType = {
          description = "If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageImage = {
      description = "Rendered image contents for this page.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageImage",
      properties = {
        content = {
          description = "Raw byte content of the image.",
          format = "byte",
          type = "string",
        },
        height = {
          description = "Height of the image in pixels.",
          format = "int32",
          type = "integer",
        },
        mimeType = {
          description = "Encoding mime type for the image.",
          type = "string",
        },
        width = {
          description = "Width of the image in pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores = {
      description = "Image Quality Scores for the page image",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores",
      properties = {
        detectedDefects = {
          description = "A list of detected defects.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect",
          },
          type = "array",
        },
        qualityScore = {
          description = "The overall quality score. Range `[0, 1]` where 1 is perfect quality.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect = {
      description = "Image Quality Defects",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect",
      properties = {
        confidence = {
          description = "Confidence of detected defect. Range `[0, 1]` where 1 indicates strong confidence of that the defect exists.",
          format = "float",
          type = "number",
        },
        type = {
          description = "Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageLayout = {
      description = "Visual element describing a layout unit on a page.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1BoundingPoly",
          description = "The bounding polygon for the Layout.",
        },
        confidence = {
          description = "Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        orientation = {
          description = "Detected orientation for the Layout.",
          enum = {
            "ORIENTATION_UNSPECIFIED",
            "PAGE_UP",
            "PAGE_RIGHT",
            "PAGE_DOWN",
            "PAGE_LEFT",
          },
          enumDescriptions = {
            "Unspecified orientation.",
            "Orientation is aligned with page up.",
            "Orientation is aligned with page right. Turn the head 90 degrees clockwise from upright to read.",
            "Orientation is aligned with page down. Turn the head 180 degrees from upright to read.",
            "Orientation is aligned with page left. Turn the head 90 degrees counterclockwise from upright to read.",
          },
          type = "string",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentTextAnchor",
          description = "Text anchor indexing into the Document.text.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageLine = {
      description = "A collection of tokens that a human would perceive as a line. Does not cross column boundaries, can be horizontal, vertical, etc.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageLine",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for Line.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageMatrix = {
      description = "Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageMatrix",
      properties = {
        cols = {
          description = "Number of columns in the matrix.",
          format = "int32",
          type = "integer",
        },
        data = {
          description = "The matrix data.",
          format = "byte",
          type = "string",
        },
        rows = {
          description = "Number of rows in the matrix.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageParagraph = {
      description = "A collection of lines that a human would perceive as a paragraph.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageParagraph",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for Paragraph.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageSymbol = {
      description = "A detected symbol.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageSymbol",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for Symbol.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageTable = {
      description = "A table representation similar to HTML table structure.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageTable",
      properties = {
        bodyRows = {
          description = "Body rows of the table.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow",
          },
          type = "array",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        headerRows = {
          description = "Header rows of the table.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for Table.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          description = "The history of this table.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell = {
      description = "A cell representation inside the table.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell",
      properties = {
        colSpan = {
          description = "How many columns this cell spans.",
          format = "int32",
          type = "integer",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for TableCell.",
        },
        rowSpan = {
          description = "How many rows this cell spans.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow = {
      description = "A row of table cells.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow",
      properties = {
        cells = {
          description = "Cells that make up this row.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageToken = {
      description = "A detected token.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageToken",
      properties = {
        detectedBreak = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak",
          description = "Detected break at the end of a Token.",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for Token.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak = {
      description = "Detected break at the end of a Token.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak",
      properties = {
        type = {
          description = "Detected break type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "SPACE",
            "WIDE_SPACE",
            "HYPHEN",
          },
          enumDescriptions = {
            "Unspecified break type.",
            "A single whitespace.",
            "A wider whitespace.",
            "A hyphen that indicates that a token has been split across lines.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentPageVisualElement = {
      description = "Detected non-text visual elements e.g. checkbox, signature etc. on the page.",
      id = "GoogleCloudDocumentaiV1beta1DocumentPageVisualElement",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentPageLayout",
          description = "Layout for VisualElement.",
        },
        type = {
          description = "Type of the VisualElement.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentProvenance = {
      description = "Structure to identify provenance relationships between annotations in different revisions.",
      id = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
      properties = {
        id = {
          description = "The Id of this operation. Needs to be unique within the scope of the revision.",
          format = "int32",
          type = "integer",
        },
        parents = {
          description = "References to the original elements that are replaced.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenanceParent",
          },
          type = "array",
        },
        revision = {
          description = "The index of the revision that produced this element.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of provenance operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "ADD",
            "REMOVE",
            "REPLACE",
            "EVAL_REQUESTED",
            "EVAL_APPROVED",
            "EVAL_SKIPPED",
          },
          enumDescriptions = {
            "Operation type unspecified. If no operation is specified a provenance entry is simply used to match against a `parent`.",
            "Add an element.",
            "Remove an element identified by `parent`.",
            "Replace an element identified by `parent`.",
            "Request human review for the element identified by `parent`.",
            "Element is reviewed and approved at human review, confidence will be set to 1.0.",
            "Element is skipped in the validation process.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentProvenanceParent = {
      description = "The parent element the current element is based on. Used for referencing/aligning, removal and replacement operations.",
      id = "GoogleCloudDocumentaiV1beta1DocumentProvenanceParent",
      properties = {
        id = {
          description = "The id of the parent provenance.",
          format = "int32",
          type = "integer",
        },
        index = {
          description = "The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.",
          format = "int32",
          type = "integer",
        },
        revision = {
          description = "The index of the index into current revision's parent_ids list.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentRevision = {
      description = "Contains past or forward revisions of this document.",
      id = "GoogleCloudDocumentaiV1beta1DocumentRevision",
      properties = {
        agent = {
          description = "If the change was made by a person specify the name or id of that person.",
          type = "string",
        },
        createTime = {
          description = "The time that the revision was created.",
          format = "google-datetime",
          type = "string",
        },
        humanReview = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview",
          description = "Human Review information of this revision.",
        },
        id = {
          description = "Id of the revision. Unique within the context of the document.",
          type = "string",
        },
        parent = {
          description = "The revisions that this revision is based on. This can include one or more parent (when documents are merged.) This field represents the index into the `revisions` field.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        parentIds = {
          description = "The revisions that this revision is based on. Must include all the ids that have anything to do with this revision - eg. there are `provenance.parent.revision` fields that index into this field.",
          items = {
            type = "string",
          },
          type = "array",
        },
        processor = {
          description = "If the annotation was made by processor identify the processor by its resource name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview = {
      description = "Human Review information of the document.",
      id = "GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview",
      properties = {
        state = {
          description = "Human review state. e.g. `requested`, `succeeded`, `rejected`.",
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentShardInfo = {
      description = "For a large document, sharding may be performed to produce several document shards. Each document shard contains this field to detail which shard it is.",
      id = "GoogleCloudDocumentaiV1beta1DocumentShardInfo",
      properties = {
        shardCount = {
          description = "Total number of shards.",
          format = "int64",
          type = "string",
        },
        shardIndex = {
          description = "The 0-based index of this shard.",
          format = "int64",
          type = "string",
        },
        textOffset = {
          description = "The index of the first character in Document.text in the overall document global text.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentStyle = {
      description = "Annotation for common text style attributes. This adheres to CSS conventions as much as possible.",
      id = "GoogleCloudDocumentaiV1beta1DocumentStyle",
      properties = {
        backgroundColor = {
          ["$ref"] = "GoogleTypeColor",
          description = "Text background color.",
        },
        color = {
          ["$ref"] = "GoogleTypeColor",
          description = "Text color.",
        },
        fontFamily = {
          description = "Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp",
          type = "string",
        },
        fontSize = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentStyleFontSize",
          description = "Font size.",
        },
        fontWeight = {
          description = "Font weight. Possible values are normal, bold, bolder, and lighter. https://www.w3schools.com/cssref/pr_font_weight.asp",
          type = "string",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentTextAnchor",
          description = "Text anchor indexing into the Document.text.",
        },
        textDecoration = {
          description = "Text decoration. Follows CSS standard. https://www.w3schools.com/cssref/pr_text_text-decoration.asp",
          type = "string",
        },
        textStyle = {
          description = "Text style. Possible values are normal, italic, and oblique. https://www.w3schools.com/cssref/pr_font_font-style.asp",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentStyleFontSize = {
      description = "Font size with unit.",
      id = "GoogleCloudDocumentaiV1beta1DocumentStyleFontSize",
      properties = {
        size = {
          description = "Font size for the text.",
          format = "float",
          type = "number",
        },
        unit = {
          description = "Unit for the font size. Follows CSS naming (in, px, pt, etc.).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentTextAnchor = {
      description = "Text reference indexing into the Document.text.",
      id = "GoogleCloudDocumentaiV1beta1DocumentTextAnchor",
      properties = {
        content = {
          description = "Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.",
          type = "string",
        },
        textSegments = {
          description = "The text segments from the Document.text.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment = {
      description = "A text segment in the Document.text. The indices may be out of bounds which indicate that the text extends into another document shard for large sharded documents. See ShardInfo.text_offset",
      id = "GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment",
      properties = {
        endIndex = {
          description = "TextSegment half open end UTF-8 char index in the Document.text.",
          format = "int64",
          type = "string",
        },
        startIndex = {
          description = "TextSegment start UTF-8 char index in the Document.text.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1DocumentTextChange = {
      description = "This message is used for text changes aka. OCR corrections.",
      id = "GoogleCloudDocumentaiV1beta1DocumentTextChange",
      properties = {
        changedText = {
          description = "The text that replaces the text identified in the `text_anchor`.",
          type = "string",
        },
        provenance = {
          description = "The history of this annotation.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentProvenance",
          },
          type = "array",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1DocumentTextAnchor",
          description = "Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1GcsDestination = {
      description = "The Google Cloud Storage location where the output file will be written to.",
      id = "GoogleCloudDocumentaiV1beta1GcsDestination",
      properties = {
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1GcsSource = {
      description = "The Google Cloud Storage location where the input file will be read from.",
      id = "GoogleCloudDocumentaiV1beta1GcsSource",
      properties = {
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1InputConfig = {
      description = "The desired input location and metadata.",
      id = "GoogleCloudDocumentaiV1beta1InputConfig",
      properties = {
        gcsSource = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1GcsSource",
          description = "The Google Cloud Storage location to read the input from. This must be a single file.",
        },
        mimeType = {
          description = "Required. Mimetype of the input. Current supported mimetypes are application/pdf, image/tiff, and image/gif. In addition, application/json type is supported for requests with ProcessDocumentRequest.automl_params field set. The JSON file needs to be in Document format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudDocumentaiV1beta1NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate (starts from the top of the image).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1OperationMetadata = {
      description = "Contains metadata for the BatchProcessDocuments operation.",
      id = "GoogleCloudDocumentaiV1beta1OperationMetadata",
      properties = {
        createTime = {
          description = "The creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The state of the current batch processing.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACCEPTED",
            "WAITING",
            "RUNNING",
            "SUCCEEDED",
            "CANCELLED",
            "FAILED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "Request is received.",
            "Request operation is waiting for scheduling.",
            "Request is being processed.",
            "The batch processing completed successfully.",
            "The batch processing was cancelled.",
            "The batch processing has failed.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing.",
          type = "string",
        },
        updateTime = {
          description = "The last update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1OutputConfig = {
      description = "The desired output location and metadata.",
      id = "GoogleCloudDocumentaiV1beta1OutputConfig",
      properties = {
        gcsDestination = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1GcsDestination",
          description = "The Google Cloud Storage location to write the output to.",
        },
        pagesPerShard = {
          description = "The max number of pages to include into each output Document shard JSON on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 parsed pages will be produced. If `pages_per_shard` = 20, then 5 Document shard JSON files each containing 20 parsed pages will be written under the prefix OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where x and y are 1-indexed page numbers. Example GCS outputs with 157 pages and pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json pages-101-to-150.json pages-151-to-157.json",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1ProcessDocumentResponse = {
      description = "Response to a single document processing request.",
      id = "GoogleCloudDocumentaiV1beta1ProcessDocumentResponse",
      properties = {
        inputConfig = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1InputConfig",
          description = "Information about the input file. This is the same as the corresponding input config in the request.",
        },
        outputConfig = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta1OutputConfig",
          description = "The output location of the parsed responses. The responses are written to this location as JSON-serialized `Document` objects.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta1Vertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.",
      id = "GoogleCloudDocumentaiV1beta1Vertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "int32",
          type = "integer",
        },
        y = {
          description = "Y coordinate (starts from the top of the image).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2Barcode = {
      description = "Encodes the detailed information of a barcode.",
      id = "GoogleCloudDocumentaiV1beta2Barcode",
      properties = {
        format = {
          description = "Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type. - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13 type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code type. - `DATABAR`: GS1 DataBar code type.",
          type = "string",
        },
        rawValue = {
          description = "Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`.",
          type = "string",
        },
        valueFormat = {
          description = "Value format describes the format of the value that a barcode encodes. The supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`: Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`: Calendar event. - `DRIVER_LICENSE`: Driver's license.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse = {
      description = "Response to an batch document processing request. This is returned in the LRO Operation after the operation is complete.",
      id = "GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse",
      properties = {
        responses = {
          description = "Responses for each individual document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2ProcessDocumentResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2BoundingPoly = {
      description = "A bounding polygon for the detected image annotation.",
      id = "GoogleCloudDocumentaiV1beta2BoundingPoly",
      properties = {
        normalizedVertices = {
          description = "The bounding polygon normalized vertices.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2NormalizedVertex",
          },
          type = "array",
        },
        vertices = {
          description = "The bounding polygon vertices.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2Vertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2Document = {
      description = "Document represents the canonical document resource in Document AI. It is an interchange format that provides insights into documents and allows for collaboration between users and Document AI to iterate and optimize for quality.",
      id = "GoogleCloudDocumentaiV1beta2Document",
      properties = {
        content = {
          description = "Optional. Inline document content, represented as a stream of bytes. Note: As with all `bytes` fields, protobuffers use a pure binary representation, whereas JSON representations use base64.",
          format = "byte",
          type = "string",
        },
        entities = {
          description = "A list of entities detected on Document.text. For document shards, entities in this list may cross shard boundaries.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentEntity",
          },
          type = "array",
        },
        entityRelations = {
          description = "Placeholder. Relationship among Document.entities.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentEntityRelation",
          },
          type = "array",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Any error that occurred while processing this document.",
        },
        labels = {
          description = "Labels for this document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentLabel",
          },
          type = "array",
        },
        mimeType = {
          description = "An IANA published MIME type (also referred to as media type). For more information, see https://www.iana.org/assignments/media-types/media-types.xhtml.",
          type = "string",
        },
        pages = {
          description = "Visual page layout for the Document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPage",
          },
          type = "array",
        },
        revisions = {
          description = "Placeholder. Revision history of this document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentRevision",
          },
          type = "array",
        },
        shardInfo = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentShardInfo",
          description = "Information about the sharding if this document is sharded part of a larger document. If the document is not sharded, this message is not specified.",
        },
        text = {
          description = "Optional. UTF-8 encoded text in reading order from the document.",
          type = "string",
        },
        textChanges = {
          description = "Placeholder. A list of text corrections made to Document.text. This is usually used for annotating corrections to OCR mistakes. Text changes for a given revision may not overlap with each other.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentTextChange",
          },
          type = "array",
        },
        textStyles = {
          description = "Styles for the Document.text.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentStyle",
          },
          type = "array",
        },
        uri = {
          description = "Optional. Currently supports Google Cloud Storage URI of the form `gs://bucket_name/object_name`. Object versioning is not supported. See [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris) for more info.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentEntity = {
      description = "An entity that could be a phrase in the text or a property that belongs to the document. It is a known entity type, such as a person, an organization, or location.",
      id = "GoogleCloudDocumentaiV1beta2DocumentEntity",
      properties = {
        confidence = {
          description = "Optional. Confidence of detected Schema entity. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        id = {
          description = "Optional. Canonical id. This will be a unique value in the entity list for this document.",
          type = "string",
        },
        mentionId = {
          description = "Optional. Deprecated. Use `id` field instead.",
          type = "string",
        },
        mentionText = {
          description = "Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.",
          type = "string",
        },
        normalizedValue = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue",
          description = "Optional. Normalized entity value. Absent if the extracted value could not be converted or the type (e.g. address) is not supported for certain parsers. This field is also only populated for certain supported document types.",
        },
        pageAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageAnchor",
          description = "Optional. Represents the provenance of this entity wrt. the location on the page where it was found.",
        },
        properties = {
          description = "Optional. Entities can be nested to form a hierarchical data structure representing the content in the document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentEntity",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          description = "Optional. The history of this annotation.",
        },
        redacted = {
          description = "Optional. Whether the entity will be redacted for de-identification purposes.",
          type = "boolean",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentTextAnchor",
          description = "Optional. Provenance of the entity. Text anchor indexing into the Document.text.",
        },
        type = {
          description = "Required. Entity type from a schema e.g. `Address`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue = {
      description = "Parsed and normalized entity value.",
      id = "GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue",
      properties = {
        addressValue = {
          ["$ref"] = "GoogleTypePostalAddress",
          description = "Postal address. See also: https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto",
        },
        booleanValue = {
          description = "Boolean value. Can be used for entities with binary values, or for checkboxes.",
          type = "boolean",
        },
        dateValue = {
          ["$ref"] = "GoogleTypeDate",
          description = "Date value. Includes year, month, day. See also: https://github.com/googleapis/googleapis/blob/master/google/type/date.proto",
        },
        datetimeValue = {
          ["$ref"] = "GoogleTypeDateTime",
          description = "DateTime value. Includes date, time, and timezone. See also: https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto",
        },
        floatValue = {
          description = "Float value.",
          format = "float",
          type = "number",
        },
        integerValue = {
          description = "Integer value.",
          format = "int32",
          type = "integer",
        },
        moneyValue = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Money value. See also: https://github.com/googleapis/googleapis/blob/master/google/type/money.proto",
        },
        text = {
          description = "Optional. An optional field to store a normalized string. For some entity types, one of respective `structured_value` fields may also be populated. Also not all the types of `structured_value` will be normalized. For example, some processors may not generate `float` or `integer` normalized text by default. Below are sample formats mapped to structured values. - Money/Currency type (`money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentEntityRelation = {
      description = "Relationship between Entities.",
      id = "GoogleCloudDocumentaiV1beta2DocumentEntityRelation",
      properties = {
        objectId = {
          description = "Object entity id.",
          type = "string",
        },
        relation = {
          description = "Relationship description.",
          type = "string",
        },
        subjectId = {
          description = "Subject entity id.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentLabel = {
      description = "Label attaches schema information and/or other metadata to segments within a Document. Multiple Labels on a single field can denote either different labels, different instances of the same label created at different times, or some combination of both.",
      id = "GoogleCloudDocumentaiV1beta2DocumentLabel",
      properties = {
        automlModel = {
          description = "Label is generated AutoML model. This field stores the full resource name of the AutoML model. Format: `projects/{project-id}/locations/{location-id}/models/{model-id}`",
          type = "string",
        },
        confidence = {
          description = "Confidence score between 0 and 1 for label assignment.",
          format = "float",
          type = "number",
        },
        name = {
          description = "Name of the label. When the label is generated from AutoML Text Classification model, this field represents the name of the category.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPage = {
      description = "A page in a Document.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPage",
      properties = {
        blocks = {
          description = "A list of visually detected text blocks on the page. A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageBlock",
          },
          type = "array",
        },
        detectedBarcodes = {
          description = "A list of detected barcodes.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode",
          },
          type = "array",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        dimension = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDimension",
          description = "Physical dimension of the page.",
        },
        formFields = {
          description = "A list of visually detected form fields on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageFormField",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageImage",
          description = "Rendered image for this page. This image is preprocessed to remove any skew, rotation, and distortions such that the annotation bounding boxes can be upright and axis-aligned.",
        },
        imageQualityScores = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores",
          description = "Image Quality Scores.",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for the page.",
        },
        lines = {
          description = "A list of visually detected text lines on the page. A collection of tokens that a human would perceive as a line.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLine",
          },
          type = "array",
        },
        pageNumber = {
          description = "1-based index for current Page in a parent Document. Useful when a page is taken out of a Document for individual processing.",
          format = "int32",
          type = "integer",
        },
        paragraphs = {
          description = "A list of visually detected text paragraphs on the page. A collection of lines that a human would perceive as a paragraph.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageParagraph",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          description = "The history of this page.",
        },
        symbols = {
          description = "A list of visually detected symbols on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageSymbol",
          },
          type = "array",
        },
        tables = {
          description = "A list of visually detected tables on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageTable",
          },
          type = "array",
        },
        tokens = {
          description = "A list of visually detected tokens on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageToken",
          },
          type = "array",
        },
        transforms = {
          description = "Transformation matrices that were applied to the original document image to produce Page.image.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageMatrix",
          },
          type = "array",
        },
        visualElements = {
          description = "A list of detected non-text visual elements e.g. checkbox, signature etc. on the page.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageVisualElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageAnchor = {
      description = "Referencing the visual context of the entity in the Document.pages. Page anchors can be cross-page, consist of multiple bounding polygons and optionally reference specific layout element types.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageAnchor",
      properties = {
        pageRefs = {
          description = "One or more references to visual page elements",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef = {
      description = "Represents a weak reference to a page element within a document.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2BoundingPoly",
          description = "Optional. Identifies the bounding polygon of a layout element on the page.",
        },
        confidence = {
          description = "Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        layoutId = {
          description = "Optional. Deprecated. Use PageRef.bounding_poly instead.",
          type = "string",
        },
        layoutType = {
          description = "Optional. The type of the layout element that is being referenced if any.",
          enum = {
            "LAYOUT_TYPE_UNSPECIFIED",
            "BLOCK",
            "PARAGRAPH",
            "LINE",
            "TOKEN",
            "VISUAL_ELEMENT",
            "TABLE",
            "FORM_FIELD",
          },
          enumDescriptions = {
            "Layout Unspecified.",
            "References a Page.blocks element.",
            "References a Page.paragraphs element.",
            "References a Page.lines element.",
            "References a Page.tokens element.",
            "References a Page.visual_elements element.",
            "Refrrences a Page.tables element.",
            "References a Page.form_fields element.",
          },
          type = "string",
        },
        page = {
          description = "Required. Index into the Document.pages element, for example using `Document.pages` to locate the related page element. This field is skipped when its value is the default `0`. See https://developers.google.com/protocol-buffers/docs/proto3#json.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageBlock = {
      description = "A block has a set of lines (collected into paragraphs) that have a common line-spacing and orientation.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageBlock",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for Block.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode = {
      description = "A detected barcode.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode",
      properties = {
        barcode = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2Barcode",
          description = "Detailed barcode information of the DetectedBarcode.",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for DetectedBarcode.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage = {
      description = "Detected language for a structural component.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
      properties = {
        confidence = {
          description = "Confidence of detected language. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageDimension = {
      description = "Dimension for the page.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageDimension",
      properties = {
        height = {
          description = "Page height.",
          format = "float",
          type = "number",
        },
        unit = {
          description = "Dimension unit.",
          type = "string",
        },
        width = {
          description = "Page width.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageFormField = {
      description = "A form field detected on the page.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageFormField",
      properties = {
        correctedKeyText = {
          description = "Created for Labeling UI to export key text. If corrections were made to the text identified by the `field_name.text_anchor`, this field will contain the correction.",
          type = "string",
        },
        correctedValueText = {
          description = "Created for Labeling UI to export value text. If corrections were made to the text identified by the `field_value.text_anchor`, this field will contain the correction.",
          type = "string",
        },
        fieldName = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.",
        },
        fieldValue = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for the FormField value.",
        },
        nameDetectedLanguages = {
          description = "A list of detected languages for name together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          description = "The history of this annotation.",
        },
        valueDetectedLanguages = {
          description = "A list of detected languages for value together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        valueType = {
          description = "If the value is non-textual, this field represents the type. Current valid values are: - blank (this indicates the `field_value` is normal text) - `unfilled_checkbox` - `filled_checkbox`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageImage = {
      description = "Rendered image contents for this page.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageImage",
      properties = {
        content = {
          description = "Raw byte content of the image.",
          format = "byte",
          type = "string",
        },
        height = {
          description = "Height of the image in pixels.",
          format = "int32",
          type = "integer",
        },
        mimeType = {
          description = "Encoding mime type for the image.",
          type = "string",
        },
        width = {
          description = "Width of the image in pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores = {
      description = "Image Quality Scores for the page image",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores",
      properties = {
        detectedDefects = {
          description = "A list of detected defects.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect",
          },
          type = "array",
        },
        qualityScore = {
          description = "The overall quality score. Range `[0, 1]` where 1 is perfect quality.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect = {
      description = "Image Quality Defects",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect",
      properties = {
        confidence = {
          description = "Confidence of detected defect. Range `[0, 1]` where 1 indicates strong confidence of that the defect exists.",
          format = "float",
          type = "number",
        },
        type = {
          description = "Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageLayout = {
      description = "Visual element describing a layout unit on a page.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
      properties = {
        boundingPoly = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2BoundingPoly",
          description = "The bounding polygon for the Layout.",
        },
        confidence = {
          description = "Confidence of the current Layout within context of the object this layout is for. e.g. confidence can be for a single token, a table, a visual element, etc. depending on context. Range `[0, 1]`.",
          format = "float",
          type = "number",
        },
        orientation = {
          description = "Detected orientation for the Layout.",
          enum = {
            "ORIENTATION_UNSPECIFIED",
            "PAGE_UP",
            "PAGE_RIGHT",
            "PAGE_DOWN",
            "PAGE_LEFT",
          },
          enumDescriptions = {
            "Unspecified orientation.",
            "Orientation is aligned with page up.",
            "Orientation is aligned with page right. Turn the head 90 degrees clockwise from upright to read.",
            "Orientation is aligned with page down. Turn the head 180 degrees from upright to read.",
            "Orientation is aligned with page left. Turn the head 90 degrees counterclockwise from upright to read.",
          },
          type = "string",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentTextAnchor",
          description = "Text anchor indexing into the Document.text.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageLine = {
      description = "A collection of tokens that a human would perceive as a line. Does not cross column boundaries, can be horizontal, vertical, etc.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageLine",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for Line.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageMatrix = {
      description = "Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageMatrix",
      properties = {
        cols = {
          description = "Number of columns in the matrix.",
          format = "int32",
          type = "integer",
        },
        data = {
          description = "The matrix data.",
          format = "byte",
          type = "string",
        },
        rows = {
          description = "Number of rows in the matrix.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageParagraph = {
      description = "A collection of lines that a human would perceive as a paragraph.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageParagraph",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for Paragraph.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageSymbol = {
      description = "A detected symbol.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageSymbol",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for Symbol.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageTable = {
      description = "A table representation similar to HTML table structure.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageTable",
      properties = {
        bodyRows = {
          description = "Body rows of the table.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow",
          },
          type = "array",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        headerRows = {
          description = "Header rows of the table.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for Table.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          description = "The history of this table.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell = {
      description = "A cell representation inside the table.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell",
      properties = {
        colSpan = {
          description = "How many columns this cell spans.",
          format = "int32",
          type = "integer",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for TableCell.",
        },
        rowSpan = {
          description = "How many rows this cell spans.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow = {
      description = "A row of table cells.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow",
      properties = {
        cells = {
          description = "Cells that make up this row.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageToken = {
      description = "A detected token.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageToken",
      properties = {
        detectedBreak = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak",
          description = "Detected break at the end of a Token.",
        },
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for Token.",
        },
        provenance = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          description = "The history of this annotation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak = {
      description = "Detected break at the end of a Token.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak",
      properties = {
        type = {
          description = "Detected break type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "SPACE",
            "WIDE_SPACE",
            "HYPHEN",
          },
          enumDescriptions = {
            "Unspecified break type.",
            "A single whitespace.",
            "A wider whitespace.",
            "A hyphen that indicates that a token has been split across lines.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentPageVisualElement = {
      description = "Detected non-text visual elements e.g. checkbox, signature etc. on the page.",
      id = "GoogleCloudDocumentaiV1beta2DocumentPageVisualElement",
      properties = {
        detectedLanguages = {
          description = "A list of detected languages together with confidence.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage",
          },
          type = "array",
        },
        layout = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentPageLayout",
          description = "Layout for VisualElement.",
        },
        type = {
          description = "Type of the VisualElement.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentProvenance = {
      description = "Structure to identify provenance relationships between annotations in different revisions.",
      id = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
      properties = {
        id = {
          description = "The Id of this operation. Needs to be unique within the scope of the revision.",
          format = "int32",
          type = "integer",
        },
        parents = {
          description = "References to the original elements that are replaced.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenanceParent",
          },
          type = "array",
        },
        revision = {
          description = "The index of the revision that produced this element.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of provenance operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "ADD",
            "REMOVE",
            "REPLACE",
            "EVAL_REQUESTED",
            "EVAL_APPROVED",
            "EVAL_SKIPPED",
          },
          enumDescriptions = {
            "Operation type unspecified. If no operation is specified a provenance entry is simply used to match against a `parent`.",
            "Add an element.",
            "Remove an element identified by `parent`.",
            "Replace an element identified by `parent`.",
            "Request human review for the element identified by `parent`.",
            "Element is reviewed and approved at human review, confidence will be set to 1.0.",
            "Element is skipped in the validation process.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentProvenanceParent = {
      description = "The parent element the current element is based on. Used for referencing/aligning, removal and replacement operations.",
      id = "GoogleCloudDocumentaiV1beta2DocumentProvenanceParent",
      properties = {
        id = {
          description = "The id of the parent provenance.",
          format = "int32",
          type = "integer",
        },
        index = {
          description = "The index of the parent item in the corresponding item list (eg. list of entities, properties within entities, etc.) in the parent revision.",
          format = "int32",
          type = "integer",
        },
        revision = {
          description = "The index of the index into current revision's parent_ids list.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentRevision = {
      description = "Contains past or forward revisions of this document.",
      id = "GoogleCloudDocumentaiV1beta2DocumentRevision",
      properties = {
        agent = {
          description = "If the change was made by a person specify the name or id of that person.",
          type = "string",
        },
        createTime = {
          description = "The time that the revision was created.",
          format = "google-datetime",
          type = "string",
        },
        humanReview = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview",
          description = "Human Review information of this revision.",
        },
        id = {
          description = "Id of the revision. Unique within the context of the document.",
          type = "string",
        },
        parent = {
          description = "The revisions that this revision is based on. This can include one or more parent (when documents are merged.) This field represents the index into the `revisions` field.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        parentIds = {
          description = "The revisions that this revision is based on. Must include all the ids that have anything to do with this revision - eg. there are `provenance.parent.revision` fields that index into this field.",
          items = {
            type = "string",
          },
          type = "array",
        },
        processor = {
          description = "If the annotation was made by processor identify the processor by its resource name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview = {
      description = "Human Review information of the document.",
      id = "GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview",
      properties = {
        state = {
          description = "Human review state. e.g. `requested`, `succeeded`, `rejected`.",
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentShardInfo = {
      description = "For a large document, sharding may be performed to produce several document shards. Each document shard contains this field to detail which shard it is.",
      id = "GoogleCloudDocumentaiV1beta2DocumentShardInfo",
      properties = {
        shardCount = {
          description = "Total number of shards.",
          format = "int64",
          type = "string",
        },
        shardIndex = {
          description = "The 0-based index of this shard.",
          format = "int64",
          type = "string",
        },
        textOffset = {
          description = "The index of the first character in Document.text in the overall document global text.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentStyle = {
      description = "Annotation for common text style attributes. This adheres to CSS conventions as much as possible.",
      id = "GoogleCloudDocumentaiV1beta2DocumentStyle",
      properties = {
        backgroundColor = {
          ["$ref"] = "GoogleTypeColor",
          description = "Text background color.",
        },
        color = {
          ["$ref"] = "GoogleTypeColor",
          description = "Text color.",
        },
        fontFamily = {
          description = "Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp",
          type = "string",
        },
        fontSize = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentStyleFontSize",
          description = "Font size.",
        },
        fontWeight = {
          description = "Font weight. Possible values are normal, bold, bolder, and lighter. https://www.w3schools.com/cssref/pr_font_weight.asp",
          type = "string",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentTextAnchor",
          description = "Text anchor indexing into the Document.text.",
        },
        textDecoration = {
          description = "Text decoration. Follows CSS standard. https://www.w3schools.com/cssref/pr_text_text-decoration.asp",
          type = "string",
        },
        textStyle = {
          description = "Text style. Possible values are normal, italic, and oblique. https://www.w3schools.com/cssref/pr_font_font-style.asp",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentStyleFontSize = {
      description = "Font size with unit.",
      id = "GoogleCloudDocumentaiV1beta2DocumentStyleFontSize",
      properties = {
        size = {
          description = "Font size for the text.",
          format = "float",
          type = "number",
        },
        unit = {
          description = "Unit for the font size. Follows CSS naming (in, px, pt, etc.).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentTextAnchor = {
      description = "Text reference indexing into the Document.text.",
      id = "GoogleCloudDocumentaiV1beta2DocumentTextAnchor",
      properties = {
        content = {
          description = "Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.",
          type = "string",
        },
        textSegments = {
          description = "The text segments from the Document.text.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment = {
      description = "A text segment in the Document.text. The indices may be out of bounds which indicate that the text extends into another document shard for large sharded documents. See ShardInfo.text_offset",
      id = "GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment",
      properties = {
        endIndex = {
          description = "TextSegment half open end UTF-8 char index in the Document.text.",
          format = "int64",
          type = "string",
        },
        startIndex = {
          description = "TextSegment start UTF-8 char index in the Document.text.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2DocumentTextChange = {
      description = "This message is used for text changes aka. OCR corrections.",
      id = "GoogleCloudDocumentaiV1beta2DocumentTextChange",
      properties = {
        changedText = {
          description = "The text that replaces the text identified in the `text_anchor`.",
          type = "string",
        },
        provenance = {
          description = "The history of this annotation.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentProvenance",
          },
          type = "array",
        },
        textAnchor = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2DocumentTextAnchor",
          description = "Provenance of the correction. Text anchor indexing into the Document.text. There can only be a single `TextAnchor.text_segments` element. If the start and end index of the text segment are the same, the text change is inserted before that index.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2GcsDestination = {
      description = "The Google Cloud Storage location where the output file will be written to.",
      id = "GoogleCloudDocumentaiV1beta2GcsDestination",
      properties = {
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2GcsSource = {
      description = "The Google Cloud Storage location where the input file will be read from.",
      id = "GoogleCloudDocumentaiV1beta2GcsSource",
      properties = {
        uri = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2InputConfig = {
      description = "The desired input location and metadata.",
      id = "GoogleCloudDocumentaiV1beta2InputConfig",
      properties = {
        contents = {
          description = "Content in bytes, represented as a stream of bytes. Note: As with all `bytes` fields, proto buffer messages use a pure binary representation, whereas JSON representations use base64. This field only works for synchronous ProcessDocument method.",
          format = "byte",
          type = "string",
        },
        gcsSource = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2GcsSource",
          description = "The Google Cloud Storage location to read the input from. This must be a single file.",
        },
        mimeType = {
          description = "Required. Mimetype of the input. Current supported mimetypes are application/pdf, image/tiff, and image/gif. In addition, application/json type is supported for requests with ProcessDocumentRequest.automl_params field set. The JSON file needs to be in Document format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudDocumentaiV1beta2NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate (starts from the top of the image).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2OperationMetadata = {
      description = "Contains metadata for the BatchProcessDocuments operation.",
      id = "GoogleCloudDocumentaiV1beta2OperationMetadata",
      properties = {
        createTime = {
          description = "The creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The state of the current batch processing.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACCEPTED",
            "WAITING",
            "RUNNING",
            "SUCCEEDED",
            "CANCELLED",
            "FAILED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "Request is received.",
            "Request operation is waiting for scheduling.",
            "Request is being processed.",
            "The batch processing completed successfully.",
            "The batch processing was cancelled.",
            "The batch processing has failed.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing.",
          type = "string",
        },
        updateTime = {
          description = "The last update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2OutputConfig = {
      description = "The desired output location and metadata.",
      id = "GoogleCloudDocumentaiV1beta2OutputConfig",
      properties = {
        gcsDestination = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2GcsDestination",
          description = "The Google Cloud Storage location to write the output to.",
        },
        pagesPerShard = {
          description = "The max number of pages to include into each output Document shard JSON on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 parsed pages will be produced. If `pages_per_shard` = 20, then 5 Document shard JSON files each containing 20 parsed pages will be written under the prefix OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where x and y are 1-indexed page numbers. Example GCS outputs with 157 pages and pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json pages-101-to-150.json pages-151-to-157.json",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2ProcessDocumentResponse = {
      description = "Response to a single document processing request.",
      id = "GoogleCloudDocumentaiV1beta2ProcessDocumentResponse",
      properties = {
        inputConfig = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2InputConfig",
          description = "Information about the input file. This is the same as the corresponding input config in the request.",
        },
        outputConfig = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta2OutputConfig",
          description = "The output location of the parsed responses. The responses are written to this location as JSON-serialized `Document` objects.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta2Vertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.",
      id = "GoogleCloudDocumentaiV1beta2Vertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "int32",
          type = "integer",
        },
        y = {
          description = "Y coordinate (starts from the top of the image).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3BatchProcessMetadata = {
      description = "The long running operation metadata for batch process method.",
      id = "GoogleCloudDocumentaiV1beta3BatchProcessMetadata",
      properties = {
        createTime = {
          description = "The creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        individualProcessStatuses = {
          description = "The list of response details of each document.",
          items = {
            ["$ref"] = "GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus",
          },
          type = "array",
        },
        state = {
          description = "The state of the current batch processing.",
          enum = {
            "STATE_UNSPECIFIED",
            "WAITING",
            "RUNNING",
            "SUCCEEDED",
            "CANCELLING",
            "CANCELLED",
            "FAILED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "Request operation is waiting for scheduling.",
            "Request is being processed.",
            "The batch processing completed successfully.",
            "The batch processing was being cancelled.",
            "The batch processing was cancelled.",
            "The batch processing has failed.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing. For example, the error message if the operation is failed.",
          type = "string",
        },
        updateTime = {
          description = "The last update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus = {
      description = "The status of a each individual document in the batch process.",
      id = "GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus",
      properties = {
        humanReviewOperation = {
          description = "The name of the operation triggered by the processed document. If the human review process is not triggered, this field will be empty. It has the same response type and metadata as the long running operation returned by ReviewDocument method.",
          type = "string",
        },
        humanReviewStatus = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3HumanReviewStatus",
          description = "The status of human review on the processed document.",
        },
        inputGcsSource = {
          description = "The source of the document, same as the [input_gcs_source] field in the request when the batch process started. The batch process is started by take snapshot of that document, since a user can move or change that document during the process.",
          type = "string",
        },
        outputGcsDestination = {
          description = "The output_gcs_destination (in the request as `output_gcs_destination`) of the processed document if it was successful, otherwise empty.",
          type = "string",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status processing the document.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3BatchProcessResponse = {
      description = "Response message for batch process document method.",
      id = "GoogleCloudDocumentaiV1beta3BatchProcessResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3CommonOperationMetadata = {
      description = "The common metadata for long running operations.",
      id = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
      properties = {
        createTime = {
          description = "The creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        resource = {
          description = "A related resource to this operation.",
          type = "string",
        },
        state = {
          description = "The state of the operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "CANCELLING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Operation is still running.",
            "Operation is being cancelled.",
            "Operation succeeded.",
            "Operation failed.",
            "Operation is cancelled.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing.",
          type = "string",
        },
        updateTime = {
          description = "The last update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata = {
      description = "The long running operation metadata for delete processor method.",
      id = "GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3DeleteProcessorVersionMetadata = {
      description = "The long running operation metadata for delete processor version method.",
      id = "GoogleCloudDocumentaiV1beta3DeleteProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3DeployProcessorVersionMetadata = {
      description = "The long running operation metadata for deploy processor version method.",
      id = "GoogleCloudDocumentaiV1beta3DeployProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3DeployProcessorVersionResponse = {
      description = "Response message for the deploy processor version method.",
      id = "GoogleCloudDocumentaiV1beta3DeployProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3DisableProcessorMetadata = {
      description = "The long running operation metadata for disable processor method.",
      id = "GoogleCloudDocumentaiV1beta3DisableProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3DisableProcessorResponse = {
      description = "Response message for the disable processor method. Intentionally empty proto for adding fields in future.",
      id = "GoogleCloudDocumentaiV1beta3DisableProcessorResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3EnableProcessorMetadata = {
      description = "The long running operation metadata for enable processor method.",
      id = "GoogleCloudDocumentaiV1beta3EnableProcessorMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3EnableProcessorResponse = {
      description = "Response message for the enable processor method. Intentionally empty proto for adding fields in future.",
      id = "GoogleCloudDocumentaiV1beta3EnableProcessorResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionMetadata = {
      description = "Metadata of the EvaluateProcessorVersion method.",
      id = "GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionResponse = {
      description = "Metadata of the EvaluateProcessorVersion method.",
      id = "GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionResponse",
      properties = {
        evaluation = {
          description = "The resource name of the created evaluation.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3HumanReviewStatus = {
      description = "The status of human review on a processed document.",
      id = "GoogleCloudDocumentaiV1beta3HumanReviewStatus",
      properties = {
        humanReviewOperation = {
          description = "The name of the operation triggered by the processed document. This field is populated only when the [state] is [HUMAN_REVIEW_IN_PROGRESS]. It has the same response type and metadata as the long running operation returned by [ReviewDocument] method.",
          type = "string",
        },
        state = {
          description = "The state of human review on the processing request.",
          enum = {
            "STATE_UNSPECIFIED",
            "SKIPPED",
            "VALIDATION_PASSED",
            "IN_PROGRESS",
            "ERROR",
          },
          enumDescriptions = {
            "Human review state is unspecified. Most likely due to an internal error.",
            "Human review is skipped for the document. This can happen because human review is not enabled on the processor or the processing request has been set to skip this document.",
            "Human review validation is triggered and passed, so no review is needed.",
            "Human review validation is triggered and the document is under review.",
            "Some error happened during triggering human review, see the [state_message] for details.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the human review state.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata = {
      description = "The long running operation metadata for review document method.",
      id = "GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        createTime = {
          description = "The creation time of the operation.",
          format = "google-datetime",
          type = "string",
        },
        questionId = {
          description = "The Crowd Compute question ID.",
          type = "string",
        },
        state = {
          description = "Used only when Operation.done is false.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "CANCELLING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Operation is still running.",
            "Operation is being cancelled.",
            "Operation succeeded.",
            "Operation failed.",
            "Operation is cancelled.",
          },
          type = "string",
        },
        stateMessage = {
          description = "A message providing more details about the current state of processing. For example, the error message if the operation is failed.",
          type = "string",
        },
        updateTime = {
          description = "The last update time of the operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3ReviewDocumentResponse = {
      description = "Response message for review document method.",
      id = "GoogleCloudDocumentaiV1beta3ReviewDocumentResponse",
      properties = {
        gcsDestination = {
          description = "The Cloud Storage uri for the human reviewed document if the review is succeeded.",
          type = "string",
        },
        rejectionReason = {
          description = "The reason why the review is rejected by reviewer.",
          type = "string",
        },
        state = {
          description = "The state of the review operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "REJECTED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "The review operation is rejected by the reviewer.",
            "The review operation is succeeded.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionMetadata = {
      description = "The long running operation metadata for set default processor version method.",
      id = "GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse = {
      description = "Response message for set default processor version method.",
      id = "GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadata = {
      description = "The metadata that represents a processor version being created.",
      id = "GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
        testDatasetValidation = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation",
          description = "The test dataset validation information.",
        },
        trainingDatasetValidation = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation",
          description = "The training dataset validation information.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation = {
      description = "The dataset validation information. This includes any and all errors with documents and the dataset.",
      id = "GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation",
      properties = {
        datasetErrorCount = {
          description = "The total number of dataset errors.",
          format = "int32",
          type = "integer",
        },
        datasetErrors = {
          description = "Error information for the dataset as a whole. A maximum of 10 dataset errors will be returned. A single dataset error is terminal for training.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
        documentErrorCount = {
          description = "The total number of document errors.",
          format = "int32",
          type = "integer",
        },
        documentErrors = {
          description = "Error information pertaining to specific documents. A maximum of 10 document errors will be returned. Any document with errors will not be used throughout training.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3TrainProcessorVersionResponse = {
      description = "The response for the TrainProcessorVersion method.",
      id = "GoogleCloudDocumentaiV1beta3TrainProcessorVersionResponse",
      properties = {
        processorVersion = {
          description = "The resource name of the processor version produced by training.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3UndeployProcessorVersionMetadata = {
      description = "The long running operation metadata for the undeploy processor version method.",
      id = "GoogleCloudDocumentaiV1beta3UndeployProcessorVersionMetadata",
      properties = {
        commonMetadata = {
          ["$ref"] = "GoogleCloudDocumentaiV1beta3CommonOperationMetadata",
          description = "The basic metadata of the long running operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse = {
      description = "Response message for the undeploy processor version method.",
      id = "GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudLocationListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "GoogleCloudLocationListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleCloudLocationLocation",
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
    GoogleCloudLocationLocation = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "GoogleCloudLocationLocation",
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
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
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
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
    GoogleRpcStatus = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpcStatus",
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
    GoogleTypeColor = {
      description = "Represents a color in the RGBA color space. This representation is designed for simplicity of conversion to/from color representations in various languages over compactness. For example, the fields of this representation can be trivially provided to the constructor of `java.awt.Color` in Java; it can also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little work, it can be easily formatted into a CSS `rgba()` string in JavaScript. This reference page doesn't carry information about the absolute color space that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB color space. When color equality needs to be decided, implementations, unless documented otherwise, treat two colors as equal if all their red, green, blue, and alpha values each differ by at most 1e-5. Example (Java): import com.google.type.Color; // ... public static java.awt.Color fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color color) { float red = (float) color.getRed(); float green = (float) color.getGreen(); float blue = (float) color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build()); } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float green = [protocolor green]; float blue = [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc] init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease]; return result; } // ... Example (JavaScript): // ... var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join(''); }; var rgbToCssColor = function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) { resultBuilder.push('0'); } resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...",
      id = "GoogleTypeColor",
      properties = {
        alpha = {
          description = "The fraction of this color that should be applied to the pixel. That is, the final pixel color is defined by the equation: `pixel color = alpha * (this color) + (1.0 - alpha) * (background color)` This means that a value of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to a completely transparent color. This uses a wrapper message rather than a simple float scalar so that it is possible to distinguish between a default value and the value being unset. If omitted, this color object is rendered as a solid color (as if the alpha value had been explicitly given a value of 1.0).",
          format = "float",
          type = "number",
        },
        blue = {
          description = "The amount of blue in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        green = {
          description = "The amount of green in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        red = {
          description = "The amount of red in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
      },
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
    GoogleTypeDateTime = {
      description = "Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.",
      id = "GoogleTypeDateTime",
      properties = {
        day = {
          description = "Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without a day.",
          format = "int32",
          type = "integer",
        },
        hours = {
          description = "Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
        timeZone = {
          ["$ref"] = "GoogleTypeTimeZone",
          description = "Time zone.",
        },
        utcOffset = {
          description = "UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be represented as { seconds: -14400 }.",
          format = "google-duration",
          type = "string",
        },
        year = {
          description = "Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleTypeMoney = {
      description = "Represents an amount of money with its currency type.",
      id = "GoogleTypeMoney",
      properties = {
        currencyCode = {
          description = "The three-letter currency code defined in ISO 4217.",
          type = "string",
        },
        nanos = {
          description = "Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.",
          format = "int32",
          type = "integer",
        },
        units = {
          description = "The whole units of the amount. For example if `currencyCode` is `\"USD\"`, then 1 unit is one US dollar.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypePostalAddress = {
      description = "Represents a postal address, e.g. for postal delivery or payments addresses. Given a postal address, a postal service can deliver items to a premise, P.O. Box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage an address would be created via user input or from importing existing data, depending on the type of process. Advice on address input / editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput) - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, please see: https://support.google.com/business/answer/6397478",
      id = "GoogleTypePostalAddress",
      properties = {
        addressLines = {
          description = "Unstructured address lines describing the lower levels of an address. Because values in address_lines do not have type information and may sometimes contain multiple values in a single field (e.g. \"Austin, TX\"), it is important that the line order is clear. The order of address lines should be \"envelope order\" for the country/region of the address. In places where this can vary (e.g. Japan), address_language is used to make it explicit (e.g. \"ja\" for large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large). This way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a region_code with all remaining information placed in the address_lines. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an address only containing a region_code and address_lines, and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).",
          items = {
            type = "string",
          },
          type = "array",
        },
        administrativeArea = {
          description = "Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community (e.g. \"Barcelona\" and not \"Catalonia\"). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland this should be left unpopulated.",
          type = "string",
        },
        languageCode = {
          description = "Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address' country/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: \"zh-Hant\", \"ja\", \"ja-Latn\", \"en\".",
          type = "string",
        },
        locality = {
          description = "Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use address_lines.",
          type = "string",
        },
        organization = {
          description = "Optional. The name of the organization at the address.",
          type = "string",
        },
        postalCode = {
          description = "Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.).",
          type = "string",
        },
        recipients = {
          description = "Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain \"care of\" information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regionCode = {
          description = "Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https://cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: \"CH\" for Switzerland.",
          type = "string",
        },
        revision = {
          description = "The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. All new revisions **must** be backward compatible with old revisions.",
          format = "int32",
          type = "integer",
        },
        sortingCode = {
          description = "Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like \"CEDEX\", optionally followed by a number (e.g. \"CEDEX 7\"), or just a number alone, representing the \"sector code\" (Jamaica), \"delivery area indicator\" (Malawi) or \"post office indicator\" (e.g. Côte d'Ivoire).",
          type = "string",
        },
        sublocality = {
          description = "Optional. Sublocality of the address. For example, this can be neighborhoods, boroughs, districts.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypeTimeZone = {
      description = "Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).",
      id = "GoogleTypeTimeZone",
      properties = {
        id = {
          description = "IANA Time Zone Database time zone, e.g. \"America/New_York\".",
          type = "string",
        },
        version = {
          description = "Optional. IANA Time Zone Database version number, e.g. \"2019a\".",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Document AI API",
  version = "v1",
  version_module = true,
}