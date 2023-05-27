return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/dialogflow"] = {
          description = "View, manage and query your Dialogflow agents",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://dialogflow.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Dialogflow",
  description = "Builds conversational interfaces (for example, chatbots, and voice-powered apps and devices).",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/dialogflow/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "dialogflow:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://dialogflow.mtls.googleapis.com/",
  name = "dialogflow",
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
              flatPath = "v3/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "dialogflow.projects.locations.get",
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
              path = "v3/{+name}",
              response = {
                ["$ref"] = "GoogleCloudLocationLocation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/dialogflow",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v3/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "dialogflow.projects.locations.list",
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
              path = "v3/{+name}/locations",
              response = {
                ["$ref"] = "GoogleCloudLocationListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/dialogflow",
              },
            },
          },
          resources = {
            agents = {
              methods = {
                create = {
                  description = "Creates an agent in the specified location. Note: You should always train flows prior to sending them queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents",
                  httpMethod = "POST",
                  id = "dialogflow.projects.locations.agents.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The location to create a agent for. Format: `projects//locations/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/agents",
                  request = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3Agent",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3Agent",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                delete = {
                  description = "Deletes the specified agent.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}",
                  httpMethod = "DELETE",
                  id = "dialogflow.projects.locations.agents.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the agent to delete. Format: `projects//locations//agents/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                export = {
                  description = "Exports the specified agent to a binary file. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: ExportAgentResponse",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}:export",
                  httpMethod = "POST",
                  id = "dialogflow.projects.locations.agents.export",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the agent to export. Format: `projects//locations//agents/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}:export",
                  request = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3ExportAgentRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                get = {
                  description = "Retrieves the specified agent.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}",
                  httpMethod = "GET",
                  id = "dialogflow.projects.locations.agents.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the agent. Format: `projects//locations//agents/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3Agent",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                getValidationResult = {
                  description = "Gets the latest agent validation result. Agent validation is performed when ValidateAgent is called.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/validationResult",
                  httpMethod = "GET",
                  id = "dialogflow.projects.locations.agents.getValidationResult",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    languageCode = {
                      description = "If not specified, the agent's default language is used.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The agent name. Format: `projects//locations//agents//validationResult`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/validationResult$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3AgentValidationResult",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                list = {
                  description = "Returns the list of all agents in the specified location.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents",
                  httpMethod = "GET",
                  id = "dialogflow.projects.locations.agents.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous list request.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location to list all agents for. Format: `projects//locations/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/agents",
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3ListAgentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                patch = {
                  description = "Updates the specified agent. Note: You should always train flows prior to sending them queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}",
                  httpMethod = "PATCH",
                  id = "dialogflow.projects.locations.agents.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: `projects//locations//agents/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The mask to control which fields get updated. If the mask is not present, all fields will be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3Agent",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3Agent",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                restore = {
                  description = "Restores the specified agent from a binary file. Replaces the current agent with a new one. Note that all existing resources in agent (e.g. intents, entity types, flows) will be removed. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty) Note: You should always train flows prior to sending them queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}:restore",
                  httpMethod = "POST",
                  id = "dialogflow.projects.locations.agents.restore",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the agent to restore into. Format: `projects//locations//agents/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}:restore",
                  request = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3RestoreAgentRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                validate = {
                  description = "Validates the specified agent and creates or updates validation results. The agent in draft version is validated. Please call this API after the training is completed to get the complete validation results.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}:validate",
                  httpMethod = "POST",
                  id = "dialogflow.projects.locations.agents.validate",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The agent to validate. Format: `projects//locations//agents/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}:validate",
                  request = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3ValidateAgentRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3AgentValidationResult",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
              },
              resources = {
                changelogs = {
                  methods = {
                    get = {
                      description = "Retrieves the specified Changelog.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/changelogs/{changelogsId}",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.changelogs.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the changelog to get. Format: `projects//locations//agents//changelogs/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/changelogs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Changelog",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    list = {
                      description = "Returns the list of Changelogs.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/changelogs",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.changelogs.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "The filter string. Supports filter by user_email, resource, type and create_time. Some examples: 1. By user email: user_email = \"someone@google.com\" 2. By resource name: resource = \"projects/123/locations/global/agents/456/flows/789\" 3. By resource display name: display_name = \"my agent\" 4. By action: action = \"Create\" 5. By type: type = \"flows\" 6. By create time. Currently predicates on `create_time` and `create_time_epoch_seconds` are supported: create_time_epoch_seconds > 1551790877 AND create_time <= 2017-01-15T01:30:15.01Z 7. Combination of above filters: resource = \"projects/123/locations/global/agents/456/flows/789\" AND user_email = \"someone@google.com\" AND create_time <= 2017-01-15T01:30:15.01Z",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent containing the changelogs. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/changelogs",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ListChangelogsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                  },
                },
                entityTypes = {
                  methods = {
                    create = {
                      description = "Creates an entity type in the specified agent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/entityTypes",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.entityTypes.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent to create a entity type for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/entityTypes",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3EntityType",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3EntityType",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    delete = {
                      description = "Deletes the specified entity type. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/entityTypes/{entityTypesId}",
                      httpMethod = "DELETE",
                      id = "dialogflow.projects.locations.agents.entityTypes.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        force = {
                          description = "This field has no effect for entity type not being used. For entity types that are used by intents or pages: * If `force` is set to false, an error will be returned with message indicating the referencing resources. * If `force` is set to true, Dialogflow will remove the entity type, as well as any references to the entity type (i.e. Page parameter of the entity type will be changed to '@sys.any' and intent parameter of the entity type will be removed).",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. The name of the entity type to delete. Format: `projects//locations//agents//entityTypes/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/entityTypes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    get = {
                      description = "Retrieves the specified entity type.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/entityTypes/{entityTypesId}",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.entityTypes.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language to retrieve the entity type for. The following fields are language dependent: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Required. The name of the entity type. Format: `projects//locations//agents//entityTypes/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/entityTypes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3EntityType",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    list = {
                      description = "Returns the list of all entity types in the specified agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/entityTypes",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.entityTypes.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language to list entity types for. The following fields are language dependent: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent to list all entity types for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/entityTypes",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ListEntityTypesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    patch = {
                      description = "Updates the specified entity type. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/entityTypes/{entityTypesId}",
                      httpMethod = "PATCH",
                      id = "dialogflow.projects.locations.agents.entityTypes.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language of the following fields in `entity_type`: * `EntityType.entities.value` * `EntityType.entities.synonyms` * `EntityType.excluded_phrases.value` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/entityTypes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The mask to control which fields get updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3EntityType",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3EntityType",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                  },
                },
                environments = {
                  methods = {
                    create = {
                      description = "Creates an Environment in the specified Agent. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: Environment",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.environments.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The Agent to create an Environment for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/environments",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Environment",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    delete = {
                      description = "Deletes the specified Environment.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}",
                      httpMethod = "DELETE",
                      id = "dialogflow.projects.locations.agents.environments.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the Environment to delete. Format: `projects//locations//agents//environments/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    deployFlow = {
                      description = "Deploys a flow to the specified Environment. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: DeployFlowMetadata - `response`: DeployFlowResponse",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}:deployFlow",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.environments.deployFlow",
                      parameterOrder = {
                        "environment",
                      },
                      parameters = {
                        environment = {
                          description = "Required. The environment to deploy the flow to. Format: `projects//locations//agents// environments/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+environment}:deployFlow",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3DeployFlowRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    get = {
                      description = "Retrieves the specified Environment.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.environments.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the Environment. Format: `projects//locations//agents//environments/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Environment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    list = {
                      description = "Returns the list of all environments in the specified Agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.environments.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of items to return in a single page. By default 20 and at most 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The Agent to list all environments for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/environments",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ListEnvironmentsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    lookupEnvironmentHistory = {
                      description = "Looks up the history of the specified Environment.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}:lookupEnvironmentHistory",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.environments.lookupEnvironmentHistory",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name of the environment to look up the history for. Format: `projects//locations//agents//environments/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+name}:lookupEnvironmentHistory",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    patch = {
                      description = "Updates the specified Environment. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: Environment",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}",
                      httpMethod = "PATCH",
                      id = "dialogflow.projects.locations.agents.environments.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the environment. Format: `projects//locations//agents//environments/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. The mask to control which fields get updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Environment",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    runContinuousTest = {
                      description = "Kicks off a continuous test under the specified Environment. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: RunContinuousTestMetadata - `response`: RunContinuousTestResponse",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}:runContinuousTest",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.environments.runContinuousTest",
                      parameterOrder = {
                        "environment",
                      },
                      parameters = {
                        environment = {
                          description = "Required. Format: `projects//locations//agents//environments/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+environment}:runContinuousTest",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3RunContinuousTestRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                  },
                  resources = {
                    continuousTestResults = {
                      methods = {
                        list = {
                          description = "Fetches a list of continuous test results for a given environment.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/continuousTestResults",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.environments.continuousTestResults.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The environment to list results for. Format: `projects//locations//agents// environments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/continuousTestResults",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                    },
                    deployments = {
                      methods = {
                        get = {
                          description = "Retrieves the specified Deployment.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/deployments/{deploymentsId}",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.environments.deployments.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the Deployment. Format: `projects//locations//agents//environments//deployments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/deployments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Deployment",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        list = {
                          description = "Returns the list of all deployments in the specified Environment.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/deployments",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.environments.deployments.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "The maximum number of items to return in a single page. By default 20 and at most 100.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The Environment to list all environments for. Format: `projects//locations//agents//environments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/deployments",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3ListDeploymentsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                    },
                    experiments = {
                      methods = {
                        create = {
                          description = "Creates an Experiment in the specified Environment.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/experiments",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.environments.experiments.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The Agent to create an Environment for. Format: `projects//locations//agents//environments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/experiments",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Experiment",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Experiment",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        delete = {
                          description = "Deletes the specified Experiment.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/experiments/{experimentsId}",
                          httpMethod = "DELETE",
                          id = "dialogflow.projects.locations.agents.environments.experiments.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the Environment to delete. Format: `projects//locations//agents//environments//experiments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/experiments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        get = {
                          description = "Retrieves the specified Experiment.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/experiments/{experimentsId}",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.environments.experiments.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the Environment. Format: `projects//locations//agents//environments//experiments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/experiments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Experiment",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        list = {
                          description = "Returns the list of all experiments in the specified Environment.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/experiments",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.environments.experiments.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "The maximum number of items to return in a single page. By default 20 and at most 100.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The Environment to list all environments for. Format: `projects//locations//agents//environments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/experiments",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3ListExperimentsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        patch = {
                          description = "Updates the specified Experiment.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/experiments/{experimentsId}",
                          httpMethod = "PATCH",
                          id = "dialogflow.projects.locations.agents.environments.experiments.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the experiment. Format: projects//locations//agents//environments//experiments/..",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/experiments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. The mask to control which fields get updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Experiment",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Experiment",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        start = {
                          description = "Starts the specified Experiment. This rpc only changes the state of experiment from PENDING to RUNNING.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/experiments/{experimentsId}:start",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.environments.experiments.start",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Resource name of the experiment to start. Format: `projects//locations//agents//environments//experiments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/experiments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}:start",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3StartExperimentRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Experiment",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        stop = {
                          description = "Stops the specified Experiment. This rpc only changes the state of experiment from RUNNING to DONE.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/experiments/{experimentsId}:stop",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.environments.experiments.stop",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Resource name of the experiment to stop. Format: `projects//locations//agents//environments//experiments/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/experiments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}:stop",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3StopExperimentRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Experiment",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                    },
                    sessions = {
                      methods = {
                        detectIntent = {
                          description = "Processes a natural language query and returns structured, actionable data as a result. This method is not idempotent, because it may cause session entity types to be updated, which in turn might affect results of future queries. Note: Always use agent versions for production traffic. See [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/sessions/{sessionsId}:detectIntent",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.environments.sessions.detectIntent",
                          parameterOrder = {
                            "session",
                          },
                          parameters = {
                            session = {
                              description = "Required. The name of the session this query is sent to. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment. It's up to the API caller to choose an appropriate `Session ID`. It can be a random number or some type of session identifiers (preferably hashed). The length of the `Session ID` must not exceed 36 characters. For more information, see the [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session). Note: Always use agent versions for production traffic. See [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+session}:detectIntent",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3DetectIntentRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3DetectIntentResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        fulfillIntent = {
                          description = "Fulfills a matched intent returned by MatchIntent. Must be called after MatchIntent, with input from MatchIntentResponse. Otherwise, the behavior is undefined.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/sessions/{sessionsId}:fulfillIntent",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.environments.sessions.fulfillIntent",
                          parameterOrder = {
                            "session",
                          },
                          parameters = {
                            session = {
                              description = "Required. The name of the session this query is sent to. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment. It's up to the API caller to choose an appropriate `Session ID`. It can be a random number or some type of session identifiers (preferably hashed). The length of the `Session ID` must not exceed 36 characters. For more information, see the [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+session}:fulfillIntent",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3FulfillIntentRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3FulfillIntentResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        matchIntent = {
                          description = "Returns preliminary intent match results, doesn't change the session status.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/sessions/{sessionsId}:matchIntent",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.environments.sessions.matchIntent",
                          parameterOrder = {
                            "session",
                          },
                          parameters = {
                            session = {
                              description = "Required. The name of the session this query is sent to. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment. It's up to the API caller to choose an appropriate `Session ID`. It can be a random number or some type of session identifiers (preferably hashed). The length of the `Session ID` must not exceed 36 characters. For more information, see the [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+session}:matchIntent",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3MatchIntentRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3MatchIntentResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                      resources = {
                        entityTypes = {
                          methods = {
                            create = {
                              description = "Creates a session entity type.",
                              flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/sessions/{sessionsId}/entityTypes",
                              httpMethod = "POST",
                              id = "dialogflow.projects.locations.agents.environments.sessions.entityTypes.create",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                parent = {
                                  description = "Required. The session to create a session entity type for. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v3/{+parent}/entityTypes",
                              request = {
                                ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                              },
                              response = {
                                ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                                "https://www.googleapis.com/auth/dialogflow",
                              },
                            },
                            delete = {
                              description = "Deletes the specified session entity type.",
                              flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/sessions/{sessionsId}/entityTypes/{entityTypesId}",
                              httpMethod = "DELETE",
                              id = "dialogflow.projects.locations.agents.environments.sessions.entityTypes.delete",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The name of the session entity type to delete. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+/entityTypes/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v3/{+name}",
                              response = {
                                ["$ref"] = "GoogleProtobufEmpty",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                                "https://www.googleapis.com/auth/dialogflow",
                              },
                            },
                            get = {
                              description = "Retrieves the specified session entity type.",
                              flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/sessions/{sessionsId}/entityTypes/{entityTypesId}",
                              httpMethod = "GET",
                              id = "dialogflow.projects.locations.agents.environments.sessions.entityTypes.get",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The name of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+/entityTypes/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v3/{+name}",
                              response = {
                                ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                                "https://www.googleapis.com/auth/dialogflow",
                              },
                            },
                            list = {
                              description = "Returns the list of all session entity types in the specified session.",
                              flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/sessions/{sessionsId}/entityTypes",
                              httpMethod = "GET",
                              id = "dialogflow.projects.locations.agents.environments.sessions.entityTypes.list",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                pageSize = {
                                  description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                                  format = "int32",
                                  location = "query",
                                  type = "integer",
                                },
                                pageToken = {
                                  description = "The next_page_token value returned from a previous list request.",
                                  location = "query",
                                  type = "string",
                                },
                                parent = {
                                  description = "Required. The session to list all session entity types from. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v3/{+parent}/entityTypes",
                              response = {
                                ["$ref"] = "GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                                "https://www.googleapis.com/auth/dialogflow",
                              },
                            },
                            patch = {
                              description = "Updates the specified session entity type.",
                              flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/environments/{environmentsId}/sessions/{sessionsId}/entityTypes/{entityTypesId}",
                              httpMethod = "PATCH",
                              id = "dialogflow.projects.locations.agents.environments.sessions.entityTypes.patch",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+/entityTypes/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                                updateMask = {
                                  description = "The mask to control which fields get updated.",
                                  format = "google-fieldmask",
                                  location = "query",
                                  type = "string",
                                },
                              },
                              path = "v3/{+name}",
                              request = {
                                ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                              },
                              response = {
                                ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                                "https://www.googleapis.com/auth/dialogflow",
                              },
                            },
                          },
                        },
                      },
                    },
                  },
                },
                flows = {
                  methods = {
                    create = {
                      description = "Creates a flow in the specified agent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.flows.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent to create a flow for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/flows",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Flow",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Flow",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    delete = {
                      description = "Deletes a specified flow.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}",
                      httpMethod = "DELETE",
                      id = "dialogflow.projects.locations.agents.flows.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        force = {
                          description = "This field has no effect for flows with no incoming transitions. For flows with incoming transitions: * If `force` is set to false, an error will be returned with message indicating the incoming transitions. * If `force` is set to true, Dialogflow will remove the flow, as well as any transitions to the flow (i.e. Target flow in event handlers or Target flow in transition routes that point to this flow will be cleared).",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. The name of the flow to delete. Format: `projects//locations//agents//flows/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    export = {
                      description = "Exports the specified flow to a binary file. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: ExportFlowResponse Note that resources (e.g. intents, entities, webhooks) that the flow references will also be exported.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}:export",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.flows.export",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the flow to export. Format: `projects//locations//agents//flows/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}:export",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ExportFlowRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    get = {
                      description = "Retrieves the specified flow.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.flows.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language to retrieve the flow for. The following fields are language dependent: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Required. The name of the flow to get. Format: `projects//locations//agents//flows/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Flow",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    getValidationResult = {
                      description = "Gets the latest flow validation result. Flow validation is performed when ValidateFlow is called.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/validationResult",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.flows.getValidationResult",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        languageCode = {
                          description = "If not specified, the agent's default language is used.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Required. The flow name. Format: `projects//locations//agents//flows//validationResult`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/validationResult$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3FlowValidationResult",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    import = {
                      description = "Imports the specified flow to the specified agent from a binary file. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: ImportFlowResponse Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows:import",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.flows.import",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The agent to import the flow into. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/flows:import",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ImportFlowRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    list = {
                      description = "Returns the list of all flows in the specified agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.flows.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language to list flows for. The following fields are language dependent: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent containing the flows. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/flows",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ListFlowsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    patch = {
                      description = "Updates the specified flow. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}",
                      httpMethod = "PATCH",
                      id = "dialogflow.projects.locations.agents.flows.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "The unique identifier of the flow. Format: `projects//locations//agents//flows/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The mask to control which fields get updated. If the mask is not present, all fields will be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Flow",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Flow",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    train = {
                      description = "Trains the specified flow. Note that only the flow in 'draft' environment is trained. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty) Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}:train",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.flows.train",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The flow to train. Format: `projects//locations//agents//flows/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}:train",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3TrainFlowRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    validate = {
                      description = "Validates the specified flow and creates or updates validation results. Please call this API after the training is completed to get the complete validation results.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}:validate",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.flows.validate",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The flow to validate. Format: `projects//locations//agents//flows/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}:validate",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ValidateFlowRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3FlowValidationResult",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                  },
                  resources = {
                    pages = {
                      methods = {
                        create = {
                          description = "Creates a page in the specified flow. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/pages",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.flows.pages.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            languageCode = {
                              description = "The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The flow to create a page for. Format: `projects//locations//agents//flows/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/pages",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Page",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Page",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        delete = {
                          description = "Deletes the specified page. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/pages/{pagesId}",
                          httpMethod = "DELETE",
                          id = "dialogflow.projects.locations.agents.flows.pages.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            force = {
                              description = "This field has no effect for pages with no incoming transitions. For pages with incoming transitions: * If `force` is set to false, an error will be returned with message indicating the incoming transitions. * If `force` is set to true, Dialogflow will remove the page, as well as any transitions to the page (i.e. Target page in event handlers or Target page in transition routes that point to this page will be cleared).",
                              location = "query",
                              type = "boolean",
                            },
                            name = {
                              description = "Required. The name of the page to delete. Format: `projects//locations//agents//Flows//pages/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/pages/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        get = {
                          description = "Retrieves the specified page.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/pages/{pagesId}",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.flows.pages.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            languageCode = {
                              description = "The language to retrieve the page for. The following fields are language dependent: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "Required. The name of the page. Format: `projects//locations//agents//flows//pages/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/pages/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Page",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        list = {
                          description = "Returns the list of all pages in the specified flow.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/pages",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.flows.pages.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            languageCode = {
                              description = "The language to list pages for. The following fields are language dependent: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The flow to list all pages for. Format: `projects//locations//agents//flows/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/pages",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3ListPagesResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        patch = {
                          description = "Updates the specified page. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/pages/{pagesId}",
                          httpMethod = "PATCH",
                          id = "dialogflow.projects.locations.agents.flows.pages.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            languageCode = {
                              description = "The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/pages/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "The mask to control which fields get updated. If the mask is not present, all fields will be updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Page",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Page",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                    },
                    transitionRouteGroups = {
                      methods = {
                        create = {
                          description = "Creates an TransitionRouteGroup in the specified flow. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/transitionRouteGroups",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.flows.transitionRouteGroups.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            languageCode = {
                              description = "The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The flow to create an TransitionRouteGroup for. Format: `projects//locations//agents//flows/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/transitionRouteGroups",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroup",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroup",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        delete = {
                          description = "Deletes the specified TransitionRouteGroup. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/transitionRouteGroups/{transitionRouteGroupsId}",
                          httpMethod = "DELETE",
                          id = "dialogflow.projects.locations.agents.flows.transitionRouteGroups.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            force = {
                              description = "This field has no effect for transition route group that no page is using. If the transition route group is referenced by any page: * If `force` is set to false, an error will be returned with message indicating pages that reference the transition route group. * If `force` is set to true, Dialogflow will remove the transition route group, as well as any reference to it.",
                              location = "query",
                              type = "boolean",
                            },
                            name = {
                              description = "Required. The name of the TransitionRouteGroup to delete. Format: `projects//locations//agents//flows//transitionRouteGroups/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/transitionRouteGroups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        get = {
                          description = "Retrieves the specified TransitionRouteGroup.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/transitionRouteGroups/{transitionRouteGroupsId}",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.flows.transitionRouteGroups.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            languageCode = {
                              description = "The language to retrieve the transition route group for. The following fields are language dependent: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "Required. The name of the TransitionRouteGroup. Format: `projects//locations//agents//flows//transitionRouteGroups/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/transitionRouteGroups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroup",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        list = {
                          description = "Returns the list of all transition route groups in the specified flow.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/transitionRouteGroups",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.flows.transitionRouteGroups.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            languageCode = {
                              description = "The language to list transition route groups for. The following fields are language dependent: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The flow to list all transition route groups for. Format: `projects//locations//agents//flows/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/transitionRouteGroups",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        patch = {
                          description = "Updates the specified TransitionRouteGroup. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/transitionRouteGroups/{transitionRouteGroupsId}",
                          httpMethod = "PATCH",
                          id = "dialogflow.projects.locations.agents.flows.transitionRouteGroups.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            languageCode = {
                              description = "The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/transitionRouteGroups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "The mask to control which fields get updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroup",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroup",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                    },
                    versions = {
                      methods = {
                        compareVersions = {
                          description = "Compares the specified base version with target version.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/versions/{versionsId}:compareVersions",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.flows.versions.compareVersions",
                          parameterOrder = {
                            "baseVersion",
                          },
                          parameters = {
                            baseVersion = {
                              description = "Required. Name of the base flow version to compare with the target version. Use version ID `0` to indicate the draft version of the specified flow. Format: `projects//locations//agents/ /flows//versions/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+baseVersion}:compareVersions",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3CompareVersionsRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3CompareVersionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        create = {
                          description = "Creates a Version in the specified Flow. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: CreateVersionOperationMetadata - `response`: Version",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/versions",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.flows.versions.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The Flow to create an Version for. Format: `projects//locations//agents//flows/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/versions",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Version",
                          },
                          response = {
                            ["$ref"] = "GoogleLongrunningOperation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        delete = {
                          description = "Deletes the specified Version.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/versions/{versionsId}",
                          httpMethod = "DELETE",
                          id = "dialogflow.projects.locations.agents.flows.versions.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the Version to delete. Format: `projects//locations//agents//flows//versions/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        get = {
                          description = "Retrieves the specified Version.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/versions/{versionsId}",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.flows.versions.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the Version. Format: `projects//locations//agents//flows//versions/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Version",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        list = {
                          description = "Returns the list of all versions in the specified Flow.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/versions",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.flows.versions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "The maximum number of items to return in a single page. By default 20 and at most 100.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The Flow to list all versions for. Format: `projects//locations//agents//flows/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/versions",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3ListVersionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        load = {
                          description = "Loads resources in the specified version to the draft flow. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: An empty [Struct message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct) - `response`: An [Empty message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/versions/{versionsId}:load",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.flows.versions.load",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The Version to be loaded to draft flow. Format: `projects//locations//agents//flows//versions/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}:load",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3LoadVersionRequest",
                          },
                          response = {
                            ["$ref"] = "GoogleLongrunningOperation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        patch = {
                          description = "Updates the specified Version.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/flows/{flowsId}/versions/{versionsId}",
                          httpMethod = "PATCH",
                          id = "dialogflow.projects.locations.agents.flows.versions.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Format: projects//locations//agents//flows//versions/. Version ID is a self-increasing number generated by Dialogflow upon version creation.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/flows/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. The mask to control which fields get updated. Currently only `description` and `display_name` can be updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Version",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3Version",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                    },
                  },
                },
                intents = {
                  methods = {
                    create = {
                      description = "Creates an intent in the specified agent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/intents",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.intents.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language of the following fields in `intent`: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent to create an intent for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/intents",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    delete = {
                      description = "Deletes the specified intent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/intents/{intentsId}",
                      httpMethod = "DELETE",
                      id = "dialogflow.projects.locations.agents.intents.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the intent to delete. Format: `projects//locations//agents//intents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/intents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    get = {
                      description = "Retrieves the specified intent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/intents/{intentsId}",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.intents.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language to retrieve the intent for. The following fields are language dependent: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Required. The name of the intent. Format: `projects//locations//agents//intents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/intents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    list = {
                      description = "Returns the list of all intents in the specified agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/intents",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.intents.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        intentView = {
                          description = "The resource view to apply to the returned intent.",
                          enum = {
                            "INTENT_VIEW_UNSPECIFIED",
                            "INTENT_VIEW_PARTIAL",
                            "INTENT_VIEW_FULL",
                          },
                          enumDescriptions = {
                            "Not specified. Treated as INTENT_VIEW_FULL.",
                            "Training phrases field is not populated in the response.",
                            "All fields are populated.",
                          },
                          location = "query",
                          type = "string",
                        },
                        languageCode = {
                          description = "The language to list intents for. The following fields are language dependent: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent to list all intents for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/intents",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ListIntentsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    patch = {
                      description = "Updates the specified intent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/intents/{intentsId}",
                      httpMethod = "PATCH",
                      id = "dialogflow.projects.locations.agents.intents.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        languageCode = {
                          description = "The language of the following fields in `intent`: * `Intent.training_phrases.parts.text` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/intents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The mask to control which fields get updated. If the mask is not present, all fields will be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                  },
                },
                sessions = {
                  methods = {
                    detectIntent = {
                      description = "Processes a natural language query and returns structured, actionable data as a result. This method is not idempotent, because it may cause session entity types to be updated, which in turn might affect results of future queries. Note: Always use agent versions for production traffic. See [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/sessions/{sessionsId}:detectIntent",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.sessions.detectIntent",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The name of the session this query is sent to. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment. It's up to the API caller to choose an appropriate `Session ID`. It can be a random number or some type of session identifiers (preferably hashed). The length of the `Session ID` must not exceed 36 characters. For more information, see the [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session). Note: Always use agent versions for production traffic. See [Versions and environments](https://cloud.google.com/dialogflow/cx/docs/concept/version).",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+session}:detectIntent",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3DetectIntentRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3DetectIntentResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    fulfillIntent = {
                      description = "Fulfills a matched intent returned by MatchIntent. Must be called after MatchIntent, with input from MatchIntentResponse. Otherwise, the behavior is undefined.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/sessions/{sessionsId}:fulfillIntent",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.sessions.fulfillIntent",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The name of the session this query is sent to. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment. It's up to the API caller to choose an appropriate `Session ID`. It can be a random number or some type of session identifiers (preferably hashed). The length of the `Session ID` must not exceed 36 characters. For more information, see the [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+session}:fulfillIntent",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3FulfillIntentRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3FulfillIntentResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    matchIntent = {
                      description = "Returns preliminary intent match results, doesn't change the session status.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/sessions/{sessionsId}:matchIntent",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.sessions.matchIntent",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The name of the session this query is sent to. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment. It's up to the API caller to choose an appropriate `Session ID`. It can be a random number or some type of session identifiers (preferably hashed). The length of the `Session ID` must not exceed 36 characters. For more information, see the [sessions guide](https://cloud.google.com/dialogflow/cx/docs/concept/session).",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+session}:matchIntent",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3MatchIntentRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3MatchIntentResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                  },
                  resources = {
                    entityTypes = {
                      methods = {
                        create = {
                          description = "Creates a session entity type.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/sessions/{sessionsId}/entityTypes",
                          httpMethod = "POST",
                          id = "dialogflow.projects.locations.agents.sessions.entityTypes.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The session to create a session entity type for. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/entityTypes",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        delete = {
                          description = "Deletes the specified session entity type.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/sessions/{sessionsId}/entityTypes/{entityTypesId}",
                          httpMethod = "DELETE",
                          id = "dialogflow.projects.locations.agents.sessions.entityTypes.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the session entity type to delete. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+/entityTypes/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        get = {
                          description = "Retrieves the specified session entity type.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/sessions/{sessionsId}/entityTypes/{entityTypesId}",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.sessions.entityTypes.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+/entityTypes/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        list = {
                          description = "Returns the list of all session entity types in the specified session.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/sessions/{sessionsId}/entityTypes",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.sessions.entityTypes.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The session to list all session entity types from. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/entityTypes",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        patch = {
                          description = "Updates the specified session entity type.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/sessions/{sessionsId}/entityTypes/{entityTypesId}",
                          httpMethod = "PATCH",
                          id = "dialogflow.projects.locations.agents.sessions.entityTypes.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+/entityTypes/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "The mask to control which fields get updated.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          request = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                    },
                  },
                },
                testCases = {
                  methods = {
                    batchDelete = {
                      description = "Batch deletes test cases.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases:batchDelete",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.testCases.batchDelete",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The agent to delete test cases from. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/testCases:batchDelete",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    batchRun = {
                      description = "Kicks off a batch run of test cases. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: BatchRunTestCasesMetadata - `response`: BatchRunTestCasesResponse",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases:batchRun",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.testCases.batchRun",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Agent name. Format: `projects//locations//agents/ `.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/testCases:batchRun",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3BatchRunTestCasesRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    calculateCoverage = {
                      description = "Calculates the test coverage for an agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases:calculateCoverage",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.testCases.calculateCoverage",
                      parameterOrder = {
                        "agent",
                      },
                      parameters = {
                        agent = {
                          description = "Required. The agent to calculate coverage for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        type = {
                          description = "Required. The type of coverage requested.",
                          enum = {
                            "COVERAGE_TYPE_UNSPECIFIED",
                            "INTENT",
                            "PAGE_TRANSITION",
                            "TRANSITION_ROUTE_GROUP",
                          },
                          enumDescriptions = {
                            "Should never be used.",
                            "Intent coverage.",
                            "Page transition coverage.",
                            "Transition route group coverage.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+agent}/testCases:calculateCoverage",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3CalculateCoverageResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    create = {
                      description = "Creates a test case for the given agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.testCases.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The agent to create the test case for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/testCases",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3TestCase",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3TestCase",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    export = {
                      description = "Exports the test cases under the agent to a Cloud Storage bucket or a local file. Filter can be applied to export a subset of test cases. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: ExportTestCasesMetadata - `response`: ExportTestCasesResponse",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases:export",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.testCases.export",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The agent where to export test cases from. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/testCases:export",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ExportTestCasesRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    get = {
                      description = "Gets a test case.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases/{testCasesId}",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.testCases.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the testcase. Format: `projects//locations//agents//testCases/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/testCases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3TestCase",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    import = {
                      description = "Imports the test cases from a Cloud Storage bucket or a local file. It always creates new test cases and won't overwrite any existing ones. The provided ID in the imported test case is neglected. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: ImportTestCasesMetadata - `response`: ImportTestCasesResponse",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases:import",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.testCases.import",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The agent to import test cases to. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/testCases:import",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ImportTestCasesRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    list = {
                      description = "Fetches a list of test cases for a given agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.testCases.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of items to return in a single page. By default 20. Note that when TestCaseView = FULL, the maximum page size allowed is 20. When TestCaseView = BASIC, the maximum page size allowed is 500.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent to list all pages for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Specifies whether response should include all fields or just the metadata.",
                          enum = {
                            "TEST_CASE_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "The default / unset value. The API will default to the BASIC view.",
                            "Include basic metadata about the test case, but not the conversation turns. This is the default value.",
                            "Include everything.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/testCases",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ListTestCasesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    patch = {
                      description = "Updates the specified test case.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases/{testCasesId}",
                      httpMethod = "PATCH",
                      id = "dialogflow.projects.locations.agents.testCases.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/testCases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. The mask to specify which fields should be updated. The `creationTime` and `lastTestResult` cannot be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3TestCase",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3TestCase",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    run = {
                      description = "Kicks off a test case run. This method is a [long-running operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation). The returned `Operation` type has the following method-specific fields: - `metadata`: RunTestCaseMetadata - `response`: RunTestCaseResponse",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases/{testCasesId}:run",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.testCases.run",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Format of test case name to run: `projects//locations/ /agents//testCases/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/testCases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}:run",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3RunTestCaseRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                  },
                  resources = {
                    results = {
                      methods = {
                        get = {
                          description = "Gets a test case result.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases/{testCasesId}/results/{resultsId}",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.testCases.results.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the testcase. Format: `projects//locations//agents//testCases//results/`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/testCases/[^/]+/results/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3TestCaseResult",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                        list = {
                          description = "Fetches a list of results for a given test case.",
                          flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/testCases/{testCasesId}/results",
                          httpMethod = "GET",
                          id = "dialogflow.projects.locations.agents.testCases.results.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "The filter expression used to filter test case results. See [API Filtering](https://aip.dev/160). The expression is case insensitive. Only 'AND' is supported for logical operators. The supported syntax is listed below in detail: [AND ] ... [AND latest] The supported fields and operators are: field operator `environment` `=`, `IN` (Use value `draft` for draft environment) `test_time` `>`, `<` `latest` only returns the latest test result in all results for each test case. Examples: * \"environment=draft AND latest\" matches the latest test result for each test case in the draft environment. * \"environment IN (e1,e2)\" matches any test case results with an environment resource name of either \"e1\" or \"e2\". * \"test_time > 1602540713\" matches any test case results with test time later than a unix timestamp in seconds 1602540713.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The test case to list results for. Format: `projects//locations//agents// testCases/`. Specify a `-` as a wildcard for TestCase ID to list results across multiple test cases.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/testCases/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v3/{+parent}/results",
                          response = {
                            ["$ref"] = "GoogleCloudDialogflowCxV3ListTestCaseResultsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/dialogflow",
                          },
                        },
                      },
                    },
                  },
                },
                webhooks = {
                  methods = {
                    create = {
                      description = "Creates a webhook in the specified agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/webhooks",
                      httpMethod = "POST",
                      id = "dialogflow.projects.locations.agents.webhooks.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The agent to create a webhook for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/webhooks",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Webhook",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Webhook",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    delete = {
                      description = "Deletes the specified webhook.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/webhooks/{webhooksId}",
                      httpMethod = "DELETE",
                      id = "dialogflow.projects.locations.agents.webhooks.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        force = {
                          description = "This field has no effect for webhook not being used. For webhooks that are used by pages/flows/transition route groups: * If `force` is set to false, an error will be returned with message indicating the referenced resources. * If `force` is set to true, Dialogflow will remove the webhook, as well as any references to the webhook (i.e. Webhook and tagin fulfillments that point to this webhook will be removed).",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. The name of the webhook to delete. Format: `projects//locations//agents//webhooks/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/webhooks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    get = {
                      description = "Retrieves the specified webhook.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/webhooks/{webhooksId}",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.webhooks.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the webhook. Format: `projects//locations//agents//webhooks/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/webhooks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Webhook",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    list = {
                      description = "Returns the list of all webhooks in the specified agent.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/webhooks",
                      httpMethod = "GET",
                      id = "dialogflow.projects.locations.agents.webhooks.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of items to return in a single page. By default 100 and at most 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The agent to list all webhooks for. Format: `projects//locations//agents/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v3/{+parent}/webhooks",
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3ListWebhooksResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                    patch = {
                      description = "Updates the specified webhook.",
                      flatPath = "v3/projects/{projectsId}/locations/{locationsId}/agents/{agentsId}/webhooks/{webhooksId}",
                      httpMethod = "PATCH",
                      id = "dialogflow.projects.locations.agents.webhooks.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/agents/[^/]+/webhooks/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "The mask to control which fields get updated. If the mask is not present, all fields will be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v3/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Webhook",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudDialogflowCxV3Webhook",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/dialogflow",
                      },
                    },
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "dialogflow.projects.locations.operations.cancel",
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
                  path = "v3/{+name}:cancel",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "dialogflow.projects.locations.operations.get",
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
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "dialogflow.projects.locations.operations.list",
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
                  path = "v3/{+name}/operations",
                  response = {
                    ["$ref"] = "GoogleLongrunningListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
              },
            },
            securitySettings = {
              methods = {
                create = {
                  description = "Create security settings in the specified location.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/securitySettings",
                  httpMethod = "POST",
                  id = "dialogflow.projects.locations.securitySettings.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The location to create an SecuritySettings for. Format: `projects//locations/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/securitySettings",
                  request = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3SecuritySettings",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3SecuritySettings",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                delete = {
                  description = "Deletes the specified SecuritySettings.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/securitySettings/{securitySettingsId}",
                  httpMethod = "DELETE",
                  id = "dialogflow.projects.locations.securitySettings.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the SecuritySettings to delete. Format: `projects//locations//securitySettings/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/securitySettings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                get = {
                  description = "Retrieves the specified SecuritySettings. The returned settings may be stale by up to 1 minute.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/securitySettings/{securitySettingsId}",
                  httpMethod = "GET",
                  id = "dialogflow.projects.locations.securitySettings.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the settings. Format: `projects//locations//securitySettings/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/securitySettings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3SecuritySettings",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                list = {
                  description = "Returns the list of all security settings in the specified location.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/securitySettings",
                  httpMethod = "GET",
                  id = "dialogflow.projects.locations.securitySettings.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of items to return in a single page. By default 20 and at most 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous list request.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location to list all security settings for. Format: `projects//locations/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v3/{+parent}/securitySettings",
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3ListSecuritySettingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
                patch = {
                  description = "Updates the specified SecuritySettings.",
                  flatPath = "v3/projects/{projectsId}/locations/{locationsId}/securitySettings/{securitySettingsId}",
                  httpMethod = "PATCH",
                  id = "dialogflow.projects.locations.securitySettings.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/securitySettings/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The mask to control which fields get updated. If the mask is not present, all fields will be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v3/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3SecuritySettings",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudDialogflowCxV3SecuritySettings",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/dialogflow",
                  },
                },
              },
            },
          },
        },
        operations = {
          methods = {
            cancel = {
              description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
              flatPath = "v3/projects/{projectsId}/operations/{operationsId}:cancel",
              httpMethod = "POST",
              id = "dialogflow.projects.operations.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be cancelled.",
                  location = "path",
                  pattern = "^projects/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+name}:cancel",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/dialogflow",
              },
            },
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v3/projects/{projectsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "dialogflow.projects.operations.get",
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
              path = "v3/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/dialogflow",
              },
            },
            list = {
              description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
              flatPath = "v3/projects/{projectsId}/operations",
              httpMethod = "GET",
              id = "dialogflow.projects.operations.list",
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
                  pattern = "^projects/[^/]+$",
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
              path = "v3/{+name}/operations",
              response = {
                ["$ref"] = "GoogleLongrunningListOperationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/dialogflow",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://dialogflow.googleapis.com/",
  schemas = {
    GoogleCloudDialogflowCxV3AdvancedSettings = {
      description = "Hierarchical advanced settings for agent/flow/page/fulfillment/parameter. Settings exposed at lower level overrides the settings exposed at higher level. Overriding occurs at the sub-setting level. For example, the playback_interruption_settings at fulfillment level only overrides the playback_interruption_settings at the agent level, leaving other settings at the agent level unchanged. DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.",
      id = "GoogleCloudDialogflowCxV3AdvancedSettings",
      properties = {
        loggingSettings = {
          ["$ref"] = "GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings",
          description = "Settings for logging. Settings for Dialogflow History, Contact Center messages, StackDriver logs, and speech logging. Exposed at the following levels: - Agent level.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings = {
      description = "Define behaviors on logging.",
      id = "GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings",
      properties = {
        enableInteractionLogging = {
          description = "If true, DF Interaction logging is currently enabled.",
          type = "boolean",
        },
        enableStackdriverLogging = {
          description = "If true, StackDriver logging is currently enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Agent = {
      description = "Agents are best described as Natural Language Understanding (NLU) modules that transform user requests into actionable data. You can include agents in your app, product, or service to determine user intent and respond to the user in a natural way. After you create an agent, you can add Intents, Entity Types, Flows, Fulfillments, Webhooks, and so on to manage the conversation flows..",
      id = "GoogleCloudDialogflowCxV3Agent",
      properties = {
        advancedSettings = {
          ["$ref"] = "GoogleCloudDialogflowCxV3AdvancedSettings",
          description = "Hierarchical advanced settings for this agent. The settings exposed at the lower level overrides the settings exposed at the higher level.",
        },
        avatarUri = {
          description = "The URI of the agent's avatar. Avatars are used throughout the Dialogflow console and in the self-hosted [Web Demo](https://cloud.google.com/dialogflow/docs/integrations/web-demo) integration.",
          type = "string",
        },
        defaultLanguageCode = {
          description = "Required. Immutable. The default language of the agent as a language tag. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. This field cannot be set by the Agents.UpdateAgent method.",
          type = "string",
        },
        description = {
          description = "The description of the agent. The maximum length is 500 characters. If exceeded, the request is rejected.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the agent, unique within the location.",
          type = "string",
        },
        enableSpellCorrection = {
          description = "Indicates if automatic spell correction is enabled in detect intent requests.",
          type = "boolean",
        },
        enableStackdriverLogging = {
          description = "Indicates if stackdriver logging is enabled for the agent. Please use agent.advanced_settings instead.",
          type = "boolean",
        },
        locked = {
          description = "Indicates whether the agent is locked for changes. If the agent is locked, modifications to the agent will be rejected except for RestoreAgent.",
          type = "boolean",
        },
        name = {
          description = "The unique identifier of the agent. Required for the Agents.UpdateAgent method. Agents.CreateAgent populates the name automatically. Format: `projects//locations//agents/`.",
          type = "string",
        },
        securitySettings = {
          description = "Name of the SecuritySettings reference for the agent. Format: `projects//locations//securitySettings/`.",
          type = "string",
        },
        speechToTextSettings = {
          ["$ref"] = "GoogleCloudDialogflowCxV3SpeechToTextSettings",
          description = "Speech recognition related settings.",
        },
        startFlow = {
          description = "Immutable. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
        supportedLanguageCodes = {
          description = "The list of all languages supported by the agent (except for the `default_language_code`).",
          items = {
            type = "string",
          },
          type = "array",
        },
        timeZone = {
          description = "Required. The time zone of the agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3AgentValidationResult = {
      description = "The response message for Agents.GetAgentValidationResult.",
      id = "GoogleCloudDialogflowCxV3AgentValidationResult",
      properties = {
        flowValidationResults = {
          description = "Contains all flow validation results.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3FlowValidationResult",
          },
          type = "array",
        },
        name = {
          description = "The unique identifier of the agent validation result. Format: `projects//locations//agents//validationResult`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3AudioInput = {
      description = "Represents the natural speech audio to be processed.",
      id = "GoogleCloudDialogflowCxV3AudioInput",
      properties = {
        audio = {
          description = "The natural language speech audio to be processed. A single request can contain up to 1 minute of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.",
          format = "byte",
          type = "string",
        },
        config = {
          ["$ref"] = "GoogleCloudDialogflowCxV3InputAudioConfig",
          description = "Required. Instructs the speech recognizer how to process the speech audio.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest = {
      description = "The request message for TestCases.BatchDeleteTestCases.",
      id = "GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest",
      properties = {
        names = {
          description = "Required. Format of test case names: `projects//locations/ /agents//testCases/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata = {
      description = "Metadata returned for the TestCases.BatchRunTestCases long running operation.",
      id = "GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata",
      properties = {
        errors = {
          description = "The test errors.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TestError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3BatchRunTestCasesRequest = {
      description = "The request message for TestCases.BatchRunTestCases.",
      id = "GoogleCloudDialogflowCxV3BatchRunTestCasesRequest",
      properties = {
        environment = {
          description = "Optional. If not set, draft environment is assumed. Format: `projects//locations//agents//environments/`.",
          type = "string",
        },
        testCases = {
          description = "Required. Format: `projects//locations//agents//testCases/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3BatchRunTestCasesResponse = {
      description = "The response message for TestCases.BatchRunTestCases.",
      id = "GoogleCloudDialogflowCxV3BatchRunTestCasesResponse",
      properties = {
        results = {
          description = "The test case results. The detailed conversation turns are empty in this response.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TestCaseResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3CalculateCoverageResponse = {
      description = "The response message for TestCases.CalculateCoverage.",
      id = "GoogleCloudDialogflowCxV3CalculateCoverageResponse",
      properties = {
        agent = {
          description = "The agent to calculate coverage for. Format: `projects//locations//agents/`.",
          type = "string",
        },
        intentCoverage = {
          ["$ref"] = "GoogleCloudDialogflowCxV3IntentCoverage",
          description = "Intent coverage.",
        },
        routeGroupCoverage = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage",
          description = "Transition route group coverage.",
        },
        transitionCoverage = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TransitionCoverage",
          description = "Transition (excluding transition route groups) coverage.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Changelog = {
      description = "Changelogs represents a change made to a given agent.",
      id = "GoogleCloudDialogflowCxV3Changelog",
      properties = {
        action = {
          description = "The action of the change.",
          type = "string",
        },
        createTime = {
          description = "The timestamp of the change.",
          format = "google-datetime",
          type = "string",
        },
        displayName = {
          description = "The affected resource display name of the change.",
          type = "string",
        },
        name = {
          description = "The unique identifier of the changelog. Format: `projects//locations//agents//changelogs/`.",
          type = "string",
        },
        resource = {
          description = "The affected resource name of the change.",
          type = "string",
        },
        type = {
          description = "The affected resource type.",
          type = "string",
        },
        userEmail = {
          description = "Email address of the authenticated user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3CompareVersionsRequest = {
      description = "The request message for Versions.CompareVersions.",
      id = "GoogleCloudDialogflowCxV3CompareVersionsRequest",
      properties = {
        languageCode = {
          description = "The language to compare the flow versions for. If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.",
          type = "string",
        },
        targetVersion = {
          description = "Required. Name of the target flow version to compare with the base version. Use version ID `0` to indicate the draft version of the specified flow. Format: `projects//locations//agents//flows//versions/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3CompareVersionsResponse = {
      description = "The response message for Versions.CompareVersions.",
      id = "GoogleCloudDialogflowCxV3CompareVersionsResponse",
      properties = {
        baseVersionContentJson = {
          description = "JSON representation of the base version content.",
          type = "string",
        },
        compareTime = {
          description = "The timestamp when the two version compares.",
          format = "google-datetime",
          type = "string",
        },
        targetVersionContentJson = {
          description = "JSON representation of the target version content.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ContinuousTestResult = {
      description = "Represents a result from running a test case in an agent environment.",
      id = "GoogleCloudDialogflowCxV3ContinuousTestResult",
      properties = {
        name = {
          description = "The resource name for the continuous test result. Format: `projects//locations//agents//environments//continuousTestResults/`.",
          type = "string",
        },
        result = {
          description = "The result of this continuous test run, i.e. whether all the tests in this continuous test run pass or not.",
          enum = {
            "AGGREGATED_TEST_RESULT_UNSPECIFIED",
            "PASSED",
            "FAILED",
          },
          enumDescriptions = {
            "Not specified. Should never be used.",
            "All the tests passed.",
            "At least one test did not pass.",
          },
          type = "string",
        },
        runTime = {
          description = "Time when the continuous testing run starts.",
          format = "google-datetime",
          type = "string",
        },
        testCaseResults = {
          description = "A list of individual test case results names in this continuous test run.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ConversationSignals = {
      description = "This message is used to hold all the Conversation Signals data, which will be converted to JSON and exported to BigQuery.",
      id = "GoogleCloudDialogflowCxV3ConversationSignals",
      properties = {
        turnSignals = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TurnSignals",
          description = "Required. Turn signals for the current turn.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ConversationTurn = {
      description = "One interaction between a human and virtual agent. The human provides some input and the virtual agent provides a response.",
      id = "GoogleCloudDialogflowCxV3ConversationTurn",
      properties = {
        userInput = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ConversationTurnUserInput",
          description = "The user input.",
        },
        virtualAgentOutput = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput",
          description = "The virtual agent output.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ConversationTurnUserInput = {
      description = "The input from the human user.",
      id = "GoogleCloudDialogflowCxV3ConversationTurnUserInput",
      properties = {
        enableSentimentAnalysis = {
          description = "Whether sentiment analysis is enabled.",
          type = "boolean",
        },
        injectedParameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameters that need to be injected into the conversation during intent detection.",
          type = "object",
        },
        input = {
          ["$ref"] = "GoogleCloudDialogflowCxV3QueryInput",
          description = "Supports text input, event input, dtmf input in the test case.",
        },
        isWebhookEnabled = {
          description = "If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput = {
      description = "The output from the virtual agent.",
      id = "GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput",
      properties = {
        currentPage = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Page",
          description = "The Page on which the utterance was spoken. Only name and displayName will be set.",
        },
        diagnosticInfo = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Required. Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.",
          type = "object",
        },
        differences = {
          description = "Output only. If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TestRunDifference",
          },
          readOnly = true,
          type = "array",
        },
        sessionParameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The session parameters available to the bot at this point.",
          type = "object",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Response error from the agent in the test result. If set, other output is empty.",
        },
        textResponses = {
          description = "The text responses from the agent for the turn.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageText",
          },
          type = "array",
        },
        triggeredIntent = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
          description = "The Intent that triggered the response. Only name and displayName will be set.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata = {
      description = "Metadata for CreateDocument operation.",
      id = "GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3CreateVersionOperationMetadata = {
      description = "Metadata associated with the long running operation for Versions.CreateVersion.",
      id = "GoogleCloudDialogflowCxV3CreateVersionOperationMetadata",
      properties = {
        version = {
          description = "Name of the created version. Format: `projects//locations//agents//flows//versions/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata = {
      description = "Metadata for DeleteDocument operation.",
      id = "GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3DeployFlowMetadata = {
      description = "Metadata returned for the Environments.DeployFlow long running operation.",
      id = "GoogleCloudDialogflowCxV3DeployFlowMetadata",
      properties = {
        testErrors = {
          description = "Errors of running deployment tests.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TestError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3DeployFlowRequest = {
      description = "The request message for Environments.DeployFlow.",
      id = "GoogleCloudDialogflowCxV3DeployFlowRequest",
      properties = {
        flowVersion = {
          description = "Required. The flow version to deploy. Format: `projects//locations//agents// flows//versions/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3DeployFlowResponse = {
      description = "The response message for Environments.DeployFlow.",
      id = "GoogleCloudDialogflowCxV3DeployFlowResponse",
      properties = {
        deployment = {
          description = "The name of the flow version Deployment. Format: `projects//locations//agents// environments//deployments/`.",
          type = "string",
        },
        environment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Environment",
          description = "The updated environment where the flow is deployed.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Deployment = {
      description = "Represents an deployment in an environment. A deployment happens when a flow version configured to be active in the environment. You can configure running pre-deployment steps, e.g. running validation test cases, experiment auto-rollout, etc.",
      id = "GoogleCloudDialogflowCxV3Deployment",
      properties = {
        endTime = {
          description = "End time of this deployment.",
          format = "google-datetime",
          type = "string",
        },
        flowVersion = {
          description = "The name of the flow version for this deployment. Format: projects//locations//agents//flows//versions/.",
          type = "string",
        },
        name = {
          description = "The name of the deployment. Format: projects//locations//agents//environments//deployments/.",
          type = "string",
        },
        result = {
          ["$ref"] = "GoogleCloudDialogflowCxV3DeploymentResult",
          description = "Result of the deployment.",
        },
        startTime = {
          description = "Start time of this deployment.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the deployment.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "State unspecified.",
            "The deployment is running.",
            "The deployment succeeded.",
            "The deployment failed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3DeploymentResult = {
      description = "Result of the deployment.",
      id = "GoogleCloudDialogflowCxV3DeploymentResult",
      properties = {
        deploymentTestResults = {
          description = "Results of test cases running before the deployment. Format: `projects//locations//agents//testCases//results/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        experiment = {
          description = "The name of the experiment triggered by this deployment. Format: projects//locations//agents//environments//experiments/.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3DetectIntentRequest = {
      description = "The request to detect user's intent.",
      id = "GoogleCloudDialogflowCxV3DetectIntentRequest",
      properties = {
        outputAudioConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3OutputAudioConfig",
          description = "Instructs the speech synthesizer how to generate the output audio.",
        },
        queryInput = {
          ["$ref"] = "GoogleCloudDialogflowCxV3QueryInput",
          description = "Required. The input specification.",
        },
        queryParams = {
          ["$ref"] = "GoogleCloudDialogflowCxV3QueryParameters",
          description = "The parameters of this query.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3DetectIntentResponse = {
      description = "The message returned from the DetectIntent method.",
      id = "GoogleCloudDialogflowCxV3DetectIntentResponse",
      properties = {
        allowCancellation = {
          description = "Indicates whether the partial response can be cancelled when a later response arrives. e.g. if the agent specified some music as partial response, it can be cancelled.",
          type = "boolean",
        },
        outputAudio = {
          description = "The audio data bytes encoded as specified in the request. Note: The output audio is generated based on the values of default platform text responses found in the `query_result.response_messages` field. If multiple default text responses exist, they will be concatenated when generating audio. If no default platform text responses exist, the generated audio content will be empty. In some scenarios, multiple output audio fields may be present in the response structure. In these cases, only the top-most-level audio output has content.",
          format = "byte",
          type = "string",
        },
        outputAudioConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3OutputAudioConfig",
          description = "The config used by the speech synthesizer to generate the output audio.",
        },
        queryResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3QueryResult",
          description = "The result of the conversational query.",
        },
        responseId = {
          description = "Output only. The unique identifier of the response. It can be used to locate a response in the training example set or for reporting issues.",
          type = "string",
        },
        responseType = {
          description = "Response type.",
          enum = {
            "RESPONSE_TYPE_UNSPECIFIED",
            "PARTIAL",
            "FINAL",
          },
          enumDescriptions = {
            "Not specified. This should never happen.",
            "Partial response. e.g. Aggregated responses in a Fulfillment that enables `return_partial_response` can be returned as partial response. WARNING: partial response is not eligible for barge-in.",
            "Final response.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3DtmfInput = {
      description = "Represents the input for dtmf event.",
      id = "GoogleCloudDialogflowCxV3DtmfInput",
      properties = {
        digits = {
          description = "The dtmf digits.",
          type = "string",
        },
        finishDigit = {
          description = "The finish digit (if any).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3EntityType = {
      description = "Entities are extracted from user input and represent parameters that are meaningful to your application. For example, a date range, a proper name such as a geographic location or landmark, and so on. Entities represent actionable data for your application. When you define an entity, you can also include synonyms that all map to that entity. For example, \"soft drink\", \"soda\", \"pop\", and so on. There are three types of entities: * **System** - entities that are defined by the Dialogflow API for common data types such as date, time, currency, and so on. A system entity is represented by the `EntityType` type. * **Custom** - entities that are defined by you that represent actionable data that is meaningful to your application. For example, you could define a `pizza.sauce` entity for red or white pizza sauce, a `pizza.cheese` entity for the different types of cheese on a pizza, a `pizza.topping` entity for different toppings, and so on. A custom entity is represented by the `EntityType` type. * **User** - entities that are built for an individual user such as favorites, preferences, playlists, and so on. A user entity is represented by the SessionEntityType type. For more information about entity types, see the [Dialogflow documentation](https://cloud.google.com/dialogflow/docs/entities-overview).",
      id = "GoogleCloudDialogflowCxV3EntityType",
      properties = {
        autoExpansionMode = {
          description = "Indicates whether the entity type can be automatically expanded.",
          enum = {
            "AUTO_EXPANSION_MODE_UNSPECIFIED",
            "AUTO_EXPANSION_MODE_DEFAULT",
          },
          enumDescriptions = {
            "Auto expansion disabled for the entity.",
            "Allows an agent to recognize values that have not been explicitly listed in the entity.",
          },
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the entity type, unique within the agent.",
          type = "string",
        },
        enableFuzzyExtraction = {
          description = "Enables fuzzy entity extraction during classification.",
          type = "boolean",
        },
        entities = {
          description = "The collection of entity entries associated with the entity type.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3EntityTypeEntity",
          },
          type = "array",
        },
        excludedPhrases = {
          description = "Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase",
          },
          type = "array",
        },
        kind = {
          description = "Required. Indicates the kind of entity type.",
          enum = {
            "KIND_UNSPECIFIED",
            "KIND_MAP",
            "KIND_LIST",
            "KIND_REGEXP",
          },
          enumDescriptions = {
            "Not specified. This value should be never used.",
            "Map entity types allow mapping of a group of synonyms to a canonical value.",
            "List entity types contain a set of entries that do not map to canonical values. However, list entity types can contain references to other entity types (with or without aliases).",
            "Regexp entity types allow to specify regular expressions in entries values.",
          },
          type = "string",
        },
        name = {
          description = "The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.",
          type = "string",
        },
        redact = {
          description = "Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3EntityTypeEntity = {
      description = "An **entity entry** for an associated entity type.",
      id = "GoogleCloudDialogflowCxV3EntityTypeEntity",
      properties = {
        synonyms = {
          description = "Required. A collection of value synonyms. For example, if the entity type is *vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity types: * This collection must contain exactly one synonym equal to `value`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        value = {
          description = "Required. The primary value associated with this entity entry. For example, if the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP` entity types: * A canonical value to be used in place of synonyms. For `KIND_LIST` entity types: * A string that can contain references to other entity types (with or without aliases).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase = {
      description = "An excluded entity phrase that should not be matched.",
      id = "GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase",
      properties = {
        value = {
          description = "Required. The word or phrase to be excluded.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Environment = {
      description = "Represents an environment for an agent. You can create multiple versions of your agent and publish them to separate environments. When you edit an agent, you are editing the draft agent. At any point, you can save the draft agent as an agent version, which is an immutable snapshot of your agent. When you save the draft agent, it is published to the default environment. When you create agent versions, you can publish them to custom environments. You can create a variety of custom environments for testing, development, production, etc.",
      id = "GoogleCloudDialogflowCxV3Environment",
      properties = {
        description = {
          description = "The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the environment (unique in an agent). Limit of 64 characters.",
          type = "string",
        },
        name = {
          description = "The name of the environment. Format: `projects//locations//agents//environments/`.",
          type = "string",
        },
        testCasesConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig",
          description = "The test cases config for continuous tests of this environment.",
        },
        updateTime = {
          description = "Output only. Update time of this environment.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        versionConfigs = {
          description = "Required. A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3EnvironmentVersionConfig",
          },
          type = "array",
        },
        webhookConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3EnvironmentWebhookConfig",
          description = "The webhook configuration for this environment.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig = {
      description = "The configuration for continuous tests.",
      id = "GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig",
      properties = {
        enableContinuousRun = {
          description = "Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.",
          type = "boolean",
        },
        enablePredeploymentRun = {
          description = "Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.",
          type = "boolean",
        },
        testCases = {
          description = "A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations/ /agents//testCases/`",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3EnvironmentVersionConfig = {
      description = "Configuration for the version.",
      id = "GoogleCloudDialogflowCxV3EnvironmentVersionConfig",
      properties = {
        version = {
          description = "Required. Format: projects//locations//agents//flows//versions/.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3EnvironmentWebhookConfig = {
      description = "Configuration for webhooks.",
      id = "GoogleCloudDialogflowCxV3EnvironmentWebhookConfig",
      properties = {
        webhookOverrides = {
          description = "The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Webhook",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3EventHandler = {
      description = "An event handler specifies an event that can be handled during a session. When the specified event happens, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the event, it will be called. * If there is a `target_page` associated with the event, the session will transition into the specified page. * If there is a `target_flow` associated with the event, the session will transition into the specified flow.",
      id = "GoogleCloudDialogflowCxV3EventHandler",
      properties = {
        event = {
          description = "Required. The name of the event to handle.",
          type = "string",
        },
        name = {
          description = "Output only. The unique identifier of this event handler.",
          readOnly = true,
          type = "string",
        },
        targetFlow = {
          description = "The target flow to transition to. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
        targetPage = {
          description = "The target page to transition to. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
        triggerFulfillment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Fulfillment",
          description = "The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3EventInput = {
      description = "Represents the event to trigger.",
      id = "GoogleCloudDialogflowCxV3EventInput",
      properties = {
        event = {
          description = "Name of the event.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Experiment = {
      description = "Represents an experiment in an environment.",
      id = "GoogleCloudDialogflowCxV3Experiment",
      properties = {
        createTime = {
          description = "Creation time of this experiment.",
          format = "google-datetime",
          type = "string",
        },
        definition = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ExperimentDefinition",
          description = "The definition of the experiment.",
        },
        description = {
          description = "The human-readable description of the experiment.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the experiment (unique in an environment). Limit of 64 characters.",
          type = "string",
        },
        endTime = {
          description = "End time of this experiment.",
          format = "google-datetime",
          type = "string",
        },
        experimentLength = {
          description = "Maximum number of days to run the experiment/rollout. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.",
          format = "google-duration",
          type = "string",
        },
        lastUpdateTime = {
          description = "Last update time of this experiment.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The name of the experiment. Format: projects//locations//agents//environments//experiments/..",
          type = "string",
        },
        result = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ExperimentResult",
          description = "Inference result of the experiment.",
        },
        rolloutConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3RolloutConfig",
          description = "The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.",
        },
        rolloutFailureReason = {
          description = "The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.",
          type = "string",
        },
        rolloutState = {
          ["$ref"] = "GoogleCloudDialogflowCxV3RolloutState",
          description = "State of the auto rollout process.",
        },
        startTime = {
          description = "Start time of this experiment.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.",
          enum = {
            "STATE_UNSPECIFIED",
            "DRAFT",
            "RUNNING",
            "DONE",
            "ROLLOUT_FAILED",
          },
          enumDescriptions = {
            "State unspecified.",
            "The experiment is created but not started yet.",
            "The experiment is running.",
            "The experiment is done.",
            "The experiment with auto-rollout enabled has failed.",
          },
          type = "string",
        },
        variantsHistory = {
          description = "The history of updates to the experiment variants.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3VariantsHistory",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExperimentDefinition = {
      description = "Definition of the experiment.",
      id = "GoogleCloudDialogflowCxV3ExperimentDefinition",
      properties = {
        condition = {
          description = "The condition defines which subset of sessions are selected for this experiment. If not specified, all sessions are eligible. E.g. \"query_input.language_code=en\" See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).",
          type = "string",
        },
        versionVariants = {
          ["$ref"] = "GoogleCloudDialogflowCxV3VersionVariants",
          description = "The flow versions as the variants of this experiment.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExperimentResult = {
      description = "The inference result which includes an objective metric to optimize and the confidence interval.",
      id = "GoogleCloudDialogflowCxV3ExperimentResult",
      properties = {
        lastUpdateTime = {
          description = "The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.",
          format = "google-datetime",
          type = "string",
        },
        versionMetrics = {
          description = "Version variants and metrics.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval = {
      description = "A confidence interval is a range of possible values for the experiment objective you are trying to measure.",
      id = "GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval",
      properties = {
        confidenceLevel = {
          description = "The confidence level used to construct the interval, i.e. there is X% chance that the true value is within this interval.",
          format = "double",
          type = "number",
        },
        lowerBound = {
          description = "Lower bound of the interval.",
          format = "double",
          type = "number",
        },
        ratio = {
          description = "The percent change between an experiment metric's value and the value for its control.",
          format = "double",
          type = "number",
        },
        upperBound = {
          description = "Upper bound of the interval.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExperimentResultMetric = {
      description = "Metric and corresponding confidence intervals.",
      id = "GoogleCloudDialogflowCxV3ExperimentResultMetric",
      properties = {
        confidenceInterval = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval",
          description = "The probability that the treatment is better than all other treatments in the experiment",
        },
        count = {
          description = "Count value of a metric.",
          format = "double",
          type = "number",
        },
        countType = {
          description = "Count-based metric type. Only one of type or count_type is specified in each Metric.",
          enum = {
            "COUNT_TYPE_UNSPECIFIED",
            "TOTAL_NO_MATCH_COUNT",
            "TOTAL_TURN_COUNT",
            "AVERAGE_TURN_COUNT",
          },
          enumDescriptions = {
            "Count type unspecified.",
            "Total number of occurrences of a 'NO_MATCH'.",
            "Total number of turn counts.",
            "Average turn count in a session.",
          },
          type = "string",
        },
        ratio = {
          description = "Ratio value of a metric.",
          format = "double",
          type = "number",
        },
        type = {
          description = "Ratio-based metric type. Only one of type or count_type is specified in each Metric.",
          enum = {
            "METRIC_UNSPECIFIED",
            "CONTAINED_SESSION_NO_CALLBACK_RATE",
            "LIVE_AGENT_HANDOFF_RATE",
            "CALLBACK_SESSION_RATE",
            "ABANDONED_SESSION_RATE",
            "SESSION_END_RATE",
          },
          enumDescriptions = {
            "Metric unspecified.",
            "Percentage of contained sessions without user calling back in 24 hours.",
            "Percentage of sessions that were handed to a human agent.",
            "Percentage of sessions with the same user calling back.",
            "Percentage of sessions where user hung up.",
            "Percentage of sessions reached Dialogflow 'END_PAGE' or 'END_SESSION'.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics = {
      description = "Version variant and associated metrics.",
      id = "GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics",
      properties = {
        metrics = {
          description = "The metrics and corresponding confidence intervals in the inference result.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ExperimentResultMetric",
          },
          type = "array",
        },
        sessionCount = {
          description = "Number of sessions that were allocated to this version.",
          format = "int32",
          type = "integer",
        },
        version = {
          description = "The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExportAgentRequest = {
      description = "The request message for Agents.ExportAgent.",
      id = "GoogleCloudDialogflowCxV3ExportAgentRequest",
      properties = {
        agentUri = {
          description = "Optional. The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to export the agent to. The format of this URI must be `gs:///`. If left unspecified, the serialized agent is returned inline. Dialogflow performs a write operation for the Cloud Storage object on the caller's behalf, so your request authentication must have write permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).",
          type = "string",
        },
        dataFormat = {
          description = "Optional. The data format of the exported agent. If not specified, `BLOB` is assumed.",
          enum = {
            "DATA_FORMAT_UNSPECIFIED",
            "BLOB",
          },
          enumDescriptions = {
            "Unspecified format.",
            "Agent content will be exported as raw bytes.",
          },
          type = "string",
        },
        environment = {
          description = "Optional. Environment name. If not set, draft environment is assumed. Format: `projects//locations//agents//environments/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExportAgentResponse = {
      description = "The response message for Agents.ExportAgent.",
      id = "GoogleCloudDialogflowCxV3ExportAgentResponse",
      properties = {
        agentContent = {
          description = "Uncompressed raw byte content for agent.",
          format = "byte",
          type = "string",
        },
        agentUri = {
          description = "The URI to a file containing the exported agent. This field is populated only if `agent_uri` is specified in ExportAgentRequest.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExportFlowRequest = {
      description = "The request message for Flows.ExportFlow.",
      id = "GoogleCloudDialogflowCxV3ExportFlowRequest",
      properties = {
        flowUri = {
          description = "Optional. The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to export the flow to. The format of this URI must be `gs:///`. If left unspecified, the serialized flow is returned inline. Dialogflow performs a write operation for the Cloud Storage object on the caller's behalf, so your request authentication must have write permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).",
          type = "string",
        },
        includeReferencedFlows = {
          description = "Optional. Whether to export flows referenced by the specified flow.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExportFlowResponse = {
      description = "The response message for Flows.ExportFlow.",
      id = "GoogleCloudDialogflowCxV3ExportFlowResponse",
      properties = {
        flowContent = {
          description = "Uncompressed raw byte content for flow.",
          format = "byte",
          type = "string",
        },
        flowUri = {
          description = "The URI to a file containing the exported flow. This field is populated only if `flow_uri` is specified in ExportFlowRequest.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExportTestCasesMetadata = {
      description = "Metadata returned for the TestCases.ExportTestCases long running operation. This message currently has no fields.",
      id = "GoogleCloudDialogflowCxV3ExportTestCasesMetadata",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExportTestCasesRequest = {
      description = "The request message for TestCases.ExportTestCases.",
      id = "GoogleCloudDialogflowCxV3ExportTestCasesRequest",
      properties = {
        dataFormat = {
          description = "The data format of the exported test cases. If not specified, `BLOB` is assumed.",
          enum = {
            "DATA_FORMAT_UNSPECIFIED",
            "BLOB",
            "JSON",
          },
          enumDescriptions = {
            "Unspecified format.",
            "Raw bytes.",
            "JSON format.",
          },
          type = "string",
        },
        filter = {
          description = "The filter expression used to filter exported test cases, see [API Filtering](https://aip.dev/160). The expression is case insensitive and supports the following syntax: name = [OR name = ] ... For example: * \"name = t1 OR name = t2\" matches the test case with the exact resource name \"t1\" or \"t2\".",
          type = "string",
        },
        gcsUri = {
          description = "The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to export the test cases to. The format of this URI must be `gs:///`. If unspecified, the serialized test cases is returned inline. Dialogflow performs a write operation for the Cloud Storage object on the caller's behalf, so your request authentication must have write permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ExportTestCasesResponse = {
      description = "The response message for TestCases.ExportTestCases.",
      id = "GoogleCloudDialogflowCxV3ExportTestCasesResponse",
      properties = {
        content = {
          description = "Uncompressed raw byte content for test cases.",
          format = "byte",
          type = "string",
        },
        gcsUri = {
          description = "The URI to a file containing the exported test cases. This field is populated only if `gcs_uri` is specified in ExportTestCasesRequest.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Flow = {
      description = "Flows represents the conversation flows when you build your chatbot agent. A flow consists of many pages connected by the transition routes. Conversations always start with the built-in Start Flow (with an all-0 ID). Transition routes can direct the conversation session from the current flow (parent flow) to another flow (sub flow). When the sub flow is finished, Dialogflow will bring the session back to the parent flow, where the sub flow is started. Usually, when a transition route is followed by a matched intent, the intent will be \"consumed\". This means the intent won't activate more transition routes. However, when the followed transition route moves the conversation session into a different flow, the matched intent can be carried over and to be consumed in the target flow.",
      id = "GoogleCloudDialogflowCxV3Flow",
      properties = {
        description = {
          description = "The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the flow.",
          type = "string",
        },
        eventHandlers = {
          description = "A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3EventHandler",
          },
          type = "array",
        },
        name = {
          description = "The unique identifier of the flow. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
        nluSettings = {
          ["$ref"] = "GoogleCloudDialogflowCxV3NluSettings",
          description = "NLU related settings of the flow.",
        },
        transitionRouteGroups = {
          description = "A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        transitionRoutes = {
          description = "A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying \"help\" or \"can I talk to a human?\", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRoute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FlowValidationResult = {
      description = "The response message for Flows.GetFlowValidationResult.",
      id = "GoogleCloudDialogflowCxV3FlowValidationResult",
      properties = {
        name = {
          description = "The unique identifier of the flow validation result. Format: `projects//locations//agents//flows//validationResult`.",
          type = "string",
        },
        updateTime = {
          description = "Last time the flow was validated.",
          format = "google-datetime",
          type = "string",
        },
        validationMessages = {
          description = "Contains all validation messages.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ValidationMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Form = {
      description = "A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.",
      id = "GoogleCloudDialogflowCxV3Form",
      properties = {
        parameters = {
          description = "Parameters to collect from the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3FormParameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FormParameter = {
      description = "Represents a form parameter.",
      id = "GoogleCloudDialogflowCxV3FormParameter",
      properties = {
        defaultValue = {
          description = "The default value of an optional parameter. If the parameter is required, the default value will be ignored.",
          type = "any",
        },
        displayName = {
          description = "Required. The human-readable name of the parameter, unique within the form.",
          type = "string",
        },
        entityType = {
          description = "Required. The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.",
          type = "string",
        },
        fillBehavior = {
          ["$ref"] = "GoogleCloudDialogflowCxV3FormParameterFillBehavior",
          description = "Required. Defines fill behavior for the parameter.",
        },
        isList = {
          description = "Indicates whether the parameter represents a list of values.",
          type = "boolean",
        },
        redact = {
          description = "Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.",
          type = "boolean",
        },
        required = {
          description = "Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FormParameterFillBehavior = {
      description = "Configuration for how the filling of a parameter should be handled.",
      id = "GoogleCloudDialogflowCxV3FormParameterFillBehavior",
      properties = {
        initialPromptFulfillment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Fulfillment",
          description = "Required. The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter.",
        },
        repromptEventHandlers = {
          description = "The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are: * `sys.no-match-`, where N can be from 1 to 6 * `sys.no-match-default` * `sys.no-input-`, where N can be from 1 to 6 * `sys.no-input-default` * `sys.invalid-parameter` `initial_prompt_fulfillment` provides the first prompt for the parameter. If the user's response does not fill the parameter, a no-match/no-input event will be triggered, and the fulfillment associated with the `sys.no-match-1`/`sys.no-input-1` handler (if defined) will be called to provide a prompt. The `sys.no-match-2`/`sys.no-input-2` handler (if defined) will respond to the next no-match/no-input event, and so on. A `sys.no-match-default` or `sys.no-input-default` handler will be used to handle all following no-match/no-input events after all numbered no-match/no-input handlers for the parameter are consumed. A `sys.invalid-parameter` handler can be defined to handle the case where the parameter values have been `invalidated` by webhook. For example, if the user's response fill the parameter, however the parameter was invalidated by webhook, the fulfillment associated with the `sys.invalid-parameter` handler (if defined) will be called to provide a prompt. If the event handler for the corresponding event can't be found on the parameter, `initial_prompt_fulfillment` will be re-prompted.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3EventHandler",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FulfillIntentRequest = {
      description = "Request of FulfillIntent",
      id = "GoogleCloudDialogflowCxV3FulfillIntentRequest",
      properties = {
        match = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Match",
          description = "The matched intent/event to fulfill.",
        },
        matchIntentRequest = {
          ["$ref"] = "GoogleCloudDialogflowCxV3MatchIntentRequest",
          description = "Must be same as the corresponding MatchIntent request, otherwise the behavior is undefined.",
        },
        outputAudioConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3OutputAudioConfig",
          description = "Instructs the speech synthesizer how to generate output audio.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FulfillIntentResponse = {
      description = "Response of FulfillIntent",
      id = "GoogleCloudDialogflowCxV3FulfillIntentResponse",
      properties = {
        outputAudio = {
          description = "The audio data bytes encoded as specified in the request. Note: The output audio is generated based on the values of default platform text responses found in the `query_result.response_messages` field. If multiple default text responses exist, they will be concatenated when generating audio. If no default platform text responses exist, the generated audio content will be empty. In some scenarios, multiple output audio fields may be present in the response structure. In these cases, only the top-most-level audio output has content.",
          format = "byte",
          type = "string",
        },
        outputAudioConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3OutputAudioConfig",
          description = "The config used by the speech synthesizer to generate the output audio.",
        },
        queryResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3QueryResult",
          description = "The result of the conversational query.",
        },
        responseId = {
          description = "Output only. The unique identifier of the response. It can be used to locate a response in the training example set or for reporting issues.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Fulfillment = {
      description = "A fulfillment can do one or more of the following actions at the same time: * Generate rich message responses. * Set parameter values. * Call the webhook. Fulfillments can be called at various stages in the Page or Form lifecycle. For example, when a DetectIntentRequest drives a session to enter a new page, the page's entry fulfillment can add a static response to the QueryResult in the returning DetectIntentResponse, call the webhook (for example, to load user data from a database), or both.",
      id = "GoogleCloudDialogflowCxV3Fulfillment",
      properties = {
        conditionalCases = {
          description = "Conditional cases for this fulfillment.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3FulfillmentConditionalCases",
          },
          type = "array",
        },
        messages = {
          description = "The list of rich message responses to present to the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessage",
          },
          type = "array",
        },
        returnPartialResponses = {
          description = "Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.",
          type = "boolean",
        },
        setParameterActions = {
          description = "Set parameter values before executing the webhook.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3FulfillmentSetParameterAction",
          },
          type = "array",
        },
        tag = {
          description = "The value of this field will be populated in the WebhookRequest `fulfillmentInfo.tag` field by Dialogflow when the associated webhook is called. The tag is typically used by the webhook service to identify which fulfillment is being called, but it could be used for other purposes. This field is required if `webhook` is specified.",
          type = "string",
        },
        webhook = {
          description = "The webhook to call. Format: `projects//locations//agents//webhooks/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FulfillmentConditionalCases = {
      description = "A list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.",
      id = "GoogleCloudDialogflowCxV3FulfillmentConditionalCases",
      properties = {
        cases = {
          description = "A list of cascading if-else conditions.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase = {
      description = "Each case has a Boolean condition. When it is evaluated to be True, the corresponding messages will be selected and evaluated recursively.",
      id = "GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase",
      properties = {
        caseContent = {
          description = "A list of case content.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent",
          },
          type = "array",
        },
        condition = {
          description = "The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent = {
      description = "The list of messages or conditional cases to activate for this case.",
      id = "GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent",
      properties = {
        additionalCases = {
          ["$ref"] = "GoogleCloudDialogflowCxV3FulfillmentConditionalCases",
          description = "Additional cases to be evaluated.",
        },
        message = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessage",
          description = "Returned message.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3FulfillmentSetParameterAction = {
      description = "Setting a parameter value.",
      id = "GoogleCloudDialogflowCxV3FulfillmentSetParameterAction",
      properties = {
        parameter = {
          description = "Display name of the parameter.",
          type = "string",
        },
        value = {
          description = "The new value of the parameter. A null value clears the parameter.",
          type = "any",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata = {
      description = "Metadata in google::longrunning::Operation for Knowledge operations.",
      id = "GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata",
      properties = {
        state = {
          description = "Required. Output only. The current state of this operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "State unspecified.",
            "The operation has been created.",
            "The operation is currently running.",
            "The operation is done, either cancelled or completed.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata = {
      description = "Metadata for ImportDocuments operation.",
      id = "GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ImportDocumentsResponse = {
      description = "Response message for Documents.ImportDocuments.",
      id = "GoogleCloudDialogflowCxV3ImportDocumentsResponse",
      properties = {
        warnings = {
          description = "Includes details about skipped documents or any other warnings.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ImportFlowRequest = {
      description = "The request message for Flows.ImportFlow.",
      id = "GoogleCloudDialogflowCxV3ImportFlowRequest",
      properties = {
        flowContent = {
          description = "Uncompressed raw byte content for flow.",
          format = "byte",
          type = "string",
        },
        flowUri = {
          description = "The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to import flow from. The format of this URI must be `gs:///`. Dialogflow performs a read operation for the Cloud Storage object on the caller's behalf, so your request authentication must have read permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).",
          type = "string",
        },
        importOption = {
          description = "Flow import mode. If not specified, `KEEP` is assumed.",
          enum = {
            "IMPORT_OPTION_UNSPECIFIED",
            "KEEP",
            "FALLBACK",
          },
          enumDescriptions = {
            "Unspecified. Treated as `KEEP`.",
            "Always respect settings in exported flow content. It may cause a import failure if some settings (e.g. custom NLU) are not supported in the agent to import into.",
            "Fallback to default settings if some settings are not supported in the agent to import into. E.g. Standard NLU will be used if custom NLU is not available.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ImportFlowResponse = {
      description = "The response message for Flows.ImportFlow.",
      id = "GoogleCloudDialogflowCxV3ImportFlowResponse",
      properties = {
        flow = {
          description = "The unique identifier of the new flow. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ImportTestCasesMetadata = {
      description = "Metadata returned for the TestCases.ImportTestCases long running operation.",
      id = "GoogleCloudDialogflowCxV3ImportTestCasesMetadata",
      properties = {
        errors = {
          description = "Errors for failed test cases.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TestCaseError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ImportTestCasesRequest = {
      description = "The request message for TestCases.ImportTestCases.",
      id = "GoogleCloudDialogflowCxV3ImportTestCasesRequest",
      properties = {
        content = {
          description = "Uncompressed raw byte content for test cases.",
          format = "byte",
          type = "string",
        },
        gcsUri = {
          description = "The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to import test cases from. The format of this URI must be `gs:///`. Dialogflow performs a read operation for the Cloud Storage object on the caller's behalf, so your request authentication must have read permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ImportTestCasesResponse = {
      description = "The response message for TestCases.ImportTestCases.",
      id = "GoogleCloudDialogflowCxV3ImportTestCasesResponse",
      properties = {
        names = {
          description = "The unique identifiers of the new test cases. Format: `projects//locations//agents//testCases/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3InputAudioConfig = {
      description = "Instructs the speech recognizer on how to process the audio content.",
      id = "GoogleCloudDialogflowCxV3InputAudioConfig",
      properties = {
        audioEncoding = {
          description = "Required. Audio encoding of the audio content to process.",
          enum = {
            "AUDIO_ENCODING_UNSPECIFIED",
            "AUDIO_ENCODING_LINEAR_16",
            "AUDIO_ENCODING_FLAC",
            "AUDIO_ENCODING_MULAW",
            "AUDIO_ENCODING_AMR",
            "AUDIO_ENCODING_AMR_WB",
            "AUDIO_ENCODING_OGG_OPUS",
            "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE",
          },
          enumDescriptions = {
            "Not specified.",
            "Uncompressed 16-bit signed little-endian samples (Linear PCM).",
            "[`FLAC`](https://xiph.org/flac/documentation.html) (Free Lossless Audio Codec) is the recommended encoding because it is lossless (therefore recognition is not compromised) and requires only about half the bandwidth of `LINEAR16`. `FLAC` stream encoding supports 16-bit and 24-bit samples, however, not all fields in `STREAMINFO` are supported.",
            "8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law.",
            "Adaptive Multi-Rate Narrowband codec. `sample_rate_hertz` must be 8000.",
            "Adaptive Multi-Rate Wideband codec. `sample_rate_hertz` must be 16000.",
            "Opus encoded audio frames in Ogg container ([OggOpus](https://wiki.xiph.org/OggOpus)). `sample_rate_hertz` must be 16000.",
            "Although the use of lossy encodings is not recommended, if a very low bitrate encoding is required, `OGG_OPUS` is highly preferred over Speex encoding. The [Speex](https://speex.org/) encoding supported by Dialogflow API has a header byte in each block, as in MIME type `audio/x-speex-with-header-byte`. It is a variant of the RTP Speex encoding defined in [RFC 5574](https://tools.ietf.org/html/rfc5574). The stream is a sequence of blocks, one block per RTP packet. Each block starts with a byte containing the length of the block, in bytes, followed by one or more frames of Speex data, padded to an integral number of bytes (octets) as specified in RFC 5574. In other words, each RTP header is replaced with a single byte containing the block length. Only Speex wideband is supported. `sample_rate_hertz` must be 16000.",
          },
          type = "string",
        },
        enableWordInfo = {
          description = "Optional. If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.",
          type = "boolean",
        },
        model = {
          description = "Optional. Which Speech model to select for the given request. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then we auto-select a model based on the parameters in the InputAudioConfig. If enhanced speech model is enabled for the agent and an enhanced version of the specified model for the language does not exist, then the speech is recognized using the standard version of the specified model. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.",
          type = "string",
        },
        modelVariant = {
          description = "Optional. Which variant of the Speech model to use.",
          enum = {
            "SPEECH_MODEL_VARIANT_UNSPECIFIED",
            "USE_BEST_AVAILABLE",
            "USE_STANDARD",
            "USE_ENHANCED",
          },
          enumDescriptions = {
            "No model variant specified. In this case Dialogflow defaults to USE_BEST_AVAILABLE.",
            "Use the best available variant of the Speech model that the caller is eligible for. Please see the [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging) for how to make your project eligible for enhanced models.",
            "Use standard model variant even if an enhanced model is available. See the [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models) for details about enhanced models.",
            "Use an enhanced model variant: * If an enhanced variant does not exist for the given model and request language, Dialogflow falls back to the standard variant. The [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models) describes which models have enhanced variants. * If the API caller isn't eligible for enhanced models, Dialogflow returns an error. Please see the [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging) for how to make your project eligible.",
          },
          type = "string",
        },
        phraseHints = {
          description = "Optional. A list of strings containing words and phrases that the speech recognizer should recognize with higher likelihood. See [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more details.",
          items = {
            type = "string",
          },
          type = "array",
        },
        sampleRateHertz = {
          description = "Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.",
          format = "int32",
          type = "integer",
        },
        singleUtterance = {
          description = "Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. Note: This setting is relevant only for streaming methods.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Intent = {
      description = "An intent represents a user's intent to interact with a conversational agent. You can provide information for the Dialogflow API to use to match user input to an intent by adding training phrases (i.e., examples of user input) to your intent.",
      id = "GoogleCloudDialogflowCxV3Intent",
      properties = {
        description = {
          description = "Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the intent, unique within the agent.",
          type = "string",
        },
        isFallback = {
          description = "Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix \"sys-\" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. \"sys-head\" means the intent is a head intent. \"sys.contextual\" means the intent is a contextual intent.",
          type = "object",
        },
        name = {
          description = "The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
        parameters = {
          description = "The collection of parameters associated with the intent.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3IntentParameter",
          },
          type = "array",
        },
        priority = {
          description = "The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.",
          format = "int32",
          type = "integer",
        },
        trainingPhrases = {
          description = "The collection of training phrases the agent is trained on to identify the intent.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3IntentTrainingPhrase",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3IntentCoverage = {
      description = "Intent coverage represents the percentage of all possible intents in the agent that are triggered in any of a parent's test cases.",
      id = "GoogleCloudDialogflowCxV3IntentCoverage",
      properties = {
        coverageScore = {
          description = "The percent of intents in the agent that are covered.",
          format = "float",
          type = "number",
        },
        intents = {
          description = "The list of Intents present in the agent",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3IntentCoverageIntent",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3IntentCoverageIntent = {
      description = "The agent's intent.",
      id = "GoogleCloudDialogflowCxV3IntentCoverageIntent",
      properties = {
        covered = {
          description = "Whether or not the intent is covered by at least one of the agent's test cases.",
          type = "boolean",
        },
        intent = {
          description = "The intent full resource name",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3IntentInput = {
      description = "Represents the intent to trigger programmatically rather than as a result of natural language processing.",
      id = "GoogleCloudDialogflowCxV3IntentInput",
      properties = {
        intent = {
          description = "Required. The unique identifier of the intent. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3IntentParameter = {
      description = "Represents an intent parameter.",
      id = "GoogleCloudDialogflowCxV3IntentParameter",
      properties = {
        entityType = {
          description = "Required. The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.",
          type = "string",
        },
        id = {
          description = "Required. The unique identifier of the parameter. This field is used by training phrases to annotate their parts.",
          type = "string",
        },
        isList = {
          description = "Indicates whether the parameter represents a list of values.",
          type = "boolean",
        },
        redact = {
          description = "Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3IntentTrainingPhrase = {
      description = "Represents an example that the agent is trained on to identify the intent.",
      id = "GoogleCloudDialogflowCxV3IntentTrainingPhrase",
      properties = {
        id = {
          description = "Output only. The unique identifier of the training phrase.",
          type = "string",
        },
        parts = {
          description = "Required. The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `parameter_id` field is set.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3IntentTrainingPhrasePart",
          },
          type = "array",
        },
        repeatCount = {
          description = "Indicates how many times this example was added to the intent.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3IntentTrainingPhrasePart = {
      description = "Represents a part of a training phrase.",
      id = "GoogleCloudDialogflowCxV3IntentTrainingPhrasePart",
      properties = {
        parameterId = {
          description = "The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.",
          type = "string",
        },
        text = {
          description = "Required. The text for this part.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListAgentsResponse = {
      description = "The response message for Agents.ListAgents.",
      id = "GoogleCloudDialogflowCxV3ListAgentsResponse",
      properties = {
        agents = {
          description = "The list of agents. There will be a maximum number of items returned based on the page_size field in the request.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Agent",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListChangelogsResponse = {
      description = "The response message for Changelogs.ListChangelogs.",
      id = "GoogleCloudDialogflowCxV3ListChangelogsResponse",
      properties = {
        changelogs = {
          description = "The list of changelogs. There will be a maximum number of items returned based on the page_size field in the request. The changelogs will be ordered by timestamp.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Changelog",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse = {
      description = "The response message for Environments.ListTestCaseResults.",
      id = "GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse",
      properties = {
        continuousTestResults = {
          description = "The list of continuous test results.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ContinuousTestResult",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListDeploymentsResponse = {
      description = "The response message for Deployments.ListDeployments.",
      id = "GoogleCloudDialogflowCxV3ListDeploymentsResponse",
      properties = {
        deployments = {
          description = "The list of deployments. There will be a maximum number of items returned based on the page_size field in the request. The list may in some cases be empty or contain fewer entries than page_size even if this isn't the last page.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Deployment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListEntityTypesResponse = {
      description = "The response message for EntityTypes.ListEntityTypes.",
      id = "GoogleCloudDialogflowCxV3ListEntityTypesResponse",
      properties = {
        entityTypes = {
          description = "The list of entity types. There will be a maximum number of items returned based on the page_size field in the request.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3EntityType",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListEnvironmentsResponse = {
      description = "The response message for Environments.ListEnvironments.",
      id = "GoogleCloudDialogflowCxV3ListEnvironmentsResponse",
      properties = {
        environments = {
          description = "The list of environments. There will be a maximum number of items returned based on the page_size field in the request. The list may in some cases be empty or contain fewer entries than page_size even if this isn't the last page.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Environment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListExperimentsResponse = {
      description = "The response message for Experiments.ListExperiments.",
      id = "GoogleCloudDialogflowCxV3ListExperimentsResponse",
      properties = {
        experiments = {
          description = "The list of experiments. There will be a maximum number of items returned based on the page_size field in the request. The list may in some cases be empty or contain fewer entries than page_size even if this isn't the last page.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Experiment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListFlowsResponse = {
      description = "The response message for Flows.ListFlows.",
      id = "GoogleCloudDialogflowCxV3ListFlowsResponse",
      properties = {
        flows = {
          description = "The list of flows. There will be a maximum number of items returned based on the page_size field in the request.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Flow",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListIntentsResponse = {
      description = "The response message for Intents.ListIntents.",
      id = "GoogleCloudDialogflowCxV3ListIntentsResponse",
      properties = {
        intents = {
          description = "The list of intents. There will be a maximum number of items returned based on the page_size field in the request.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListPagesResponse = {
      description = "The response message for Pages.ListPages.",
      id = "GoogleCloudDialogflowCxV3ListPagesResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        pages = {
          description = "The list of pages. There will be a maximum number of items returned based on the page_size field in the request.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Page",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListSecuritySettingsResponse = {
      description = "The response message for SecuritySettings.ListSecuritySettings.",
      id = "GoogleCloudDialogflowCxV3ListSecuritySettingsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        securitySettings = {
          description = "The list of security settings.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3SecuritySettings",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse = {
      description = "The response message for SessionEntityTypes.ListSessionEntityTypes.",
      id = "GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        sessionEntityTypes = {
          description = "The list of session entity types. There will be a maximum number of items returned based on the page_size field in the request.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListTestCaseResultsResponse = {
      description = "The response message for TestCases.ListTestCaseResults.",
      id = "GoogleCloudDialogflowCxV3ListTestCaseResultsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        testCaseResults = {
          description = "The list of test case results.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TestCaseResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListTestCasesResponse = {
      description = "The response message for TestCases.ListTestCases.",
      id = "GoogleCloudDialogflowCxV3ListTestCasesResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        testCases = {
          description = "The list of test cases. There will be a maximum number of items returned based on the page_size field in the request.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TestCase",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse = {
      description = "The response message for TransitionRouteGroups.ListTransitionRouteGroups.",
      id = "GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        transitionRouteGroups = {
          description = "The list of transition route groups. There will be a maximum number of items returned based on the page_size field in the request. The list may in some cases be empty or contain fewer entries than page_size even if this isn't the last page.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListVersionsResponse = {
      description = "The response message for Versions.ListVersions.",
      id = "GoogleCloudDialogflowCxV3ListVersionsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        versions = {
          description = "A list of versions. There will be a maximum number of items returned based on the page_size field in the request. The list may in some cases be empty or contain fewer entries than page_size even if this isn't the last page.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Version",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ListWebhooksResponse = {
      description = "The response message for Webhooks.ListWebhooks.",
      id = "GoogleCloudDialogflowCxV3ListWebhooksResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        webhooks = {
          description = "The list of webhooks. There will be a maximum number of items returned based on the page_size field in the request.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Webhook",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3LoadVersionRequest = {
      description = "The request message for Versions.LoadVersion.",
      id = "GoogleCloudDialogflowCxV3LoadVersionRequest",
      properties = {
        allowOverrideAgentResources = {
          description = "This field is used to prevent accidental overwrite of other agent resources, which can potentially impact other flow's behavior. If `allow_override_agent_resources` is false, conflicted agent-level resources will not be overridden (i.e. intents, entities, webhooks).",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse = {
      description = "The response message for Environments.LookupEnvironmentHistory.",
      id = "GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse",
      properties = {
        environments = {
          description = "Represents a list of snapshots for an environment. Time of the snapshots is stored in `update_time`.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Environment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Match = {
      description = "Represents one match result of MatchIntent.",
      id = "GoogleCloudDialogflowCxV3Match",
      properties = {
        confidence = {
          description = "The confidence of this match. Values range from 0.0 (completely uncertain) to 1.0 (completely certain). This value is for informational purpose only and is only used to help match the best intent within the classification threshold. This value may change for the same end-user expression at any time due to a model retraining or change in implementation.",
          format = "float",
          type = "number",
        },
        event = {
          description = "The event that matched the query. Filled for `EVENT`, `NO_MATCH` and `NO_INPUT` match types.",
          type = "string",
        },
        intent = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
          description = "The Intent that matched the query. Some, not all fields are filled in this message, including but not limited to: `name` and `display_name`. Only filled for `INTENT` match type.",
        },
        matchType = {
          description = "Type of this Match.",
          enum = {
            "MATCH_TYPE_UNSPECIFIED",
            "INTENT",
            "DIRECT_INTENT",
            "PARAMETER_FILLING",
            "NO_MATCH",
            "NO_INPUT",
            "EVENT",
          },
          enumDescriptions = {
            "Not specified. Should never be used.",
            "The query was matched to an intent.",
            "The query directly triggered an intent.",
            "The query was used for parameter filling.",
            "No match was found for the query.",
            "Indicates an empty query.",
            "The query directly triggered an event.",
          },
          type = "string",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The collection of parameters extracted from the query. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.",
          type = "object",
        },
        resolvedInput = {
          description = "Final text input which was matched during MatchIntent. This value can be different from original input sent in request because of spelling correction or other processing.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3MatchIntentRequest = {
      description = "Request of MatchIntent.",
      id = "GoogleCloudDialogflowCxV3MatchIntentRequest",
      properties = {
        queryInput = {
          ["$ref"] = "GoogleCloudDialogflowCxV3QueryInput",
          description = "Required. The input specification.",
        },
        queryParams = {
          ["$ref"] = "GoogleCloudDialogflowCxV3QueryParameters",
          description = "The parameters of this query.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3MatchIntentResponse = {
      description = "Response of MatchIntent.",
      id = "GoogleCloudDialogflowCxV3MatchIntentResponse",
      properties = {
        currentPage = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Page",
          description = "The current Page. Some, not all fields are filled in this message, including but not limited to `name` and `display_name`.",
        },
        matches = {
          description = "Match results, if more than one, ordered descendingly by the confidence we have that the particular intent matches the query.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3Match",
          },
          type = "array",
        },
        text = {
          description = "If natural language text was provided as input, this field will contain a copy of the text.",
          type = "string",
        },
        transcript = {
          description = "If natural language speech audio was provided as input, this field will contain the transcript for the audio.",
          type = "string",
        },
        triggerEvent = {
          description = "If an event was provided as input, this field will contain a copy of the event name.",
          type = "string",
        },
        triggerIntent = {
          description = "If an intent was provided as input, this field will contain a copy of the intent identifier. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3NluSettings = {
      description = "Settings related to NLU.",
      id = "GoogleCloudDialogflowCxV3NluSettings",
      properties = {
        classificationThreshold = {
          description = "To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.",
          format = "float",
          type = "number",
        },
        modelTrainingMode = {
          description = "Indicates NLU model training mode.",
          enum = {
            "MODEL_TRAINING_MODE_UNSPECIFIED",
            "MODEL_TRAINING_MODE_AUTOMATIC",
            "MODEL_TRAINING_MODE_MANUAL",
          },
          enumDescriptions = {
            "Not specified. `MODEL_TRAINING_MODE_AUTOMATIC` will be used.",
            "NLU model training is automatically triggered when a flow gets modified. User can also manually trigger model training in this mode.",
            "User needs to manually trigger NLU model training. Best for large flows whose models take long time to train.",
          },
          type = "string",
        },
        modelType = {
          description = "Indicates the type of NLU model.",
          enum = {
            "MODEL_TYPE_UNSPECIFIED",
            "MODEL_TYPE_STANDARD",
            "MODEL_TYPE_ADVANCED",
          },
          enumDescriptions = {
            "Not specified. `MODEL_TYPE_STANDARD` will be used.",
            "Use standard NLU model.",
            "Use advanced NLU model.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3OutputAudioConfig = {
      description = "Instructs the speech synthesizer how to generate the output audio content.",
      id = "GoogleCloudDialogflowCxV3OutputAudioConfig",
      properties = {
        audioEncoding = {
          description = "Required. Audio encoding of the synthesized audio content.",
          enum = {
            "OUTPUT_AUDIO_ENCODING_UNSPECIFIED",
            "OUTPUT_AUDIO_ENCODING_LINEAR_16",
            "OUTPUT_AUDIO_ENCODING_MP3",
            "OUTPUT_AUDIO_ENCODING_MP3_64_KBPS",
            "OUTPUT_AUDIO_ENCODING_OGG_OPUS",
            "OUTPUT_AUDIO_ENCODING_MULAW",
          },
          enumDescriptions = {
            "Not specified.",
            "Uncompressed 16-bit signed little-endian samples (Linear PCM). Audio content returned as LINEAR16 also contains a WAV header.",
            "MP3 audio at 32kbps.",
            "MP3 audio at 64kbps.",
            "Opus encoded audio wrapped in an ogg container. The result will be a file which can be played natively on Android, and in browsers (at least Chrome and Firefox). The quality of the encoding is considerably higher than MP3 while using approximately the same bitrate.",
            "8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law.",
          },
          type = "string",
        },
        sampleRateHertz = {
          description = "Optional. The synthesis sample rate (in hertz) for this audio. If not provided, then the synthesizer will use the default sample rate based on the audio encoding. If this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality).",
          format = "int32",
          type = "integer",
        },
        synthesizeSpeechConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3SynthesizeSpeechConfig",
          description = "Optional. Configuration of how speech should be synthesized.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Page = {
      description = "A Dialogflow CX conversation (session) can be described and visualized as a state machine. The states of a CX session are represented by pages. For each flow, you define many pages, where your combined pages can handle a complete conversation on the topics the flow is designed for. At any given moment, exactly one page is the current page, the current page is considered active, and the flow associated with that page is considered active. Every flow has a special start page. When a flow initially becomes active, the start page page becomes the current page. For each conversational turn, the current page will either stay the same or transition to another page. You configure each page to collect information from the end-user that is relevant for the conversational state represented by the page. For more information, see the [Page guide](https://cloud.google.com/dialogflow/cx/docs/concept/page).",
      id = "GoogleCloudDialogflowCxV3Page",
      properties = {
        displayName = {
          description = "Required. The human-readable name of the page, unique within the flow.",
          type = "string",
        },
        entryFulfillment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Fulfillment",
          description = "The fulfillment to call when the session is entering the page.",
        },
        eventHandlers = {
          description = "Handlers associated with the page to handle events such as webhook errors, no match or no input.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3EventHandler",
          },
          type = "array",
        },
        form = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Form",
          description = "The form associated with the page, used for collecting parameters relevant to the page.",
        },
        name = {
          description = "The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
        transitionRouteGroups = {
          description = "Ordered list of `TransitionRouteGroups` associated with the page. Transition route groups must be unique within a page. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        transitionRoutes = {
          description = "A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRoute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3PageInfo = {
      description = "Represents page information communicated to and from the webhook.",
      id = "GoogleCloudDialogflowCxV3PageInfo",
      properties = {
        currentPage = {
          description = "Always present for WebhookRequest. Ignored for WebhookResponse. The unique identifier of the current page. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
        displayName = {
          description = "Always present for WebhookRequest. Ignored for WebhookResponse. The display name of the current page.",
          type = "string",
        },
        formInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3PageInfoFormInfo",
          description = "Optional for both WebhookRequest and WebhookResponse. Information about the form.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3PageInfoFormInfo = {
      description = "Represents form information.",
      id = "GoogleCloudDialogflowCxV3PageInfoFormInfo",
      properties = {
        parameterInfo = {
          description = "Optional for both WebhookRequest and WebhookResponse. The parameters contained in the form. Note that the webhook cannot add or remove any form parameter.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo = {
      description = "Represents parameter information.",
      id = "GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo",
      properties = {
        displayName = {
          description = "Always present for WebhookRequest. Required for WebhookResponse. The human-readable name of the parameter, unique within the form. This field cannot be modified by the webhook.",
          type = "string",
        },
        justCollected = {
          description = "Optional for WebhookRequest. Ignored for WebhookResponse. Indicates if the parameter value was just collected on the last conversation turn.",
          type = "boolean",
        },
        required = {
          description = "Optional for both WebhookRequest and WebhookResponse. Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.",
          type = "boolean",
        },
        state = {
          description = "Always present for WebhookRequest. Required for WebhookResponse. The state of the parameter. This field can be set to INVALID by the webhook to invalidate the parameter; other values set by the webhook will be ignored.",
          enum = {
            "PARAMETER_STATE_UNSPECIFIED",
            "EMPTY",
            "INVALID",
            "FILLED",
          },
          enumDescriptions = {
            "Not specified. This value should be never used.",
            "Indicates that the parameter does not have a value.",
            "Indicates that the parameter value is invalid. This field can be used by the webhook to invalidate the parameter and ask the server to collect it from the user again.",
            "Indicates that the parameter has a value.",
          },
          type = "string",
        },
        value = {
          description = "Optional for both WebhookRequest and WebhookResponse. The value of the parameter. This field can be set by the webhook to change the parameter value.",
          type = "any",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3QueryInput = {
      description = "Represents the query input. It can contain one of: 1. A conversational query in the form of text. 2. An intent query that specifies which intent to trigger. 3. Natural language speech audio to be processed. 4. An event to be triggered. ",
      id = "GoogleCloudDialogflowCxV3QueryInput",
      properties = {
        audio = {
          ["$ref"] = "GoogleCloudDialogflowCxV3AudioInput",
          description = "The natural language speech audio to be processed.",
        },
        dtmf = {
          ["$ref"] = "GoogleCloudDialogflowCxV3DtmfInput",
          description = "The DTMF event to be handled.",
        },
        event = {
          ["$ref"] = "GoogleCloudDialogflowCxV3EventInput",
          description = "The event to be triggered.",
        },
        intent = {
          ["$ref"] = "GoogleCloudDialogflowCxV3IntentInput",
          description = "The intent to be triggered.",
        },
        languageCode = {
          description = "Required. The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.",
          type = "string",
        },
        text = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TextInput",
          description = "The natural language text to be processed.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3QueryParameters = {
      description = "Represents the parameters of a conversational query.",
      id = "GoogleCloudDialogflowCxV3QueryParameters",
      properties = {
        analyzeQueryTextSentiment = {
          description = "Configures whether sentiment analysis should be performed. If not provided, sentiment analysis is not performed.",
          type = "boolean",
        },
        channel = {
          description = "The channel which this query is for. If specified, only the ResponseMessage associated with the channel will be returned. If no ResponseMessage is associated with the channel, it falls back to the ResponseMessage with unspecified channel. If unspecified, the ResponseMessage with unspecified channel will be returned.",
          type = "string",
        },
        currentPage = {
          description = "The unique identifier of the page to override the current page in the session. Format: `projects//locations//agents//flows//pages/`. If `current_page` is specified, the previous state of the session will be ignored by Dialogflow, including the previous page and the previous session parameters. In most cases, current_page and parameters should be configured together to direct a session to a specific state.",
          type = "string",
        },
        disableWebhook = {
          description = "Whether to disable webhook calls for this request.",
          type = "boolean",
        },
        flowVersions = {
          description = "A list of flow versions to override for the request. Format: `projects//locations//agents//flows//versions/`. If version 1 of flow X is included in this list, the traffic of flow X will go through version 1 regardless of the version configuration in the environment. Each flow can have at most one version specified in this list.",
          items = {
            type = "string",
          },
          type = "array",
        },
        geoLocation = {
          ["$ref"] = "GoogleTypeLatLng",
          description = "The geo location of this conversational query.",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Additional parameters to be put into session parameters. To remove a parameter from the session, clients should explicitly set the parameter value to null. You can reference the session parameters in the agent with the following format: $session.params.parameter-id. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.",
          type = "object",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "This field can be used to pass custom data into the webhook associated with the agent. Arbitrary JSON objects are supported. Some integrations that query a Dialogflow agent may provide additional information in the payload. In particular, for the Dialogflow Phone Gateway integration, this field has the form: ``` { \"telephony\": { \"caller_id\": \"+18558363987\" } } ```",
          type = "object",
        },
        sessionEntityTypes = {
          description = "Additional session entity types to replace or extend developer entity types with. The entity synonyms apply to all languages and persist for the session of this query.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3SessionEntityType",
          },
          type = "array",
        },
        timeZone = {
          description = "The time zone of this conversational query from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. If not provided, the time zone specified in the agent is used.",
          type = "string",
        },
        webhookHeaders = {
          additionalProperties = {
            type = "string",
          },
          description = "This field can be used to pass HTTP headers for a webhook call. These headers will be sent to webhook along with the headers that have been configured through Dialogflow web console. The headers defined within this field will overwrite the headers configured through Dialogflow console if there is a conflict. Header names are case-insensitive. Google's specified headers are not allowed. Including: \"Host\", \"Content-Length\", \"Connection\", \"From\", \"User-Agent\", \"Accept-Encoding\", \"If-Modified-Since\", \"If-None-Match\", \"X-Forwarded-For\", etc.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3QueryResult = {
      description = "Represents the result of a conversational query.",
      id = "GoogleCloudDialogflowCxV3QueryResult",
      properties = {
        currentPage = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Page",
          description = "The current Page. Some, not all fields are filled in this message, including but not limited to `name` and `display_name`.",
        },
        diagnosticInfo = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The free-form diagnostic info. For example, this field could contain webhook call latency. The fields of this data can change without notice, so you should not write code that depends on its structure. One of the fields is called \"Alternative Matched Intents\", which may aid with debugging. The following describes these intent results: - The list is empty if no intent was matched to end-user input. - Only intents that are referenced in the currently active flow are included. - The matched intent is included. - Other intents that could have matched end-user input, but did not match because they are referenced by intent routes that are out of [scope](https://cloud.google.com/dialogflow/cx/docs/concept/handler#scope), are included. - Other intents referenced by intent routes in scope that matched end-user input, but had a lower confidence score.",
          type = "object",
        },
        dtmf = {
          ["$ref"] = "GoogleCloudDialogflowCxV3DtmfInput",
          description = "If a DTMF was provided as input, this field will contain a copy of the DTMFInput.",
        },
        intent = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Intent",
          description = "The Intent that matched the conversational query. Some, not all fields are filled in this message, including but not limited to: `name` and `display_name`. This field is deprecated, please use QueryResult.match instead.",
        },
        intentDetectionConfidence = {
          description = "The intent detection confidence. Values range from 0.0 (completely uncertain) to 1.0 (completely certain). This value is for informational purpose only and is only used to help match the best intent within the classification threshold. This value may change for the same end-user expression at any time due to a model retraining or change in implementation. This field is deprecated, please use QueryResult.match instead.",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The language that was triggered during intent detection. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.",
          type = "string",
        },
        match = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Match",
          description = "Intent match result, could be an intent or an event.",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The collected session parameters. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey type: string * MapKey value: parameter name * MapValue type: If parameter's entity type is a composite entity then use map, otherwise, depending on the parameter value type, it could be one of string, number, boolean, null, list or map. * MapValue value: If parameter's entity type is a composite entity then use map from composite entity property names to property values, otherwise, use parameter value.",
          type = "object",
        },
        responseMessages = {
          description = "The list of rich messages returned to the client. Responses vary from simple text messages to more sophisticated, structured payloads used to drive complex logic.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessage",
          },
          type = "array",
        },
        sentimentAnalysisResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3SentimentAnalysisResult",
          description = "The sentiment analyss result, which depends on `analyze_query_text_sentiment`, specified in the request.",
        },
        text = {
          description = "If natural language text was provided as input, this field will contain a copy of the text.",
          type = "string",
        },
        transcript = {
          description = "If natural language speech audio was provided as input, this field will contain the transcript for the audio.",
          type = "string",
        },
        triggerEvent = {
          description = "If an event was provided as input, this field will contain the name of the event.",
          type = "string",
        },
        triggerIntent = {
          description = "If an intent was provided as input, this field will contain a copy of the intent identifier. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
        webhookPayloads = {
          description = "The list of webhook payload in WebhookResponse.payload, in the order of call sequence. If some webhook call fails or doesn't return any payload, an empty `Struct` would be used instead.",
          items = {
            additionalProperties = {
              description = "Properties of the object.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        webhookStatuses = {
          description = "The list of webhook call status in the order of call sequence.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata = {
      description = "Metadata for ReloadDocument operation.",
      id = "GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResourceName = {
      description = "Resource name and display name.",
      id = "GoogleCloudDialogflowCxV3ResourceName",
      properties = {
        displayName = {
          description = "Display name.",
          type = "string",
        },
        name = {
          description = "Name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessage = {
      description = "Represents a response message that can be returned by a conversational agent. Response messages are also used for output audio synthesis. The approach is as follows: * If at least one OutputAudioText response is present, then all OutputAudioText responses are linearly concatenated, and the result is used for output audio synthesis. * If the OutputAudioText responses are a mixture of text and SSML, then the concatenated result is treated as SSML; otherwise, the result is treated as either text or SSML as appropriate. The agent designer should ideally use either text or SSML consistently throughout the bot design. * Otherwise, all Text responses are linearly concatenated, and the result is used for output audio synthesis. This approach allows for more sophisticated user experience scenarios, where the text displayed to the user may differ from what is heard.",
      id = "GoogleCloudDialogflowCxV3ResponseMessage",
      properties = {
        channel = {
          description = "The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.",
          type = "string",
        },
        conversationSuccess = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess",
          description = "Indicates that the conversation succeeded.",
        },
        endInteraction = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageEndInteraction",
          description = "Output only. A signal that indicates the interaction with the Dialogflow agent has ended. This message is generated by Dialogflow only when the conversation reaches `END_SESSION` page. It is not supposed to be defined by the user. It's guaranteed that there is at most one such message in each response.",
          readOnly = true,
        },
        liveAgentHandoff = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff",
          description = "Hands off conversation to a human agent.",
        },
        mixedAudio = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageMixedAudio",
          description = "Output only. An audio response message composed of both the synthesized Dialogflow agent responses and responses defined via play_audio. This message is generated by Dialogflow only and not supposed to be defined by the user.",
          readOnly = true,
        },
        outputAudioText = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText",
          description = "A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Returns a response containing a custom, platform-specific payload.",
          type = "object",
        },
        playAudio = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessagePlayAudio",
          description = "Signal that the client should play an audio clip hosted at a client-specific URI. Dialogflow uses this to construct mixed_audio. However, Dialogflow itself does not try to read or process the URI in any way.",
        },
        telephonyTransferCall = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall",
          description = "A signal that the client should transfer the phone call connected to this agent to a third-party endpoint.",
        },
        text = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageText",
          description = "Returns a text response.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess = {
      description = "Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about. Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess. You may set this, for example: * In the entry_fulfillment of a Page if entering the page indicates that the conversation succeeded. * In a webhook response when you determine that you handled the customer issue.",
      id = "GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess",
      properties = {
        metadata = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom metadata. Dialogflow doesn't impose any structure on this.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessageEndInteraction = {
      description = "Indicates that interaction with the Dialogflow agent has ended. This message is generated by Dialogflow only and not supposed to be defined by the user.",
      id = "GoogleCloudDialogflowCxV3ResponseMessageEndInteraction",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff = {
      description = "Indicates that the conversation should be handed off to a live agent. Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures. You may set this, for example: * In the entry_fulfillment of a Page if entering the page indicates something went extremely wrong in the conversation. * In a webhook response when you determine that the customer issue can only be handled by a human.",
      id = "GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff",
      properties = {
        metadata = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom metadata for your handoff procedure. Dialogflow doesn't impose any structure on this.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessageMixedAudio = {
      description = "Represents an audio message that is composed of both segments synthesized from the Dialogflow agent prompts and ones hosted externally at the specified URIs. The external URIs are specified via play_audio. This message is generated by Dialogflow only and not supposed to be defined by the user.",
      id = "GoogleCloudDialogflowCxV3ResponseMessageMixedAudio",
      properties = {
        segments = {
          description = "Segments this audio response is composed of.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment = {
      description = "Represents one segment of audio.",
      id = "GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment",
      properties = {
        allowPlaybackInterruption = {
          description = "Output only. Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.",
          readOnly = true,
          type = "boolean",
        },
        audio = {
          description = "Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.",
          format = "byte",
          type = "string",
        },
        uri = {
          description = "Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText = {
      description = "A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.",
      id = "GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText",
      properties = {
        allowPlaybackInterruption = {
          description = "Output only. Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.",
          readOnly = true,
          type = "boolean",
        },
        ssml = {
          description = "The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).",
          type = "string",
        },
        text = {
          description = "The raw text to be synthesized.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessagePlayAudio = {
      description = "Specifies an audio clip to be played by the client as part of the response.",
      id = "GoogleCloudDialogflowCxV3ResponseMessagePlayAudio",
      properties = {
        allowPlaybackInterruption = {
          description = "Output only. Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.",
          readOnly = true,
          type = "boolean",
        },
        audioUri = {
          description = "Required. URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall = {
      description = "Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.",
      id = "GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall",
      properties = {
        phoneNumber = {
          description = "Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ResponseMessageText = {
      description = "The text response message.",
      id = "GoogleCloudDialogflowCxV3ResponseMessageText",
      properties = {
        allowPlaybackInterruption = {
          description = "Output only. Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.",
          readOnly = true,
          type = "boolean",
        },
        text = {
          description = "Required. A collection of text responses.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3RestoreAgentRequest = {
      description = "The request message for Agents.RestoreAgent.",
      id = "GoogleCloudDialogflowCxV3RestoreAgentRequest",
      properties = {
        agentContent = {
          description = "Uncompressed raw byte content for agent.",
          format = "byte",
          type = "string",
        },
        agentUri = {
          description = "The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to restore agent from. The format of this URI must be `gs:///`. Dialogflow performs a read operation for the Cloud Storage object on the caller's behalf, so your request authentication must have read permissions for the object. For more information, see [Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/access-control#storage).",
          type = "string",
        },
        restoreOption = {
          description = "Agent restore mode. If not specified, `KEEP` is assumed.",
          enum = {
            "RESTORE_OPTION_UNSPECIFIED",
            "KEEP",
            "FALLBACK",
          },
          enumDescriptions = {
            "Unspecified. Treated as KEEP.",
            "Always respect the settings from the exported agent file. It may cause a restoration failure if some settings (e.g. model type) are not supported in the target agent.",
            "Fallback to default settings if some settings are not supported in the target agent.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3RolloutConfig = {
      description = "The configuration for auto rollout.",
      id = "GoogleCloudDialogflowCxV3RolloutConfig",
      properties = {
        failureCondition = {
          description = "The conditions that are used to evaluate the failure of a rollout step. If not specified, no rollout steps will fail. E.g. \"containment_rate < 10% OR average_turn_count < 3\". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).",
          type = "string",
        },
        rolloutCondition = {
          description = "The conditions that are used to evaluate the success of a rollout step. If not specified, all rollout steps will proceed to the next one unless failure conditions are met. E.g. \"containment_rate > 60% AND callback_rate < 20%\". See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).",
          type = "string",
        },
        rolloutSteps = {
          description = "Steps to roll out a flow version. Steps should be sorted by percentage in ascending order.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3RolloutConfigRolloutStep",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3RolloutConfigRolloutStep = {
      description = "A single rollout step with specified traffic allocation.",
      id = "GoogleCloudDialogflowCxV3RolloutConfigRolloutStep",
      properties = {
        displayName = {
          description = "The name of the rollout step;",
          type = "string",
        },
        minDuration = {
          description = "The minimum time that this step should last. Should be longer than 1 hour. If not set, the default minimum duration for each step will be 1 hour.",
          format = "google-duration",
          type = "string",
        },
        trafficPercent = {
          description = "The percentage of traffic allocated to the flow version of this rollout step. (0%, 100%].",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3RolloutState = {
      description = "State of the auto-rollout process.",
      id = "GoogleCloudDialogflowCxV3RolloutState",
      properties = {
        startTime = {
          description = "Start time of the current step.",
          format = "google-datetime",
          type = "string",
        },
        step = {
          description = "Display name of the current auto rollout step.",
          type = "string",
        },
        stepIndex = {
          description = "Index of the current step in the auto rollout steps list.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3RunContinuousTestMetadata = {
      description = "Metadata returned for the Environments.RunContinuousTest long running operation.",
      id = "GoogleCloudDialogflowCxV3RunContinuousTestMetadata",
      properties = {
        errors = {
          description = "The test errors.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TestError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3RunContinuousTestRequest = {
      description = "The request message for Environments.RunContinuousTest.",
      id = "GoogleCloudDialogflowCxV3RunContinuousTestRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3RunContinuousTestResponse = {
      description = "The response message for Environments.RunContinuousTest.",
      id = "GoogleCloudDialogflowCxV3RunContinuousTestResponse",
      properties = {
        continuousTestResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3ContinuousTestResult",
          description = "The result for a continuous test run.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3RunTestCaseMetadata = {
      description = "Metadata returned for the TestCases.RunTestCase long running operation. This message currently has no fields.",
      id = "GoogleCloudDialogflowCxV3RunTestCaseMetadata",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3RunTestCaseRequest = {
      description = "The request message for TestCases.RunTestCase.",
      id = "GoogleCloudDialogflowCxV3RunTestCaseRequest",
      properties = {
        environment = {
          description = "Optional. Environment name. If not set, draft environment is assumed. Format: `projects//locations//agents//environments/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3RunTestCaseResponse = {
      description = "The response message for TestCases.RunTestCase.",
      id = "GoogleCloudDialogflowCxV3RunTestCaseResponse",
      properties = {
        result = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TestCaseResult",
          description = "The result.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3SecuritySettings = {
      description = "Represents the settings related to security issues, such as data redaction and data retention. It may take hours for updates on the settings to propagate to all the related components and take effect.",
      id = "GoogleCloudDialogflowCxV3SecuritySettings",
      properties = {
        audioExportSettings = {
          ["$ref"] = "GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings",
          description = "Controls audio export settings for post-conversation analytics when ingesting audio to conversations via Participants.AnalyzeContent or Participants.StreamingAnalyzeContent. If retention_strategy is set to REMOVE_AFTER_CONVERSATION or audio_export_settings.gcs_bucket is empty, audio export is disabled. If audio export is enabled, audio is recorded and saved to audio_export_settings.gcs_bucket, subject to retention policy of audio_export_settings.gcs_bucket. This setting won't effect audio input for implicit sessions via Sessions.DetectIntent or Sessions.StreamingDetectIntent.",
        },
        deidentifyTemplate = {
          description = "[DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this template to define de-identification configuration for the content. The `DLP De-identify Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, Dialogflow replaces sensitive info with `[redacted]` text. The template name will have one of the following formats: `projects//locations//deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note: `deidentify_template` must be located in the same region as the `SecuritySettings`.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the security settings, unique within the location.",
          type = "string",
        },
        insightsExportSettings = {
          ["$ref"] = "GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings",
          description = "Controls conversation exporting settings to Insights after conversation is completed. If retention_strategy is set to REMOVE_AFTER_CONVERSATION, Insights export is disabled no matter what you configure here.",
        },
        inspectTemplate = {
          description = "[DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this template to define inspect base settings. The `DLP Inspect Templates Reader` role is needed on the Dialogflow service identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty, we use the default DLP inspect config. The template name will have one of the following formats: `projects//locations//inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `inspect_template` must be located in the same region as the `SecuritySettings`.",
          type = "string",
        },
        name = {
          description = "Resource name of the settings. Required for the SecuritySettingsService.UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings populates the name automatically. Format: `projects//locations//securitySettings/`.",
          type = "string",
        },
        purgeDataTypes = {
          description = "List of types of data to remove when retention settings triggers purge.",
          items = {
            enum = {
              "PURGE_DATA_TYPE_UNSPECIFIED",
              "DIALOGFLOW_HISTORY",
            },
            enumDescriptions = {
              "Unspecified. Do not use.",
              "Dialogflow history. This does not include Cloud logging, which is owned by the user - not Dialogflow.",
            },
            type = "string",
          },
          type = "array",
        },
        redactionScope = {
          description = "Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.",
          enum = {
            "REDACTION_SCOPE_UNSPECIFIED",
            "REDACT_DISK_STORAGE",
          },
          enumDescriptions = {
            "Don't redact any kind of data.",
            "On data to be written to disk or similar devices that are capable of holding data even if power is disconnected. This includes data that are temporarily saved on disk.",
          },
          type = "string",
        },
        redactionStrategy = {
          description = "Strategy that defines how we do redaction.",
          enum = {
            "REDACTION_STRATEGY_UNSPECIFIED",
            "REDACT_WITH_SERVICE",
          },
          enumDescriptions = {
            "Do not redact.",
            "Call redaction service to clean up the data to be persisted.",
          },
          type = "string",
        },
        retentionWindowDays = {
          description = "Retains the data for the specified number of days. User must set a value lower than Dialogflow's default 365d TTL (30 days for Agent Assist traffic), higher value will be ignored and use default. Setting a value higher than that has no effect. A missing value or setting to 0 also means we use default TTL.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings = {
      description = "Settings for exporting audio.",
      id = "GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings",
      properties = {
        audioExportPattern = {
          description = "Filename pattern for exported audio.",
          type = "string",
        },
        audioFormat = {
          description = "File format for exported audio file. Currently only in telephony recordings.",
          enum = {
            "AUDIO_FORMAT_UNSPECIFIED",
            "MULAW",
            "MP3",
            "OGG",
          },
          enumDescriptions = {
            "Unspecified. Do not use.",
            "G.711 mu-law PCM with 8kHz sample rate.",
            "MP3 file format.",
            "OGG Vorbis.",
          },
          type = "string",
        },
        enableAudioRedaction = {
          description = "Enable audio redaction if it is true.",
          type = "boolean",
        },
        gcsBucket = {
          description = "Cloud Storage bucket to export audio record to. Setting this field would grant the Storage Object Creator role to the Dialogflow Service Agent. API caller that tries to modify this field should have the permission of storage.buckets.setIamPolicy.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings = {
      description = "Settings for exporting conversations to [Insights](https://cloud.google.com/contact-center/insights/docs).",
      id = "GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings",
      properties = {
        enableInsightsExport = {
          description = "If enabled, we will automatically exports conversations to Insights and Insights runs its analyzers.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3SentimentAnalysisResult = {
      description = "The result of sentiment analysis. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral.",
      id = "GoogleCloudDialogflowCxV3SentimentAnalysisResult",
      properties = {
        magnitude = {
          description = "A non-negative number in the [0, +inf) range, which represents the absolute magnitude of sentiment, regardless of score (positive or negative).",
          format = "float",
          type = "number",
        },
        score = {
          description = "Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3SessionEntityType = {
      description = "Session entity types are referred to as **User** entity types and are entities that are built for an individual user such as favorites, preferences, playlists, and so on. You can redefine a session entity type at the session level to extend or replace a custom entity type at the user session level (we refer to the entity types defined at the agent level as \"custom entity types\"). Note: session entity types apply to all queries, regardless of the language. For more information about entity types, see the [Dialogflow documentation](https://cloud.google.com/dialogflow/docs/entities-overview).",
      id = "GoogleCloudDialogflowCxV3SessionEntityType",
      properties = {
        entities = {
          description = "Required. The collection of entities to override or supplement the custom entity type.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3EntityTypeEntity",
          },
          type = "array",
        },
        entityOverrideMode = {
          description = "Required. Indicates whether the additional data should override or supplement the custom entity type definition.",
          enum = {
            "ENTITY_OVERRIDE_MODE_UNSPECIFIED",
            "ENTITY_OVERRIDE_MODE_OVERRIDE",
            "ENTITY_OVERRIDE_MODE_SUPPLEMENT",
          },
          enumDescriptions = {
            "Not specified. This value should be never used.",
            "The collection of session entities overrides the collection of entities in the corresponding custom entity type.",
            "The collection of session entities extends the collection of entities in the corresponding custom entity type. Note: Even in this override mode calls to `ListSessionEntityTypes`, `GetSessionEntityType`, `CreateSessionEntityType` and `UpdateSessionEntityType` only return the additional entities added in this session entity type. If you want to get the supplemented list, please call EntityTypes.GetEntityType on the custom entity type and merge.",
          },
          type = "string",
        },
        name = {
          description = "Required. The unique identifier of the session entity type. Format: `projects//locations//agents//sessions//entityTypes/` or `projects//locations//agents//environments//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3SessionInfo = {
      description = "Represents session information communicated to and from the webhook.",
      id = "GoogleCloudDialogflowCxV3SessionInfo",
      properties = {
        parameters = {
          additionalProperties = {
            type = "any",
          },
          description = "Optional for WebhookRequest. Optional for WebhookResponse. All parameters collected from forms and intents during the session. Parameters can be created, updated, or removed by the webhook. To remove a parameter from the session, the webhook should explicitly set the parameter value to null in WebhookResponse. The map is keyed by parameters' display names.",
          type = "object",
        },
        session = {
          description = "Always present for WebhookRequest. Ignored for WebhookResponse. The unique identifier of the session. This field can be used by the webhook to identify a session. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/` if environment is specified.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3SpeechToTextSettings = {
      description = "Settings related to speech recognition.",
      id = "GoogleCloudDialogflowCxV3SpeechToTextSettings",
      properties = {
        enableSpeechAdaptation = {
          description = "Whether to use speech adaptation for speech recognition.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3StartExperimentRequest = {
      description = "The request message for Experiments.StartExperiment.",
      id = "GoogleCloudDialogflowCxV3StartExperimentRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3StopExperimentRequest = {
      description = "The request message for Experiments.StopExperiment.",
      id = "GoogleCloudDialogflowCxV3StopExperimentRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3SynthesizeSpeechConfig = {
      description = "Configuration of how speech should be synthesized.",
      id = "GoogleCloudDialogflowCxV3SynthesizeSpeechConfig",
      properties = {
        effectsProfileId = {
          description = "Optional. An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.",
          items = {
            type = "string",
          },
          type = "array",
        },
        pitch = {
          description = "Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.",
          format = "double",
          type = "number",
        },
        speakingRate = {
          description = "Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other values < 0.25 or > 4.0 will return an error.",
          format = "double",
          type = "number",
        },
        voice = {
          ["$ref"] = "GoogleCloudDialogflowCxV3VoiceSelectionParams",
          description = "Optional. The desired voice of the synthesized audio.",
        },
        volumeGainDb = {
          description = "Optional. Volume gain (in dB) of the normal native volume supported by the specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB) will play at approximately half the amplitude of the normal native signal amplitude. A value of +6.0 (dB) will play at approximately twice the amplitude of the normal native signal amplitude. We strongly recommend not to exceed +10 (dB) as there's usually no effective increase in loudness for any value greater than that.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TestCase = {
      description = "Represents a test case.",
      id = "GoogleCloudDialogflowCxV3TestCase",
      properties = {
        creationTime = {
          description = "Output only. When the test was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the test case, unique within the agent. Limit of 200 characters.",
          type = "string",
        },
        lastTestResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TestCaseResult",
          description = "The latest test result.",
        },
        name = {
          description = "The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.",
          type = "string",
        },
        notes = {
          description = "Additional freeform notes about the test case. Limit of 400 characters.",
          type = "string",
        },
        tags = {
          description = "Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with \"#\" and has a limit of 30 characters.",
          items = {
            type = "string",
          },
          type = "array",
        },
        testCaseConversationTurns = {
          description = "The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ConversationTurn",
          },
          type = "array",
        },
        testConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TestConfig",
          description = "Config for the test case.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TestCaseError = {
      description = "Error info for importing a test.",
      id = "GoogleCloudDialogflowCxV3TestCaseError",
      properties = {
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status associated with the test case.",
        },
        testCase = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TestCase",
          description = "The test case.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TestCaseResult = {
      description = "Represents a result from running a test case in an agent environment.",
      id = "GoogleCloudDialogflowCxV3TestCaseResult",
      properties = {
        conversationTurns = {
          description = "The conversation turns uttered during the test case replay in chronological order.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ConversationTurn",
          },
          type = "array",
        },
        environment = {
          description = "Environment where the test was run. If not set, it indicates the draft environment.",
          type = "string",
        },
        name = {
          description = "The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.",
          type = "string",
        },
        testResult = {
          description = "Whether the test case passed in the agent environment.",
          enum = {
            "TEST_RESULT_UNSPECIFIED",
            "PASSED",
            "FAILED",
          },
          enumDescriptions = {
            "Not specified. Should never be used.",
            "The test passed.",
            "The test did not pass.",
          },
          type = "string",
        },
        testTime = {
          description = "The time that the test was run.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TestConfig = {
      description = "Represents configurations for a test case.",
      id = "GoogleCloudDialogflowCxV3TestConfig",
      properties = {
        flow = {
          description = "Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.",
          type = "string",
        },
        page = {
          description = "The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.",
          type = "string",
        },
        trackingParameters = {
          description = "Session parameters to be compared when calculating differences.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TestError = {
      description = "Error info for running a test.",
      id = "GoogleCloudDialogflowCxV3TestError",
      properties = {
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status associated with the test.",
        },
        testCase = {
          description = "The test case resource name.",
          type = "string",
        },
        testTime = {
          description = "The timestamp when the test was completed.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TestRunDifference = {
      description = "The description of differences between original and replayed agent output.",
      id = "GoogleCloudDialogflowCxV3TestRunDifference",
      properties = {
        description = {
          description = "A description of the diff, showing the actual output vs expected output.",
          type = "string",
        },
        type = {
          description = "The type of diff.",
          enum = {
            "DIFF_TYPE_UNSPECIFIED",
            "INTENT",
            "PAGE",
            "PARAMETERS",
            "UTTERANCE",
          },
          enumDescriptions = {
            "Should never be used.",
            "The intent.",
            "The page.",
            "The parameters.",
            "The message utterance.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TextInput = {
      description = "Represents the natural language text to be processed.",
      id = "GoogleCloudDialogflowCxV3TextInput",
      properties = {
        text = {
          description = "Required. The UTF-8 encoded natural language text to be processed. Text length must not exceed 256 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TrainFlowRequest = {
      description = "The request message for Flows.TrainFlow.",
      id = "GoogleCloudDialogflowCxV3TrainFlowRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3TransitionCoverage = {
      description = "Transition coverage represents the percentage of all possible page transitions (page-level transition routes and event handlers, excluding transition route groups) present within any of a parent's test cases.",
      id = "GoogleCloudDialogflowCxV3TransitionCoverage",
      properties = {
        coverageScore = {
          description = "The percent of transitions in the agent that are covered.",
          format = "float",
          type = "number",
        },
        transitions = {
          description = "The list of Transitions present in the agent.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionCoverageTransition",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TransitionCoverageTransition = {
      description = "A transition in a page.",
      id = "GoogleCloudDialogflowCxV3TransitionCoverageTransition",
      properties = {
        covered = {
          description = "Whether or not the transition is covered by at least one of the agent's test cases.",
          type = "boolean",
        },
        eventHandler = {
          ["$ref"] = "GoogleCloudDialogflowCxV3EventHandler",
          description = "Event handler.",
        },
        index = {
          description = "The index of a transition in the transition list. Starting from 0.",
          format = "int32",
          type = "integer",
        },
        source = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode",
          description = "The start node of a transition.",
        },
        target = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode",
          description = "The end node of a transition.",
        },
        transitionRoute = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRoute",
          description = "Intent route or condition route.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode = {
      description = "The source or target of a transition.",
      id = "GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode",
      properties = {
        flow = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Flow",
          description = "Indicates a transition to a Flow. Only some fields such as name and displayname will be set.",
        },
        page = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Page",
          description = "Indicates a transition to a Page. Only some fields such as name and displayname will be set.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TransitionRoute = {
      description = "A transition route specifies a intent that can be matched and/or a data condition that can be evaluated during a session. When a specified transition is matched, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the transition, it will be called. * If there is a `target_page` associated with the transition, the session will transition into the specified page. * If there is a `target_flow` associated with the transition, the session will transition into the specified flow.",
      id = "GoogleCloudDialogflowCxV3TransitionRoute",
      properties = {
        condition = {
          description = "The condition to evaluate against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition). At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.",
          type = "string",
        },
        intent = {
          description = "The unique identifier of an Intent. Format: `projects//locations//agents//intents/`. Indicates that the transition can only happen when the given intent is matched. At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.",
          type = "string",
        },
        name = {
          description = "Output only. The unique identifier of this transition route.",
          readOnly = true,
          type = "string",
        },
        targetFlow = {
          description = "The target flow to transition to. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
        targetPage = {
          description = "The target page to transition to. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
        triggerFulfillment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3Fulfillment",
          description = "The fulfillment to call when the condition is satisfied. At least one of `trigger_fulfillment` and `target` must be specified. When both are defined, `trigger_fulfillment` is executed first.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TransitionRouteGroup = {
      description = "An TransitionRouteGroup represents a group of `TransitionRoutes` to be used by a Page.",
      id = "GoogleCloudDialogflowCxV3TransitionRouteGroup",
      properties = {
        displayName = {
          description = "Required. The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.",
          type = "string",
        },
        name = {
          description = "The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/`.",
          type = "string",
        },
        transitionRoutes = {
          description = "Transition routes associated with the TransitionRouteGroup.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRoute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage = {
      description = "Transition route group coverage represents the percentage of all possible transition routes present within any of a parent's test cases. The results are grouped by the transition route group.",
      id = "GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage",
      properties = {
        coverageScore = {
          description = "The percent of transition routes in all the transition route groups that are covered.",
          format = "float",
          type = "number",
        },
        coverages = {
          description = "Transition route group coverages.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage = {
      description = "Coverage result message for one transition route group.",
      id = "GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage",
      properties = {
        coverageScore = {
          description = "The percent of transition routes in the transition route group that are covered.",
          format = "float",
          type = "number",
        },
        routeGroup = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroup",
          description = "Transition route group metadata. Only name and displayName will be set.",
        },
        transitions = {
          description = "The list of transition routes and coverage in the transition route group.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition = {
      description = "A transition coverage in a transition route group.",
      id = "GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition",
      properties = {
        covered = {
          description = "Whether or not the transition route is covered by at least one of the agent's test cases.",
          type = "boolean",
        },
        transitionRoute = {
          ["$ref"] = "GoogleCloudDialogflowCxV3TransitionRoute",
          description = "Intent route or condition route.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3TurnSignals = {
      description = "Collection of all signals that were extracted for a single turn of the conversation.",
      id = "GoogleCloudDialogflowCxV3TurnSignals",
      properties = {
        agentEscalated = {
          description = "Whether agent responded with LiveAgentHandoff fulfillment.",
          type = "boolean",
        },
        dtmfUsed = {
          description = "Whether user was using DTMF input.",
          type = "boolean",
        },
        failureReasons = {
          description = "Failure reasons of the turn.",
          items = {
            enum = {
              "FAILURE_REASON_UNSPECIFIED",
              "FAILED_INTENT",
              "FAILED_WEBHOOK",
            },
            enumDescriptions = {
              "Failure reason is not assigned.",
              "Whether NLU failed to recognize user intent.",
              "Whether webhook failed during the turn.",
            },
            type = "string",
          },
          type = "array",
        },
        noMatch = {
          description = "Whether NLU predicted NO_MATCH.",
          type = "boolean",
        },
        noUserInput = {
          description = "Whether user provided no input.",
          type = "boolean",
        },
        reachedEndPage = {
          description = "Whether turn resulted in End Session page.",
          type = "boolean",
        },
        userEscalated = {
          description = "Whether user was specifically asking for a live agent.",
          type = "boolean",
        },
        webhookStatuses = {
          description = "Human-readable statuses of the webhooks triggered during this turn.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata = {
      description = "Metadata for UpdateDocument operation.",
      id = "GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ValidateAgentRequest = {
      description = "The request message for Agents.ValidateAgent.",
      id = "GoogleCloudDialogflowCxV3ValidateAgentRequest",
      properties = {
        languageCode = {
          description = "If not specified, the agent's default language is used.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ValidateFlowRequest = {
      description = "The request message for Flows.ValidateFlow.",
      id = "GoogleCloudDialogflowCxV3ValidateFlowRequest",
      properties = {
        languageCode = {
          description = "If not specified, the agent's default language is used.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3ValidationMessage = {
      description = "Agent/flow validation message.",
      id = "GoogleCloudDialogflowCxV3ValidationMessage",
      properties = {
        detail = {
          description = "The message detail.",
          type = "string",
        },
        resourceNames = {
          description = "The resource names of the resources where the message is found.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ResourceName",
          },
          type = "array",
        },
        resourceType = {
          description = "The type of the resources where the message is found.",
          enum = {
            "RESOURCE_TYPE_UNSPECIFIED",
            "AGENT",
            "INTENT",
            "INTENT_TRAINING_PHRASE",
            "INTENT_PARAMETER",
            "INTENTS",
            "INTENT_TRAINING_PHRASES",
            "ENTITY_TYPE",
            "ENTITY_TYPES",
            "WEBHOOK",
            "FLOW",
            "PAGE",
            "PAGES",
            "TRANSITION_ROUTE_GROUP",
          },
          enumDescriptions = {
            "Unspecified.",
            "Agent.",
            "Intent.",
            "Intent training phrase.",
            "Intent parameter.",
            "Multiple intents.",
            "Multiple training phrases.",
            "Entity type.",
            "Multiple entity types.",
            "Webhook.",
            "Flow.",
            "Page.",
            "Multiple pages.",
            "Transition route group.",
          },
          type = "string",
        },
        resources = {
          description = "The names of the resources where the message is found.",
          items = {
            type = "string",
          },
          type = "array",
        },
        severity = {
          description = "Indicates the severity of the message.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "INFO",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "Unspecified.",
            "The agent doesn't follow Dialogflow best practices.",
            "The agent may not behave as expected.",
            "The agent may experience failures.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3VariantsHistory = {
      description = "The history of variants update.",
      id = "GoogleCloudDialogflowCxV3VariantsHistory",
      properties = {
        updateTime = {
          description = "Update time of the variants.",
          format = "google-datetime",
          type = "string",
        },
        versionVariants = {
          ["$ref"] = "GoogleCloudDialogflowCxV3VersionVariants",
          description = "The flow versions as the variants.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Version = {
      description = "Represents a version of a flow.",
      id = "GoogleCloudDialogflowCxV3Version",
      properties = {
        createTime = {
          description = "Output only. Create time of the version.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the version. Limit of 64 characters.",
          type = "string",
        },
        name = {
          description = "Format: projects//locations//agents//flows//versions/. Version ID is a self-increasing number generated by Dialogflow upon version creation.",
          type = "string",
        },
        nluSettings = {
          ["$ref"] = "GoogleCloudDialogflowCxV3NluSettings",
          description = "Output only. The NLU settings of the flow at version creation.",
          readOnly = true,
        },
        state = {
          description = "Output only. The state of this version. This field is read-only and cannot be set by create and update methods.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "Not specified. This value is not used.",
            "Version is not ready to serve (e.g. training is running).",
            "Training has succeeded and this version is ready to serve.",
            "Version training failed.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3VersionVariants = {
      description = "A list of flow version variants.",
      id = "GoogleCloudDialogflowCxV3VersionVariants",
      properties = {
        variants = {
          description = "A list of flow version variants.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3VersionVariantsVariant",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3VersionVariantsVariant = {
      description = "A single flow version with specified traffic allocation.",
      id = "GoogleCloudDialogflowCxV3VersionVariantsVariant",
      properties = {
        isControlGroup = {
          description = "Whether the variant is for the control group.",
          type = "boolean",
        },
        trafficAllocation = {
          description = "Percentage of the traffic which should be routed to this version of flow. Traffic allocation for a single flow must sum up to 1.0.",
          format = "float",
          type = "number",
        },
        version = {
          description = "The name of the flow version. Format: `projects//locations//agents//flows//versions/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3VoiceSelectionParams = {
      description = "Description of which voice to use for speech synthesis.",
      id = "GoogleCloudDialogflowCxV3VoiceSelectionParams",
      properties = {
        name = {
          description = "Optional. The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and ssml_gender. For the list of available voices, please refer to [Supported voices and languages](https://cloud.google.com/text-to-speech/docs/voices).",
          type = "string",
        },
        ssmlGender = {
          description = "Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer substitutes a voice with a different gender rather than failing the request.",
          enum = {
            "SSML_VOICE_GENDER_UNSPECIFIED",
            "SSML_VOICE_GENDER_MALE",
            "SSML_VOICE_GENDER_FEMALE",
            "SSML_VOICE_GENDER_NEUTRAL",
          },
          enumDescriptions = {
            "An unspecified gender, which means that the client doesn't care which gender the selected voice will have.",
            "A male voice.",
            "A female voice.",
            "A gender-neutral voice.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3Webhook = {
      description = "Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.",
      id = "GoogleCloudDialogflowCxV3Webhook",
      properties = {
        disabled = {
          description = "Indicates whether the webhook is disabled.",
          type = "boolean",
        },
        displayName = {
          description = "Required. The human-readable name of the webhook, unique within the agent.",
          type = "string",
        },
        genericWebService = {
          ["$ref"] = "GoogleCloudDialogflowCxV3WebhookGenericWebService",
          description = "Configuration for a generic web service.",
        },
        name = {
          description = "The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.",
          type = "string",
        },
        serviceDirectory = {
          ["$ref"] = "GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig",
          description = "Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.",
        },
        timeout = {
          description = "Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookGenericWebService = {
      description = "Represents configuration for a generic web service.",
      id = "GoogleCloudDialogflowCxV3WebhookGenericWebService",
      properties = {
        allowedCaCerts = {
          description = "Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with \"subject alt name\". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \\ -signkey example.com.key \\ -out example.com.crt \\ -extfile <(printf \"\\nsubjectAltName='DNS:www.example.com'\") ```",
          items = {
            format = "byte",
            type = "string",
          },
          type = "array",
        },
        password = {
          description = "The password for HTTP Basic authentication.",
          type = "string",
        },
        requestHeaders = {
          additionalProperties = {
            type = "string",
          },
          description = "The HTTP request headers to send together with webhook requests.",
          type = "object",
        },
        uri = {
          description = "Required. The webhook URI for receiving POST requests. It must use https protocol.",
          type = "string",
        },
        username = {
          description = "The user name for HTTP Basic authentication.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookRequest = {
      description = "The request message for a webhook call. The request is sent as a JSON object and the field names will be presented in camel cases. You may see undocumented fields in an actual request. These fields are used internally by Dialogflow and should be ignored.",
      id = "GoogleCloudDialogflowCxV3WebhookRequest",
      properties = {
        detectIntentResponseId = {
          description = "Always present. The unique identifier of the DetectIntentResponse that will be returned to the API caller.",
          type = "string",
        },
        fulfillmentInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo",
          description = "Always present. Information about the fulfillment that triggered this webhook call.",
        },
        intentInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3WebhookRequestIntentInfo",
          description = "Information about the last matched intent.",
        },
        languageCode = {
          description = "The language code specified in the original request.",
          type = "string",
        },
        messages = {
          description = "The list of rich message responses to present to the user. Webhook can choose to append or replace this list in WebhookResponse.fulfillment_response;",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessage",
          },
          type = "array",
        },
        pageInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3PageInfo",
          description = "Information about page status.",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom data set in QueryParameters.payload.",
          type = "object",
        },
        sentimentAnalysisResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult",
          description = "The sentiment analysis result of the current user request. The field is filled when sentiment analysis is configured to be enabled for the request.",
        },
        sessionInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3SessionInfo",
          description = "Information about session status.",
        },
        text = {
          description = "If natural language text was provided as input, this field will contain a copy of the text.",
          type = "string",
        },
        transcript = {
          description = "If natural language speech audio was provided as input, this field will contain the transcript for the audio.",
          type = "string",
        },
        triggerEvent = {
          description = "If an event was provided as input, this field will contain the name of the event.",
          type = "string",
        },
        triggerIntent = {
          description = "If an intent was provided as input, this field will contain a copy of the intent identifier. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo = {
      description = "Represents fulfillment information communicated to the webhook.",
      id = "GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo",
      properties = {
        tag = {
          description = "Always present. The value of the Fulfillment.tag field will be populated in this field by Dialogflow when the associated webhook is called. The tag is typically used by the webhook service to identify which fulfillment is being called, but it could be used for other purposes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookRequestIntentInfo = {
      description = "Represents intent information communicated to the webhook.",
      id = "GoogleCloudDialogflowCxV3WebhookRequestIntentInfo",
      properties = {
        confidence = {
          description = "The confidence of the matched intent. Values range from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        displayName = {
          description = "Always present. The display name of the last matched intent.",
          type = "string",
        },
        lastMatchedIntent = {
          description = "Always present. The unique identifier of the last matched intent. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue",
          },
          description = "Parameters identified as a result of intent matching. This is a map of the name of the identified parameter to the value of the parameter identified from the user's utterance. All parameters defined in the matched intent that are identified will be surfaced here.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue = {
      description = "Represents a value for an intent parameter.",
      id = "GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue",
      properties = {
        originalValue = {
          description = "Always present. Original text value extracted from user utterance.",
          type = "string",
        },
        resolvedValue = {
          description = "Always present. Structured value for the parameter extracted from user utterance.",
          type = "any",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult = {
      description = "Represents the result of sentiment analysis.",
      id = "GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult",
      properties = {
        magnitude = {
          description = "A non-negative number in the [0, +inf) range, which represents the absolute magnitude of sentiment, regardless of score (positive or negative).",
          format = "float",
          type = "number",
        },
        score = {
          description = "Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookResponse = {
      description = "The response message for a webhook call.",
      id = "GoogleCloudDialogflowCxV3WebhookResponse",
      properties = {
        fulfillmentResponse = {
          ["$ref"] = "GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse",
          description = "The fulfillment response to send to the user. This field can be omitted by the webhook if it does not intend to send any response to the user.",
        },
        pageInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3PageInfo",
          description = "Information about page status. This field can be omitted by the webhook if it does not intend to modify page status.",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Value to append directly to QueryResult.webhook_payloads.",
          type = "object",
        },
        sessionInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3SessionInfo",
          description = "Information about session status. This field can be omitted by the webhook if it does not intend to modify session status.",
        },
        targetFlow = {
          description = "The target flow to transition to. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
        targetPage = {
          description = "The target page to transition to. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse = {
      description = "Represents a fulfillment response to the user.",
      id = "GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse",
      properties = {
        mergeBehavior = {
          description = "Merge behavior for `messages`.",
          enum = {
            "MERGE_BEHAVIOR_UNSPECIFIED",
            "APPEND",
            "REPLACE",
          },
          enumDescriptions = {
            "Not specified. `APPEND` will be used.",
            "`messages` will be appended to the list of messages waiting to be sent to the user.",
            "`messages` will replace the list of messages waiting to be sent to the user.",
          },
          type = "string",
        },
        messages = {
          description = "The list of rich message responses to present to the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3ResponseMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig = {
      description = "Represents configuration for a [Service Directory](https://cloud.google.com/service-directory) service.",
      id = "GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig",
      properties = {
        genericWebService = {
          ["$ref"] = "GoogleCloudDialogflowCxV3WebhookGenericWebService",
          description = "Generic Service configuration of this webhook.",
        },
        service = {
          description = "Required. The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1AudioInput = {
      description = "Represents the natural speech audio to be processed.",
      id = "GoogleCloudDialogflowCxV3beta1AudioInput",
      properties = {
        audio = {
          description = "The natural language speech audio to be processed. A single request can contain up to 1 minute of speech audio data. The transcribed text cannot contain more than 256 bytes. For non-streaming audio detect intent, both `config` and `audio` must be provided. For streaming audio detect intent, `config` must be provided in the first request and `audio` must be provided in all following requests.",
          format = "byte",
          type = "string",
        },
        config = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1InputAudioConfig",
          description = "Required. Instructs the speech recognizer how to process the speech audio.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata = {
      description = "Metadata returned for the TestCases.BatchRunTestCases long running operation.",
      id = "GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata",
      properties = {
        errors = {
          description = "The test errors.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse = {
      description = "The response message for TestCases.BatchRunTestCases.",
      id = "GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse",
      properties = {
        results = {
          description = "The test case results. The detailed conversation turns are empty in this response.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestCaseResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ContinuousTestResult = {
      description = "Represents a result from running a test case in an agent environment.",
      id = "GoogleCloudDialogflowCxV3beta1ContinuousTestResult",
      properties = {
        name = {
          description = "The resource name for the continuous test result. Format: `projects//locations//agents//environments//continuousTestResults/`.",
          type = "string",
        },
        result = {
          description = "The result of this continuous test run, i.e. whether all the tests in this continuous test run pass or not.",
          enum = {
            "AGGREGATED_TEST_RESULT_UNSPECIFIED",
            "PASSED",
            "FAILED",
          },
          enumDescriptions = {
            "Not specified. Should never be used.",
            "All the tests passed.",
            "At least one test did not pass.",
          },
          type = "string",
        },
        runTime = {
          description = "Time when the continuous testing run starts.",
          format = "google-datetime",
          type = "string",
        },
        testCaseResults = {
          description = "A list of individual test case results names in this continuous test run.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ConversationSignals = {
      description = "This message is used to hold all the Conversation Signals data, which will be converted to JSON and exported to BigQuery.",
      id = "GoogleCloudDialogflowCxV3beta1ConversationSignals",
      properties = {
        turnSignals = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1TurnSignals",
          description = "Required. Turn signals for the current turn.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ConversationTurn = {
      description = "One interaction between a human and virtual agent. The human provides some input and the virtual agent provides a response.",
      id = "GoogleCloudDialogflowCxV3beta1ConversationTurn",
      properties = {
        userInput = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput",
          description = "The user input.",
        },
        virtualAgentOutput = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput",
          description = "The virtual agent output.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput = {
      description = "The input from the human user.",
      id = "GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput",
      properties = {
        enableSentimentAnalysis = {
          description = "Whether sentiment analysis is enabled.",
          type = "boolean",
        },
        injectedParameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameters that need to be injected into the conversation during intent detection.",
          type = "object",
        },
        input = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1QueryInput",
          description = "Supports text input, event input, dtmf input in the test case.",
        },
        isWebhookEnabled = {
          description = "If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput = {
      description = "The output from the virtual agent.",
      id = "GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput",
      properties = {
        currentPage = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1Page",
          description = "The Page on which the utterance was spoken. Only name and displayName will be set.",
        },
        diagnosticInfo = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Required. Input only. The diagnostic info output for the turn. Required to calculate the testing coverage.",
          type = "object",
        },
        differences = {
          description = "Output only. If this is part of a result conversation turn, the list of differences between the original run and the replay for this output, if any.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestRunDifference",
          },
          readOnly = true,
          type = "array",
        },
        sessionParameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The session parameters available to the bot at this point.",
          type = "object",
        },
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Response error from the agent in the test result. If set, other output is empty.",
        },
        textResponses = {
          description = "The text responses from the agent for the turn.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageText",
          },
          type = "array",
        },
        triggeredIntent = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1Intent",
          description = "The Intent that triggered the response. Only name and displayName will be set.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata = {
      description = "Metadata for CreateDocument operation.",
      id = "GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata = {
      description = "Metadata associated with the long running operation for Versions.CreateVersion.",
      id = "GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata",
      properties = {
        version = {
          description = "Name of the created version. Format: `projects//locations//agents//flows//versions/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata = {
      description = "Metadata for DeleteDocument operation.",
      id = "GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1DeployFlowMetadata = {
      description = "Metadata returned for the Environments.DeployFlow long running operation.",
      id = "GoogleCloudDialogflowCxV3beta1DeployFlowMetadata",
      properties = {
        testErrors = {
          description = "Errors of running deployment tests.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1DeployFlowResponse = {
      description = "The response message for Environments.DeployFlow.",
      id = "GoogleCloudDialogflowCxV3beta1DeployFlowResponse",
      properties = {
        deployment = {
          description = "The name of the flow version deployment. Format: `projects//locations//agents// environments//deployments/`.",
          type = "string",
        },
        environment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1Environment",
          description = "The updated environment where the flow is deployed.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1DtmfInput = {
      description = "Represents the input for dtmf event.",
      id = "GoogleCloudDialogflowCxV3beta1DtmfInput",
      properties = {
        digits = {
          description = "The dtmf digits.",
          type = "string",
        },
        finishDigit = {
          description = "The finish digit (if any).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1Environment = {
      description = "Represents an environment for an agent. You can create multiple versions of your agent and publish them to separate environments. When you edit an agent, you are editing the draft agent. At any point, you can save the draft agent as an agent version, which is an immutable snapshot of your agent. When you save the draft agent, it is published to the default environment. When you create agent versions, you can publish them to custom environments. You can create a variety of custom environments for testing, development, production, etc.",
      id = "GoogleCloudDialogflowCxV3beta1Environment",
      properties = {
        description = {
          description = "The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the environment (unique in an agent). Limit of 64 characters.",
          type = "string",
        },
        name = {
          description = "The name of the environment. Format: `projects//locations//agents//environments/`.",
          type = "string",
        },
        testCasesConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig",
          description = "The test cases config for continuous tests of this environment.",
        },
        updateTime = {
          description = "Output only. Update time of this environment.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        versionConfigs = {
          description = "Required. A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig",
          },
          type = "array",
        },
        webhookConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig",
          description = "The webhook configuration for this environment.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig = {
      description = "The configuration for continuous tests.",
      id = "GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig",
      properties = {
        enableContinuousRun = {
          description = "Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.",
          type = "boolean",
        },
        enablePredeploymentRun = {
          description = "Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.",
          type = "boolean",
        },
        testCases = {
          description = "A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations/ /agents//testCases/`",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig = {
      description = "Configuration for the version.",
      id = "GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig",
      properties = {
        version = {
          description = "Required. Format: projects//locations//agents//flows//versions/.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig = {
      description = "Configuration for webhooks.",
      id = "GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig",
      properties = {
        webhookOverrides = {
          description = "The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1Webhook",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1EventHandler = {
      description = "An event handler specifies an event that can be handled during a session. When the specified event happens, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the event, it will be called. * If there is a `target_page` associated with the event, the session will transition into the specified page. * If there is a `target_flow` associated with the event, the session will transition into the specified flow.",
      id = "GoogleCloudDialogflowCxV3beta1EventHandler",
      properties = {
        event = {
          description = "Required. The name of the event to handle.",
          type = "string",
        },
        name = {
          description = "Output only. The unique identifier of this event handler.",
          readOnly = true,
          type = "string",
        },
        targetFlow = {
          description = "The target flow to transition to. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
        targetPage = {
          description = "The target page to transition to. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
        triggerFulfillment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1Fulfillment",
          description = "The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1EventInput = {
      description = "Represents the event to trigger.",
      id = "GoogleCloudDialogflowCxV3beta1EventInput",
      properties = {
        event = {
          description = "Name of the event.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ExportAgentResponse = {
      description = "The response message for Agents.ExportAgent.",
      id = "GoogleCloudDialogflowCxV3beta1ExportAgentResponse",
      properties = {
        agentContent = {
          description = "Uncompressed raw byte content for agent.",
          format = "byte",
          type = "string",
        },
        agentUri = {
          description = "The URI to a file containing the exported agent. This field is populated only if `agent_uri` is specified in ExportAgentRequest.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ExportFlowResponse = {
      description = "The response message for Flows.ExportFlow.",
      id = "GoogleCloudDialogflowCxV3beta1ExportFlowResponse",
      properties = {
        flowContent = {
          description = "Uncompressed raw byte content for flow.",
          format = "byte",
          type = "string",
        },
        flowUri = {
          description = "The URI to a file containing the exported flow. This field is populated only if `flow_uri` is specified in ExportFlowRequest.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata = {
      description = "Metadata returned for the TestCases.ExportTestCases long running operation. This message currently has no fields.",
      id = "GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse = {
      description = "The response message for TestCases.ExportTestCases.",
      id = "GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse",
      properties = {
        content = {
          description = "Uncompressed raw byte content for test cases.",
          format = "byte",
          type = "string",
        },
        gcsUri = {
          description = "The URI to a file containing the exported test cases. This field is populated only if `gcs_uri` is specified in ExportTestCasesRequest.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1Form = {
      description = "A form is a data model that groups related parameters that can be collected from the user. The process in which the agent prompts the user and collects parameter values from the user is called form filling. A form can be added to a page. When form filling is done, the filled parameters will be written to the session.",
      id = "GoogleCloudDialogflowCxV3beta1Form",
      properties = {
        parameters = {
          description = "Parameters to collect from the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1FormParameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1FormParameter = {
      description = "Represents a form parameter.",
      id = "GoogleCloudDialogflowCxV3beta1FormParameter",
      properties = {
        defaultValue = {
          description = "The default value of an optional parameter. If the parameter is required, the default value will be ignored.",
          type = "any",
        },
        displayName = {
          description = "Required. The human-readable name of the parameter, unique within the form.",
          type = "string",
        },
        entityType = {
          description = "Required. The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.",
          type = "string",
        },
        fillBehavior = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior",
          description = "Required. Defines fill behavior for the parameter.",
        },
        isList = {
          description = "Indicates whether the parameter represents a list of values.",
          type = "boolean",
        },
        redact = {
          description = "Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.",
          type = "boolean",
        },
        required = {
          description = "Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior = {
      description = "Configuration for how the filling of a parameter should be handled.",
      id = "GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior",
      properties = {
        initialPromptFulfillment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1Fulfillment",
          description = "Required. The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter.",
        },
        repromptEventHandlers = {
          description = "The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are: * `sys.no-match-`, where N can be from 1 to 6 * `sys.no-match-default` * `sys.no-input-`, where N can be from 1 to 6 * `sys.no-input-default` * `sys.invalid-parameter` `initial_prompt_fulfillment` provides the first prompt for the parameter. If the user's response does not fill the parameter, a no-match/no-input event will be triggered, and the fulfillment associated with the `sys.no-match-1`/`sys.no-input-1` handler (if defined) will be called to provide a prompt. The `sys.no-match-2`/`sys.no-input-2` handler (if defined) will respond to the next no-match/no-input event, and so on. A `sys.no-match-default` or `sys.no-input-default` handler will be used to handle all following no-match/no-input events after all numbered no-match/no-input handlers for the parameter are consumed. A `sys.invalid-parameter` handler can be defined to handle the case where the parameter values have been `invalidated` by webhook. For example, if the user's response fill the parameter, however the parameter was invalidated by webhook, the fulfillment associated with the `sys.invalid-parameter` handler (if defined) will be called to provide a prompt. If the event handler for the corresponding event can't be found on the parameter, `initial_prompt_fulfillment` will be re-prompted.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1EventHandler",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1Fulfillment = {
      description = "A fulfillment can do one or more of the following actions at the same time: * Generate rich message responses. * Set parameter values. * Call the webhook. Fulfillments can be called at various stages in the Page or Form lifecycle. For example, when a DetectIntentRequest drives a session to enter a new page, the page's entry fulfillment can add a static response to the QueryResult in the returning DetectIntentResponse, call the webhook (for example, to load user data from a database), or both.",
      id = "GoogleCloudDialogflowCxV3beta1Fulfillment",
      properties = {
        conditionalCases = {
          description = "Conditional cases for this fulfillment.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases",
          },
          type = "array",
        },
        messages = {
          description = "The list of rich message responses to present to the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessage",
          },
          type = "array",
        },
        returnPartialResponses = {
          description = "Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks.",
          type = "boolean",
        },
        setParameterActions = {
          description = "Set parameter values before executing the webhook.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction",
          },
          type = "array",
        },
        tag = {
          description = "The value of this field will be populated in the WebhookRequest `fulfillmentInfo.tag` field by Dialogflow when the associated webhook is called. The tag is typically used by the webhook service to identify which fulfillment is being called, but it could be used for other purposes. This field is required if `webhook` is specified.",
          type = "string",
        },
        webhook = {
          description = "The webhook to call. Format: `projects//locations//agents//webhooks/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases = {
      description = "A list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.",
      id = "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases",
      properties = {
        cases = {
          description = "A list of cascading if-else conditions.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase = {
      description = "Each case has a Boolean condition. When it is evaluated to be True, the corresponding messages will be selected and evaluated recursively.",
      id = "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase",
      properties = {
        caseContent = {
          description = "A list of case content.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent",
          },
          type = "array",
        },
        condition = {
          description = "The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent = {
      description = "The list of messages or conditional cases to activate for this case.",
      id = "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent",
      properties = {
        additionalCases = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases",
          description = "Additional cases to be evaluated.",
        },
        message = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessage",
          description = "Returned message.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction = {
      description = "Setting a parameter value.",
      id = "GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction",
      properties = {
        parameter = {
          description = "Display name of the parameter.",
          type = "string",
        },
        value = {
          description = "The new value of the parameter. A null value clears the parameter.",
          type = "any",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata = {
      description = "Metadata in google::longrunning::Operation for Knowledge operations.",
      id = "GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata",
      properties = {
        state = {
          description = "Required. Output only. The current state of this operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "State unspecified.",
            "The operation has been created.",
            "The operation is currently running.",
            "The operation is done, either cancelled or completed.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata = {
      description = "Metadata for ImportDocuments operation.",
      id = "GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse = {
      description = "Response message for Documents.ImportDocuments.",
      id = "GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse",
      properties = {
        warnings = {
          description = "Includes details about skipped documents or any other warnings.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ImportFlowResponse = {
      description = "The response message for Flows.ImportFlow.",
      id = "GoogleCloudDialogflowCxV3beta1ImportFlowResponse",
      properties = {
        flow = {
          description = "The unique identifier of the new flow. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata = {
      description = "Metadata returned for the TestCases.ImportTestCases long running operation.",
      id = "GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata",
      properties = {
        errors = {
          description = "Errors for failed test cases.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestCaseError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse = {
      description = "The response message for TestCases.ImportTestCases.",
      id = "GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse",
      properties = {
        names = {
          description = "The unique identifiers of the new test cases. Format: `projects//locations//agents//testCases/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1InputAudioConfig = {
      description = "Instructs the speech recognizer on how to process the audio content.",
      id = "GoogleCloudDialogflowCxV3beta1InputAudioConfig",
      properties = {
        audioEncoding = {
          description = "Required. Audio encoding of the audio content to process.",
          enum = {
            "AUDIO_ENCODING_UNSPECIFIED",
            "AUDIO_ENCODING_LINEAR_16",
            "AUDIO_ENCODING_FLAC",
            "AUDIO_ENCODING_MULAW",
            "AUDIO_ENCODING_AMR",
            "AUDIO_ENCODING_AMR_WB",
            "AUDIO_ENCODING_OGG_OPUS",
            "AUDIO_ENCODING_SPEEX_WITH_HEADER_BYTE",
          },
          enumDescriptions = {
            "Not specified.",
            "Uncompressed 16-bit signed little-endian samples (Linear PCM).",
            "[`FLAC`](https://xiph.org/flac/documentation.html) (Free Lossless Audio Codec) is the recommended encoding because it is lossless (therefore recognition is not compromised) and requires only about half the bandwidth of `LINEAR16`. `FLAC` stream encoding supports 16-bit and 24-bit samples, however, not all fields in `STREAMINFO` are supported.",
            "8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law.",
            "Adaptive Multi-Rate Narrowband codec. `sample_rate_hertz` must be 8000.",
            "Adaptive Multi-Rate Wideband codec. `sample_rate_hertz` must be 16000.",
            "Opus encoded audio frames in Ogg container ([OggOpus](https://wiki.xiph.org/OggOpus)). `sample_rate_hertz` must be 16000.",
            "Although the use of lossy encodings is not recommended, if a very low bitrate encoding is required, `OGG_OPUS` is highly preferred over Speex encoding. The [Speex](https://speex.org/) encoding supported by Dialogflow API has a header byte in each block, as in MIME type `audio/x-speex-with-header-byte`. It is a variant of the RTP Speex encoding defined in [RFC 5574](https://tools.ietf.org/html/rfc5574). The stream is a sequence of blocks, one block per RTP packet. Each block starts with a byte containing the length of the block, in bytes, followed by one or more frames of Speex data, padded to an integral number of bytes (octets) as specified in RFC 5574. In other words, each RTP header is replaced with a single byte containing the block length. Only Speex wideband is supported. `sample_rate_hertz` must be 16000.",
          },
          type = "string",
        },
        enableWordInfo = {
          description = "Optional. If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult with information about the recognized speech words, e.g. start and end time offsets. If false or unspecified, Speech doesn't return any word-level information.",
          type = "boolean",
        },
        model = {
          description = "Optional. Which Speech model to select for the given request. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then we auto-select a model based on the parameters in the InputAudioConfig. If enhanced speech model is enabled for the agent and an enhanced version of the specified model for the language does not exist, then the speech is recognized using the standard version of the specified model. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.",
          type = "string",
        },
        modelVariant = {
          description = "Optional. Which variant of the Speech model to use.",
          enum = {
            "SPEECH_MODEL_VARIANT_UNSPECIFIED",
            "USE_BEST_AVAILABLE",
            "USE_STANDARD",
            "USE_ENHANCED",
          },
          enumDescriptions = {
            "No model variant specified. In this case Dialogflow defaults to USE_BEST_AVAILABLE.",
            "Use the best available variant of the Speech model that the caller is eligible for. Please see the [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging) for how to make your project eligible for enhanced models.",
            "Use standard model variant even if an enhanced model is available. See the [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models) for details about enhanced models.",
            "Use an enhanced model variant: * If an enhanced variant does not exist for the given model and request language, Dialogflow falls back to the standard variant. The [Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/enhanced-models) describes which models have enhanced variants. * If the API caller isn't eligible for enhanced models, Dialogflow returns an error. Please see the [Dialogflow docs](https://cloud.google.com/dialogflow/docs/data-logging) for how to make your project eligible.",
          },
          type = "string",
        },
        phraseHints = {
          description = "Optional. A list of strings containing words and phrases that the speech recognizer should recognize with higher likelihood. See [the Cloud Speech documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more details.",
          items = {
            type = "string",
          },
          type = "array",
        },
        sampleRateHertz = {
          description = "Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics) for more details.",
          format = "int32",
          type = "integer",
        },
        singleUtterance = {
          description = "Optional. If `false` (default), recognition does not cease until the client closes the stream. If `true`, the recognizer will detect a single spoken utterance in input audio. Recognition ceases when it detects the audio's voice has stopped or paused. In this case, once a detected intent is received, the client should close the stream and start a new request with a new stream as needed. Note: This setting is relevant only for streaming methods.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1Intent = {
      description = "An intent represents a user's intent to interact with a conversational agent. You can provide information for the Dialogflow API to use to match user input to an intent by adding training phrases (i.e., examples of user input) to your intent.",
      id = "GoogleCloudDialogflowCxV3beta1Intent",
      properties = {
        description = {
          description = "Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.",
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the intent, unique within the agent.",
          type = "string",
        },
        isFallback = {
          description = "Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix \"sys-\" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. \"sys-head\" means the intent is a head intent. \"sys-contextual\" means the intent is a contextual intent.",
          type = "object",
        },
        name = {
          description = "The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
        parameters = {
          description = "The collection of parameters associated with the intent.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1IntentParameter",
          },
          type = "array",
        },
        priority = {
          description = "The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.",
          format = "int32",
          type = "integer",
        },
        trainingPhrases = {
          description = "The collection of training phrases the agent is trained on to identify the intent.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1IntentInput = {
      description = "Represents the intent to trigger programmatically rather than as a result of natural language processing.",
      id = "GoogleCloudDialogflowCxV3beta1IntentInput",
      properties = {
        intent = {
          description = "Required. The unique identifier of the intent. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1IntentParameter = {
      description = "Represents an intent parameter.",
      id = "GoogleCloudDialogflowCxV3beta1IntentParameter",
      properties = {
        entityType = {
          description = "Required. The entity type of the parameter. Format: `projects/-/locations/-/agents/-/entityTypes/` for system entity types (for example, `projects/-/locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//entityTypes/` for developer entity types.",
          type = "string",
        },
        id = {
          description = "Required. The unique identifier of the parameter. This field is used by training phrases to annotate their parts.",
          type = "string",
        },
        isList = {
          description = "Indicates whether the parameter represents a list of values.",
          type = "boolean",
        },
        redact = {
          description = "Indicates whether the parameter content should be redacted in log. If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase = {
      description = "Represents an example that the agent is trained on to identify the intent.",
      id = "GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase",
      properties = {
        id = {
          description = "Output only. The unique identifier of the training phrase.",
          type = "string",
        },
        parts = {
          description = "Required. The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `parameter_id` field is set.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart",
          },
          type = "array",
        },
        repeatCount = {
          description = "Indicates how many times this example was added to the intent.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart = {
      description = "Represents a part of a training phrase.",
      id = "GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart",
      properties = {
        parameterId = {
          description = "The parameter used to annotate this part of the training phrase. This field is required for annotated parts of the training phrase.",
          type = "string",
        },
        text = {
          description = "Required. The text for this part.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1Page = {
      description = "A Dialogflow CX conversation (session) can be described and visualized as a state machine. The states of a CX session are represented by pages. For each flow, you define many pages, where your combined pages can handle a complete conversation on the topics the flow is designed for. At any given moment, exactly one page is the current page, the current page is considered active, and the flow associated with that page is considered active. Every flow has a special start page. When a flow initially becomes active, the start page page becomes the current page. For each conversational turn, the current page will either stay the same or transition to another page. You configure each page to collect information from the end-user that is relevant for the conversational state represented by the page. For more information, see the [Page guide](https://cloud.google.com/dialogflow/cx/docs/concept/page).",
      id = "GoogleCloudDialogflowCxV3beta1Page",
      properties = {
        displayName = {
          description = "Required. The human-readable name of the page, unique within the flow.",
          type = "string",
        },
        entryFulfillment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1Fulfillment",
          description = "The fulfillment to call when the session is entering the page.",
        },
        eventHandlers = {
          description = "Handlers associated with the page to handle events such as webhook errors, no match or no input.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1EventHandler",
          },
          type = "array",
        },
        form = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1Form",
          description = "The form associated with the page, used for collecting parameters relevant to the page.",
        },
        name = {
          description = "The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
        transitionRouteGroups = {
          description = "Ordered list of `TransitionRouteGroups` associated with the page. Transition route groups must be unique within a page. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        transitionRoutes = {
          description = "A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1TransitionRoute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1PageInfo = {
      description = "Represents page information communicated to and from the webhook.",
      id = "GoogleCloudDialogflowCxV3beta1PageInfo",
      properties = {
        currentPage = {
          description = "Always present for WebhookRequest. Ignored for WebhookResponse. The unique identifier of the current page. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
        displayName = {
          description = "Always present for WebhookRequest. Ignored for WebhookResponse. The display name of the current page.",
          type = "string",
        },
        formInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1PageInfoFormInfo",
          description = "Optional for both WebhookRequest and WebhookResponse. Information about the form.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1PageInfoFormInfo = {
      description = "Represents form information.",
      id = "GoogleCloudDialogflowCxV3beta1PageInfoFormInfo",
      properties = {
        parameterInfo = {
          description = "Optional for both WebhookRequest and WebhookResponse. The parameters contained in the form. Note that the webhook cannot add or remove any form parameter.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo = {
      description = "Represents parameter information.",
      id = "GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo",
      properties = {
        displayName = {
          description = "Always present for WebhookRequest. Required for WebhookResponse. The human-readable name of the parameter, unique within the form. This field cannot be modified by the webhook.",
          type = "string",
        },
        justCollected = {
          description = "Optional for WebhookRequest. Ignored for WebhookResponse. Indicates if the parameter value was just collected on the last conversation turn.",
          type = "boolean",
        },
        required = {
          description = "Optional for both WebhookRequest and WebhookResponse. Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them. Required parameters must be filled before form filling concludes.",
          type = "boolean",
        },
        state = {
          description = "Always present for WebhookRequest. Required for WebhookResponse. The state of the parameter. This field can be set to INVALID by the webhook to invalidate the parameter; other values set by the webhook will be ignored.",
          enum = {
            "PARAMETER_STATE_UNSPECIFIED",
            "EMPTY",
            "INVALID",
            "FILLED",
          },
          enumDescriptions = {
            "Not specified. This value should be never used.",
            "Indicates that the parameter does not have a value.",
            "Indicates that the parameter value is invalid. This field can be used by the webhook to invalidate the parameter and ask the server to collect it from the user again.",
            "Indicates that the parameter has a value.",
          },
          type = "string",
        },
        value = {
          description = "Optional for both WebhookRequest and WebhookResponse. The value of the parameter. This field can be set by the webhook to change the parameter value.",
          type = "any",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1QueryInput = {
      description = "Represents the query input. It can contain one of: 1. A conversational query in the form of text. 2. An intent query that specifies which intent to trigger. 3. Natural language speech audio to be processed. 4. An event to be triggered. ",
      id = "GoogleCloudDialogflowCxV3beta1QueryInput",
      properties = {
        audio = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1AudioInput",
          description = "The natural language speech audio to be processed.",
        },
        dtmf = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1DtmfInput",
          description = "The DTMF event to be handled.",
        },
        event = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1EventInput",
          description = "The event to be triggered.",
        },
        intent = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1IntentInput",
          description = "The intent to be triggered.",
        },
        languageCode = {
          description = "Required. The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language.",
          type = "string",
        },
        text = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1TextInput",
          description = "The natural language text to be processed.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata = {
      description = "Metadata for ReloadDocument operation.",
      id = "GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessage = {
      description = "Represents a response message that can be returned by a conversational agent. Response messages are also used for output audio synthesis. The approach is as follows: * If at least one OutputAudioText response is present, then all OutputAudioText responses are linearly concatenated, and the result is used for output audio synthesis. * If the OutputAudioText responses are a mixture of text and SSML, then the concatenated result is treated as SSML; otherwise, the result is treated as either text or SSML as appropriate. The agent designer should ideally use either text or SSML consistently throughout the bot design. * Otherwise, all Text responses are linearly concatenated, and the result is used for output audio synthesis. This approach allows for more sophisticated user experience scenarios, where the text displayed to the user may differ from what is heard.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessage",
      properties = {
        channel = {
          description = "The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned.",
          type = "string",
        },
        conversationSuccess = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess",
          description = "Indicates that the conversation succeeded.",
        },
        endInteraction = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction",
          description = "Output only. A signal that indicates the interaction with the Dialogflow agent has ended. This message is generated by Dialogflow only when the conversation reaches `END_SESSION` page. It is not supposed to be defined by the user. It's guaranteed that there is at most one such message in each response.",
          readOnly = true,
        },
        liveAgentHandoff = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff",
          description = "Hands off conversation to a human agent.",
        },
        mixedAudio = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio",
          description = "Output only. An audio response message composed of both the synthesized Dialogflow agent responses and responses defined via play_audio. This message is generated by Dialogflow only and not supposed to be defined by the user.",
          readOnly = true,
        },
        outputAudioText = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText",
          description = "A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Returns a response containing a custom, platform-specific payload.",
          type = "object",
        },
        playAudio = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio",
          description = "Signal that the client should play an audio clip hosted at a client-specific URI. Dialogflow uses this to construct mixed_audio. However, Dialogflow itself does not try to read or process the URI in any way.",
        },
        telephonyTransferCall = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall",
          description = "A signal that the client should transfer the phone call connected to this agent to a third-party endpoint.",
        },
        text = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageText",
          description = "Returns a text response.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess = {
      description = "Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about. Dialogflow only uses this to determine which conversations should be counted as successful and doesn't process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don't return ConversationSuccess. You may set this, for example: * In the entry_fulfillment of a Page if entering the page indicates that the conversation succeeded. * In a webhook response when you determine that you handled the customer issue.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess",
      properties = {
        metadata = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom metadata. Dialogflow doesn't impose any structure on this.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction = {
      description = "Indicates that interaction with the Dialogflow agent has ended. This message is generated by Dialogflow only and not supposed to be defined by the user.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff = {
      description = "Indicates that the conversation should be handed off to a live agent. Dialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures. You may set this, for example: * In the entry_fulfillment of a Page if entering the page indicates something went extremely wrong in the conversation. * In a webhook response when you determine that the customer issue can only be handled by a human.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff",
      properties = {
        metadata = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom metadata for your handoff procedure. Dialogflow doesn't impose any structure on this.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio = {
      description = "Represents an audio message that is composed of both segments synthesized from the Dialogflow agent prompts and ones hosted externally at the specified URIs. The external URIs are specified via play_audio. This message is generated by Dialogflow only and not supposed to be defined by the user.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio",
      properties = {
        segments = {
          description = "Segments this audio response is composed of.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment = {
      description = "Represents one segment of audio.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment",
      properties = {
        allowPlaybackInterruption = {
          description = "Output only. Whether the playback of this segment can be interrupted by the end user's speech and the client should then start the next Dialogflow request.",
          readOnly = true,
          type = "boolean",
        },
        audio = {
          description = "Raw audio synthesized from the Dialogflow agent's response using the output config specified in the request.",
          format = "byte",
          type = "string",
        },
        uri = {
          description = "Client-specific URI that points to an audio clip accessible to the client. Dialogflow does not impose any validation on it.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText = {
      description = "A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText",
      properties = {
        allowPlaybackInterruption = {
          description = "Output only. Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.",
          readOnly = true,
          type = "boolean",
        },
        ssml = {
          description = "The SSML text to be synthesized. For more information, see [SSML](/speech/text-to-speech/docs/ssml).",
          type = "string",
        },
        text = {
          description = "The raw text to be synthesized.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio = {
      description = "Specifies an audio clip to be played by the client as part of the response.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio",
      properties = {
        allowPlaybackInterruption = {
          description = "Output only. Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.",
          readOnly = true,
          type = "boolean",
        },
        audioUri = {
          description = "Required. URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall = {
      description = "Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall",
      properties = {
        phoneNumber = {
          description = "Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1ResponseMessageText = {
      description = "The text response message.",
      id = "GoogleCloudDialogflowCxV3beta1ResponseMessageText",
      properties = {
        allowPlaybackInterruption = {
          description = "Output only. Whether the playback of this message can be interrupted by the end user's speech and the client can then starts the next Dialogflow request.",
          readOnly = true,
          type = "boolean",
        },
        text = {
          description = "Required. A collection of text responses.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata = {
      description = "Metadata returned for the Environments.RunContinuousTest long running operation.",
      id = "GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata",
      properties = {
        errors = {
          description = "The test errors.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse = {
      description = "The response message for Environments.RunContinuousTest.",
      id = "GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse",
      properties = {
        continuousTestResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1ContinuousTestResult",
          description = "The result for a continuous test run.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata = {
      description = "Metadata returned for the TestCases.RunTestCase long running operation. This message currently has no fields.",
      id = "GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1RunTestCaseResponse = {
      description = "The response message for TestCases.RunTestCase.",
      id = "GoogleCloudDialogflowCxV3beta1RunTestCaseResponse",
      properties = {
        result = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestCaseResult",
          description = "The result.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1SessionInfo = {
      description = "Represents session information communicated to and from the webhook.",
      id = "GoogleCloudDialogflowCxV3beta1SessionInfo",
      properties = {
        parameters = {
          additionalProperties = {
            type = "any",
          },
          description = "Optional for WebhookRequest. Optional for WebhookResponse. All parameters collected from forms and intents during the session. Parameters can be created, updated, or removed by the webhook. To remove a parameter from the session, the webhook should explicitly set the parameter value to null in WebhookResponse. The map is keyed by parameters' display names.",
          type = "object",
        },
        session = {
          description = "Always present for WebhookRequest. Ignored for WebhookResponse. The unique identifier of the session. This field can be used by the webhook to identify a session. Format: `projects//locations//agents//sessions/` or `projects//locations//agents//environments//sessions/` if environment is specified.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TestCase = {
      description = "Represents a test case.",
      id = "GoogleCloudDialogflowCxV3beta1TestCase",
      properties = {
        creationTime = {
          description = "Output only. When the test was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. The human-readable name of the test case, unique within the agent. Limit of 200 characters.",
          type = "string",
        },
        lastTestResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestCaseResult",
          description = "The latest test result.",
        },
        name = {
          description = "The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.",
          type = "string",
        },
        notes = {
          description = "Additional freeform notes about the test case. Limit of 400 characters.",
          type = "string",
        },
        tags = {
          description = "Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with \"#\" and has a limit of 30 characters.",
          items = {
            type = "string",
          },
          type = "array",
        },
        testCaseConversationTurns = {
          description = "The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1ConversationTurn",
          },
          type = "array",
        },
        testConfig = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestConfig",
          description = "Config for the test case.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TestCaseError = {
      description = "Error info for importing a test.",
      id = "GoogleCloudDialogflowCxV3beta1TestCaseError",
      properties = {
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status associated with the test case.",
        },
        testCase = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1TestCase",
          description = "The test case.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TestCaseResult = {
      description = "Represents a result from running a test case in an agent environment.",
      id = "GoogleCloudDialogflowCxV3beta1TestCaseResult",
      properties = {
        conversationTurns = {
          description = "The conversation turns uttered during the test case replay in chronological order.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1ConversationTurn",
          },
          type = "array",
        },
        environment = {
          description = "Environment where the test was run. If not set, it indicates the draft environment.",
          type = "string",
        },
        name = {
          description = "The resource name for the test case result. Format: `projects//locations//agents//testCases/ /results/`.",
          type = "string",
        },
        testResult = {
          description = "Whether the test case passed in the agent environment.",
          enum = {
            "TEST_RESULT_UNSPECIFIED",
            "PASSED",
            "FAILED",
          },
          enumDescriptions = {
            "Not specified. Should never be used.",
            "The test passed.",
            "The test did not pass.",
          },
          type = "string",
        },
        testTime = {
          description = "The time that the test was run.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TestConfig = {
      description = "Represents configurations for a test case.",
      id = "GoogleCloudDialogflowCxV3beta1TestConfig",
      properties = {
        flow = {
          description = "Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.",
          type = "string",
        },
        page = {
          description = "The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.",
          type = "string",
        },
        trackingParameters = {
          description = "Session parameters to be compared when calculating differences.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TestError = {
      description = "Error info for running a test.",
      id = "GoogleCloudDialogflowCxV3beta1TestError",
      properties = {
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The status associated with the test.",
        },
        testCase = {
          description = "The test case resource name.",
          type = "string",
        },
        testTime = {
          description = "The timestamp when the test was completed.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TestRunDifference = {
      description = "The description of differences between original and replayed agent output.",
      id = "GoogleCloudDialogflowCxV3beta1TestRunDifference",
      properties = {
        description = {
          description = "A description of the diff, showing the actual output vs expected output.",
          type = "string",
        },
        type = {
          description = "The type of diff.",
          enum = {
            "DIFF_TYPE_UNSPECIFIED",
            "INTENT",
            "PAGE",
            "PARAMETERS",
            "UTTERANCE",
          },
          enumDescriptions = {
            "Should never be used.",
            "The intent.",
            "The page.",
            "The parameters.",
            "The message utterance.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TextInput = {
      description = "Represents the natural language text to be processed.",
      id = "GoogleCloudDialogflowCxV3beta1TextInput",
      properties = {
        text = {
          description = "Required. The UTF-8 encoded natural language text to be processed. Text length must not exceed 256 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TransitionRoute = {
      description = "A transition route specifies a intent that can be matched and/or a data condition that can be evaluated during a session. When a specified transition is matched, the following actions are taken in order: * If there is a `trigger_fulfillment` associated with the transition, it will be called. * If there is a `target_page` associated with the transition, the session will transition into the specified page. * If there is a `target_flow` associated with the transition, the session will transition into the specified flow.",
      id = "GoogleCloudDialogflowCxV3beta1TransitionRoute",
      properties = {
        condition = {
          description = "The condition to evaluate against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition). At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.",
          type = "string",
        },
        intent = {
          description = "The unique identifier of an Intent. Format: `projects//locations//agents//intents/`. Indicates that the transition can only happen when the given intent is matched. At least one of `intent` or `condition` must be specified. When both `intent` and `condition` are specified, the transition can only happen when both are fulfilled.",
          type = "string",
        },
        name = {
          description = "Output only. The unique identifier of this transition route.",
          readOnly = true,
          type = "string",
        },
        targetFlow = {
          description = "The target flow to transition to. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
        targetPage = {
          description = "The target page to transition to. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
        triggerFulfillment = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1Fulfillment",
          description = "The fulfillment to call when the condition is satisfied. At least one of `trigger_fulfillment` and `target` must be specified. When both are defined, `trigger_fulfillment` is executed first.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1TurnSignals = {
      description = "Collection of all signals that were extracted for a single turn of the conversation.",
      id = "GoogleCloudDialogflowCxV3beta1TurnSignals",
      properties = {
        agentEscalated = {
          description = "Whether agent responded with LiveAgentHandoff fulfillment.",
          type = "boolean",
        },
        dtmfUsed = {
          description = "Whether user was using DTMF input.",
          type = "boolean",
        },
        failureReasons = {
          description = "Failure reasons of the turn.",
          items = {
            enum = {
              "FAILURE_REASON_UNSPECIFIED",
              "FAILED_INTENT",
              "FAILED_WEBHOOK",
            },
            enumDescriptions = {
              "Failure reason is not assigned.",
              "Whether NLU failed to recognize user intent.",
              "Whether webhook failed during the turn.",
            },
            type = "string",
          },
          type = "array",
        },
        noMatch = {
          description = "Whether NLU predicted NO_MATCH.",
          type = "boolean",
        },
        noUserInput = {
          description = "Whether user provided no input.",
          type = "boolean",
        },
        reachedEndPage = {
          description = "Whether turn resulted in End Session page.",
          type = "boolean",
        },
        userEscalated = {
          description = "Whether user was specifically asking for a live agent.",
          type = "boolean",
        },
        webhookStatuses = {
          description = "Human-readable statuses of the webhooks triggered during this turn.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata = {
      description = "Metadata for UpdateDocument operation.",
      id = "GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1Webhook = {
      description = "Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.",
      id = "GoogleCloudDialogflowCxV3beta1Webhook",
      properties = {
        disabled = {
          description = "Indicates whether the webhook is disabled.",
          type = "boolean",
        },
        displayName = {
          description = "Required. The human-readable name of the webhook, unique within the agent.",
          type = "string",
        },
        genericWebService = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1WebhookGenericWebService",
          description = "Configuration for a generic web service.",
        },
        name = {
          description = "The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.",
          type = "string",
        },
        serviceDirectory = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig",
          description = "Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.",
        },
        timeout = {
          description = "Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookGenericWebService = {
      description = "Represents configuration for a generic web service.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookGenericWebService",
      properties = {
        allowedCaCerts = {
          description = "Optional. Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. This overrides the default SSL trust store. If this is empty or unspecified, Dialogflow will use Google's default trust store to verify certificates. N.B. Make sure the HTTPS server certificates are signed with \"subject alt name\". For instance a certificate can be self-signed using the following command, ``` openssl x509 -req -days 200 -in example.com.csr \\ -signkey example.com.key \\ -out example.com.crt \\ -extfile <(printf \"\\nsubjectAltName='DNS:www.example.com'\") ```",
          items = {
            format = "byte",
            type = "string",
          },
          type = "array",
        },
        password = {
          description = "The password for HTTP Basic authentication.",
          type = "string",
        },
        requestHeaders = {
          additionalProperties = {
            type = "string",
          },
          description = "The HTTP request headers to send together with webhook requests.",
          type = "object",
        },
        uri = {
          description = "Required. The webhook URI for receiving POST requests. It must use https protocol.",
          type = "string",
        },
        username = {
          description = "The user name for HTTP Basic authentication.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookRequest = {
      description = "The request message for a webhook call. The request is sent as a JSON object and the field names will be presented in camel cases. You may see undocumented fields in an actual request. These fields are used internally by Dialogflow and should be ignored.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookRequest",
      properties = {
        detectIntentResponseId = {
          description = "Always present. The unique identifier of the DetectIntentResponse that will be returned to the API caller.",
          type = "string",
        },
        fulfillmentInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo",
          description = "Always present. Information about the fulfillment that triggered this webhook call.",
        },
        intentInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo",
          description = "Information about the last matched intent.",
        },
        languageCode = {
          description = "The language code specified in the original request.",
          type = "string",
        },
        messages = {
          description = "The list of rich message responses to present to the user. Webhook can choose to append or replace this list in WebhookResponse.fulfillment_response;",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessage",
          },
          type = "array",
        },
        pageInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1PageInfo",
          description = "Information about page status.",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Custom data set in QueryParameters.payload.",
          type = "object",
        },
        sentimentAnalysisResult = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult",
          description = "The sentiment analysis result of the current user request. The field is filled when sentiment analysis is configured to be enabled for the request.",
        },
        sessionInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1SessionInfo",
          description = "Information about session status.",
        },
        text = {
          description = "If natural language text was provided as input, this field will contain a copy of the text.",
          type = "string",
        },
        transcript = {
          description = "If natural language speech audio was provided as input, this field will contain the transcript for the audio.",
          type = "string",
        },
        triggerEvent = {
          description = "If an event was provided as input, this field will contain the name of the event.",
          type = "string",
        },
        triggerIntent = {
          description = "If an intent was provided as input, this field will contain a copy of the intent identifier. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo = {
      description = "Represents fulfillment information communicated to the webhook.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo",
      properties = {
        tag = {
          description = "Always present. The value of the Fulfillment.tag field will be populated in this field by Dialogflow when the associated webhook is called. The tag is typically used by the webhook service to identify which fulfillment is being called, but it could be used for other purposes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo = {
      description = "Represents intent information communicated to the webhook.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo",
      properties = {
        confidence = {
          description = "The confidence of the matched intent. Values range from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        displayName = {
          description = "Always present. The display name of the last matched intent.",
          type = "string",
        },
        lastMatchedIntent = {
          description = "Always present. The unique identifier of the last matched intent. Format: `projects//locations//agents//intents/`.",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue",
          },
          description = "Parameters identified as a result of intent matching. This is a map of the name of the identified parameter to the value of the parameter identified from the user's utterance. All parameters defined in the matched intent that are identified will be surfaced here.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue = {
      description = "Represents a value for an intent parameter.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue",
      properties = {
        originalValue = {
          description = "Always present. Original text value extracted from user utterance.",
          type = "string",
        },
        resolvedValue = {
          description = "Always present. Structured value for the parameter extracted from user utterance.",
          type = "any",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult = {
      description = "Represents the result of sentiment analysis.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult",
      properties = {
        magnitude = {
          description = "A non-negative number in the [0, +inf) range, which represents the absolute magnitude of sentiment, regardless of score (positive or negative).",
          format = "float",
          type = "number",
        },
        score = {
          description = "Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookResponse = {
      description = "The response message for a webhook call.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookResponse",
      properties = {
        fulfillmentResponse = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse",
          description = "The fulfillment response to send to the user. This field can be omitted by the webhook if it does not intend to send any response to the user.",
        },
        pageInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1PageInfo",
          description = "Information about page status. This field can be omitted by the webhook if it does not intend to modify page status.",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Value to append directly to QueryResult.webhook_payloads.",
          type = "object",
        },
        sessionInfo = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1SessionInfo",
          description = "Information about session status. This field can be omitted by the webhook if it does not intend to modify session status.",
        },
        targetFlow = {
          description = "The target flow to transition to. Format: `projects//locations//agents//flows/`.",
          type = "string",
        },
        targetPage = {
          description = "The target page to transition to. Format: `projects//locations//agents//flows//pages/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse = {
      description = "Represents a fulfillment response to the user.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse",
      properties = {
        mergeBehavior = {
          description = "Merge behavior for `messages`.",
          enum = {
            "MERGE_BEHAVIOR_UNSPECIFIED",
            "APPEND",
            "REPLACE",
          },
          enumDescriptions = {
            "Not specified. `APPEND` will be used.",
            "`messages` will be appended to the list of messages waiting to be sent to the user.",
            "`messages` will replace the list of messages waiting to be sent to the user.",
          },
          type = "string",
        },
        messages = {
          description = "The list of rich message responses to present to the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowCxV3beta1ResponseMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig = {
      description = "Represents configuration for a [Service Directory](https://cloud.google.com/service-directory) service.",
      id = "GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig",
      properties = {
        genericWebService = {
          ["$ref"] = "GoogleCloudDialogflowCxV3beta1WebhookGenericWebService",
          description = "Generic Service configuration of this webhook.",
        },
        service = {
          description = "Required. The name of [Service Directory](https://cloud.google.com/service-directory) service. Format: `projects//locations//namespaces//services/`. `Location ID` of the service directory must be the same as the location of the agent.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2AnnotatedMessagePart = {
      description = "Represents a part of a message possibly annotated with an entity. The part can be an entity or purely a part of the message between two entities or message start/end.",
      id = "GoogleCloudDialogflowV2AnnotatedMessagePart",
      properties = {
        entityType = {
          description = "The [Dialogflow system entity type](https://cloud.google.com/dialogflow/docs/reference/system-entities) of this message part. If this is empty, Dialogflow could not annotate the phrase part with a system entity.",
          type = "string",
        },
        formattedValue = {
          description = "The [Dialogflow system entity formatted value ](https://cloud.google.com/dialogflow/docs/reference/system-entities) of this message part. For example for a system entity of type `@sys.unit-currency`, this may contain: { \"amount\": 5, \"currency\": \"USD\" } ",
          type = "any",
        },
        text = {
          description = "A part of a message possibly annotated with an entity.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ArticleAnswer = {
      description = "Represents article answer.",
      id = "GoogleCloudDialogflowV2ArticleAnswer",
      properties = {
        answerRecord = {
          description = "The name of answer record, in the format of \"projects//locations//answerRecords/\"",
          type = "string",
        },
        confidence = {
          description = "Article match confidence. The system's confidence score that this article is a good match for this conversation, as a value from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "A map that contains metadata about the answer and the document from which it originates.",
          type = "object",
        },
        snippets = {
          description = "Article snippets.",
          items = {
            type = "string",
          },
          type = "array",
        },
        title = {
          description = "The article title.",
          type = "string",
        },
        uri = {
          description = "The article URI.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ArticleSuggestionModelMetadata = {
      description = "Metadata for article suggestion models.",
      id = "GoogleCloudDialogflowV2ArticleSuggestionModelMetadata",
      properties = {
        trainingModelType = {
          description = "Optional. Type of the article suggestion model. If not provided, model_type is used.",
          enum = {
            "MODEL_TYPE_UNSPECIFIED",
            "SMART_REPLY_DUAL_ENCODER_MODEL",
            "SMART_REPLY_BERT_MODEL",
          },
          enumDescriptions = {
            "ModelType unspecified.",
            "ModelType smart reply dual encoder model.",
            "ModelType smart reply bert model.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse = {
      description = "The response message for EntityTypes.BatchUpdateEntityTypes.",
      id = "GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse",
      properties = {
        entityTypes = {
          description = "The collection of updated or created entity types.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2EntityType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2BatchUpdateIntentsResponse = {
      description = "The response message for Intents.BatchUpdateIntents.",
      id = "GoogleCloudDialogflowV2BatchUpdateIntentsResponse",
      properties = {
        intents = {
          description = "The collection of updated or created intents.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2Intent",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata = {
      description = "Metadata for a ConversationProfile.ClearSuggestionFeatureConfig operation.",
      id = "GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata",
      properties = {
        conversationProfile = {
          description = "The resource name of the conversation profile. Format: `projects//locations//conversationProfiles/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp whe the request was created. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
        participantRole = {
          description = "Required. The participant role to remove the suggestion feature config. Only HUMAN_AGENT or END_USER can be used.",
          enum = {
            "ROLE_UNSPECIFIED",
            "HUMAN_AGENT",
            "AUTOMATED_AGENT",
            "END_USER",
          },
          enumDescriptions = {
            "Participant role not set.",
            "Participant is a human agent.",
            "Participant is an automated agent, such as a Dialogflow agent.",
            "Participant is an end user that has called or chatted with Dialogflow services.",
          },
          type = "string",
        },
        suggestionFeatureType = {
          description = "Required. The type of the suggestion feature to remove.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ARTICLE_SUGGESTION",
            "FAQ",
            "SMART_REPLY",
          },
          enumDescriptions = {
            "Unspecified feature type.",
            "Run article suggestion model for chat.",
            "Run FAQ model for chat.",
            "Run smart reply model for chat.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2Context = {
      description = "Dialogflow contexts are similar to natural language context. If a person says to you \"they are orange\", you need context in order to understand what \"they\" is referring to. Similarly, for Dialogflow to handle an end-user expression like that, it needs to be provided with context in order to correctly match an intent. Using contexts, you can control the flow of a conversation. You can configure contexts for an intent by setting input and output contexts, which are identified by string names. When an intent is matched, any configured output contexts for that intent become active. While any contexts are active, Dialogflow is more likely to match intents that are configured with input contexts that correspond to the currently active contexts. For more information about context, see the [Contexts guide](https://cloud.google.com/dialogflow/docs/contexts-overview).",
      id = "GoogleCloudDialogflowV2Context",
      properties = {
        lifespanCount = {
          description = "Optional. The number of conversational query requests after which the context expires. The default is `0`. If set to `0`, the context expires immediately. Contexts expire automatically after 20 minutes if there are no matching queries.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Required. The unique identifier of the context. Format: `projects//agent/sessions//contexts/`, or `projects//agent/environments//users//sessions//contexts/`. The `Context ID` is always converted to lowercase, may only contain characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. The following context names are reserved for internal use by Dialogflow. You should not use these contexts or create contexts with these names: * `__system_counters__` * `*_id_dialog_context` * `*_dialog_params_size`",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Optional. The collection of parameters associated with this context. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value: parameter name - MapValue type: - If parameter's entity type is a composite entity: map - Else: depending on parameter value type, could be one of string, number, boolean, null, list or map - MapValue value: - If parameter's entity type is a composite entity: map from composite entity property names to property values - Else: parameter value",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ConversationEvent = {
      description = "Represents a notification sent to Pub/Sub subscribers for conversation lifecycle events.",
      id = "GoogleCloudDialogflowV2ConversationEvent",
      properties = {
        conversation = {
          description = "The unique identifier of the conversation this notification refers to. Format: `projects//conversations/`.",
          type = "string",
        },
        errorStatus = {
          ["$ref"] = "GoogleRpcStatus",
          description = "More detailed information about an error. Only set for type UNRECOVERABLE_ERROR_IN_PHONE_CALL.",
        },
        newMessagePayload = {
          ["$ref"] = "GoogleCloudDialogflowV2Message",
          description = "Payload of NEW_MESSAGE event.",
        },
        type = {
          description = "The type of the event that this notification refers to.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CONVERSATION_STARTED",
            "CONVERSATION_FINISHED",
            "HUMAN_INTERVENTION_NEEDED",
            "NEW_MESSAGE",
            "UNRECOVERABLE_ERROR",
          },
          enumDescriptions = {
            "Type not set.",
            "A new conversation has been opened. This is fired when a telephone call is answered, or a conversation is created via the API.",
            "An existing conversation has closed. This is fired when a telephone call is terminated, or a conversation is closed via the API.",
            "An existing conversation has received notification from Dialogflow that human intervention is required.",
            "An existing conversation has received a new message, either from API or telephony. It is configured in ConversationProfile.new_message_event_notification_config",
            "Unrecoverable error during a telephone call. In general non-recoverable errors only occur if something was misconfigured in the ConversationProfile corresponding to the call. After a non-recoverable error, Dialogflow may stop responding. We don't fire this event: * in an API call because we can directly return the error, or, * when we can recover from an error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ConversationModel = {
      description = "Represents a conversation model.",
      id = "GoogleCloudDialogflowV2ConversationModel",
      properties = {
        articleSuggestionModelMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV2ArticleSuggestionModelMetadata",
          description = "Metadata for article suggestion models.",
        },
        createTime = {
          description = "Output only. Creation time of this model.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        datasets = {
          description = "Required. Datasets used to create model.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2InputDataset",
          },
          type = "array",
        },
        displayName = {
          description = "Required. The display name of the model. At most 64 bytes long.",
          type = "string",
        },
        languageCode = {
          description = "Language code for the conversation model. If not specified, the language is en-US. Language at ConversationModel should be set for all non en-us languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: \"en-US\".",
          type = "string",
        },
        name = {
          description = "ConversationModel resource name. Format: `projects//conversationModels/`",
          type = "string",
        },
        smartReplyModelMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV2SmartReplyModelMetadata",
          description = "Metadata for smart reply models.",
        },
        state = {
          description = "Output only. State of the model. A model can only serve prediction requests after it gets deployed.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "UNDEPLOYED",
            "DEPLOYING",
            "DEPLOYED",
            "UNDEPLOYING",
            "DELETING",
            "FAILED",
            "PENDING",
          },
          enumDescriptions = {
            "Should not be used, an un-set enum has this value by default.",
            "Model being created.",
            "Model is not deployed but ready to deploy.",
            "Model is deploying.",
            "Model is deployed and ready to use.",
            "Model is undeploying.",
            "Model is deleting.",
            "Model is in error state. Not ready to deploy and use.",
            "Model is being created but the training has not started, The model may remain in this state until there is enough capacity to start training.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2CreateConversationDatasetOperationMetadata = {
      description = "Metadata for ConversationDatasets.",
      id = "GoogleCloudDialogflowV2CreateConversationDatasetOperationMetadata",
      properties = {
        conversationDataset = {
          description = "The resource name of the conversation dataset that will be created. Format: `projects//locations//conversationDatasets/`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata = {
      description = "Metadata for a ConversationModels.CreateConversationModelEvaluation operation.",
      id = "GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata",
      properties = {
        conversationModel = {
          description = "The resource name of the conversation model. Format: `projects//locations//conversationModels/`",
          type = "string",
        },
        conversationModelEvaluation = {
          description = "The resource name of the conversation model. Format: `projects//locations//conversationModels//evaluations/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp when the request to create conversation model was submitted. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "State of CreateConversationModel operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "INITIALIZING",
            "RUNNING",
            "CANCELLED",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "Operation status not specified.",
            "The operation is being prepared.",
            "The operation is running.",
            "The operation is cancelled.",
            "The operation has succeeded.",
            "The operation has failed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2CreateConversationModelOperationMetadata = {
      description = "Metadata for a ConversationModels.CreateConversationModel operation.",
      id = "GoogleCloudDialogflowV2CreateConversationModelOperationMetadata",
      properties = {
        conversationModel = {
          description = "The resource name of the conversation model. Format: `projects//conversationModels/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp when the request to create conversation model is submitted. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "State of CreateConversationModel operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLED",
            "CANCELLING",
            "TRAINING",
          },
          enumDescriptions = {
            "Invalid.",
            "Request is submitted, but training has not started yet. The model may remain in this state until there is enough capacity to start training.",
            "The training has succeeded.",
            "The training has succeeded.",
            "The training has been cancelled.",
            "The training is in cancelling state.",
            "Custom model is training.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2DeleteConversationDatasetOperationMetadata = {
      description = "Metadata for ConversationDatasets.",
      id = "GoogleCloudDialogflowV2DeleteConversationDatasetOperationMetadata",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata = {
      description = "Metadata for a ConversationModels.DeleteConversationModel operation.",
      id = "GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata",
      properties = {
        conversationModel = {
          description = "The resource name of the conversation model. Format: `projects//conversationModels/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp when delete conversation model request was created. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2DeployConversationModelOperationMetadata = {
      description = "Metadata for a ConversationModels.DeployConversationModel operation.",
      id = "GoogleCloudDialogflowV2DeployConversationModelOperationMetadata",
      properties = {
        conversationModel = {
          description = "The resource name of the conversation model. Format: `projects//conversationModels/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp when request to deploy conversation model was submitted. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2EntityType = {
      description = "Each intent parameter has a type, called the entity type, which dictates exactly how data from an end-user expression is extracted. Dialogflow provides predefined system entities that can match many common types of data. For example, there are system entities for matching dates, times, colors, email addresses, and so on. You can also create your own custom entities for matching custom data. For example, you could define a vegetable entity that can match the types of vegetables available for purchase with a grocery store agent. For more information, see the [Entity guide](https://cloud.google.com/dialogflow/docs/entities-overview).",
      id = "GoogleCloudDialogflowV2EntityType",
      properties = {
        autoExpansionMode = {
          description = "Optional. Indicates whether the entity type can be automatically expanded.",
          enum = {
            "AUTO_EXPANSION_MODE_UNSPECIFIED",
            "AUTO_EXPANSION_MODE_DEFAULT",
          },
          enumDescriptions = {
            "Auto expansion disabled for the entity.",
            "Allows an agent to recognize values that have not been explicitly listed in the entity.",
          },
          type = "string",
        },
        displayName = {
          description = "Required. The name of the entity type.",
          type = "string",
        },
        enableFuzzyExtraction = {
          description = "Optional. Enables fuzzy entity extraction during classification.",
          type = "boolean",
        },
        entities = {
          description = "Optional. The collection of entity entries associated with the entity type.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2EntityTypeEntity",
          },
          type = "array",
        },
        kind = {
          description = "Required. Indicates the kind of entity type.",
          enum = {
            "KIND_UNSPECIFIED",
            "KIND_MAP",
            "KIND_LIST",
            "KIND_REGEXP",
          },
          enumDescriptions = {
            "Not specified. This value should be never used.",
            "Map entity types allow mapping of a group of synonyms to a reference value.",
            "List entity types contain a set of entries that do not map to reference values. However, list entity types can contain references to other entity types (with or without aliases).",
            "Regexp entity types allow to specify regular expressions in entries values.",
          },
          type = "string",
        },
        name = {
          description = "The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2EntityTypeEntity = {
      description = "An **entity entry** for an associated entity type.",
      id = "GoogleCloudDialogflowV2EntityTypeEntity",
      properties = {
        synonyms = {
          description = "Required. A collection of value synonyms. For example, if the entity type is *vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity types: * This collection must contain exactly one synonym equal to `value`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        value = {
          description = "Required. The primary value associated with this entity entry. For example, if the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP` entity types: * A reference value to be used in place of synonyms. For `KIND_LIST` entity types: * A string that can contain references to other entity types (with or without aliases).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2EventInput = {
      description = "Events allow for matching intents by event name instead of the natural language input. For instance, input `` can trigger a personalized welcome response. The parameter `name` may be used by the agent in the response: `\"Hello #welcome_event.name! What can I do for you today?\"`.",
      id = "GoogleCloudDialogflowV2EventInput",
      properties = {
        languageCode = {
          description = "Required. The language of this query. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language. This field is ignored when used in the context of a WebhookResponse.followup_event_input field, because the language was already defined in the originating detect intent request.",
          type = "string",
        },
        name = {
          description = "Required. The unique identifier of the event.",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The collection of parameters associated with the event. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value: parameter name - MapValue type: - If parameter's entity type is a composite entity: map - Else: depending on parameter value type, could be one of string, number, boolean, null, list or map - MapValue value: - If parameter's entity type is a composite entity: map from composite entity property names to property values - Else: parameter value",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ExportAgentResponse = {
      description = "The response message for Agents.ExportAgent.",
      id = "GoogleCloudDialogflowV2ExportAgentResponse",
      properties = {
        agentContent = {
          description = "Zip compressed raw byte content for agent.",
          format = "byte",
          type = "string",
        },
        agentUri = {
          description = "The URI to a file containing the exported agent. This field is populated only if `agent_uri` is specified in `ExportAgentRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ExportOperationMetadata = {
      description = "Metadata related to the Export Data Operations (e.g. ExportDocument).",
      id = "GoogleCloudDialogflowV2ExportOperationMetadata",
      properties = {
        exportedGcsDestination = {
          ["$ref"] = "GoogleCloudDialogflowV2GcsDestination",
          description = "Cloud Storage file path of the exported data.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2FaqAnswer = {
      description = "Represents answer from \"frequently asked questions\".",
      id = "GoogleCloudDialogflowV2FaqAnswer",
      properties = {
        answer = {
          description = "The piece of text from the `source` knowledge base document.",
          type = "string",
        },
        answerRecord = {
          description = "The name of answer record, in the format of \"projects//locations//answerRecords/\"",
          type = "string",
        },
        confidence = {
          description = "The system's confidence score that this Knowledge answer is a good match for this conversational query, range from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "A map that contains metadata about the answer and the document from which it originates.",
          type = "object",
        },
        question = {
          description = "The corresponding FAQ question.",
          type = "string",
        },
        source = {
          description = "Indicates which Knowledge Document this answer was extracted from. Format: `projects//locations//agent/knowledgeBases//documents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2GcsDestination = {
      description = "Google Cloud Storage location for the output.",
      id = "GoogleCloudDialogflowV2GcsDestination",
      properties = {
        uri = {
          description = "The Google Cloud Storage URIs for the output. A URI is of the form: gs://bucket/object-prefix-or-name Whether a prefix or name is used depends on the use case. The requesting user must have \"write-permission\" to the bucket.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2HumanAgentAssistantEvent = {
      description = "Represents a notification sent to Cloud Pub/Sub subscribers for human agent assistant events in a specific conversation.",
      id = "GoogleCloudDialogflowV2HumanAgentAssistantEvent",
      properties = {
        conversation = {
          description = "The conversation this notification refers to. Format: `projects//conversations/`.",
          type = "string",
        },
        participant = {
          description = "The participant that the suggestion is compiled for. Format: `projects//conversations//participants/`. It will not be set in legacy workflow.",
          type = "string",
        },
        suggestionResults = {
          description = "The suggestion results payload that this notification refers to.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2SuggestionResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ImportConversationDataOperationMetadata = {
      description = "Metadata for a ConversationDatasets.ImportConversationData operation.",
      id = "GoogleCloudDialogflowV2ImportConversationDataOperationMetadata",
      properties = {
        conversationDataset = {
          description = "The resource name of the imported conversation dataset. Format: `projects//locations//conversationDatasets/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp when import conversation data request was created. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
        partialFailures = {
          description = "Partial failures are failures that don't fail the whole long running operation, e.g. single files that couldn't be read.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ImportConversationDataOperationResponse = {
      description = "Response used for ConversationDatasets.ImportConversationData long running operation.",
      id = "GoogleCloudDialogflowV2ImportConversationDataOperationResponse",
      properties = {
        conversationDataset = {
          description = "The resource name of the imported conversation dataset. Format: `projects//locations//conversationDatasets/`",
          type = "string",
        },
        importCount = {
          description = "Number of conversations imported successfully.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2ImportDocumentsResponse = {
      description = "Response message for Documents.ImportDocuments.",
      id = "GoogleCloudDialogflowV2ImportDocumentsResponse",
      properties = {
        warnings = {
          description = "Includes details about skipped documents or any other warnings.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2InputDataset = {
      description = "InputDataset used to create model or do evaluation. NextID:5",
      id = "GoogleCloudDialogflowV2InputDataset",
      properties = {
        dataset = {
          description = "Required. ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2Intent = {
      description = "An intent categorizes an end-user's intention for one conversation turn. For each agent, you define many intents, where your combined intents can handle a complete conversation. When an end-user writes or says something, referred to as an end-user expression or end-user input, Dialogflow matches the end-user input to the best intent in your agent. Matching an intent is also known as intent classification. For more information, see the [intent guide](https://cloud.google.com/dialogflow/docs/intents-overview).",
      id = "GoogleCloudDialogflowV2Intent",
      properties = {
        action = {
          description = "Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.",
          type = "string",
        },
        defaultResponsePlatforms = {
          description = "Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).",
          items = {
            enum = {
              "PLATFORM_UNSPECIFIED",
              "FACEBOOK",
              "SLACK",
              "TELEGRAM",
              "KIK",
              "SKYPE",
              "LINE",
              "VIBER",
              "ACTIONS_ON_GOOGLE",
              "GOOGLE_HANGOUTS",
            },
            enumDescriptions = {
              "Default platform.",
              "Facebook.",
              "Slack.",
              "Telegram.",
              "Kik.",
              "Skype.",
              "Line.",
              "Viber.",
              "Google Assistant See [Dialogflow webhook format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)",
              "Google Hangouts.",
            },
            type = "string",
          },
          type = "array",
        },
        displayName = {
          description = "Required. The name of this intent.",
          type = "string",
        },
        endInteraction = {
          description = "Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.",
          type = "boolean",
        },
        events = {
          description = "Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.",
          items = {
            type = "string",
          },
          type = "array",
        },
        followupIntentInfo = {
          description = "Output only. Read-only. Information about all followup intents that have this intent as a direct or indirect parent. We populate this field only in the output.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentFollowupIntentInfo",
          },
          readOnly = true,
          type = "array",
        },
        inputContextNames = {
          description = "Optional. The list of context names required for this intent to be triggered. Format: `projects//agent/sessions/-/contexts/`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        isFallback = {
          description = "Optional. Indicates whether this is a fallback intent.",
          type = "boolean",
        },
        liveAgentHandoff = {
          description = "Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.",
          type = "boolean",
        },
        messages = {
          description = "Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessage",
          },
          type = "array",
        },
        mlDisabled = {
          description = "Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.",
          type = "boolean",
        },
        name = {
          description = "Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/intents/`.",
          type = "string",
        },
        outputContexts = {
          description = "Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2Context",
          },
          type = "array",
        },
        parameters = {
          description = "Optional. The collection of parameters associated with the intent.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentParameter",
          },
          type = "array",
        },
        parentFollowupIntentName = {
          description = "Read-only after creation. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.",
          type = "string",
        },
        priority = {
          description = "Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.",
          format = "int32",
          type = "integer",
        },
        resetContexts = {
          description = "Optional. Indicates whether to delete all contexts in the current session when this intent is matched.",
          type = "boolean",
        },
        rootFollowupIntentName = {
          description = "Output only. Read-only. The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. We populate this field only in the output. Format: `projects//agent/intents/`.",
          readOnly = true,
          type = "string",
        },
        trainingPhrases = {
          description = "Optional. The collection of examples that the agent is trained on.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentTrainingPhrase",
          },
          type = "array",
        },
        webhookState = {
          description = "Optional. Indicates whether webhooks are enabled for the intent.",
          enum = {
            "WEBHOOK_STATE_UNSPECIFIED",
            "WEBHOOK_STATE_ENABLED",
            "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING",
          },
          enumDescriptions = {
            "Webhook is disabled in the agent and in the intent.",
            "Webhook is enabled in the agent and in the intent.",
            "Webhook is enabled in the agent and in the intent. Also, each slot filling prompt is forwarded to the webhook.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentFollowupIntentInfo = {
      description = "Represents a single followup intent in the chain.",
      id = "GoogleCloudDialogflowV2IntentFollowupIntentInfo",
      properties = {
        followupIntentName = {
          description = "The unique identifier of the followup intent. Format: `projects//agent/intents/`.",
          type = "string",
        },
        parentFollowupIntentName = {
          description = "The unique identifier of the followup intent's parent. Format: `projects//agent/intents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessage = {
      description = "A rich response message. Corresponds to the intent `Response` field in the Dialogflow console. For more information, see [Rich response messages](https://cloud.google.com/dialogflow/docs/intents-rich-messages).",
      id = "GoogleCloudDialogflowV2IntentMessage",
      properties = {
        basicCard = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageBasicCard",
          description = "The basic card response for Actions on Google.",
        },
        browseCarouselCard = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard",
          description = "Browse carousel card for Actions on Google.",
        },
        card = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageCard",
          description = "The card response.",
        },
        carouselSelect = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageCarouselSelect",
          description = "The carousel card response for Actions on Google.",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageImage",
          description = "The image response.",
        },
        linkOutSuggestion = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion",
          description = "The link out suggestion chip for Actions on Google.",
        },
        listSelect = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageListSelect",
          description = "The list card response for Actions on Google.",
        },
        mediaContent = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageMediaContent",
          description = "The media content card for Actions on Google.",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "A custom platform-specific response.",
          type = "object",
        },
        platform = {
          description = "Optional. The platform that this message is intended for.",
          enum = {
            "PLATFORM_UNSPECIFIED",
            "FACEBOOK",
            "SLACK",
            "TELEGRAM",
            "KIK",
            "SKYPE",
            "LINE",
            "VIBER",
            "ACTIONS_ON_GOOGLE",
            "GOOGLE_HANGOUTS",
          },
          enumDescriptions = {
            "Default platform.",
            "Facebook.",
            "Slack.",
            "Telegram.",
            "Kik.",
            "Skype.",
            "Line.",
            "Viber.",
            "Google Assistant See [Dialogflow webhook format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)",
            "Google Hangouts.",
          },
          type = "string",
        },
        quickReplies = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageQuickReplies",
          description = "The quick replies response.",
        },
        simpleResponses = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageSimpleResponses",
          description = "The voice and text-only responses for Actions on Google.",
        },
        suggestions = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageSuggestions",
          description = "The suggestion chips for Actions on Google.",
        },
        tableCard = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageTableCard",
          description = "Table card for Actions on Google.",
        },
        text = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageText",
          description = "The text response.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageBasicCard = {
      description = "The basic card message. Useful for displaying information.",
      id = "GoogleCloudDialogflowV2IntentMessageBasicCard",
      properties = {
        buttons = {
          description = "Optional. The collection of card buttons.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageBasicCardButton",
          },
          type = "array",
        },
        formattedText = {
          description = "Required, unless image is present. The body text of the card.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageImage",
          description = "Optional. The image for the card.",
        },
        subtitle = {
          description = "Optional. The subtitle of the card.",
          type = "string",
        },
        title = {
          description = "Optional. The title of the card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageBasicCardButton = {
      description = "The button object that appears at the bottom of a card.",
      id = "GoogleCloudDialogflowV2IntentMessageBasicCardButton",
      properties = {
        openUriAction = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction",
          description = "Required. Action to take when a user taps on the button.",
        },
        title = {
          description = "Required. The title of the button.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction = {
      description = "Opens the given URI.",
      id = "GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction",
      properties = {
        uri = {
          description = "Required. The HTTP or HTTPS scheme URI.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard = {
      description = "Browse Carousel Card for Actions on Google. https://developers.google.com/actions/assistant/responses#browsing_carousel",
      id = "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard",
      properties = {
        imageDisplayOptions = {
          description = "Optional. Settings for displaying the image. Applies to every image in items.",
          enum = {
            "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED",
            "GRAY",
            "WHITE",
            "CROPPED",
            "BLURRED_BACKGROUND",
          },
          enumDescriptions = {
            "Fill the gaps between the image and the image container with gray bars.",
            "Fill the gaps between the image and the image container with gray bars.",
            "Fill the gaps between the image and the image container with white bars.",
            "Image is scaled such that the image width and height match or exceed the container dimensions. This may crop the top and bottom of the image if the scaled image height is greater than the container height, or crop the left and right of the image if the scaled image width is greater than the container width. This is similar to \"Zoom Mode\" on a widescreen TV when playing a 4:3 video.",
            "Pad the gaps between image and image frame with a blurred copy of the same image.",
          },
          type = "string",
        },
        items = {
          description = "Required. List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem = {
      description = "Browsing carousel tile",
      id = "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem",
      properties = {
        description = {
          description = "Optional. Description of the carousel item. Maximum of four lines of text.",
          type = "string",
        },
        footer = {
          description = "Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageImage",
          description = "Optional. Hero image for the carousel item.",
        },
        openUriAction = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction",
          description = "Required. Action to present to the user.",
        },
        title = {
          description = "Required. Title of the carousel item. Maximum of two lines of text.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction = {
      description = "Actions on Google action to open a given url.",
      id = "GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction",
      properties = {
        url = {
          description = "Required. URL",
          type = "string",
        },
        urlTypeHint = {
          description = "Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.",
          enum = {
            "URL_TYPE_HINT_UNSPECIFIED",
            "AMP_ACTION",
            "AMP_CONTENT",
          },
          enumDescriptions = {
            "Unspecified",
            "Url would be an amp action",
            "URL that points directly to AMP content, or to a canonical URL which refers to AMP content via .",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageCard = {
      description = "The card response message.",
      id = "GoogleCloudDialogflowV2IntentMessageCard",
      properties = {
        buttons = {
          description = "Optional. The collection of card buttons.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageCardButton",
          },
          type = "array",
        },
        imageUri = {
          description = "Optional. The public URI to an image file for the card.",
          type = "string",
        },
        subtitle = {
          description = "Optional. The subtitle of the card.",
          type = "string",
        },
        title = {
          description = "Optional. The title of the card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageCardButton = {
      description = "Contains information about a button.",
      id = "GoogleCloudDialogflowV2IntentMessageCardButton",
      properties = {
        postback = {
          description = "Optional. The text to send back to the Dialogflow API or a URI to open.",
          type = "string",
        },
        text = {
          description = "Optional. The text to show on the button.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageCarouselSelect = {
      description = "The card for presenting a carousel of options to select from.",
      id = "GoogleCloudDialogflowV2IntentMessageCarouselSelect",
      properties = {
        items = {
          description = "Required. Carousel items.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageCarouselSelectItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageCarouselSelectItem = {
      description = "An item in the carousel.",
      id = "GoogleCloudDialogflowV2IntentMessageCarouselSelectItem",
      properties = {
        description = {
          description = "Optional. The body text of the card.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageImage",
          description = "Optional. The image to display.",
        },
        info = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageSelectItemInfo",
          description = "Required. Additional info about the option item.",
        },
        title = {
          description = "Required. Title of the carousel item.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageColumnProperties = {
      description = "Column properties for TableCard.",
      id = "GoogleCloudDialogflowV2IntentMessageColumnProperties",
      properties = {
        header = {
          description = "Required. Column heading.",
          type = "string",
        },
        horizontalAlignment = {
          description = "Optional. Defines text alignment for all cells in this column.",
          enum = {
            "HORIZONTAL_ALIGNMENT_UNSPECIFIED",
            "LEADING",
            "CENTER",
            "TRAILING",
          },
          enumDescriptions = {
            "Text is aligned to the leading edge of the column.",
            "Text is aligned to the leading edge of the column.",
            "Text is centered in the column.",
            "Text is aligned to the trailing edge of the column.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageImage = {
      description = "The image response message.",
      id = "GoogleCloudDialogflowV2IntentMessageImage",
      properties = {
        accessibilityText = {
          description = "Optional. A text description of the image to be used for accessibility, e.g., screen readers.",
          type = "string",
        },
        imageUri = {
          description = "Optional. The public URI to an image file.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion = {
      description = "The suggestion chip message that allows the user to jump out to the app or website associated with this agent.",
      id = "GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion",
      properties = {
        destinationName = {
          description = "Required. The name of the app or site this chip is linking to.",
          type = "string",
        },
        uri = {
          description = "Required. The URI of the app or site to open when the user taps the suggestion chip.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageListSelect = {
      description = "The card for presenting a list of options to select from.",
      id = "GoogleCloudDialogflowV2IntentMessageListSelect",
      properties = {
        items = {
          description = "Required. List items.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageListSelectItem",
          },
          type = "array",
        },
        subtitle = {
          description = "Optional. Subtitle of the list.",
          type = "string",
        },
        title = {
          description = "Optional. The overall title of the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageListSelectItem = {
      description = "An item in the list.",
      id = "GoogleCloudDialogflowV2IntentMessageListSelectItem",
      properties = {
        description = {
          description = "Optional. The main text describing the item.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageImage",
          description = "Optional. The image to display.",
        },
        info = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageSelectItemInfo",
          description = "Required. Additional information about this option.",
        },
        title = {
          description = "Required. The title of the list item.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageMediaContent = {
      description = "The media content card for Actions on Google.",
      id = "GoogleCloudDialogflowV2IntentMessageMediaContent",
      properties = {
        mediaObjects = {
          description = "Required. List of media objects.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject",
          },
          type = "array",
        },
        mediaType = {
          description = "Optional. What type of media is the content (ie \"audio\").",
          enum = {
            "RESPONSE_MEDIA_TYPE_UNSPECIFIED",
            "AUDIO",
          },
          enumDescriptions = {
            "Unspecified.",
            "Response media type is audio.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject = {
      description = "Response media object for media content card.",
      id = "GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject",
      properties = {
        contentUrl = {
          description = "Required. Url where the media is stored.",
          type = "string",
        },
        description = {
          description = "Optional. Description of media card.",
          type = "string",
        },
        icon = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageImage",
          description = "Optional. Icon to display above media content.",
        },
        largeImage = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageImage",
          description = "Optional. Image to display above media content.",
        },
        name = {
          description = "Required. Name of media card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageQuickReplies = {
      description = "The quick replies response message.",
      id = "GoogleCloudDialogflowV2IntentMessageQuickReplies",
      properties = {
        quickReplies = {
          description = "Optional. The collection of quick replies.",
          items = {
            type = "string",
          },
          type = "array",
        },
        title = {
          description = "Optional. The title of the collection of quick replies.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageSelectItemInfo = {
      description = "Additional info about the select item for when it is triggered in a dialog.",
      id = "GoogleCloudDialogflowV2IntentMessageSelectItemInfo",
      properties = {
        key = {
          description = "Required. A unique key that will be sent back to the agent if this response is given.",
          type = "string",
        },
        synonyms = {
          description = "Optional. A list of synonyms that can also be used to trigger this item in dialog.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageSimpleResponse = {
      description = "The simple response message containing speech or text.",
      id = "GoogleCloudDialogflowV2IntentMessageSimpleResponse",
      properties = {
        displayText = {
          description = "Optional. The text to display.",
          type = "string",
        },
        ssml = {
          description = "One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.",
          type = "string",
        },
        textToSpeech = {
          description = "One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageSimpleResponses = {
      description = "The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.",
      id = "GoogleCloudDialogflowV2IntentMessageSimpleResponses",
      properties = {
        simpleResponses = {
          description = "Required. The list of simple responses.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageSimpleResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageSuggestion = {
      description = "The suggestion chip message that the user can tap to quickly post a reply to the conversation.",
      id = "GoogleCloudDialogflowV2IntentMessageSuggestion",
      properties = {
        title = {
          description = "Required. The text shown the in the suggestion chip.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageSuggestions = {
      description = "The collection of suggestions.",
      id = "GoogleCloudDialogflowV2IntentMessageSuggestions",
      properties = {
        suggestions = {
          description = "Required. The list of suggested replies.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageSuggestion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageTableCard = {
      description = "Table card for Actions on Google.",
      id = "GoogleCloudDialogflowV2IntentMessageTableCard",
      properties = {
        buttons = {
          description = "Optional. List of buttons for the card.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageBasicCardButton",
          },
          type = "array",
        },
        columnProperties = {
          description = "Optional. Display properties for the columns in this table.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageColumnProperties",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2IntentMessageImage",
          description = "Optional. Image which should be displayed on the card.",
        },
        rows = {
          description = "Optional. Rows in this table of data.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageTableCardRow",
          },
          type = "array",
        },
        subtitle = {
          description = "Optional. Subtitle to the title.",
          type = "string",
        },
        title = {
          description = "Required. Title of the card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageTableCardCell = {
      description = "Cell of TableCardRow.",
      id = "GoogleCloudDialogflowV2IntentMessageTableCardCell",
      properties = {
        text = {
          description = "Required. Text in this cell.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageTableCardRow = {
      description = "Row of TableCard.",
      id = "GoogleCloudDialogflowV2IntentMessageTableCardRow",
      properties = {
        cells = {
          description = "Optional. List of cells that make up this row.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessageTableCardCell",
          },
          type = "array",
        },
        dividerAfter = {
          description = "Optional. Whether to add a visual divider after this row.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentMessageText = {
      description = "The text response message.",
      id = "GoogleCloudDialogflowV2IntentMessageText",
      properties = {
        text = {
          description = "Optional. The collection of the agent's responses.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentParameter = {
      description = "Represents intent parameters.",
      id = "GoogleCloudDialogflowV2IntentParameter",
      properties = {
        defaultValue = {
          description = "Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`.",
          type = "string",
        },
        displayName = {
          description = "Required. The name of the parameter.",
          type = "string",
        },
        entityTypeDisplayName = {
          description = "Optional. The name of the entity type, prefixed with `@`, that describes values of the parameter. If the parameter is required, this must be provided.",
          type = "string",
        },
        isList = {
          description = "Optional. Indicates whether the parameter represents a list of values.",
          type = "boolean",
        },
        mandatory = {
          description = "Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value.",
          type = "boolean",
        },
        name = {
          description = "The unique identifier of this parameter.",
          type = "string",
        },
        prompts = {
          description = "Optional. The collection of prompts that the agent can present to the user in order to collect a value for the parameter.",
          items = {
            type = "string",
          },
          type = "array",
        },
        value = {
          description = "Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentTrainingPhrase = {
      description = "Represents an example that the agent is trained on.",
      id = "GoogleCloudDialogflowV2IntentTrainingPhrase",
      properties = {
        name = {
          description = "Output only. The unique identifier of this training phrase.",
          type = "string",
        },
        parts = {
          description = "Required. The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `entity_type`, `alias`, and `user_defined` fields are all set.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentTrainingPhrasePart",
          },
          type = "array",
        },
        timesAddedCount = {
          description = "Optional. Indicates how many times this example was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "Required. The type of the training phrase.",
          enum = {
            "TYPE_UNSPECIFIED",
            "EXAMPLE",
            "TEMPLATE",
          },
          enumDescriptions = {
            "Not specified. This value should never be used.",
            "Examples do not contain @-prefixed entity type names, but example parts can be annotated with entity types.",
            "Templates are not annotated with entity types, but they can contain @-prefixed entity type names as substrings. Template mode has been deprecated. Example mode is the only supported way to create new training phrases. If you have existing training phrases that you've created in template mode, those will continue to work.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2IntentTrainingPhrasePart = {
      description = "Represents a part of a training phrase.",
      id = "GoogleCloudDialogflowV2IntentTrainingPhrasePart",
      properties = {
        alias = {
          description = "Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase.",
          type = "string",
        },
        entityType = {
          description = "Optional. The entity type name prefixed with `@`. This field is required for annotated parts of the training phrase.",
          type = "string",
        },
        text = {
          description = "Required. The text for this part.",
          type = "string",
        },
        userDefined = {
          description = "Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2KnowledgeOperationMetadata = {
      description = "Metadata in google::longrunning::Operation for Knowledge operations.",
      id = "GoogleCloudDialogflowV2KnowledgeOperationMetadata",
      properties = {
        exportOperationMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV2ExportOperationMetadata",
          description = "Metadata for the Export Data Operation such as the destination of export.",
        },
        knowledgeBase = {
          description = "The name of the knowledge base interacted with during the operation.",
          type = "string",
        },
        state = {
          description = "Output only. The current state of this operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "State unspecified.",
            "The operation has been created.",
            "The operation is currently running.",
            "The operation is done, either cancelled or completed.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2Message = {
      description = "Represents a message posted into a conversation.",
      id = "GoogleCloudDialogflowV2Message",
      properties = {
        content = {
          description = "Required. The message content.",
          type = "string",
        },
        createTime = {
          description = "Output only. The time when the message was created in Contact Center AI.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        languageCode = {
          description = "Optional. The message language. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: \"en-US\".",
          type = "string",
        },
        messageAnnotation = {
          ["$ref"] = "GoogleCloudDialogflowV2MessageAnnotation",
          description = "Output only. The annotation for the message.",
          readOnly = true,
        },
        name = {
          description = "Optional. The unique identifier of the message. Format: `projects//locations//conversations//messages/`.",
          type = "string",
        },
        participant = {
          description = "Output only. The participant that sends this message.",
          readOnly = true,
          type = "string",
        },
        participantRole = {
          description = "Output only. The role of the participant.",
          enum = {
            "ROLE_UNSPECIFIED",
            "HUMAN_AGENT",
            "AUTOMATED_AGENT",
            "END_USER",
          },
          enumDescriptions = {
            "Participant role not set.",
            "Participant is a human agent.",
            "Participant is an automated agent, such as a Dialogflow agent.",
            "Participant is an end user that has called or chatted with Dialogflow services.",
          },
          readOnly = true,
          type = "string",
        },
        sendTime = {
          description = "Optional. The time when the message was sent.",
          format = "google-datetime",
          type = "string",
        },
        sentimentAnalysis = {
          ["$ref"] = "GoogleCloudDialogflowV2SentimentAnalysisResult",
          description = "Output only. The sentiment analysis result for the message.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2MessageAnnotation = {
      description = "Represents the result of annotation for the message.",
      id = "GoogleCloudDialogflowV2MessageAnnotation",
      properties = {
        containEntities = {
          description = "Indicates whether the text message contains entities.",
          type = "boolean",
        },
        parts = {
          description = "The collection of annotated message parts ordered by their position in the message. You can recover the annotated message by concatenating [AnnotatedMessagePart.text].",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2AnnotatedMessagePart",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2OriginalDetectIntentRequest = {
      description = "Represents the contents of the original request that was passed to the `[Streaming]DetectIntent` call.",
      id = "GoogleCloudDialogflowV2OriginalDetectIntentRequest",
      properties = {
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Optional. This field is set to the value of the `QueryParameters.payload` field passed in the request. Some integrations that query a Dialogflow agent may provide additional information in the payload. In particular, for the Dialogflow Phone Gateway integration, this field has the form: { \"telephony\": { \"caller_id\": \"+18558363987\" } } Note: The caller ID field (`caller_id`) will be redacted for Trial Edition agents and populated with the caller ID in [E.164 format](https://en.wikipedia.org/wiki/E.164) for Essentials Edition agents.",
          type = "object",
        },
        source = {
          description = "The source of this request, e.g., `google`, `facebook`, `slack`. It is set by Dialogflow-owned servers.",
          type = "string",
        },
        version = {
          description = "Optional. The version of the protocol used for this request. This field is AoG-specific.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2QueryResult = {
      description = "Represents the result of conversational query or event processing.",
      id = "GoogleCloudDialogflowV2QueryResult",
      properties = {
        action = {
          description = "The action name from the matched intent.",
          type = "string",
        },
        allRequiredParamsPresent = {
          description = "This field is set to: - `false` if the matched intent has required parameters and not all of the required parameter values have been collected. - `true` if all required parameter values have been collected, or if the matched intent doesn't contain any required parameters.",
          type = "boolean",
        },
        cancelsSlotFilling = {
          description = "Indicates whether the conversational query triggers a cancellation for slot filling. For more information, see the [cancel slot filling documentation](https://cloud.google.com/dialogflow/es/docs/intents-actions-parameters#cancel).",
          type = "boolean",
        },
        diagnosticInfo = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Free-form diagnostic information for the associated detect intent request. The fields of this data can change without notice, so you should not write code that depends on its structure. The data may contain: - webhook call latency - webhook errors",
          type = "object",
        },
        fulfillmentMessages = {
          description = "The collection of rich messages to present to the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessage",
          },
          type = "array",
        },
        fulfillmentText = {
          description = "The text to be pronounced to the user or shown on the screen. Note: This is a legacy field, `fulfillment_messages` should be preferred.",
          type = "string",
        },
        intent = {
          ["$ref"] = "GoogleCloudDialogflowV2Intent",
          description = "The intent that matched the conversational query. Some, not all fields are filled in this message, including but not limited to: `name`, `display_name`, `end_interaction` and `is_fallback`.",
        },
        intentDetectionConfidence = {
          description = "The intent detection confidence. Values range from 0.0 (completely uncertain) to 1.0 (completely certain). This value is for informational purpose only and is only used to help match the best intent within the classification threshold. This value may change for the same end-user expression at any time due to a model retraining or change in implementation. If there are `multiple knowledge_answers` messages, this value is set to the greatest `knowledgeAnswers.match_confidence` value in the list.",
          format = "float",
          type = "number",
        },
        languageCode = {
          description = "The language that was triggered during intent detection. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.",
          type = "string",
        },
        outputContexts = {
          description = "The collection of output contexts. If applicable, `output_contexts.parameters` contains entries with name `.original` containing the original parameter values before the query.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2Context",
          },
          type = "array",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The collection of extracted parameters. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value: parameter name - MapValue type: - If parameter's entity type is a composite entity: map - Else: depending on parameter value type, could be one of string, number, boolean, null, list or map - MapValue value: - If parameter's entity type is a composite entity: map from composite entity property names to property values - Else: parameter value",
          type = "object",
        },
        queryText = {
          description = "The original conversational query text: - If natural language text was provided as input, `query_text` contains a copy of the input. - If natural language speech audio was provided as input, `query_text` contains the speech recognition result. If speech recognizer produced multiple alternatives, a particular one is picked. - If automatic spell correction is enabled, `query_text` will contain the corrected user input.",
          type = "string",
        },
        sentimentAnalysisResult = {
          ["$ref"] = "GoogleCloudDialogflowV2SentimentAnalysisResult",
          description = "The sentiment analysis result, which depends on the `sentiment_analysis_request_config` specified in the request.",
        },
        speechRecognitionConfidence = {
          description = "The Speech recognition confidence between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. The default of 0.0 is a sentinel value indicating that confidence was not set. This field is not guaranteed to be accurate or set. In particular this field isn't set for StreamingDetectIntent since the streaming endpoint has separate confidence estimates per portion of the audio in StreamingRecognitionResult.",
          format = "float",
          type = "number",
        },
        webhookPayload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "If the query was fulfilled by a webhook call, this field is set to the value of the `payload` field returned in the webhook response.",
          type = "object",
        },
        webhookSource = {
          description = "If the query was fulfilled by a webhook call, this field is set to the value of the `source` field returned in the webhook response.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2Sentiment = {
      description = "The sentiment, such as positive/negative feeling or association, for a unit of analysis, such as the query text. See: https://cloud.google.com/natural-language/docs/basics#interpreting_sentiment_analysis_values for how to interpret the result.",
      id = "GoogleCloudDialogflowV2Sentiment",
      properties = {
        magnitude = {
          description = "A non-negative number in the [0, +inf) range, which represents the absolute magnitude of sentiment, regardless of score (positive or negative).",
          format = "float",
          type = "number",
        },
        score = {
          description = "Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SentimentAnalysisResult = {
      description = "The result of sentiment analysis. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral. For Participants.DetectIntent, it needs to be configured in DetectIntentRequest.query_params. For Participants.StreamingDetectIntent, it needs to be configured in StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent and Participants.StreamingAnalyzeContent, it needs to be configured in ConversationProfile.human_agent_assistant_config",
      id = "GoogleCloudDialogflowV2SentimentAnalysisResult",
      properties = {
        queryTextSentiment = {
          ["$ref"] = "GoogleCloudDialogflowV2Sentiment",
          description = "The sentiment analysis result for `query_text`.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SessionEntityType = {
      description = "A session represents a conversation between a Dialogflow agent and an end-user. You can create special entities, called session entities, during a session. Session entities can extend or replace custom entity types and only exist during the session that they were created for. All session data, including session entities, is stored by Dialogflow for 20 minutes. For more information, see the [session entity guide](https://cloud.google.com/dialogflow/docs/entities-session).",
      id = "GoogleCloudDialogflowV2SessionEntityType",
      properties = {
        entities = {
          description = "Required. The collection of entities associated with this session entity type.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2EntityTypeEntity",
          },
          type = "array",
        },
        entityOverrideMode = {
          description = "Required. Indicates whether the additional data should override or supplement the custom entity type definition.",
          enum = {
            "ENTITY_OVERRIDE_MODE_UNSPECIFIED",
            "ENTITY_OVERRIDE_MODE_OVERRIDE",
            "ENTITY_OVERRIDE_MODE_SUPPLEMENT",
          },
          enumDescriptions = {
            "Not specified. This value should be never used.",
            "The collection of session entities overrides the collection of entities in the corresponding custom entity type.",
            "The collection of session entities extends the collection of entities in the corresponding custom entity type. Note: Even in this override mode calls to `ListSessionEntityTypes`, `GetSessionEntityType`, `CreateSessionEntityType` and `UpdateSessionEntityType` only return the additional entities added in this session entity type. If you want to get the supplemented list, please call EntityTypes.GetEntityType on the custom entity type and merge.",
          },
          type = "string",
        },
        name = {
          description = "Required. The unique identifier of this session entity type. Format: `projects//agent/sessions//entityTypes/`, or `projects//agent/environments//users//sessions//entityTypes/`. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata = {
      description = "Metadata for a ConversationProfile.SetSuggestionFeatureConfig operation.",
      id = "GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata",
      properties = {
        conversationProfile = {
          description = "The resource name of the conversation profile. Format: `projects//locations//conversationProfiles/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp whe the request was created. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
        participantRole = {
          description = "Required. The participant role to add or update the suggestion feature config. Only HUMAN_AGENT or END_USER can be used.",
          enum = {
            "ROLE_UNSPECIFIED",
            "HUMAN_AGENT",
            "AUTOMATED_AGENT",
            "END_USER",
          },
          enumDescriptions = {
            "Participant role not set.",
            "Participant is a human agent.",
            "Participant is an automated agent, such as a Dialogflow agent.",
            "Participant is an end user that has called or chatted with Dialogflow services.",
          },
          type = "string",
        },
        suggestionFeatureType = {
          description = "Required. The type of the suggestion feature to add or update.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ARTICLE_SUGGESTION",
            "FAQ",
            "SMART_REPLY",
          },
          enumDescriptions = {
            "Unspecified feature type.",
            "Run article suggestion model for chat.",
            "Run FAQ model for chat.",
            "Run smart reply model for chat.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SmartReplyAnswer = {
      description = "Represents a smart reply answer.",
      id = "GoogleCloudDialogflowV2SmartReplyAnswer",
      properties = {
        answerRecord = {
          description = "The name of answer record, in the format of \"projects//locations//answerRecords/\"",
          type = "string",
        },
        confidence = {
          description = "Smart reply confidence. The system's confidence score that this reply is a good match for this conversation, as a value from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        reply = {
          description = "The content of the reply.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SmartReplyModelMetadata = {
      description = "Metadata for smart reply models.",
      id = "GoogleCloudDialogflowV2SmartReplyModelMetadata",
      properties = {
        trainingModelType = {
          description = "Optional. Type of the smart reply model. If not provided, model_type is used.",
          enum = {
            "MODEL_TYPE_UNSPECIFIED",
            "SMART_REPLY_DUAL_ENCODER_MODEL",
            "SMART_REPLY_BERT_MODEL",
          },
          enumDescriptions = {
            "ModelType unspecified.",
            "ModelType smart reply dual encoder model.",
            "ModelType smart reply bert model.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SuggestArticlesResponse = {
      description = "The response message for Participants.SuggestArticles.",
      id = "GoogleCloudDialogflowV2SuggestArticlesResponse",
      properties = {
        articleAnswers = {
          description = "Articles ordered by score in descending order.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2ArticleAnswer",
          },
          type = "array",
        },
        contextSize = {
          description = "Number of messages prior to and including latest_message to compile the suggestion. It may be smaller than the SuggestArticlesRequest.context_size field in the request if there aren't that many messages in the conversation.",
          format = "int32",
          type = "integer",
        },
        latestMessage = {
          description = "The name of the latest conversation message used to compile suggestion for. Format: `projects//locations//conversations//messages/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SuggestFaqAnswersResponse = {
      description = "The request message for Participants.SuggestFaqAnswers.",
      id = "GoogleCloudDialogflowV2SuggestFaqAnswersResponse",
      properties = {
        contextSize = {
          description = "Number of messages prior to and including latest_message to compile the suggestion. It may be smaller than the SuggestFaqAnswersRequest.context_size field in the request if there aren't that many messages in the conversation.",
          format = "int32",
          type = "integer",
        },
        faqAnswers = {
          description = "Answers extracted from FAQ documents.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2FaqAnswer",
          },
          type = "array",
        },
        latestMessage = {
          description = "The name of the latest conversation message used to compile suggestion for. Format: `projects//locations//conversations//messages/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SuggestSmartRepliesResponse = {
      description = "The response message for Participants.SuggestSmartReplies.",
      id = "GoogleCloudDialogflowV2SuggestSmartRepliesResponse",
      properties = {
        contextSize = {
          description = "Number of messages prior to and including latest_message to compile the suggestion. It may be smaller than the SuggestSmartRepliesRequest.context_size field in the request if there aren't that many messages in the conversation.",
          format = "int32",
          type = "integer",
        },
        latestMessage = {
          description = "The name of the latest conversation message used to compile suggestion for. Format: `projects//locations//conversations//messages/`.",
          type = "string",
        },
        smartReplyAnswers = {
          description = "Output only. Multiple reply options provided by smart reply service. The order is based on the rank of the model prediction. The maximum number of the returned replies is set in SmartReplyConfig.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2SmartReplyAnswer",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2SuggestionResult = {
      description = "One response of different type of suggestion response which is used in the response of Participants.AnalyzeContent and Participants.AnalyzeContent, as well as HumanAgentAssistantEvent.",
      id = "GoogleCloudDialogflowV2SuggestionResult",
      properties = {
        error = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Error status if the request failed.",
        },
        suggestArticlesResponse = {
          ["$ref"] = "GoogleCloudDialogflowV2SuggestArticlesResponse",
          description = "SuggestArticlesResponse if request is for ARTICLE_SUGGESTION.",
        },
        suggestFaqAnswersResponse = {
          ["$ref"] = "GoogleCloudDialogflowV2SuggestFaqAnswersResponse",
          description = "SuggestFaqAnswersResponse if request is for FAQ_ANSWER.",
        },
        suggestSmartRepliesResponse = {
          ["$ref"] = "GoogleCloudDialogflowV2SuggestSmartRepliesResponse",
          description = "SuggestSmartRepliesResponse if request is for SMART_REPLY.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2UndeployConversationModelOperationMetadata = {
      description = "Metadata for a ConversationModels.UndeployConversationModel operation.",
      id = "GoogleCloudDialogflowV2UndeployConversationModelOperationMetadata",
      properties = {
        conversationModel = {
          description = "The resource name of the conversation model. Format: `projects//conversationModels/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp when the request to undeploy conversation model was submitted. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2WebhookRequest = {
      description = "The request message for a webhook call.",
      id = "GoogleCloudDialogflowV2WebhookRequest",
      properties = {
        originalDetectIntentRequest = {
          ["$ref"] = "GoogleCloudDialogflowV2OriginalDetectIntentRequest",
          description = "Optional. The contents of the original request that was passed to `[Streaming]DetectIntent` call.",
        },
        queryResult = {
          ["$ref"] = "GoogleCloudDialogflowV2QueryResult",
          description = "The result of the conversational query or event processing. Contains the same value as `[Streaming]DetectIntentResponse.query_result`.",
        },
        responseId = {
          description = "The unique identifier of the response. Contains the same value as `[Streaming]DetectIntentResponse.response_id`.",
          type = "string",
        },
        session = {
          description = "The unique identifier of detectIntent request session. Can be used to identify end-user inside webhook implementation. Format: `projects//agent/sessions/`, or `projects//agent/environments//users//sessions/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2WebhookResponse = {
      description = "The response message for a webhook call. This response is validated by the Dialogflow server. If validation fails, an error will be returned in the QueryResult.diagnostic_info field. Setting JSON fields to an empty value with the wrong type is a common error. To avoid this error: - Use `\"\"` for empty strings - Use `{}` or `null` for empty objects - Use `[]` or `null` for empty arrays For more information, see the [Protocol Buffers Language Guide](https://developers.google.com/protocol-buffers/docs/proto3#json).",
      id = "GoogleCloudDialogflowV2WebhookResponse",
      properties = {
        followupEventInput = {
          ["$ref"] = "GoogleCloudDialogflowV2EventInput",
          description = "Optional. Invokes the supplied events. When this field is set, Dialogflow ignores the `fulfillment_text`, `fulfillment_messages`, and `payload` fields.",
        },
        fulfillmentMessages = {
          description = "Optional. The rich response messages intended for the end-user. When provided, Dialogflow uses this field to populate QueryResult.fulfillment_messages sent to the integration or API caller.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2IntentMessage",
          },
          type = "array",
        },
        fulfillmentText = {
          description = "Optional. The text response message intended for the end-user. It is recommended to use `fulfillment_messages.text.text[0]` instead. When provided, Dialogflow uses this field to populate QueryResult.fulfillment_text sent to the integration or API caller.",
          type = "string",
        },
        outputContexts = {
          description = "Optional. The collection of output contexts that will overwrite currently active contexts for the session and reset their lifespans. When provided, Dialogflow uses this field to populate QueryResult.output_contexts sent to the integration or API caller.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2Context",
          },
          type = "array",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Optional. This field can be used to pass custom data from your webhook to the integration or API caller. Arbitrary JSON objects are supported. When provided, Dialogflow uses this field to populate QueryResult.webhook_payload sent to the integration or API caller. This field is also used by the [Google Assistant integration](https://cloud.google.com/dialogflow/docs/integrations/aog) for rich response messages. See the format definition at [Google Assistant Dialogflow webhook format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)",
          type = "object",
        },
        sessionEntityTypes = {
          description = "Optional. Additional session entity types to replace or extend developer entity types with. The entity synonyms apply to all languages and persist for the session. Setting this data from a webhook overwrites the session entity types that have been set using `detectIntent`, `streamingDetectIntent` or SessionEntityType management methods.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2SessionEntityType",
          },
          type = "array",
        },
        source = {
          description = "Optional. A custom field used to identify the webhook source. Arbitrary strings are supported. When provided, Dialogflow uses this field to populate QueryResult.webhook_source sent to the integration or API caller.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1AnnotatedMessagePart = {
      description = "Represents a part of a message possibly annotated with an entity. The part can be an entity or purely a part of the message between two entities or message start/end.",
      id = "GoogleCloudDialogflowV2beta1AnnotatedMessagePart",
      properties = {
        entityType = {
          description = "Optional. The [Dialogflow system entity type](https://cloud.google.com/dialogflow/docs/reference/system-entities) of this message part. If this is empty, Dialogflow could not annotate the phrase part with a system entity.",
          type = "string",
        },
        formattedValue = {
          description = "Optional. The [Dialogflow system entity formatted value ](https://cloud.google.com/dialogflow/docs/reference/system-entities) of this message part. For example for a system entity of type `@sys.unit-currency`, this may contain: { \"amount\": 5, \"currency\": \"USD\" } ",
          type = "any",
        },
        text = {
          description = "Required. A part of a message possibly annotated with an entity.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1ArticleAnswer = {
      description = "Represents article answer.",
      id = "GoogleCloudDialogflowV2beta1ArticleAnswer",
      properties = {
        answerRecord = {
          description = "The name of answer record, in the format of \"projects//locations//answerRecords/\"",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "A map that contains metadata about the answer and the document from which it originates.",
          type = "object",
        },
        snippets = {
          description = "Output only. Article snippets.",
          items = {
            type = "string",
          },
          type = "array",
        },
        title = {
          description = "The article title.",
          type = "string",
        },
        uri = {
          description = "The article URI.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse = {
      description = "The response message for EntityTypes.BatchUpdateEntityTypes.",
      id = "GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse",
      properties = {
        entityTypes = {
          description = "The collection of updated or created entity types.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1EntityType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse = {
      description = "The response message for Intents.BatchUpdateIntents.",
      id = "GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse",
      properties = {
        intents = {
          description = "The collection of updated or created intents.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1Intent",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata = {
      description = "Metadata for a ConversationProfile.ClearSuggestionFeatureConfig operation.",
      id = "GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata",
      properties = {
        conversationProfile = {
          description = "The resource name of the conversation profile. Format: `projects//locations//conversationProfiles/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp whe the request was created. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
        participantRole = {
          description = "Required. The participant role to remove the suggestion feature config. Only HUMAN_AGENT or END_USER can be used.",
          enum = {
            "ROLE_UNSPECIFIED",
            "HUMAN_AGENT",
            "AUTOMATED_AGENT",
            "END_USER",
          },
          enumDescriptions = {
            "Participant role not set.",
            "Participant is a human agent.",
            "Participant is an automated agent, such as a Dialogflow agent.",
            "Participant is an end user that has called or chatted with Dialogflow services.",
          },
          type = "string",
        },
        suggestionFeatureType = {
          description = "Required. The type of the suggestion feature to remove.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ARTICLE_SUGGESTION",
            "FAQ",
            "SMART_REPLY",
            "CONVERSATION_SUMMARIZATION",
          },
          enumDescriptions = {
            "Unspecified feature type.",
            "Run article suggestion model for chat.",
            "Run FAQ model.",
            "Run smart reply model for chat.",
            "Run conversation summarization model for chat.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1Context = {
      description = "Dialogflow contexts are similar to natural language context. If a person says to you \"they are orange\", you need context in order to understand what \"they\" is referring to. Similarly, for Dialogflow to handle an end-user expression like that, it needs to be provided with context in order to correctly match an intent. Using contexts, you can control the flow of a conversation. You can configure contexts for an intent by setting input and output contexts, which are identified by string names. When an intent is matched, any configured output contexts for that intent become active. While any contexts are active, Dialogflow is more likely to match intents that are configured with input contexts that correspond to the currently active contexts. For more information about context, see the [Contexts guide](https://cloud.google.com/dialogflow/docs/contexts-overview).",
      id = "GoogleCloudDialogflowV2beta1Context",
      properties = {
        lifespanCount = {
          description = "Optional. The number of conversational query requests after which the context expires. The default is `0`. If set to `0`, the context expires immediately. Contexts expire automatically after 20 minutes if there are no matching queries.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Required. The unique identifier of the context. Supported formats: - `projects//agent/sessions//contexts/`, - `projects//locations//agent/sessions//contexts/`, - `projects//agent/environments//users//sessions//contexts/`, - `projects//locations//agent/environments//users//sessions//contexts/`, The `Context ID` is always converted to lowercase, may only contain characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. The following context names are reserved for internal use by Dialogflow. You should not use these contexts or create contexts with these names: * `__system_counters__` * `*_id_dialog_context` * `*_dialog_params_size`",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Optional. The collection of parameters associated with this context. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value: parameter name - MapValue type: - If parameter's entity type is a composite entity: map - Else: depending on parameter value type, could be one of string, number, boolean, null, list or map - MapValue value: - If parameter's entity type is a composite entity: map from composite entity property names to property values - Else: parameter value",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1ConversationEvent = {
      description = "Represents a notification sent to Pub/Sub subscribers for conversation lifecycle events.",
      id = "GoogleCloudDialogflowV2beta1ConversationEvent",
      properties = {
        conversation = {
          description = "Required. The unique identifier of the conversation this notification refers to. Format: `projects//conversations/`.",
          type = "string",
        },
        errorStatus = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Optional. More detailed information about an error. Only set for type UNRECOVERABLE_ERROR_IN_PHONE_CALL.",
        },
        newMessagePayload = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1Message",
          description = "Payload of NEW_MESSAGE event.",
        },
        type = {
          description = "Required. The type of the event that this notification refers to.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CONVERSATION_STARTED",
            "CONVERSATION_FINISHED",
            "HUMAN_INTERVENTION_NEEDED",
            "NEW_MESSAGE",
            "UNRECOVERABLE_ERROR",
          },
          enumDescriptions = {
            "Type not set.",
            "A new conversation has been opened. This is fired when a telephone call is answered, or a conversation is created via the API.",
            "An existing conversation has closed. This is fired when a telephone call is terminated, or a conversation is closed via the API.",
            "An existing conversation has received notification from Dialogflow that human intervention is required.",
            "An existing conversation has received a new message, either from API or telephony. It is configured in ConversationProfile.new_message_event_notification_config",
            "Unrecoverable error during a telephone call. In general non-recoverable errors only occur if something was misconfigured in the ConversationProfile corresponding to the call. After a non-recoverable error, Dialogflow may stop responding. We don't fire this event: * in an API call because we can directly return the error, or, * when we can recover from an error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1EntityType = {
      description = "Each intent parameter has a type, called the entity type, which dictates exactly how data from an end-user expression is extracted. Dialogflow provides predefined system entities that can match many common types of data. For example, there are system entities for matching dates, times, colors, email addresses, and so on. You can also create your own custom entities for matching custom data. For example, you could define a vegetable entity that can match the types of vegetables available for purchase with a grocery store agent. For more information, see the [Entity guide](https://cloud.google.com/dialogflow/docs/entities-overview).",
      id = "GoogleCloudDialogflowV2beta1EntityType",
      properties = {
        autoExpansionMode = {
          description = "Optional. Indicates whether the entity type can be automatically expanded.",
          enum = {
            "AUTO_EXPANSION_MODE_UNSPECIFIED",
            "AUTO_EXPANSION_MODE_DEFAULT",
          },
          enumDescriptions = {
            "Auto expansion disabled for the entity.",
            "Allows an agent to recognize values that have not been explicitly listed in the entity.",
          },
          type = "string",
        },
        displayName = {
          description = "Required. The name of the entity type.",
          type = "string",
        },
        enableFuzzyExtraction = {
          description = "Optional. Enables fuzzy entity extraction during classification.",
          type = "boolean",
        },
        entities = {
          description = "Optional. The collection of entity entries associated with the entity type.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1EntityTypeEntity",
          },
          type = "array",
        },
        kind = {
          description = "Required. Indicates the kind of entity type.",
          enum = {
            "KIND_UNSPECIFIED",
            "KIND_MAP",
            "KIND_LIST",
            "KIND_REGEXP",
          },
          enumDescriptions = {
            "Not specified. This value should be never used.",
            "Map entity types allow mapping of a group of synonyms to a reference value.",
            "List entity types contain a set of entries that do not map to reference values. However, list entity types can contain references to other entity types (with or without aliases).",
            "Regexp entity types allow to specify regular expressions in entries values.",
          },
          type = "string",
        },
        name = {
          description = "The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Supported formats: - `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1EntityTypeEntity = {
      description = "An **entity entry** for an associated entity type.",
      id = "GoogleCloudDialogflowV2beta1EntityTypeEntity",
      properties = {
        synonyms = {
          description = "Required. A collection of value synonyms. For example, if the entity type is *vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For `KIND_LIST` entity types: * This collection must contain exactly one synonym equal to `value`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        value = {
          description = "Required. The primary value associated with this entity entry. For example, if the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP` entity types: * A reference value to be used in place of synonyms. For `KIND_LIST` entity types: * A string that can contain references to other entity types (with or without aliases).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1EventInput = {
      description = "Events allow for matching intents by event name instead of the natural language input. For instance, input `` can trigger a personalized welcome response. The parameter `name` may be used by the agent in the response: `\"Hello #welcome_event.name! What can I do for you today?\"`.",
      id = "GoogleCloudDialogflowV2beta1EventInput",
      properties = {
        languageCode = {
          description = "Required. The language of this query. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes. Note that queries in the same session do not necessarily need to specify the same language. This field is ignored when used in the context of a WebhookResponse.followup_event_input field, because the language was already defined in the originating detect intent request.",
          type = "string",
        },
        name = {
          description = "Required. The unique identifier of the event.",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The collection of parameters associated with the event. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value: parameter name - MapValue type: - If parameter's entity type is a composite entity: map - Else: depending on parameter value type, could be one of string, number, boolean, null, list or map - MapValue value: - If parameter's entity type is a composite entity: map from composite entity property names to property values - Else: parameter value",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1ExportAgentResponse = {
      description = "The response message for Agents.ExportAgent.",
      id = "GoogleCloudDialogflowV2beta1ExportAgentResponse",
      properties = {
        agentContent = {
          description = "Zip compressed raw byte content for agent.",
          format = "byte",
          type = "string",
        },
        agentUri = {
          description = "The URI to a file containing the exported agent. This field is populated only if `agent_uri` is specified in `ExportAgentRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1ExportOperationMetadata = {
      description = "Metadata related to the Export Data Operations (e.g. ExportDocument).",
      id = "GoogleCloudDialogflowV2beta1ExportOperationMetadata",
      properties = {
        exportedGcsDestination = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1GcsDestination",
          description = "Cloud Storage file path of the exported data.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1FaqAnswer = {
      description = "Represents answer from \"frequently asked questions\".",
      id = "GoogleCloudDialogflowV2beta1FaqAnswer",
      properties = {
        answer = {
          description = "The piece of text from the `source` knowledge base document.",
          type = "string",
        },
        answerRecord = {
          description = "The name of answer record, in the format of \"projects//locations//answerRecords/\"",
          type = "string",
        },
        confidence = {
          description = "The system's confidence score that this Knowledge answer is a good match for this conversational query, range from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "A map that contains metadata about the answer and the document from which it originates.",
          type = "object",
        },
        question = {
          description = "The corresponding FAQ question.",
          type = "string",
        },
        source = {
          description = "Indicates which Knowledge Document this answer was extracted from. Format: `projects//locations//agent/knowledgeBases//documents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1GcsDestination = {
      description = "Google Cloud Storage location for the output.",
      id = "GoogleCloudDialogflowV2beta1GcsDestination",
      properties = {
        uri = {
          description = "Required. The Google Cloud Storage URIs for the output. A URI is of the form: gs://bucket/object-prefix-or-name Whether a prefix or name is used depends on the use case. The requesting user must have \"write-permission\" to the bucket.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1HumanAgentAssistantEvent = {
      description = "Output only. Represents a notification sent to Pub/Sub subscribers for agent assistant events in a specific conversation.",
      id = "GoogleCloudDialogflowV2beta1HumanAgentAssistantEvent",
      properties = {
        conversation = {
          description = "The conversation this notification refers to. Format: `projects//conversations/`.",
          type = "string",
        },
        participant = {
          description = "The participant that the suggestion is compiled for. And This field is used to call Participants.ListSuggestions API. Format: `projects//conversations//participants/`. It will not be set in legacy workflow. HumanAgentAssistantConfig.name for more information.",
          type = "string",
        },
        suggestionResults = {
          description = "The suggestion results payload that this notification refers to. It will only be set when HumanAgentAssistantConfig.SuggestionConfig.group_suggestion_responses sets to true.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1SuggestionResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1ImportDocumentsResponse = {
      description = "Response message for Documents.ImportDocuments.",
      id = "GoogleCloudDialogflowV2beta1ImportDocumentsResponse",
      properties = {
        warnings = {
          description = "Includes details about skipped documents or any other warnings.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1Intent = {
      description = "An intent categorizes an end-user's intention for one conversation turn. For each agent, you define many intents, where your combined intents can handle a complete conversation. When an end-user writes or says something, referred to as an end-user expression or end-user input, Dialogflow matches the end-user input to the best intent in your agent. Matching an intent is also known as intent classification. For more information, see the [intent guide](https://cloud.google.com/dialogflow/docs/intents-overview).",
      id = "GoogleCloudDialogflowV2beta1Intent",
      properties = {
        action = {
          description = "Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.",
          type = "string",
        },
        defaultResponsePlatforms = {
          description = "Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).",
          items = {
            enum = {
              "PLATFORM_UNSPECIFIED",
              "FACEBOOK",
              "SLACK",
              "TELEGRAM",
              "KIK",
              "SKYPE",
              "LINE",
              "VIBER",
              "ACTIONS_ON_GOOGLE",
              "TELEPHONY",
              "GOOGLE_HANGOUTS",
            },
            enumDescriptions = {
              "Not specified.",
              "Facebook.",
              "Slack.",
              "Telegram.",
              "Kik.",
              "Skype.",
              "Line.",
              "Viber.",
              "Google Assistant See [Dialogflow webhook format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)",
              "Telephony Gateway.",
              "Google Hangouts.",
            },
            type = "string",
          },
          type = "array",
        },
        displayName = {
          description = "Required. The name of this intent.",
          type = "string",
        },
        endInteraction = {
          description = "Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.",
          type = "boolean",
        },
        events = {
          description = "Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.",
          items = {
            type = "string",
          },
          type = "array",
        },
        followupIntentInfo = {
          description = "Output only. Information about all followup intents that have this intent as a direct or indirect parent. We populate this field only in the output.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo",
          },
          readOnly = true,
          type = "array",
        },
        inputContextNames = {
          description = "Optional. The list of context names required for this intent to be triggered. Formats: - `projects//agent/sessions/-/contexts/` - `projects//locations//agent/sessions/-/contexts/`",
          items = {
            type = "string",
          },
          type = "array",
        },
        isFallback = {
          description = "Optional. Indicates whether this is a fallback intent.",
          type = "boolean",
        },
        liveAgentHandoff = {
          description = "Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.",
          type = "boolean",
        },
        messages = {
          description = "Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessage",
          },
          type = "array",
        },
        mlDisabled = {
          description = "Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.",
          type = "boolean",
        },
        mlEnabled = {
          description = "Optional. Indicates whether Machine Learning is enabled for the intent. Note: If `ml_enabled` setting is set to false, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off. DEPRECATED! Please use `ml_disabled` field instead. NOTE: If both `ml_enabled` and `ml_disabled` are either not set or false, then the default value is determined as follows: - Before April 15th, 2018 the default is: ml_enabled = false / ml_disabled = true. - After April 15th, 2018 the default is: ml_enabled = true / ml_disabled = false.",
          type = "boolean",
        },
        name = {
          description = "Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported formats: - `projects//agent/intents/` - `projects//locations//agent/intents/`",
          type = "string",
        },
        outputContexts = {
          description = "Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1Context",
          },
          type = "array",
        },
        parameters = {
          description = "Optional. The collection of parameters associated with the intent.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentParameter",
          },
          type = "array",
        },
        parentFollowupIntentName = {
          description = "Optional. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.",
          type = "string",
        },
        priority = {
          description = "Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.",
          format = "int32",
          type = "integer",
        },
        resetContexts = {
          description = "Optional. Indicates whether to delete all contexts in the current session when this intent is matched.",
          type = "boolean",
        },
        rootFollowupIntentName = {
          description = "Output only. The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. Format: `projects//agent/intents/`.",
          readOnly = true,
          type = "string",
        },
        trainingPhrases = {
          description = "Optional. The collection of examples that the agent is trained on.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentTrainingPhrase",
          },
          type = "array",
        },
        webhookState = {
          description = "Optional. Indicates whether webhooks are enabled for the intent.",
          enum = {
            "WEBHOOK_STATE_UNSPECIFIED",
            "WEBHOOK_STATE_ENABLED",
            "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING",
          },
          enumDescriptions = {
            "Webhook is disabled in the agent and in the intent.",
            "Webhook is enabled in the agent and in the intent.",
            "Webhook is enabled in the agent and in the intent. Also, each slot filling prompt is forwarded to the webhook.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo = {
      description = "Represents a single followup intent in the chain.",
      id = "GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo",
      properties = {
        followupIntentName = {
          description = "The unique identifier of the followup intent. Format: `projects//agent/intents/`.",
          type = "string",
        },
        parentFollowupIntentName = {
          description = "The unique identifier of the followup intent's parent. Format: `projects//agent/intents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessage = {
      description = "Corresponds to the `Response` field in the Dialogflow console.",
      id = "GoogleCloudDialogflowV2beta1IntentMessage",
      properties = {
        basicCard = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageBasicCard",
          description = "Displays a basic card for Actions on Google.",
        },
        browseCarouselCard = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard",
          description = "Browse carousel card for Actions on Google.",
        },
        card = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageCard",
          description = "Displays a card.",
        },
        carouselSelect = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect",
          description = "Displays a carousel card for Actions on Google.",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageImage",
          description = "Displays an image.",
        },
        linkOutSuggestion = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion",
          description = "Displays a link out suggestion chip for Actions on Google.",
        },
        listSelect = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageListSelect",
          description = "Displays a list card for Actions on Google.",
        },
        mediaContent = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageMediaContent",
          description = "The media content card for Actions on Google.",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "A custom platform-specific response.",
          type = "object",
        },
        platform = {
          description = "Optional. The platform that this message is intended for.",
          enum = {
            "PLATFORM_UNSPECIFIED",
            "FACEBOOK",
            "SLACK",
            "TELEGRAM",
            "KIK",
            "SKYPE",
            "LINE",
            "VIBER",
            "ACTIONS_ON_GOOGLE",
            "TELEPHONY",
            "GOOGLE_HANGOUTS",
          },
          enumDescriptions = {
            "Not specified.",
            "Facebook.",
            "Slack.",
            "Telegram.",
            "Kik.",
            "Skype.",
            "Line.",
            "Viber.",
            "Google Assistant See [Dialogflow webhook format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)",
            "Telephony Gateway.",
            "Google Hangouts.",
          },
          type = "string",
        },
        quickReplies = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageQuickReplies",
          description = "Displays quick replies.",
        },
        rbmCarouselRichCard = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard",
          description = "Rich Business Messaging (RBM) carousel rich card response.",
        },
        rbmStandaloneRichCard = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard",
          description = "Standalone Rich Business Messaging (RBM) rich card response.",
        },
        rbmText = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmText",
          description = "Rich Business Messaging (RBM) text response. RBM allows businesses to send enriched and branded versions of SMS. See https://jibe.google.com/business-messaging.",
        },
        simpleResponses = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses",
          description = "Returns a voice or text-only response for Actions on Google.",
        },
        suggestions = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageSuggestions",
          description = "Displays suggestion chips for Actions on Google.",
        },
        tableCard = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageTableCard",
          description = "Table card for Actions on Google.",
        },
        telephonyPlayAudio = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio",
          description = "Plays audio from a file in Telephony Gateway.",
        },
        telephonySynthesizeSpeech = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech",
          description = "Synthesizes speech in Telephony Gateway.",
        },
        telephonyTransferCall = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall",
          description = "Transfers the call in Telephony Gateway.",
        },
        text = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageText",
          description = "Returns a text response.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageBasicCard = {
      description = "The basic card message. Useful for displaying information.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageBasicCard",
      properties = {
        buttons = {
          description = "Optional. The collection of card buttons.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton",
          },
          type = "array",
        },
        formattedText = {
          description = "Required, unless image is present. The body text of the card.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageImage",
          description = "Optional. The image for the card.",
        },
        subtitle = {
          description = "Optional. The subtitle of the card.",
          type = "string",
        },
        title = {
          description = "Optional. The title of the card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton = {
      description = "The button object that appears at the bottom of a card.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton",
      properties = {
        openUriAction = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction",
          description = "Required. Action to take when a user taps on the button.",
        },
        title = {
          description = "Required. The title of the button.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction = {
      description = "Opens the given URI.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction",
      properties = {
        uri = {
          description = "Required. The HTTP or HTTPS scheme URI.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard = {
      description = "Browse Carousel Card for Actions on Google. https://developers.google.com/actions/assistant/responses#browsing_carousel",
      id = "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard",
      properties = {
        imageDisplayOptions = {
          description = "Optional. Settings for displaying the image. Applies to every image in items.",
          enum = {
            "IMAGE_DISPLAY_OPTIONS_UNSPECIFIED",
            "GRAY",
            "WHITE",
            "CROPPED",
            "BLURRED_BACKGROUND",
          },
          enumDescriptions = {
            "Fill the gaps between the image and the image container with gray bars.",
            "Fill the gaps between the image and the image container with gray bars.",
            "Fill the gaps between the image and the image container with white bars.",
            "Image is scaled such that the image width and height match or exceed the container dimensions. This may crop the top and bottom of the image if the scaled image height is greater than the container height, or crop the left and right of the image if the scaled image width is greater than the container width. This is similar to \"Zoom Mode\" on a widescreen TV when playing a 4:3 video.",
            "Pad the gaps between image and image frame with a blurred copy of the same image.",
          },
          type = "string",
        },
        items = {
          description = "Required. List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem = {
      description = "Browsing carousel tile",
      id = "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem",
      properties = {
        description = {
          description = "Optional. Description of the carousel item. Maximum of four lines of text.",
          type = "string",
        },
        footer = {
          description = "Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageImage",
          description = "Optional. Hero image for the carousel item.",
        },
        openUriAction = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction",
          description = "Required. Action to present to the user.",
        },
        title = {
          description = "Required. Title of the carousel item. Maximum of two lines of text.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction = {
      description = "Actions on Google action to open a given url.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction",
      properties = {
        url = {
          description = "Required. URL",
          type = "string",
        },
        urlTypeHint = {
          description = "Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.",
          enum = {
            "URL_TYPE_HINT_UNSPECIFIED",
            "AMP_ACTION",
            "AMP_CONTENT",
          },
          enumDescriptions = {
            "Unspecified",
            "Url would be an amp action",
            "URL that points directly to AMP content, or to a canonical URL which refers to AMP content via .",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageCard = {
      description = "The card response message.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageCard",
      properties = {
        buttons = {
          description = "Optional. The collection of card buttons.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageCardButton",
          },
          type = "array",
        },
        imageUri = {
          description = "Optional. The public URI to an image file for the card.",
          type = "string",
        },
        subtitle = {
          description = "Optional. The subtitle of the card.",
          type = "string",
        },
        title = {
          description = "Optional. The title of the card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageCardButton = {
      description = "Optional. Contains information about a button.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageCardButton",
      properties = {
        postback = {
          description = "Optional. The text to send back to the Dialogflow API or a URI to open.",
          type = "string",
        },
        text = {
          description = "Optional. The text to show on the button.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect = {
      description = "The card for presenting a carousel of options to select from.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect",
      properties = {
        items = {
          description = "Required. Carousel items.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem = {
      description = "An item in the carousel.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem",
      properties = {
        description = {
          description = "Optional. The body text of the card.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageImage",
          description = "Optional. The image to display.",
        },
        info = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo",
          description = "Required. Additional info about the option item.",
        },
        title = {
          description = "Required. Title of the carousel item.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageColumnProperties = {
      description = "Column properties for TableCard.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageColumnProperties",
      properties = {
        header = {
          description = "Required. Column heading.",
          type = "string",
        },
        horizontalAlignment = {
          description = "Optional. Defines text alignment for all cells in this column.",
          enum = {
            "HORIZONTAL_ALIGNMENT_UNSPECIFIED",
            "LEADING",
            "CENTER",
            "TRAILING",
          },
          enumDescriptions = {
            "Text is aligned to the leading edge of the column.",
            "Text is aligned to the leading edge of the column.",
            "Text is centered in the column.",
            "Text is aligned to the trailing edge of the column.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageImage = {
      description = "The image response message.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageImage",
      properties = {
        accessibilityText = {
          description = "A text description of the image to be used for accessibility, e.g., screen readers. Required if image_uri is set for CarouselSelect.",
          type = "string",
        },
        imageUri = {
          description = "Optional. The public URI to an image file.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion = {
      description = "The suggestion chip message that allows the user to jump out to the app or website associated with this agent.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion",
      properties = {
        destinationName = {
          description = "Required. The name of the app or site this chip is linking to.",
          type = "string",
        },
        uri = {
          description = "Required. The URI of the app or site to open when the user taps the suggestion chip.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageListSelect = {
      description = "The card for presenting a list of options to select from.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageListSelect",
      properties = {
        items = {
          description = "Required. List items.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageListSelectItem",
          },
          type = "array",
        },
        subtitle = {
          description = "Optional. Subtitle of the list.",
          type = "string",
        },
        title = {
          description = "Optional. The overall title of the list.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageListSelectItem = {
      description = "An item in the list.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageListSelectItem",
      properties = {
        description = {
          description = "Optional. The main text describing the item.",
          type = "string",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageImage",
          description = "Optional. The image to display.",
        },
        info = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo",
          description = "Required. Additional information about this option.",
        },
        title = {
          description = "Required. The title of the list item.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageMediaContent = {
      description = "The media content card for Actions on Google.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageMediaContent",
      properties = {
        mediaObjects = {
          description = "Required. List of media objects.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject",
          },
          type = "array",
        },
        mediaType = {
          description = "Optional. What type of media is the content (ie \"audio\").",
          enum = {
            "RESPONSE_MEDIA_TYPE_UNSPECIFIED",
            "AUDIO",
          },
          enumDescriptions = {
            "Unspecified.",
            "Response media type is audio.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject = {
      description = "Response media object for media content card.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject",
      properties = {
        contentUrl = {
          description = "Required. Url where the media is stored.",
          type = "string",
        },
        description = {
          description = "Optional. Description of media card.",
          type = "string",
        },
        icon = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageImage",
          description = "Optional. Icon to display above media content.",
        },
        largeImage = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageImage",
          description = "Optional. Image to display above media content.",
        },
        name = {
          description = "Required. Name of media card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageQuickReplies = {
      description = "The quick replies response message.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageQuickReplies",
      properties = {
        quickReplies = {
          description = "Optional. The collection of quick replies.",
          items = {
            type = "string",
          },
          type = "array",
        },
        title = {
          description = "Optional. The title of the collection of quick replies.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent = {
      description = "Rich Business Messaging (RBM) Card content",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent",
      properties = {
        description = {
          description = "Optional. Description of the card (at most 2000 bytes). At least one of the title, description or media must be set.",
          type = "string",
        },
        media = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia",
          description = "Optional. However at least one of the title, description or media must be set. Media (image, GIF or a video) to include in the card.",
        },
        suggestions = {
          description = "Optional. List of suggestions to include in the card.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion",
          },
          type = "array",
        },
        title = {
          description = "Optional. Title of the card (at most 200 bytes). At least one of the title, description or media must be set.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia = {
      description = "Rich Business Messaging (RBM) Media displayed in Cards The following media-types are currently supported: Image Types * image/jpeg * image/jpg' * image/gif * image/png Video Types * video/h263 * video/m4v * video/mp4 * video/mpeg * video/mpeg4 * video/webm",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia",
      properties = {
        fileUri = {
          description = "Required. Publicly reachable URI of the file. The RBM platform determines the MIME type of the file from the content-type field in the HTTP headers when the platform fetches the file. The content-type field must be present and accurate in the HTTP response from the URL.",
          type = "string",
        },
        height = {
          description = "Required for cards with vertical orientation. The height of the media within a rich card with a vertical layout. For a standalone card with horizontal layout, height is not customizable, and this field is ignored.",
          enum = {
            "HEIGHT_UNSPECIFIED",
            "SHORT",
            "MEDIUM",
            "TALL",
          },
          enumDescriptions = {
            "Not specified.",
            "112 DP.",
            "168 DP.",
            "264 DP. Not available for rich card carousels when the card width is set to small.",
          },
          type = "string",
        },
        thumbnailUri = {
          description = "Optional. Publicly reachable URI of the thumbnail.If you don't provide a thumbnail URI, the RBM platform displays a blank placeholder thumbnail until the user's device downloads the file. Depending on the user's setting, the file may not download automatically and may require the user to tap a download button.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard = {
      description = "Carousel Rich Business Messaging (RBM) rich card. Rich cards allow you to respond to users with more vivid content, e.g. with media and suggestions. If you want to show a single card with more control over the layout, please use RbmStandaloneCard instead.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard",
      properties = {
        cardContents = {
          description = "Required. The cards in the carousel. A carousel must have at least 2 cards and at most 10.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent",
          },
          type = "array",
        },
        cardWidth = {
          description = "Required. The width of the cards in the carousel.",
          enum = {
            "CARD_WIDTH_UNSPECIFIED",
            "SMALL",
            "MEDIUM",
          },
          enumDescriptions = {
            "Not specified.",
            "120 DP. Note that tall media cannot be used.",
            "232 DP.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard = {
      description = "Standalone Rich Business Messaging (RBM) rich card. Rich cards allow you to respond to users with more vivid content, e.g. with media and suggestions. You can group multiple rich cards into one using RbmCarouselCard but carousel cards will give you less control over the card layout.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard",
      properties = {
        cardContent = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent",
          description = "Required. Card content.",
        },
        cardOrientation = {
          description = "Required. Orientation of the card.",
          enum = {
            "CARD_ORIENTATION_UNSPECIFIED",
            "HORIZONTAL",
            "VERTICAL",
          },
          enumDescriptions = {
            "Not specified.",
            "Horizontal layout.",
            "Vertical layout.",
          },
          type = "string",
        },
        thumbnailImageAlignment = {
          description = "Required if orientation is horizontal. Image preview alignment for standalone cards with horizontal layout.",
          enum = {
            "THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED",
            "LEFT",
            "RIGHT",
          },
          enumDescriptions = {
            "Not specified.",
            "Thumbnail preview is left-aligned.",
            "Thumbnail preview is right-aligned.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction = {
      description = "Rich Business Messaging (RBM) suggested client-side action that the user can choose from the card.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction",
      properties = {
        dial = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial",
          description = "Suggested client side action: Dial a phone number",
        },
        openUrl = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri",
          description = "Suggested client side action: Open a URI on device",
        },
        postbackData = {
          description = "Opaque payload that the Dialogflow receives in a user event when the user taps the suggested action. This data will be also forwarded to webhook to allow performing custom business logic.",
          type = "string",
        },
        shareLocation = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation",
          description = "Suggested client side action: Share user location",
        },
        text = {
          description = "Text to display alongside the action.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial = {
      description = "Opens the user's default dialer app with the specified phone number but does not dial automatically.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial",
      properties = {
        phoneNumber = {
          description = "Required. The phone number to fill in the default dialer app. This field should be in [E.164](https://en.wikipedia.org/wiki/E.164) format. An example of a correctly formatted phone number: +15556767888.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri = {
      description = "Opens the user's default web browser app to the specified uri If the user has an app installed that is registered as the default handler for the URL, then this app will be opened instead, and its icon will be used in the suggested action UI.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri",
      properties = {
        uri = {
          description = "Required. The uri to open on the user device",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation = {
      description = "Opens the device's location chooser so the user can pick a location to send back to the agent.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation",
      properties = {},
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply = {
      description = "Rich Business Messaging (RBM) suggested reply that the user can click instead of typing in their own response.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply",
      properties = {
        postbackData = {
          description = "Opaque payload that the Dialogflow receives in a user event when the user taps the suggested reply. This data will be also forwarded to webhook to allow performing custom business logic.",
          type = "string",
        },
        text = {
          description = "Suggested reply text.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion = {
      description = "Rich Business Messaging (RBM) suggestion. Suggestions allow user to easily select/click a predefined response or perform an action (like opening a web uri).",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion",
      properties = {
        action = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction",
          description = "Predefined client side actions that user can choose",
        },
        reply = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply",
          description = "Predefined replies for user to select instead of typing",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageRbmText = {
      description = "Rich Business Messaging (RBM) text response with suggestions.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageRbmText",
      properties = {
        rbmSuggestion = {
          description = "Optional. One or more suggestions to show to the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion",
          },
          type = "array",
        },
        text = {
          description = "Required. Text sent and displayed to the user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo = {
      description = "Additional info about the select item for when it is triggered in a dialog.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo",
      properties = {
        key = {
          description = "Required. A unique key that will be sent back to the agent if this response is given.",
          type = "string",
        },
        synonyms = {
          description = "Optional. A list of synonyms that can also be used to trigger this item in dialog.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse = {
      description = "The simple response message containing speech or text.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse",
      properties = {
        displayText = {
          description = "Optional. The text to display.",
          type = "string",
        },
        ssml = {
          description = "One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.",
          type = "string",
        },
        textToSpeech = {
          description = "One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses = {
      description = "The collection of simple response candidates. This message in `QueryResult.fulfillment_messages` and `WebhookResponse.fulfillment_messages` should contain only one `SimpleResponse`.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses",
      properties = {
        simpleResponses = {
          description = "Required. The list of simple responses.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageSuggestion = {
      description = "The suggestion chip message that the user can tap to quickly post a reply to the conversation.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageSuggestion",
      properties = {
        title = {
          description = "Required. The text shown the in the suggestion chip.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageSuggestions = {
      description = "The collection of suggestions.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageSuggestions",
      properties = {
        suggestions = {
          description = "Required. The list of suggested replies.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageSuggestion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageTableCard = {
      description = "Table card for Actions on Google.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageTableCard",
      properties = {
        buttons = {
          description = "Optional. List of buttons for the card.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton",
          },
          type = "array",
        },
        columnProperties = {
          description = "Optional. Display properties for the columns in this table.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageColumnProperties",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageImage",
          description = "Optional. Image which should be displayed on the card.",
        },
        rows = {
          description = "Optional. Rows in this table of data.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageTableCardRow",
          },
          type = "array",
        },
        subtitle = {
          description = "Optional. Subtitle to the title.",
          type = "string",
        },
        title = {
          description = "Required. Title of the card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageTableCardCell = {
      description = "Cell of TableCardRow.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageTableCardCell",
      properties = {
        text = {
          description = "Required. Text in this cell.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageTableCardRow = {
      description = "Row of TableCard.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageTableCardRow",
      properties = {
        cells = {
          description = "Optional. List of cells that make up this row.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessageTableCardCell",
          },
          type = "array",
        },
        dividerAfter = {
          description = "Optional. Whether to add a visual divider after this row.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio = {
      description = "Plays audio from a file in Telephony Gateway.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio",
      properties = {
        audioUri = {
          description = "Required. URI to a Google Cloud Storage object containing the audio to play, e.g., \"gs://bucket/object\". The object must contain a single channel (mono) of linear PCM audio (2 bytes / sample) at 8kHz. This object must be readable by the `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` service account where is the number of the Telephony Gateway project (usually the same as the Dialogflow agent project). If the Google Cloud Storage bucket is in the Telephony Gateway project, this permission is added by default when enabling the Dialogflow V2 API. For audio from other sources, consider using the `TelephonySynthesizeSpeech` message with SSML.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech = {
      description = "Synthesizes speech and plays back the synthesized audio to the caller in Telephony Gateway. Telephony Gateway takes the synthesizer settings from `DetectIntentResponse.output_audio_config` which can either be set at request-level or can come from the agent-level synthesizer config.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech",
      properties = {
        ssml = {
          description = "The SSML to be synthesized. For more information, see [SSML](https://developers.google.com/actions/reference/ssml).",
          type = "string",
        },
        text = {
          description = "The raw text to be synthesized.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall = {
      description = "Transfers the call in Telephony Gateway.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall",
      properties = {
        phoneNumber = {
          description = "Required. The phone number to transfer the call to in [E.164 format](https://en.wikipedia.org/wiki/E.164). We currently only allow transferring to US numbers (+1xxxyyyzzzz).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentMessageText = {
      description = "The text response message.",
      id = "GoogleCloudDialogflowV2beta1IntentMessageText",
      properties = {
        text = {
          description = "Optional. The collection of the agent's responses.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentParameter = {
      description = "Represents intent parameters.",
      id = "GoogleCloudDialogflowV2beta1IntentParameter",
      properties = {
        defaultValue = {
          description = "Optional. The default value to use when the `value` yields an empty result. Default values can be extracted from contexts by using the following syntax: `#context_name.parameter_name`.",
          type = "string",
        },
        displayName = {
          description = "Required. The name of the parameter.",
          type = "string",
        },
        entityTypeDisplayName = {
          description = "Optional. The name of the entity type, prefixed with `@`, that describes values of the parameter. If the parameter is required, this must be provided.",
          type = "string",
        },
        isList = {
          description = "Optional. Indicates whether the parameter represents a list of values.",
          type = "boolean",
        },
        mandatory = {
          description = "Optional. Indicates whether the parameter is required. That is, whether the intent cannot be completed without collecting the parameter value.",
          type = "boolean",
        },
        name = {
          description = "The unique identifier of this parameter.",
          type = "string",
        },
        prompts = {
          description = "Optional. The collection of prompts that the agent can present to the user in order to collect a value for the parameter.",
          items = {
            type = "string",
          },
          type = "array",
        },
        value = {
          description = "Optional. The definition of the parameter value. It can be: - a constant string, - a parameter value defined as `$parameter_name`, - an original parameter value defined as `$parameter_name.original`, - a parameter value from some context defined as `#context_name.parameter_name`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentTrainingPhrase = {
      description = "Represents an example that the agent is trained on.",
      id = "GoogleCloudDialogflowV2beta1IntentTrainingPhrase",
      properties = {
        name = {
          description = "Output only. The unique identifier of this training phrase.",
          type = "string",
        },
        parts = {
          description = "Required. The ordered list of training phrase parts. The parts are concatenated in order to form the training phrase. Note: The API does not automatically annotate training phrases like the Dialogflow Console does. Note: Do not forget to include whitespace at part boundaries, so the training phrase is well formatted when the parts are concatenated. If the training phrase does not need to be annotated with parameters, you just need a single part with only the Part.text field set. If you want to annotate the training phrase, you must create multiple parts, where the fields of each part are populated in one of two ways: - `Part.text` is set to a part of the phrase that has no parameters. - `Part.text` is set to a part of the phrase that you want to annotate, and the `entity_type`, `alias`, and `user_defined` fields are all set.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart",
          },
          type = "array",
        },
        timesAddedCount = {
          description = "Optional. Indicates how many times this example was added to the intent. Each time a developer adds an existing sample by editing an intent or training, this counter is increased.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "Required. The type of the training phrase.",
          enum = {
            "TYPE_UNSPECIFIED",
            "EXAMPLE",
            "TEMPLATE",
          },
          enumDescriptions = {
            "Not specified. This value should never be used.",
            "Examples do not contain @-prefixed entity type names, but example parts can be annotated with entity types.",
            "Templates are not annotated with entity types, but they can contain @-prefixed entity type names as substrings. Note: Template mode has been deprecated. Example mode is the only supported way to create new training phrases. If you have existing training phrases in template mode, they will be removed during training and it can cause a drop in agent performance.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart = {
      description = "Represents a part of a training phrase.",
      id = "GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart",
      properties = {
        alias = {
          description = "Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase.",
          type = "string",
        },
        entityType = {
          description = "Optional. The entity type name prefixed with `@`. This field is required for annotated parts of the training phrase.",
          type = "string",
        },
        text = {
          description = "Required. The text for this part.",
          type = "string",
        },
        userDefined = {
          description = "Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1KnowledgeAnswers = {
      description = "Represents the result of querying a Knowledge base.",
      id = "GoogleCloudDialogflowV2beta1KnowledgeAnswers",
      properties = {
        answers = {
          description = "A list of answers from Knowledge Connector.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer = {
      description = "An answer from Knowledge Connector.",
      id = "GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer",
      properties = {
        answer = {
          description = "The piece of text from the `source` knowledge base document that answers this conversational query.",
          type = "string",
        },
        faqQuestion = {
          description = "The corresponding FAQ question if the answer was extracted from a FAQ Document, empty otherwise.",
          type = "string",
        },
        matchConfidence = {
          description = "The system's confidence score that this Knowledge answer is a good match for this conversational query. The range is from 0.0 (completely uncertain) to 1.0 (completely certain). Note: The confidence score is likely to vary somewhat (possibly even for identical requests), as the underlying model is under constant improvement. It may be deprecated in the future. We recommend using `match_confidence_level` which should be generally more stable.",
          format = "float",
          type = "number",
        },
        matchConfidenceLevel = {
          description = "The system's confidence level that this knowledge answer is a good match for this conversational query. NOTE: The confidence level for a given `` pair may change without notice, as it depends on models that are constantly being improved. However, it will change less frequently than the confidence score below, and should be preferred for referencing the quality of an answer.",
          enum = {
            "MATCH_CONFIDENCE_LEVEL_UNSPECIFIED",
            "LOW",
            "MEDIUM",
            "HIGH",
          },
          enumDescriptions = {
            "Not specified.",
            "Indicates that the confidence is low.",
            "Indicates our confidence is medium.",
            "Indicates our confidence is high.",
          },
          type = "string",
        },
        source = {
          description = "Indicates which Knowledge Document this answer was extracted from. Format: `projects//knowledgeBases//documents/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata = {
      description = "Metadata in google::longrunning::Operation for Knowledge operations.",
      id = "GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata",
      properties = {
        exportOperationMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1ExportOperationMetadata",
          description = "Metadata for the Export Data Operation such as the destination of export.",
        },
        knowledgeBase = {
          description = "The name of the knowledge base interacted with during the operation.",
          type = "string",
        },
        state = {
          description = "Required. Output only. The current state of this operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "State unspecified.",
            "The operation has been created.",
            "The operation is currently running.",
            "The operation is done, either cancelled or completed.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1Message = {
      description = "Represents a message posted into a conversation.",
      id = "GoogleCloudDialogflowV2beta1Message",
      properties = {
        content = {
          description = "Required. The message content.",
          type = "string",
        },
        createTime = {
          description = "Output only. The time when the message was created in Contact Center AI.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        languageCode = {
          description = "Optional. The message language. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: \"en-US\".",
          type = "string",
        },
        messageAnnotation = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1MessageAnnotation",
          description = "Output only. The annotation for the message.",
          readOnly = true,
        },
        name = {
          description = "Optional. The unique identifier of the message. Format: `projects//locations//conversations//messages/`.",
          type = "string",
        },
        participant = {
          description = "Output only. The participant that sends this message.",
          readOnly = true,
          type = "string",
        },
        participantRole = {
          description = "Output only. The role of the participant.",
          enum = {
            "ROLE_UNSPECIFIED",
            "HUMAN_AGENT",
            "AUTOMATED_AGENT",
            "END_USER",
          },
          enumDescriptions = {
            "Participant role not set.",
            "Participant is a human agent.",
            "Participant is an automated agent, such as a Dialogflow agent.",
            "Participant is an end user that has called or chatted with Dialogflow services.",
          },
          readOnly = true,
          type = "string",
        },
        sendTime = {
          description = "Optional. The time when the message was sent.",
          format = "google-datetime",
          type = "string",
        },
        sentimentAnalysis = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1SentimentAnalysisResult",
          description = "Output only. The sentiment analysis result for the message.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1MessageAnnotation = {
      description = "Represents the result of annotation for the message.",
      id = "GoogleCloudDialogflowV2beta1MessageAnnotation",
      properties = {
        containEntities = {
          description = "Required. Indicates whether the text message contains entities.",
          type = "boolean",
        },
        parts = {
          description = "Optional. The collection of annotated message parts ordered by their position in the message. You can recover the annotated message by concatenating [AnnotatedMessagePart.text].",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1AnnotatedMessagePart",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest = {
      description = "Represents the contents of the original request that was passed to the `[Streaming]DetectIntent` call.",
      id = "GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest",
      properties = {
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Optional. This field is set to the value of the `QueryParameters.payload` field passed in the request. Some integrations that query a Dialogflow agent may provide additional information in the payload. In particular, for the Dialogflow Phone Gateway integration, this field has the form: { \"telephony\": { \"caller_id\": \"+18558363987\" } } Note: The caller ID field (`caller_id`) will be redacted for Trial Edition agents and populated with the caller ID in [E.164 format](https://en.wikipedia.org/wiki/E.164) for Essentials Edition agents.",
          type = "object",
        },
        source = {
          description = "The source of this request, e.g., `google`, `facebook`, `slack`. It is set by Dialogflow-owned servers.",
          type = "string",
        },
        version = {
          description = "Optional. The version of the protocol used for this request. This field is AoG-specific.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1QueryResult = {
      description = "Represents the result of conversational query or event processing.",
      id = "GoogleCloudDialogflowV2beta1QueryResult",
      properties = {
        action = {
          description = "The action name from the matched intent.",
          type = "string",
        },
        allRequiredParamsPresent = {
          description = "This field is set to: - `false` if the matched intent has required parameters and not all of the required parameter values have been collected. - `true` if all required parameter values have been collected, or if the matched intent doesn't contain any required parameters.",
          type = "boolean",
        },
        cancelsSlotFilling = {
          description = "Indicates whether the conversational query triggers a cancellation for slot filling. For more information, see the [cancel slot filling documentation](https://cloud.google.com/dialogflow/es/docs/intents-actions-parameters#cancel).",
          type = "boolean",
        },
        diagnosticInfo = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Free-form diagnostic information for the associated detect intent request. The fields of this data can change without notice, so you should not write code that depends on its structure. The data may contain: - webhook call latency - webhook errors",
          type = "object",
        },
        fulfillmentMessages = {
          description = "The collection of rich messages to present to the user.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessage",
          },
          type = "array",
        },
        fulfillmentText = {
          description = "The text to be pronounced to the user or shown on the screen. Note: This is a legacy field, `fulfillment_messages` should be preferred.",
          type = "string",
        },
        intent = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1Intent",
          description = "The intent that matched the conversational query. Some, not all fields are filled in this message, including but not limited to: `name`, `display_name`, `end_interaction` and `is_fallback`.",
        },
        intentDetectionConfidence = {
          description = "The intent detection confidence. Values range from 0.0 (completely uncertain) to 1.0 (completely certain). This value is for informational purpose only and is only used to help match the best intent within the classification threshold. This value may change for the same end-user expression at any time due to a model retraining or change in implementation. If there are `multiple knowledge_answers` messages, this value is set to the greatest `knowledgeAnswers.match_confidence` value in the list.",
          format = "float",
          type = "number",
        },
        knowledgeAnswers = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1KnowledgeAnswers",
          description = "The result from Knowledge Connector (if any), ordered by decreasing `KnowledgeAnswers.match_confidence`.",
        },
        languageCode = {
          description = "The language that was triggered during intent detection. See [Language Support](https://cloud.google.com/dialogflow/docs/reference/language) for a list of the currently supported language codes.",
          type = "string",
        },
        outputContexts = {
          description = "The collection of output contexts. If applicable, `output_contexts.parameters` contains entries with name `.original` containing the original parameter values before the query.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1Context",
          },
          type = "array",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The collection of extracted parameters. Depending on your protocol or client library language, this is a map, associative array, symbol table, dictionary, or JSON object composed of a collection of (MapKey, MapValue) pairs: - MapKey type: string - MapKey value: parameter name - MapValue type: - If parameter's entity type is a composite entity: map - Else: depending on parameter value type, could be one of string, number, boolean, null, list or map - MapValue value: - If parameter's entity type is a composite entity: map from composite entity property names to property values - Else: parameter value",
          type = "object",
        },
        queryText = {
          description = "The original conversational query text: - If natural language text was provided as input, `query_text` contains a copy of the input. - If natural language speech audio was provided as input, `query_text` contains the speech recognition result. If speech recognizer produced multiple alternatives, a particular one is picked. - If automatic spell correction is enabled, `query_text` will contain the corrected user input.",
          type = "string",
        },
        sentimentAnalysisResult = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1SentimentAnalysisResult",
          description = "The sentiment analysis result, which depends on the `sentiment_analysis_request_config` specified in the request.",
        },
        speechRecognitionConfidence = {
          description = "The Speech recognition confidence between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. The default of 0.0 is a sentinel value indicating that confidence was not set. This field is not guaranteed to be accurate or set. In particular this field isn't set for StreamingDetectIntent since the streaming endpoint has separate confidence estimates per portion of the audio in StreamingRecognitionResult.",
          format = "float",
          type = "number",
        },
        webhookPayload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "If the query was fulfilled by a webhook call, this field is set to the value of the `payload` field returned in the webhook response.",
          type = "object",
        },
        webhookSource = {
          description = "If the query was fulfilled by a webhook call, this field is set to the value of the `source` field returned in the webhook response.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1Sentiment = {
      description = "The sentiment, such as positive/negative feeling or association, for a unit of analysis, such as the query text. See: https://cloud.google.com/natural-language/docs/basics#interpreting_sentiment_analysis_values for how to interpret the result.",
      id = "GoogleCloudDialogflowV2beta1Sentiment",
      properties = {
        magnitude = {
          description = "A non-negative number in the [0, +inf) range, which represents the absolute magnitude of sentiment, regardless of score (positive or negative).",
          format = "float",
          type = "number",
        },
        score = {
          description = "Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1SentimentAnalysisResult = {
      description = "The result of sentiment analysis. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral. For Participants.DetectIntent, it needs to be configured in DetectIntentRequest.query_params. For Participants.StreamingDetectIntent, it needs to be configured in StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent and Participants.StreamingAnalyzeContent, it needs to be configured in ConversationProfile.human_agent_assistant_config",
      id = "GoogleCloudDialogflowV2beta1SentimentAnalysisResult",
      properties = {
        queryTextSentiment = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1Sentiment",
          description = "The sentiment analysis result for `query_text`.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1SessionEntityType = {
      description = "A session represents a conversation between a Dialogflow agent and an end-user. You can create special entities, called session entities, during a session. Session entities can extend or replace custom entity types and only exist during the session that they were created for. All session data, including session entities, is stored by Dialogflow for 20 minutes. For more information, see the [session entity guide](https://cloud.google.com/dialogflow/docs/entities-session).",
      id = "GoogleCloudDialogflowV2beta1SessionEntityType",
      properties = {
        entities = {
          description = "Required. The collection of entities associated with this session entity type.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1EntityTypeEntity",
          },
          type = "array",
        },
        entityOverrideMode = {
          description = "Required. Indicates whether the additional data should override or supplement the custom entity type definition.",
          enum = {
            "ENTITY_OVERRIDE_MODE_UNSPECIFIED",
            "ENTITY_OVERRIDE_MODE_OVERRIDE",
            "ENTITY_OVERRIDE_MODE_SUPPLEMENT",
          },
          enumDescriptions = {
            "Not specified. This value should be never used.",
            "The collection of session entities overrides the collection of entities in the corresponding custom entity type.",
            "The collection of session entities extends the collection of entities in the corresponding custom entity type. Note: Even in this override mode calls to `ListSessionEntityTypes`, `GetSessionEntityType`, `CreateSessionEntityType` and `UpdateSessionEntityType` only return the additional entities added in this session entity type. If you want to get the supplemented list, please call EntityTypes.GetEntityType on the custom entity type and merge.",
          },
          type = "string",
        },
        name = {
          description = "Required. The unique identifier of this session entity type. Supported formats: - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/sessions//entityTypes/` - `projects//agent/environments//users//sessions//entityTypes/` - `projects//locations//agent/environments/ /users//sessions//entityTypes/` If `Location ID` is not specified we assume default 'us' location. If `Environment ID` is not specified, we assume default 'draft' environment. If `User ID` is not specified, we assume default '-' user. `` must be the display name of an existing entity type in the same agent that will be overridden or supplemented.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata = {
      description = "Metadata for a ConversationProfile.SetSuggestionFeatureConfig operation.",
      id = "GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata",
      properties = {
        conversationProfile = {
          description = "The resource name of the conversation profile. Format: `projects//locations//conversationProfiles/`",
          type = "string",
        },
        createTime = {
          description = "Timestamp whe the request was created. The time is measured on server side.",
          format = "google-datetime",
          type = "string",
        },
        participantRole = {
          description = "Required. The participant role to add or update the suggestion feature config. Only HUMAN_AGENT or END_USER can be used.",
          enum = {
            "ROLE_UNSPECIFIED",
            "HUMAN_AGENT",
            "AUTOMATED_AGENT",
            "END_USER",
          },
          enumDescriptions = {
            "Participant role not set.",
            "Participant is a human agent.",
            "Participant is an automated agent, such as a Dialogflow agent.",
            "Participant is an end user that has called or chatted with Dialogflow services.",
          },
          type = "string",
        },
        suggestionFeatureType = {
          description = "Required. The type of the suggestion feature to add or update.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ARTICLE_SUGGESTION",
            "FAQ",
            "SMART_REPLY",
            "CONVERSATION_SUMMARIZATION",
          },
          enumDescriptions = {
            "Unspecified feature type.",
            "Run article suggestion model for chat.",
            "Run FAQ model.",
            "Run smart reply model for chat.",
            "Run conversation summarization model for chat.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1SmartReplyAnswer = {
      description = "Represents a smart reply answer.",
      id = "GoogleCloudDialogflowV2beta1SmartReplyAnswer",
      properties = {
        answerRecord = {
          description = "The name of answer record, in the format of \"projects//locations//answerRecords/\"",
          type = "string",
        },
        confidence = {
          description = "Smart reply confidence. The system's confidence score that this reply is a good match for this conversation, as a value from 0.0 (completely uncertain) to 1.0 (completely certain).",
          format = "float",
          type = "number",
        },
        reply = {
          description = "The content of the reply.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1SuggestArticlesResponse = {
      description = "The response message for Participants.SuggestArticles.",
      id = "GoogleCloudDialogflowV2beta1SuggestArticlesResponse",
      properties = {
        articleAnswers = {
          description = "Output only. Articles ordered by score in descending order.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1ArticleAnswer",
          },
          type = "array",
        },
        contextSize = {
          description = "Number of messages prior to and including latest_message to compile the suggestion. It may be smaller than the SuggestArticlesResponse.context_size field in the request if there aren't that many messages in the conversation.",
          format = "int32",
          type = "integer",
        },
        latestMessage = {
          description = "The name of the latest conversation message used to compile suggestion for. Format: `projects//locations//conversations//messages/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse = {
      description = "The request message for Participants.SuggestFaqAnswers.",
      id = "GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse",
      properties = {
        contextSize = {
          description = "Number of messages prior to and including latest_message to compile the suggestion. It may be smaller than the SuggestFaqAnswersRequest.context_size field in the request if there aren't that many messages in the conversation.",
          format = "int32",
          type = "integer",
        },
        faqAnswers = {
          description = "Output only. Answers extracted from FAQ documents.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1FaqAnswer",
          },
          type = "array",
        },
        latestMessage = {
          description = "The name of the latest conversation message used to compile suggestion for. Format: `projects//locations//conversations//messages/`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse = {
      description = "The response message for Participants.SuggestSmartReplies.",
      id = "GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse",
      properties = {
        contextSize = {
          description = "Number of messages prior to and including latest_message to compile the suggestion. It may be smaller than the SuggestSmartRepliesRequest.context_size field in the request if there aren't that many messages in the conversation.",
          format = "int32",
          type = "integer",
        },
        latestMessage = {
          description = "The name of the latest conversation message used to compile suggestion for. Format: `projects//locations//conversations//messages/`.",
          type = "string",
        },
        smartReplyAnswers = {
          description = "Output only. Multiple reply options provided by smart reply service. The order is based on the rank of the model prediction. The maximum number of the returned replies is set in SmartReplyConfig.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1SmartReplyAnswer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1SuggestionResult = {
      description = "One response of different type of suggestion response which is used in the response of Participants.AnalyzeContent and Participants.AnalyzeContent, as well as HumanAgentAssistantEvent.",
      id = "GoogleCloudDialogflowV2beta1SuggestionResult",
      properties = {
        error = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Error status if the request failed.",
        },
        suggestArticlesResponse = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1SuggestArticlesResponse",
          description = "SuggestArticlesResponse if request is for ARTICLE_SUGGESTION.",
        },
        suggestFaqAnswersResponse = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse",
          description = "SuggestFaqAnswersResponse if request is for FAQ_ANSWER.",
        },
        suggestSmartRepliesResponse = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse",
          description = "SuggestSmartRepliesResponse if request is for SMART_REPLY.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1WebhookRequest = {
      description = "The request message for a webhook call.",
      id = "GoogleCloudDialogflowV2beta1WebhookRequest",
      properties = {
        alternativeQueryResults = {
          description = "Alternative query results from KnowledgeService.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1QueryResult",
          },
          type = "array",
        },
        originalDetectIntentRequest = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest",
          description = "Optional. The contents of the original request that was passed to `[Streaming]DetectIntent` call.",
        },
        queryResult = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1QueryResult",
          description = "The result of the conversational query or event processing. Contains the same value as `[Streaming]DetectIntentResponse.query_result`.",
        },
        responseId = {
          description = "The unique identifier of the response. Contains the same value as `[Streaming]DetectIntentResponse.response_id`.",
          type = "string",
        },
        session = {
          description = "The unique identifier of detectIntent request session. Can be used to identify end-user inside webhook implementation. Supported formats: - `projects//agent/sessions/, - `projects//locations//agent/sessions/`, - `projects//agent/environments//users//sessions/`, - `projects//locations//agent/environments//users//sessions/`,",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV2beta1WebhookResponse = {
      description = "The response message for a webhook call. This response is validated by the Dialogflow server. If validation fails, an error will be returned in the QueryResult.diagnostic_info field. Setting JSON fields to an empty value with the wrong type is a common error. To avoid this error: - Use `\"\"` for empty strings - Use `{}` or `null` for empty objects - Use `[]` or `null` for empty arrays For more information, see the [Protocol Buffers Language Guide](https://developers.google.com/protocol-buffers/docs/proto3#json).",
      id = "GoogleCloudDialogflowV2beta1WebhookResponse",
      properties = {
        endInteraction = {
          description = "Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.",
          type = "boolean",
        },
        followupEventInput = {
          ["$ref"] = "GoogleCloudDialogflowV2beta1EventInput",
          description = "Optional. Invokes the supplied events. When this field is set, Dialogflow ignores the `fulfillment_text`, `fulfillment_messages`, and `payload` fields.",
        },
        fulfillmentMessages = {
          description = "Optional. The rich response messages intended for the end-user. When provided, Dialogflow uses this field to populate QueryResult.fulfillment_messages sent to the integration or API caller.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1IntentMessage",
          },
          type = "array",
        },
        fulfillmentText = {
          description = "Optional. The text response message intended for the end-user. It is recommended to use `fulfillment_messages.text.text[0]` instead. When provided, Dialogflow uses this field to populate QueryResult.fulfillment_text sent to the integration or API caller.",
          type = "string",
        },
        liveAgentHandoff = {
          description = "Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.",
          type = "boolean",
        },
        outputContexts = {
          description = "Optional. The collection of output contexts that will overwrite currently active contexts for the session and reset their lifespans. When provided, Dialogflow uses this field to populate QueryResult.output_contexts sent to the integration or API caller.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1Context",
          },
          type = "array",
        },
        payload = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Optional. This field can be used to pass custom data from your webhook to the integration or API caller. Arbitrary JSON objects are supported. When provided, Dialogflow uses this field to populate QueryResult.webhook_payload sent to the integration or API caller. This field is also used by the [Google Assistant integration](https://cloud.google.com/dialogflow/docs/integrations/aog) for rich response messages. See the format definition at [Google Assistant Dialogflow webhook format](https://developers.google.com/assistant/actions/build/json/dialogflow-webhook-json)",
          type = "object",
        },
        sessionEntityTypes = {
          description = "Optional. Additional session entity types to replace or extend developer entity types with. The entity synonyms apply to all languages and persist for the session. Setting this data from a webhook overwrites the session entity types that have been set using `detectIntent`, `streamingDetectIntent` or SessionEntityType management methods.",
          items = {
            ["$ref"] = "GoogleCloudDialogflowV2beta1SessionEntityType",
          },
          type = "array",
        },
        source = {
          description = "Optional. A custom field used to identify the webhook source. Arbitrary strings are supported. When provided, Dialogflow uses this field to populate QueryResult.webhook_source sent to the integration or API caller.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1ConversationSignals = {
      description = "This message is used to hold all the Conversation Signals data, which will be converted to JSON and exported to BigQuery.",
      id = "GoogleCloudDialogflowV3alpha1ConversationSignals",
      properties = {
        turnSignals = {
          ["$ref"] = "GoogleCloudDialogflowV3alpha1TurnSignals",
          description = "Required. Turn signals for the current turn.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata = {
      description = "Metadata for CreateDocument operation.",
      id = "GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata = {
      description = "Metadata for DeleteDocument operation.",
      id = "GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata = {
      description = "Metadata in google::longrunning::Operation for Knowledge operations.",
      id = "GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata",
      properties = {
        state = {
          description = "Required. Output only. The current state of this operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "State unspecified.",
            "The operation has been created.",
            "The operation is currently running.",
            "The operation is done, either cancelled or completed.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata = {
      description = "Metadata for ImportDocuments operation.",
      id = "GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1ImportDocumentsResponse = {
      description = "Response message for Documents.ImportDocuments.",
      id = "GoogleCloudDialogflowV3alpha1ImportDocumentsResponse",
      properties = {
        warnings = {
          description = "Includes details about skipped documents or any other warnings.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata = {
      description = "Metadata for ReloadDocument operation.",
      id = "GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1TurnSignals = {
      description = "Collection of all signals that were extracted for a single turn of the conversation.",
      id = "GoogleCloudDialogflowV3alpha1TurnSignals",
      properties = {
        agentEscalated = {
          description = "Whether agent responded with LiveAgentHandoff fulfillment.",
          type = "boolean",
        },
        dtmfUsed = {
          description = "Whether user was using DTMF input.",
          type = "boolean",
        },
        failureReasons = {
          description = "Failure reasons of the turn.",
          items = {
            enum = {
              "FAILURE_REASON_UNSPECIFIED",
              "FAILED_INTENT",
              "FAILED_WEBHOOK",
            },
            enumDescriptions = {
              "Failure reason is not assigned.",
              "Whether NLU failed to recognize user intent.",
              "Whether webhook failed during the turn.",
            },
            type = "string",
          },
          type = "array",
        },
        noMatch = {
          description = "Whether NLU predicted NO_MATCH.",
          type = "boolean",
        },
        noUserInput = {
          description = "Whether user provided no input.",
          type = "boolean",
        },
        reachedEndPage = {
          description = "Whether turn resulted in End Session page.",
          type = "boolean",
        },
        triggeredAbandonmentEvent = {
          description = "Whether agent has triggered the event corresponding to user abandoning the conversation.",
          type = "boolean",
        },
        userEscalated = {
          description = "Whether user was specifically asking for a live agent.",
          type = "boolean",
        },
        webhookStatuses = {
          description = "Human-readable statuses of the webhooks triggered during this turn.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata = {
      description = "Metadata for UpdateDocument operation.",
      id = "GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata",
      properties = {
        genericMetadata = {
          ["$ref"] = "GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata",
          description = "The generic information of the operation.",
        },
      },
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
    GoogleTypeLatLng = {
      description = "An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.",
      id = "GoogleTypeLatLng",
      properties = {
        latitude = {
          description = "The latitude in degrees. It must be in the range [-90.0, +90.0].",
          format = "double",
          type = "number",
        },
        longitude = {
          description = "The longitude in degrees. It must be in the range [-180.0, +180.0].",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Dialogflow API",
  version = "v3",
  version_module = true,
}