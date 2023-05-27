return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/sdm.service"] = {
          description = "See and/or control the devices that you selected",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://smartdevicemanagement.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Smart Device Management",
  description = "Allow select enterprise partners to access, control, and manage Google and Nest devices programmatically.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/nest/device-access",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "smartdevicemanagement:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://smartdevicemanagement.mtls.googleapis.com/",
  name = "smartdevicemanagement",
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
    enterprises = {
      resources = {
        devices = {
          methods = {
            executeCommand = {
              description = "Executes a command to device managed by the enterprise.",
              flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}:executeCommand",
              httpMethod = "POST",
              id = "smartdevicemanagement.enterprises.devices.executeCommand",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the device requested. For example: \"enterprises/XYZ/devices/123\"",
                  location = "path",
                  pattern = "^enterprises/[^/]+/devices/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:executeCommand",
              request = {
                ["$ref"] = "GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest",
              },
              response = {
                ["$ref"] = "GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/sdm.service",
              },
            },
            get = {
              description = "Gets a device managed by the enterprise.",
              flatPath = "v1/enterprises/{enterprisesId}/devices/{devicesId}",
              httpMethod = "GET",
              id = "smartdevicemanagement.enterprises.devices.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the device requested. For example: \"enterprises/XYZ/devices/123\"",
                  location = "path",
                  pattern = "^enterprises/[^/]+/devices/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleHomeEnterpriseSdmV1Device",
              },
              scopes = {
                "https://www.googleapis.com/auth/sdm.service",
              },
            },
            list = {
              description = "Lists devices managed by the enterprise.",
              flatPath = "v1/enterprises/{enterprisesId}/devices",
              httpMethod = "GET",
              id = "smartdevicemanagement.enterprises.devices.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional filter to list devices. Filters can be done on: Device custom name (substring match): 'customName=wing'",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional requested page size. Server may return fewer devices than requested. If unspecified, server will pick an appropriate default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional token of the page to retrieve.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent enterprise to list devices under. E.g. \"enterprises/XYZ\".",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/devices",
              response = {
                ["$ref"] = "GoogleHomeEnterpriseSdmV1ListDevicesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/sdm.service",
              },
            },
          },
        },
        structures = {
          methods = {
            get = {
              description = "Gets a structure managed by the enterprise.",
              flatPath = "v1/enterprises/{enterprisesId}/structures/{structuresId}",
              httpMethod = "GET",
              id = "smartdevicemanagement.enterprises.structures.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the structure requested. For example: \"enterprises/XYZ/structures/ABC\".",
                  location = "path",
                  pattern = "^enterprises/[^/]+/structures/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleHomeEnterpriseSdmV1Structure",
              },
              scopes = {
                "https://www.googleapis.com/auth/sdm.service",
              },
            },
            list = {
              description = "Lists structures managed by the enterprise.",
              flatPath = "v1/enterprises/{enterprisesId}/structures",
              httpMethod = "GET",
              id = "smartdevicemanagement.enterprises.structures.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional filter to list structures.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. Server may return fewer structures than requested. If unspecified, server will pick an appropriate default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The token of the page to retrieve.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent enterprise to list structures under. E.g. \"enterprises/XYZ\".",
                  location = "path",
                  pattern = "^enterprises/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/structures",
              response = {
                ["$ref"] = "GoogleHomeEnterpriseSdmV1ListStructuresResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/sdm.service",
              },
            },
          },
          resources = {
            rooms = {
              methods = {
                get = {
                  description = "Gets a room managed by the enterprise.",
                  flatPath = "v1/enterprises/{enterprisesId}/structures/{structuresId}/rooms/{roomsId}",
                  httpMethod = "GET",
                  id = "smartdevicemanagement.enterprises.structures.rooms.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the room requested. For example: \"enterprises/XYZ/structures/ABC/rooms/123\".",
                      location = "path",
                      pattern = "^enterprises/[^/]+/structures/[^/]+/rooms/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleHomeEnterpriseSdmV1Room",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/sdm.service",
                  },
                },
                list = {
                  description = "Lists rooms managed by the enterprise.",
                  flatPath = "v1/enterprises/{enterprisesId}/structures/{structuresId}/rooms",
                  httpMethod = "GET",
                  id = "smartdevicemanagement.enterprises.structures.rooms.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Requested page size. Server may return fewer rooms than requested. If unspecified, server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The token of the page to retrieve.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The parent resource name of the rooms requested. For example: \"enterprises/XYZ/structures/ABC\".",
                      location = "path",
                      pattern = "^enterprises/[^/]+/structures/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/rooms",
                  response = {
                    ["$ref"] = "GoogleHomeEnterpriseSdmV1ListRoomsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/sdm.service",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://smartdevicemanagement.googleapis.com/",
  schemas = {
    GoogleHomeEnterpriseSdmV1Device = {
      description = "Device resource represents an instance of enterprise managed device in the property.",
      id = "GoogleHomeEnterpriseSdmV1Device",
      properties = {
        name = {
          description = "Required. The resource name of the device. For example: \"enterprises/XYZ/devices/123\".",
          type = "string",
        },
        parentRelations = {
          description = "Assignee details of the device.",
          items = {
            ["$ref"] = "GoogleHomeEnterpriseSdmV1ParentRelation",
          },
          type = "array",
        },
        traits = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Output only. Device traits.",
          readOnly = true,
          type = "object",
        },
        type = {
          description = "Output only. Type of the device for general display purposes. For example: \"THERMOSTAT\". The device type should not be used to deduce or infer functionality of the actual device it is assigned to. Instead, use the returned traits for the device.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest = {
      description = "Request message for SmartDeviceManagementService.ExecuteDeviceCommand",
      id = "GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandRequest",
      properties = {
        command = {
          description = "The command name to execute, represented by the fully qualified protobuf message name.",
          type = "string",
        },
        params = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The command message to execute, represented as a Struct.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse = {
      description = "Response message for SmartDeviceManagementService.ExecuteDeviceCommand",
      id = "GoogleHomeEnterpriseSdmV1ExecuteDeviceCommandResponse",
      properties = {
        results = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The results of executing the command.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleHomeEnterpriseSdmV1ListDevicesResponse = {
      description = "Response message for SmartDeviceManagementService.ListDevices",
      id = "GoogleHomeEnterpriseSdmV1ListDevicesResponse",
      properties = {
        devices = {
          description = "The list of devices.",
          items = {
            ["$ref"] = "GoogleHomeEnterpriseSdmV1Device",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleHomeEnterpriseSdmV1ListRoomsResponse = {
      description = "Response message for SmartDeviceManagementService.ListRooms",
      id = "GoogleHomeEnterpriseSdmV1ListRoomsResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        rooms = {
          description = "The list of rooms.",
          items = {
            ["$ref"] = "GoogleHomeEnterpriseSdmV1Room",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleHomeEnterpriseSdmV1ListStructuresResponse = {
      description = "Response message for SmartDeviceManagementService.ListStructures",
      id = "GoogleHomeEnterpriseSdmV1ListStructuresResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        structures = {
          description = "The list of structures.",
          items = {
            ["$ref"] = "GoogleHomeEnterpriseSdmV1Structure",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleHomeEnterpriseSdmV1ParentRelation = {
      description = "Represents device relationships, for instance, structure/room to which the device is assigned to.",
      id = "GoogleHomeEnterpriseSdmV1ParentRelation",
      properties = {
        displayName = {
          description = "Output only. The custom name of the relation -- e.g., structure/room where the device is assigned to.",
          readOnly = true,
          type = "string",
        },
        parent = {
          description = "Output only. The name of the relation -- e.g., structure/room where the device is assigned to. For example: \"enterprises/XYZ/structures/ABC\" or \"enterprises/XYZ/structures/ABC/rooms/123\"",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleHomeEnterpriseSdmV1Room = {
      description = "Room resource represents an instance of sub-space within a structure such as rooms in a hotel suite or rental apartment.",
      id = "GoogleHomeEnterpriseSdmV1Room",
      properties = {
        name = {
          description = "Output only. The resource name of the room. For example: \"enterprises/XYZ/structures/ABC/rooms/123\".",
          readOnly = true,
          type = "string",
        },
        traits = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Room traits.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleHomeEnterpriseSdmV1Structure = {
      description = "Structure resource represents an instance of enterprise managed home or hotel room.",
      id = "GoogleHomeEnterpriseSdmV1Structure",
      properties = {
        name = {
          description = "Output only. The resource name of the structure. For example: \"enterprises/XYZ/structures/ABC\".",
          readOnly = true,
          type = "string",
        },
        traits = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Structure traits.",
          type = "object",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Smart Device Management API",
  version = "v1",
  version_module = true,
}
