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
  baseUrl = "https://osconfig.googleapis.com/",
  batchPath = "batch",
  canonicalName = "OS Config",
  description = "OS management tools that can be used for patch management, patch compliance, and configuration management on VM instances.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/compute/docs/osconfig/rest",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "osconfig:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://osconfig.mtls.googleapis.com/",
  name = "osconfig",
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
            instances = {
              resources = {
                inventories = {
                  methods = {
                    get = {
                      description = "Get inventory data for the specified VM instance. If the VM has no associated inventory, the message `NOT_FOUND` is returned.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/inventory",
                      httpMethod = "GET",
                      id = "osconfig.projects.locations.instances.inventories.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. API resource name for inventory resource. Format: `projects/{project}/locations/{location}/instances/{instance}/inventory` For `{project}`, either `project-number` or `project-id` can be provided. For `{instance}`, either Compute Engine `instance-id` or `instance-name` can be provided.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+/inventory$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Inventory view indicating what information should be included in the inventory resource. If unspecified, the default view is BASIC.",
                          enum = {
                            "INVENTORY_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "The default value. The API defaults to the BASIC view.",
                            "Returns the basic inventory information that includes `os_info`.",
                            "Returns all fields.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Inventory",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "List inventory data for all VM instances in the specified zone.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/inventories",
                      httpMethod = "GET",
                      id = "osconfig.projects.locations.instances.inventories.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "If provided, this field specifies the criteria that must be met by a `Inventory` API resource to be included in the response.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A pagination token returned from a previous call to `ListInventories` that indicates where this listing should continue from.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource name. Format: `projects/{project}/locations/{location}/instances/-` For `{project}`, either `project-number` or `project-id` can be provided.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        view = {
                          description = "Inventory view indicating what information should be included in the inventory resource. If unspecified, the default view is BASIC.",
                          enum = {
                            "INVENTORY_VIEW_UNSPECIFIED",
                            "BASIC",
                            "FULL",
                          },
                          enumDescriptions = {
                            "The default value. The API defaults to the BASIC view.",
                            "Returns the basic inventory information that includes `os_info`.",
                            "Returns all fields.",
                          },
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/inventories",
                      response = {
                        ["$ref"] = "ListInventoriesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                osPolicyAssignments = {
                  resources = {
                    reports = {
                      methods = {
                        get = {
                          description = "Get the OS policy asssignment report for the specified Compute Engine VM instance.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/osPolicyAssignments/{osPolicyAssignmentsId}/report",
                          httpMethod = "GET",
                          id = "osconfig.projects.locations.instances.osPolicyAssignments.reports.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. API resource name for OS policy assignment report. Format: `/projects/{project}/locations/{location}/instances/{instance}/osPolicyAssignments/{assignment}/report` For `{project}`, either `project-number` or `project-id` can be provided. For `{instance_id}`, either Compute Engine `instance-id` or `instance-name` can be provided. For `{assignment_id}`, the OSPolicyAssignment id must be provided.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+/osPolicyAssignments/[^/]+/report$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "OSPolicyAssignmentReport",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "List OS policy asssignment reports for all Compute Engine VM instances in the specified zone.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/osPolicyAssignments/{osPolicyAssignmentsId}/reports",
                          httpMethod = "GET",
                          id = "osconfig.projects.locations.instances.osPolicyAssignments.reports.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "If provided, this field specifies the criteria that must be met by the `OSPolicyAssignmentReport` API resource that is included in the response.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of results to return.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "A pagination token returned from a previous call to the `ListOSPolicyAssignmentReports` method that indicates where this listing should continue from.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The parent resource name. Format: `projects/{project}/locations/{location}/instances/{instance}/osPolicyAssignments/{assignment}/reports` For `{project}`, either `project-number` or `project-id` can be provided. For `{instance}`, either `instance-name`, `instance-id`, or `-` can be provided. If '-' is provided, the response will include OSPolicyAssignmentReports for all instances in the project/location. For `{assignment}`, either `assignment-id` or `-` can be provided. If '-' is provided, the response will include OSPolicyAssignmentReports for all OSPolicyAssignments in the project/location. Either {instance} or {assignment} must be `-`. For example: `projects/{project}/locations/{location}/instances/{instance}/osPolicyAssignments/-/reports` returns all reports for the instance `projects/{project}/locations/{location}/instances/-/osPolicyAssignments/{assignment-id}/reports` returns all the reports for the given assignment across all instances. `projects/{project}/locations/{location}/instances/-/osPolicyAssignments/-/reports` returns all the reports for all assignments across all instances.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+/osPolicyAssignments/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/reports",
                          response = {
                            ["$ref"] = "ListOSPolicyAssignmentReportsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                  },
                },
                vulnerabilityReports = {
                  methods = {
                    get = {
                      description = "Gets the vulnerability report for the specified VM instance. Only VMs with inventory data have vulnerability reports associated with them.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/vulnerabilityReport",
                      httpMethod = "GET",
                      id = "osconfig.projects.locations.instances.vulnerabilityReports.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. API resource name for vulnerability resource. Format: `projects/{project}/locations/{location}/instances/{instance}/vulnerabilityReport` For `{project}`, either `project-number` or `project-id` can be provided. For `{instance}`, either Compute Engine `instance-id` or `instance-name` can be provided.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+/vulnerabilityReport$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "VulnerabilityReport",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "List vulnerability reports for all VM instances in the specified zone.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/instances/{instancesId}/vulnerabilityReports",
                      httpMethod = "GET",
                      id = "osconfig.projects.locations.instances.vulnerabilityReports.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "This field supports filtering by the severity level for the vulnerability. For a list of severity levels, see [Severity levels for vulnerabilities](https://cloud.google.com/container-analysis/docs/container-scanning-overview#severity_levels_for_vulnerabilities). The filter field follows the rules described in the [AIP-160](https://google.aip.dev/160) guidelines as follows: + **Filter for a specific severity type**: you can list reports that contain vulnerabilities that are classified as medium by specifying `vulnerabilities.details.severity:MEDIUM`. + **Filter for a range of severities** : you can list reports that have vulnerabilities that are classified as critical or high by specifying `vulnerabilities.details.severity:HIGH OR vulnerabilities.details.severity:CRITICAL`",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of results to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A pagination token returned from a previous call to `ListVulnerabilityReports` that indicates where this listing should continue from.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource name. Format: `projects/{project}/locations/{location}/instances/-` For `{project}`, either `project-number` or `project-id` can be provided.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/instances/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/vulnerabilityReports",
                      response = {
                        ["$ref"] = "ListVulnerabilityReportsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            osPolicyAssignments = {
              methods = {
                create = {
                  description = "Create an OS policy assignment. This method also creates the first revision of the OS policy assignment. This method returns a long running operation (LRO) that contains the rollout details. The rollout can be cancelled by cancelling the LRO. For more information, see [Method: projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/osPolicyAssignments",
                  httpMethod = "POST",
                  id = "osconfig.projects.locations.osPolicyAssignments.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    osPolicyAssignmentId = {
                      description = "Required. The logical name of the OS policy assignment in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name in the form: projects/{project}/locations/{location}. Note: Specify the zone of your VMs as the location.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/osPolicyAssignments",
                  request = {
                    ["$ref"] = "OSPolicyAssignment",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete the OS policy assignment. This method creates a new revision of the OS policy assignment. This method returns a long running operation (LRO) that contains the rollout details. The rollout can be cancelled by cancelling the LRO. If the LRO completes and is not cancelled, all revisions associated with the OS policy assignment are deleted. For more information, see [Method: projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/osPolicyAssignments/{osPolicyAssignmentsId}",
                  httpMethod = "DELETE",
                  id = "osconfig.projects.locations.osPolicyAssignments.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the OS policy assignment to be deleted",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/osPolicyAssignments/[^/]+$",
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
                  description = "Retrieve an existing OS policy assignment. This method always returns the latest revision. In order to retrieve a previous revision of the assignment, also provide the revision ID in the `name` parameter.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/osPolicyAssignments/{osPolicyAssignmentsId}",
                  httpMethod = "GET",
                  id = "osconfig.projects.locations.osPolicyAssignments.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of OS policy assignment. Format: `projects/{project}/locations/{location}/osPolicyAssignments/{os_policy_assignment}@{revisionId}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/osPolicyAssignments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "OSPolicyAssignment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List the OS policy assignments under the parent resource. For each OS policy assignment, the latest revision is returned.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/osPolicyAssignments",
                  httpMethod = "GET",
                  id = "osconfig.projects.locations.osPolicyAssignments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of assignments to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A pagination token returned from a previous call to `ListOSPolicyAssignments` that indicates where this listing should continue from.",
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
                  path = "v1/{+parent}/osPolicyAssignments",
                  response = {
                    ["$ref"] = "ListOSPolicyAssignmentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                listRevisions = {
                  description = "List the OS policy assignment revisions for a given OS policy assignment.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/osPolicyAssignments/{osPolicyAssignmentsId}:listRevisions",
                  httpMethod = "GET",
                  id = "osconfig.projects.locations.osPolicyAssignments.listRevisions",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the OS policy assignment to list revisions for.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/osPolicyAssignments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of revisions to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A pagination token returned from a previous call to `ListOSPolicyAssignmentRevisions` that indicates where this listing should continue from.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:listRevisions",
                  response = {
                    ["$ref"] = "ListOSPolicyAssignmentRevisionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update an existing OS policy assignment. This method creates a new revision of the OS policy assignment. This method returns a long running operation (LRO) that contains the rollout details. The rollout can be cancelled by cancelling the LRO. For more information, see [Method: projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/osPolicyAssignments/{osPolicyAssignmentsId}",
                  httpMethod = "PATCH",
                  id = "osconfig.projects.locations.osPolicyAssignments.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/osPolicyAssignments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Optional. Field mask that controls which fields of the assignment should be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "OSPolicyAssignment",
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
                operations = {
                  methods = {
                    cancel = {
                      description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/osPolicyAssignments/{osPolicyAssignmentsId}/operations/{operationsId}:cancel",
                      httpMethod = "POST",
                      id = "osconfig.projects.locations.osPolicyAssignments.operations.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be cancelled.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/osPolicyAssignments/[^/]+/operations/[^/]+$",
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
                    get = {
                      description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/osPolicyAssignments/{osPolicyAssignmentsId}/operations/{operationsId}",
                      httpMethod = "GET",
                      id = "osconfig.projects.locations.osPolicyAssignments.operations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/osPolicyAssignments/[^/]+/operations/[^/]+$",
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
                  },
                },
              },
            },
          },
        },
        patchDeployments = {
          methods = {
            create = {
              description = "Create an OS Config patch deployment.",
              flatPath = "v1/projects/{projectsId}/patchDeployments",
              httpMethod = "POST",
              id = "osconfig.projects.patchDeployments.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The project to apply this patch deployment to in the form `projects/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                patchDeploymentId = {
                  description = "Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/patchDeployments",
              request = {
                ["$ref"] = "PatchDeployment",
              },
              response = {
                ["$ref"] = "PatchDeployment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Delete an OS Config patch deployment.",
              flatPath = "v1/projects/{projectsId}/patchDeployments/{patchDeploymentsId}",
              httpMethod = "DELETE",
              id = "osconfig.projects.patchDeployments.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the patch deployment in the form `projects/*/patchDeployments/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/patchDeployments/[^/]+$",
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
              description = "Get an OS Config patch deployment.",
              flatPath = "v1/projects/{projectsId}/patchDeployments/{patchDeploymentsId}",
              httpMethod = "GET",
              id = "osconfig.projects.patchDeployments.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the patch deployment in the form `projects/*/patchDeployments/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/patchDeployments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "PatchDeployment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Get a page of OS Config patch deployments.",
              flatPath = "v1/projects/{projectsId}/patchDeployments",
              httpMethod = "GET",
              id = "osconfig.projects.patchDeployments.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of patch deployments to return. Default is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A pagination token returned from a previous call to ListPatchDeployments that indicates where this listing should continue from.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the parent in the form `projects/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/patchDeployments",
              response = {
                ["$ref"] = "ListPatchDeploymentsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Update an OS Config patch deployment.",
              flatPath = "v1/projects/{projectsId}/patchDeployments/{patchDeploymentsId}",
              httpMethod = "PATCH",
              id = "osconfig.projects.patchDeployments.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.",
                  location = "path",
                  pattern = "^projects/[^/]+/patchDeployments/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Optional. Field mask that controls which fields of the patch deployment should be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "PatchDeployment",
              },
              response = {
                ["$ref"] = "PatchDeployment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            pause = {
              description = "Change state of patch deployment to \"PAUSED\". Patch deployment in paused state doesn't generate patch jobs.",
              flatPath = "v1/projects/{projectsId}/patchDeployments/{patchDeploymentsId}:pause",
              httpMethod = "POST",
              id = "osconfig.projects.patchDeployments.pause",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the patch deployment in the form `projects/*/patchDeployments/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/patchDeployments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:pause",
              request = {
                ["$ref"] = "PausePatchDeploymentRequest",
              },
              response = {
                ["$ref"] = "PatchDeployment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            resume = {
              description = "Change state of patch deployment back to \"ACTIVE\". Patch deployment in active state continues to generate patch jobs.",
              flatPath = "v1/projects/{projectsId}/patchDeployments/{patchDeploymentsId}:resume",
              httpMethod = "POST",
              id = "osconfig.projects.patchDeployments.resume",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the patch deployment in the form `projects/*/patchDeployments/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/patchDeployments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:resume",
              request = {
                ["$ref"] = "ResumePatchDeploymentRequest",
              },
              response = {
                ["$ref"] = "PatchDeployment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        patchJobs = {
          methods = {
            cancel = {
              description = "Cancel a patch job. The patch job must be active. Canceled patch jobs cannot be restarted.",
              flatPath = "v1/projects/{projectsId}/patchJobs/{patchJobsId}:cancel",
              httpMethod = "POST",
              id = "osconfig.projects.patchJobs.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the patch in the form `projects/*/patchJobs/*`",
                  location = "path",
                  pattern = "^projects/[^/]+/patchJobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:cancel",
              request = {
                ["$ref"] = "CancelPatchJobRequest",
              },
              response = {
                ["$ref"] = "PatchJob",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            execute = {
              description = "Patch VM instances by creating and running a patch job.",
              flatPath = "v1/projects/{projectsId}/patchJobs:execute",
              httpMethod = "POST",
              id = "osconfig.projects.patchJobs.execute",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The project in which to run this patch in the form `projects/*`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/patchJobs:execute",
              request = {
                ["$ref"] = "ExecutePatchJobRequest",
              },
              response = {
                ["$ref"] = "PatchJob",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Get the patch job. This can be used to track the progress of an ongoing patch job or review the details of completed jobs.",
              flatPath = "v1/projects/{projectsId}/patchJobs/{patchJobsId}",
              httpMethod = "GET",
              id = "osconfig.projects.patchJobs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the patch in the form `projects/*/patchJobs/*`",
                  location = "path",
                  pattern = "^projects/[^/]+/patchJobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "PatchJob",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Get a list of patch jobs.",
              flatPath = "v1/projects/{projectsId}/patchJobs",
              httpMethod = "GET",
              id = "osconfig.projects.patchJobs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "If provided, this field specifies the criteria that must be met by patch jobs to be included in the response. Currently, filtering is only available on the patch_deployment field.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of instance status to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A pagination token returned from a previous call that indicates where this listing should continue from.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. In the form of `projects/*`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/patchJobs",
              response = {
                ["$ref"] = "ListPatchJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            instanceDetails = {
              methods = {
                list = {
                  description = "Get a list of instance details for a given patch job.",
                  flatPath = "v1/projects/{projectsId}/patchJobs/{patchJobsId}/instanceDetails",
                  httpMethod = "GET",
                  id = "osconfig.projects.patchJobs.instanceDetails.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "A filter expression that filters results listed in the response. This field supports filtering results by instance zone, name, state, or `failure_reason`.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of instance details records to return. Default is 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A pagination token returned from a previous call that indicates where this listing should continue from.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent for the instances are in the form of `projects/*/patchJobs/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/patchJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/instanceDetails",
                  response = {
                    ["$ref"] = "ListPatchJobInstanceDetailsResponse",
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
  revision = "20230115",
  rootUrl = "https://osconfig.googleapis.com/",
  schemas = {
    AptSettings = {
      description = "Apt patching is completed by executing `apt-get update && apt-get upgrade`. Additional options can be set to control how this is executed.",
      id = "AptSettings",
      properties = {
        excludes = {
          description = "List of packages to exclude from update. These packages will be excluded",
          items = {
            type = "string",
          },
          type = "array",
        },
        exclusivePackages = {
          description = "An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field cannot be specified with any other patch configuration fields.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.",
          enum = {
            "TYPE_UNSPECIFIED",
            "DIST",
            "UPGRADE",
          },
          enumDescriptions = {
            "By default, upgrade will be performed.",
            "Runs `apt-get dist-upgrade`.",
            "Runs `apt-get upgrade`.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CVSSv3 = {
      description = "Common Vulnerability Scoring System version 3. For details, see https://www.first.org/cvss/specification-document",
      id = "CVSSv3",
      properties = {
        attackComplexity = {
          description = "This metric describes the conditions beyond the attacker's control that must exist in order to exploit the vulnerability.",
          enum = {
            "ATTACK_COMPLEXITY_UNSPECIFIED",
            "ATTACK_COMPLEXITY_LOW",
            "ATTACK_COMPLEXITY_HIGH",
          },
          enumDescriptions = {
            "Invalid value.",
            "Specialized access conditions or extenuating circumstances do not exist. An attacker can expect repeatable success when attacking the vulnerable component.",
            "A successful attack depends on conditions beyond the attacker's control. That is, a successful attack cannot be accomplished at will, but requires the attacker to invest in some measurable amount of effort in preparation or execution against the vulnerable component before a successful attack can be expected.",
          },
          type = "string",
        },
        attackVector = {
          description = "This metric reflects the context by which vulnerability exploitation is possible.",
          enum = {
            "ATTACK_VECTOR_UNSPECIFIED",
            "ATTACK_VECTOR_NETWORK",
            "ATTACK_VECTOR_ADJACENT",
            "ATTACK_VECTOR_LOCAL",
            "ATTACK_VECTOR_PHYSICAL",
          },
          enumDescriptions = {
            "Invalid value.",
            "The vulnerable component is bound to the network stack and the set of possible attackers extends beyond the other options listed below, up to and including the entire Internet.",
            "The vulnerable component is bound to the network stack, but the attack is limited at the protocol level to a logically adjacent topology.",
            "The vulnerable component is not bound to the network stack and the attacker's path is via read/write/execute capabilities.",
            "The attack requires the attacker to physically touch or manipulate the vulnerable component.",
          },
          type = "string",
        },
        availabilityImpact = {
          description = "This metric measures the impact to the availability of the impacted component resulting from a successfully exploited vulnerability.",
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "Invalid value.",
            "High impact.",
            "Low impact.",
            "No impact.",
          },
          type = "string",
        },
        baseScore = {
          description = "The base score is a function of the base metric scores. https://www.first.org/cvss/specification-document#Base-Metrics",
          format = "float",
          type = "number",
        },
        confidentialityImpact = {
          description = "This metric measures the impact to the confidentiality of the information resources managed by a software component due to a successfully exploited vulnerability.",
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "Invalid value.",
            "High impact.",
            "Low impact.",
            "No impact.",
          },
          type = "string",
        },
        exploitabilityScore = {
          description = "The Exploitability sub-score equation is derived from the Base Exploitability metrics. https://www.first.org/cvss/specification-document#2-1-Exploitability-Metrics",
          format = "float",
          type = "number",
        },
        impactScore = {
          description = "The Impact sub-score equation is derived from the Base Impact metrics.",
          format = "float",
          type = "number",
        },
        integrityImpact = {
          description = "This metric measures the impact to integrity of a successfully exploited vulnerability.",
          enum = {
            "IMPACT_UNSPECIFIED",
            "IMPACT_HIGH",
            "IMPACT_LOW",
            "IMPACT_NONE",
          },
          enumDescriptions = {
            "Invalid value.",
            "High impact.",
            "Low impact.",
            "No impact.",
          },
          type = "string",
        },
        privilegesRequired = {
          description = "This metric describes the level of privileges an attacker must possess before successfully exploiting the vulnerability.",
          enum = {
            "PRIVILEGES_REQUIRED_UNSPECIFIED",
            "PRIVILEGES_REQUIRED_NONE",
            "PRIVILEGES_REQUIRED_LOW",
            "PRIVILEGES_REQUIRED_HIGH",
          },
          enumDescriptions = {
            "Invalid value.",
            "The attacker is unauthorized prior to attack, and therefore does not require any access to settings or files of the vulnerable system to carry out an attack.",
            "The attacker requires privileges that provide basic user capabilities that could normally affect only settings and files owned by a user. Alternatively, an attacker with Low privileges has the ability to access only non-sensitive resources.",
            "The attacker requires privileges that provide significant (e.g., administrative) control over the vulnerable component allowing access to component-wide settings and files.",
          },
          type = "string",
        },
        scope = {
          description = "The Scope metric captures whether a vulnerability in one vulnerable component impacts resources in components beyond its security scope.",
          enum = {
            "SCOPE_UNSPECIFIED",
            "SCOPE_UNCHANGED",
            "SCOPE_CHANGED",
          },
          enumDescriptions = {
            "Invalid value.",
            "An exploited vulnerability can only affect resources managed by the same security authority.",
            "An exploited vulnerability can affect resources beyond the security scope managed by the security authority of the vulnerable component.",
          },
          type = "string",
        },
        userInteraction = {
          description = "This metric captures the requirement for a human user, other than the attacker, to participate in the successful compromise of the vulnerable component.",
          enum = {
            "USER_INTERACTION_UNSPECIFIED",
            "USER_INTERACTION_NONE",
            "USER_INTERACTION_REQUIRED",
          },
          enumDescriptions = {
            "Invalid value.",
            "The vulnerable system can be exploited without interaction from any user.",
            "Successful exploitation of this vulnerability requires a user to take some action before the vulnerability can be exploited.",
          },
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
    CancelPatchJobRequest = {
      description = "Message for canceling a patch job.",
      id = "CancelPatchJobRequest",
      properties = {},
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "Date",
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
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    ExecStep = {
      description = "A step that runs an executable for a PatchJob.",
      id = "ExecStep",
      properties = {
        linuxExecStepConfig = {
          ["$ref"] = "ExecStepConfig",
          description = "The ExecStepConfig for all Linux VMs targeted by the PatchJob.",
        },
        windowsExecStepConfig = {
          ["$ref"] = "ExecStepConfig",
          description = "The ExecStepConfig for all Windows VMs targeted by the PatchJob.",
        },
      },
      type = "object",
    },
    ExecStepConfig = {
      description = "Common configurations for an ExecStep.",
      id = "ExecStepConfig",
      properties = {
        allowedSuccessCodes = {
          description = "Defaults to [0]. A list of possible return values that the execution can return to indicate a success.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        gcsObject = {
          ["$ref"] = "GcsObject",
          description = "A Cloud Storage object containing the executable.",
        },
        interpreter = {
          description = "The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\\(Unix\\)).",
          enum = {
            "INTERPRETER_UNSPECIFIED",
            "NONE",
            "SHELL",
            "POWERSHELL",
          },
          enumDescriptions = {
            "If the interpreter is not specified, the value defaults to `NONE`.",
            "Indicates that the file is run as follows on each operating system: + For Linux VMs, the file is ran as an executable and the interpreter might be parsed from the [shebang line](https://wikipedia.org/wiki/Shebang_(Unix)) of the file. + For Windows VM, this value is not supported.",
            "Indicates that the file is run with `/bin/sh` on Linux and `cmd` on Windows.",
            "Indicates that the file is run with PowerShell.",
          },
          type = "string",
        },
        localPath = {
          description = "An absolute path to the executable on the VM.",
          type = "string",
        },
      },
      type = "object",
    },
    ExecutePatchJobRequest = {
      description = "A request message to initiate patching across Compute Engine instances.",
      id = "ExecutePatchJobRequest",
      properties = {
        description = {
          description = "Description of the patch job. Length of the description is limited to 1024 characters.",
          type = "string",
        },
        displayName = {
          description = "Display name for this patch job. This does not have to be unique.",
          type = "string",
        },
        dryRun = {
          description = "If this patch is a dry-run only, instances are contacted but will do nothing.",
          type = "boolean",
        },
        duration = {
          description = "Duration of the patch job. After the duration ends, the patch job times out.",
          format = "google-duration",
          type = "string",
        },
        instanceFilter = {
          ["$ref"] = "PatchInstanceFilter",
          description = "Required. Instances to patch, either explicitly or filtered by some criteria such as zone or labels.",
        },
        patchConfig = {
          ["$ref"] = "PatchConfig",
          description = "Patch configuration being applied. If omitted, instances are patched using the default configurations.",
        },
        rollout = {
          ["$ref"] = "PatchRollout",
          description = "Rollout strategy of the patch job.",
        },
      },
      type = "object",
    },
    FixedOrPercent = {
      description = "Message encapsulating a value that can be either absolute (\"fixed\") or relative (\"percent\") to a value.",
      id = "FixedOrPercent",
      properties = {
        fixed = {
          description = "Specifies a fixed value.",
          format = "int32",
          type = "integer",
        },
        percent = {
          description = "Specifies the relative value defined as a percentage, which will be multiplied by a reference value.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GcsObject = {
      description = "Cloud Storage object representation.",
      id = "GcsObject",
      properties = {
        bucket = {
          description = "Required. Bucket of the Cloud Storage object.",
          type = "string",
        },
        generationNumber = {
          description = "Required. Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.",
          format = "int64",
          type = "string",
        },
        object = {
          description = "Required. Name of the Cloud Storage object.",
          type = "string",
        },
      },
      type = "object",
    },
    GooSettings = {
      description = "Googet patching is performed by running `googet update`.",
      id = "GooSettings",
      properties = {},
      type = "object",
    },
    GoogleCloudOsconfigV1__OSPolicyAssignmentOperationMetadata = {
      description = "OS policy assignment operation metadata provided by OS policy assignment API methods that return long running operations.",
      id = "GoogleCloudOsconfigV1__OSPolicyAssignmentOperationMetadata",
      properties = {
        apiMethod = {
          description = "The OS policy assignment API method.",
          enum = {
            "API_METHOD_UNSPECIFIED",
            "CREATE",
            "UPDATE",
            "DELETE",
          },
          enumDescriptions = {
            "Invalid value",
            "Create OS policy assignment API method",
            "Update OS policy assignment API method",
            "Delete OS policy assignment API method",
          },
          type = "string",
        },
        osPolicyAssignment = {
          description = "Reference to the `OSPolicyAssignment` API resource. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id@revision_id}`",
          type = "string",
        },
        rolloutStartTime = {
          description = "Rollout start time",
          format = "google-datetime",
          type = "string",
        },
        rolloutState = {
          description = "State of the rollout",
          enum = {
            "ROLLOUT_STATE_UNSPECIFIED",
            "IN_PROGRESS",
            "CANCELLING",
            "CANCELLED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "Invalid value",
            "The rollout is in progress.",
            "The rollout is being cancelled.",
            "The rollout is cancelled.",
            "The rollout has completed successfully.",
          },
          type = "string",
        },
        rolloutUpdateTime = {
          description = "Rollout update time",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Inventory = {
      description = "This API resource represents the available inventory data for a Compute Engine virtual machine (VM) instance at a given point in time. You can use this API resource to determine the inventory data of your VM. For more information, see [Information provided by OS inventory management](https://cloud.google.com/compute/docs/instances/os-inventory-management#data-collected).",
      id = "Inventory",
      properties = {
        items = {
          additionalProperties = {
            ["$ref"] = "InventoryItem",
          },
          description = "Inventory items related to the VM keyed by an opaque unique identifier for each inventory item. The identifier is unique to each distinct and addressable inventory item and will change, when there is a new package version.",
          type = "object",
        },
        name = {
          description = "Output only. The `Inventory` API resource name. Format: `projects/{project_number}/locations/{location}/instances/{instance_id}/inventory`",
          readOnly = true,
          type = "string",
        },
        osInfo = {
          ["$ref"] = "InventoryOsInfo",
          description = "Base level operating system information for the VM.",
        },
        updateTime = {
          description = "Output only. Timestamp of the last reported inventory for the VM.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    InventoryItem = {
      description = "A single piece of inventory on a VM.",
      id = "InventoryItem",
      properties = {
        availablePackage = {
          ["$ref"] = "InventorySoftwarePackage",
          description = "Software package available to be installed on the VM instance.",
        },
        createTime = {
          description = "When this inventory item was first detected.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "Identifier for this item, unique across items for this VM.",
          type = "string",
        },
        installedPackage = {
          ["$ref"] = "InventorySoftwarePackage",
          description = "Software package present on the VM instance.",
        },
        originType = {
          description = "The origin of this inventory item.",
          enum = {
            "ORIGIN_TYPE_UNSPECIFIED",
            "INVENTORY_REPORT",
          },
          enumDescriptions = {
            "Invalid. An origin type must be specified.",
            "This inventory item was discovered as the result of the agent reporting inventory via the reporting API.",
          },
          type = "string",
        },
        type = {
          description = "The specific type of inventory, correlating to its specific details.",
          enum = {
            "TYPE_UNSPECIFIED",
            "INSTALLED_PACKAGE",
            "AVAILABLE_PACKAGE",
          },
          enumDescriptions = {
            "Invalid. An type must be specified.",
            "This represents a package that is installed on the VM.",
            "This represents an update that is available for a package.",
          },
          type = "string",
        },
        updateTime = {
          description = "When this inventory item was last modified.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    InventoryOsInfo = {
      description = "Operating system information for the VM.",
      id = "InventoryOsInfo",
      properties = {
        architecture = {
          description = "The system architecture of the operating system.",
          type = "string",
        },
        hostname = {
          description = "The VM hostname.",
          type = "string",
        },
        kernelRelease = {
          description = "The kernel release of the operating system.",
          type = "string",
        },
        kernelVersion = {
          description = "The kernel version of the operating system.",
          type = "string",
        },
        longName = {
          description = "The operating system long name. For example 'Debian GNU/Linux 9' or 'Microsoft Window Server 2019 Datacenter'.",
          type = "string",
        },
        osconfigAgentVersion = {
          description = "The current version of the OS Config agent running on the VM.",
          type = "string",
        },
        shortName = {
          description = "The operating system short name. For example, 'windows' or 'debian'.",
          type = "string",
        },
        version = {
          description = "The version of the operating system.",
          type = "string",
        },
      },
      type = "object",
    },
    InventorySoftwarePackage = {
      description = "Software package information of the operating system.",
      id = "InventorySoftwarePackage",
      properties = {
        aptPackage = {
          ["$ref"] = "InventoryVersionedPackage",
          description = "Details of an APT package. For details about the apt package manager, see https://wiki.debian.org/Apt.",
        },
        cosPackage = {
          ["$ref"] = "InventoryVersionedPackage",
          description = "Details of a COS package.",
        },
        googetPackage = {
          ["$ref"] = "InventoryVersionedPackage",
          description = "Details of a Googet package. For details about the googet package manager, see https://github.com/google/googet.",
        },
        qfePackage = {
          ["$ref"] = "InventoryWindowsQuickFixEngineeringPackage",
          description = "Details of a Windows Quick Fix engineering package. See https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering for info in Windows Quick Fix Engineering.",
        },
        windowsApplication = {
          ["$ref"] = "InventoryWindowsApplication",
          description = "Details of Windows Application.",
        },
        wuaPackage = {
          ["$ref"] = "InventoryWindowsUpdatePackage",
          description = "Details of a Windows Update package. See https://docs.microsoft.com/en-us/windows/win32/api/_wua/ for information about Windows Update.",
        },
        yumPackage = {
          ["$ref"] = "InventoryVersionedPackage",
          description = "Yum package info. For details about the yum package manager, see https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/ch-yum.",
        },
        zypperPackage = {
          ["$ref"] = "InventoryVersionedPackage",
          description = "Details of a Zypper package. For details about the Zypper package manager, see https://en.opensuse.org/SDB:Zypper_manual.",
        },
        zypperPatch = {
          ["$ref"] = "InventoryZypperPatch",
          description = "Details of a Zypper patch. For details about the Zypper package manager, see https://en.opensuse.org/SDB:Zypper_manual.",
        },
      },
      type = "object",
    },
    InventoryVersionedPackage = {
      description = "Information related to the a standard versioned package. This includes package info for APT, Yum, Zypper, and Googet package managers.",
      id = "InventoryVersionedPackage",
      properties = {
        architecture = {
          description = "The system architecture this package is intended for.",
          type = "string",
        },
        packageName = {
          description = "The name of the package.",
          type = "string",
        },
        version = {
          description = "The version of the package.",
          type = "string",
        },
      },
      type = "object",
    },
    InventoryWindowsApplication = {
      description = "Contains information about a Windows application that is retrieved from the Windows Registry. For more information about these fields, see: https://docs.microsoft.com/en-us/windows/win32/msi/uninstall-registry-key",
      id = "InventoryWindowsApplication",
      properties = {
        displayName = {
          description = "The name of the application or product.",
          type = "string",
        },
        displayVersion = {
          description = "The version of the product or application in string format.",
          type = "string",
        },
        helpLink = {
          description = "The internet address for technical support.",
          type = "string",
        },
        installDate = {
          ["$ref"] = "Date",
          description = "The last time this product received service. The value of this property is replaced each time a patch is applied or removed from the product or the command-line option is used to repair the product.",
        },
        publisher = {
          description = "The name of the manufacturer for the product or application.",
          type = "string",
        },
      },
      type = "object",
    },
    InventoryWindowsQuickFixEngineeringPackage = {
      description = "Information related to a Quick Fix Engineering package. Fields are taken from Windows QuickFixEngineering Interface and match the source names: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering",
      id = "InventoryWindowsQuickFixEngineeringPackage",
      properties = {
        caption = {
          description = "A short textual description of the QFE update.",
          type = "string",
        },
        description = {
          description = "A textual description of the QFE update.",
          type = "string",
        },
        hotFixId = {
          description = "Unique identifier associated with a particular QFE update.",
          type = "string",
        },
        installTime = {
          description = "Date that the QFE update was installed. Mapped from installed_on field.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    InventoryWindowsUpdatePackage = {
      description = "Details related to a Windows Update package. Field data and names are taken from Windows Update API IUpdate Interface: https://docs.microsoft.com/en-us/windows/win32/api/_wua/ Descriptive fields like title, and description are localized based on the locale of the VM being updated.",
      id = "InventoryWindowsUpdatePackage",
      properties = {
        categories = {
          description = "The categories that are associated with this update package.",
          items = {
            ["$ref"] = "InventoryWindowsUpdatePackageWindowsUpdateCategory",
          },
          type = "array",
        },
        description = {
          description = "The localized description of the update package.",
          type = "string",
        },
        kbArticleIds = {
          description = "A collection of Microsoft Knowledge Base article IDs that are associated with the update package.",
          items = {
            type = "string",
          },
          type = "array",
        },
        lastDeploymentChangeTime = {
          description = "The last published date of the update, in (UTC) date and time.",
          format = "google-datetime",
          type = "string",
        },
        moreInfoUrls = {
          description = "A collection of URLs that provide more information about the update package.",
          items = {
            type = "string",
          },
          type = "array",
        },
        revisionNumber = {
          description = "The revision number of this update package.",
          format = "int32",
          type = "integer",
        },
        supportUrl = {
          description = "A hyperlink to the language-specific support information for the update.",
          type = "string",
        },
        title = {
          description = "The localized title of the update package.",
          type = "string",
        },
        updateId = {
          description = "Gets the identifier of an update package. Stays the same across revisions.",
          type = "string",
        },
      },
      type = "object",
    },
    InventoryWindowsUpdatePackageWindowsUpdateCategory = {
      description = "Categories specified by the Windows Update.",
      id = "InventoryWindowsUpdatePackageWindowsUpdateCategory",
      properties = {
        id = {
          description = "The identifier of the windows update category.",
          type = "string",
        },
        name = {
          description = "The name of the windows update category.",
          type = "string",
        },
      },
      type = "object",
    },
    InventoryZypperPatch = {
      description = "Details related to a Zypper Patch.",
      id = "InventoryZypperPatch",
      properties = {
        category = {
          description = "The category of the patch.",
          type = "string",
        },
        patchName = {
          description = "The name of the patch.",
          type = "string",
        },
        severity = {
          description = "The severity specified for this patch",
          type = "string",
        },
        summary = {
          description = "Any summary information provided about this patch.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInventoriesResponse = {
      description = "A response message for listing inventory data for all VMs in a specified location.",
      id = "ListInventoriesResponse",
      properties = {
        inventories = {
          description = "List of inventory objects.",
          items = {
            ["$ref"] = "Inventory",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The pagination token to retrieve the next page of inventory objects.",
          type = "string",
        },
      },
      type = "object",
    },
    ListOSPolicyAssignmentReportsResponse = {
      description = "A response message for listing OS Policy assignment reports including the page of results and page token.",
      id = "ListOSPolicyAssignmentReportsResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of OS policy assignment report objects.",
          type = "string",
        },
        osPolicyAssignmentReports = {
          description = "List of OS policy assignment reports.",
          items = {
            ["$ref"] = "OSPolicyAssignmentReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListOSPolicyAssignmentRevisionsResponse = {
      description = "A response message for listing all revisions for a OS policy assignment.",
      id = "ListOSPolicyAssignmentRevisionsResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of OS policy assignment revisions.",
          type = "string",
        },
        osPolicyAssignments = {
          description = "The OS policy assignment revisions",
          items = {
            ["$ref"] = "OSPolicyAssignment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListOSPolicyAssignmentsResponse = {
      description = "A response message for listing all assignments under given parent.",
      id = "ListOSPolicyAssignmentsResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of OS policy assignments.",
          type = "string",
        },
        osPolicyAssignments = {
          description = "The list of assignments",
          items = {
            ["$ref"] = "OSPolicyAssignment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPatchDeploymentsResponse = {
      description = "A response message for listing patch deployments.",
      id = "ListPatchDeploymentsResponse",
      properties = {
        nextPageToken = {
          description = "A pagination token that can be used to get the next page of patch deployments.",
          type = "string",
        },
        patchDeployments = {
          description = "The list of patch deployments.",
          items = {
            ["$ref"] = "PatchDeployment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPatchJobInstanceDetailsResponse = {
      description = "A response message for listing the instances details for a patch job.",
      id = "ListPatchJobInstanceDetailsResponse",
      properties = {
        nextPageToken = {
          description = "A pagination token that can be used to get the next page of results.",
          type = "string",
        },
        patchJobInstanceDetails = {
          description = "A list of instance status.",
          items = {
            ["$ref"] = "PatchJobInstanceDetails",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPatchJobsResponse = {
      description = "A response message for listing patch jobs.",
      id = "ListPatchJobsResponse",
      properties = {
        nextPageToken = {
          description = "A pagination token that can be used to get the next page of results.",
          type = "string",
        },
        patchJobs = {
          description = "The list of patch jobs.",
          items = {
            ["$ref"] = "PatchJob",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVulnerabilityReportsResponse = {
      description = "A response message for listing vulnerability reports for all VM instances in the specified location.",
      id = "ListVulnerabilityReportsResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of vulnerabilityReports object.",
          type = "string",
        },
        vulnerabilityReports = {
          description = "List of vulnerabilityReport objects.",
          items = {
            ["$ref"] = "VulnerabilityReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MonthlySchedule = {
      description = "Represents a monthly schedule. An example of a valid monthly schedule is \"on the third Tuesday of the month\" or \"on the 15th of the month\".",
      id = "MonthlySchedule",
      properties = {
        monthDay = {
          description = "Required. One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month. Months without the target day will be skipped. For example, a schedule to run \"every month on the 31st\" will not run in February, April, June, etc.",
          format = "int32",
          type = "integer",
        },
        weekDayOfMonth = {
          ["$ref"] = "WeekDayOfMonth",
          description = "Required. Week day in a month.",
        },
      },
      type = "object",
    },
    OSPolicy = {
      description = "An OS policy defines the desired state configuration for a VM.",
      id = "OSPolicy",
      properties = {
        allowNoResourceGroupMatch = {
          description = "This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce.",
          type = "boolean",
        },
        description = {
          description = "Policy description. Length of the description is limited to 1024 characters.",
          type = "string",
        },
        id = {
          description = "Required. The id of the OS policy with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the assignment.",
          type = "string",
        },
        mode = {
          description = "Required. Policy mode",
          enum = {
            "MODE_UNSPECIFIED",
            "VALIDATION",
            "ENFORCEMENT",
          },
          enumDescriptions = {
            "Invalid mode",
            "This mode checks if the configuration resources in the policy are in their desired state. No actions are performed if they are not in the desired state. This mode is used for reporting purposes.",
            "This mode checks if the configuration resources in the policy are in their desired state, and if not, enforces the desired state.",
          },
          type = "string",
        },
        resourceGroups = {
          description = "Required. List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match`",
          items = {
            ["$ref"] = "OSPolicyResourceGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OSPolicyAssignment = {
      description = "OS policy assignment is an API resource that is used to apply a set of OS policies to a dynamically targeted group of Compute Engine VM instances. An OS policy is used to define the desired state configuration for a Compute Engine VM instance through a set of configuration resources that provide capabilities such as installing or removing software packages, or executing a script. For more information about the OS policy resource definitions and examples, see [OS policy and OS policy assignment](https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies).",
      id = "OSPolicyAssignment",
      properties = {
        baseline = {
          description = "Output only. Indicates that this revision has been successfully rolled out in this zone and new VMs will be assigned OS policies from this revision. For a given OS policy assignment, there is only one revision with a value of `true` for this field.",
          readOnly = true,
          type = "boolean",
        },
        deleted = {
          description = "Output only. Indicates that this revision deletes the OS policy assignment.",
          readOnly = true,
          type = "boolean",
        },
        description = {
          description = "OS policy assignment description. Length of the description is limited to 1024 characters.",
          type = "string",
        },
        etag = {
          description = "The etag for this OS policy assignment. If this is provided on update, it must match the server's etag.",
          type = "string",
        },
        instanceFilter = {
          ["$ref"] = "OSPolicyAssignmentInstanceFilter",
          description = "Required. Filter to select VMs.",
        },
        name = {
          description = "Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id}` This field is ignored when you create an OS policy assignment.",
          type = "string",
        },
        osPolicies = {
          description = "Required. List of OS policies to be applied to the VMs.",
          items = {
            ["$ref"] = "OSPolicy",
          },
          type = "array",
        },
        reconciling = {
          description = "Output only. Indicates that reconciliation is in progress for the revision. This value is `true` when the `rollout_state` is one of: * IN_PROGRESS * CANCELLING",
          readOnly = true,
          type = "boolean",
        },
        revisionCreateTime = {
          description = "Output only. The timestamp that the revision was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. The assignment revision ID A new revision is committed whenever a rollout is triggered for a OS policy assignment",
          readOnly = true,
          type = "string",
        },
        rollout = {
          ["$ref"] = "OSPolicyAssignmentRollout",
          description = "Required. Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted.",
        },
        rolloutState = {
          description = "Output only. OS policy assignment rollout state",
          enum = {
            "ROLLOUT_STATE_UNSPECIFIED",
            "IN_PROGRESS",
            "CANCELLING",
            "CANCELLED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "Invalid value",
            "The rollout is in progress.",
            "The rollout is being cancelled.",
            "The rollout is cancelled.",
            "The rollout has completed successfully.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. Server generated unique id for the OS policy assignment resource.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentInstanceFilter = {
      description = "Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.",
      id = "OSPolicyAssignmentInstanceFilter",
      properties = {
        all = {
          description = "Target all VMs in the project. If true, no other criteria is permitted.",
          type = "boolean",
        },
        exclusionLabels = {
          description = "List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM.",
          items = {
            ["$ref"] = "OSPolicyAssignmentLabelSet",
          },
          type = "array",
        },
        inclusionLabels = {
          description = "List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM.",
          items = {
            ["$ref"] = "OSPolicyAssignmentLabelSet",
          },
          type = "array",
        },
        inventories = {
          description = "List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories.",
          items = {
            ["$ref"] = "OSPolicyAssignmentInstanceFilterInventory",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentInstanceFilterInventory = {
      description = "VM inventory details.",
      id = "OSPolicyAssignmentInstanceFilterInventory",
      properties = {
        osShortName = {
          description = "Required. The OS short name",
          type = "string",
        },
        osVersion = {
          description = "The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentLabelSet = {
      description = "Message representing label set. * A label is a key value pair set for a VM. * A LabelSet is a set of labels. * Labels within a LabelSet are ANDed. In other words, a LabelSet is applicable for a VM only if it matches all the labels in the LabelSet. * Example: A LabelSet with 2 labels: `env=prod` and `type=webserver` will only be applicable for those VMs with both labels present.",
      id = "OSPolicyAssignmentLabelSet",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected.",
          type = "object",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentOperationMetadata = {
      description = "OS policy assignment operation metadata provided by OS policy assignment API methods that return long running operations.",
      id = "OSPolicyAssignmentOperationMetadata",
      properties = {
        apiMethod = {
          description = "The OS policy assignment API method.",
          enum = {
            "API_METHOD_UNSPECIFIED",
            "CREATE",
            "UPDATE",
            "DELETE",
          },
          enumDescriptions = {
            "Invalid value",
            "Create OS policy assignment API method",
            "Update OS policy assignment API method",
            "Delete OS policy assignment API method",
          },
          type = "string",
        },
        osPolicyAssignment = {
          description = "Reference to the `OSPolicyAssignment` API resource. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id@revision_id}`",
          type = "string",
        },
        rolloutStartTime = {
          description = "Rollout start time",
          format = "google-datetime",
          type = "string",
        },
        rolloutState = {
          description = "State of the rollout",
          enum = {
            "ROLLOUT_STATE_UNSPECIFIED",
            "IN_PROGRESS",
            "CANCELLING",
            "CANCELLED",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "Invalid value",
            "The rollout is in progress.",
            "The rollout is being cancelled.",
            "The rollout is cancelled.",
            "The rollout has completed successfully.",
          },
          type = "string",
        },
        rolloutUpdateTime = {
          description = "Rollout update time",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentReport = {
      description = "A report of the OS policy assignment status for a given instance.",
      id = "OSPolicyAssignmentReport",
      properties = {
        instance = {
          description = "The Compute Engine VM instance name.",
          type = "string",
        },
        lastRunId = {
          description = "Unique identifier of the last attempted run to apply the OS policies associated with this assignment on the VM. This ID is logged by the OS Config agent while applying the OS policies associated with this assignment on the VM. NOTE: If the service is unable to successfully connect to the agent for this run, then this id will not be available in the agent logs.",
          type = "string",
        },
        name = {
          description = "The `OSPolicyAssignmentReport` API resource name. Format: `projects/{project_number}/locations/{location}/instances/{instance_id}/osPolicyAssignments/{os_policy_assignment_id}/report`",
          type = "string",
        },
        osPolicyAssignment = {
          description = "Reference to the `OSPolicyAssignment` API resource that the `OSPolicy` belongs to. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id@revision_id}`",
          type = "string",
        },
        osPolicyCompliances = {
          description = "Compliance data for each `OSPolicy` that is applied to the VM.",
          items = {
            ["$ref"] = "OSPolicyAssignmentReportOSPolicyCompliance",
          },
          type = "array",
        },
        updateTime = {
          description = "Timestamp for when the report was last generated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentReportOSPolicyCompliance = {
      description = "Compliance data for an OS policy",
      id = "OSPolicyAssignmentReportOSPolicyCompliance",
      properties = {
        complianceState = {
          description = "The compliance state of the OS policy.",
          enum = {
            "UNKNOWN",
            "COMPLIANT",
            "NON_COMPLIANT",
          },
          enumDescriptions = {
            "The policy is in an unknown compliance state. Refer to the field `compliance_state_reason` to learn the exact reason for the policy to be in this compliance state.",
            "Policy is compliant. The policy is compliant if all the underlying resources are also compliant.",
            "Policy is non-compliant. The policy is non-compliant if one or more underlying resources are non-compliant.",
          },
          type = "string",
        },
        complianceStateReason = {
          description = "The reason for the OS policy to be in an unknown compliance state. This field is always populated when `compliance_state` is `UNKNOWN`. If populated, the field can contain one of the following values: * `vm-not-running`: The VM was not running. * `os-policies-not-supported-by-agent`: The version of the OS Config agent running on the VM does not support running OS policies. * `no-agent-detected`: The OS Config agent is not detected for the VM. * `resource-execution-errors`: The OS Config agent encountered errors while executing one or more resources in the policy. See `os_policy_resource_compliances` for details. * `task-timeout`: The task sent to the agent to apply the policy timed out. * `unexpected-agent-state`: The OS Config agent did not report the final status of the task that attempted to apply the policy. Instead, the agent unexpectedly started working on a different task. This mostly happens when the agent or VM unexpectedly restarts while applying OS policies. * `internal-service-errors`: Internal service errors were encountered while attempting to apply the policy.",
          type = "string",
        },
        osPolicyId = {
          description = "The OS policy id",
          type = "string",
        },
        osPolicyResourceCompliances = {
          description = "Compliance data for each resource within the policy that is applied to the VM.",
          items = {
            ["$ref"] = "OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance = {
      description = "Compliance data for an OS policy resource.",
      id = "OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceCompliance",
      properties = {
        complianceState = {
          description = "The compliance state of the resource.",
          enum = {
            "UNKNOWN",
            "COMPLIANT",
            "NON_COMPLIANT",
          },
          enumDescriptions = {
            "The resource is in an unknown compliance state. To get more details about why the policy is in this state, review the output of the `compliance_state_reason` field.",
            "Resource is compliant.",
            "Resource is non-compliant.",
          },
          type = "string",
        },
        complianceStateReason = {
          description = "A reason for the resource to be in the given compliance state. This field is always populated when `compliance_state` is `UNKNOWN`. The following values are supported when `compliance_state == UNKNOWN` * `execution-errors`: Errors were encountered by the agent while executing the resource and the compliance state couldn't be determined. * `execution-skipped-by-agent`: Resource execution was skipped by the agent because errors were encountered while executing prior resources in the OS policy. * `os-policy-execution-attempt-failed`: The execution of the OS policy containing this resource failed and the compliance state couldn't be determined.",
          type = "string",
        },
        configSteps = {
          description = "Ordered list of configuration completed by the agent for the OS policy resource.",
          items = {
            ["$ref"] = "OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep",
          },
          type = "array",
        },
        execResourceOutput = {
          ["$ref"] = "OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput",
          description = "ExecResource specific output.",
        },
        osPolicyResourceId = {
          description = "The ID of the OS policy resource.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput = {
      description = "ExecResource specific output.",
      id = "OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceExecResourceOutput",
      properties = {
        enforcementOutput = {
          description = "Output from enforcement phase output file (if run). Output size is limited to 100K bytes.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep = {
      description = "Step performed by the OS Config agent for configuring an `OSPolicy` resource to its desired state.",
      id = "OSPolicyAssignmentReportOSPolicyComplianceOSPolicyResourceComplianceOSPolicyResourceConfigStep",
      properties = {
        errorMessage = {
          description = "An error message recorded during the execution of this step. Only populated if errors were encountered during this step execution.",
          type = "string",
        },
        type = {
          description = "Configuration step type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "VALIDATION",
            "DESIRED_STATE_CHECK",
            "DESIRED_STATE_ENFORCEMENT",
            "DESIRED_STATE_CHECK_POST_ENFORCEMENT",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Checks for resource conflicts such as schema errors.",
            "Checks the current status of the desired state for a resource.",
            "Enforces the desired state for a resource that is not in desired state.",
            "Re-checks the status of the desired state. This check is done for a resource after the enforcement of all OS policies. This step is used to determine the final desired state status for the resource. It accounts for any resources that might have drifted from their desired state due to side effects from executing other resources.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyAssignmentRollout = {
      description = "Message to configure the rollout at the zonal level for the OS policy assignment.",
      id = "OSPolicyAssignmentRollout",
      properties = {
        disruptionBudget = {
          ["$ref"] = "FixedOrPercent",
          description = "Required. The maximum number (or percentage) of VMs per zone to disrupt at any given moment.",
        },
        minWaitDuration = {
          description = "Required. This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the `disruption_budget` at least until this duration of time has passed after configuration changes are applied.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyInventoryFilter = {
      description = "Filtering criteria to select VMs based on inventory details.",
      id = "OSPolicyInventoryFilter",
      properties = {
        osShortName = {
          description = "Required. The OS short name",
          type = "string",
        },
        osVersion = {
          description = "The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResource = {
      description = "An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.",
      id = "OSPolicyResource",
      properties = {
        exec = {
          ["$ref"] = "OSPolicyResourceExecResource",
          description = "Exec resource",
        },
        file = {
          ["$ref"] = "OSPolicyResourceFileResource",
          description = "File resource",
        },
        id = {
          description = "Required. The id of the resource with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the OS policy.",
          type = "string",
        },
        pkg = {
          ["$ref"] = "OSPolicyResourcePackageResource",
          description = "Package resource",
        },
        repository = {
          ["$ref"] = "OSPolicyResourceRepositoryResource",
          description = "Package repository resource",
        },
      },
      type = "object",
    },
    OSPolicyResourceExecResource = {
      description = "A resource that allows executing scripts on the VM. The `ExecResource` has 2 stages: `validate` and `enforce` and both stages accept a script as an argument to execute. When the `ExecResource` is applied by the agent, it first executes the script in the `validate` stage. The `validate` stage can signal that the `ExecResource` is already in the desired state by returning an exit code of `100`. If the `ExecResource` is not in the desired state, it should return an exit code of `101`. Any other exit code returned by this stage is considered an error. If the `ExecResource` is not in the desired state based on the exit code from the `validate` stage, the agent proceeds to execute the script from the `enforce` stage. If the `ExecResource` is already in the desired state, the `enforce` stage will not be run. Similar to `validate` stage, the `enforce` stage should return an exit code of `100` to indicate that the resource in now in its desired state. Any other exit code is considered an error. NOTE: An exit code of `100` was chosen over `0` (and `101` vs `1`) to have an explicit indicator of `in desired state`, `not in desired state` and errors. Because, for example, Powershell will always return an exit code of `0` unless an `exit` statement is provided in the script. So, for reasons of consistency and being explicit, exit codes `100` and `101` were chosen.",
      id = "OSPolicyResourceExecResource",
      properties = {
        enforce = {
          ["$ref"] = "OSPolicyResourceExecResourceExec",
          description = "What to run to bring this resource into the desired state. An exit code of 100 indicates \"success\", any other exit code indicates a failure running enforce.",
        },
        validate = {
          ["$ref"] = "OSPolicyResourceExecResourceExec",
          description = "Required. What to run to validate this resource is in the desired state. An exit code of 100 indicates \"in desired state\", and exit code of 101 indicates \"not in desired state\". Any other exit code indicates a failure running validate.",
        },
      },
      type = "object",
    },
    OSPolicyResourceExecResourceExec = {
      description = "A file or script to execute.",
      id = "OSPolicyResourceExecResourceExec",
      properties = {
        args = {
          description = "Optional arguments to pass to the source during execution.",
          items = {
            type = "string",
          },
          type = "array",
        },
        file = {
          ["$ref"] = "OSPolicyResourceFile",
          description = "A remote or local file.",
        },
        interpreter = {
          description = "Required. The script interpreter to use.",
          enum = {
            "INTERPRETER_UNSPECIFIED",
            "NONE",
            "SHELL",
            "POWERSHELL",
          },
          enumDescriptions = {
            "Invalid value, the request will return validation error.",
            "If an interpreter is not specified, the source is executed directly. This execution, without an interpreter, only succeeds for executables and scripts that have shebang lines.",
            "Indicates that the script runs with `/bin/sh` on Linux and `cmd.exe` on Windows.",
            "Indicates that the script runs with PowerShell.",
          },
          type = "string",
        },
        outputFilePath = {
          description = "Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes.",
          type = "string",
        },
        script = {
          description = "An inline script. The size of the script is limited to 32KiB.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourceFile = {
      description = "A remote or local file.",
      id = "OSPolicyResourceFile",
      properties = {
        allowInsecure = {
          description = "Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.",
          type = "boolean",
        },
        gcs = {
          ["$ref"] = "OSPolicyResourceFileGcs",
          description = "A Cloud Storage object.",
        },
        localPath = {
          description = "A local path within the VM to use.",
          type = "string",
        },
        remote = {
          ["$ref"] = "OSPolicyResourceFileRemote",
          description = "A generic remote file.",
        },
      },
      type = "object",
    },
    OSPolicyResourceFileGcs = {
      description = "Specifies a file available as a Cloud Storage Object.",
      id = "OSPolicyResourceFileGcs",
      properties = {
        bucket = {
          description = "Required. Bucket of the Cloud Storage object.",
          type = "string",
        },
        generation = {
          description = "Generation number of the Cloud Storage object.",
          format = "int64",
          type = "string",
        },
        object = {
          description = "Required. Name of the Cloud Storage object.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourceFileRemote = {
      description = "Specifies a file available via some URI.",
      id = "OSPolicyResourceFileRemote",
      properties = {
        sha256Checksum = {
          description = "SHA256 checksum of the remote file.",
          type = "string",
        },
        uri = {
          description = "Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourceFileResource = {
      description = "A resource that manages the state of a file.",
      id = "OSPolicyResourceFileResource",
      properties = {
        content = {
          description = "A a file with this content. The size of the content is limited to 32KiB.",
          type = "string",
        },
        file = {
          ["$ref"] = "OSPolicyResourceFile",
          description = "A remote or local source.",
        },
        path = {
          description = "Required. The absolute path of the file within the VM.",
          type = "string",
        },
        permissions = {
          description = "Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one bit corresponds to the execute permission. Default behavior is 755. Below are some examples of permissions and their associated values: read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4",
          type = "string",
        },
        state = {
          description = "Required. Desired state of the file.",
          enum = {
            "DESIRED_STATE_UNSPECIFIED",
            "PRESENT",
            "ABSENT",
            "CONTENTS_MATCH",
          },
          enumDescriptions = {
            "Unspecified is invalid.",
            "Ensure file at path is present.",
            "Ensure file at path is absent.",
            "Ensure the contents of the file at path matches. If the file does not exist it will be created.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourceGroup = {
      description = "Resource groups provide a mechanism to group OS policy resources. Resource groups enable OS policy authors to create a single OS policy to be applied to VMs running different operating Systems. When the OS policy is applied to a target VM, the appropriate resource group within the OS policy is selected based on the `OSFilter` specified within the resource group.",
      id = "OSPolicyResourceGroup",
      properties = {
        inventoryFilters = {
          description = "List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name='rhel' and inventory_filters[1].os_short_name='centos' If the list is empty, this resource group will be applied to the target VM unconditionally.",
          items = {
            ["$ref"] = "OSPolicyInventoryFilter",
          },
          type = "array",
        },
        resources = {
          description = "Required. List of resources configured for this resource group. The resources are executed in the exact order specified here.",
          items = {
            ["$ref"] = "OSPolicyResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OSPolicyResourcePackageResource = {
      description = "A resource that manages a system package.",
      id = "OSPolicyResourcePackageResource",
      properties = {
        apt = {
          ["$ref"] = "OSPolicyResourcePackageResourceAPT",
          description = "A package managed by Apt.",
        },
        deb = {
          ["$ref"] = "OSPolicyResourcePackageResourceDeb",
          description = "A deb package file.",
        },
        desiredState = {
          description = "Required. The desired state the agent should maintain for this package.",
          enum = {
            "DESIRED_STATE_UNSPECIFIED",
            "INSTALLED",
            "REMOVED",
          },
          enumDescriptions = {
            "Unspecified is invalid.",
            "Ensure that the package is installed.",
            "The agent ensures that the package is not installed and uninstalls it if detected.",
          },
          type = "string",
        },
        googet = {
          ["$ref"] = "OSPolicyResourcePackageResourceGooGet",
          description = "A package managed by GooGet.",
        },
        msi = {
          ["$ref"] = "OSPolicyResourcePackageResourceMSI",
          description = "An MSI package.",
        },
        rpm = {
          ["$ref"] = "OSPolicyResourcePackageResourceRPM",
          description = "An rpm package file.",
        },
        yum = {
          ["$ref"] = "OSPolicyResourcePackageResourceYUM",
          description = "A package managed by YUM.",
        },
        zypper = {
          ["$ref"] = "OSPolicyResourcePackageResourceZypper",
          description = "A package managed by Zypper.",
        },
      },
      type = "object",
    },
    OSPolicyResourcePackageResourceAPT = {
      description = "A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`",
      id = "OSPolicyResourcePackageResourceAPT",
      properties = {
        name = {
          description = "Required. Package name.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourcePackageResourceDeb = {
      description = "A deb package file. dpkg packages only support INSTALLED state.",
      id = "OSPolicyResourcePackageResourceDeb",
      properties = {
        pullDeps = {
          description = "Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`",
          type = "boolean",
        },
        source = {
          ["$ref"] = "OSPolicyResourceFile",
          description = "Required. A deb package.",
        },
      },
      type = "object",
    },
    OSPolicyResourcePackageResourceGooGet = {
      description = "A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`",
      id = "OSPolicyResourcePackageResourceGooGet",
      properties = {
        name = {
          description = "Required. Package name.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourcePackageResourceMSI = {
      description = "An MSI package. MSI packages only support INSTALLED state.",
      id = "OSPolicyResourcePackageResourceMSI",
      properties = {
        properties = {
          description = "Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        source = {
          ["$ref"] = "OSPolicyResourceFile",
          description = "Required. The MSI package.",
        },
      },
      type = "object",
    },
    OSPolicyResourcePackageResourceRPM = {
      description = "An RPM package file. RPM packages only support INSTALLED state.",
      id = "OSPolicyResourcePackageResourceRPM",
      properties = {
        pullDeps = {
          description = "Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`",
          type = "boolean",
        },
        source = {
          ["$ref"] = "OSPolicyResourceFile",
          description = "Required. An rpm package.",
        },
      },
      type = "object",
    },
    OSPolicyResourcePackageResourceYUM = {
      description = "A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`",
      id = "OSPolicyResourcePackageResourceYUM",
      properties = {
        name = {
          description = "Required. Package name.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourcePackageResourceZypper = {
      description = "A package managed by Zypper. - install: `zypper -y install package` - remove: `zypper -y rm package`",
      id = "OSPolicyResourcePackageResourceZypper",
      properties = {
        name = {
          description = "Required. Package name.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourceRepositoryResource = {
      description = "A resource that manages a package repository.",
      id = "OSPolicyResourceRepositoryResource",
      properties = {
        apt = {
          ["$ref"] = "OSPolicyResourceRepositoryResourceAptRepository",
          description = "An Apt Repository.",
        },
        goo = {
          ["$ref"] = "OSPolicyResourceRepositoryResourceGooRepository",
          description = "A Goo Repository.",
        },
        yum = {
          ["$ref"] = "OSPolicyResourceRepositoryResourceYumRepository",
          description = "A Yum Repository.",
        },
        zypper = {
          ["$ref"] = "OSPolicyResourceRepositoryResourceZypperRepository",
          description = "A Zypper Repository.",
        },
      },
      type = "object",
    },
    OSPolicyResourceRepositoryResourceAptRepository = {
      description = "Represents a single apt package repository. These will be added to a repo file that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.",
      id = "OSPolicyResourceRepositoryResourceAptRepository",
      properties = {
        archiveType = {
          description = "Required. Type of archive files in this repository.",
          enum = {
            "ARCHIVE_TYPE_UNSPECIFIED",
            "DEB",
            "DEB_SRC",
          },
          enumDescriptions = {
            "Unspecified is invalid.",
            "Deb indicates that the archive contains binary files.",
            "Deb-src indicates that the archive contains source files.",
          },
          type = "string",
        },
        components = {
          description = "Required. List of components for this repository. Must contain at least one item.",
          items = {
            type = "string",
          },
          type = "array",
        },
        distribution = {
          description = "Required. Distribution of this repository.",
          type = "string",
        },
        gpgKey = {
          description = "URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.",
          type = "string",
        },
        uri = {
          description = "Required. URI for this repository.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourceRepositoryResourceGooRepository = {
      description = "Represents a Goo package repository. These are added to a repo file that is managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.",
      id = "OSPolicyResourceRepositoryResourceGooRepository",
      properties = {
        name = {
          description = "Required. The name of the repository.",
          type = "string",
        },
        url = {
          description = "Required. The url of the repository.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourceRepositoryResourceYumRepository = {
      description = "Represents a single yum package repository. These are added to a repo file that is managed at `/etc/yum.repos.d/google_osconfig.repo`.",
      id = "OSPolicyResourceRepositoryResourceYumRepository",
      properties = {
        baseUrl = {
          description = "Required. The location of the repository directory.",
          type = "string",
        },
        displayName = {
          description = "The display name of the repository.",
          type = "string",
        },
        gpgKeys = {
          description = "URIs of GPG keys.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "Required. A one word, unique name for this repository. This is the `repo id` in the yum config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for resource conflicts.",
          type = "string",
        },
      },
      type = "object",
    },
    OSPolicyResourceRepositoryResourceZypperRepository = {
      description = "Represents a single zypper package repository. These are added to a repo file that is managed at `/etc/zypp/repos.d/google_osconfig.repo`.",
      id = "OSPolicyResourceRepositoryResourceZypperRepository",
      properties = {
        baseUrl = {
          description = "Required. The location of the repository directory.",
          type = "string",
        },
        displayName = {
          description = "The display name of the repository.",
          type = "string",
        },
        gpgKeys = {
          description = "URIs of GPG keys.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "Required. A one word, unique name for this repository. This is the `repo id` in the zypper config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for GuestPolicy conflicts.",
          type = "string",
        },
      },
      type = "object",
    },
    OneTimeSchedule = {
      description = "Sets the time for a one time patch deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
      id = "OneTimeSchedule",
      properties = {
        executeTime = {
          description = "Required. The desired patch job execution time.",
          format = "google-datetime",
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
    PatchConfig = {
      description = "Patch configuration specifications. Contains details on how to apply the patch(es) to a VM instance.",
      id = "PatchConfig",
      properties = {
        apt = {
          ["$ref"] = "AptSettings",
          description = "Apt update settings. Use this setting to override the default `apt` patch rules.",
        },
        goo = {
          ["$ref"] = "GooSettings",
          description = "Goo update settings. Use this setting to override the default `goo` patch rules.",
        },
        migInstancesAllowed = {
          description = "Allows the patch job to run on Managed instance groups (MIGs).",
          type = "boolean",
        },
        postStep = {
          ["$ref"] = "ExecStep",
          description = "The `ExecStep` to run after the patch update.",
        },
        preStep = {
          ["$ref"] = "ExecStep",
          description = "The `ExecStep` to run before the patch update.",
        },
        rebootConfig = {
          description = "Post-patch reboot settings.",
          enum = {
            "REBOOT_CONFIG_UNSPECIFIED",
            "DEFAULT",
            "ALWAYS",
            "NEVER",
          },
          enumDescriptions = {
            "The default behavior is DEFAULT.",
            "The agent decides if a reboot is necessary by checking signals such as registry keys on Windows or `/var/run/reboot-required` on APT based systems. On RPM based systems, a set of core system package install times are compared with system boot time.",
            "Always reboot the machine after the update completes.",
            "Never reboot the machine after the update completes.",
          },
          type = "string",
        },
        windowsUpdate = {
          ["$ref"] = "WindowsUpdateSettings",
          description = "Windows update settings. Use this override the default windows patch rules.",
        },
        yum = {
          ["$ref"] = "YumSettings",
          description = "Yum update settings. Use this setting to override the default `yum` patch rules.",
        },
        zypper = {
          ["$ref"] = "ZypperSettings",
          description = "Zypper update settings. Use this setting to override the default `zypper` patch rules.",
        },
      },
      type = "object",
    },
    PatchDeployment = {
      description = "Patch deployments are configurations that individual patch jobs use to complete a patch. These configurations include instance filter, package repository settings, and a schedule. For more information about creating and managing patch deployments, see [Scheduling patch jobs](https://cloud.google.com/compute/docs/os-patch-management/schedule-patch-jobs).",
      id = "PatchDeployment",
      properties = {
        createTime = {
          description = "Output only. Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.",
          type = "string",
        },
        duration = {
          description = "Optional. Duration of the patch. After the duration ends, the patch times out.",
          format = "google-duration",
          type = "string",
        },
        instanceFilter = {
          ["$ref"] = "PatchInstanceFilter",
          description = "Required. VM instances to patch.",
        },
        lastExecuteTime = {
          description = "Output only. The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.",
          type = "string",
        },
        oneTimeSchedule = {
          ["$ref"] = "OneTimeSchedule",
          description = "Required. Schedule a one-time execution.",
        },
        patchConfig = {
          ["$ref"] = "PatchConfig",
          description = "Optional. Patch configuration that is applied.",
        },
        recurringSchedule = {
          ["$ref"] = "RecurringSchedule",
          description = "Required. Schedule recurring executions.",
        },
        rollout = {
          ["$ref"] = "PatchRollout",
          description = "Optional. Rollout strategy of the patch job.",
        },
        state = {
          description = "Output only. Current state of the patch deployment.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "PAUSED",
          },
          enumDescriptions = {
            "The default value. This value is used if the state is omitted.",
            "Active value means that patch deployment generates Patch Jobs.",
            "Paused value means that patch deployment does not generate Patch jobs. Requires user action to move in and out from this state.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    PatchInstanceFilter = {
      description = "A filter to target VM instances for patching. The targeted VMs must meet all criteria specified. So if both labels and zones are specified, the patch job targets only VMs with those labels and in those zones.",
      id = "PatchInstanceFilter",
      properties = {
        all = {
          description = "Target all VM instances in the project. If true, no other criteria is permitted.",
          type = "boolean",
        },
        groupLabels = {
          description = "Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.",
          items = {
            ["$ref"] = "PatchInstanceFilterGroupLabel",
          },
          type = "array",
        },
        instanceNamePrefixes = {
          description = "Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix=\"prod-\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        instances = {
          description = "Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`",
          items = {
            type = "string",
          },
          type = "array",
        },
        zones = {
          description = "Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PatchInstanceFilterGroupLabel = {
      description = "Targets a group of VM instances by using their [assigned labels](https://cloud.google.com/compute/docs/labeling-resources). Labels are key-value pairs. A `GroupLabel` is a combination of labels that is used to target VMs for a patch job. For example, a patch job can target VMs that have the following `GroupLabel`: `{\"env\":\"test\", \"app\":\"web\"}`. This means that the patch job is applied to VMs that have both the labels `env=test` and `app=web`.",
      id = "PatchInstanceFilterGroupLabel",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.",
          type = "object",
        },
      },
      type = "object",
    },
    PatchJob = {
      description = "A high level representation of a patch job that is either in progress or has completed. Instance details are not included in the job. To paginate through instance details, use ListPatchJobInstanceDetails. For more information about patch jobs, see [Creating patch jobs](https://cloud.google.com/compute/docs/os-patch-management/create-patch-job).",
      id = "PatchJob",
      properties = {
        createTime = {
          description = "Time this patch job was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "Description of the patch job. Length of the description is limited to 1024 characters.",
          type = "string",
        },
        displayName = {
          description = "Display name for this patch job. This is not a unique identifier.",
          type = "string",
        },
        dryRun = {
          description = "If this patch job is a dry run, the agent reports that it has finished without running any updates on the VM instance.",
          type = "boolean",
        },
        duration = {
          description = "Duration of the patch job. After the duration ends, the patch job times out.",
          format = "google-duration",
          type = "string",
        },
        errorMessage = {
          description = "If this patch job failed, this message provides information about the failure.",
          type = "string",
        },
        instanceDetailsSummary = {
          ["$ref"] = "PatchJobInstanceDetailsSummary",
          description = "Summary of instance details.",
        },
        instanceFilter = {
          ["$ref"] = "PatchInstanceFilter",
          description = "Instances to patch.",
        },
        name = {
          description = "Unique identifier for this patch job in the form `projects/*/patchJobs/*`",
          type = "string",
        },
        patchConfig = {
          ["$ref"] = "PatchConfig",
          description = "Patch configuration being applied.",
        },
        patchDeployment = {
          description = "Output only. Name of the patch deployment that created this patch job.",
          readOnly = true,
          type = "string",
        },
        percentComplete = {
          description = "Reflects the overall progress of the patch job in the range of 0.0 being no progress to 100.0 being complete.",
          format = "double",
          type = "number",
        },
        rollout = {
          ["$ref"] = "PatchRollout",
          description = "Rollout strategy being applied.",
        },
        state = {
          description = "The current state of the PatchJob.",
          enum = {
            "STATE_UNSPECIFIED",
            "STARTED",
            "INSTANCE_LOOKUP",
            "PATCHING",
            "SUCCEEDED",
            "COMPLETED_WITH_ERRORS",
            "CANCELED",
            "TIMED_OUT",
          },
          enumDescriptions = {
            "State must be specified.",
            "The patch job was successfully initiated.",
            "The patch job is looking up instances to run the patch on.",
            "Instances are being patched.",
            "Patch job completed successfully.",
            "Patch job completed but there were errors.",
            "The patch job was canceled.",
            "The patch job timed out.",
          },
          type = "string",
        },
        updateTime = {
          description = "Last time this patch job was updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    PatchJobInstanceDetails = {
      description = "Patch details for a VM instance. For more information about reviewing VM instance details, see [Listing all VM instance details for a specific patch job](https://cloud.google.com/compute/docs/os-patch-management/manage-patch-jobs#list-instance-details).",
      id = "PatchJobInstanceDetails",
      properties = {
        attemptCount = {
          description = "The number of times the agent that the agent attempts to apply the patch.",
          format = "int64",
          type = "string",
        },
        failureReason = {
          description = "If the patch fails, this field provides the reason.",
          type = "string",
        },
        instanceSystemId = {
          description = "The unique identifier for the instance. This identifier is defined by the server.",
          type = "string",
        },
        name = {
          description = "The instance name in the form `projects/*/zones/*/instances/*`",
          type = "string",
        },
        state = {
          description = "Current state of instance patch.",
          enum = {
            "PATCH_STATE_UNSPECIFIED",
            "PENDING",
            "INACTIVE",
            "NOTIFIED",
            "STARTED",
            "DOWNLOADING_PATCHES",
            "APPLYING_PATCHES",
            "REBOOTING",
            "SUCCEEDED",
            "SUCCEEDED_REBOOT_REQUIRED",
            "FAILED",
            "ACKED",
            "TIMED_OUT",
            "RUNNING_PRE_PATCH_STEP",
            "RUNNING_POST_PATCH_STEP",
            "NO_AGENT_DETECTED",
          },
          enumDescriptions = {
            "Unspecified.",
            "The instance is not yet notified.",
            "Instance is inactive and cannot be patched.",
            "The instance is notified that it should be patched.",
            "The instance has started the patching process.",
            "The instance is downloading patches.",
            "The instance is applying patches.",
            "The instance is rebooting.",
            "The instance has completed applying patches.",
            "The instance has completed applying patches but a reboot is required.",
            "The instance has failed to apply the patch.",
            "The instance acked the notification and will start shortly.",
            "The instance exceeded the time out while applying the patch.",
            "The instance is running the pre-patch step.",
            "The instance is running the post-patch step.",
            "The service could not detect the presence of the agent. Check to ensure that the agent is installed, running, and able to communicate with the service.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PatchJobInstanceDetailsSummary = {
      description = "A summary of the current patch state across all instances that this patch job affects. Contains counts of instances in different states. These states map to `InstancePatchState`. List patch job instance details to see the specific states of each instance.",
      id = "PatchJobInstanceDetailsSummary",
      properties = {
        ackedInstanceCount = {
          description = "Number of instances that have acked and will start shortly.",
          format = "int64",
          type = "string",
        },
        applyingPatchesInstanceCount = {
          description = "Number of instances that are applying patches.",
          format = "int64",
          type = "string",
        },
        downloadingPatchesInstanceCount = {
          description = "Number of instances that are downloading patches.",
          format = "int64",
          type = "string",
        },
        failedInstanceCount = {
          description = "Number of instances that failed.",
          format = "int64",
          type = "string",
        },
        inactiveInstanceCount = {
          description = "Number of instances that are inactive.",
          format = "int64",
          type = "string",
        },
        noAgentDetectedInstanceCount = {
          description = "Number of instances that do not appear to be running the agent. Check to ensure that the agent is installed, running, and able to communicate with the service.",
          format = "int64",
          type = "string",
        },
        notifiedInstanceCount = {
          description = "Number of instances notified about patch job.",
          format = "int64",
          type = "string",
        },
        pendingInstanceCount = {
          description = "Number of instances pending patch job.",
          format = "int64",
          type = "string",
        },
        postPatchStepInstanceCount = {
          description = "Number of instances that are running the post-patch step.",
          format = "int64",
          type = "string",
        },
        prePatchStepInstanceCount = {
          description = "Number of instances that are running the pre-patch step.",
          format = "int64",
          type = "string",
        },
        rebootingInstanceCount = {
          description = "Number of instances rebooting.",
          format = "int64",
          type = "string",
        },
        startedInstanceCount = {
          description = "Number of instances that have started.",
          format = "int64",
          type = "string",
        },
        succeededInstanceCount = {
          description = "Number of instances that have completed successfully.",
          format = "int64",
          type = "string",
        },
        succeededRebootRequiredInstanceCount = {
          description = "Number of instances that require reboot.",
          format = "int64",
          type = "string",
        },
        timedOutInstanceCount = {
          description = "Number of instances that exceeded the time out while applying the patch.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PatchRollout = {
      description = "Patch rollout configuration specifications. Contains details on the concurrency control when applying patch(es) to all targeted VMs.",
      id = "PatchRollout",
      properties = {
        disruptionBudget = {
          ["$ref"] = "FixedOrPercent",
          description = "The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up. During patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps. A VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget. For zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone. For example, if the disruption budget has a fixed value of `10`, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops.",
        },
        mode = {
          description = "Mode of the patch rollout.",
          enum = {
            "MODE_UNSPECIFIED",
            "ZONE_BY_ZONE",
            "CONCURRENT_ZONES",
          },
          enumDescriptions = {
            "Mode must be specified.",
            "Patches are applied one zone at a time. The patch job begins in the region with the lowest number of targeted VMs. Within the region, patching begins in the zone with the lowest number of targeted VMs. If multiple regions (or zones within a region) have the same number of targeted VMs, a tie-breaker is achieved by sorting the regions or zones in alphabetical order.",
            "Patches are applied to VMs in all zones at the same time.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PausePatchDeploymentRequest = {
      description = "A request message for pausing a patch deployment.",
      id = "PausePatchDeploymentRequest",
      properties = {},
      type = "object",
    },
    RecurringSchedule = {
      description = "Sets the time for recurring patch deployments.",
      id = "RecurringSchedule",
      properties = {
        endTime = {
          description = "Optional. The end time at which a recurring patch deployment schedule is no longer active.",
          format = "google-datetime",
          type = "string",
        },
        frequency = {
          description = "Required. The frequency unit of this recurring schedule.",
          enum = {
            "FREQUENCY_UNSPECIFIED",
            "WEEKLY",
            "MONTHLY",
            "DAILY",
          },
          enumDescriptions = {
            "Invalid. A frequency must be specified.",
            "Indicates that the frequency of recurrence should be expressed in terms of weeks.",
            "Indicates that the frequency of recurrence should be expressed in terms of months.",
            "Indicates that the frequency of recurrence should be expressed in terms of days.",
          },
          type = "string",
        },
        lastExecuteTime = {
          description = "Output only. The time the last patch job ran successfully.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        monthly = {
          ["$ref"] = "MonthlySchedule",
          description = "Required. Schedule with monthly executions.",
        },
        nextExecuteTime = {
          description = "Output only. The time the next patch job is scheduled to run.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.",
          format = "google-datetime",
          type = "string",
        },
        timeOfDay = {
          ["$ref"] = "TimeOfDay",
          description = "Required. Time of the day to run a recurring deployment.",
        },
        timeZone = {
          ["$ref"] = "TimeZone",
          description = "Required. Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.",
        },
        weekly = {
          ["$ref"] = "WeeklySchedule",
          description = "Required. Schedule with weekly executions.",
        },
      },
      type = "object",
    },
    ResumePatchDeploymentRequest = {
      description = "A request message for resuming a patch deployment.",
      id = "ResumePatchDeploymentRequest",
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
    TimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "TimeOfDay",
      properties = {
        hours = {
          description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Minutes of hour of day. Must be from 0 to 59.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TimeZone = {
      description = "Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).",
      id = "TimeZone",
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
    VulnerabilityReport = {
      description = "This API resource represents the vulnerability report for a specified Compute Engine virtual machine (VM) instance at a given point in time. For more information, see [Vulnerability reports](https://cloud.google.com/compute/docs/instances/os-inventory-management#vulnerability-reports).",
      id = "VulnerabilityReport",
      properties = {
        name = {
          description = "Output only. The `vulnerabilityReport` API resource name. Format: `projects/{project_number}/locations/{location}/instances/{instance_id}/vulnerabilityReport`",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp for when the last vulnerability report was generated for the VM.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        vulnerabilities = {
          description = "Output only. List of vulnerabilities affecting the VM.",
          items = {
            ["$ref"] = "VulnerabilityReportVulnerability",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    VulnerabilityReportVulnerability = {
      description = "A vulnerability affecting the VM instance.",
      id = "VulnerabilityReportVulnerability",
      properties = {
        availableInventoryItemIds = {
          description = "Corresponds to the `AVAILABLE_PACKAGE` inventory item on the VM. If the vulnerability report was not updated after the VM inventory update, these values might not display in VM inventory. If there is no available fix, the field is empty. The `inventory_item` value specifies the latest `SoftwarePackage` available to the VM that fixes the vulnerability.",
          items = {
            type = "string",
          },
          type = "array",
        },
        createTime = {
          description = "The timestamp for when the vulnerability was first detected.",
          format = "google-datetime",
          type = "string",
        },
        details = {
          ["$ref"] = "VulnerabilityReportVulnerabilityDetails",
          description = "Contains metadata as per the upstream feed of the operating system and NVD.",
        },
        installedInventoryItemIds = {
          description = "Corresponds to the `INSTALLED_PACKAGE` inventory item on the VM. This field displays the inventory items affected by this vulnerability. If the vulnerability report was not updated after the VM inventory update, these values might not display in VM inventory. For some distros, this field may be empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        items = {
          description = "List of items affected by the vulnerability.",
          items = {
            ["$ref"] = "VulnerabilityReportVulnerabilityItem",
          },
          type = "array",
        },
        updateTime = {
          description = "The timestamp for when the vulnerability was last modified.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    VulnerabilityReportVulnerabilityDetails = {
      description = "Contains metadata information for the vulnerability. This information is collected from the upstream feed of the operating system.",
      id = "VulnerabilityReportVulnerabilityDetails",
      properties = {
        cve = {
          description = "The CVE of the vulnerability. CVE cannot be empty and the combination of should be unique across vulnerabilities for a VM.",
          type = "string",
        },
        cvssV2Score = {
          description = "The CVSS V2 score of this vulnerability. CVSS V2 score is on a scale of 0 - 10 where 0 indicates low severity and 10 indicates high severity.",
          format = "float",
          type = "number",
        },
        cvssV3 = {
          ["$ref"] = "CVSSv3",
          description = "The full description of the CVSSv3 for this vulnerability from NVD.",
        },
        description = {
          description = "The note or description describing the vulnerability from the distro.",
          type = "string",
        },
        references = {
          description = "Corresponds to the references attached to the `VulnerabilityDetails`.",
          items = {
            ["$ref"] = "VulnerabilityReportVulnerabilityDetailsReference",
          },
          type = "array",
        },
        severity = {
          description = "Assigned severity/impact ranking from the distro.",
          type = "string",
        },
      },
      type = "object",
    },
    VulnerabilityReportVulnerabilityDetailsReference = {
      description = "A reference for this vulnerability.",
      id = "VulnerabilityReportVulnerabilityDetailsReference",
      properties = {
        source = {
          description = "The source of the reference e.g. NVD.",
          type = "string",
        },
        url = {
          description = "The url of the reference.",
          type = "string",
        },
      },
      type = "object",
    },
    VulnerabilityReportVulnerabilityItem = {
      description = "OS inventory item that is affected by a vulnerability or fixed as a result of a vulnerability.",
      id = "VulnerabilityReportVulnerabilityItem",
      properties = {
        availableInventoryItemId = {
          description = "Corresponds to the `AVAILABLE_PACKAGE` inventory item on the VM. If the vulnerability report was not updated after the VM inventory update, these values might not display in VM inventory. If there is no available fix, the field is empty. The `inventory_item` value specifies the latest `SoftwarePackage` available to the VM that fixes the vulnerability.",
          type = "string",
        },
        fixedCpeUri = {
          description = "The recommended [CPE URI](https://cpe.mitre.org/specification/) update that contains a fix for this vulnerability.",
          type = "string",
        },
        installedInventoryItemId = {
          description = "Corresponds to the `INSTALLED_PACKAGE` inventory item on the VM. This field displays the inventory items affected by this vulnerability. If the vulnerability report was not updated after the VM inventory update, these values might not display in VM inventory. For some operating systems, this field might be empty.",
          type = "string",
        },
        upstreamFix = {
          description = "The upstream OS patch, packages or KB that fixes the vulnerability.",
          type = "string",
        },
      },
      type = "object",
    },
    WeekDayOfMonth = {
      description = "Represents one week day in a month. An example is \"the 4th Sunday\".",
      id = "WeekDayOfMonth",
      properties = {
        dayOfWeek = {
          description = "Required. A day of the week.",
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
        dayOffset = {
          description = "Optional. Represents the number of days before or after the given week day of month that the patch deployment is scheduled for. For example if `week_ordinal` and `day_of_week` values point to the second day of the month and this `day_offset` value is set to `3`, the patch deployment takes place three days after the second Tuesday of the month. If this value is negative, for example -5, the patches are deployed five days before before the second Tuesday of the month. Allowed values are in range [-30, 30].",
          format = "int32",
          type = "integer",
        },
        weekOrdinal = {
          description = "Required. Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    WeeklySchedule = {
      description = "Represents a weekly schedule.",
      id = "WeeklySchedule",
      properties = {
        dayOfWeek = {
          description = "Required. Day of the week.",
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
      },
      type = "object",
    },
    WindowsUpdateSettings = {
      description = "Windows patching is performed using the Windows Update Agent.",
      id = "WindowsUpdateSettings",
      properties = {
        classifications = {
          description = "Only apply updates of these windows update classifications. If empty, all updates are applied.",
          items = {
            enum = {
              "CLASSIFICATION_UNSPECIFIED",
              "CRITICAL",
              "SECURITY",
              "DEFINITION",
              "DRIVER",
              "FEATURE_PACK",
              "SERVICE_PACK",
              "TOOL",
              "UPDATE_ROLLUP",
              "UPDATE",
            },
            enumDescriptions = {
              "Invalid. If classifications are included, they must be specified.",
              "\"A widely released fix for a specific problem that addresses a critical, non-security-related bug.\" [1]",
              "\"A widely released fix for a product-specific, security-related vulnerability. Security vulnerabilities are rated by their severity. The severity rating is indicated in the Microsoft security bulletin as critical, important, moderate, or low.\" [1]",
              "\"A widely released and frequent software update that contains additions to a product's definition database. Definition databases are often used to detect objects that have specific attributes, such as malicious code, phishing websites, or junk mail.\" [1]",
              "\"Software that controls the input and output of a device.\" [1]",
              "\"New product functionality that is first distributed outside the context of a product release and that is typically included in the next full product release.\" [1]",
              "\"A tested, cumulative set of all hotfixes, security updates, critical updates, and updates. Additionally, service packs may contain additional fixes for problems that are found internally since the release of the product. Service packs my also contain a limited number of customer-requested design changes or features.\" [1]",
              "\"A utility or feature that helps complete a task or set of tasks.\" [1]",
              "\"A tested, cumulative set of hotfixes, security updates, critical updates, and updates that are packaged together for easy deployment. A rollup generally targets a specific area, such as security, or a component of a product, such as Internet Information Services (IIS).\" [1]",
              "\"A widely released fix for a specific problem. An update addresses a noncritical, non-security-related bug.\" [1]",
            },
            type = "string",
          },
          type = "array",
        },
        excludes = {
          description = "List of KBs to exclude from update.",
          items = {
            type = "string",
          },
          type = "array",
        },
        exclusivePatches = {
          description = "An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    YumSettings = {
      description = "Yum patching is performed by executing `yum update`. Additional options can be set to control how this is executed. Note that not all settings are supported on all platforms.",
      id = "YumSettings",
      properties = {
        excludes = {
          description = "List of packages to exclude from update. These packages are excluded by using the yum `--exclude` flag.",
          items = {
            type = "string",
          },
          type = "array",
        },
        exclusivePackages = {
          description = "An exclusive list of packages to be updated. These are the only packages that will be updated. If these packages are not installed, they will be ignored. This field must not be specified with any other patch configuration fields.",
          items = {
            type = "string",
          },
          type = "array",
        },
        minimal = {
          description = "Will cause patch to run `yum update-minimal` instead.",
          type = "boolean",
        },
        security = {
          description = "Adds the `--security` flag to `yum update`. Not supported on all platforms.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ZypperSettings = {
      description = "Zypper patching is performed by running `zypper patch`. See also https://en.opensuse.org/SDB:Zypper_manual.",
      id = "ZypperSettings",
      properties = {
        categories = {
          description = "Install only patches with these categories. Common categories include security, recommended, and feature.",
          items = {
            type = "string",
          },
          type = "array",
        },
        excludes = {
          description = "List of patches to exclude from update.",
          items = {
            type = "string",
          },
          type = "array",
        },
        exclusivePatches = {
          description = "An exclusive list of patches to be updated. These are the only patches that will be installed using 'zypper patch patch:' command. This field must not be used with any other patch configuration fields.",
          items = {
            type = "string",
          },
          type = "array",
        },
        severities = {
          description = "Install only patches with these severities. Common severities include critical, important, moderate, and low.",
          items = {
            type = "string",
          },
          type = "array",
        },
        withOptional = {
          description = "Adds the `--with-optional` flag to `zypper patch`.",
          type = "boolean",
        },
        withUpdate = {
          description = "Adds the `--with-update` flag, to `zypper patch`.",
          type = "boolean",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "OS Config API",
  version = "v1",
  version_module = true,
}
