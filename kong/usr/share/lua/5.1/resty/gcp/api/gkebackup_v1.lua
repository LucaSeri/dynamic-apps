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
  baseUrl = "https://gkebackup.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Backup for GKE",
  description = "Backup for GKE is a managed Kubernetes workload backup and restore service for GKE clusters.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "gkebackup:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://gkebackup.mtls.googleapis.com/",
  name = "gkebackup",
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
            deleteOperations = {
              description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
              httpMethod = "DELETE",
              id = "gkebackup.projects.locations.deleteOperations",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be deleted.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}/operations",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "gkebackup.projects.locations.get",
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
              id = "gkebackup.projects.locations.list",
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
            backupPlans = {
              methods = {
                create = {
                  description = "Creates a new BackupPlan in a given location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans",
                  httpMethod = "POST",
                  id = "gkebackup.projects.locations.backupPlans.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    backupPlanId = {
                      description = "Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of BackupPlans in this location",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location within which to create the BackupPlan. Format: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/backupPlans",
                  request = {
                    ["$ref"] = "BackupPlan",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an existing BackupPlan.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}",
                  httpMethod = "DELETE",
                  id = "gkebackup.projects.locations.backupPlans.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    etag = {
                      description = "If provided, this value must match the current value of the target BackupPlan's etag field or the request is rejected.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. Fully qualified BackupPlan name. Format: `projects/*/locations/*/backupPlans/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+$",
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
                get = {
                  description = "Retrieve the details of a single BackupPlan.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}",
                  httpMethod = "GET",
                  id = "gkebackup.projects.locations.backupPlans.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Fully qualified BackupPlan name. Format: `projects/*/locations/*/backupPlans/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "BackupPlan",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "gkebackup.projects.locations.backupPlans.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+$",
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
                  description = "Lists BackupPlans in a given location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans",
                  httpMethod = "GET",
                  id = "gkebackup.projects.locations.backupPlans.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Field match expression used to filter the results.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Field by which to sort the results.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The target number of results to return in a single response. If not specified, a default value will be chosen by the service. Note that the response may inclue a partial list and a caller should only rely on the response's next_page_token to determine if there are more instances left to be queried.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value of next_page_token received from a previous `ListBackupPlans` call. Provide this to retrieve the subsequent page in a multi-page list of results. When paginating, all other parameters provided to `ListBackupPlans` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location that contains the BackupPlans to list. Format: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/backupPlans",
                  response = {
                    ["$ref"] = "ListBackupPlansResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update a BackupPlan.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}",
                  httpMethod = "PATCH",
                  id = "gkebackup.projects.locations.backupPlans.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "This is used to specify the fields to be overwritten in the BackupPlan targeted for update. The values for each of these updated fields will be taken from the `backup_plan` provided with this request. Field names are relative to the root of the resource (e.g., `description`, `backup_config.include_volume_data`, etc.) If no `update_mask` is provided, all fields in `backup_plan` will be written to the target BackupPlan resource. Note that OUTPUT_ONLY and IMMUTABLE fields in `backup_plan` are ignored and are not used to update the target BackupPlan.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "BackupPlan",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "gkebackup.projects.locations.backupPlans.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "gkebackup.projects.locations.backupPlans.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+$",
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
                      description = "Creates a Backup for the given BackupPlan.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups",
                      httpMethod = "POST",
                      id = "gkebackup.projects.locations.backupPlans.backups.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        backupId = {
                          description = "The client-provided short name for the Backup resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Backups in this BackupPlan",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The BackupPlan within which to create the Backup. Format: `projects/*/locations/*/backupPlans/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/backups",
                      request = {
                        ["$ref"] = "Backup",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an existing Backup.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}",
                      httpMethod = "DELETE",
                      id = "gkebackup.projects.locations.backupPlans.backups.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        etag = {
                          description = "If provided, this value must match the current value of the target Backup's etag field or the request is rejected.",
                          location = "query",
                          type = "string",
                        },
                        force = {
                          description = "If set to true, any VolumeBackups below this Backup will also be deleted. Otherwise, the request will only succeed if the Backup has no VolumeBackups.",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. Name of the Backup resource. Format: `projects/*/locations/*/backupPlans/*/backups/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+$",
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
                    get = {
                      description = "Retrieve the details of a single Backup.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}",
                      httpMethod = "GET",
                      id = "gkebackup.projects.locations.backupPlans.backups.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Full name of the Backup resource. Format: `projects/*/locations/*/backupPlans/*/backups/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "gkebackup.projects.locations.backupPlans.backups.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+$",
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
                      description = "Lists the Backups for a given BackupPlan.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups",
                      httpMethod = "GET",
                      id = "gkebackup.projects.locations.backupPlans.backups.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Field match expression used to filter the results.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Field by which to sort the results.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The target number of results to return in a single response. If not specified, a default value will be chosen by the service. Note that the response may inclue a partial list and a caller should only rely on the response's next_page_token to determine if there are more instances left to be queried.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The value of next_page_token received from a previous `ListBackups` call. Provide this to retrieve the subsequent page in a multi-page list of results. When paginating, all other parameters provided to `ListBackups` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The BackupPlan that contains the Backups to list. Format: `projects/*/locations/*/backupPlans/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+$",
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
                    patch = {
                      description = "Update a Backup.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}",
                      httpMethod = "PATCH",
                      id = "gkebackup.projects.locations.backupPlans.backups.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The fully qualified name of the Backup. `projects/*/locations/*/backupPlans/*/backups/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "This is used to specify the fields to be overwritten in the Backup targeted for update. The values for each of these updated fields will be taken from the `backup_plan` provided with this request. Field names are relative to the root of the resource. If no `update_mask` is provided, all fields in `backup` will be written to the target Backup resource. Note that OUTPUT_ONLY and IMMUTABLE fields in `backup` are ignored and are not used to update the target Backup.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Backup",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "gkebackup.projects.locations.backupPlans.backups.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+$",
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
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "gkebackup.projects.locations.backupPlans.backups.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+$",
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
                    volumeBackups = {
                      methods = {
                        get = {
                          description = "Retrieve the details of a single VolumeBackup.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}/volumeBackups/{volumeBackupsId}",
                          httpMethod = "GET",
                          id = "gkebackup.projects.locations.backupPlans.backups.volumeBackups.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Full name of the VolumeBackup resource. Format: `projects/*/locations/*/backupPlans/*/backups/*/volumeBackups/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+/volumeBackups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "VolumeBackup",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getIamPolicy = {
                          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}/volumeBackups/{volumeBackupsId}:getIamPolicy",
                          httpMethod = "GET",
                          id = "gkebackup.projects.locations.backupPlans.backups.volumeBackups.getIamPolicy",
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
                              pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+/volumeBackups/[^/]+$",
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
                          description = "Lists the VolumeBackups for a given Backup.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}/volumeBackups",
                          httpMethod = "GET",
                          id = "gkebackup.projects.locations.backupPlans.backups.volumeBackups.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Field match expression used to filter the results.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Field by which to sort the results.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The target number of results to return in a single response. If not specified, a default value will be chosen by the service. Note that the response may inclue a partial list and a caller should only rely on the response's next_page_token to determine if there are more instances left to be queried.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The value of next_page_token received from a previous `ListVolumeBackups` call. Provide this to retrieve the subsequent page in a multi-page list of results. When paginating, all other parameters provided to `ListVolumeBackups` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The Backup that contains the VolumeBackups to list. Format: `projects/*/locations/*/backupPlans/*/backups/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/volumeBackups",
                          response = {
                            ["$ref"] = "ListVolumeBackupsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        setIamPolicy = {
                          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}/volumeBackups/{volumeBackupsId}:setIamPolicy",
                          httpMethod = "POST",
                          id = "gkebackup.projects.locations.backupPlans.backups.volumeBackups.setIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+/volumeBackups/[^/]+$",
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
                          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/backupPlans/{backupPlansId}/backups/{backupsId}/volumeBackups/{volumeBackupsId}:testIamPermissions",
                          httpMethod = "POST",
                          id = "gkebackup.projects.locations.backupPlans.backups.volumeBackups.testIamPermissions",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/backupPlans/[^/]+/backups/[^/]+/volumeBackups/[^/]+$",
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
                  id = "gkebackup.projects.locations.operations.cancel",
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
                    ["$ref"] = "GoogleLongrunningCancelOperationRequest",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "gkebackup.projects.locations.operations.get",
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
                  id = "gkebackup.projects.locations.operations.list",
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
                    ["$ref"] = "GoogleLongrunningListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            restorePlans = {
              methods = {
                create = {
                  description = "Creates a new RestorePlan in a given location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans",
                  httpMethod = "POST",
                  id = "gkebackup.projects.locations.restorePlans.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The location within which to create the RestorePlan. Format: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    restorePlanId = {
                      description = "Required. The client-provided short name for the RestorePlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of RestorePlans in this location",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/restorePlans",
                  request = {
                    ["$ref"] = "RestorePlan",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an existing RestorePlan.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}",
                  httpMethod = "DELETE",
                  id = "gkebackup.projects.locations.restorePlans.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    etag = {
                      description = "If provided, this value must match the current value of the target RestorePlan's etag field or the request is rejected.",
                      location = "query",
                      type = "string",
                    },
                    force = {
                      description = "If set to true, any Restores below this RestorePlan will also be deleted. Otherwise, the request will only succeed if the RestorePlan has no Restores.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. Fully qualified RestorePlan name. Format: `projects/*/locations/*/restorePlans/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+$",
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
                get = {
                  description = "Retrieve the details of a single RestorePlan.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}",
                  httpMethod = "GET",
                  id = "gkebackup.projects.locations.restorePlans.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Fully qualified RestorePlan name. Format: `projects/*/locations/*/restorePlans/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "RestorePlan",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "gkebackup.projects.locations.restorePlans.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+$",
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
                  description = "Lists RestorePlans in a given location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans",
                  httpMethod = "GET",
                  id = "gkebackup.projects.locations.restorePlans.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Field match expression used to filter the results.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Field by which to sort the results.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The target number of results to return in a single response. If not specified, a default value will be chosen by the service. Note that the response may inclue a partial list and a caller should only rely on the response's next_page_token to determine if there are more instances left to be queried.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value of next_page_token received from a previous `ListRestorePlans` call. Provide this to retrieve the subsequent page in a multi-page list of results. When paginating, all other parameters provided to `ListRestorePlans` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The location that contains the RestorePlans to list. Format: `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/restorePlans",
                  response = {
                    ["$ref"] = "ListRestorePlansResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update a RestorePlan.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}",
                  httpMethod = "PATCH",
                  id = "gkebackup.projects.locations.restorePlans.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The full name of the RestorePlan resource. Format: `projects/*/locations/*/restorePlans/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "This is used to specify the fields to be overwritten in the RestorePlan targeted for update. The values for each of these updated fields will be taken from the `restore_plan` provided with this request. Field names are relative to the root of the resource. If no `update_mask` is provided, all fields in `restore_plan` will be written to the target RestorePlan resource. Note that OUTPUT_ONLY and IMMUTABLE fields in `restore_plan` are ignored and are not used to update the target RestorePlan.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "RestorePlan",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "gkebackup.projects.locations.restorePlans.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+$",
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
                  description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "gkebackup.projects.locations.restorePlans.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+$",
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
                restores = {
                  methods = {
                    create = {
                      description = "Creates a new Restore for the given RestorePlan.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores",
                      httpMethod = "POST",
                      id = "gkebackup.projects.locations.restorePlans.restores.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The RestorePlan within which to create the Restore. Format: `projects/*/locations/*/restorePlans/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        restoreId = {
                          description = "Required. The client-provided short name for the Restore resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Restores in this RestorePlan.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/restores",
                      request = {
                        ["$ref"] = "Restore",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an existing Restore.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}",
                      httpMethod = "DELETE",
                      id = "gkebackup.projects.locations.restorePlans.restores.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        etag = {
                          description = "If provided, this value must match the current value of the target Restore's etag field or the request is rejected.",
                          location = "query",
                          type = "string",
                        },
                        force = {
                          description = "If set to true, any VolumeRestores below this restore will also be deleted. Otherwise, the request will only succeed if the restore has no VolumeRestores.",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. Full name of the Restore Format: `projects/*/locations/*/restorePlans/*/restores/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+$",
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
                    get = {
                      description = "Retrieves the details of a single Restore.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}",
                      httpMethod = "GET",
                      id = "gkebackup.projects.locations.restorePlans.restores.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Restore",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "gkebackup.projects.locations.restorePlans.restores.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+$",
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
                      description = "Lists the Restores for a given RestorePlan.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores",
                      httpMethod = "GET",
                      id = "gkebackup.projects.locations.restorePlans.restores.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Field match expression used to filter the results.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Field by which to sort the results.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The target number of results to return in a single response. If not specified, a default value will be chosen by the service. Note that the response may inclue a partial list and a caller should only rely on the response's next_page_token to determine if there are more instances left to be queried.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The value of next_page_token received from a previous `ListRestores` call. Provide this to retrieve the subsequent page in a multi-page list of results. When paginating, all other parameters provided to `ListRestores` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The RestorePlan that contains the Restores to list. Format: `projects/*/locations/*/restorePlans/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/restores",
                      response = {
                        ["$ref"] = "ListRestoresResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Update a Restore.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}",
                      httpMethod = "PATCH",
                      id = "gkebackup.projects.locations.restorePlans.restores.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "This is used to specify the fields to be overwritten in the Restore targeted for update. The values for each of these updated fields will be taken from the `restore` provided with this request. Field names are relative to the root of the resource. If no `update_mask` is provided, all fields in `restore` will be written to the target Restore resource. Note that OUTPUT_ONLY and IMMUTABLE fields in `restore` are ignored and are not used to update the target Restore.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Restore",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunningOperation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "gkebackup.projects.locations.restorePlans.restores.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+$",
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
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "gkebackup.projects.locations.restorePlans.restores.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+$",
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
                    volumeRestores = {
                      methods = {
                        get = {
                          description = "Retrieve the details of a single VolumeRestore.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}/volumeRestores/{volumeRestoresId}",
                          httpMethod = "GET",
                          id = "gkebackup.projects.locations.restorePlans.restores.volumeRestores.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Full name of the VolumeRestore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*/volumeRestores/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+/volumeRestores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "VolumeRestore",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getIamPolicy = {
                          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}/volumeRestores/{volumeRestoresId}:getIamPolicy",
                          httpMethod = "GET",
                          id = "gkebackup.projects.locations.restorePlans.restores.volumeRestores.getIamPolicy",
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
                              pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+/volumeRestores/[^/]+$",
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
                          description = "Lists the VolumeRestores for a given Restore.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}/volumeRestores",
                          httpMethod = "GET",
                          id = "gkebackup.projects.locations.restorePlans.restores.volumeRestores.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Field match expression used to filter the results.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Field by which to sort the results.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The target number of results to return in a single response. If not specified, a default value will be chosen by the service. Note that the response may inclue a partial list and a caller should only rely on the response's next_page_token to determine if there are more instances left to be queried.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The value of next_page_token received from a previous `ListVolumeRestores` call. Provide this to retrieve the subsequent page in a multi-page list of results. When paginating, all other parameters provided to `ListVolumeRestores` must match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The Restore that contains the VolumeRestores to list. Format: `projects/*/locations/*/restorePlans/*/restores/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/volumeRestores",
                          response = {
                            ["$ref"] = "ListVolumeRestoresResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        setIamPolicy = {
                          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}/volumeRestores/{volumeRestoresId}:setIamPolicy",
                          httpMethod = "POST",
                          id = "gkebackup.projects.locations.restorePlans.restores.volumeRestores.setIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+/volumeRestores/[^/]+$",
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
                          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/restorePlans/{restorePlansId}/restores/{restoresId}/volumeRestores/{volumeRestoresId}:testIamPermissions",
                          httpMethod = "POST",
                          id = "gkebackup.projects.locations.restorePlans.restores.volumeRestores.testIamPermissions",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/restorePlans/[^/]+/restores/[^/]+/volumeRestores/[^/]+$",
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
  rootUrl = "https://gkebackup.googleapis.com/",
  schemas = {
    AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
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
          description = "Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.",
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
    Backup = {
      description = "Represents a request to perform a single point-in-time capture of some portion of the state of a GKE cluster, the record of the backup operation itself, and an anchor for the underlying artifacts that comprise the Backup (the config backup and VolumeBackups). Next id: 28",
      id = "Backup",
      properties = {
        allNamespaces = {
          description = "Output only. If True, all namespaces were included in the Backup.",
          readOnly = true,
          type = "boolean",
        },
        clusterMetadata = {
          ["$ref"] = "ClusterMetadata",
          description = "Output only. Information about the GKE cluster from which this Backup was created.",
          readOnly = true,
        },
        completeTime = {
          description = "Output only. Completion time of the Backup",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        configBackupSizeBytes = {
          description = "Output only. The size of the config backup in bytes.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        containsSecrets = {
          description = "Output only. Whether or not the Backup contains Kubernetes Secrets. Controlled by the parent BackupPlan's include_secrets value.",
          readOnly = true,
          type = "boolean",
        },
        containsVolumeData = {
          description = "Output only. Whether or not the Backup contains volume data. Controlled by the parent BackupPlan's include_volume_data value.",
          readOnly = true,
          type = "boolean",
        },
        createTime = {
          description = "Output only. The timestamp when this Backup resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteLockDays = {
          description = "Minimum age for this Backup (in days). If this field is set to a non-zero value, the Backup will be \"locked\" against deletion (either manual or automatic deletion) for the number of days provided (measured from the creation time of the Backup). MUST be an integer value between 0-90 (inclusive). Defaults to parent BackupPlan's backup_delete_lock_days setting and may only be increased (either at creation time or in a subsequent update).",
          format = "int32",
          type = "integer",
        },
        deleteLockExpireTime = {
          description = "Output only. The time at which an existing delete lock will expire for this backup (calculated from create_time + delete_lock_days).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "User specified descriptive string for this Backup.",
          type = "string",
        },
        encryptionKey = {
          ["$ref"] = "EncryptionKey",
          description = "Output only. The customer managed encryption key that was used to encrypt the Backup's artifacts. Inherited from the parent BackupPlan's encryption_key value.",
          readOnly = true,
        },
        etag = {
          description = "Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform backup updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackup`, and systems are expected to put that etag in the request to `UpdateBackup` or `DeleteBackup` to ensure that their change will be applied to the same version of the resource.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of custom labels supplied by user.",
          type = "object",
        },
        manual = {
          description = "Output only. This flag indicates whether this Backup resource was created manually by a user or via a schedule in the BackupPlan. A value of True means that the Backup was created manually.",
          readOnly = true,
          type = "boolean",
        },
        name = {
          description = "Output only. The fully qualified name of the Backup. `projects/*/locations/*/backupPlans/*/backups/*`",
          readOnly = true,
          type = "string",
        },
        podCount = {
          description = "Output only. The total number of Kubernetes Pods contained in the Backup.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        resourceCount = {
          description = "Output only. The total number of Kubernetes resources included in the Backup.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        retainDays = {
          description = "The age (in days) after which this Backup will be automatically deleted. Must be an integer value >= 0: - If 0, no automatic deletion will occur for this Backup. - If not 0, this must be >= delete_lock_days and <= 365. Once a Backup is created, this value may only be increased. Defaults to the parent BackupPlan's backup_retain_days value.",
          format = "int32",
          type = "integer",
        },
        retainExpireTime = {
          description = "Output only. The time at which this Backup will be automatically deleted (calculated from create_time + retain_days).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        selectedApplications = {
          ["$ref"] = "NamespacedNames",
          description = "Output only. If set, the list of ProtectedApplications whose resources were included in the Backup.",
          readOnly = true,
        },
        selectedNamespaces = {
          ["$ref"] = "Namespaces",
          description = "Output only. If set, the list of namespaces that were included in the Backup.",
          readOnly = true,
        },
        sizeBytes = {
          description = "Output only. The total size of the Backup in bytes = config backup size + sum(volume backup sizes)",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Current state of the Backup",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "IN_PROGRESS",
            "SUCCEEDED",
            "FAILED",
            "DELETING",
          },
          enumDescriptions = {
            "The Backup resource is in the process of being created.",
            "The Backup resource has been created and the associated BackupJob Kubernetes resource has been injected into the source cluster.",
            "The gkebackup agent in the cluster has begun executing the backup operation.",
            "The backup operation has completed successfully.",
            "The backup operation has failed.",
            "This Backup resource (and its associated artifacts) is in the process of being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        stateReason = {
          description = "Output only. Human-readable description of why the backup is in the current `state`.",
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. Server generated global unique identifier of [UUID4](https://en.wikipedia.org/wiki/Universally_unique_identifier)",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when this Backup resource was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        volumeCount = {
          description = "Output only. The total number of volume backups contained in the Backup.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    BackupConfig = {
      description = "BackupConfig defines the configuration of Backups created via this BackupPlan.",
      id = "BackupConfig",
      properties = {
        allNamespaces = {
          description = "If True, include all namespaced resources",
          type = "boolean",
        },
        encryptionKey = {
          ["$ref"] = "EncryptionKey",
          description = "This defines a customer managed encryption key that will be used to encrypt the \"config\" portion (the Kubernetes resources) of Backups created via this plan. Default (empty): Config backup artifacts will not be encrypted.",
        },
        includeSecrets = {
          description = "This flag specifies whether Kubernetes Secret resources should be included when they fall into the scope of Backups. Default: False",
          type = "boolean",
        },
        includeVolumeData = {
          description = "This flag specifies whether volume data should be backed up when PVCs are included in the scope of a Backup. Default: False",
          type = "boolean",
        },
        selectedApplications = {
          ["$ref"] = "NamespacedNames",
          description = "If set, include just the resources referenced by the listed ProtectedApplications.",
        },
        selectedNamespaces = {
          ["$ref"] = "Namespaces",
          description = "If set, include just the resources in the listed namespaces.",
        },
      },
      type = "object",
    },
    BackupPlan = {
      description = "Defines the configuration and scheduling for a \"line\" of Backups.",
      id = "BackupPlan",
      properties = {
        backupConfig = {
          ["$ref"] = "BackupConfig",
          description = "Defines the configuration of Backups created via this BackupPlan.",
        },
        backupSchedule = {
          ["$ref"] = "Schedule",
          description = "Defines a schedule for automatic Backup creation via this BackupPlan.",
        },
        cluster = {
          description = "Required. Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`",
          type = "string",
        },
        createTime = {
          description = "Output only. The timestamp when this BackupPlan resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deactivated = {
          description = "This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False",
          type = "boolean",
        },
        description = {
          description = "User specified descriptive string for this BackupPlan.",
          type = "string",
        },
        etag = {
          description = "Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup plan from overwriting each other. It is strongly suggested that systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackupPlan`, and systems are expected to put that etag in the request to `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change will be applied to the same version of the resource.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of custom labels supplied by user.",
          type = "object",
        },
        name = {
          description = "Output only. The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*`",
          readOnly = true,
          type = "string",
        },
        protectedPodCount = {
          description = "Output only. The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        retentionPolicy = {
          ["$ref"] = "RetentionPolicy",
          description = "RetentionPolicy governs lifecycle of Backups created under this plan.",
        },
        uid = {
          description = "Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when this BackupPlan resource was last updated.",
          format = "google-datetime",
          readOnly = true,
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
    ClusterMetadata = {
      description = "Information about the GKE cluster from which this Backup was created.",
      id = "ClusterMetadata",
      properties = {
        anthosVersion = {
          description = "Anthos version",
          type = "string",
        },
        backupCrdVersions = {
          additionalProperties = {
            type = "string",
          },
          description = "A list of the Backup for GKE CRD versions found in the cluster.",
          type = "object",
        },
        cluster = {
          description = "The source cluster from which this Backup was created. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` This is inherited from the parent BackupPlan's cluster field.",
          type = "string",
        },
        gkeVersion = {
          description = "GKE version",
          type = "string",
        },
        k8sVersion = {
          description = "The Kubernetes server version of the source cluster.",
          type = "string",
        },
      },
      type = "object",
    },
    ClusterResourceRestoreScope = {
      description = "Identifies the cluster-scoped resources to restore from the Backup.",
      id = "ClusterResourceRestoreScope",
      properties = {
        selectedGroupKinds = {
          description = "A list of \"types\" of cluster-scoped resources to be restored from the Backup. An empty list means that NO cluster-scoped resources will be restored. Note that Namespaces and PersistentVolume restoration is handled separately and is not governed by this field.",
          items = {
            ["$ref"] = "GroupKind",
          },
          type = "array",
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
    EncryptionKey = {
      description = "Defined a customer managed encryption key that will be used to encrypt Backup artifacts.",
      id = "EncryptionKey",
      properties = {
        gcpKmsEncryptionKey = {
          description = "Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`",
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
    GoogleLongrunningCancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "GoogleLongrunningCancelOperationRequest",
      properties = {},
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
    GroupKind = {
      description = "This is a direct map to the Kubernetes GroupKind type [GroupKind](https://godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind) and is used for identifying specific \"types\" of resources to restore.",
      id = "GroupKind",
      properties = {
        resourceGroup = {
          description = "API group string of a Kubernetes resource, e.g. \"apiextensions.k8s.io\", \"storage.k8s.io\", etc. Note: use empty string for core API group",
          type = "string",
        },
        resourceKind = {
          description = "Kind of a Kubernetes resource, e.g. \"CustomResourceDefinition\", \"StorageClass\", etc.",
          type = "string",
        },
      },
      type = "object",
    },
    ListBackupPlansResponse = {
      description = "Response message for ListBackupPlans.",
      id = "ListBackupPlansResponse",
      properties = {
        backupPlans = {
          description = "The list of BackupPlans matching the given criteria.",
          items = {
            ["$ref"] = "BackupPlan",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token which may be sent as page_token in a subsequent `ListBackupPlans` call to retrieve the next page of results. If this field is omitted or empty, then there are no more results to return.",
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
    ListBackupsResponse = {
      description = "Response message for ListBackups.",
      id = "ListBackupsResponse",
      properties = {
        backups = {
          description = "The list of Backups matching the given criteria.",
          items = {
            ["$ref"] = "Backup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token which may be sent as page_token in a subsequent `ListBackups` call to retrieve the next page of results. If this field is omitted or empty, then there are no more results to return.",
          type = "string",
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
    ListRestorePlansResponse = {
      description = "Response message for ListRestorePlans.",
      id = "ListRestorePlansResponse",
      properties = {
        nextPageToken = {
          description = "A token which may be sent as page_token in a subsequent `ListRestorePlans` call to retrieve the next page of results. If this field is omitted or empty, then there are no more results to return.",
          type = "string",
        },
        restorePlans = {
          description = "The list of RestorePlans matching the given criteria.",
          items = {
            ["$ref"] = "RestorePlan",
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
    ListRestoresResponse = {
      description = "Response message for ListRestores.",
      id = "ListRestoresResponse",
      properties = {
        nextPageToken = {
          description = "A token which may be sent as page_token in a subsequent `ListRestores` call to retrieve the next page of results. If this field is omitted or empty, then there are no more results to return.",
          type = "string",
        },
        restores = {
          description = "The list of Restores matching the given criteria.",
          items = {
            ["$ref"] = "Restore",
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
    ListVolumeBackupsResponse = {
      description = "Response message for ListVolumeBackups.",
      id = "ListVolumeBackupsResponse",
      properties = {
        nextPageToken = {
          description = "A token which may be sent as page_token in a subsequent `ListVolumeBackups` call to retrieve the next page of results. If this field is omitted or empty, then there are no more results to return.",
          type = "string",
        },
        volumeBackups = {
          description = "The list of VolumeBackups matching the given criteria.",
          items = {
            ["$ref"] = "VolumeBackup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVolumeRestoresResponse = {
      description = "Response message for ListVolumeRestores.",
      id = "ListVolumeRestoresResponse",
      properties = {
        nextPageToken = {
          description = "A token which may be sent as page_token in a subsequent `ListVolumeRestores` call to retrieve the next page of results. If this field is omitted or empty, then there are no more results to return.",
          type = "string",
        },
        volumeRestores = {
          description = "The list of VolumeRestores matching the given criteria.",
          items = {
            ["$ref"] = "VolumeRestore",
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
    NamespacedName = {
      description = "A reference to a namespaced resource in Kubernetes.",
      id = "NamespacedName",
      properties = {
        name = {
          description = "The name of the Kubernetes resource.",
          type = "string",
        },
        namespace = {
          description = "The Namespace of the Kubernetes resource.",
          type = "string",
        },
      },
      type = "object",
    },
    NamespacedNames = {
      description = "A list of namespaced Kubernetes resources.",
      id = "NamespacedNames",
      properties = {
        namespacedNames = {
          description = "A list of namespaced Kubernetes resources.",
          items = {
            ["$ref"] = "NamespacedName",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Namespaces = {
      description = "A list of Kubernetes Namespaces",
      id = "Namespaces",
      properties = {
        namespaces = {
          description = "A list of Kubernetes Namespaces",
          items = {
            type = "string",
          },
          type = "array",
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
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
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
    Restore = {
      description = "Represents both a request to Restore some portion of a Backup into a target GKE cluster and a record of the restore operation itself. Next id: 18",
      id = "Restore",
      properties = {
        backup = {
          description = "Required. Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.",
          type = "string",
        },
        cluster = {
          description = "Output only. The target cluster into which this Restore will restore data. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` Inherited from parent RestorePlan's cluster value.",
          readOnly = true,
          type = "string",
        },
        completeTime = {
          description = "Output only. Timestamp of when the restore operation completed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The timestamp when this Restore resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "User specified descriptive string for this Restore.",
          type = "string",
        },
        etag = {
          description = "Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestore`, and systems are expected to put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure that their change will be applied to the same version of the resource.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of custom labels supplied by user.",
          type = "object",
        },
        name = {
          description = "Output only. The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`",
          readOnly = true,
          type = "string",
        },
        resourcesExcludedCount = {
          description = "Output only. Number of resources excluded during the restore execution.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        resourcesFailedCount = {
          description = "Output only. Number of resources that failed to be restored during the restore execution.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        resourcesRestoredCount = {
          description = "Output only. Number of resources restored during the restore execution.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        restoreConfig = {
          ["$ref"] = "RestoreConfig",
          description = "Output only. Configuration of the Restore. Inherited from parent RestorePlan's restore_config.",
          readOnly = true,
        },
        state = {
          description = "Output only. The current state of the Restore.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "IN_PROGRESS",
            "SUCCEEDED",
            "FAILED",
            "DELETING",
          },
          enumDescriptions = {
            "The Restore resource is in the process of being created.",
            "The Restore resource has been created and the associated RestoreJob Kubernetes resource has been injected into target cluster.",
            "The gkebackup agent in the cluster has begun executing the restore operation.",
            "The restore operation has completed successfully. Restored workloads may not yet be operational.",
            "The restore operation has failed.",
            "This Restore resource is in the process of being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        stateReason = {
          description = "Output only. Human-readable description of why the Restore is in its current state.",
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when this Restore resource was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        volumesRestoredCount = {
          description = "Output only. Number of volumes restored during the restore execution.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    RestoreConfig = {
      description = "Configuration of a restore. Next id: 9",
      id = "RestoreConfig",
      properties = {
        allNamespaces = {
          description = "Restore all namespaced resources in the Backup if set to \"True\". Specifying this field to \"False\" is an error.",
          type = "boolean",
        },
        clusterResourceConflictPolicy = {
          description = "Defines the behavior for handling the situation where cluster-scoped resources being restored already exist in the target cluster. This MUST be set to a value other than CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if cluster_resource_restore_scope is not empty.",
          enum = {
            "CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED",
            "USE_EXISTING_VERSION",
            "USE_BACKUP_VERSION",
          },
          enumDescriptions = {
            "Unspecified. Only allowed if no cluster-scoped resources will be restored.",
            "Do not attempt to restore the conflicting resource.",
            "Delete the existing version before re-creating it from the Backup. Note that this is a dangerous option which could cause unintentional data loss if used inappropriately - for example, deleting a CRD will cause Kubernetes to delete all CRs of that type.",
          },
          type = "string",
        },
        clusterResourceRestoreScope = {
          ["$ref"] = "ClusterResourceRestoreScope",
          description = "Identifies the cluster-scoped resources to restore from the Backup. Not specifying it means NO cluster resource will be restored.",
        },
        namespacedResourceRestoreMode = {
          description = "Defines the behavior for handling the situation where sets of namespaced resources being restored already exist in the target cluster. This MUST be set to a value other than NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.",
          enum = {
            "NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED",
            "DELETE_AND_RESTORE",
            "FAIL_ON_CONFLICT",
          },
          enumDescriptions = {
            "Unspecified (invalid).",
            "When conflicting top-level resources (either Namespaces or ProtectedApplications, depending upon the scope) are encountered, this will first trigger a delete of the conflicting resource AND ALL OF ITS REFERENCED RESOURCES (e.g., all resources in the Namespace or all resources referenced by the ProtectedApplication) before restoring the resources from the Backup. This mode should only be used when you are intending to revert some portion of a cluster to an earlier state.",
            "If conflicting top-level resources (either Namespaces or ProtectedApplications, depending upon the scope) are encountered at the beginning of a restore process, the Restore will fail. If a conflict occurs during the restore process itself (e.g., because an out of band process creates conflicting resources), a conflict will be reported.",
          },
          type = "string",
        },
        selectedApplications = {
          ["$ref"] = "NamespacedNames",
          description = "A list of selected ProtectedApplications to restore. The listed ProtectedApplications and all the resources to which they refer will be restored.",
        },
        selectedNamespaces = {
          ["$ref"] = "Namespaces",
          description = "A list of selected Namespaces to restore from the Backup. The listed Namespaces and all resources contained in them will be restored.",
        },
        substitutionRules = {
          description = "A list of transformation rules to be applied against Kubernetes resources as they are selected for restoration from a Backup. Rules are executed in order defined - this order matters, as changes made by a rule may impact the filtering logic of subsequent rules. An empty list means no substitution will occur.",
          items = {
            ["$ref"] = "SubstitutionRule",
          },
          type = "array",
        },
        volumeDataRestorePolicy = {
          description = "Specifies the mechanism to be used to restore volume data. Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as NO_VOLUME_DATA_RESTORATION).",
          enum = {
            "VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED",
            "RESTORE_VOLUME_DATA_FROM_BACKUP",
            "REUSE_VOLUME_HANDLE_FROM_BACKUP",
            "NO_VOLUME_DATA_RESTORATION",
          },
          enumDescriptions = {
            "Unspecified (illegal).",
            "For each PVC to be restored, will create a new underlying volume (and PV) from the corresponding VolumeBackup contained within the Backup.",
            "For each PVC to be restored, attempt to reuse the original PV contained in the Backup (with its original underlying volume). Note that option is likely only usable when restoring a workload to its original cluster.",
            "For each PVC to be restored, PVCs will be created without any particular action to restore data. In this case, the normal Kubernetes provisioning logic would kick in, and this would likely result in either dynamically provisioning blank PVs or binding to statically provisioned PVs.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RestorePlan = {
      description = "The configuration of a potential series of Restore operations to be performed against Backups belong to a particular BackupPlan. Next id: 11",
      id = "RestorePlan",
      properties = {
        backupPlan = {
          description = "Required. Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.",
          type = "string",
        },
        cluster = {
          description = "Required. Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`",
          type = "string",
        },
        createTime = {
          description = "Output only. The timestamp when this RestorePlan resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "User specified descriptive string for this RestorePlan.",
          type = "string",
        },
        etag = {
          description = "Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestorePlan`, and systems are expected to put that etag in the request to `UpdateRestorePlan` or `DeleteRestorePlan` to ensure that their change will be applied to the same version of the resource.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of custom labels supplied by user.",
          type = "object",
        },
        name = {
          description = "Output only. The full name of the RestorePlan resource. Format: `projects/*/locations/*/restorePlans/*`.",
          readOnly = true,
          type = "string",
        },
        restoreConfig = {
          ["$ref"] = "RestoreConfig",
          description = "Required. Configuration of Restores created via this RestorePlan.",
        },
        uid = {
          description = "Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when this RestorePlan resource was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    RetentionPolicy = {
      description = "RetentionPolicy defines a Backup retention policy for a BackupPlan.",
      id = "RetentionPolicy",
      properties = {
        backupDeleteLockDays = {
          description = "Minimum age for Backups created via this BackupPlan (in days). This field MUST be an integer value between 0-90 (inclusive). A Backup created under this BackupPlan will NOT be deletable until it reaches Backup's (create_time + backup_delete_lock_days). Updating this field of a BackupPlan does NOT affect existing Backups under it. Backups created AFTER a successful update will inherit the new value. Default: 0 (no delete blocking)",
          format = "int32",
          type = "integer",
        },
        backupRetainDays = {
          description = "The default maximum age of a Backup created via this BackupPlan. This field MUST be an integer value >= 0 and <= 365. If specified, a Backup created under this BackupPlan will be automatically deleted after its age reaches (create_time + backup_retain_days). If not specified, Backups created under this BackupPlan will NOT be subject to automatic deletion. Updating this field does NOT affect existing Backups under it. Backups created AFTER a successful update will automatically pick up the new value. NOTE: backup_retain_days must be >= backup_delete_lock_days. If cron_schedule is defined, then this must be <= 360 * the creation interval. Default: 0 (no automatic deletion)",
          format = "int32",
          type = "integer",
        },
        locked = {
          description = "This flag denotes whether the retention policy of this BackupPlan is locked. If set to True, no further update is allowed on this policy, including the `locked` field itself. Default: False",
          type = "boolean",
        },
      },
      type = "object",
    },
    Schedule = {
      description = "Schedule defines scheduling parameters for automatically creating Backups via this BackupPlan.",
      id = "Schedule",
      properties = {
        cronSchedule = {
          description = "A standard [cron](https://wikipedia.com/wiki/cron) string that defines a repeating schedule for creating Backups via this BackupPlan. If this is defined, then backup_retain_days must also be defined. Default (empty): no automatic backup creation will occur.",
          type = "string",
        },
        paused = {
          description = "This flag denotes whether automatic Backup creation is paused for this BackupPlan. Default: False",
          type = "boolean",
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
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: \"bindings, etag\"`",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    SubstitutionRule = {
      description = "A transformation rule to be applied against Kubernetes resources as they are selected for restoration from a Backup. A rule contains both filtering logic (which resources are subject to substitution) and substitution logic.",
      id = "SubstitutionRule",
      properties = {
        newValue = {
          description = "This is the new value to set for any fields that pass the filtering and selection criteria. To remove a value from a Kubernetes resource, either leave this field unspecified, or set it to the empty string (\"\").",
          type = "string",
        },
        originalValuePattern = {
          description = "(Filtering parameter) This is a [regular expression] (https://en.wikipedia.org/wiki/Regular_expression) that is compared against the fields matched by the target_json_path expression (and must also have passed the previous filters). Substitution will not be performed against fields whose value does not match this expression. If this field is NOT specified, then ALL fields matched by the target_json_path expression will undergo substitution. Note that an empty (e.g., \"\", rather than unspecified) value for for this field will only match empty fields.",
          type = "string",
        },
        targetGroupKinds = {
          description = "(Filtering parameter) Any resource subject to substitution must belong to one of the listed \"types\". If this field is not provided, no type filtering will be performed (all resources of all types matching previous filtering parameters will be candidates for substitution).",
          items = {
            ["$ref"] = "GroupKind",
          },
          type = "array",
        },
        targetJsonPath = {
          description = "Required. This is a [JSONPath] (https://kubernetes.io/docs/reference/kubectl/jsonpath/) expression that matches specific fields of candidate resources and it operates as both a filtering parameter (resources that are not matched with this expression will not be candidates for substitution) as well as a field identifier (identifies exactly which fields out of the candidate resources will be modified).",
          type = "string",
        },
        targetNamespaces = {
          description = "(Filtering parameter) Any resource subject to substitution must be contained within one of the listed Kubernetes Namespace in the Backup. If this field is not provided, no namespace filtering will be performed (all resources in all Namespaces, including all cluster-scoped resources, will be candidates for substitution). To mix cluster-scoped and namespaced resources in the same rule, use an empty string (\"\") as one of the target namespaces.",
          items = {
            type = "string",
          },
          type = "array",
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
    VolumeBackup = {
      description = "Represents the backup of a specific persistent volume as a component of a Backup - both the record of the operation and a pointer to the underlying storage-specific artifacts. Next id: 14",
      id = "VolumeBackup",
      properties = {
        completeTime = {
          description = "Output only. The timestamp when the associated underlying volume backup operation completed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The timestamp when this VolumeBackup resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        diskSizeBytes = {
          description = "Output only. The minimum size of the disk to which this VolumeBackup can be restored.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a volume backup from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform volume backup updates in order to avoid race conditions.",
          readOnly = true,
          type = "string",
        },
        format = {
          description = "Output only. The format used for the volume backup.",
          enum = {
            "VOLUME_BACKUP_FORMAT_UNSPECIFIED",
            "GCE_PERSISTENT_DISK",
          },
          enumDescriptions = {
            "Default value, not specified.",
            "Compute Engine Persistent Disk snapshot based volume backup.",
          },
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The full name of the VolumeBackup resource. Format: `projects/*/locations/*/backupPlans/*/backups/*/volumeBackups/*`.",
          readOnly = true,
          type = "string",
        },
        sourcePvc = {
          ["$ref"] = "NamespacedName",
          description = "Output only. A reference to the source Kubernetes PVC from which this VolumeBackup was created.",
          readOnly = true,
        },
        state = {
          description = "Output only. The current state of this VolumeBackup.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "SNAPSHOTTING",
            "UPLOADING",
            "SUCCEEDED",
            "FAILED",
            "DELETING",
          },
          enumDescriptions = {
            "This is an illegal state and should not be encountered.",
            "A volume for the backup was identified and backup process is about to start.",
            "The volume backup operation has begun and is in the initial \"snapshot\" phase of the process. Any defined ProtectedApplication \"pre\" hooks will be executed before entering this state and \"post\" hooks will be executed upon leaving this state.",
            "The snapshot phase of the volume backup operation has completed and the snapshot is now being uploaded to backup storage.",
            "The volume backup operation has completed successfully.",
            "The volume backup operation has failed.",
            "This VolumeBackup resource (and its associated artifacts) is in the process of being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        stateMessage = {
          description = "Output only. A human readable message explaining why the VolumeBackup is in its current state.",
          readOnly = true,
          type = "string",
        },
        storageBytes = {
          description = "Output only. The aggregate size of the underlying artifacts associated with this VolumeBackup in the backup storage. This may change over time when multiple backups of the same volume share the same backup storage location. In particular, this is likely to increase in size when the immediately preceding backup of the same volume is deleted.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when this VolumeBackup resource was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        volumeBackupHandle = {
          description = "Output only. A storage system-specific opaque handle to the underlying volume backup.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    VolumeRestore = {
      description = "Represents the operation of restoring a volume from a VolumeBackup. Next id: 13",
      id = "VolumeRestore",
      properties = {
        completeTime = {
          description = "Output only. The timestamp when the associated underlying volume restoration completed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The timestamp when this VolumeRestore resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a volume restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform volume restore updates in order to avoid race conditions.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Full name of the VolumeRestore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*/volumeRestores/*`",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of this VolumeRestore.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "RESTORING",
            "SUCCEEDED",
            "FAILED",
            "DELETING",
          },
          enumDescriptions = {
            "This is an illegal state and should not be encountered.",
            "A volume for the restore was identified and restore process is about to start.",
            "The volume is currently being restored.",
            "The volume has been successfully restored.",
            "The volume restoration process failed.",
            "This VolumeRestore resource is in the process of being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        stateMessage = {
          description = "Output only. A human readable message explaining why the VolumeRestore is in its current state.",
          readOnly = true,
          type = "string",
        },
        targetPvc = {
          ["$ref"] = "NamespacedName",
          description = "Output only. The reference to the target Kubernetes PVC to be restored.",
          readOnly = true,
        },
        uid = {
          description = "Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp when this VolumeRestore resource was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        volumeBackup = {
          description = "Output only. The full name of the VolumeBackup from which the volume will be restored. Format: `projects/*/locations/*/backupPlans/*/backups/*/volumeBackups/*`.",
          readOnly = true,
          type = "string",
        },
        volumeHandle = {
          description = "Output only. A storage system-specific opaque handler to the underlying volume created for the target PVC from the volume backup.",
          readOnly = true,
          type = "string",
        },
        volumeType = {
          description = "Output only. The type of volume provisioned",
          enum = {
            "VOLUME_TYPE_UNSPECIFIED",
            "GCE_PERSISTENT_DISK",
          },
          enumDescriptions = {
            "Default",
            "Compute Engine Persistent Disk volume",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Backup for GKE API",
  version = "v1",
  version_module = true,
}
