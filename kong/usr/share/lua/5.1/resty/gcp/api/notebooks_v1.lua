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
  baseUrl = "https://notebooks.googleapis.com/",
  batchPath = "batch",
  canonicalName = "AI Platform Notebooks",
  description = "Notebooks API is used to manage notebook resources in Google Cloud.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/notebooks/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "notebooks:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://notebooks.mtls.googleapis.com/",
  name = "notebooks",
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
              id = "notebooks.projects.locations.get",
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
              id = "notebooks.projects.locations.list",
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
            environments = {
              methods = {
                create = {
                  description = "Creates a new Environment.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/environments",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.environments.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    environmentId = {
                      description = "Required. User-defined unique ID of this environment. The `environment_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/environments",
                  request = {
                    ["$ref"] = "Environment",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Environment.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/environments/{environmentsId}",
                  httpMethod = "DELETE",
                  id = "notebooks.projects.locations.environments.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/environments/{environment_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/environments/[^/]+$",
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
                  description = "Gets details of a single Environment.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/environments/{environmentsId}",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.environments.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/environments/{environment_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Environment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists environments in a project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/environments",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.environments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum return size of the list call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A previous returned page token that can be used to continue listing from the last result.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/environments",
                  response = {
                    ["$ref"] = "ListEnvironmentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            executions = {
              methods = {
                create = {
                  description = "Creates a new Execution in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/executions",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.executions.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    executionId = {
                      description = "Required. User-defined unique ID of this execution.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/executions",
                  request = {
                    ["$ref"] = "Execution",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes execution",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/executions/{executionsId}",
                  httpMethod = "DELETE",
                  id = "notebooks.projects.locations.executions.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/executions/{execution_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/executions/[^/]+$",
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
                  description = "Gets details of executions",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/executions/{executionsId}",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.executions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/executions/{execution_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/executions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Execution",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists executions in a given project and location",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/executions",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.executions.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter applied to resulting executions. Currently only supports filtering executions by a specified schedule_id. Format: `schedule_id=`",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort by field.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum return size of the list call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A previous returned page token that can be used to continue listing from the last result.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/executions",
                  response = {
                    ["$ref"] = "ListExecutionsResponse",
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
                  description = "Creates a new Instance in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    instanceId = {
                      description = "Required. User-defined unique ID of this instance.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances",
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
                delete = {
                  description = "Deletes a single Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "DELETE",
                  id = "notebooks.projects.locations.instances.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                diagnose = {
                  description = "Creates a Diagnostic File and runs Diagnostic Tool given an Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:diagnose",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.diagnose",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:diagnose",
                  request = {
                    ["$ref"] = "DiagnoseInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details of a single Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.instances.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Instance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.instances.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                getInstanceHealth = {
                  description = "Check if a notebook instance is healthy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:getInstanceHealth",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.instances.getInstanceHealth",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:getInstanceHealth",
                  response = {
                    ["$ref"] = "GetInstanceHealthResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                isUpgradeable = {
                  description = "Check if a notebook instance is upgradable.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:isUpgradeable",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.instances.isUpgradeable",
                  parameterOrder = {
                    "notebookInstance",
                  },
                  parameters = {
                    notebookInstance = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "Optional. The optional UpgradeType. Setting this field will search for additional compute images to upgrade this instance.",
                      enum = {
                        "UPGRADE_TYPE_UNSPECIFIED",
                        "UPGRADE_FRAMEWORK",
                        "UPGRADE_OS",
                        "UPGRADE_CUDA",
                        "UPGRADE_ALL",
                      },
                      enumDescriptions = {
                        "Upgrade type is not specified.",
                        "Upgrade ML framework.",
                        "Upgrade Operating System.",
                        "Upgrade CUDA.",
                        "Upgrade All (OS, Framework and CUDA).",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+notebookInstance}:isUpgradeable",
                  response = {
                    ["$ref"] = "IsInstanceUpgradeableResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists instances in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.instances.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum return size of the list call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A previous returned page token that can be used to continue listing from the last result.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances",
                  response = {
                    ["$ref"] = "ListInstancesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                register = {
                  description = "Registers an existing legacy notebook instance to the Notebooks API server. Legacy instances are instances created with the legacy Compute Engine calls. They are not manageable by the Notebooks API out of the box. This call makes these instances manageable by the Notebooks API.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances:register",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.register",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instances:register",
                  request = {
                    ["$ref"] = "RegisterInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                report = {
                  description = "Allows notebook instances to report their latest instance information to the Notebooks API server. The server will merge the reported information to the instance metadata store. Do not use this method directly.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:report",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.report",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:report",
                  request = {
                    ["$ref"] = "ReportInstanceInfoRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                reset = {
                  description = "Resets a notebook instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:reset",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.reset",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:reset",
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
                rollback = {
                  description = "Rollbacks a notebook instance to the previous version.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:rollback",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.rollback",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:rollback",
                  request = {
                    ["$ref"] = "RollbackInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setAccelerator = {
                  description = "Updates the guest accelerators of a single Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:setAccelerator",
                  httpMethod = "PATCH",
                  id = "notebooks.projects.locations.instances.setAccelerator",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setAccelerator",
                  request = {
                    ["$ref"] = "SetInstanceAcceleratorRequest",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                setLabels = {
                  description = "Replaces all the labels of an Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:setLabels",
                  httpMethod = "PATCH",
                  id = "notebooks.projects.locations.instances.setLabels",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setLabels",
                  request = {
                    ["$ref"] = "SetInstanceLabelsRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setMachineType = {
                  description = "Updates the machine type of a single Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:setMachineType",
                  httpMethod = "PATCH",
                  id = "notebooks.projects.locations.instances.setMachineType",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setMachineType",
                  request = {
                    ["$ref"] = "SetInstanceMachineTypeRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                start = {
                  description = "Starts a notebook instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:start",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.start",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:start",
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
                  description = "Stops a notebook instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:stop",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.stop",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:stop",
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
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
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
                updateConfig = {
                  description = "Update Notebook Instance configurations.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:updateConfig",
                  httpMethod = "PATCH",
                  id = "notebooks.projects.locations.instances.updateConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:updateConfig",
                  request = {
                    ["$ref"] = "UpdateInstanceConfigRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateMetadataItems = {
                  description = "Add/update metadata items for an instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:updateMetadataItems",
                  httpMethod = "PATCH",
                  id = "notebooks.projects.locations.instances.updateMetadataItems",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:updateMetadataItems",
                  request = {
                    ["$ref"] = "UpdateInstanceMetadataItemsRequest",
                  },
                  response = {
                    ["$ref"] = "UpdateInstanceMetadataItemsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateShieldedInstanceConfig = {
                  description = "Updates the Shielded instance configuration of a single Instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:updateShieldedInstanceConfig",
                  httpMethod = "PATCH",
                  id = "notebooks.projects.locations.instances.updateShieldedInstanceConfig",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:updateShieldedInstanceConfig",
                  request = {
                    ["$ref"] = "UpdateShieldedInstanceConfigRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                upgrade = {
                  description = "Upgrades a notebook instance to the latest version.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:upgrade",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.upgrade",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:upgrade",
                  request = {
                    ["$ref"] = "UpgradeInstanceRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                upgradeInternal = {
                  description = "Allows notebook instances to call this endpoint to upgrade themselves. Do not use this method directly.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}:upgradeInternal",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.instances.upgradeInternal",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:upgradeInternal",
                  request = {
                    ["$ref"] = "UpgradeInstanceInternalRequest",
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
                  id = "notebooks.projects.locations.operations.cancel",
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
                  id = "notebooks.projects.locations.operations.delete",
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
                  id = "notebooks.projects.locations.operations.get",
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
                  id = "notebooks.projects.locations.operations.list",
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
            runtimes = {
              methods = {
                create = {
                  description = "Creates a new Runtime in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Idempotent request UUID.",
                      location = "query",
                      type = "string",
                    },
                    runtimeId = {
                      description = "Required. User-defined unique ID of this Runtime.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/runtimes",
                  request = {
                    ["$ref"] = "Runtime",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Runtime.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}",
                  httpMethod = "DELETE",
                  id = "notebooks.projects.locations.runtimes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Idempotent request UUID.",
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
                diagnose = {
                  description = "Creates a Diagnostic File and runs Diagnostic Tool given a Runtime.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:diagnose",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.diagnose",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtimes_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:diagnose",
                  request = {
                    ["$ref"] = "DiagnoseRuntimeRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details of a single Runtime. The location must be a regional endpoint rather than zonal.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.runtimes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Runtime",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.runtimes.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
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
                  description = "Lists Runtimes in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.runtimes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum return size of the list call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A previous returned page token that can be used to continue listing from the last result.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/runtimes",
                  response = {
                    ["$ref"] = "ListRuntimesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update Notebook Runtime configuration.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}",
                  httpMethod = "PATCH",
                  id = "notebooks.projects.locations.runtimes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Idempotent request UUID.",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Specifies the path, relative to `Runtime`, of the field to update. For example, to change the software configuration kernels, the `update_mask` parameter would be specified as `software_config.kernels`, and the `PATCH` request body would specify the new value, as follows: { \"software_config\":{ \"kernels\": [{ 'repository': 'gcr.io/deeplearning-platform-release/pytorch-gpu', 'tag': 'latest' }], } } Currently, only the following fields can be updated: - software_config.kernels - software_config.post_startup_script - software_config.custom_gpu_driver_path - software_config.idle_shutdown - software_config.idle_shutdown_timeout - software_config.disable_terminal",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Runtime",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                refreshRuntimeTokenInternal = {
                  description = "Gets an access token for the consumer service account that the customer attached to the runtime. Only accessible from the tenant instance.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:refreshRuntimeTokenInternal",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.refreshRuntimeTokenInternal",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:refreshRuntimeTokenInternal",
                  request = {
                    ["$ref"] = "RefreshRuntimeTokenInternalRequest",
                  },
                  response = {
                    ["$ref"] = "RefreshRuntimeTokenInternalResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                reportEvent = {
                  description = "Report and process a runtime event.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:reportEvent",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.reportEvent",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:reportEvent",
                  request = {
                    ["$ref"] = "ReportRuntimeEventRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                reset = {
                  description = "Resets a Managed Notebook Runtime.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:reset",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.reset",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:reset",
                  request = {
                    ["$ref"] = "ResetRuntimeRequest",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
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
                start = {
                  description = "Starts a Managed Notebook Runtime. Perform \"Start\" on GPU instances; \"Resume\" on CPU instances See: https://cloud.google.com/compute/docs/instances/stop-start-instance https://cloud.google.com/compute/docs/instances/suspend-resume-instance",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:start",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.start",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:start",
                  request = {
                    ["$ref"] = "StartRuntimeRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                stop = {
                  description = "Stops a Managed Notebook Runtime. Perform \"Stop\" on GPU instances; \"Suspend\" on CPU instances See: https://cloud.google.com/compute/docs/instances/stop-start-instance https://cloud.google.com/compute/docs/instances/suspend-resume-instance",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:stop",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.stop",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:stop",
                  request = {
                    ["$ref"] = "StopRuntimeRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                switch = {
                  description = "Switch a Managed Notebook Runtime.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:switch",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.switch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:switch",
                  request = {
                    ["$ref"] = "SwitchRuntimeRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
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
                upgrade = {
                  description = "Upgrades a Managed Notebook Runtime to the latest version.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/runtimes/{runtimesId}:upgrade",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.runtimes.upgrade",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/runtimes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:upgrade",
                  request = {
                    ["$ref"] = "UpgradeRuntimeRequest",
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
            schedules = {
              methods = {
                create = {
                  description = "Creates a new Scheduled Notebook in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/schedules",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.schedules.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    scheduleId = {
                      description = "Required. User-defined unique ID of this schedule.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/schedules",
                  request = {
                    ["$ref"] = "Schedule",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes schedule and all underlying jobs",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/schedules/{schedulesId}",
                  httpMethod = "DELETE",
                  id = "notebooks.projects.locations.schedules.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/schedules/[^/]+$",
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
                  description = "Gets details of schedule",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/schedules/{schedulesId}",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.schedules.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/schedules/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Schedule",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists schedules in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/schedules",
                  httpMethod = "GET",
                  id = "notebooks.projects.locations.schedules.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter applied to resulting schedules.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Field to order results by.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum return size of the list call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A previous returned page token that can be used to continue listing from the last result.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/schedules",
                  response = {
                    ["$ref"] = "ListSchedulesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                trigger = {
                  description = "Triggers execution of an existing schedule.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/schedules/{schedulesId}:trigger",
                  httpMethod = "POST",
                  id = "notebooks.projects.locations.schedules.trigger",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Format: `parent=projects/{project_id}/locations/{location}/schedules/{schedule_id}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/schedules/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:trigger",
                  request = {
                    ["$ref"] = "TriggerScheduleRequest",
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
  revision = "20221213",
  rootUrl = "https://notebooks.googleapis.com/",
  schemas = {
    AcceleratorConfig = {
      description = "Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. Check [GPUs on Compute Engine](/compute/docs/gpus/#gpus-list) to find a valid combination. TPUs are not supported.",
      id = "AcceleratorConfig",
      properties = {
        coreCount = {
          description = "Count of cores of this accelerator.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Type of this accelerator.",
          enum = {
            "ACCELERATOR_TYPE_UNSPECIFIED",
            "NVIDIA_TESLA_K80",
            "NVIDIA_TESLA_P100",
            "NVIDIA_TESLA_V100",
            "NVIDIA_TESLA_P4",
            "NVIDIA_TESLA_T4",
            "NVIDIA_TESLA_A100",
            "NVIDIA_TESLA_T4_VWS",
            "NVIDIA_TESLA_P100_VWS",
            "NVIDIA_TESLA_P4_VWS",
            "TPU_V2",
            "TPU_V3",
          },
          enumDescriptions = {
            "Accelerator type is not specified.",
            "Accelerator type is Nvidia Tesla K80.",
            "Accelerator type is Nvidia Tesla P100.",
            "Accelerator type is Nvidia Tesla V100.",
            "Accelerator type is Nvidia Tesla P4.",
            "Accelerator type is Nvidia Tesla T4.",
            "Accelerator type is Nvidia Tesla A100.",
            "Accelerator type is NVIDIA Tesla T4 Virtual Workstations.",
            "Accelerator type is NVIDIA Tesla P100 Virtual Workstations.",
            "Accelerator type is NVIDIA Tesla P4 Virtual Workstations.",
            "(Coming soon) Accelerator type is TPU V2.",
            "(Coming soon) Accelerator type is TPU V3.",
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
    BootImage = {
      description = "Definition of the boot image used by the Runtime. Used to facilitate runtime upgradeability.",
      id = "BootImage",
      properties = {},
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    ContainerImage = {
      description = "Definition of a container image for starting a notebook instance with the environment installed in a container.",
      id = "ContainerImage",
      properties = {
        repository = {
          description = "Required. The path to the container image repository. For example: `gcr.io/{project_id}/{image_name}`",
          type = "string",
        },
        tag = {
          description = "The tag of the container image. If not specified, this defaults to the latest tag.",
          type = "string",
        },
      },
      type = "object",
    },
    DataprocParameters = {
      description = "Parameters used in Dataproc JobType executions.",
      id = "DataprocParameters",
      properties = {
        cluster = {
          description = "URI for cluster used to run Dataproc execution. Format: `projects/{PROJECT_ID}/regions/{REGION}/clusters/{CLUSTER_NAME}`",
          type = "string",
        },
      },
      type = "object",
    },
    DiagnoseInstanceRequest = {
      description = "Request for creating a notebook instance diagnostic file.",
      id = "DiagnoseInstanceRequest",
      properties = {
        diagnosticConfig = {
          ["$ref"] = "DiagnosticConfig",
          description = "Required. Defines flags that are used to run the diagnostic tool",
        },
      },
      type = "object",
    },
    DiagnoseRuntimeRequest = {
      description = "Request for creating a notebook instance diagnostic file.",
      id = "DiagnoseRuntimeRequest",
      properties = {
        diagnosticConfig = {
          ["$ref"] = "DiagnosticConfig",
          description = "Required. Defines flags that are used to run the diagnostic tool",
        },
      },
      type = "object",
    },
    DiagnosticConfig = {
      description = "Defines flags that are used to run the diagnostic tool",
      id = "DiagnosticConfig",
      properties = {
        copyHomeFilesFlagEnabled = {
          description = "Optional. Enables flag to copy all `/home/jupyter` folder contents",
          type = "boolean",
        },
        gcsBucket = {
          description = "Required. User Cloud Storage bucket location (REQUIRED). Must be formatted with path prefix (`gs://$GCS_BUCKET`). Permissions: User Managed Notebooks: - storage.buckets.writer: Must be given to the project's service account attached to VM. Google Managed Notebooks: - storage.buckets.writer: Must be given to the project's service account or user credentials attached to VM depending on authentication mode. Cloud Storage bucket Log file will be written to `gs://$GCS_BUCKET/$RELATIVE_PATH/$VM_DATE_$TIME.tar.gz`",
          type = "string",
        },
        packetCaptureFlagEnabled = {
          description = "Optional. Enables flag to capture packets from the instance for 30 seconds",
          type = "boolean",
        },
        relativePath = {
          description = "Optional. Defines the relative storage path in the Cloud Storage bucket where the diagnostic logs will be written: Default path will be the root directory of the Cloud Storage bucket (`gs://$GCS_BUCKET/$DATE_$TIME.tar.gz`) Example of full path where Log file will be written: `gs://$GCS_BUCKET/$RELATIVE_PATH/`",
          type = "string",
        },
        repairFlagEnabled = {
          description = "Optional. Enables flag to repair service for instance",
          type = "boolean",
        },
      },
      type = "object",
    },
    Disk = {
      description = "An instance-attached disk resource.",
      id = "Disk",
      properties = {
        autoDelete = {
          description = "Indicates whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).",
          type = "boolean",
        },
        boot = {
          description = "Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.",
          type = "boolean",
        },
        deviceName = {
          description = "Indicates a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine.This field is only applicable for persistent disks.",
          type = "string",
        },
        diskSizeGb = {
          description = "Indicates the size of the disk in base-2 GB.",
          format = "int64",
          type = "string",
        },
        guestOsFeatures = {
          description = "Indicates a list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.",
          items = {
            ["$ref"] = "GuestOsFeature",
          },
          type = "array",
        },
        index = {
          description = "A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.",
          format = "int64",
          type = "string",
        },
        interface = {
          description = "Indicates the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * NVME * SCSI",
          type = "string",
        },
        kind = {
          description = "Type of the resource. Always compute#attachedDisk for attached disks.",
          type = "string",
        },
        licenses = {
          description = "A list of publicly visible licenses. Reserved for Google's use. A License represents billing and aggregate usage data for public and marketplace images.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mode = {
          description = "The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. Valid values: * READ_ONLY * READ_WRITE",
          type = "string",
        },
        source = {
          description = "Indicates a valid partial or full URL to an existing Persistent Disk resource.",
          type = "string",
        },
        type = {
          description = "Indicates the type of the disk, either SCRATCH or PERSISTENT. Valid values: * PERSISTENT * SCRATCH",
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
    EncryptionConfig = {
      description = "Represents a custom encryption key configuration that can be applied to a resource. This will encrypt all disks in Virtual Machine.",
      id = "EncryptionConfig",
      properties = {
        kmsKey = {
          description = "The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a disks. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`",
          type = "string",
        },
      },
      type = "object",
    },
    Environment = {
      description = "Definition of a software environment that is used to start a notebook instance.",
      id = "Environment",
      properties = {
        containerImage = {
          ["$ref"] = "ContainerImage",
          description = "Use a container image to start the notebook instance.",
        },
        createTime = {
          description = "Output only. The time at which this environment was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A brief description of this environment.",
          type = "string",
        },
        displayName = {
          description = "Display name of this environment for the UI.",
          type = "string",
        },
        name = {
          description = "Output only. Name of this environment. Format: `projects/{project_id}/locations/{location}/environments/{environment_id}`",
          readOnly = true,
          type = "string",
        },
        postStartupScript = {
          description = "Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path. Example: `\"gs://path-to-file/file-name\"`",
          type = "string",
        },
        vmImage = {
          ["$ref"] = "VmImage",
          description = "Use a Compute Engine VM image to start the notebook instance.",
        },
      },
      type = "object",
    },
    Event = {
      description = "The definition of an Event for a managed / semi-managed notebook instance.",
      id = "Event",
      properties = {
        details = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Event details. This field is used to pass event information.",
          type = "object",
        },
        reportTime = {
          description = "Event report time.",
          format = "google-datetime",
          type = "string",
        },
        type = {
          description = "Event type.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "IDLE",
            "HEARTBEAT",
            "HEALTH",
            "MAINTENANCE",
          },
          enumDescriptions = {
            "Event is not specified.",
            "The instance / runtime is idle",
            "The instance / runtime is available. This event indicates that instance / runtime underlying compute is operational.",
            "The instance / runtime health is available. This event indicates that instance / runtime health information.",
            "The instance / runtime is available. This event allows instance / runtime to send Host maintenance information to Control Plane. https://cloud.google.com/compute/docs/gpus/gpu-host-maintenance",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Execution = {
      description = "The definition of a single executed notebook.",
      id = "Execution",
      properties = {
        createTime = {
          description = "Output only. Time the Execution was instantiated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A brief description of this execution.",
          type = "string",
        },
        displayName = {
          description = "Output only. Name used for UI purposes. Name can only contain alphanumeric characters and underscores '_'.",
          readOnly = true,
          type = "string",
        },
        executionTemplate = {
          ["$ref"] = "ExecutionTemplate",
          description = "execute metadata including name, hardware spec, region, labels, etc.",
        },
        jobUri = {
          description = "Output only. The URI of the external job used to execute the notebook.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the execute. Format: `projects/{project_id}/locations/{location}/executions/{execution_id}`",
          readOnly = true,
          type = "string",
        },
        outputNotebookFile = {
          description = "Output notebook file generated by this execution",
          type = "string",
        },
        state = {
          description = "Output only. State of the underlying AI Platform job.",
          enum = {
            "STATE_UNSPECIFIED",
            "QUEUED",
            "PREPARING",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLING",
            "CANCELLED",
            "EXPIRED",
            "INITIALIZING",
          },
          enumDescriptions = {
            "The job state is unspecified.",
            "The job has been just created and processing has not yet begun.",
            "The service is preparing to execution the job.",
            "The job is in progress.",
            "The job completed successfully.",
            "The job failed. `error_message` should contain the details of the failure.",
            "The job is being cancelled. `error_message` should describe the reason for the cancellation.",
            "The job has been cancelled. `error_message` should describe the reason for the cancellation.",
            "The job has become expired (relevant to Vertex AI jobs) https://cloud.google.com/vertex-ai/docs/reference/rest/v1/JobState",
            "The Execution is being created.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Time the Execution was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ExecutionTemplate = {
      description = "The description a notebook execution workload.",
      id = "ExecutionTemplate",
      properties = {
        acceleratorConfig = {
          ["$ref"] = "SchedulerAcceleratorConfig",
          description = "Configuration (count and accelerator type) for hardware running notebook execution.",
        },
        containerImageUri = {
          description = "Container Image URI to a DLVM Example: 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be found at: https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container",
          type = "string",
        },
        dataprocParameters = {
          ["$ref"] = "DataprocParameters",
          description = "Parameters used in Dataproc JobType executions.",
        },
        inputNotebookFile = {
          description = "Path to the notebook file to execute. Must be in a Google Cloud Storage bucket. Format: `gs://{bucket_name}/{folder}/{notebook_file_name}` Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`",
          type = "string",
        },
        jobType = {
          description = "The type of Job to be used on this execution.",
          enum = {
            "JOB_TYPE_UNSPECIFIED",
            "VERTEX_AI",
            "DATAPROC",
          },
          enumDescriptions = {
            "No type specified.",
            "Custom Job in `aiplatform.googleapis.com`. Default value for an execution.",
            "Run execution on a cluster with Dataproc as a job. https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs",
          },
          type = "string",
        },
        kernelSpec = {
          description = "Name of the kernel spec to use. This must be specified if the kernel spec name on the execution target does not match the name in the input notebook file.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels for execution. If execution is scheduled, a field included will be 'nbs-scheduled'. Otherwise, it is an immediate execution, and an included field will be 'nbs-immediate'. Use fields to efficiently index between various types of executions.",
          type = "object",
        },
        masterType = {
          description = "Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. The following types are supported: - `n1-standard-4` - `n1-standard-8` - `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96` - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` - `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` - `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can use the following legacy machine types: - `standard` - `large_model` - `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu` - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` - `complex_model_m_p100` - `standard_v100` - `large_model_v100` - `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPU](https://cloud.google.com/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).",
          type = "string",
        },
        outputNotebookFolder = {
          description = "Path to the notebook folder to write to. Must be in a Google Cloud Storage bucket path. Format: `gs://{bucket_name}/{folder}` Ex: `gs://notebook_user/scheduled_notebooks`",
          type = "string",
        },
        parameters = {
          description = "Parameters used within the 'input_notebook_file' notebook.",
          type = "string",
        },
        paramsYamlFile = {
          description = "Parameters to be overridden in the notebook during execution. Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on how to specifying parameters in the input notebook and pass them here in an YAML file. Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`",
          type = "string",
        },
        scaleTier = {
          description = "Required. Scale tier of the hardware used for notebook execution. DEPRECATED Will be discontinued. As right now only CUSTOM is supported.",
          enum = {
            "SCALE_TIER_UNSPECIFIED",
            "BASIC",
            "STANDARD_1",
            "PREMIUM_1",
            "BASIC_GPU",
            "BASIC_TPU",
            "CUSTOM",
          },
          enumDescriptions = {
            "Unspecified Scale Tier.",
            "A single worker instance. This tier is suitable for learning how to use Cloud ML, and for experimenting with new models using small datasets.",
            "Many workers and a few parameter servers.",
            "A large number of workers with many parameter servers.",
            "A single worker instance with a K80 GPU.",
            "A single worker instance with a Cloud TPU.",
            "The CUSTOM tier is not a set tier, but rather enables you to use your own cluster specification. When you use this tier, set values to configure your processing cluster according to these guidelines: * You _must_ set `ExecutionTemplate.masterType` to specify the type of machine to use for your master node. This is the only required setting.",
          },
          type = "string",
        },
        serviceAccount = {
          description = "The email address of a service account to use when running the execution. You must have the `iam.serviceAccounts.actAs` permission for the specified service account.",
          type = "string",
        },
        tensorboard = {
          description = "The name of a Vertex AI [Tensorboard] resource to which this execution will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`",
          type = "string",
        },
        vertexAiParameters = {
          ["$ref"] = "VertexAIParameters",
          description = "Parameters used in Vertex AI JobType executions.",
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
    GetInstanceHealthResponse = {
      description = "Response for checking if a notebook instance is healthy.",
      id = "GetInstanceHealthResponse",
      properties = {
        healthInfo = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Additional information about instance health. Example: healthInfo\": { \"docker_proxy_agent_status\": \"1\", \"docker_status\": \"1\", \"jupyterlab_api_status\": \"-1\", \"jupyterlab_status\": \"-1\", \"updated\": \"2020-10-18 09:40:03.573409\" }",
          readOnly = true,
          type = "object",
        },
        healthState = {
          description = "Output only. Runtime health_state.",
          enum = {
            "HEALTH_STATE_UNSPECIFIED",
            "HEALTHY",
            "UNHEALTHY",
            "AGENT_NOT_INSTALLED",
            "AGENT_NOT_RUNNING",
          },
          enumDescriptions = {
            "The instance substate is unknown.",
            "The instance is known to be in an healthy state (for example, critical daemons are running) Applies to ACTIVE state.",
            "The instance is known to be in an unhealthy state (for example, critical daemons are not running) Applies to ACTIVE state.",
            "The instance has not installed health monitoring agent. Applies to ACTIVE state.",
            "The instance health monitoring agent is not running. Applies to ACTIVE state.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GuestOsFeature = {
      description = "Guest OS features for boot disk.",
      id = "GuestOsFeature",
      properties = {
        type = {
          description = "The ID of a supported feature. Read Enabling guest operating system features to see a list of available options. Valid values: * FEATURE_TYPE_UNSPECIFIED * MULTI_IP_SUBNET * SECURE_BOOT * UEFI_COMPATIBLE * VIRTIO_SCSI_MULTIQUEUE * WINDOWS",
          type = "string",
        },
      },
      type = "object",
    },
    Instance = {
      description = "The definition of a notebook instance.",
      id = "Instance",
      properties = {
        acceleratorConfig = {
          ["$ref"] = "AcceleratorConfig",
          description = "The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](/compute/docs/gpus/#gpus-list).",
        },
        bootDiskSizeGb = {
          description = "Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.",
          format = "int64",
          type = "string",
        },
        bootDiskType = {
          description = "Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).",
          enum = {
            "DISK_TYPE_UNSPECIFIED",
            "PD_STANDARD",
            "PD_SSD",
            "PD_BALANCED",
            "PD_EXTREME",
          },
          enumDescriptions = {
            "Disk type not set.",
            "Standard persistent disk type.",
            "SSD persistent disk type.",
            "Balanced persistent disk type.",
            "Extreme persistent disk type.",
          },
          type = "string",
        },
        canIpForward = {
          description = "Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward",
          type = "boolean",
        },
        containerImage = {
          ["$ref"] = "ContainerImage",
          description = "Use a container image to start the notebook instance.",
        },
        createTime = {
          description = "Output only. Instance creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          description = "Output only. Email address of entity that sent original CreateInstance request.",
          readOnly = true,
          type = "string",
        },
        customGpuDriverPath = {
          description = "Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.",
          type = "string",
        },
        dataDiskSizeGb = {
          description = "Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.",
          format = "int64",
          type = "string",
        },
        dataDiskType = {
          description = "Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).",
          enum = {
            "DISK_TYPE_UNSPECIFIED",
            "PD_STANDARD",
            "PD_SSD",
            "PD_BALANCED",
            "PD_EXTREME",
          },
          enumDescriptions = {
            "Disk type not set.",
            "Standard persistent disk type.",
            "SSD persistent disk type.",
            "Balanced persistent disk type.",
            "Extreme persistent disk type.",
          },
          type = "string",
        },
        diskEncryption = {
          description = "Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.",
          enum = {
            "DISK_ENCRYPTION_UNSPECIFIED",
            "GMEK",
            "CMEK",
          },
          enumDescriptions = {
            "Disk encryption is not specified.",
            "Use Google managed encryption keys to encrypt the boot disk.",
            "Use customer managed encryption keys to encrypt the boot disk.",
          },
          type = "string",
        },
        disks = {
          description = "Output only. Attached disks to notebook instance.",
          items = {
            ["$ref"] = "Disk",
          },
          readOnly = true,
          type = "array",
        },
        installGpuDriver = {
          description = "Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.",
          type = "boolean",
        },
        instanceOwners = {
          description = "Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kmsKey = {
          description = "Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels to apply to this instance. These can be later modified by the setLabels method.",
          type = "object",
        },
        machineType = {
          description = "Required. The [Compute Engine machine type](/compute/docs/machine-types) of this instance.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Custom metadata to apply to this instance.",
          type = "object",
        },
        name = {
          description = "Output only. The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`",
          readOnly = true,
          type = "string",
        },
        network = {
          description = "The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`",
          type = "string",
        },
        nicType = {
          description = "Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.",
          enum = {
            "UNSPECIFIED_NIC_TYPE",
            "VIRTIO_NET",
            "GVNIC",
          },
          enumDescriptions = {
            "No type specified.",
            "VIRTIO",
            "GVNIC",
          },
          type = "string",
        },
        noProxyAccess = {
          description = "If true, the notebook instance will not register with the proxy.",
          type = "boolean",
        },
        noPublicIp = {
          description = "If true, no public IP will be assigned to this instance.",
          type = "boolean",
        },
        noRemoveDataDisk = {
          description = "Input only. If true, the data disk will not be auto deleted when deleting the instance.",
          type = "boolean",
        },
        postStartupScript = {
          description = "Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).",
          type = "string",
        },
        proxyUri = {
          description = "Output only. The proxy endpoint that is used to access the Jupyter notebook.",
          readOnly = true,
          type = "string",
        },
        reservationAffinity = {
          ["$ref"] = "ReservationAffinity",
          description = "Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.",
        },
        serviceAccount = {
          description = "The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.",
          type = "string",
        },
        serviceAccountScopes = {
          description = "Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute",
          items = {
            type = "string",
          },
          type = "array",
        },
        shieldedInstanceConfig = {
          ["$ref"] = "ShieldedInstanceConfig",
          description = "Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).",
        },
        state = {
          description = "Output only. The state of this instance.",
          enum = {
            "STATE_UNSPECIFIED",
            "STARTING",
            "PROVISIONING",
            "ACTIVE",
            "STOPPING",
            "STOPPED",
            "DELETED",
            "UPGRADING",
            "INITIALIZING",
            "REGISTERING",
            "SUSPENDING",
            "SUSPENDED",
          },
          enumDescriptions = {
            "State is not specified.",
            "The control logic is starting the instance.",
            "The control logic is installing required frameworks and registering the instance with notebook proxy",
            "The instance is running.",
            "The control logic is stopping the instance.",
            "The instance is stopped.",
            "The instance is deleted.",
            "The instance is upgrading.",
            "The instance is being created.",
            "The instance is getting registered.",
            "The instance is suspending.",
            "The instance is suspended.",
          },
          readOnly = true,
          type = "string",
        },
        subnet = {
          description = "The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`",
          type = "string",
        },
        tags = {
          description = "Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).",
          items = {
            type = "string",
          },
          type = "array",
        },
        updateTime = {
          description = "Output only. Instance update time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        upgradeHistory = {
          description = "The upgrade history of this instance.",
          items = {
            ["$ref"] = "UpgradeHistoryEntry",
          },
          type = "array",
        },
        vmImage = {
          ["$ref"] = "VmImage",
          description = "Use a Compute Engine VM image to start the notebook instance.",
        },
      },
      type = "object",
    },
    InstanceConfig = {
      description = "Notebook instance configurations that can be updated.",
      id = "InstanceConfig",
      properties = {
        enableHealthMonitoring = {
          description = "Verifies core internal services are running.",
          type = "boolean",
        },
        notebookUpgradeSchedule = {
          description = "Cron expression in UTC timezone, used to schedule instance auto upgrade. Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).",
          type = "string",
        },
      },
      type = "object",
    },
    IsInstanceUpgradeableResponse = {
      description = "Response for checking if a notebook instance is upgradeable.",
      id = "IsInstanceUpgradeableResponse",
      properties = {
        upgradeImage = {
          description = "The new image self link this instance will be upgraded to if calling the upgrade endpoint. This field will only be populated if field upgradeable is true.",
          type = "string",
        },
        upgradeInfo = {
          description = "Additional information about upgrade.",
          type = "string",
        },
        upgradeVersion = {
          description = "The version this instance will be upgraded to if calling the upgrade endpoint. This field will only be populated if field upgradeable is true.",
          type = "string",
        },
        upgradeable = {
          description = "If an instance is upgradeable.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ListEnvironmentsResponse = {
      description = "Response for listing environments.",
      id = "ListEnvironmentsResponse",
      properties = {
        environments = {
          description = "A list of returned environments.",
          items = {
            ["$ref"] = "Environment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A page token that can be used to continue listing from the last result in the next list call.",
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
    ListExecutionsResponse = {
      description = "Response for listing scheduled notebook executions",
      id = "ListExecutionsResponse",
      properties = {
        executions = {
          description = "A list of returned instances.",
          items = {
            ["$ref"] = "Execution",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that can be used to continue listing from the last result in the next list call.",
          type = "string",
        },
        unreachable = {
          description = "Executions IDs that could not be reached. For example: ['projects/{project_id}/location/{location}/executions/imagenet_test1', 'projects/{project_id}/location/{location}/executions/classifier_train1']",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListInstancesResponse = {
      description = "Response for listing notebook instances.",
      id = "ListInstancesResponse",
      properties = {
        instances = {
          description = "A list of returned instances.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that can be used to continue listing from the last result in the next list call.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached. For example, ['us-west1-a', 'us-central1-b']. A ListInstancesResponse will only contain either instances or unreachables,",
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
    ListRuntimesResponse = {
      description = "Response for listing Managed Notebook Runtimes.",
      id = "ListRuntimesResponse",
      properties = {
        nextPageToken = {
          description = "Page token that can be used to continue listing from the last result in the next list call.",
          type = "string",
        },
        runtimes = {
          description = "A list of returned Runtimes.",
          items = {
            ["$ref"] = "Runtime",
          },
          type = "array",
        },
        unreachable = {
          description = "Locations that could not be reached. For example, ['us-west1', 'us-central1']. A ListRuntimesResponse will only contain either runtimes or unreachables,",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSchedulesResponse = {
      description = "Response for listing scheduled notebook job.",
      id = "ListSchedulesResponse",
      properties = {
        nextPageToken = {
          description = "Page token that can be used to continue listing from the last result in the next list call.",
          type = "string",
        },
        schedules = {
          description = "A list of returned instances.",
          items = {
            ["$ref"] = "Schedule",
          },
          type = "array",
        },
        unreachable = {
          description = "Schedules that could not be reached. For example: ['projects/{project_id}/location/{location}/schedules/monthly_digest', 'projects/{project_id}/location/{location}/schedules/weekly_sentiment']",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocalDisk = {
      description = "A Local attached disk resource.",
      id = "LocalDisk",
      properties = {
        autoDelete = {
          description = "Optional. Output only. Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).",
          readOnly = true,
          type = "boolean",
        },
        boot = {
          description = "Optional. Output only. Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.",
          readOnly = true,
          type = "boolean",
        },
        deviceName = {
          description = "Optional. Output only. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.",
          readOnly = true,
          type = "string",
        },
        guestOsFeatures = {
          description = "Output only. Indicates a list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.",
          items = {
            ["$ref"] = "RuntimeGuestOsFeature",
          },
          readOnly = true,
          type = "array",
        },
        index = {
          description = "Output only. A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        initializeParams = {
          ["$ref"] = "LocalDiskInitializeParams",
          description = "Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.",
        },
        interface = {
          description = "Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * NVME * SCSI",
          type = "string",
        },
        kind = {
          description = "Output only. Type of the resource. Always compute#attachedDisk for attached disks.",
          readOnly = true,
          type = "string",
        },
        licenses = {
          description = "Output only. Any valid publicly visible licenses.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        mode = {
          description = "The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. Valid values: * READ_ONLY * READ_WRITE",
          type = "string",
        },
        source = {
          description = "Specifies a valid partial or full URL to an existing Persistent Disk resource.",
          type = "string",
        },
        type = {
          description = "Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT. Valid values: * PERSISTENT * SCRATCH",
          type = "string",
        },
      },
      type = "object",
    },
    LocalDiskInitializeParams = {
      description = "Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new runtime. This property is mutually exclusive with the source property; you can only define one or the other, but not both.",
      id = "LocalDiskInitializeParams",
      properties = {
        description = {
          description = "Optional. Provide this property when creating the disk.",
          type = "string",
        },
        diskName = {
          description = "Optional. Specifies the disk name. If not specified, the default is to use the name of the instance. If the disk with the instance name exists already in the given zone/region, a new name will be automatically generated.",
          type = "string",
        },
        diskSizeGb = {
          description = "Optional. Specifies the size of the disk in base-2 GB. If not specified, the disk will be the same size as the image (usually 10GB). If specified, the size must be equal to or larger than 10GB. Default 100 GB.",
          format = "int64",
          type = "string",
        },
        diskType = {
          description = "Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).",
          enum = {
            "DISK_TYPE_UNSPECIFIED",
            "PD_STANDARD",
            "PD_SSD",
            "PD_BALANCED",
            "PD_EXTREME",
          },
          enumDescriptions = {
            "Disk type not set.",
            "Standard persistent disk type.",
            "SSD persistent disk type.",
            "Balanced persistent disk type.",
            "Extreme persistent disk type.",
          },
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.",
          type = "object",
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
          description = "API version used to start the operation.",
          type = "string",
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
        endpoint = {
          description = "API endpoint name of this operation.",
          type = "string",
        },
        requestedCancellation = {
          description = "Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          type = "boolean",
        },
        statusMessage = {
          description = "Human-readable status of the operation, if any.",
          type = "string",
        },
        target = {
          description = "Server-defined resource path for the target of the operation.",
          type = "string",
        },
        verb = {
          description = "Name of the verb executed by the operation.",
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
    RefreshRuntimeTokenInternalRequest = {
      description = "Request for getting a new access token.",
      id = "RefreshRuntimeTokenInternalRequest",
      properties = {
        vmId = {
          description = "Required. The VM hardware token for authenticating the VM. https://cloud.google.com/compute/docs/instances/verifying-instance-identity",
          type = "string",
        },
      },
      type = "object",
    },
    RefreshRuntimeTokenInternalResponse = {
      description = "Response with a new access token.",
      id = "RefreshRuntimeTokenInternalResponse",
      properties = {
        accessToken = {
          description = "The OAuth 2.0 access token.",
          type = "string",
        },
        expireTime = {
          description = "Output only. Token expiration time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    RegisterInstanceRequest = {
      description = "Request for registering a notebook instance.",
      id = "RegisterInstanceRequest",
      properties = {
        instanceId = {
          description = "Required. User defined unique ID of this instance. The `instance_id` must be 1 to 63 characters long and contain only lowercase letters, numeric characters, and dashes. The first character must be a lowercase letter and the last character cannot be a dash.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportInstanceInfoRequest = {
      description = "Request for notebook instances to report information to Notebooks API.",
      id = "ReportInstanceInfoRequest",
      properties = {
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "The metadata reported to Notebooks API. This will be merged to the instance metadata store",
          type = "object",
        },
        vmId = {
          description = "Required. The VM hardware token for authenticating the VM. https://cloud.google.com/compute/docs/instances/verifying-instance-identity",
          type = "string",
        },
      },
      type = "object",
    },
    ReportRuntimeEventRequest = {
      description = "Request for reporting a Managed Notebook Event.",
      id = "ReportRuntimeEventRequest",
      properties = {
        event = {
          ["$ref"] = "Event",
          description = "Required. The Event to be reported.",
        },
        vmId = {
          description = "Required. The VM hardware token for authenticating the VM. https://cloud.google.com/compute/docs/instances/verifying-instance-identity",
          type = "string",
        },
      },
      type = "object",
    },
    ReservationAffinity = {
      description = "Reservation Affinity for consuming Zonal reservation.",
      id = "ReservationAffinity",
      properties = {
        consumeReservationType = {
          description = "Optional. Type of reservation to consume",
          enum = {
            "TYPE_UNSPECIFIED",
            "NO_RESERVATION",
            "ANY_RESERVATION",
            "SPECIFIC_RESERVATION",
          },
          enumDescriptions = {
            "Default type.",
            "Do not consume from any allocated capacity.",
            "Consume any reservation available.",
            "Must consume from a specific reservation. Must specify key value fields for specifying the reservations.",
          },
          type = "string",
        },
        key = {
          description = "Optional. Corresponds to the label key of reservation resource.",
          type = "string",
        },
        values = {
          description = "Optional. Corresponds to the label values of reservation resource.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResetInstanceRequest = {
      description = "Request for resetting a notebook instance",
      id = "ResetInstanceRequest",
      properties = {},
      type = "object",
    },
    ResetRuntimeRequest = {
      description = "Request for resetting a Managed Notebook Runtime.",
      id = "ResetRuntimeRequest",
      properties = {
        requestId = {
          description = "Idempotent request UUID.",
          type = "string",
        },
      },
      type = "object",
    },
    RollbackInstanceRequest = {
      description = "Request for rollbacking a notebook instance",
      id = "RollbackInstanceRequest",
      properties = {
        targetSnapshot = {
          description = "Required. The snapshot for rollback. Example: \"projects/test-project/global/snapshots/krwlzipynril\".",
          type = "string",
        },
      },
      type = "object",
    },
    Runtime = {
      description = "The definition of a Runtime for a managed notebook instance.",
      id = "Runtime",
      properties = {
        accessConfig = {
          ["$ref"] = "RuntimeAccessConfig",
          description = "The config settings for accessing runtime.",
        },
        createTime = {
          description = "Output only. Runtime creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        healthState = {
          description = "Output only. Runtime health_state.",
          enum = {
            "HEALTH_STATE_UNSPECIFIED",
            "HEALTHY",
            "UNHEALTHY",
            "AGENT_NOT_INSTALLED",
            "AGENT_NOT_RUNNING",
          },
          enumDescriptions = {
            "The runtime substate is unknown.",
            "The runtime is known to be in an healthy state (for example, critical daemons are running) Applies to ACTIVE state.",
            "The runtime is known to be in an unhealthy state (for example, critical daemons are not running) Applies to ACTIVE state.",
            "The runtime has not installed health monitoring agent. Applies to ACTIVE state.",
            "The runtime health monitoring agent is not running. Applies to ACTIVE state.",
          },
          readOnly = true,
          type = "string",
        },
        metrics = {
          ["$ref"] = "RuntimeMetrics",
          description = "Output only. Contains Runtime daemon metrics such as Service status and JupyterLab stats.",
          readOnly = true,
        },
        name = {
          description = "Output only. The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`",
          readOnly = true,
          type = "string",
        },
        softwareConfig = {
          ["$ref"] = "RuntimeSoftwareConfig",
          description = "The config settings for software inside the runtime.",
        },
        state = {
          description = "Output only. Runtime state.",
          enum = {
            "STATE_UNSPECIFIED",
            "STARTING",
            "PROVISIONING",
            "ACTIVE",
            "STOPPING",
            "STOPPED",
            "DELETING",
            "UPGRADING",
            "INITIALIZING",
          },
          enumDescriptions = {
            "State is not specified.",
            "The compute layer is starting the runtime. It is not ready for use.",
            "The compute layer is installing required frameworks and registering the runtime with notebook proxy. It cannot be used.",
            "The runtime is currently running. It is ready for use.",
            "The control logic is stopping the runtime. It cannot be used.",
            "The runtime is stopped. It cannot be used.",
            "The runtime is being deleted. It cannot be used.",
            "The runtime is upgrading. It cannot be used.",
            "The runtime is being created and set up. It is not ready for use.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Runtime update time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        virtualMachine = {
          ["$ref"] = "VirtualMachine",
          description = "Use a Compute Engine VM image to start the managed notebook instance.",
        },
      },
      type = "object",
    },
    RuntimeAcceleratorConfig = {
      description = "Definition of the types of hardware accelerators that can be used. Definition of the types of hardware accelerators that can be used. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `nvidia-tesla-v100` * `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-a100`",
      id = "RuntimeAcceleratorConfig",
      properties = {
        coreCount = {
          description = "Count of cores of this accelerator.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Accelerator model.",
          enum = {
            "ACCELERATOR_TYPE_UNSPECIFIED",
            "NVIDIA_TESLA_K80",
            "NVIDIA_TESLA_P100",
            "NVIDIA_TESLA_V100",
            "NVIDIA_TESLA_P4",
            "NVIDIA_TESLA_T4",
            "NVIDIA_TESLA_A100",
            "TPU_V2",
            "TPU_V3",
            "NVIDIA_TESLA_T4_VWS",
            "NVIDIA_TESLA_P100_VWS",
            "NVIDIA_TESLA_P4_VWS",
          },
          enumDescriptions = {
            "Accelerator type is not specified.",
            "Accelerator type is Nvidia Tesla K80.",
            "Accelerator type is Nvidia Tesla P100.",
            "Accelerator type is Nvidia Tesla V100.",
            "Accelerator type is Nvidia Tesla P4.",
            "Accelerator type is Nvidia Tesla T4.",
            "Accelerator type is Nvidia Tesla A100.",
            "(Coming soon) Accelerator type is TPU V2.",
            "(Coming soon) Accelerator type is TPU V3.",
            "Accelerator type is NVIDIA Tesla T4 Virtual Workstations.",
            "Accelerator type is NVIDIA Tesla P100 Virtual Workstations.",
            "Accelerator type is NVIDIA Tesla P4 Virtual Workstations.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RuntimeAccessConfig = {
      description = "Specifies the login configuration for Runtime",
      id = "RuntimeAccessConfig",
      properties = {
        accessType = {
          description = "The type of access mode this instance.",
          enum = {
            "RUNTIME_ACCESS_TYPE_UNSPECIFIED",
            "SINGLE_USER",
            "SERVICE_ACCOUNT",
          },
          enumDescriptions = {
            "Unspecified access.",
            "Single user login.",
            "Service Account mode. In Service Account mode, Runtime creator will specify a SA that exists in the consumer project. Using Runtime Service Account field. Users accessing the Runtime need ActAs (Service Account User) permission.",
          },
          type = "string",
        },
        proxyUri = {
          description = "Output only. The proxy endpoint that is used to access the runtime.",
          readOnly = true,
          type = "string",
        },
        runtimeOwner = {
          description = "The owner of this runtime after creation. Format: `alias@example.com` Currently supports one owner only.",
          type = "string",
        },
      },
      type = "object",
    },
    RuntimeGuestOsFeature = {
      description = "Optional. A list of features to enable on the guest operating system. Applicable only for bootable images. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Guest OS features for boot disk.",
      id = "RuntimeGuestOsFeature",
      properties = {
        type = {
          description = "The ID of a supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Valid values: * FEATURE_TYPE_UNSPECIFIED * MULTI_IP_SUBNET * SECURE_BOOT * UEFI_COMPATIBLE * VIRTIO_SCSI_MULTIQUEUE * WINDOWS",
          type = "string",
        },
      },
      type = "object",
    },
    RuntimeMetrics = {
      description = "Contains runtime daemon metrics, such as OS and kernels and sessions stats.",
      id = "RuntimeMetrics",
      properties = {
        systemMetrics = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. The system metrics.",
          readOnly = true,
          type = "object",
        },
      },
      type = "object",
    },
    RuntimeShieldedInstanceConfig = {
      description = "A set of Shielded Instance options. Check [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm). Not all combinations are valid.",
      id = "RuntimeShieldedInstanceConfig",
      properties = {
        enableIntegrityMonitoring = {
          description = "Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created. Enabled by default.",
          type = "boolean",
        },
        enableSecureBoot = {
          description = "Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails. Disabled by default.",
          type = "boolean",
        },
        enableVtpm = {
          description = "Defines whether the instance has the vTPM enabled. Enabled by default.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RuntimeSoftwareConfig = {
      description = "Specifies the selection and configuration of software inside the runtime. The properties to set on runtime. Properties keys are specified in `key:value` format, for example: * `idle_shutdown: true` * `idle_shutdown_timeout: 180` * `enable_health_monitoring: true`",
      id = "RuntimeSoftwareConfig",
      properties = {
        customGpuDriverPath = {
          description = "Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.",
          type = "string",
        },
        disableTerminal = {
          description = "Bool indicating whether JupyterLab terminal will be available or not. Default: False",
          type = "boolean",
        },
        enableHealthMonitoring = {
          description = "Verifies core internal services are running. Default: True",
          type = "boolean",
        },
        idleShutdown = {
          description = "Runtime will automatically shutdown after idle_shutdown_time. Default: True",
          type = "boolean",
        },
        idleShutdownTimeout = {
          description = "Time in minutes to wait before shutting down runtime. Default: 180 minutes",
          format = "int32",
          type = "integer",
        },
        installGpuDriver = {
          description = "Install Nvidia Driver automatically. Default: True",
          type = "boolean",
        },
        kernels = {
          description = "Optional. Use a list of container images to use as Kernels in the notebook instance.",
          items = {
            ["$ref"] = "ContainerImage",
          },
          type = "array",
        },
        notebookUpgradeSchedule = {
          description = "Cron expression in UTC timezone, used to schedule instance auto upgrade. Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).",
          type = "string",
        },
        postStartupScript = {
          description = "Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).",
          type = "string",
        },
        postStartupScriptBehavior = {
          description = "Behavior for the post startup script.",
          enum = {
            "POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED",
            "RUN_EVERY_START",
            "DOWNLOAD_AND_RUN_EVERY_START",
          },
          enumDescriptions = {
            "Unspecified post startup script behavior. Will run only once at creation.",
            "Runs the post startup script provided during creation at every start.",
            "Downloads and runs the provided post startup script at every start.",
          },
          type = "string",
        },
        upgradeable = {
          description = "Output only. Bool indicating whether an newer image is available in an image family.",
          readOnly = true,
          type = "boolean",
        },
        version = {
          description = "Output only. version of boot image such as M100, from release label of the image.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Schedule = {
      description = "The definition of a schedule.",
      id = "Schedule",
      properties = {
        createTime = {
          description = "Output only. Time the schedule was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        cronSchedule = {
          description = "Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. 0 0 * * WED = every Wednesday More examples: https://crontab.guru/examples.html",
          type = "string",
        },
        description = {
          description = "A brief description of this environment.",
          type = "string",
        },
        displayName = {
          description = "Output only. Display name used for UI purposes. Name can only contain alphanumeric characters, hyphens '-', and underscores '_'.",
          readOnly = true,
          type = "string",
        },
        executionTemplate = {
          ["$ref"] = "ExecutionTemplate",
          description = "Notebook Execution Template corresponding to this schedule.",
        },
        name = {
          description = "Output only. The name of this schedule. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`",
          readOnly = true,
          type = "string",
        },
        recentExecutions = {
          description = "Output only. The most recent execution names triggered from this schedule and their corresponding states.",
          items = {
            ["$ref"] = "Execution",
          },
          readOnly = true,
          type = "array",
        },
        state = {
          enum = {
            "STATE_UNSPECIFIED",
            "ENABLED",
            "PAUSED",
            "DISABLED",
            "UPDATE_FAILED",
            "INITIALIZING",
            "DELETING",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The job is executing normally.",
            "The job is paused by the user. It will not execute. A user can intentionally pause the job using PauseJobRequest.",
            "The job is disabled by the system due to error. The user cannot directly set a job to be disabled.",
            "The job state resulting from a failed CloudScheduler.UpdateJob operation. To recover a job from this state, retry CloudScheduler.UpdateJob until a successful response is received.",
            "The schedule resource is being created.",
            "The schedule resource is being deleted.",
          },
          type = "string",
        },
        timeZone = {
          description = "Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string \"utc\". If a time zone is not specified, the default will be in UTC (also known as GMT).",
          type = "string",
        },
        updateTime = {
          description = "Output only. Time the schedule was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SchedulerAcceleratorConfig = {
      description = "Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. Check [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus) to find a valid combination. TPUs are not supported.",
      id = "SchedulerAcceleratorConfig",
      properties = {
        coreCount = {
          description = "Count of cores of this accelerator.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Type of this accelerator.",
          enum = {
            "SCHEDULER_ACCELERATOR_TYPE_UNSPECIFIED",
            "NVIDIA_TESLA_K80",
            "NVIDIA_TESLA_P100",
            "NVIDIA_TESLA_V100",
            "NVIDIA_TESLA_P4",
            "NVIDIA_TESLA_T4",
            "NVIDIA_TESLA_A100",
            "TPU_V2",
            "TPU_V3",
          },
          enumDescriptions = {
            "Unspecified accelerator type. Default to no GPU.",
            "Nvidia Tesla K80 GPU.",
            "Nvidia Tesla P100 GPU.",
            "Nvidia Tesla V100 GPU.",
            "Nvidia Tesla P4 GPU.",
            "Nvidia Tesla T4 GPU.",
            "Nvidia Tesla A100 GPU.",
            "TPU v2.",
            "TPU v3.",
          },
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
      },
      type = "object",
    },
    SetInstanceAcceleratorRequest = {
      description = "Request for setting instance accelerator.",
      id = "SetInstanceAcceleratorRequest",
      properties = {
        coreCount = {
          description = "Required. Count of cores of this accelerator. Note that not all combinations of `type` and `core_count` are valid. Check [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination. TPUs are not supported.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Required. Type of this accelerator.",
          enum = {
            "ACCELERATOR_TYPE_UNSPECIFIED",
            "NVIDIA_TESLA_K80",
            "NVIDIA_TESLA_P100",
            "NVIDIA_TESLA_V100",
            "NVIDIA_TESLA_P4",
            "NVIDIA_TESLA_T4",
            "NVIDIA_TESLA_A100",
            "NVIDIA_TESLA_T4_VWS",
            "NVIDIA_TESLA_P100_VWS",
            "NVIDIA_TESLA_P4_VWS",
            "TPU_V2",
            "TPU_V3",
          },
          enumDescriptions = {
            "Accelerator type is not specified.",
            "Accelerator type is Nvidia Tesla K80.",
            "Accelerator type is Nvidia Tesla P100.",
            "Accelerator type is Nvidia Tesla V100.",
            "Accelerator type is Nvidia Tesla P4.",
            "Accelerator type is Nvidia Tesla T4.",
            "Accelerator type is Nvidia Tesla A100.",
            "Accelerator type is NVIDIA Tesla T4 Virtual Workstations.",
            "Accelerator type is NVIDIA Tesla P100 Virtual Workstations.",
            "Accelerator type is NVIDIA Tesla P4 Virtual Workstations.",
            "(Coming soon) Accelerator type is TPU V2.",
            "(Coming soon) Accelerator type is TPU V3.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SetInstanceLabelsRequest = {
      description = "Request for setting instance labels.",
      id = "SetInstanceLabelsRequest",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels to apply to this instance. These can be later modified by the setLabels method",
          type = "object",
        },
      },
      type = "object",
    },
    SetInstanceMachineTypeRequest = {
      description = "Request for setting instance machine type.",
      id = "SetInstanceMachineTypeRequest",
      properties = {
        machineType = {
          description = "Required. The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types).",
          type = "string",
        },
      },
      type = "object",
    },
    ShieldedInstanceConfig = {
      description = "A set of Shielded Instance options. Check [Images using supported Shielded VM features] Not all combinations are valid.",
      id = "ShieldedInstanceConfig",
      properties = {
        enableIntegrityMonitoring = {
          description = "Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the boot integrity of the instance. The attestation is performed against the integrity policy baseline. This baseline is initially derived from the implicitly trusted boot image when the instance is created. Enabled by default.",
          type = "boolean",
        },
        enableSecureBoot = {
          description = "Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails. Disabled by default.",
          type = "boolean",
        },
        enableVtpm = {
          description = "Defines whether the instance has the vTPM enabled. Enabled by default.",
          type = "boolean",
        },
      },
      type = "object",
    },
    StartInstanceRequest = {
      description = "Request for starting a notebook instance",
      id = "StartInstanceRequest",
      properties = {},
      type = "object",
    },
    StartRuntimeRequest = {
      description = "Request for starting a Managed Notebook Runtime.",
      id = "StartRuntimeRequest",
      properties = {
        requestId = {
          description = "Idempotent request UUID.",
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
    StopInstanceRequest = {
      description = "Request for stopping a notebook instance",
      id = "StopInstanceRequest",
      properties = {},
      type = "object",
    },
    StopRuntimeRequest = {
      description = "Request for stopping a Managed Notebook Runtime.",
      id = "StopRuntimeRequest",
      properties = {
        requestId = {
          description = "Idempotent request UUID.",
          type = "string",
        },
      },
      type = "object",
    },
    SwitchRuntimeRequest = {
      description = "Request for switching a Managed Notebook Runtime.",
      id = "SwitchRuntimeRequest",
      properties = {
        acceleratorConfig = {
          ["$ref"] = "RuntimeAcceleratorConfig",
          description = "accelerator config.",
        },
        machineType = {
          description = "machine type.",
          type = "string",
        },
        requestId = {
          description = "Idempotent request UUID.",
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
    TriggerScheduleRequest = {
      description = "Request for created scheduled notebooks",
      id = "TriggerScheduleRequest",
      properties = {},
      type = "object",
    },
    UpdateInstanceConfigRequest = {
      description = "Request for updating instance configurations.",
      id = "UpdateInstanceConfigRequest",
      properties = {
        config = {
          ["$ref"] = "InstanceConfig",
          description = "The instance configurations to be updated.",
        },
      },
      type = "object",
    },
    UpdateInstanceMetadataItemsRequest = {
      description = "Request for adding/changing metadata items for an instance.",
      id = "UpdateInstanceMetadataItemsRequest",
      properties = {
        items = {
          additionalProperties = {
            type = "string",
          },
          description = "Metadata items to add/update for the instance.",
          type = "object",
        },
      },
      type = "object",
    },
    UpdateInstanceMetadataItemsResponse = {
      description = "Response for adding/changing metadata items for an instance.",
      id = "UpdateInstanceMetadataItemsResponse",
      properties = {
        items = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of items that were added/updated to/in the metadata.",
          type = "object",
        },
      },
      type = "object",
    },
    UpdateShieldedInstanceConfigRequest = {
      description = "Request for updating the Shielded Instance config for a notebook instance. You can only use this method on a stopped instance",
      id = "UpdateShieldedInstanceConfigRequest",
      properties = {
        shieldedInstanceConfig = {
          ["$ref"] = "ShieldedInstanceConfig",
          description = "ShieldedInstance configuration to be updated.",
        },
      },
      type = "object",
    },
    UpgradeHistoryEntry = {
      description = "The entry of VM image upgrade history.",
      id = "UpgradeHistoryEntry",
      properties = {
        action = {
          description = "Action. Rolloback or Upgrade.",
          enum = {
            "ACTION_UNSPECIFIED",
            "UPGRADE",
            "ROLLBACK",
          },
          enumDescriptions = {
            "Operation is not specified.",
            "Upgrade.",
            "Rollback.",
          },
          type = "string",
        },
        containerImage = {
          description = "The container image before this instance upgrade.",
          type = "string",
        },
        createTime = {
          description = "The time that this instance upgrade history entry is created.",
          format = "google-datetime",
          type = "string",
        },
        framework = {
          description = "The framework of this notebook instance.",
          type = "string",
        },
        snapshot = {
          description = "The snapshot of the boot disk of this notebook instance before upgrade.",
          type = "string",
        },
        state = {
          description = "The state of this instance upgrade history entry.",
          enum = {
            "STATE_UNSPECIFIED",
            "STARTED",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "State is not specified.",
            "The instance upgrade is started.",
            "The instance upgrade is succeeded.",
            "The instance upgrade is failed.",
          },
          type = "string",
        },
        targetImage = {
          description = "Target VM Image. Format: ainotebooks-vm/project/image-name/name.",
          type = "string",
        },
        targetVersion = {
          description = "Target VM Version, like m63.",
          type = "string",
        },
        version = {
          description = "The version of the notebook instance before this upgrade.",
          type = "string",
        },
        vmImage = {
          description = "The VM image before this instance upgrade.",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeInstanceInternalRequest = {
      description = "Request for upgrading a notebook instance from within the VM",
      id = "UpgradeInstanceInternalRequest",
      properties = {
        type = {
          description = "Optional. The optional UpgradeType. Setting this field will search for additional compute images to upgrade this instance.",
          enum = {
            "UPGRADE_TYPE_UNSPECIFIED",
            "UPGRADE_FRAMEWORK",
            "UPGRADE_OS",
            "UPGRADE_CUDA",
            "UPGRADE_ALL",
          },
          enumDescriptions = {
            "Upgrade type is not specified.",
            "Upgrade ML framework.",
            "Upgrade Operating System.",
            "Upgrade CUDA.",
            "Upgrade All (OS, Framework and CUDA).",
          },
          type = "string",
        },
        vmId = {
          description = "Required. The VM hardware token for authenticating the VM. https://cloud.google.com/compute/docs/instances/verifying-instance-identity",
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeInstanceRequest = {
      description = "Request for upgrading a notebook instance",
      id = "UpgradeInstanceRequest",
      properties = {
        type = {
          description = "Optional. The optional UpgradeType. Setting this field will search for additional compute images to upgrade this instance.",
          enum = {
            "UPGRADE_TYPE_UNSPECIFIED",
            "UPGRADE_FRAMEWORK",
            "UPGRADE_OS",
            "UPGRADE_CUDA",
            "UPGRADE_ALL",
          },
          enumDescriptions = {
            "Upgrade type is not specified.",
            "Upgrade ML framework.",
            "Upgrade Operating System.",
            "Upgrade CUDA.",
            "Upgrade All (OS, Framework and CUDA).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UpgradeRuntimeRequest = {
      description = "Request for upgrading a Managed Notebook Runtime to the latest version. option (google.api.message_visibility).restriction = \"TRUSTED_TESTER,SPECIAL_TESTER\";",
      id = "UpgradeRuntimeRequest",
      properties = {
        requestId = {
          description = "Idempotent request UUID.",
          type = "string",
        },
      },
      type = "object",
    },
    VertexAIParameters = {
      description = "Parameters used in Vertex AI JobType executions.",
      id = "VertexAIParameters",
      properties = {
        env = {
          additionalProperties = {
            type = "string",
          },
          description = "Environment variables. At most 100 environment variables can be specified and unique. Example: GCP_BUCKET=gs://my-bucket/samples/",
          type = "object",
        },
        network = {
          description = "The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Job should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. Private services access must already be configured for the network. If left unspecified, the job is not peered with any network.",
          type = "string",
        },
      },
      type = "object",
    },
    VirtualMachine = {
      description = "Runtime using Virtual Machine for computing.",
      id = "VirtualMachine",
      properties = {
        instanceId = {
          description = "Output only. The unique identifier of the Managed Compute Engine instance.",
          readOnly = true,
          type = "string",
        },
        instanceName = {
          description = "Output only. The user-friendly name of the Managed Compute Engine instance.",
          readOnly = true,
          type = "string",
        },
        virtualMachineConfig = {
          ["$ref"] = "VirtualMachineConfig",
          description = "Virtual Machine configuration settings.",
        },
      },
      type = "object",
    },
    VirtualMachineConfig = {
      description = "The config settings for virtual machine.",
      id = "VirtualMachineConfig",
      properties = {
        acceleratorConfig = {
          ["$ref"] = "RuntimeAcceleratorConfig",
          description = "Optional. The Compute Engine accelerator configuration for this runtime.",
        },
        bootImage = {
          ["$ref"] = "BootImage",
          description = "Optional. Boot image metadata used for runtime upgradeability.",
        },
        containerImages = {
          description = "Optional. Use a list of container images to use as Kernels in the notebook instance.",
          items = {
            ["$ref"] = "ContainerImage",
          },
          type = "array",
        },
        dataDisk = {
          ["$ref"] = "LocalDisk",
          description = "Required. Data disk option configuration settings.",
        },
        encryptionConfig = {
          ["$ref"] = "EncryptionConfig",
          description = "Optional. Encryption settings for virtual machine data disk.",
        },
        guestAttributes = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. The Compute Engine guest attributes. (see [Project and instance guest attributes](https://cloud.google.com/compute/docs/storing-retrieving-metadata#guest_attributes)).",
          readOnly = true,
          type = "object",
        },
        internalIpOnly = {
          description = "Optional. If true, runtime will only have internal IP addresses. By default, runtimes are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each vm. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all dependencies must be configured to be accessible without external IP addresses.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels to associate with this runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.",
          type = "object",
        },
        machineType = {
          description = "Required. The Compute Engine machine type used for runtimes. Short name is valid. Examples: * `n1-standard-2` * `e2-standard-8`",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The Compute Engine metadata entries to add to virtual machine. (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).",
          type = "object",
        },
        network = {
          description = "Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork. If neither `network` nor `subnet` is specified, the \"default\" network of the project is used, if it exists. A full URL or partial URI. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default` * `projects/[project_id]/global/networks/default` Runtimes are managed resources inside Google Infrastructure. Runtimes support the following network configurations: * Google Managed Network (Network & subnet are empty) * Consumer Project VPC (network & subnet are required). Requires configuring Private Service Access. * Shared VPC (network & subnet are required). Requires configuring Private Service Access.",
          type = "string",
        },
        nicType = {
          description = "Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.",
          enum = {
            "UNSPECIFIED_NIC_TYPE",
            "VIRTIO_NET",
            "GVNIC",
          },
          enumDescriptions = {
            "No type specified.",
            "VIRTIO",
            "GVNIC",
          },
          type = "string",
        },
        reservedIpRange = {
          description = "Optional. Reserved IP Range name is used for VPC Peering. The subnetwork allocation will use the range *name* if it's assigned. Example: managed-notebooks-range-c PEERING_RANGE_NAME_3=managed-notebooks-range-c gcloud compute addresses create $PEERING_RANGE_NAME_3 \\ --global \\ --prefix-length=24 \\ --description=\"Google Cloud Managed Notebooks Range 24 c\" \\ --network=$NETWORK \\ --addresses=192.168.0.0 \\ --purpose=VPC_PEERING Field value will be: `managed-notebooks-range-c`",
          type = "string",
        },
        shieldedInstanceConfig = {
          ["$ref"] = "RuntimeShieldedInstanceConfig",
          description = "Optional. Shielded VM Instance configuration settings.",
        },
        subnet = {
          description = "Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network. A full URL or partial URI are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/subnetworks/sub0`",
          type = "string",
        },
        tags = {
          description = "Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).",
          items = {
            type = "string",
          },
          type = "array",
        },
        zone = {
          description = "Output only. The zone where the virtual machine is located. If using regional request, the notebooks service will pick a location in the corresponding runtime region. On a get request, zone will always be present. Example: * `us-central1-b`",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    VmImage = {
      description = "Definition of a custom Compute Engine virtual machine image for starting a notebook instance with the environment installed directly on the VM.",
      id = "VmImage",
      properties = {
        imageFamily = {
          description = "Use this VM image family to find the image; the newest image in this family will be used.",
          type = "string",
        },
        imageName = {
          description = "Use VM image name to find the image.",
          type = "string",
        },
        project = {
          description = "Required. The name of the Google Cloud project that this VM image belongs to. Format: `{project_id}`",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Notebooks API",
  version = "v1",
  version_module = true,
}