return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloudiot"] = {
          description = "Register and manage devices in the Google Cloud IoT service",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudiot.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Iot",
  description = "Registers and manages IoT (Internet of Things) devices that connect to the Google Cloud Platform. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/iot",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudiot:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudiot.mtls.googleapis.com/",
  name = "cloudiot",
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
          resources = {
            registries = {
              methods = {
                bindDeviceToGateway = {
                  description = "Associates the device with the gateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}:bindDeviceToGateway",
                  httpMethod = "POST",
                  id = "cloudiot.projects.locations.registries.bindDeviceToGateway",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the registry. For example, `projects/example-project/locations/us-central1/registries/my-registry`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:bindDeviceToGateway",
                  request = {
                    ["$ref"] = "BindDeviceToGatewayRequest",
                  },
                  response = {
                    ["$ref"] = "BindDeviceToGatewayResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                create = {
                  description = "Creates a device registry that contains devices.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries",
                  httpMethod = "POST",
                  id = "cloudiot.projects.locations.registries.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project and cloud region where this device registry must be created. For example, `projects/example-project/locations/us-central1`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/registries",
                  request = {
                    ["$ref"] = "DeviceRegistry",
                  },
                  response = {
                    ["$ref"] = "DeviceRegistry",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                delete = {
                  description = "Deletes a device registry configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}",
                  httpMethod = "DELETE",
                  id = "cloudiot.projects.locations.registries.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the device registry. For example, `projects/example-project/locations/us-central1/registries/my-registry`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                get = {
                  description = "Gets a device registry configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}",
                  httpMethod = "GET",
                  id = "cloudiot.projects.locations.registries.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the device registry. For example, `projects/example-project/locations/us-central1/registries/my-registry`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "DeviceRegistry",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "cloudiot.projects.locations.registries.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                list = {
                  description = "Lists device registries.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries",
                  httpMethod = "GET",
                  id = "cloudiot.projects.locations.registries.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of registries to return in the response. If this value is zero, the service will select a default size. A call may return fewer objects than requested. A non-empty `next_page_token` in the response indicates that more data is available.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListDeviceRegistriesResponse`; indicates that this is a continuation of a prior `ListDeviceRegistries` call and the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and cloud region path. For example, `projects/example-project/locations/us-central1`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/registries",
                  response = {
                    ["$ref"] = "ListDeviceRegistriesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                patch = {
                  description = "Updates a device registry configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}",
                  httpMethod = "PATCH",
                  id = "cloudiot.projects.locations.registries.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource path name. For example, `projects/example-project/locations/us-central1/registries/my-registry`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Only updates the `device_registry` fields indicated by this mask. The field mask must not be empty, and it must not contain fields that are immutable or only set by the server. Mutable top-level fields: `event_notification_config`, `http_config`, `mqtt_config`, and `state_notification_config`.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "DeviceRegistry",
                  },
                  response = {
                    ["$ref"] = "DeviceRegistry",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "cloudiot.projects.locations.registries.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "cloudiot.projects.locations.registries.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
                unbindDeviceFromGateway = {
                  description = "Deletes the association between the device and the gateway.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}:unbindDeviceFromGateway",
                  httpMethod = "POST",
                  id = "cloudiot.projects.locations.registries.unbindDeviceFromGateway",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the registry. For example, `projects/example-project/locations/us-central1/registries/my-registry`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}:unbindDeviceFromGateway",
                  request = {
                    ["$ref"] = "UnbindDeviceFromGatewayRequest",
                  },
                  response = {
                    ["$ref"] = "UnbindDeviceFromGatewayResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloudiot",
                  },
                },
              },
              resources = {
                devices = {
                  methods = {
                    create = {
                      description = "Creates a device in a device registry.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices",
                      httpMethod = "POST",
                      id = "cloudiot.projects.locations.registries.devices.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The name of the device registry where this device should be created. For example, `projects/example-project/locations/us-central1/registries/my-registry`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/devices",
                      request = {
                        ["$ref"] = "Device",
                      },
                      response = {
                        ["$ref"] = "Device",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                    delete = {
                      description = "Deletes a device.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices/{devicesId}",
                      httpMethod = "DELETE",
                      id = "cloudiot.projects.locations.registries.devices.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the device. For example, `projects/p0/locations/us-central1/registries/registry0/devices/device0` or `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                    get = {
                      description = "Gets details about a device.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices/{devicesId}",
                      httpMethod = "GET",
                      id = "cloudiot.projects.locations.registries.devices.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        fieldMask = {
                          description = "The fields of the `Device` resource to be returned in the response. If the field mask is unset or empty, all fields are returned. Fields have to be provided in snake_case format, for example: `last_heartbeat_time`.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Required. The name of the device. For example, `projects/p0/locations/us-central1/registries/registry0/devices/device0` or `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Device",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                    list = {
                      description = "List devices in a device registry.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices",
                      httpMethod = "GET",
                      id = "cloudiot.projects.locations.registries.devices.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        deviceIds = {
                          description = "A list of device string IDs. For example, `['device0', 'device12']`. If empty, this field is ignored. Maximum IDs: 10,000",
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                        deviceNumIds = {
                          description = "A list of device numeric IDs. If empty, this field is ignored. Maximum IDs: 10,000.",
                          format = "uint64",
                          location = "query",
                          repeated = true,
                          type = "string",
                        },
                        fieldMask = {
                          description = "The fields of the `Device` resource to be returned in the response. The fields `id` and `num_id` are always returned, along with any other fields specified in snake_case format, for example: `last_heartbeat_time`.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                        ["gatewayListOptions.associationsDeviceId"] = {
                          description = "If set, returns only the gateways with which the specified device is associated. The device ID can be numeric (`num_id`) or the user-defined string (`id`). For example, if `456` is specified, returns only the gateways to which the device with `num_id` 456 is bound.",
                          location = "query",
                          type = "string",
                        },
                        ["gatewayListOptions.associationsGatewayId"] = {
                          description = "If set, only devices associated with the specified gateway are returned. The gateway ID can be numeric (`num_id`) or the user-defined string (`id`). For example, if `123` is specified, only devices bound to the gateway with `num_id` 123 are returned.",
                          location = "query",
                          type = "string",
                        },
                        ["gatewayListOptions.gatewayType"] = {
                          description = "If `GATEWAY` is specified, only gateways are returned. If `NON_GATEWAY` is specified, only non-gateway devices are returned. If `GATEWAY_TYPE_UNSPECIFIED` is specified, all devices are returned.",
                          enum = {
                            "GATEWAY_TYPE_UNSPECIFIED",
                            "GATEWAY",
                            "NON_GATEWAY",
                          },
                          enumDescriptions = {
                            "If unspecified, the device is considered a non-gateway device.",
                            "The device is a gateway.",
                            "The device is not a gateway.",
                          },
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of devices to return in the response. If this value is zero, the service will select a default size. A call may return fewer objects than requested. A non-empty `next_page_token` in the response indicates that more data is available.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The value returned by the last `ListDevicesResponse`; indicates that this is a continuation of a prior `ListDevices` call and the system should return the next page of data.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The device registry path. Required. For example, `projects/my-project/locations/us-central1/registries/my-registry`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/devices",
                      response = {
                        ["$ref"] = "ListDevicesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                    modifyCloudToDeviceConfig = {
                      description = "Modifies the configuration for the device, which is eventually sent from the Cloud IoT Core servers. Returns the modified configuration version and its metadata.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices/{devicesId}:modifyCloudToDeviceConfig",
                      httpMethod = "POST",
                      id = "cloudiot.projects.locations.registries.devices.modifyCloudToDeviceConfig",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the device. For example, `projects/p0/locations/us-central1/registries/registry0/devices/device0` or `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:modifyCloudToDeviceConfig",
                      request = {
                        ["$ref"] = "ModifyCloudToDeviceConfigRequest",
                      },
                      response = {
                        ["$ref"] = "DeviceConfig",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                    patch = {
                      description = "Updates a device.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices/{devicesId}",
                      httpMethod = "PATCH",
                      id = "cloudiot.projects.locations.registries.devices.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Only updates the `device` fields indicated by this mask. The field mask must not be empty, and it must not contain fields that are immutable or only set by the server. Mutable top-level fields: `credentials`, `blocked`, and `metadata`",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Device",
                      },
                      response = {
                        ["$ref"] = "Device",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                    sendCommandToDevice = {
                      description = "Sends a command to the specified device. In order for a device to be able to receive commands, it must: 1) be connected to Cloud IoT Core using the MQTT protocol, and 2) be subscribed to the group of MQTT topics specified by /devices/{device-id}/commands/#. This subscription will receive commands at the top-level topic /devices/{device-id}/commands as well as commands for subfolders, like /devices/{device-id}/commands/subfolder. Note that subscribing to specific subfolders is not supported. If the command could not be delivered to the device, this method will return an error; in particular, if the device is not subscribed, this method will return FAILED_PRECONDITION. Otherwise, this method will return OK. If the subscription is QoS 1, at least once delivery will be guaranteed; for QoS 0, no acknowledgment will be expected from the device.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices/{devicesId}:sendCommandToDevice",
                      httpMethod = "POST",
                      id = "cloudiot.projects.locations.registries.devices.sendCommandToDevice",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the device. For example, `projects/p0/locations/us-central1/registries/registry0/devices/device0` or `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:sendCommandToDevice",
                      request = {
                        ["$ref"] = "SendCommandToDeviceRequest",
                      },
                      response = {
                        ["$ref"] = "SendCommandToDeviceResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                  },
                  resources = {
                    configVersions = {
                      methods = {
                        list = {
                          description = "Lists the last few versions of the device configuration in descending order (i.e.: newest first).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices/{devicesId}/configVersions",
                          httpMethod = "GET",
                          id = "cloudiot.projects.locations.registries.devices.configVersions.list",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the device. For example, `projects/p0/locations/us-central1/registries/registry0/devices/device0` or `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            numVersions = {
                              description = "The number of versions to list. Versions are listed in decreasing order of the version number. The maximum number of versions retained is 10. If this value is zero, it will return all the versions available.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                          },
                          path = "v1/{+name}/configVersions",
                          response = {
                            ["$ref"] = "ListDeviceConfigVersionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudiot",
                          },
                        },
                      },
                    },
                    states = {
                      methods = {
                        list = {
                          description = "Lists the last few versions of the device state in descending order (i.e.: newest first).",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/devices/{devicesId}/states",
                          httpMethod = "GET",
                          id = "cloudiot.projects.locations.registries.devices.states.list",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the device. For example, `projects/p0/locations/us-central1/registries/registry0/devices/device0` or `projects/p0/locations/us-central1/registries/registry0/devices/{num_id}`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/devices/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            numStates = {
                              description = "The number of states to list. States are listed in descending order of update time. The maximum number of states retained is 10. If this value is zero, it will return all the states available.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                          },
                          path = "v1/{+name}/states",
                          response = {
                            ["$ref"] = "ListDeviceStatesResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudiot",
                          },
                        },
                      },
                    },
                  },
                },
                groups = {
                  methods = {
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/groups/{groupsId}:getIamPolicy",
                      httpMethod = "POST",
                      id = "cloudiot.projects.locations.registries.groups.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/groups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      request = {
                        ["$ref"] = "GetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/groups/{groupsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "cloudiot.projects.locations.registries.groups.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/groups/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/groups/{groupsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "cloudiot.projects.locations.registries.groups.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/groups/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloudiot",
                      },
                    },
                  },
                  resources = {
                    devices = {
                      methods = {
                        list = {
                          description = "List devices in a device registry.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/registries/{registriesId}/groups/{groupsId}/devices",
                          httpMethod = "GET",
                          id = "cloudiot.projects.locations.registries.groups.devices.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            deviceIds = {
                              description = "A list of device string IDs. For example, `['device0', 'device12']`. If empty, this field is ignored. Maximum IDs: 10,000",
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                            deviceNumIds = {
                              description = "A list of device numeric IDs. If empty, this field is ignored. Maximum IDs: 10,000.",
                              format = "uint64",
                              location = "query",
                              repeated = true,
                              type = "string",
                            },
                            fieldMask = {
                              description = "The fields of the `Device` resource to be returned in the response. The fields `id` and `num_id` are always returned, along with any other fields specified in snake_case format, for example: `last_heartbeat_time`.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                            ["gatewayListOptions.associationsDeviceId"] = {
                              description = "If set, returns only the gateways with which the specified device is associated. The device ID can be numeric (`num_id`) or the user-defined string (`id`). For example, if `456` is specified, returns only the gateways to which the device with `num_id` 456 is bound.",
                              location = "query",
                              type = "string",
                            },
                            ["gatewayListOptions.associationsGatewayId"] = {
                              description = "If set, only devices associated with the specified gateway are returned. The gateway ID can be numeric (`num_id`) or the user-defined string (`id`). For example, if `123` is specified, only devices bound to the gateway with `num_id` 123 are returned.",
                              location = "query",
                              type = "string",
                            },
                            ["gatewayListOptions.gatewayType"] = {
                              description = "If `GATEWAY` is specified, only gateways are returned. If `NON_GATEWAY` is specified, only non-gateway devices are returned. If `GATEWAY_TYPE_UNSPECIFIED` is specified, all devices are returned.",
                              enum = {
                                "GATEWAY_TYPE_UNSPECIFIED",
                                "GATEWAY",
                                "NON_GATEWAY",
                              },
                              enumDescriptions = {
                                "If unspecified, the device is considered a non-gateway device.",
                                "The device is a gateway.",
                                "The device is not a gateway.",
                              },
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of devices to return in the response. If this value is zero, the service will select a default size. A call may return fewer objects than requested. A non-empty `next_page_token` in the response indicates that more data is available.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The value returned by the last `ListDevicesResponse`; indicates that this is a continuation of a prior `ListDevices` call and the system should return the next page of data.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The device registry path. Required. For example, `projects/my-project/locations/us-central1/registries/my-registry`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/registries/[^/]+/groups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/devices",
                          response = {
                            ["$ref"] = "ListDevicesResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloudiot",
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
    },
  },
  revision = "20230102",
  rootUrl = "https://cloudiot.googleapis.com/",
  schemas = {
    BindDeviceToGatewayRequest = {
      description = "Request for `BindDeviceToGateway`.",
      id = "BindDeviceToGatewayRequest",
      properties = {
        deviceId = {
          description = "Required. The device to associate with the specified gateway. The value of `device_id` can be either the device numeric ID or the user-defined device identifier.",
          type = "string",
        },
        gatewayId = {
          description = "Required. The value of `gateway_id` can be either the device numeric ID or the user-defined device identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    BindDeviceToGatewayResponse = {
      description = "Response for `BindDeviceToGateway`.",
      id = "BindDeviceToGatewayResponse",
      properties = {},
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
    Device = {
      description = "The device resource.",
      id = "Device",
      properties = {
        blocked = {
          description = "If a device is blocked, connections or requests from this device will fail. Can be used to temporarily prevent the device from connecting if, for example, the sensor is generating bad data and needs maintenance.",
          type = "boolean",
        },
        config = {
          ["$ref"] = "DeviceConfig",
          description = "The most recent device configuration, which is eventually sent from Cloud IoT Core to the device. If not present on creation, the configuration will be initialized with an empty payload and version value of `1`. To update this field after creation, use the `DeviceManager.ModifyCloudToDeviceConfig` method.",
        },
        credentials = {
          description = "The credentials used to authenticate this device. To allow credential rotation without interruption, multiple device credentials can be bound to this device. No more than 3 credentials can be bound to a single device at a time. When new credentials are added to a device, they are verified against the registry credentials. For details, see the description of the `DeviceRegistry.credentials` field.",
          items = {
            ["$ref"] = "DeviceCredential",
          },
          type = "array",
        },
        gatewayConfig = {
          ["$ref"] = "GatewayConfig",
          description = "Gateway-related configuration and state.",
        },
        id = {
          description = "The user-defined device identifier. The device ID must be unique within a device registry.",
          type = "string",
        },
        lastConfigAckTime = {
          description = "[Output only] The last time a cloud-to-device config version acknowledgment was received from the device. This field is only for configurations sent through MQTT.",
          format = "google-datetime",
          type = "string",
        },
        lastConfigSendTime = {
          description = "[Output only] The last time a cloud-to-device config version was sent to the device.",
          format = "google-datetime",
          type = "string",
        },
        lastErrorStatus = {
          ["$ref"] = "Status",
          description = "[Output only] The error message of the most recent error, such as a failure to publish to Cloud Pub/Sub. 'last_error_time' is the timestamp of this field. If no errors have occurred, this field has an empty message and the status code 0 == OK. Otherwise, this field is expected to have a status code other than OK.",
        },
        lastErrorTime = {
          description = "[Output only] The time the most recent error occurred, such as a failure to publish to Cloud Pub/Sub. This field is the timestamp of 'last_error_status'.",
          format = "google-datetime",
          type = "string",
        },
        lastEventTime = {
          description = "[Output only] The last time a telemetry event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.",
          format = "google-datetime",
          type = "string",
        },
        lastHeartbeatTime = {
          description = "[Output only] The last time an MQTT `PINGREQ` was received. This field applies only to devices connecting through MQTT. MQTT clients usually only send `PINGREQ` messages if the connection is idle, and no other messages have been sent. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.",
          format = "google-datetime",
          type = "string",
        },
        lastStateTime = {
          description = "[Output only] The last time a state event was received. Timestamps are periodically collected and written to storage; they may be stale by a few minutes.",
          format = "google-datetime",
          type = "string",
        },
        logLevel = {
          description = "**Beta Feature** The logging verbosity for device activity. If unspecified, DeviceRegistry.log_level will be used.",
          enum = {
            "LOG_LEVEL_UNSPECIFIED",
            "NONE",
            "ERROR",
            "INFO",
            "DEBUG",
          },
          enumDescriptions = {
            "No logging specified. If not specified, logging will be disabled.",
            "Disables logging.",
            "Error events will be logged.",
            "Informational events will be logged, such as connections and disconnections.",
            "All events will be logged.",
          },
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "The metadata key-value pairs assigned to the device. This metadata is not interpreted or indexed by Cloud IoT Core. It can be used to add contextual information for the device. Keys must conform to the regular expression a-zA-Z+ and be less than 128 bytes in length. Values are free-form strings. Each value must be less than or equal to 32 KB in size. The total size of all keys and values must be less than 256 KB, and the maximum number of key-value pairs is 500.",
          type = "object",
        },
        name = {
          description = "The resource path name. For example, `projects/p1/locations/us-central1/registries/registry0/devices/dev0` or `projects/p1/locations/us-central1/registries/registry0/devices/{num_id}`. When `name` is populated as a response from the service, it always ends in the device numeric ID.",
          type = "string",
        },
        numId = {
          description = "[Output only] A server-defined unique numeric ID for the device. This is a more compact way to identify devices, and it is globally unique.",
          format = "uint64",
          type = "string",
        },
        state = {
          ["$ref"] = "DeviceState",
          description = "[Output only] The state most recently received from the device. If no state has been reported, this field is not present.",
        },
      },
      type = "object",
    },
    DeviceConfig = {
      description = "The device configuration. Eventually delivered to devices.",
      id = "DeviceConfig",
      properties = {
        binaryData = {
          description = "The device configuration data.",
          format = "byte",
          type = "string",
        },
        cloudUpdateTime = {
          description = "[Output only] The time at which this configuration version was updated in Cloud IoT Core. This timestamp is set by the server.",
          format = "google-datetime",
          type = "string",
        },
        deviceAckTime = {
          description = "[Output only] The time at which Cloud IoT Core received the acknowledgment from the device, indicating that the device has received this configuration version. If this field is not present, the device has not yet acknowledged that it received this version. Note that when the config was sent to the device, many config versions may have been available in Cloud IoT Core while the device was disconnected, and on connection, only the latest version is sent to the device. Some versions may never be sent to the device, and therefore are never acknowledged. This timestamp is set by Cloud IoT Core.",
          format = "google-datetime",
          type = "string",
        },
        version = {
          description = "[Output only] The version of this update. The version number is assigned by the server, and is always greater than 0 after device creation. The version must be 0 on the `CreateDevice` request if a `config` is specified; the response of `CreateDevice` will always have a value of 1.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceCredential = {
      description = "A server-stored device credential used for authentication.",
      id = "DeviceCredential",
      properties = {
        expirationTime = {
          description = "[Optional] The time at which this credential becomes invalid. This credential will be ignored for new client authentication requests after this timestamp; however, it will not be automatically deleted.",
          format = "google-datetime",
          type = "string",
        },
        publicKey = {
          ["$ref"] = "PublicKeyCredential",
          description = "A public key used to verify the signature of JSON Web Tokens (JWTs). When adding a new device credential, either via device creation or via modifications, this public key credential may be required to be signed by one of the registry level certificates. More specifically, if the registry contains at least one certificate, any new device credential must be signed by one of the registry certificates. As a result, when the registry contains certificates, only X.509 certificates are accepted as device credentials. However, if the registry does not contain a certificate, self-signed certificates and public keys will be accepted. New device credentials must be different from every registry-level certificate.",
        },
      },
      type = "object",
    },
    DeviceRegistry = {
      description = "A container for a group of devices.",
      id = "DeviceRegistry",
      properties = {
        credentials = {
          description = "The credentials used to verify the device credentials. No more than 10 credentials can be bound to a single registry at a time. The verification process occurs at the time of device creation or update. If this field is empty, no verification is performed. Otherwise, the credentials of a newly created device or added credentials of an updated device should be signed with one of these registry credentials. Note, however, that existing devices will never be affected by modifications to this list of credentials: after a device has been successfully created in a registry, it should be able to connect even if its registry credentials are revoked, deleted, or modified.",
          items = {
            ["$ref"] = "RegistryCredential",
          },
          type = "array",
        },
        eventNotificationConfigs = {
          description = "The configuration for notification of telemetry events received from the device. All telemetry events that were successfully published by the device and acknowledged by Cloud IoT Core are guaranteed to be delivered to Cloud Pub/Sub. If multiple configurations match a message, only the first matching configuration is used. If you try to publish a device telemetry event using MQTT without specifying a Cloud Pub/Sub topic for the device's registry, the connection closes automatically. If you try to do so using an HTTP connection, an error is returned. Up to 10 configurations may be provided.",
          items = {
            ["$ref"] = "EventNotificationConfig",
          },
          type = "array",
        },
        httpConfig = {
          ["$ref"] = "HttpConfig",
          description = "The DeviceService (HTTP) configuration for this device registry.",
        },
        id = {
          description = "The identifier of this device registry. For example, `myRegistry`.",
          type = "string",
        },
        logLevel = {
          description = "**Beta Feature** The default logging verbosity for activity from devices in this registry. The verbosity level can be overridden by Device.log_level.",
          enum = {
            "LOG_LEVEL_UNSPECIFIED",
            "NONE",
            "ERROR",
            "INFO",
            "DEBUG",
          },
          enumDescriptions = {
            "No logging specified. If not specified, logging will be disabled.",
            "Disables logging.",
            "Error events will be logged.",
            "Informational events will be logged, such as connections and disconnections.",
            "All events will be logged.",
          },
          type = "string",
        },
        mqttConfig = {
          ["$ref"] = "MqttConfig",
          description = "The MQTT configuration for this device registry.",
        },
        name = {
          description = "The resource path name. For example, `projects/example-project/locations/us-central1/registries/my-registry`.",
          type = "string",
        },
        stateNotificationConfig = {
          ["$ref"] = "StateNotificationConfig",
          description = "The configuration for notification of new states received from the device. State updates are guaranteed to be stored in the state history, but notifications to Cloud Pub/Sub are not guaranteed. For example, if permissions are misconfigured or the specified topic doesn't exist, no notification will be published but the state will still be stored in Cloud IoT Core.",
        },
      },
      type = "object",
    },
    DeviceState = {
      description = "The device state, as reported by the device.",
      id = "DeviceState",
      properties = {
        binaryData = {
          description = "The device state data.",
          format = "byte",
          type = "string",
        },
        updateTime = {
          description = "[Output only] The time at which this state version was updated in Cloud IoT Core.",
          format = "google-datetime",
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
    EventNotificationConfig = {
      description = "The configuration for forwarding telemetry events.",
      id = "EventNotificationConfig",
      properties = {
        pubsubTopicName = {
          description = "A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.",
          type = "string",
        },
        subfolderMatches = {
          description = "If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading '/' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.",
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
    GatewayConfig = {
      description = "Gateway-related configuration and state.",
      id = "GatewayConfig",
      properties = {
        gatewayAuthMethod = {
          description = "Indicates how to authorize and/or authenticate devices to access the gateway.",
          enum = {
            "GATEWAY_AUTH_METHOD_UNSPECIFIED",
            "ASSOCIATION_ONLY",
            "DEVICE_AUTH_TOKEN_ONLY",
            "ASSOCIATION_AND_DEVICE_AUTH_TOKEN",
          },
          enumDescriptions = {
            "No authentication/authorization method specified. No devices are allowed to access the gateway.",
            "The device is authenticated through the gateway association only. Device credentials are ignored even if provided.",
            "The device is authenticated through its own credentials. Gateway association is not checked.",
            "The device is authenticated through both device credentials and gateway association. The device must be bound to the gateway and must provide its own credentials.",
          },
          type = "string",
        },
        gatewayType = {
          description = "Indicates whether the device is a gateway.",
          enum = {
            "GATEWAY_TYPE_UNSPECIFIED",
            "GATEWAY",
            "NON_GATEWAY",
          },
          enumDescriptions = {
            "If unspecified, the device is considered a non-gateway device.",
            "The device is a gateway.",
            "The device is not a gateway.",
          },
          type = "string",
        },
        lastAccessedGatewayId = {
          description = "[Output only] The ID of the gateway the device accessed most recently.",
          type = "string",
        },
        lastAccessedGatewayTime = {
          description = "[Output only] The most recent time at which the device accessed the gateway specified in `last_accessed_gateway`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GetIamPolicyRequest = {
      description = "Request message for `GetIamPolicy` method.",
      id = "GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GetPolicyOptions",
          description = "OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.",
        },
      },
      type = "object",
    },
    GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HttpConfig = {
      description = "The configuration of the HTTP bridge for a device registry.",
      id = "HttpConfig",
      properties = {
        httpEnabledState = {
          description = "If enabled, allows devices to use DeviceService via the HTTP protocol. Otherwise, any requests to DeviceService will fail for this registry.",
          enum = {
            "HTTP_STATE_UNSPECIFIED",
            "HTTP_ENABLED",
            "HTTP_DISABLED",
          },
          enumDescriptions = {
            "No HTTP state specified. If not specified, DeviceService will be enabled by default.",
            "Enables DeviceService (HTTP) service for the registry.",
            "Disables DeviceService (HTTP) service for the registry.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ListDeviceConfigVersionsResponse = {
      description = "Response for `ListDeviceConfigVersions`.",
      id = "ListDeviceConfigVersionsResponse",
      properties = {
        deviceConfigs = {
          description = "The device configuration for the last few versions. Versions are listed in decreasing order, starting from the most recent one.",
          items = {
            ["$ref"] = "DeviceConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDeviceRegistriesResponse = {
      description = "Response for `ListDeviceRegistries`.",
      id = "ListDeviceRegistriesResponse",
      properties = {
        deviceRegistries = {
          description = "The registries that matched the query.",
          items = {
            ["$ref"] = "DeviceRegistry",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If not empty, indicates that there may be more registries that match the request; this value should be passed in a new `ListDeviceRegistriesRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDeviceStatesResponse = {
      description = "Response for `ListDeviceStates`.",
      id = "ListDeviceStatesResponse",
      properties = {
        deviceStates = {
          description = "The last few device states. States are listed in descending order of server update time, starting from the most recent one.",
          items = {
            ["$ref"] = "DeviceState",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDevicesResponse = {
      description = "Response for `ListDevices`.",
      id = "ListDevicesResponse",
      properties = {
        devices = {
          description = "The devices that match the request.",
          items = {
            ["$ref"] = "Device",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If not empty, indicates that there may be more devices that match the request; this value should be passed in a new `ListDevicesRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    ModifyCloudToDeviceConfigRequest = {
      description = "Request for `ModifyCloudToDeviceConfig`.",
      id = "ModifyCloudToDeviceConfigRequest",
      properties = {
        binaryData = {
          description = "Required. The configuration data for the device.",
          format = "byte",
          type = "string",
        },
        versionToUpdate = {
          description = "The version number to update. If this value is zero, it will not check the version number of the server and will always update the current version; otherwise, this update will fail if the version number found on the server does not match this version number. This is used to support multiple simultaneous updates without losing data.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MqttConfig = {
      description = "The configuration of MQTT for a device registry.",
      id = "MqttConfig",
      properties = {
        mqttEnabledState = {
          description = "If enabled, allows connections using the MQTT protocol. Otherwise, MQTT connections to this registry will fail.",
          enum = {
            "MQTT_STATE_UNSPECIFIED",
            "MQTT_ENABLED",
            "MQTT_DISABLED",
          },
          enumDescriptions = {
            "No MQTT state specified. If not specified, MQTT will be enabled by default.",
            "Enables a MQTT connection.",
            "Disables a MQTT connection.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
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
    PublicKeyCertificate = {
      description = "A public key certificate format and data.",
      id = "PublicKeyCertificate",
      properties = {
        certificate = {
          description = "The certificate data.",
          type = "string",
        },
        format = {
          description = "The certificate format.",
          enum = {
            "UNSPECIFIED_PUBLIC_KEY_CERTIFICATE_FORMAT",
            "X509_CERTIFICATE_PEM",
          },
          enumDescriptions = {
            "The format has not been specified. This is an invalid default value and must not be used.",
            "An X.509v3 certificate ([RFC5280](https://www.ietf.org/rfc/rfc5280.txt)), encoded in base64, and wrapped by `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`.",
          },
          type = "string",
        },
        x509Details = {
          ["$ref"] = "X509CertificateDetails",
          description = "[Output only] The certificate details. Used only for X.509 certificates.",
        },
      },
      type = "object",
    },
    PublicKeyCredential = {
      description = "A public key format and data.",
      id = "PublicKeyCredential",
      properties = {
        format = {
          description = "The format of the key.",
          enum = {
            "UNSPECIFIED_PUBLIC_KEY_FORMAT",
            "RSA_PEM",
            "RSA_X509_PEM",
            "ES256_PEM",
            "ES256_X509_PEM",
          },
          enumDescriptions = {
            "The format has not been specified. This is an invalid default value and must not be used.",
            "An RSA public key encoded in base64, and wrapped by `-----BEGIN PUBLIC KEY-----` and `-----END PUBLIC KEY-----`. This can be used to verify `RS256` signatures in JWT tokens ([RFC7518]( https://www.ietf.org/rfc/rfc7518.txt)).",
            "As RSA_PEM, but wrapped in an X.509v3 certificate ([RFC5280]( https://www.ietf.org/rfc/rfc5280.txt)), encoded in base64, and wrapped by `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`.",
            "Public key for the ECDSA algorithm using P-256 and SHA-256, encoded in base64, and wrapped by `-----BEGIN PUBLIC KEY-----` and `-----END PUBLIC KEY-----`. This can be used to verify JWT tokens with the `ES256` algorithm ([RFC7518](https://www.ietf.org/rfc/rfc7518.txt)). This curve is defined in [OpenSSL](https://www.openssl.org/) as the `prime256v1` curve.",
            "As ES256_PEM, but wrapped in an X.509v3 certificate ([RFC5280]( https://www.ietf.org/rfc/rfc5280.txt)), encoded in base64, and wrapped by `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`.",
          },
          type = "string",
        },
        key = {
          description = "The key data.",
          type = "string",
        },
      },
      type = "object",
    },
    RegistryCredential = {
      description = "A server-stored registry credential used to validate device credentials.",
      id = "RegistryCredential",
      properties = {
        publicKeyCertificate = {
          ["$ref"] = "PublicKeyCertificate",
          description = "A public key certificate used to verify the device credentials.",
        },
      },
      type = "object",
    },
    SendCommandToDeviceRequest = {
      description = "Request for `SendCommandToDevice`.",
      id = "SendCommandToDeviceRequest",
      properties = {
        binaryData = {
          description = "Required. The command data to send to the device.",
          format = "byte",
          type = "string",
        },
        subfolder = {
          description = "Optional subfolder for the command. If empty, the command will be delivered to the /devices/{device-id}/commands topic, otherwise it will be delivered to the /devices/{device-id}/commands/{subfolder} topic. Multi-level subfolders are allowed. This field must not have more than 256 characters, and must not contain any MQTT wildcards (\"+\" or \"#\") or null characters.",
          type = "string",
        },
      },
      type = "object",
    },
    SendCommandToDeviceResponse = {
      description = "Response for `SendCommandToDevice`.",
      id = "SendCommandToDeviceResponse",
      properties = {},
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
      },
      type = "object",
    },
    StateNotificationConfig = {
      description = "The configuration for notification of new states received from the device.",
      id = "StateNotificationConfig",
      properties = {
        pubsubTopicName = {
          description = "A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.",
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
    UnbindDeviceFromGatewayRequest = {
      description = "Request for `UnbindDeviceFromGateway`.",
      id = "UnbindDeviceFromGatewayRequest",
      properties = {
        deviceId = {
          description = "Required. The device to disassociate from the specified gateway. The value of `device_id` can be either the device numeric ID or the user-defined device identifier.",
          type = "string",
        },
        gatewayId = {
          description = "Required. The value of `gateway_id` can be either the device numeric ID or the user-defined device identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    UnbindDeviceFromGatewayResponse = {
      description = "Response for `UnbindDeviceFromGateway`.",
      id = "UnbindDeviceFromGatewayResponse",
      properties = {},
      type = "object",
    },
    X509CertificateDetails = {
      description = "Details of an X.509 certificate. For informational purposes only.",
      id = "X509CertificateDetails",
      properties = {
        expiryTime = {
          description = "The time the certificate becomes invalid.",
          format = "google-datetime",
          type = "string",
        },
        issuer = {
          description = "The entity that signed the certificate.",
          type = "string",
        },
        publicKeyType = {
          description = "The type of public key in the certificate.",
          type = "string",
        },
        signatureAlgorithm = {
          description = "The algorithm used to sign the certificate.",
          type = "string",
        },
        startTime = {
          description = "The time the certificate becomes valid.",
          format = "google-datetime",
          type = "string",
        },
        subject = {
          description = "The entity the certificate and public key belong to.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud IoT API",
  version = "v1",
  version_module = true,
}