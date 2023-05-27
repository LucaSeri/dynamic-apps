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
  baseUrl = "https://baremetalsolution.googleapis.com/",
  batchPath = "batch",
  description = "Provides ways to manage Bare Metal Solution hardware installed in a regional extension located near a Google Cloud data center.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/bare-metal",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "baremetalsolution:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://baremetalsolution.mtls.googleapis.com/",
  name = "baremetalsolution",
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
              flatPath = "v2/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "baremetalsolution.projects.locations.get",
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
              path = "v2/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v2/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "baremetalsolution.projects.locations.list",
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
              path = "v2/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            instanceProvisioningSettings = {
              methods = {
                fetch = {
                  description = "Get instance provisioning settings for a given project. This is hidden method used by UI only.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instanceProvisioningSettings:fetch",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.instanceProvisioningSettings.fetch",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "Required. The parent project and location containing the ProvisioningSettings.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+location}/instanceProvisioningSettings:fetch",
                  response = {
                    ["$ref"] = "FetchInstanceProvisioningSettingsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            instances = {
              methods = {
                create = {
                  description = "Create an Instance.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.instances.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent project and location.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/instances",
                  request = {
                    ["$ref"] = "Instance",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                detachLun = {
                  description = "Detach LUN from Instance.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:detachLun",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.instances.detachLun",
                  parameterOrder = {
                    "instance",
                  },
                  parameters = {
                    instance = {
                      description = "Required. Name of the instance.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+instance}:detachLun",
                  request = {
                    ["$ref"] = "DetachLunRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                disableInteractiveSerialConsole = {
                  description = "Disable the interactive serial console feature on an instance.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:disableInteractiveSerialConsole",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.instances.disableInteractiveSerialConsole",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:disableInteractiveSerialConsole",
                  request = {
                    ["$ref"] = "DisableInteractiveSerialConsoleRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                enableInteractiveSerialConsole = {
                  description = "Enable the interactive serial console feature on an instance.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:enableInteractiveSerialConsole",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.instances.enableInteractiveSerialConsole",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:enableInteractiveSerialConsole",
                  request = {
                    ["$ref"] = "EnableInteractiveSerialConsoleRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get details about a single server.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.instances.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Instance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List servers in a given project and location.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.instances.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Requested page size. Server may return fewer items than requested. If unspecified, the server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results from the server.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent value for ListInstancesRequest.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/instances",
                  response = {
                    ["$ref"] = "ListInstancesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update details of a single server.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "PATCH",
                  id = "baremetalsolution.projects.locations.instances.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The resource name of this `Instance`. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. Format: `projects/{project}/locations/{location}/instances/{instance}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to update. The currently supported fields are: `labels` `hyperthreading_enabled` `os_image`",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "Instance",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                reset = {
                  description = "Perform an ungraceful, hard reset on a server. Equivalent to shutting the power off and then turning it back on.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:reset",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.instances.reset",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:reset",
                  request = {
                    ["$ref"] = "ResetInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                start = {
                  description = "Starts a server that was shutdown.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:start",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.instances.start",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:start",
                  request = {
                    ["$ref"] = "StartInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                stop = {
                  description = "Stop a running server.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:stop",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.instances.stop",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:stop",
                  request = {
                    ["$ref"] = "StopInstanceRequest",
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
            networks = {
              methods = {
                get = {
                  description = "Get details of a single network.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/networks/{networksId}",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.networks.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/networks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Network",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List network in a given project and location.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/networks",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.networks.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results from the server.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent value for ListNetworksRequest.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/networks",
                  response = {
                    ["$ref"] = "ListNetworksResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                listNetworkUsage = {
                  description = "List all Networks (and used IPs for each Network) in the vendor account associated with the specified project.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/networks:listNetworkUsage",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.networks.listNetworkUsage",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "Required. Parent value (project and location).",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+location}/networks:listNetworkUsage",
                  response = {
                    ["$ref"] = "ListNetworkUsageResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update details of a single network.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/networks/{networksId}",
                  httpMethod = "PATCH",
                  id = "baremetalsolution.projects.locations.networks.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of this `Network`. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. Format: `projects/{project}/locations/{location}/networks/{network}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/networks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to update. The only currently supported fields are: `labels`, `reservations`, `vrf.vlan_attachments`",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "Network",
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
            nfsShares = {
              methods = {
                create = {
                  description = "Create an NFS share.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/nfsShares",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.nfsShares.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent project and location.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/nfsShares",
                  request = {
                    ["$ref"] = "NfsShare",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete an NFS share. The underlying volume is automatically deleted.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/nfsShares/{nfsSharesId}",
                  httpMethod = "DELETE",
                  id = "baremetalsolution.projects.locations.nfsShares.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the NFS share to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/nfsShares/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get details of a single NFS share.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/nfsShares/{nfsSharesId}",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.nfsShares.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/nfsShares/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "NfsShare",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List NFS shares.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/nfsShares",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.nfsShares.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results from the server.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent value for ListNfsSharesRequest.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/nfsShares",
                  response = {
                    ["$ref"] = "ListNfsSharesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update details of a single NFS share.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/nfsShares/{nfsSharesId}",
                  httpMethod = "PATCH",
                  id = "baremetalsolution.projects.locations.nfsShares.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The name of the NFS share.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/nfsShares/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to update. The only currently supported fields are: `labels` `allowed_clients`",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "NfsShare",
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
                get = {
                  description = "Get details about an operation. This method used only to work around CCFE lack of passthrough LRO support (b/221498758).",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/.*$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            provisioningConfigs = {
              methods = {
                create = {
                  description = "Create new ProvisioningConfig.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/provisioningConfigs",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.provisioningConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    email = {
                      description = "Optional. Email provided to send a confirmation with provisioning config to.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent project and location containing the ProvisioningConfig.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/provisioningConfigs",
                  request = {
                    ["$ref"] = "ProvisioningConfig",
                  },
                  response = {
                    ["$ref"] = "ProvisioningConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get ProvisioningConfig by name.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/provisioningConfigs/{provisioningConfigsId}",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.provisioningConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the ProvisioningConfig.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/provisioningConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "ProvisioningConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update existing ProvisioningConfig.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/provisioningConfigs/{provisioningConfigsId}",
                  httpMethod = "PATCH",
                  id = "baremetalsolution.projects.locations.provisioningConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    email = {
                      description = "Optional. Email provided to send a confirmation with provisioning config to.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Output only. The system-generated name of the provisioning config. This follows the UUID format.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/provisioningConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The list of fields to update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "ProvisioningConfig",
                  },
                  response = {
                    ["$ref"] = "ProvisioningConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                submit = {
                  description = "Submit a provisiong configuration for a given project.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/provisioningConfigs:submit",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.provisioningConfigs.submit",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent project and location containing the ProvisioningConfig.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/provisioningConfigs:submit",
                  request = {
                    ["$ref"] = "SubmitProvisioningConfigRequest",
                  },
                  response = {
                    ["$ref"] = "SubmitProvisioningConfigResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            provisioningQuotas = {
              methods = {
                list = {
                  description = "List the budget details to provision resources on a given project.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/provisioningQuotas",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.provisioningQuotas.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropriate default. Notice that page_size field is not supported and won't be respected in the API request for now, will be updated when pagination is supported.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results from the server.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent value for ListProvisioningQuotasRequest.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/provisioningQuotas",
                  response = {
                    ["$ref"] = "ListProvisioningQuotasResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            sshKeys = {
              methods = {
                create = {
                  description = "Register a public SSH key in the specified project for use with the interactive serial console feature.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/sshKeys",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.sshKeys.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent containing the SSH keys.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    sshKeyId = {
                      description = "Required. The ID to use for the key, which will become the final component of the key's resource name. This value must match the regex: [a-zA-Z0-9@.\\-_]{1,64}",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/sshKeys",
                  request = {
                    ["$ref"] = "SSHKey",
                  },
                  response = {
                    ["$ref"] = "SSHKey",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a public SSH key registered in the specified project.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/sshKeys/{sshKeysId}",
                  httpMethod = "DELETE",
                  id = "baremetalsolution.projects.locations.sshKeys.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the SSH key to delete. Currently, the only valid value for the location is \"global\".",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/sshKeys/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists the public SSH keys registered for the specified project. These SSH keys are used only for the interactive serial console feature.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/sshKeys",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.sshKeys.list",
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
                      description = "Required. The parent containing the SSH keys. Currently, the only valid value for the location is \"global\".",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/sshKeys",
                  response = {
                    ["$ref"] = "ListSSHKeysResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            volumes = {
              methods = {
                get = {
                  description = "Get details of a single storage volume.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.volumes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "Volume",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List storage volumes in a given project and location.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes",
                  httpMethod = "GET",
                  id = "baremetalsolution.projects.locations.volumes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "List filter.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropriate default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results from the server.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent value for ListVolumesRequest.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/volumes",
                  response = {
                    ["$ref"] = "ListVolumesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update details of a single storage volume.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}",
                  httpMethod = "PATCH",
                  id = "baremetalsolution.projects.locations.volumes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of this `Volume`. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. Format: `projects/{project}/locations/{location}/volumes/{volume}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to update. The only currently supported fields are: 'labels'",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "Volume",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                resize = {
                  description = "Emergency Volume resize.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}:resize",
                  httpMethod = "POST",
                  id = "baremetalsolution.projects.locations.volumes.resize",
                  parameterOrder = {
                    "volume",
                  },
                  parameters = {
                    volume = {
                      description = "Required. Volume to resize.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+volume}:resize",
                  request = {
                    ["$ref"] = "ResizeVolumeRequest",
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
                luns = {
                  methods = {
                    get = {
                      description = "Get details of a single storage logical unit number(LUN).",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}/luns/{lunsId}",
                      httpMethod = "GET",
                      id = "baremetalsolution.projects.locations.volumes.luns.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+/luns/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "Lun",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "List storage volume luns for given storage volume.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}/luns",
                      httpMethod = "GET",
                      id = "baremetalsolution.projects.locations.volumes.luns.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropriate default.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A token identifying a page of results from the server.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Parent value for ListLunsRequest.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/luns",
                      response = {
                        ["$ref"] = "ListLunsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                snapshots = {
                  methods = {
                    create = {
                      description = "Takes a snapshot of a boot volume. Returns INVALID_ARGUMENT if called for a non-boot volume.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}/snapshots",
                      httpMethod = "POST",
                      id = "baremetalsolution.projects.locations.volumes.snapshots.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The volume to snapshot.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/snapshots",
                      request = {
                        ["$ref"] = "VolumeSnapshot",
                      },
                      response = {
                        ["$ref"] = "VolumeSnapshot",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a volume snapshot. Returns INVALID_ARGUMENT if called for a non-boot volume.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}/snapshots/{snapshotsId}",
                      httpMethod = "DELETE",
                      id = "baremetalsolution.projects.locations.volumes.snapshots.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the snapshot to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+/snapshots/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns the specified snapshot resource. Returns INVALID_ARGUMENT if called for a non-boot volume.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}/snapshots/{snapshotsId}",
                      httpMethod = "GET",
                      id = "baremetalsolution.projects.locations.volumes.snapshots.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the snapshot.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+/snapshots/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+name}",
                      response = {
                        ["$ref"] = "VolumeSnapshot",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Retrieves the list of snapshots for the specified volume. Returns a response with an empty list of snapshots if called for a non-boot volume.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}/snapshots",
                      httpMethod = "GET",
                      id = "baremetalsolution.projects.locations.volumes.snapshots.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Requested page size. The server might return fewer items than requested. If unspecified, server will pick an appropriate default.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A token identifying a page of results from the server.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Parent value for ListVolumesRequest.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+parent}/snapshots",
                      response = {
                        ["$ref"] = "ListVolumeSnapshotsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    restoreVolumeSnapshot = {
                      description = "Uses the specified snapshot to restore its parent volume. Returns INVALID_ARGUMENT if called for a non-boot volume.",
                      flatPath = "v2/projects/{projectsId}/locations/{locationsId}/volumes/{volumesId}/snapshots/{snapshotsId}:restoreVolumeSnapshot",
                      httpMethod = "POST",
                      id = "baremetalsolution.projects.locations.volumes.snapshots.restoreVolumeSnapshot",
                      parameterOrder = {
                        "volumeSnapshot",
                      },
                      parameters = {
                        volumeSnapshot = {
                          description = "Required. Name of the snapshot which will be used to restore its parent volume.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/volumes/[^/]+/snapshots/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v2/{+volumeSnapshot}:restoreVolumeSnapshot",
                      request = {
                        ["$ref"] = "RestoreVolumeSnapshotRequest",
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
  revision = "20230104",
  rootUrl = "https://baremetalsolution.googleapis.com/",
  schemas = {
    AllowedClient = {
      description = "Represents an 'access point' for the share.",
      id = "AllowedClient",
      properties = {
        allowDev = {
          description = "Allow dev flag. Which controls whether to allow creation of devices.",
          type = "boolean",
        },
        allowSuid = {
          description = "Allow the setuid flag.",
          type = "boolean",
        },
        allowedClientsCidr = {
          description = "The subnet of IP addresses permitted to access the share.",
          type = "string",
        },
        mountPermissions = {
          description = "Mount permissions.",
          enum = {
            "MOUNT_PERMISSIONS_UNSPECIFIED",
            "READ",
            "READ_WRITE",
          },
          enumDescriptions = {
            "Permissions were not specified.",
            "NFS share can be mount with read-only permissions.",
            "NFS share can be mount with read-write permissions.",
          },
          type = "string",
        },
        network = {
          description = "The network the access point sits on.",
          type = "string",
        },
        nfsPath = {
          description = "Output only. The path to access NFS, in format shareIP:/InstanceID InstanceID is the generated ID instead of customer provided name. example like \"10.0.0.0:/g123456789-nfs001\"",
          readOnly = true,
          type = "string",
        },
        noRootSquash = {
          description = "Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.",
          type = "boolean",
        },
        shareIp = {
          description = "Output only. The IP address of the share on this network. Assigned automatically during provisioning based on the network's services_cidr.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DetachLunRequest = {
      description = "Message for detach specific LUN from an Instance.",
      id = "DetachLunRequest",
      properties = {
        lun = {
          description = "Required. Name of the Lun to detach.",
          type = "string",
        },
        skipReboot = {
          description = "If true, performs lun unmapping without instance reboot.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DisableInteractiveSerialConsoleRequest = {
      description = "Message for disabling the interactive serial console on an instance.",
      id = "DisableInteractiveSerialConsoleRequest",
      properties = {},
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    EnableInteractiveSerialConsoleRequest = {
      description = "Message for enabling the interactive serial console on an instance.",
      id = "EnableInteractiveSerialConsoleRequest",
      properties = {},
      type = "object",
    },
    FetchInstanceProvisioningSettingsResponse = {
      description = "Response with all provisioning settings.",
      id = "FetchInstanceProvisioningSettingsResponse",
      properties = {
        images = {
          description = "The OS images available.",
          items = {
            ["$ref"] = "OSImage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudBaremetalsolutionV2LogicalInterface = {
      description = "Each logical interface represents a logical abstraction of the underlying physical interface (for eg. bond, nic) of the instance. Each logical interface can effectively map to multiple network-IP pairs and still be mapped to one underlying physical interface.",
      id = "GoogleCloudBaremetalsolutionV2LogicalInterface",
      properties = {
        interfaceIndex = {
          description = "The index of the logical interface mapping to the index of the hardware bond or nic on the chosen network template. This field is deprecated.",
          format = "int32",
          type = "integer",
        },
        logicalNetworkInterfaces = {
          description = "List of logical network interfaces within a logical interface.",
          items = {
            ["$ref"] = "LogicalNetworkInterface",
          },
          type = "array",
        },
        name = {
          description = "Interface name. This is of syntax or and forms part of the network template name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface = {
      description = "Logical interface.",
      id = "GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface",
      properties = {
        name = {
          description = "Interface name. This is not a globally unique identifier. Name is unique only inside the ServerNetworkTemplate. This is of syntax or and forms part of the network template name.",
          type = "string",
        },
        required = {
          description = "If true, interface must have network connected.",
          type = "boolean",
        },
        type = {
          description = "Interface type.",
          enum = {
            "INTERFACE_TYPE_UNSPECIFIED",
            "BOND",
            "NIC",
          },
          enumDescriptions = {
            "Unspecified value.",
            "Bond interface type.",
            "NIC interface type.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Instance = {
      description = "A server.",
      id = "Instance",
      properties = {
        createTime = {
          description = "Output only. Create a time stamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        hyperthreadingEnabled = {
          description = "True if you enable hyperthreading for the server, otherwise false. The default value is false.",
          type = "boolean",
        },
        id = {
          description = "Output only. An identifier for the `Instance`, generated by the backend.",
          readOnly = true,
          type = "string",
        },
        interactiveSerialConsoleEnabled = {
          description = "Output only. True if the interactive serial console feature is enabled for the instance, false otherwise. The default value is false.",
          readOnly = true,
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels as key value pairs.",
          type = "object",
        },
        logicalInterfaces = {
          description = "List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. For the non-multivlan configurations (for eg, existing servers) that use existing default network template (bondaa-bondaa), both the Instance.networks field and the Instance.logical_interfaces fields will be filled to ensure backward compatibility. For the others, only Instance.logical_interfaces will be filled.",
          items = {
            ["$ref"] = "GoogleCloudBaremetalsolutionV2LogicalInterface",
          },
          type = "array",
        },
        loginInfo = {
          description = "Output only. Text field about info for logging in.",
          readOnly = true,
          type = "string",
        },
        luns = {
          description = "Immutable. List of LUNs associated with this server.",
          items = {
            ["$ref"] = "Lun",
          },
          type = "array",
        },
        machineType = {
          description = "Immutable. The server type. [Available server types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)",
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of this `Instance`. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. Format: `projects/{project}/locations/{location}/instances/{instance}`",
          type = "string",
        },
        networkTemplate = {
          description = "Instance network template name. For eg, bondaa-bondaa, bondab-nic, etc. Generally, the template name follows the syntax of \"bond\" or \"nic\".",
          type = "string",
        },
        networks = {
          description = "Output only. List of networks associated with this server.",
          items = {
            ["$ref"] = "Network",
          },
          readOnly = true,
          type = "array",
        },
        osImage = {
          description = "The OS image currently installed on the server.",
          type = "string",
        },
        pod = {
          description = "Immutable. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes) allocated in the same pod only.",
          type = "string",
        },
        state = {
          description = "Output only. The state of the server.",
          enum = {
            "STATE_UNSPECIFIED",
            "PROVISIONING",
            "RUNNING",
            "DELETED",
            "UPDATING",
            "STARTING",
            "STOPPING",
            "SHUTDOWN",
          },
          enumDescriptions = {
            "The server is in an unknown state.",
            "The server is being provisioned.",
            "The server is running.",
            "The server has been deleted.",
            "The server is being updated.",
            "The server is starting.",
            "The server is stopping.",
            "The server is shutdown.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Update a time stamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        volumes = {
          description = "Input only. List of Volumes to attach to this Instance on creation. This field won't be populated in Get/List responses.",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
        workloadProfile = {
          description = "The workload profile for the instance.",
          enum = {
            "WORKLOAD_PROFILE_UNSPECIFIED",
            "WORKLOAD_PROFILE_GENERIC",
            "WORKLOAD_PROFILE_HANA",
          },
          enumDescriptions = {
            "The workload profile is in an unknown state.",
            "The workload profile is generic.",
            "The workload profile is hana.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InstanceConfig = {
      description = "Configuration parameters for a new instance.",
      id = "InstanceConfig",
      properties = {
        accountNetworksEnabled = {
          description = "If true networks can be from different projects of the same vendor account.",
          type = "boolean",
        },
        clientNetwork = {
          ["$ref"] = "NetworkAddress",
          description = "Client network address. Filled if InstanceConfig.multivlan_config is false.",
        },
        hyperthreading = {
          description = "Whether the instance should be provisioned with Hyperthreading enabled.",
          type = "boolean",
        },
        id = {
          description = "A transient unique identifier to idenfity an instance within an ProvisioningConfig request.",
          type = "string",
        },
        instanceType = {
          description = "Instance type. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)",
          type = "string",
        },
        logicalInterfaces = {
          description = "List of logical interfaces for the instance. The number of logical interfaces will be the same as number of hardware bond/nic on the chosen network template. Filled if InstanceConfig.multivlan_config is true.",
          items = {
            ["$ref"] = "GoogleCloudBaremetalsolutionV2LogicalInterface",
          },
          type = "array",
        },
        name = {
          description = "Output only. The name of the instance config.",
          readOnly = true,
          type = "string",
        },
        networkConfig = {
          description = "The type of network configuration on the instance.",
          enum = {
            "NETWORKCONFIG_UNSPECIFIED",
            "SINGLE_VLAN",
            "MULTI_VLAN",
          },
          enumDescriptions = {
            "The unspecified network configuration.",
            "Instance part of single client network and single private network.",
            "Instance part of multiple (or single) client networks and private networks.",
          },
          type = "string",
        },
        networkTemplate = {
          description = "Server network template name. Filled if InstanceConfig.multivlan_config is true.",
          type = "string",
        },
        osImage = {
          description = "OS image to initialize the instance. [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)",
          type = "string",
        },
        privateNetwork = {
          ["$ref"] = "NetworkAddress",
          description = "Private network address, if any. Filled if InstanceConfig.multivlan_config is false.",
        },
        userNote = {
          description = "User note field, it can be used by customers to add additional information for the BMS Ops team .",
          type = "string",
        },
      },
      type = "object",
    },
    InstanceQuota = {
      description = "A resource budget.",
      id = "InstanceQuota",
      properties = {
        availableMachineCount = {
          description = "Number of machines than can be created for the given location and instance_type.",
          format = "int32",
          type = "integer",
        },
        gcpService = {
          description = "The gcp service of the provisioning quota.",
          type = "string",
        },
        instanceType = {
          description = "Instance type. Deprecated: use gcp_service.",
          type = "string",
        },
        location = {
          description = "Location where the quota applies.",
          type = "string",
        },
        name = {
          description = "Output only. The name of the instance quota.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    IntakeVlanAttachment = {
      description = "A GCP vlan attachment.",
      id = "IntakeVlanAttachment",
      properties = {
        id = {
          description = "Identifier of the VLAN attachment.",
          type = "string",
        },
        pairingKey = {
          description = "Attachment pairing key.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInstancesResponse = {
      description = "Response message for the list of servers.",
      id = "ListInstancesResponse",
      properties = {
        instances = {
          description = "The list of servers.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token identifying a page of results from the server.",
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
    ListLunsResponse = {
      description = "Response message containing the list of storage volume luns.",
      id = "ListLunsResponse",
      properties = {
        luns = {
          description = "The list of luns.",
          items = {
            ["$ref"] = "Lun",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token identifying a page of results from the server.",
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
    ListNetworkUsageResponse = {
      description = "Response with Networks with IPs",
      id = "ListNetworkUsageResponse",
      properties = {
        networks = {
          description = "Networks with IPs.",
          items = {
            ["$ref"] = "NetworkUsage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListNetworksResponse = {
      description = "Response message containing the list of networks.",
      id = "ListNetworksResponse",
      properties = {
        networks = {
          description = "The list of networks.",
          items = {
            ["$ref"] = "Network",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token identifying a page of results from the server.",
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
    ListNfsSharesResponse = {
      description = "Response message containing the list of NFS shares.",
      id = "ListNfsSharesResponse",
      properties = {
        nextPageToken = {
          description = "A token identifying a page of results from the server.",
          type = "string",
        },
        nfsShares = {
          description = "The list of NFS shares.",
          items = {
            ["$ref"] = "NfsShare",
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
    ListProvisioningQuotasResponse = {
      description = "Response message for the list of provisioning quotas.",
      id = "ListProvisioningQuotasResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        provisioningQuotas = {
          description = "The provisioning quotas registered in this project.",
          items = {
            ["$ref"] = "ProvisioningQuota",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSSHKeysResponse = {
      description = "Message for response of ListSSHKeys.",
      id = "ListSSHKeysResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        sshKeys = {
          description = "The SSH keys registered in the project.",
          items = {
            ["$ref"] = "SSHKey",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVolumeSnapshotsResponse = {
      description = "Response message containing the list of volume snapshots.",
      id = "ListVolumeSnapshotsResponse",
      properties = {
        nextPageToken = {
          description = "A token identifying a page of results from the server.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
        volumeSnapshots = {
          description = "The list of snapshots.",
          items = {
            ["$ref"] = "VolumeSnapshot",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVolumesResponse = {
      description = "Response message containing the list of storage volumes.",
      id = "ListVolumesResponse",
      properties = {
        nextPageToken = {
          description = "A token identifying a page of results from the server.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
        volumes = {
          description = "The list of storage volumes.",
          items = {
            ["$ref"] = "Volume",
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
    LogicalNetworkInterface = {
      description = "Each logical network interface is effectively a network and IP pair.",
      id = "LogicalNetworkInterface",
      properties = {
        defaultGateway = {
          description = "Whether this interface is the default gateway for the instance. Only one interface can be the default gateway for the instance.",
          type = "boolean",
        },
        id = {
          description = "An identifier for the `Network`, generated by the backend.",
          type = "string",
        },
        ipAddress = {
          description = "IP address in the network",
          type = "string",
        },
        network = {
          description = "Name of the network",
          type = "string",
        },
        networkType = {
          description = "Type of network.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CLIENT",
            "PRIVATE",
          },
          enumDescriptions = {
            "Unspecified value.",
            "Client network, a network peered to a Google Cloud VPC.",
            "Private network, a network local to the Bare Metal Solution environment.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Lun = {
      description = "A storage volume logical unit number (LUN).",
      id = "Lun",
      properties = {
        bootLun = {
          description = "Display if this LUN is a boot LUN.",
          type = "boolean",
        },
        id = {
          description = "An identifier for the LUN, generated by the backend.",
          type = "string",
        },
        multiprotocolType = {
          description = "The LUN multiprotocol type ensures the characteristics of the LUN are optimized for each operating system.",
          enum = {
            "MULTIPROTOCOL_TYPE_UNSPECIFIED",
            "LINUX",
          },
          enumDescriptions = {
            "Server has no OS specified.",
            "Server with Linux OS.",
          },
          type = "string",
        },
        name = {
          description = "Output only. The name of the LUN.",
          readOnly = true,
          type = "string",
        },
        shareable = {
          description = "Display if this LUN can be shared between multiple physical servers.",
          type = "boolean",
        },
        sizeGb = {
          description = "The size of this LUN, in gigabytes.",
          format = "int64",
          type = "string",
        },
        state = {
          description = "The state of this storage volume.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "UPDATING",
            "READY",
            "DELETING",
          },
          enumDescriptions = {
            "The LUN is in an unknown state.",
            "The LUN is being created.",
            "The LUN is being updated.",
            "The LUN is ready for use.",
            "The LUN has been requested to be deleted.",
          },
          type = "string",
        },
        storageType = {
          description = "The storage type for this LUN.",
          enum = {
            "STORAGE_TYPE_UNSPECIFIED",
            "SSD",
            "HDD",
          },
          enumDescriptions = {
            "The storage type for this LUN is unknown.",
            "This storage type for this LUN is SSD.",
            "This storage type for this LUN is HDD.",
          },
          type = "string",
        },
        storageVolume = {
          description = "Display the storage volume for this LUN.",
          type = "string",
        },
        wwid = {
          description = "The WWID for this LUN.",
          type = "string",
        },
      },
      type = "object",
    },
    LunRange = {
      description = "A LUN(Logical Unit Number) range.",
      id = "LunRange",
      properties = {
        quantity = {
          description = "Number of LUNs to create.",
          format = "int32",
          type = "integer",
        },
        sizeGb = {
          description = "The requested size of each LUN, in GB.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Network = {
      description = "A Network.",
      id = "Network",
      properties = {
        cidr = {
          description = "The cidr of the Network.",
          type = "string",
        },
        gatewayIp = {
          description = "Output only. Gateway ip address.",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "An identifier for the `Network`, generated by the backend.",
          type = "string",
        },
        ipAddress = {
          description = "IP address configured.",
          type = "string",
        },
        jumboFramesEnabled = {
          description = "Whether network uses standard frames or jumbo ones.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels as key value pairs.",
          type = "object",
        },
        macAddress = {
          description = "List of physical interfaces.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mountPoints = {
          description = "Input only. List of mount points to attach the network to.",
          items = {
            ["$ref"] = "NetworkMountPoint",
          },
          type = "array",
        },
        name = {
          description = "Output only. The resource name of this `Network`. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. Format: `projects/{project}/locations/{location}/networks/{network}`",
          readOnly = true,
          type = "string",
        },
        pod = {
          description = "Output only. Pod name.",
          readOnly = true,
          type = "string",
        },
        reservations = {
          description = "List of IP address reservations in this network. When updating this field, an error will be generated if a reservation conflicts with an IP address already allocated to a physical server.",
          items = {
            ["$ref"] = "NetworkAddressReservation",
          },
          type = "array",
        },
        servicesCidr = {
          description = "IP range for reserved for services (e.g. NFS).",
          type = "string",
        },
        state = {
          description = "The Network state.",
          enum = {
            "STATE_UNSPECIFIED",
            "PROVISIONING",
            "PROVISIONED",
            "DEPROVISIONING",
            "UPDATING",
          },
          enumDescriptions = {
            "The Network is in an unknown state.",
            "The Network is provisioning.",
            "The Network has been provisioned.",
            "The Network is being deprovisioned.",
            "The Network is being updated.",
          },
          type = "string",
        },
        type = {
          description = "The type of this network.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CLIENT",
            "PRIVATE",
          },
          enumDescriptions = {
            "Unspecified value.",
            "Client network, a network peered to a Google Cloud VPC.",
            "Private network, a network local to the Bare Metal Solution environment.",
          },
          type = "string",
        },
        vlanId = {
          description = "The vlan id of the Network.",
          type = "string",
        },
        vrf = {
          ["$ref"] = "VRF",
          description = "The vrf for the Network.",
        },
      },
      type = "object",
    },
    NetworkAddress = {
      description = "A network.",
      id = "NetworkAddress",
      properties = {
        address = {
          description = "IPv4 address to be assigned to the server.",
          type = "string",
        },
        existingNetworkId = {
          description = "Name of the existing network to use.",
          type = "string",
        },
        networkId = {
          description = "Id of the network to use, within the same ProvisioningConfig request.",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkAddressReservation = {
      description = "A reservation of one or more addresses in a network.",
      id = "NetworkAddressReservation",
      properties = {
        endAddress = {
          description = "The last address of this reservation block, inclusive. I.e., for cases when reservations are only single addresses, end_address and start_address will be the same. Must be specified as a single IPv4 address, e.g. 10.1.2.2.",
          type = "string",
        },
        note = {
          description = "A note about this reservation, intended for human consumption.",
          type = "string",
        },
        startAddress = {
          description = "The first address of this reservation block. Must be specified as a single IPv4 address, e.g. 10.1.2.2.",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkConfig = {
      description = "Configuration parameters for a new network.",
      id = "NetworkConfig",
      properties = {
        bandwidth = {
          description = "Interconnect bandwidth. Set only when type is CLIENT.",
          enum = {
            "BANDWIDTH_UNSPECIFIED",
            "BW_1_GBPS",
            "BW_2_GBPS",
            "BW_5_GBPS",
            "BW_10_GBPS",
          },
          enumDescriptions = {
            "Unspecified value.",
            "1 Gbps.",
            "2 Gbps.",
            "5 Gbps.",
            "10 Gbps.",
          },
          type = "string",
        },
        cidr = {
          description = "CIDR range of the network.",
          type = "string",
        },
        gcpService = {
          description = "The GCP service of the network. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.",
          type = "string",
        },
        id = {
          description = "A transient unique identifier to identify a volume within an ProvisioningConfig request.",
          type = "string",
        },
        jumboFramesEnabled = {
          description = "The JumboFramesEnabled option for customer to set.",
          type = "boolean",
        },
        name = {
          description = "Output only. The name of the network config.",
          readOnly = true,
          type = "string",
        },
        serviceCidr = {
          description = "Service CIDR, if any.",
          enum = {
            "SERVICE_CIDR_UNSPECIFIED",
            "DISABLED",
            "HIGH_26",
            "HIGH_27",
            "HIGH_28",
          },
          enumDescriptions = {
            "Unspecified value.",
            "Services are disabled for the given network.",
            "Use the highest /26 block of the network to host services.",
            "Use the highest /27 block of the network to host services.",
            "Use the highest /28 block of the network to host services.",
          },
          type = "string",
        },
        type = {
          description = "The type of this network, either Client or Private.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CLIENT",
            "PRIVATE",
          },
          enumDescriptions = {
            "Unspecified value.",
            "Client network, that is a network peered to a GCP VPC.",
            "Private network, that is a network local to the BMS POD.",
          },
          type = "string",
        },
        userNote = {
          description = "User note field, it can be used by customers to add additional information for the BMS Ops team .",
          type = "string",
        },
        vlanAttachments = {
          description = "List of VLAN attachments. As of now there are always 2 attachments, but it is going to change in the future (multi vlan).",
          items = {
            ["$ref"] = "IntakeVlanAttachment",
          },
          type = "array",
        },
        vlanSameProject = {
          description = "Whether the VLAN attachment pair is located in the same project.",
          type = "boolean",
        },
      },
      type = "object",
    },
    NetworkMountPoint = {
      description = "Mount point for a network.",
      id = "NetworkMountPoint",
      properties = {
        defaultGateway = {
          description = "Network should be a default gateway.",
          type = "boolean",
        },
        instance = {
          description = "Instance to attach network to.",
          type = "string",
        },
        ipAddress = {
          description = "Ip address of the server.",
          type = "string",
        },
        logicalInterface = {
          description = "Logical interface to detach from.",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkUsage = {
      description = "Network with all used IP addresses.",
      id = "NetworkUsage",
      properties = {
        network = {
          ["$ref"] = "Network",
          description = "Network.",
        },
        usedIps = {
          description = "All used IP addresses in this network.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    NfsExport = {
      description = "A NFS export entry.",
      id = "NfsExport",
      properties = {
        allowDev = {
          description = "Allow dev flag in NfsShare AllowedClientsRequest.",
          type = "boolean",
        },
        allowSuid = {
          description = "Allow the setuid flag.",
          type = "boolean",
        },
        cidr = {
          description = "A CIDR range.",
          type = "string",
        },
        machineId = {
          description = "Either a single machine, identified by an ID, or a comma-separated list of machine IDs.",
          type = "string",
        },
        networkId = {
          description = "Network to use to publish the export.",
          type = "string",
        },
        noRootSquash = {
          description = "Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.",
          type = "boolean",
        },
        permissions = {
          description = "Export permissions.",
          enum = {
            "PERMISSIONS_UNSPECIFIED",
            "READ_ONLY",
            "READ_WRITE",
          },
          enumDescriptions = {
            "Unspecified value.",
            "Read-only permission.",
            "Read-write permission.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NfsShare = {
      description = "An NFS share.",
      id = "NfsShare",
      properties = {
        allowedClients = {
          description = "List of allowed access points.",
          items = {
            ["$ref"] = "AllowedClient",
          },
          type = "array",
        },
        id = {
          description = "Output only. An identifier for the NFS share, generated by the backend. This is the same value as nfs_share_id and will replace it in the future.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels as key value pairs.",
          type = "object",
        },
        name = {
          description = "Immutable. The name of the NFS share.",
          type = "string",
        },
        nfsShareId = {
          description = "Output only. An identifier for the NFS share, generated by the backend. This field will be deprecated in the future, use `id` instead.",
          readOnly = true,
          type = "string",
        },
        requestedSizeGib = {
          description = "The requested size, in GiB.",
          format = "int64",
          type = "string",
        },
        state = {
          description = "Output only. The state of the NFS share.",
          enum = {
            "STATE_UNSPECIFIED",
            "PROVISIONED",
            "CREATING",
            "UPDATING",
            "DELETING",
          },
          enumDescriptions = {
            "The share is in an unknown state.",
            "The share has been provisioned.",
            "The NFS Share is being created.",
            "The NFS Share is being updated.",
            "The NFS Share has been requested to be deleted.",
          },
          readOnly = true,
          type = "string",
        },
        storageType = {
          description = "Immutable. The storage type of the underlying volume.",
          enum = {
            "STORAGE_TYPE_UNSPECIFIED",
            "SSD",
            "HDD",
          },
          enumDescriptions = {
            "The storage type for this volume is unknown.",
            "The storage type for this volume is SSD.",
            "This storage type for this volume is HDD.",
          },
          type = "string",
        },
        volume = {
          description = "Output only. The underlying volume of the share. Created automatically during provisioning.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    OSImage = {
      description = "Operation System image.",
      id = "OSImage",
      properties = {
        applicableInstanceTypes = {
          description = "Instance types this image is applicable to. [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)",
          items = {
            type = "string",
          },
          type = "array",
        },
        code = {
          description = "OS Image code.",
          type = "string",
        },
        description = {
          description = "OS Image description.",
          type = "string",
        },
        name = {
          description = "Output only. OS Image's unique name.",
          readOnly = true,
          type = "string",
        },
        supportedNetworkTemplates = {
          description = "Network templates that can be used with this OS Image.",
          items = {
            ["$ref"] = "ServerNetworkTemplate",
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
    ProvisioningConfig = {
      description = "A provisioning configuration.",
      id = "ProvisioningConfig",
      properties = {
        cloudConsoleUri = {
          description = "Output only. URI to Cloud Console UI view of this provisioning config.",
          readOnly = true,
          type = "string",
        },
        customId = {
          description = "Optional. The user-defined identifier of the provisioning config.",
          type = "string",
        },
        email = {
          description = "Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.",
          type = "string",
        },
        handoverServiceAccount = {
          description = "A service account to enable customers to access instance credentials upon handover.",
          type = "string",
        },
        instances = {
          description = "Instances to be created.",
          items = {
            ["$ref"] = "InstanceConfig",
          },
          type = "array",
        },
        location = {
          description = "Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.",
          type = "string",
        },
        name = {
          description = "Output only. The system-generated name of the provisioning config. This follows the UUID format.",
          readOnly = true,
          type = "string",
        },
        networks = {
          description = "Networks to be created.",
          items = {
            ["$ref"] = "NetworkConfig",
          },
          type = "array",
        },
        state = {
          description = "Output only. State of ProvisioningConfig.",
          enum = {
            "STATE_UNSPECIFIED",
            "DRAFT",
            "SUBMITTED",
            "PROVISIONING",
            "PROVISIONED",
            "VALIDATED",
            "CANCELLED",
            "FAILED",
          },
          enumDescriptions = {
            "State wasn't specified.",
            "ProvisioningConfig is a draft and can be freely modified.",
            "ProvisioningConfig was already submitted and cannot be modified.",
            "ProvisioningConfig was in the provisioning state. Initially this state comes from the work order table in big query when SNOW is used. Later this field can be set by the work order API.",
            "ProvisioningConfig was provisioned, meaning the resources exist.",
            "ProvisioningConfig was validated. A validation tool will be run to set this state.",
            "ProvisioningConfig was canceled.",
            "The request is submitted for provisioning, with error return.",
          },
          readOnly = true,
          type = "string",
        },
        statusMessage = {
          description = "Optional status messages associated with the FAILED state.",
          type = "string",
        },
        ticketId = {
          description = "A generated ticket id to track provisioning request.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Last update timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        volumes = {
          description = "Volumes to be created.",
          items = {
            ["$ref"] = "VolumeConfig",
          },
          type = "array",
        },
        vpcScEnabled = {
          description = "If true, VPC SC is enabled for the cluster.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ProvisioningQuota = {
      description = "A provisioning quota for a given project.",
      id = "ProvisioningQuota",
      properties = {
        assetType = {
          description = "The asset type of this provisioning quota.",
          enum = {
            "ASSET_TYPE_UNSPECIFIED",
            "ASSET_TYPE_SERVER",
            "ASSET_TYPE_STORAGE",
            "ASSET_TYPE_NETWORK",
          },
          enumDescriptions = {
            "The unspecified type.",
            "The server asset type.",
            "The storage asset type.",
            "The network asset type.",
          },
          type = "string",
        },
        availableCount = {
          description = "The available count of the provisioning quota.",
          format = "int32",
          type = "integer",
        },
        gcpService = {
          description = "The gcp service of the provisioning quota.",
          type = "string",
        },
        instanceQuota = {
          ["$ref"] = "InstanceQuota",
          description = "Instance quota.",
        },
        location = {
          description = "The specific location of the provisioining quota.",
          type = "string",
        },
        name = {
          description = "Output only. The name of the provisioning quota.",
          readOnly = true,
          type = "string",
        },
        networkBandwidth = {
          description = "Network bandwidth, Gbps",
          format = "int64",
          type = "string",
        },
        serverCount = {
          description = "Server count.",
          format = "int64",
          type = "string",
        },
        storageGib = {
          description = "Storage size (GB).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    QosPolicy = {
      description = "QOS policy parameters.",
      id = "QosPolicy",
      properties = {
        bandwidthGbps = {
          description = "The bandwidth permitted by the QOS policy, in gbps.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ResetInstanceRequest = {
      description = "Message requesting to reset a server.",
      id = "ResetInstanceRequest",
      properties = {},
      type = "object",
    },
    ResizeVolumeRequest = {
      description = "Request for emergency resize Volume.",
      id = "ResizeVolumeRequest",
      properties = {
        sizeGib = {
          description = "New Volume size, in GiB.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    RestoreVolumeSnapshotRequest = {
      description = "Message for restoring a volume snapshot.",
      id = "RestoreVolumeSnapshotRequest",
      properties = {},
      type = "object",
    },
    SSHKey = {
      description = "An SSH key, used for authorizing with the interactive serial console feature.",
      id = "SSHKey",
      properties = {
        name = {
          description = "Output only. The name of this SSH key. Currently, the only valid value for the location is \"global\".",
          readOnly = true,
          type = "string",
        },
        publicKey = {
          description = "The public SSH key. This must be in OpenSSH .authorized_keys format.",
          type = "string",
        },
      },
      type = "object",
    },
    ServerNetworkTemplate = {
      description = "Network template.",
      id = "ServerNetworkTemplate",
      properties = {
        applicableInstanceTypes = {
          description = "Instance types this template is applicable to.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logicalInterfaces = {
          description = "Logical interfaces.",
          items = {
            ["$ref"] = "GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface",
          },
          type = "array",
        },
        name = {
          description = "Output only. Template's unique name. The full resource name follows the pattern: `projects/{project}/locations/{location}/serverNetworkTemplate/{server_network_template}` Generally, the {server_network_template} follows the syntax of \"bond\" or \"nic\".",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SnapshotReservationDetail = {
      description = "Details about snapshot space reservation and usage on the storage volume.",
      id = "SnapshotReservationDetail",
      properties = {
        reservedSpaceGib = {
          description = "The space on this storage volume reserved for snapshots, shown in GiB.",
          format = "int64",
          type = "string",
        },
        reservedSpacePercent = {
          description = "Percent of the total Volume size reserved for snapshot copies. Enabling snapshots requires reserving 20% or more of the storage volume space for snapshots. Maximum reserved space for snapshots is 40%. Setting this field will effectively set snapshot_enabled to true.",
          format = "int32",
          type = "integer",
        },
        reservedSpaceRemainingGib = {
          description = "The amount, in GiB, of available space in this storage volume's reserved snapshot space.",
          format = "int64",
          type = "string",
        },
        reservedSpaceUsedPercent = {
          description = "The percent of snapshot space on this storage volume actually being used by the snapshot copies. This value might be higher than 100% if the snapshot copies have overflowed into the data portion of the storage volume.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    StartInstanceRequest = {
      description = "Message requesting to start a server.",
      id = "StartInstanceRequest",
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
    StopInstanceRequest = {
      description = "Message requesting to stop a server.",
      id = "StopInstanceRequest",
      properties = {},
      type = "object",
    },
    SubmitProvisioningConfigRequest = {
      description = "Request for SubmitProvisioningConfig.",
      id = "SubmitProvisioningConfigRequest",
      properties = {
        email = {
          description = "Optional. Email provided to send a confirmation with provisioning config to.",
          type = "string",
        },
        provisioningConfig = {
          ["$ref"] = "ProvisioningConfig",
          description = "Required. The ProvisioningConfig to create.",
        },
      },
      type = "object",
    },
    SubmitProvisioningConfigResponse = {
      description = "Response for SubmitProvisioningConfig.",
      id = "SubmitProvisioningConfigResponse",
      properties = {
        provisioningConfig = {
          ["$ref"] = "ProvisioningConfig",
          description = "The submitted provisioning config.",
        },
      },
      type = "object",
    },
    VRF = {
      description = "A network VRF.",
      id = "VRF",
      properties = {
        name = {
          description = "The name of the VRF.",
          type = "string",
        },
        qosPolicy = {
          ["$ref"] = "QosPolicy",
          description = "The QOS policy applied to this VRF. The value is only meaningful when all the vlan attachments have the same QoS. This field should not be used for new integrations, use vlan attachment level qos instead. The field is left for backward-compatibility.",
        },
        state = {
          description = "The possible state of VRF.",
          enum = {
            "STATE_UNSPECIFIED",
            "PROVISIONING",
            "PROVISIONED",
          },
          enumDescriptions = {
            "The unspecified state.",
            "The vrf is provisioning.",
            "The vrf is provisioned.",
          },
          type = "string",
        },
        vlanAttachments = {
          description = "The list of VLAN attachments for the VRF.",
          items = {
            ["$ref"] = "VlanAttachment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VlanAttachment = {
      description = "VLAN attachment details.",
      id = "VlanAttachment",
      properties = {
        id = {
          description = "Immutable. The identifier of the attachment within vrf.",
          type = "string",
        },
        pairingKey = {
          description = "Input only. Pairing key.",
          type = "string",
        },
        peerIp = {
          description = "The peer IP of the attachment.",
          type = "string",
        },
        peerVlanId = {
          description = "The peer vlan ID of the attachment.",
          format = "int64",
          type = "string",
        },
        qosPolicy = {
          ["$ref"] = "QosPolicy",
          description = "The QOS policy applied to this VLAN attachment. This value should be preferred to using qos at vrf level.",
        },
        routerIp = {
          description = "The router IP of the attachment.",
          type = "string",
        },
      },
      type = "object",
    },
    Volume = {
      description = "A storage volume.",
      id = "Volume",
      properties = {
        autoGrownSizeGib = {
          description = "The size, in GiB, that this storage volume has expanded as a result of an auto grow policy. In the absence of auto-grow, the value is 0.",
          format = "int64",
          type = "string",
        },
        bootVolume = {
          description = "Output only. Whether this volume is a boot volume. A boot volume is one which contains a boot LUN.",
          readOnly = true,
          type = "boolean",
        },
        currentSizeGib = {
          description = "The current size of this storage volume, in GiB, including space reserved for snapshots. This size might be different than the requested size if the storage volume has been configured with auto grow or auto shrink.",
          format = "int64",
          type = "string",
        },
        emergencySizeGib = {
          description = "Additional emergency size that was requested for this Volume, in GiB. current_size_gib includes this value.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "An identifier for the `Volume`, generated by the backend.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels as key value pairs.",
          type = "object",
        },
        maxSizeGib = {
          description = "Maximum size volume can be expanded to in case of evergency, in GiB.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of this `Volume`. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. Format: `projects/{project}/locations/{location}/volumes/{volume}`",
          readOnly = true,
          type = "string",
        },
        notes = {
          description = "Input only. User-specified notes for new Volume. Used to provision Volumes that require manual intervention.",
          type = "string",
        },
        originallyRequestedSizeGib = {
          description = "Originally requested size, in GiB.",
          format = "int64",
          type = "string",
        },
        performanceTier = {
          description = "Immutable. Performance tier of the Volume. Default is SHARED.",
          enum = {
            "VOLUME_PERFORMANCE_TIER_UNSPECIFIED",
            "VOLUME_PERFORMANCE_TIER_SHARED",
            "VOLUME_PERFORMANCE_TIER_ASSIGNED",
            "VOLUME_PERFORMANCE_TIER_HT",
          },
          enumDescriptions = {
            "Value is not specified.",
            "Regular volumes, shared aggregates.",
            "Assigned aggregates.",
            "High throughput aggregates.",
          },
          type = "string",
        },
        pod = {
          description = "Immutable. Pod name.",
          type = "string",
        },
        protocol = {
          description = "Output only. Storage protocol for the Volume.",
          enum = {
            "PROTOCOL_UNSPECIFIED",
            "FIBRE_CHANNEL",
            "NFS",
          },
          enumDescriptions = {
            "Value is not specified.",
            "Fibre Channel protocol.",
            "NFS protocol means Volume is a NFS Share volume. Such volumes cannot be manipulated via Volumes API.",
          },
          readOnly = true,
          type = "string",
        },
        remainingSpaceGib = {
          description = "The space remaining in the storage volume for new LUNs, in GiB, excluding space reserved for snapshots.",
          format = "int64",
          type = "string",
        },
        requestedSizeGib = {
          description = "The requested size of this storage volume, in GiB.",
          format = "int64",
          type = "string",
        },
        snapshotAutoDeleteBehavior = {
          description = "The behavior to use when snapshot reserved space is full.",
          enum = {
            "SNAPSHOT_AUTO_DELETE_BEHAVIOR_UNSPECIFIED",
            "DISABLED",
            "OLDEST_FIRST",
            "NEWEST_FIRST",
          },
          enumDescriptions = {
            "The unspecified behavior.",
            "Don't delete any snapshots. This disables new snapshot creation, as long as the snapshot reserved space is full.",
            "Delete the oldest snapshots first.",
            "Delete the newest snapshots first.",
          },
          type = "string",
        },
        snapshotEnabled = {
          description = "Whether snapshots are enabled.",
          type = "boolean",
        },
        snapshotReservationDetail = {
          ["$ref"] = "SnapshotReservationDetail",
          description = "Details about snapshot space reservation and usage on the storage volume.",
        },
        snapshotSchedulePolicy = {
          description = "The name of the snapshot schedule policy in use for this volume, if any.",
          type = "string",
        },
        state = {
          description = "The state of this storage volume.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "The storage volume is in an unknown state.",
            "The storage volume is being created.",
            "The storage volume is ready for use.",
            "The storage volume has been requested to be deleted.",
            "The storage volume is being updated.",
          },
          type = "string",
        },
        storageType = {
          description = "The storage type for this volume.",
          enum = {
            "STORAGE_TYPE_UNSPECIFIED",
            "SSD",
            "HDD",
          },
          enumDescriptions = {
            "The storage type for this volume is unknown.",
            "The storage type for this volume is SSD.",
            "This storage type for this volume is HDD.",
          },
          type = "string",
        },
        workloadProfile = {
          description = "The workload profile for the volume.",
          enum = {
            "WORKLOAD_PROFILE_UNSPECIFIED",
            "GENERIC",
            "HANA",
          },
          enumDescriptions = {
            "The workload profile is in an unknown state.",
            "The workload profile is generic.",
            "The workload profile is hana.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    VolumeConfig = {
      description = "Configuration parameters for a new volume.",
      id = "VolumeConfig",
      properties = {
        gcpService = {
          description = "The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.",
          type = "string",
        },
        id = {
          description = "A transient unique identifier to identify a volume within an ProvisioningConfig request.",
          type = "string",
        },
        lunRanges = {
          description = "LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.",
          items = {
            ["$ref"] = "LunRange",
          },
          type = "array",
        },
        machineIds = {
          description = "Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Output only. The name of the volume config.",
          readOnly = true,
          type = "string",
        },
        nfsExports = {
          description = "NFS exports. Set only when protocol is PROTOCOL_NFS.",
          items = {
            ["$ref"] = "NfsExport",
          },
          type = "array",
        },
        performanceTier = {
          description = "Performance tier of the Volume. Default is SHARED.",
          enum = {
            "VOLUME_PERFORMANCE_TIER_UNSPECIFIED",
            "VOLUME_PERFORMANCE_TIER_SHARED",
            "VOLUME_PERFORMANCE_TIER_ASSIGNED",
            "VOLUME_PERFORMANCE_TIER_HT",
          },
          enumDescriptions = {
            "Value is not specified.",
            "Regular volumes, shared aggregates.",
            "Assigned aggregates.",
            "High throughput aggregates.",
          },
          type = "string",
        },
        protocol = {
          description = "Volume protocol.",
          enum = {
            "PROTOCOL_UNSPECIFIED",
            "PROTOCOL_FC",
            "PROTOCOL_NFS",
          },
          enumDescriptions = {
            "Unspecified value.",
            "Fibre channel.",
            "Network file system.",
          },
          type = "string",
        },
        sizeGb = {
          description = "The requested size of this volume, in GB.",
          format = "int32",
          type = "integer",
        },
        snapshotsEnabled = {
          description = "Whether snapshots should be enabled.",
          type = "boolean",
        },
        type = {
          description = "The type of this Volume.",
          enum = {
            "TYPE_UNSPECIFIED",
            "FLASH",
            "DISK",
          },
          enumDescriptions = {
            "The unspecified type.",
            "This Volume is on flash.",
            "This Volume is on disk.",
          },
          type = "string",
        },
        userNote = {
          description = "User note field, it can be used by customers to add additional information for the BMS Ops team .",
          type = "string",
        },
      },
      type = "object",
    },
    VolumeSnapshot = {
      description = "A snapshot of a volume. Only boot volumes can have snapshots.",
      id = "VolumeSnapshot",
      properties = {
        createTime = {
          description = "Output only. The creation time of the snapshot.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The description of the snapshot.",
          type = "string",
        },
        id = {
          description = "Output only. An identifier for the snapshot, generated by the backend.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The name of the snapshot.",
          type = "string",
        },
        storageVolume = {
          description = "Output only. The name of the volume which this snapshot belongs to.",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. The type of the snapshot which indicates whether it was scheduled or manual/ad-hoc.",
          enum = {
            "SNAPSHOT_TYPE_UNSPECIFIED",
            "AD_HOC",
            "SCHEDULED",
          },
          enumDescriptions = {
            "Type is not specified.",
            "Snapshot was taken manually by user.",
            "Snapshot was taken automatically as a part of a snapshot schedule.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Bare Metal Solution API",
  version = "v2",
  version_module = true,
}
