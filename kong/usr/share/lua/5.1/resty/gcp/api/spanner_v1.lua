return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/spanner.admin"] = {
          description = "Administer your Spanner databases",
        },
        ["https://www.googleapis.com/auth/spanner.data"] = {
          description = "View and manage the contents of your Spanner databases",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://spanner.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Spanner",
  description = "Cloud Spanner is a managed, mission-critical, globally consistent and scalable relational database service.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/spanner/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "spanner:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://spanner.mtls.googleapis.com/",
  name = "spanner",
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
        instanceConfigOperations = {
          methods = {
            list = {
              description = "Lists the user-managed instance config long-running operations in the given project. An instance config operation has a name of the form `projects//instanceConfigs//operations/`. The long-running operation metadata field type `metadata.type_url` describes the type of the metadata. Operations returned include those that have completed/failed/canceled within the last 7 days, and pending operations. Operations returned are ordered by `operation.metadata.value.start_time` in descending order starting from the most recently started operation.",
              flatPath = "v1/projects/{projectsId}/instanceConfigOperations",
              httpMethod = "GET",
              id = "spanner.projects.instanceConfigOperations.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "An expression that filters the list of returned operations. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`. Colon `:` is the contains operator. Filter rules are not case sensitive. The following fields in the Operation are eligible for filtering: * `name` - The name of the long-running operation * `done` - False if the operation is in progress, else true. * `metadata.@type` - the type of metadata. For example, the type string for CreateInstanceConfigMetadata is `type.googleapis.com/google.spanner.admin.instance.v1.CreateInstanceConfigMetadata`. * `metadata.` - any field in metadata.value. `metadata.@type` must be specified first, if filtering on metadata fields. * `error` - Error associated with the long-running operation. * `response.@type` - the type of response. * `response.` - any field in response.value. You can combine multiple expressions by enclosing each expression in parentheses. By default, expressions are combined with AND logic. However, you can specify AND, OR, and NOT logic explicitly. Here are a few examples: * `done:true` - The operation is complete. * `(metadata.@type=` \\ `type.googleapis.com/google.spanner.admin.instance.v1.CreateInstanceConfigMetadata) AND` \\ `(metadata.instance_config.name:custom-config) AND` \\ `(metadata.progress.start_time < \\\"2021-03-28T14:50:00Z\\\") AND` \\ `(error:*)` - Return operations where: * The operation's metadata type is CreateInstanceConfigMetadata. * The instance config name contains \"custom-config\". * The operation started before 2021-03-28T14:50:00Z. * The operation resulted in an error.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Number of operations to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If non-empty, `page_token` should contain a next_page_token from a previous ListInstanceConfigOperationsResponse to the same `parent` and with the same `filter`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The project of the instance config operations. Values are of the form `projects/`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/instanceConfigOperations",
              response = {
                ["$ref"] = "ListInstanceConfigOperationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
          },
        },
        instanceConfigs = {
          methods = {
            create = {
              description = "Creates an instance config and begins preparing it to be used. The returned long-running operation can be used to track the progress of preparing the new instance config. The instance config name is assigned by the caller. If the named instance config already exists, `CreateInstanceConfig` returns `ALREADY_EXISTS`. Immediately after the request returns: * The instance config is readable via the API, with all requested attributes. The instance config's reconciling field is set to true. Its state is `CREATING`. While the operation is pending: * Cancelling the operation renders the instance config immediately unreadable via the API. * Except for deleting the creating resource, all other attempts to modify the instance config are rejected. Upon completion of the returned operation: * Instances can be created using the instance configuration. * The instance config's reconciling field becomes false. Its state becomes `READY`. The returned long-running operation will have a name of the format `/operations/` and can be used to track creation of the instance config. The metadata field type is CreateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires `spanner.instanceConfigs.create` permission on the resource parent.",
              flatPath = "v1/projects/{projectsId}/instanceConfigs",
              httpMethod = "POST",
              id = "spanner.projects.instanceConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in which to create the instance config. Values are of the form `projects/`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/instanceConfigs",
              request = {
                ["$ref"] = "CreateInstanceConfigRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            delete = {
              description = "Deletes the instance config. Deletion is only allowed when no instances are using the configuration. If any instances are using the config, returns `FAILED_PRECONDITION`. Only user managed configurations can be deleted. Authorization requires `spanner.instanceConfigs.delete` permission on the resource name.",
              flatPath = "v1/projects/{projectsId}/instanceConfigs/{instanceConfigsId}",
              httpMethod = "DELETE",
              id = "spanner.projects.instanceConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                etag = {
                  description = "Used for optimistic concurrency control as a way to help prevent simultaneous deletes of an instance config from overwriting each other. If not empty, the API only deletes the instance config when the etag provided matches the current status of the requested instance config. Otherwise, deletes the instance config without checking the current status of the requested instance config.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The name of the instance configuration to be deleted. Values are of the form `projects//instanceConfigs/`",
                  location = "path",
                  pattern = "^projects/[^/]+/instanceConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "An option to validate, but not actually execute, a request, and provide the same response.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            get = {
              description = "Gets information about a particular instance configuration.",
              flatPath = "v1/projects/{projectsId}/instanceConfigs/{instanceConfigsId}",
              httpMethod = "GET",
              id = "spanner.projects.instanceConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the requested instance configuration. Values are of the form `projects//instanceConfigs/`.",
                  location = "path",
                  pattern = "^projects/[^/]+/instanceConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "InstanceConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            list = {
              description = "Lists the supported instance configurations for a given project.",
              flatPath = "v1/projects/{projectsId}/instanceConfigs",
              httpMethod = "GET",
              id = "spanner.projects.instanceConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Number of instance configurations to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If non-empty, `page_token` should contain a next_page_token from a previous ListInstanceConfigsResponse.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project for which a list of supported instance configurations is requested. Values are of the form `projects/`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/instanceConfigs",
              response = {
                ["$ref"] = "ListInstanceConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            patch = {
              description = "Updates an instance config. The returned long-running operation can be used to track the progress of updating the instance. If the named instance config does not exist, returns `NOT_FOUND`. Only user managed configurations can be updated. Immediately after the request returns: * The instance config's reconciling field is set to true. While the operation is pending: * Cancelling the operation sets its metadata's cancel_time. The operation is guaranteed to succeed at undoing all changes, after which point it terminates with a `CANCELLED` status. * All other attempts to modify the instance config are rejected. * Reading the instance config via the API continues to give the pre-request values. Upon completion of the returned operation: * Creating instances using the instance configuration uses the new values. * The instance config's new values are readable via the API. * The instance config's reconciling field becomes false. The returned long-running operation will have a name of the format `/operations/` and can be used to track the instance config modification. The metadata field type is UpdateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires `spanner.instanceConfigs.update` permission on the resource name.",
              flatPath = "v1/projects/{projectsId}/instanceConfigs/{instanceConfigsId}",
              httpMethod = "PATCH",
              id = "spanner.projects.instanceConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "A unique identifier for the instance configuration. Values are of the form `projects//instanceConfigs/a-z*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/instanceConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "UpdateInstanceConfigRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
          },
          resources = {
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/instanceConfigs/{instanceConfigsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "spanner.projects.instanceConfigs.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/instanceConfigs/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/instanceConfigs/{instanceConfigsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "spanner.projects.instanceConfigs.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/instanceConfigs/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/instanceConfigs/{instanceConfigsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "spanner.projects.instanceConfigs.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/instanceConfigs/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/instanceConfigs/{instanceConfigsId}/operations",
                  httpMethod = "GET",
                  id = "spanner.projects.instanceConfigs.operations.list",
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
                      pattern = "^projects/[^/]+/instanceConfigs/[^/]+/operations$",
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
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
              },
            },
          },
        },
        instances = {
          methods = {
            create = {
              description = "Creates an instance and begins preparing it to begin serving. The returned long-running operation can be used to track the progress of preparing the new instance. The instance name is assigned by the caller. If the named instance already exists, `CreateInstance` returns `ALREADY_EXISTS`. Immediately upon completion of this request: * The instance is readable via the API, with all requested attributes but no allocated resources. Its state is `CREATING`. Until completion of the returned operation: * Cancelling the operation renders the instance immediately unreadable via the API. * The instance can be deleted. * All other attempts to modify the instance are rejected. Upon completion of the returned operation: * Billing for all successfully-allocated resources begins (some types may have lower than the requested levels). * Databases can be created in the instance. * The instance's allocated resource levels are readable via the API. * The instance's state becomes `READY`. The returned long-running operation will have a name of the format `/operations/` and can be used to track creation of the instance. The metadata field type is CreateInstanceMetadata. The response field type is Instance, if successful.",
              flatPath = "v1/projects/{projectsId}/instances",
              httpMethod = "POST",
              id = "spanner.projects.instances.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in which to create the instance. Values are of the form `projects/`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/instances",
              request = {
                ["$ref"] = "CreateInstanceRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            delete = {
              description = "Deletes an instance. Immediately upon completion of the request: * Billing ceases for all of the instance's reserved resources. Soon afterward: * The instance and *all of its databases* immediately and irrevocably disappear from the API. All data in the databases is permanently deleted.",
              flatPath = "v1/projects/{projectsId}/instances/{instancesId}",
              httpMethod = "DELETE",
              id = "spanner.projects.instances.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the instance to be deleted. Values are of the form `projects//instances/`",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
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
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            get = {
              description = "Gets information about a particular instance.",
              flatPath = "v1/projects/{projectsId}/instances/{instancesId}",
              httpMethod = "GET",
              id = "spanner.projects.instances.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                fieldMask = {
                  description = "If field_mask is present, specifies the subset of Instance fields that should be returned. If absent, all Instance fields are returned.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The name of the requested instance. Values are of the form `projects//instances/`.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
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
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set. Authorization requires `spanner.instances.getIamPolicy` on resource.",
              flatPath = "v1/projects/{projectsId}/instances/{instancesId}:getIamPolicy",
              httpMethod = "POST",
              id = "spanner.projects.instances.getIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for database resources.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
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
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            list = {
              description = "Lists all instances in the given project.",
              flatPath = "v1/projects/{projectsId}/instances",
              httpMethod = "GET",
              id = "spanner.projects.instances.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are: * `name` * `display_name` * `labels.key` where key is the name of a label Some examples of using filters are: * `name:*` --> The instance has a name. * `name:Howl` --> The instance's name contains the string \"howl\". * `name:HOWL` --> Equivalent to above. * `NAME:howl` --> Equivalent to above. * `labels.env:*` --> The instance has the label \"env\". * `labels.env:dev` --> The instance has the label \"env\" and the value of the label contains the string \"dev\". * `name:howl labels.env:dev` --> The instance's name contains \"howl\" and it has the label \"env\" with its value containing \"dev\".",
                  location = "query",
                  type = "string",
                },
                instanceDeadline = {
                  description = "Deadline used while retrieving metadata for instances. Instances whose metadata cannot be retrieved within this deadline will be added to unreachable in ListInstancesResponse.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Number of instances to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If non-empty, `page_token` should contain a next_page_token from a previous ListInstancesResponse.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project for which a list of instances is requested. Values are of the form `projects/`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
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
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            patch = {
              description = "Updates an instance, and begins allocating or releasing resources as requested. The returned long-running operation can be used to track the progress of updating the instance. If the named instance does not exist, returns `NOT_FOUND`. Immediately upon completion of this request: * For resource types for which a decrease in the instance's allocation has been requested, billing is based on the newly-requested level. Until completion of the returned operation: * Cancelling the operation sets its metadata's cancel_time, and begins restoring resources to their pre-request values. The operation is guaranteed to succeed at undoing all resource changes, after which point it terminates with a `CANCELLED` status. * All other attempts to modify the instance are rejected. * Reading the instance via the API continues to give the pre-request resource levels. Upon completion of the returned operation: * Billing begins for all successfully-allocated resources (some types may have lower than the requested levels). * All newly-reserved resources are available for serving the instance's tables. * The instance's new resource levels are readable via the API. The returned long-running operation will have a name of the format `/operations/` and can be used to track the instance modification. The metadata field type is UpdateInstanceMetadata. The response field type is Instance, if successful. Authorization requires `spanner.instances.update` permission on the resource name.",
              flatPath = "v1/projects/{projectsId}/instances/{instancesId}",
              httpMethod = "PATCH",
              id = "spanner.projects.instances.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be between 2 and 64 characters in length.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "UpdateInstanceRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on an instance resource. Replaces any existing policy. Authorization requires `spanner.instances.setIamPolicy` on resource.",
              flatPath = "v1/projects/{projectsId}/instances/{instancesId}:setIamPolicy",
              httpMethod = "POST",
              id = "spanner.projects.instances.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for databases resources.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
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
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that the caller has on the specified instance resource. Attempting this RPC on a non-existent Cloud Spanner instance resource will result in a NOT_FOUND error if the user has `spanner.instances.list` permission on the containing Google Cloud Project. Otherwise returns an empty set of permissions.",
              flatPath = "v1/projects/{projectsId}/instances/{instancesId}:testIamPermissions",
              httpMethod = "POST",
              id = "spanner.projects.instances.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for database resources.",
                  location = "path",
                  pattern = "^projects/[^/]+/instances/[^/]+$",
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
                "https://www.googleapis.com/auth/spanner.admin",
              },
            },
          },
          resources = {
            backupOperations = {
              methods = {
                list = {
                  description = "Lists the backup long-running operations in the given instance. A backup operation has a name of the form `projects//instances//backups//operations/`. The long-running operation metadata field type `metadata.type_url` describes the type of the metadata. Operations returned include those that have completed/failed/canceled within the last 7 days, and pending operations. Operations returned are ordered by `operation.metadata.value.progress.start_time` in descending order starting from the most recently started operation.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backupOperations",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.backupOperations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "An expression that filters the list of returned backup operations. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`. Colon `:` is the contains operator. Filter rules are not case sensitive. The following fields in the operation are eligible for filtering: * `name` - The name of the long-running operation * `done` - False if the operation is in progress, else true. * `metadata.@type` - the type of metadata. For example, the type string for CreateBackupMetadata is `type.googleapis.com/google.spanner.admin.database.v1.CreateBackupMetadata`. * `metadata.` - any field in metadata.value. `metadata.@type` must be specified first if filtering on metadata fields. * `error` - Error associated with the long-running operation. * `response.@type` - the type of response. * `response.` - any field in response.value. You can combine multiple expressions by enclosing each expression in parentheses. By default, expressions are combined with AND logic, but you can specify AND, OR, and NOT logic explicitly. Here are a few examples: * `done:true` - The operation is complete. * `(metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.CreateBackupMetadata) AND` \\ `metadata.database:prod` - Returns operations where: * The operation's metadata type is CreateBackupMetadata. * The source database name of backup contains the string \"prod\". * `(metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.CreateBackupMetadata) AND` \\ `(metadata.name:howl) AND` \\ `(metadata.progress.start_time < \\\"2018-03-28T14:50:00Z\\\") AND` \\ `(error:*)` - Returns operations where: * The operation's metadata type is CreateBackupMetadata. * The backup name contains the string \"howl\". * The operation started before 2018-03-28T14:50:00Z. * The operation resulted in an error. * `(metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.CopyBackupMetadata) AND` \\ `(metadata.source_backup:test) AND` \\ `(metadata.progress.start_time < \\\"2022-01-18T14:50:00Z\\\") AND` \\ `(error:*)` - Returns operations where: * The operation's metadata type is CopyBackupMetadata. * The source backup name contains the string \"test\". * The operation started before 2022-01-18T14:50:00Z. * The operation resulted in an error. * `((metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.CreateBackupMetadata) AND` \\ `(metadata.database:test_db)) OR` \\ `((metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.CopyBackupMetadata) AND` \\ `(metadata.source_backup:test_bkp)) AND` \\ `(error:*)` - Returns operations where: * The operation's metadata matches either of criteria: * The operation's metadata type is CreateBackupMetadata AND the source database name of the backup contains the string \"test_db\" * The operation's metadata type is CopyBackupMetadata AND the source backup name contains the string \"test_bkp\" * The operation resulted in an error.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Number of operations to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "If non-empty, `page_token` should contain a next_page_token from a previous ListBackupOperationsResponse to the same `parent` and with the same `filter`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The instance of the backup operations. Values are of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/backupOperations",
                  response = {
                    ["$ref"] = "ListBackupOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
              },
            },
            backups = {
              methods = {
                copy = {
                  description = "Starts copying a Cloud Spanner Backup. The returned backup long-running operation will have a name of the format `projects//instances//backups//operations/` and can be used to track copying of the backup. The operation is associated with the destination backup. The metadata field type is CopyBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the copying and delete the destination backup. Concurrent CopyBackup requests can run on the same source backup.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups:copy",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.backups.copy",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the destination instance that will contain the backup copy. Values are of the form: `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/backups:copy",
                  request = {
                    ["$ref"] = "CopyBackupRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                create = {
                  description = "Starts creating a new Cloud Spanner Backup. The returned backup long-running operation will have a name of the format `projects//instances//backups//operations/` and can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup. There can be only one pending backup creation per database. Backup creation of different databases can run concurrently.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.backups.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    backupId = {
                      description = "Required. The id of the backup to be created. The `backup_id` appended to `parent` forms the full backup name of the form `projects//instances//backups/`.",
                      location = "query",
                      type = "string",
                    },
                    ["encryptionConfig.encryptionType"] = {
                      description = "Required. The encryption type of the backup.",
                      enum = {
                        "ENCRYPTION_TYPE_UNSPECIFIED",
                        "USE_DATABASE_ENCRYPTION",
                        "GOOGLE_DEFAULT_ENCRYPTION",
                        "CUSTOMER_MANAGED_ENCRYPTION",
                      },
                      enumDescriptions = {
                        "Unspecified. Do not use.",
                        "Use the same encryption configuration as the database. This is the default option when encryption_config is empty. For example, if the database is using `Customer_Managed_Encryption`, the backup will be using the same Cloud KMS key as the database.",
                        "Use Google default encryption.",
                        "Use customer managed encryption. If specified, `kms_key_name` must contain a valid Cloud KMS key.",
                      },
                      location = "query",
                      type = "string",
                    },
                    ["encryptionConfig.kmsKeyName"] = {
                      description = "Optional. The Cloud KMS key that will be used to protect the backup. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the instance in which the backup will be created. This must be the same instance that contains the database the backup will be created from. The backup will be stored in the location(s) specified in the instance configuration of this instance. Values are of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/backups",
                  request = {
                    ["$ref"] = "Backup",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                delete = {
                  description = "Deletes a pending or completed Backup.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}",
                  httpMethod = "DELETE",
                  id = "spanner.projects.instances.backups.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the backup to delete. Values are of the form `projects//instances//backups/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                get = {
                  description = "Gets metadata on a pending or completed Backup.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.backups.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the backup. Values are of the form `projects//instances//backups/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.backups.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for database resources.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                list = {
                  description = "Lists completed and pending backups. Backups returned are ordered by `create_time` in descending order, starting from the most recent `create_time`.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.backups.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "An expression that filters the list of returned backups. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`. Colon `:` is the contains operator. Filter rules are not case sensitive. The following fields in the Backup are eligible for filtering: * `name` * `database` * `state` * `create_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `expire_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `version_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `size_bytes` You can combine multiple expressions by enclosing each expression in parentheses. By default, expressions are combined with AND logic, but you can specify AND, OR, and NOT logic explicitly. Here are a few examples: * `name:Howl` - The backup's name contains the string \"howl\". * `database:prod` - The database's name contains the string \"prod\". * `state:CREATING` - The backup is pending creation. * `state:READY` - The backup is fully created and ready for use. * `(name:howl) AND (create_time < \\\"2018-03-28T14:50:00Z\\\")` - The backup name contains the string \"howl\" and `create_time` of the backup is before 2018-03-28T14:50:00Z. * `expire_time < \\\"2018-03-28T14:50:00Z\\\"` - The backup `expire_time` is before 2018-03-28T14:50:00Z. * `size_bytes > 10000000000` - The backup's size is greater than 10GB",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Number of backups to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "If non-empty, `page_token` should contain a next_page_token from a previous ListBackupsResponse to the same `parent` and with the same `filter`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The instance to list backups from. Values are of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                patch = {
                  description = "Updates a pending or completed Backup.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}",
                  httpMethod = "PATCH",
                  id = "spanner.projects.instances.backups.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. A mask specifying which fields (e.g. `expire_time`) in the Backup resource should be updated. This mask is relative to the Backup resource, not to the request message. The field mask must always be specified; this prevents any future fields from being erased accidentally by clients that do not know about them.",
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
                    ["$ref"] = "Backup",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires `spanner.databases.setIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.setIamPolicy` permission on resource.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.backups.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for databases resources.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT_FOUND error if the user has `spanner.databases.list` permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT_FOUND error if the user has `spanner.backups.list` permission on the containing instance.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.backups.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for database resources.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
              },
              resources = {
                operations = {
                  methods = {
                    cancel = {
                      description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}/operations/{operationsId}:cancel",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.backups.operations.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be cancelled.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+/operations/[^/]+$",
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
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                    delete = {
                      description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}/operations/{operationsId}",
                      httpMethod = "DELETE",
                      id = "spanner.projects.instances.backups.operations.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be deleted.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+/operations/[^/]+$",
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
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                    get = {
                      description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}/operations/{operationsId}",
                      httpMethod = "GET",
                      id = "spanner.projects.instances.backups.operations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+/operations/[^/]+$",
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
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                    list = {
                      description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/backups/{backupsId}/operations",
                      httpMethod = "GET",
                      id = "spanner.projects.instances.backups.operations.list",
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
                          pattern = "^projects/[^/]+/instances/[^/]+/backups/[^/]+/operations$",
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
                        ["$ref"] = "ListOperationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                  },
                },
              },
            },
            databaseOperations = {
              methods = {
                list = {
                  description = "Lists database longrunning-operations. A database operation has a name of the form `projects//instances//databases//operations/`. The long-running operation metadata field type `metadata.type_url` describes the type of the metadata. Operations returned include those that have completed/failed/canceled within the last 7 days, and pending operations.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databaseOperations",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.databaseOperations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "An expression that filters the list of returned operations. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`. Colon `:` is the contains operator. Filter rules are not case sensitive. The following fields in the Operation are eligible for filtering: * `name` - The name of the long-running operation * `done` - False if the operation is in progress, else true. * `metadata.@type` - the type of metadata. For example, the type string for RestoreDatabaseMetadata is `type.googleapis.com/google.spanner.admin.database.v1.RestoreDatabaseMetadata`. * `metadata.` - any field in metadata.value. `metadata.@type` must be specified first, if filtering on metadata fields. * `error` - Error associated with the long-running operation. * `response.@type` - the type of response. * `response.` - any field in response.value. You can combine multiple expressions by enclosing each expression in parentheses. By default, expressions are combined with AND logic. However, you can specify AND, OR, and NOT logic explicitly. Here are a few examples: * `done:true` - The operation is complete. * `(metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.RestoreDatabaseMetadata) AND` \\ `(metadata.source_type:BACKUP) AND` \\ `(metadata.backup_info.backup:backup_howl) AND` \\ `(metadata.name:restored_howl) AND` \\ `(metadata.progress.start_time < \\\"2018-03-28T14:50:00Z\\\") AND` \\ `(error:*)` - Return operations where: * The operation's metadata type is RestoreDatabaseMetadata. * The database is restored from a backup. * The backup name contains \"backup_howl\". * The restored database's name contains \"restored_howl\". * The operation started before 2018-03-28T14:50:00Z. * The operation resulted in an error.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Number of operations to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "If non-empty, `page_token` should contain a next_page_token from a previous ListDatabaseOperationsResponse to the same `parent` and with the same `filter`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The instance of the database operations. Values are of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/databaseOperations",
                  response = {
                    ["$ref"] = "ListDatabaseOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
              },
            },
            databases = {
              methods = {
                create = {
                  description = "Creates a new Cloud Spanner database and starts to prepare it for serving. The returned long-running operation will have a name of the format `/operations/` and can be used to track preparation of the database. The metadata field type is CreateDatabaseMetadata. The response field type is Database, if successful.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.databases.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the instance that will serve the new database. Values are of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/databases",
                  request = {
                    ["$ref"] = "CreateDatabaseRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                dropDatabase = {
                  description = "Drops (aka deletes) a Cloud Spanner database. Completed backups for the database will be retained according to their `expire_time`. Note: Cloud Spanner might continue to accept requests for a few seconds after the database has been deleted.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}",
                  httpMethod = "DELETE",
                  id = "spanner.projects.instances.databases.dropDatabase",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database to be dropped.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                get = {
                  description = "Gets the state of a Cloud Spanner database.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.databases.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the requested database. Values are of the form `projects//instances//databases/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Database",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                getDdl = {
                  description = "Returns the schema of a Cloud Spanner database as a list of formatted DDL statements. This method does not show pending schema updates, those may be queried using the Operations API.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/ddl",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.databases.getDdl",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database whose schema we wish to get. Values are of the form `projects//instances//databases/`",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/ddl",
                  response = {
                    ["$ref"] = "GetDatabaseDdlResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.databases.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for database resources.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                getScans = {
                  description = "Request a specific scan with Database-specific data for Cloud Key Visualizer.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/scans",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.databases.getScans",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    endTime = {
                      description = "The upper bound for the time range to retrieve Scan data for.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The unique name of the scan containing the requested information, specific to the Database service implementing this interface.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    startTime = {
                      description = "These fields restrict the Database-specific information returned in the `Scan.data` field. If a `View` is provided that does not include the `Scan.data` field, these are ignored. This range of time must be entirely contained within the defined time range of the targeted scan. The lower bound for the time range to retrieve Scan data for.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    view = {
                      description = "Specifies which parts of the Scan should be returned in the response. Note, if left unspecified, the FULL view is assumed.",
                      enum = {
                        "VIEW_UNSPECIFIED",
                        "SUMMARY",
                        "FULL",
                      },
                      enumDescriptions = {
                        "Not specified, equivalent to SUMMARY.",
                        "Server responses only include `name`, `details`, `start_time` and `end_time`. The default value. Note, the ListScans method may only use this view type, others view types are not supported.",
                        "Full representation of the scan is returned in the server response, including `data`.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/scans",
                  response = {
                    ["$ref"] = "Scan",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.data",
                  },
                },
                list = {
                  description = "Lists Cloud Spanner databases.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.databases.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Number of databases to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "If non-empty, `page_token` should contain a next_page_token from a previous ListDatabasesResponse.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The instance whose databases should be listed. Values are of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/databases",
                  response = {
                    ["$ref"] = "ListDatabasesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                restore = {
                  description = "Create a new database by restoring from a completed backup. The new database must be in the same project and in an instance with the same instance configuration as the instance containing the backup. The returned database long-running operation has a name of the format `projects//instances//databases//operations/`, and can be used to track the progress of the operation, and to cancel it. The metadata field type is RestoreDatabaseMetadata. The response type is Database, if successful. Cancelling the returned operation will stop the restore and delete the database. There can be only one database being restored into an instance at a time. Once the restore operation completes, a new restore operation can be initiated, without waiting for the optimize operation associated with the first restore to complete.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases:restore",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.databases.restore",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the instance in which to create the restored database. This instance must be in the same project and have the same instance configuration as the instance containing the source backup. Values are of the form `projects//instances/`.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/databases:restore",
                  request = {
                    ["$ref"] = "RestoreDatabaseRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                setIamPolicy = {
                  description = "Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires `spanner.databases.setIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.setIamPolicy` permission on resource.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.databases.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for databases resources.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                testIamPermissions = {
                  description = "Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT_FOUND error if the user has `spanner.databases.list` permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT_FOUND error if the user has `spanner.backups.list` permission on the containing instance.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.databases.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for database resources.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                updateDdl = {
                  description = "Updates the schema of a Cloud Spanner database by creating/altering/dropping tables, columns, indexes, etc. The returned long-running operation will have a name of the format `/operations/` and can be used to track execution of the schema change(s). The metadata field type is UpdateDatabaseDdlMetadata. The operation has no response.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/ddl",
                  httpMethod = "PATCH",
                  id = "spanner.projects.instances.databases.updateDdl",
                  parameterOrder = {
                    "database",
                  },
                  parameters = {
                    database = {
                      description = "Required. The database to update.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+database}/ddl",
                  request = {
                    ["$ref"] = "UpdateDatabaseDdlRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
              },
              resources = {
                databaseRoles = {
                  methods = {
                    list = {
                      description = "Lists Cloud Spanner database roles.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/databaseRoles",
                      httpMethod = "GET",
                      id = "spanner.projects.instances.databases.databaseRoles.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Number of database roles to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "If non-empty, `page_token` should contain a next_page_token from a previous ListDatabaseRolesResponse.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The database whose roles should be listed. Values are of the form `projects//instances//databases/`.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/databaseRoles",
                      response = {
                        ["$ref"] = "ListDatabaseRolesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT_FOUND error if the user has `spanner.databases.list` permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT_FOUND error if the user has `spanner.backups.list` permission on the containing instance.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/databaseRoles/{databaseRolesId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.databaseRoles.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for instance resources and `projects//instances//databases/` for database resources.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/databaseRoles/[^/]+$",
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
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                  },
                },
                operations = {
                  methods = {
                    cancel = {
                      description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/operations/{operationsId}:cancel",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.operations.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be cancelled.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/operations/[^/]+$",
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
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                    delete = {
                      description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/operations/{operationsId}",
                      httpMethod = "DELETE",
                      id = "spanner.projects.instances.databases.operations.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be deleted.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/operations/[^/]+$",
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
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                    get = {
                      description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/operations/{operationsId}",
                      httpMethod = "GET",
                      id = "spanner.projects.instances.databases.operations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/operations/[^/]+$",
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
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                    list = {
                      description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/operations",
                      httpMethod = "GET",
                      id = "spanner.projects.instances.databases.operations.list",
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
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/operations$",
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
                        ["$ref"] = "ListOperationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.admin",
                      },
                    },
                  },
                },
                sessions = {
                  methods = {
                    batchCreate = {
                      description = "Creates multiple new sessions. This API can be used to initialize a session cache on the clients. See https://goo.gl/TgSFN2 for best practices on session cache management.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions:batchCreate",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.batchCreate",
                      parameterOrder = {
                        "database",
                      },
                      parameters = {
                        database = {
                          description = "Required. The database in which the new sessions are created.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+database}/sessions:batchCreate",
                      request = {
                        ["$ref"] = "BatchCreateSessionsRequest",
                      },
                      response = {
                        ["$ref"] = "BatchCreateSessionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    beginTransaction = {
                      description = "Begins a new transaction. This step can often be skipped: Read, ExecuteSql and Commit can begin a new transaction as a side-effect.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:beginTransaction",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.beginTransaction",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session in which the transaction runs.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:beginTransaction",
                      request = {
                        ["$ref"] = "BeginTransactionRequest",
                      },
                      response = {
                        ["$ref"] = "Transaction",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    commit = {
                      description = "Commits a transaction. The request includes the mutations to be applied to rows in the database. `Commit` might return an `ABORTED` error. This can occur at any time; commonly, the cause is conflicts with concurrent transactions. However, it can also happen for a variety of other reasons. If `Commit` returns `ABORTED`, the caller should re-attempt the transaction from the beginning, re-using the same session. On very rare occasions, `Commit` might return `UNKNOWN`. This can happen, for example, if the client job experiences a 1+ hour networking failure. At that point, Cloud Spanner has lost track of the transaction outcome and we recommend that you perform another read from the database to see the state of things as they are now.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:commit",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.commit",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session in which the transaction to be committed is running.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:commit",
                      request = {
                        ["$ref"] = "CommitRequest",
                      },
                      response = {
                        ["$ref"] = "CommitResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    create = {
                      description = "Creates a new session. A session can be used to perform transactions that read and/or modify data in a Cloud Spanner database. Sessions are meant to be reused for many consecutive transactions. Sessions can only execute one transaction at a time. To execute multiple concurrent read-write/write-only transactions, create multiple sessions. Note that standalone reads and queries use a transaction internally, and count toward the one transaction limit. Active sessions use additional server resources, so it is a good idea to delete idle and unneeded sessions. Aside from explicit deletes, Cloud Spanner may delete sessions for which no operations are sent for more than an hour. If a session is deleted, requests to it return `NOT_FOUND`. Idle sessions can be kept alive by sending a trivial SQL query periodically, e.g., `\"SELECT 1\"`.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.create",
                      parameterOrder = {
                        "database",
                      },
                      parameters = {
                        database = {
                          description = "Required. The database in which the new session is created.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+database}/sessions",
                      request = {
                        ["$ref"] = "CreateSessionRequest",
                      },
                      response = {
                        ["$ref"] = "Session",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    delete = {
                      description = "Ends a session, releasing server resources associated with it. This will asynchronously trigger cancellation of any operations that are running with this session.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}",
                      httpMethod = "DELETE",
                      id = "spanner.projects.instances.databases.sessions.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the session to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
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
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    executeBatchDml = {
                      description = "Executes a batch of SQL DML statements. This method allows many statements to be run with lower latency than submitting them sequentially with ExecuteSql. Statements are executed in sequential order. A request can succeed even if a statement fails. The ExecuteBatchDmlResponse.status field in the response provides information about the statement that failed. Clients must inspect this field to determine whether an error occurred. Execution stops after the first failed statement; the remaining statements are not executed.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:executeBatchDml",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.executeBatchDml",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session in which the DML statements should be performed.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:executeBatchDml",
                      request = {
                        ["$ref"] = "ExecuteBatchDmlRequest",
                      },
                      response = {
                        ["$ref"] = "ExecuteBatchDmlResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    executeSql = {
                      description = "Executes an SQL statement, returning all results in a single reply. This method cannot be used to return a result set larger than 10 MiB; if the query yields more data than that, the query fails with a `FAILED_PRECONDITION` error. Operations inside read-write transactions might return `ABORTED`. If this occurs, the application should restart the transaction from the beginning. See Transaction for more details. Larger result sets can be fetched in streaming fashion by calling ExecuteStreamingSql instead.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:executeSql",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.executeSql",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session in which the SQL query should be performed.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:executeSql",
                      request = {
                        ["$ref"] = "ExecuteSqlRequest",
                      },
                      response = {
                        ["$ref"] = "ResultSet",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    executeStreamingSql = {
                      description = "Like ExecuteSql, except returns the result set as a stream. Unlike ExecuteSql, there is no limit on the size of the returned result set. However, no individual row in the result set can exceed 100 MiB, and no column value can exceed 10 MiB.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:executeStreamingSql",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.executeStreamingSql",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session in which the SQL query should be performed.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:executeStreamingSql",
                      request = {
                        ["$ref"] = "ExecuteSqlRequest",
                      },
                      response = {
                        ["$ref"] = "PartialResultSet",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    get = {
                      description = "Gets a session. Returns `NOT_FOUND` if the session does not exist. This is mainly useful for determining whether a session is still alive.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}",
                      httpMethod = "GET",
                      id = "spanner.projects.instances.databases.sessions.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the session to retrieve.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Session",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    list = {
                      description = "Lists all sessions in a given database.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions",
                      httpMethod = "GET",
                      id = "spanner.projects.instances.databases.sessions.list",
                      parameterOrder = {
                        "database",
                      },
                      parameters = {
                        database = {
                          description = "Required. The database in which to list sessions.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        filter = {
                          description = "An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are: * `labels.key` where key is the name of a label Some examples of using filters are: * `labels.env:*` --> The session has the label \"env\". * `labels.env:dev` --> The session has the label \"env\" and the value of the label contains the string \"dev\".",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Number of sessions to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "If non-empty, `page_token` should contain a next_page_token from a previous ListSessionsResponse.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+database}/sessions",
                      response = {
                        ["$ref"] = "ListSessionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    partitionQuery = {
                      description = "Creates a set of partition tokens that can be used to execute a query operation in parallel. Each of the returned partition tokens can be used by ExecuteStreamingSql to specify a subset of the query result to read. The same session and read-only transaction must be used by the PartitionQueryRequest used to create the partition tokens and the ExecuteSqlRequests that use the partition tokens. Partition tokens become invalid when the session used to create them is deleted, is idle for too long, begins a new transaction, or becomes too old. When any of these happen, it is not possible to resume the query, and the whole operation must be restarted from the beginning.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:partitionQuery",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.partitionQuery",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session used to create the partitions.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:partitionQuery",
                      request = {
                        ["$ref"] = "PartitionQueryRequest",
                      },
                      response = {
                        ["$ref"] = "PartitionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    partitionRead = {
                      description = "Creates a set of partition tokens that can be used to execute a read operation in parallel. Each of the returned partition tokens can be used by StreamingRead to specify a subset of the read result to read. The same session and read-only transaction must be used by the PartitionReadRequest used to create the partition tokens and the ReadRequests that use the partition tokens. There are no ordering guarantees on rows returned among the returned partition tokens, or even within each individual StreamingRead call issued with a partition_token. Partition tokens become invalid when the session used to create them is deleted, is idle for too long, begins a new transaction, or becomes too old. When any of these happen, it is not possible to resume the read, and the whole operation must be restarted from the beginning.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:partitionRead",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.partitionRead",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session used to create the partitions.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:partitionRead",
                      request = {
                        ["$ref"] = "PartitionReadRequest",
                      },
                      response = {
                        ["$ref"] = "PartitionResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    read = {
                      description = "Reads rows from the database using key lookups and scans, as a simple key/value style alternative to ExecuteSql. This method cannot be used to return a result set larger than 10 MiB; if the read matches more data than that, the read fails with a `FAILED_PRECONDITION` error. Reads inside read-write transactions might return `ABORTED`. If this occurs, the application should restart the transaction from the beginning. See Transaction for more details. Larger result sets can be yielded in streaming fashion by calling StreamingRead instead.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:read",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.read",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session in which the read should be performed.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:read",
                      request = {
                        ["$ref"] = "ReadRequest",
                      },
                      response = {
                        ["$ref"] = "ResultSet",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    rollback = {
                      description = "Rolls back a transaction, releasing any locks it holds. It is a good idea to call this for any transaction that includes one or more Read or ExecuteSql requests and ultimately decides not to commit. `Rollback` returns `OK` if it successfully aborts the transaction, the transaction was already aborted, or the transaction is not found. `Rollback` never returns `ABORTED`.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:rollback",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.rollback",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session in which the transaction to roll back is running.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:rollback",
                      request = {
                        ["$ref"] = "RollbackRequest",
                      },
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
                      },
                    },
                    streamingRead = {
                      description = "Like Read, except returns the result set as a stream. Unlike Read, there is no limit on the size of the returned result set. However, no individual row in the result set can exceed 100 MiB, and no column value can exceed 10 MiB.",
                      flatPath = "v1/projects/{projectsId}/instances/{instancesId}/databases/{databasesId}/sessions/{sessionsId}:streamingRead",
                      httpMethod = "POST",
                      id = "spanner.projects.instances.databases.sessions.streamingRead",
                      parameterOrder = {
                        "session",
                      },
                      parameters = {
                        session = {
                          description = "Required. The session in which the read should be performed.",
                          location = "path",
                          pattern = "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+session}:streamingRead",
                      request = {
                        ["$ref"] = "ReadRequest",
                      },
                      response = {
                        ["$ref"] = "PartialResultSet",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/spanner.data",
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
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "spanner.projects.instances.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "spanner.projects.instances.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/instances/[^/]+/operations/[^/]+$",
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
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/instances/{instancesId}/operations",
                  httpMethod = "GET",
                  id = "spanner.projects.instances.operations.list",
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
                      pattern = "^projects/[^/]+/instances/[^/]+/operations$",
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
                    ["$ref"] = "ListOperationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/spanner.admin",
                  },
                },
              },
            },
          },
        },
      },
    },
    scans = {
      methods = {
        list = {
          description = "Return available scans given a Database-specific resource name.",
          flatPath = "v1/scans",
          httpMethod = "GET",
          id = "spanner.scans.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            filter = {
              description = "A filter expression to restrict the results based on information present in the available Scan collection. The filter applies to all fields within the Scan message except for `data`.",
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
              description = "Required. The unique name of the parent resource, specific to the Database service implementing this interface.",
              location = "path",
              pattern = "^scans$",
              required = true,
              type = "string",
            },
            view = {
              description = "Specifies which parts of the Scan should be returned in the response. Note, only the SUMMARY view (the default) is currently supported for ListScans.",
              enum = {
                "VIEW_UNSPECIFIED",
                "SUMMARY",
                "FULL",
              },
              enumDescriptions = {
                "Not specified, equivalent to SUMMARY.",
                "Server responses only include `name`, `details`, `start_time` and `end_time`. The default value. Note, the ListScans method may only use this view type, others view types are not supported.",
                "Full representation of the scan is returned in the server response, including `data`.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+parent}",
          response = {
            ["$ref"] = "ListScansResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/spanner.data",
          },
        },
      },
    },
  },
  revision = "20230113",
  rootUrl = "https://spanner.googleapis.com/",
  schemas = {
    Backup = {
      description = "A backup of a Cloud Spanner database.",
      id = "Backup",
      properties = {
        createTime = {
          description = "Output only. The time the CreateBackup request is received. If the request does not specify `version_time`, the `version_time` of the backup will be equivalent to the `create_time`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        database = {
          description = "Required for the CreateBackup operation. Name of the database from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects//instances//databases/`.",
          type = "string",
        },
        databaseDialect = {
          description = "Output only. The database dialect information for the backup.",
          enum = {
            "DATABASE_DIALECT_UNSPECIFIED",
            "GOOGLE_STANDARD_SQL",
            "POSTGRESQL",
          },
          enumDescriptions = {
            "Default value. This value will create a database with the GOOGLE_STANDARD_SQL dialect.",
            "Google standard SQL.",
            "PostgreSQL supported SQL.",
          },
          readOnly = true,
          type = "string",
        },
        encryptionInfo = {
          ["$ref"] = "EncryptionInfo",
          description = "Output only. The encryption information for the backup.",
          readOnly = true,
        },
        expireTime = {
          description = "Required for the CreateBackup operation. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 366 days from the time the CreateBackup request is processed. Once the `expire_time` has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.",
          format = "google-datetime",
          type = "string",
        },
        maxExpireTime = {
          description = "Output only. The max allowed expiration time of the backup, with microseconds granularity. A backup's expiration time can be configured in multiple APIs: CreateBackup, UpdateBackup, CopyBackup. When updating or copying an existing backup, the expiration time specified must be less than `Backup.max_expire_time`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form `projects//instances/`.",
          type = "string",
        },
        referencingBackups = {
          description = "Output only. The names of the destination backups being created by copying this source backup. The backup names are of the form `projects//instances//backups/`. Referencing backups may exist in different instances. The existence of any referencing backup prevents the backup from being deleted. When the copy operation is done (either successfully completed or cancelled or the destination backup is deleted), the reference to the backup is removed.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        referencingDatabases = {
          description = "Output only. The names of the restored databases that reference the backup. The database names are of the form `projects//instances//databases/`. Referencing databases may exist in different instances. The existence of any referencing database prevents the backup from being deleted. When a restored database from the backup enters the `READY` state, the reference to the backup is removed.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        sizeBytes = {
          description = "Output only. Size of the backup in bytes.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the backup.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
          },
          enumDescriptions = {
            "Not specified.",
            "The pending backup is still being created. Operations on the backup may fail with `FAILED_PRECONDITION` in this state.",
            "The backup is complete and ready for use.",
          },
          readOnly = true,
          type = "string",
        },
        versionTime = {
          description = "The backup will contain an externally consistent copy of the database at the timestamp specified by `version_time`. If `version_time` is not specified, the system will set `version_time` to the `create_time` of the backup.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    BackupInfo = {
      description = "Information about a backup.",
      id = "BackupInfo",
      properties = {
        backup = {
          description = "Name of the backup.",
          type = "string",
        },
        createTime = {
          description = "The time the CreateBackup request was received.",
          format = "google-datetime",
          type = "string",
        },
        sourceDatabase = {
          description = "Name of the database the backup was created from.",
          type = "string",
        },
        versionTime = {
          description = "The backup contains an externally consistent copy of `source_database` at the timestamp specified by `version_time`. If the CreateBackup request did not specify `version_time`, the `version_time` of the backup is equivalent to the `create_time`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    BatchCreateSessionsRequest = {
      description = "The request for BatchCreateSessions.",
      id = "BatchCreateSessionsRequest",
      properties = {
        sessionCount = {
          description = "Required. The number of sessions to be created in this batch call. The API may return fewer than the requested number of sessions. If a specific number of sessions are desired, the client can make additional calls to BatchCreateSessions (adjusting session_count as necessary).",
          format = "int32",
          type = "integer",
        },
        sessionTemplate = {
          ["$ref"] = "Session",
          description = "Parameters to be applied to each created session.",
        },
      },
      type = "object",
    },
    BatchCreateSessionsResponse = {
      description = "The response for BatchCreateSessions.",
      id = "BatchCreateSessionsResponse",
      properties = {
        session = {
          description = "The freshly created sessions.",
          items = {
            ["$ref"] = "Session",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BeginTransactionRequest = {
      description = "The request for BeginTransaction.",
      id = "BeginTransactionRequest",
      properties = {
        options = {
          ["$ref"] = "TransactionOptions",
          description = "Required. Options for the new transaction.",
        },
        requestOptions = {
          ["$ref"] = "RequestOptions",
          description = "Common options for this request. Priority is ignored for this request. Setting the priority in this request_options struct will not do anything. To set the priority for a transaction, set it on the reads and writes that are part of this transaction instead.",
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
    ChildLink = {
      description = "Metadata associated with a parent-child relationship appearing in a PlanNode.",
      id = "ChildLink",
      properties = {
        childIndex = {
          description = "The node to which the link points.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The type of the link. For example, in Hash Joins this could be used to distinguish between the build child and the probe child, or in the case of the child being an output variable, to represent the tag associated with the output variable.",
          type = "string",
        },
        variable = {
          description = "Only present if the child node is SCALAR and corresponds to an output variable of the parent node. The field carries the name of the output variable. For example, a `TableScan` operator that reads rows from a table will have child links to the `SCALAR` nodes representing the output variables created for each column that is read by the operator. The corresponding `variable` fields will be set to the variable names assigned to the columns.",
          type = "string",
        },
      },
      type = "object",
    },
    CommitRequest = {
      description = "The request for Commit.",
      id = "CommitRequest",
      properties = {
        mutations = {
          description = "The mutations to be executed when this transaction commits. All mutations are applied atomically, in the order they appear in this list.",
          items = {
            ["$ref"] = "Mutation",
          },
          type = "array",
        },
        requestOptions = {
          ["$ref"] = "RequestOptions",
          description = "Common options for this request.",
        },
        returnCommitStats = {
          description = "If `true`, then statistics related to the transaction will be included in the CommitResponse. Default value is `false`.",
          type = "boolean",
        },
        singleUseTransaction = {
          ["$ref"] = "TransactionOptions",
          description = "Execute mutations in a temporary transaction. Note that unlike commit of a previously-started transaction, commit with a temporary transaction is non-idempotent. That is, if the `CommitRequest` is sent to Cloud Spanner more than once (for instance, due to retries in the application, or in the transport library), it is possible that the mutations are executed more than once. If this is undesirable, use BeginTransaction and Commit instead.",
        },
        transactionId = {
          description = "Commit a previously-started transaction.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    CommitResponse = {
      description = "The response for Commit.",
      id = "CommitResponse",
      properties = {
        commitStats = {
          ["$ref"] = "CommitStats",
          description = "The statistics about this Commit. Not returned by default. For more information, see CommitRequest.return_commit_stats.",
        },
        commitTimestamp = {
          description = "The Cloud Spanner timestamp at which the transaction committed.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    CommitStats = {
      description = "Additional statistics about a commit.",
      id = "CommitStats",
      properties = {
        mutationCount = {
          description = "The total number of mutations for the transaction. Knowing the `mutation_count` value can help you maximize the number of mutations in a transaction and minimize the number of API round trips. You can also monitor this value to prevent transactions from exceeding the system [limit](https://cloud.google.com/spanner/quotas#limits_for_creating_reading_updating_and_deleting_data). If the number of mutations exceeds the limit, the server returns [INVALID_ARGUMENT](https://cloud.google.com/spanner/docs/reference/rest/v1/Code#ENUM_VALUES.INVALID_ARGUMENT).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ContextValue = {
      description = "A message representing context for a KeyRangeInfo, including a label, value, unit, and severity.",
      id = "ContextValue",
      properties = {
        label = {
          ["$ref"] = "LocalizedString",
          description = "The label for the context value. e.g. \"latency\".",
        },
        severity = {
          description = "The severity of this context.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "INFO",
            "WARNING",
            "ERROR",
            "FATAL",
          },
          enumDescriptions = {
            "Required default value.",
            "Lowest severity level \"Info\".",
            "Middle severity level \"Warning\".",
            "Severity level signaling an error \"Error\"",
            "Severity level signaling a non recoverable error \"Fatal\"",
          },
          type = "string",
        },
        unit = {
          description = "The unit of the context value.",
          type = "string",
        },
        value = {
          description = "The value for the context.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    CopyBackupEncryptionConfig = {
      description = "Encryption configuration for the copied backup.",
      id = "CopyBackupEncryptionConfig",
      properties = {
        encryptionType = {
          description = "Required. The encryption type of the backup.",
          enum = {
            "ENCRYPTION_TYPE_UNSPECIFIED",
            "USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION",
            "GOOGLE_DEFAULT_ENCRYPTION",
            "CUSTOMER_MANAGED_ENCRYPTION",
          },
          enumDescriptions = {
            "Unspecified. Do not use.",
            "This is the default option for CopyBackup when encryption_config is not specified. For example, if the source backup is using `Customer_Managed_Encryption`, the backup will be using the same Cloud KMS key as the source backup.",
            "Use Google default encryption.",
            "Use customer managed encryption. If specified, either `kms_key_name` or `kms_key_names` must contain valid Cloud KMS key(s).",
          },
          type = "string",
        },
        kmsKeyName = {
          description = "Optional. The Cloud KMS key that will be used to protect the backup. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.",
          type = "string",
        },
      },
      type = "object",
    },
    CopyBackupMetadata = {
      description = "Metadata type for the operation returned by CopyBackup.",
      id = "CopyBackupMetadata",
      properties = {
        cancelTime = {
          description = "The time at which cancellation of CopyBackup operation was received. Operations.CancelOperation starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The name of the backup being created through the copy operation. Values are of the form `projects//instances//backups/`.",
          type = "string",
        },
        progress = {
          ["$ref"] = "OperationProgress",
          description = "The progress of the CopyBackup operation.",
        },
        sourceBackup = {
          description = "The name of the source backup that is being copied. Values are of the form `projects//instances//backups/`.",
          type = "string",
        },
      },
      type = "object",
    },
    CopyBackupRequest = {
      description = "The request for CopyBackup.",
      id = "CopyBackupRequest",
      properties = {
        backupId = {
          description = "Required. The id of the backup copy. The `backup_id` appended to `parent` forms the full backup_uri of the form `projects//instances//backups/`.",
          type = "string",
        },
        encryptionConfig = {
          ["$ref"] = "CopyBackupEncryptionConfig",
          description = "Optional. The encryption configuration used to encrypt the backup. If this field is not specified, the backup will use the same encryption configuration as the source backup by default, namely encryption_type = `USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION`.",
        },
        expireTime = {
          description = "Required. The expiration time of the backup in microsecond granularity. The expiration time must be at least 6 hours and at most 366 days from the `create_time` of the source backup. Once the `expire_time` has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.",
          format = "google-datetime",
          type = "string",
        },
        sourceBackup = {
          description = "Required. The source backup to be copied. The source backup needs to be in READY state for it to be copied. Once CopyBackup is in progress, the source backup cannot be deleted or cleaned up on expiration until CopyBackup is finished. Values are of the form: `projects//instances//backups/`.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateBackupMetadata = {
      description = "Metadata type for the operation returned by CreateBackup.",
      id = "CreateBackupMetadata",
      properties = {
        cancelTime = {
          description = "The time at which cancellation of this operation was received. Operations.CancelOperation starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          format = "google-datetime",
          type = "string",
        },
        database = {
          description = "The name of the database the backup is created from.",
          type = "string",
        },
        name = {
          description = "The name of the backup being created.",
          type = "string",
        },
        progress = {
          ["$ref"] = "OperationProgress",
          description = "The progress of the CreateBackup operation.",
        },
      },
      type = "object",
    },
    CreateDatabaseMetadata = {
      description = "Metadata type for the operation returned by CreateDatabase.",
      id = "CreateDatabaseMetadata",
      properties = {
        database = {
          description = "The database being created.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateDatabaseRequest = {
      description = "The request for CreateDatabase.",
      id = "CreateDatabaseRequest",
      properties = {
        createStatement = {
          description = "Required. A `CREATE DATABASE` statement, which specifies the ID of the new database. The database ID must conform to the regular expression `a-z*[a-z0-9]` and be between 2 and 30 characters in length. If the database ID is a reserved word or if it contains a hyphen, the database ID must be enclosed in backticks (`` ` ``).",
          type = "string",
        },
        databaseDialect = {
          description = "Optional. The dialect of the Cloud Spanner Database.",
          enum = {
            "DATABASE_DIALECT_UNSPECIFIED",
            "GOOGLE_STANDARD_SQL",
            "POSTGRESQL",
          },
          enumDescriptions = {
            "Default value. This value will create a database with the GOOGLE_STANDARD_SQL dialect.",
            "Google standard SQL.",
            "PostgreSQL supported SQL.",
          },
          type = "string",
        },
        encryptionConfig = {
          ["$ref"] = "EncryptionConfig",
          description = "Optional. The encryption configuration for the database. If this field is not specified, Cloud Spanner will encrypt/decrypt all data at rest using Google default encryption.",
        },
        extraStatements = {
          description = "Optional. A list of DDL statements to run inside the newly created database. Statements can create tables, indexes, etc. These statements execute atomically with the creation of the database: if there is an error in any statement, the database is not created.",
          items = {
            type = "string",
          },
          type = "array",
        },
        protoDescriptors = {
          description = "Optional. Proto descriptors used by CREATE/ALTER PROTO BUNDLE statements in 'extra_statements' above. Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/descriptor.proto). To generate it, [install](https://grpc.io/docs/protoc-installation/) and run `protoc` with --include_imports and --descriptor_set_out. For example, to generate for moon/shot/app.proto, run \"\"\" $protoc --proto_path=/app_path --proto_path=/lib_path \\ --include_imports \\ --descriptor_set_out=descriptors.data \\ moon/shot/app.proto \"\"\" For more details, see protobuffer [self description](https://developers.google.com/protocol-buffers/docs/techniques#self-description).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    CreateInstanceConfigMetadata = {
      description = "Metadata type for the operation returned by CreateInstanceConfig.",
      id = "CreateInstanceConfigMetadata",
      properties = {
        cancelTime = {
          description = "The time at which this operation was cancelled.",
          format = "google-datetime",
          type = "string",
        },
        instanceConfig = {
          ["$ref"] = "InstanceConfig",
          description = "The target instance config end state.",
        },
        progress = {
          ["$ref"] = "InstanceOperationProgress",
          description = "The progress of the CreateInstanceConfig operation.",
        },
      },
      type = "object",
    },
    CreateInstanceConfigRequest = {
      description = "The request for CreateInstanceConfigRequest.",
      id = "CreateInstanceConfigRequest",
      properties = {
        instanceConfig = {
          ["$ref"] = "InstanceConfig",
          description = "Required. The InstanceConfig proto of the configuration to create. instance_config.name must be `/instanceConfigs/`. instance_config.base_config must be a Google managed configuration name, e.g. /instanceConfigs/us-east1, /instanceConfigs/nam3.",
        },
        instanceConfigId = {
          description = "Required. The ID of the instance config to create. Valid identifiers are of the form `custom-[-a-z0-9]*[a-z0-9]` and must be between 2 and 64 characters in length. The `custom-` prefix is required to avoid name conflicts with Google managed configurations.",
          type = "string",
        },
        validateOnly = {
          description = "An option to validate, but not actually execute, a request, and provide the same response.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CreateInstanceMetadata = {
      description = "Metadata type for the operation returned by CreateInstance.",
      id = "CreateInstanceMetadata",
      properties = {
        cancelTime = {
          description = "The time at which this operation was cancelled. If set, this operation is in the process of undoing itself (which is guaranteed to succeed) and cannot be cancelled again.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time at which this operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        instance = {
          ["$ref"] = "Instance",
          description = "The instance being created.",
        },
        startTime = {
          description = "The time at which the CreateInstance request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    CreateInstanceRequest = {
      description = "The request for CreateInstance.",
      id = "CreateInstanceRequest",
      properties = {
        instance = {
          ["$ref"] = "Instance",
          description = "Required. The instance to create. The name may be omitted, but if specified must be `/instances/`.",
        },
        instanceId = {
          description = "Required. The ID of the instance to create. Valid identifiers are of the form `a-z*[a-z0-9]` and must be between 2 and 64 characters in length.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateSessionRequest = {
      description = "The request for CreateSession.",
      id = "CreateSessionRequest",
      properties = {
        session = {
          ["$ref"] = "Session",
          description = "Required. The session to create.",
        },
      },
      type = "object",
    },
    Database = {
      description = "A Cloud Spanner database.",
      id = "Database",
      properties = {
        createTime = {
          description = "Output only. If exists, the time at which the database creation started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        databaseDialect = {
          description = "Output only. The dialect of the Cloud Spanner Database.",
          enum = {
            "DATABASE_DIALECT_UNSPECIFIED",
            "GOOGLE_STANDARD_SQL",
            "POSTGRESQL",
          },
          enumDescriptions = {
            "Default value. This value will create a database with the GOOGLE_STANDARD_SQL dialect.",
            "Google standard SQL.",
            "PostgreSQL supported SQL.",
          },
          readOnly = true,
          type = "string",
        },
        defaultLeader = {
          description = "Output only. The read-write region which contains the database's leader replicas. This is the same as the value of default_leader database option set using DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not explicitly set, this is empty.",
          readOnly = true,
          type = "string",
        },
        earliestVersionTime = {
          description = "Output only. Earliest timestamp at which older versions of the data can be read. This value is continuously updated by Cloud Spanner and becomes stale the moment it is queried. If you are using this value to recover data, make sure to account for the time from the moment when the value is queried to the moment when you initiate the recovery.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        encryptionConfig = {
          ["$ref"] = "EncryptionConfig",
          description = "Output only. For databases that are using customer managed encryption, this field contains the encryption configuration for the database. For databases that are using Google default or other types of encryption, this field is empty.",
          readOnly = true,
        },
        encryptionInfo = {
          description = "Output only. For databases that are using customer managed encryption, this field contains the encryption information for the database, such as all Cloud KMS key versions that are in use. The `encryption_status' field inside of each `EncryptionInfo` is not populated. For databases that are using Google default or other types of encryption, this field is empty. This field is propagated lazily from the backend. There might be a delay from when a key version is being used and when it appears in this field.",
          items = {
            ["$ref"] = "EncryptionInfo",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Required. The name of the database. Values are of the form `projects//instances//databases/`, where `` is as specified in the `CREATE DATABASE` statement. This name can be passed to other API methods to identify the database.",
          type = "string",
        },
        restoreInfo = {
          ["$ref"] = "RestoreInfo",
          description = "Output only. Applicable only for restored databases. Contains information about the restore source.",
          readOnly = true,
        },
        state = {
          description = "Output only. The current database state.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "READY_OPTIMIZING",
          },
          enumDescriptions = {
            "Not specified.",
            "The database is still being created. Operations on the database may fail with `FAILED_PRECONDITION` in this state.",
            "The database is fully created and ready for use.",
            "The database is fully created and ready for use, but is still being optimized for performance and cannot handle full load. In this state, the database still references the backup it was restore from, preventing the backup from being deleted. When optimizations are complete, the full performance of the database will be restored, and the database will transition to `READY` state.",
          },
          readOnly = true,
          type = "string",
        },
        versionRetentionPeriod = {
          description = "Output only. The period in which Cloud Spanner retains all versions of data for the database. This is the same as the value of version_retention_period database option set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DatabaseRole = {
      description = "A Cloud Spanner database role.",
      id = "DatabaseRole",
      properties = {
        name = {
          description = "Required. The name of the database role. Values are of the form `projects//instances//databases//databaseRoles/` where `` is as specified in the `CREATE ROLE` DDL statement.",
          type = "string",
        },
      },
      type = "object",
    },
    Delete = {
      description = "Arguments to delete operations.",
      id = "Delete",
      properties = {
        keySet = {
          ["$ref"] = "KeySet",
          description = "Required. The primary keys of the rows within table to delete. The primary keys must be specified in the order in which they appear in the `PRIMARY KEY()` clause of the table's equivalent DDL statement (the DDL statement used to create the table). Delete is idempotent. The transaction will succeed even if some or all rows do not exist.",
        },
        table = {
          description = "Required. The table whose rows will be deleted.",
          type = "string",
        },
      },
      type = "object",
    },
    DerivedMetric = {
      description = "A message representing a derived metric.",
      id = "DerivedMetric",
      properties = {
        denominator = {
          ["$ref"] = "LocalizedString",
          description = "The name of the denominator metric. e.g. \"rows\".",
        },
        numerator = {
          ["$ref"] = "LocalizedString",
          description = "The name of the numerator metric. e.g. \"latency\".",
        },
      },
      type = "object",
    },
    DiagnosticMessage = {
      description = "A message representing the key visualizer diagnostic messages.",
      id = "DiagnosticMessage",
      properties = {
        info = {
          ["$ref"] = "LocalizedString",
          description = "Information about this diagnostic information.",
        },
        metric = {
          ["$ref"] = "LocalizedString",
          description = "The metric.",
        },
        metricSpecific = {
          description = "Whether this message is specific only for the current metric. By default Diagnostics are shown for all metrics, regardless which metric is the currently selected metric in the UI. However occasionally a metric will generate so many messages that the resulting visual clutter becomes overwhelming. In this case setting this to true, will show the diagnostic messages for that metric only if it is the currently selected metric.",
          type = "boolean",
        },
        severity = {
          description = "The severity of the diagnostic message.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "INFO",
            "WARNING",
            "ERROR",
            "FATAL",
          },
          enumDescriptions = {
            "Required default value.",
            "Lowest severity level \"Info\".",
            "Middle severity level \"Warning\".",
            "Severity level signaling an error \"Error\"",
            "Severity level signaling a non recoverable error \"Fatal\"",
          },
          type = "string",
        },
        shortMessage = {
          ["$ref"] = "LocalizedString",
          description = "The short message.",
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
      description = "Encryption configuration for a Cloud Spanner database.",
      id = "EncryptionConfig",
      properties = {
        kmsKeyName = {
          description = "The Cloud KMS key to be used for encrypting and decrypting the database. Values are of the form `projects//locations//keyRings//cryptoKeys/`.",
          type = "string",
        },
      },
      type = "object",
    },
    EncryptionInfo = {
      description = "Encryption information for a Cloud Spanner database or backup.",
      id = "EncryptionInfo",
      properties = {
        encryptionStatus = {
          ["$ref"] = "Status",
          description = "Output only. If present, the status of a recent encrypt/decrypt call on underlying data for this database or backup. Regardless of status, data is always encrypted at rest.",
          readOnly = true,
        },
        encryptionType = {
          description = "Output only. The type of encryption.",
          enum = {
            "TYPE_UNSPECIFIED",
            "GOOGLE_DEFAULT_ENCRYPTION",
            "CUSTOMER_MANAGED_ENCRYPTION",
          },
          enumDescriptions = {
            "Encryption type was not specified, though data at rest remains encrypted.",
            "The data is encrypted at rest with a key that is fully managed by Google. No key version or status will be populated. This is the default state.",
            "The data is encrypted at rest with a key that is managed by the customer. The active version of the key. `kms_key_version` will be populated, and `encryption_status` may be populated.",
          },
          readOnly = true,
          type = "string",
        },
        kmsKeyVersion = {
          description = "Output only. A Cloud KMS key version that is being used to protect the database or backup.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ExecuteBatchDmlRequest = {
      description = "The request for ExecuteBatchDml.",
      id = "ExecuteBatchDmlRequest",
      properties = {
        requestOptions = {
          ["$ref"] = "RequestOptions",
          description = "Common options for this request.",
        },
        seqno = {
          description = "Required. A per-transaction sequence number used to identify this request. This field makes each request idempotent such that if the request is received multiple times, at most one will succeed. The sequence number must be monotonically increasing within the transaction. If a request arrives for the first time with an out-of-order sequence number, the transaction may be aborted. Replays of previously handled requests will yield the same response as the first execution.",
          format = "int64",
          type = "string",
        },
        statements = {
          description = "Required. The list of statements to execute in this batch. Statements are executed serially, such that the effects of statement `i` are visible to statement `i+1`. Each statement must be a DML statement. Execution stops at the first failed statement; the remaining statements are not executed. Callers must provide at least one statement.",
          items = {
            ["$ref"] = "Statement",
          },
          type = "array",
        },
        transaction = {
          ["$ref"] = "TransactionSelector",
          description = "Required. The transaction to use. Must be a read-write transaction. To protect against replays, single-use transactions are not supported. The caller must either supply an existing transaction ID or begin a new transaction.",
        },
      },
      type = "object",
    },
    ExecuteBatchDmlResponse = {
      description = "The response for ExecuteBatchDml. Contains a list of ResultSet messages, one for each DML statement that has successfully executed, in the same order as the statements in the request. If a statement fails, the status in the response body identifies the cause of the failure. To check for DML statements that failed, use the following approach: 1. Check the status in the response message. The google.rpc.Code enum value `OK` indicates that all statements were executed successfully. 2. If the status was not `OK`, check the number of result sets in the response. If the response contains `N` ResultSet messages, then statement `N+1` in the request failed. Example 1: * Request: 5 DML statements, all executed successfully. * Response: 5 ResultSet messages, with the status `OK`. Example 2: * Request: 5 DML statements. The third statement has a syntax error. * Response: 2 ResultSet messages, and a syntax error (`INVALID_ARGUMENT`) status. The number of ResultSet messages indicates that the third statement failed, and the fourth and fifth statements were not executed.",
      id = "ExecuteBatchDmlResponse",
      properties = {
        resultSets = {
          description = "One ResultSet for each statement in the request that ran successfully, in the same order as the statements in the request. Each ResultSet does not contain any rows. The ResultSetStats in each ResultSet contain the number of rows modified by the statement. Only the first ResultSet in the response contains valid ResultSetMetadata.",
          items = {
            ["$ref"] = "ResultSet",
          },
          type = "array",
        },
        status = {
          ["$ref"] = "Status",
          description = "If all DML statements are executed successfully, the status is `OK`. Otherwise, the error status of the first failed statement.",
        },
      },
      type = "object",
    },
    ExecuteSqlRequest = {
      description = "The request for ExecuteSql and ExecuteStreamingSql.",
      id = "ExecuteSqlRequest",
      properties = {
        paramTypes = {
          additionalProperties = {
            ["$ref"] = "Type",
          },
          description = "It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type `BYTES` and values of type `STRING` both appear in params as JSON strings. In these cases, `param_types` can be used to specify the exact SQL type for some or all of the SQL statement parameters. See the definition of Type for more information about SQL types.",
          type = "object",
        },
        params = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameter names and values that bind to placeholders in the SQL string. A parameter placeholder consists of the `@` character followed by the parameter name (for example, `@firstName`). Parameter names must conform to the naming requirements of identifiers as specified at https://cloud.google.com/spanner/docs/lexical#identifiers. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: `\"WHERE id > @msg_id AND id < @msg_id + 100\"` It is an error to execute a SQL statement with unbound parameters.",
          type = "object",
        },
        partitionToken = {
          description = "If present, results will be restricted to the specified partition previously created using PartitionQuery(). There must be an exact match for the values of fields common to this message and the PartitionQueryRequest message used to create this partition_token.",
          format = "byte",
          type = "string",
        },
        queryMode = {
          description = "Used to control the amount of debugging information returned in ResultSetStats. If partition_token is set, query_mode can only be set to QueryMode.NORMAL.",
          enum = {
            "NORMAL",
            "PLAN",
            "PROFILE",
          },
          enumDescriptions = {
            "The default mode. Only the statement results are returned.",
            "This mode returns only the query plan, without any results or execution statistics information.",
            "This mode returns both the query plan and the execution statistics along with the results.",
          },
          type = "string",
        },
        queryOptions = {
          ["$ref"] = "QueryOptions",
          description = "Query optimizer configuration to use for the given query.",
        },
        requestOptions = {
          ["$ref"] = "RequestOptions",
          description = "Common options for this request.",
        },
        resumeToken = {
          description = "If this request is resuming a previously interrupted SQL statement execution, `resume_token` should be copied from the last PartialResultSet yielded before the interruption. Doing this enables the new SQL statement execution to resume where the last one left off. The rest of the request parameters must exactly match the request that yielded this token.",
          format = "byte",
          type = "string",
        },
        seqno = {
          description = "A per-transaction sequence number used to identify this request. This field makes each request idempotent such that if the request is received multiple times, at most one will succeed. The sequence number must be monotonically increasing within the transaction. If a request arrives for the first time with an out-of-order sequence number, the transaction may be aborted. Replays of previously handled requests will yield the same response as the first execution. Required for DML statements. Ignored for queries.",
          format = "int64",
          type = "string",
        },
        sql = {
          description = "Required. The SQL string.",
          type = "string",
        },
        transaction = {
          ["$ref"] = "TransactionSelector",
          description = "The transaction to use. For queries, if none is provided, the default is a temporary read-only transaction with strong concurrency. Standard DML statements require a read-write transaction. To protect against replays, single-use transactions are not supported. The caller must either supply an existing transaction ID or begin a new transaction. Partitioned DML requires an existing Partitioned DML transaction ID.",
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
    Field = {
      description = "Message representing a single field of a struct.",
      id = "Field",
      properties = {
        name = {
          description = "The name of the field. For reads, this is the column name. For SQL queries, it is the column alias (e.g., `\"Word\"` in the query `\"SELECT 'hello' AS Word\"`), or the column name (e.g., `\"ColName\"` in the query `\"SELECT ColName FROM Table\"`). Some columns might have an empty name (e.g., `\"SELECT UPPER(ColName)\"`). Note that a query result can contain multiple fields with the same name.",
          type = "string",
        },
        type = {
          ["$ref"] = "Type",
          description = "The type of the field.",
        },
      },
      type = "object",
    },
    FreeInstanceMetadata = {
      description = "Free instance specific metadata that is kept even after an instance has been upgraded for tracking purposes.",
      id = "FreeInstanceMetadata",
      properties = {
        expireBehavior = {
          description = "Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or after creation, and before expiration.",
          enum = {
            "EXPIRE_BEHAVIOR_UNSPECIFIED",
            "FREE_TO_PROVISIONED",
            "REMOVE_AFTER_GRACE_PERIOD",
          },
          enumDescriptions = {
            "Not specified.",
            "When the free instance expires, upgrade the instance to a provisioned instance.",
            "When the free instance expires, disable the instance, and delete it after the grace period passes if it has not been upgraded.",
          },
          type = "string",
        },
        expireTime = {
          description = "Output only. Timestamp after which the instance will either be upgraded or scheduled for deletion after a grace period. ExpireBehavior is used to choose between upgrading or scheduling the free instance for deletion. This timestamp is set during the creation of a free instance.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        upgradeTime = {
          description = "Output only. If present, the timestamp at which the free instance was upgraded to a provisioned instance.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GetDatabaseDdlResponse = {
      description = "The response for GetDatabaseDdl.",
      id = "GetDatabaseDdlResponse",
      properties = {
        protoDescriptors = {
          description = "Proto descriptors stored in the database. Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/descriptor.proto). For more details, see protobuffer [self description](https://developers.google.com/protocol-buffers/docs/techniques#self-description).",
          format = "byte",
          type = "string",
        },
        statements = {
          description = "A list of formatted DDL statements defining the schema of the database specified in the request.",
          items = {
            type = "string",
          },
          type = "array",
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
    IndexedHotKey = {
      description = "A message representing a (sparse) collection of hot keys for specific key buckets.",
      id = "IndexedHotKey",
      properties = {
        sparseHotKeys = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "A (sparse) mapping from key bucket index to the index of the specific hot row key for that key bucket. The index of the hot row key can be translated to the actual row key via the ScanData.VisualizationData.indexed_keys repeated field.",
          type = "object",
        },
      },
      type = "object",
    },
    IndexedKeyRangeInfos = {
      description = "A message representing a (sparse) collection of KeyRangeInfos for specific key buckets.",
      id = "IndexedKeyRangeInfos",
      properties = {
        keyRangeInfos = {
          additionalProperties = {
            ["$ref"] = "KeyRangeInfos",
          },
          description = "A (sparse) mapping from key bucket index to the KeyRangeInfos for that key bucket.",
          type = "object",
        },
      },
      type = "object",
    },
    Instance = {
      description = "An isolated set of Cloud Spanner resources on which databases can be hosted.",
      id = "Instance",
      properties = {
        config = {
          description = "Required. The name of the instance's configuration. Values are of the form `projects//instanceConfigs/`. See also InstanceConfig and ListInstanceConfigs.",
          type = "string",
        },
        createTime = {
          description = "Output only. The time at which the instance was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Required. The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.",
          type = "string",
        },
        endpointUris = {
          description = "Deprecated. This field is not populated.",
          items = {
            type = "string",
          },
          type = "array",
        },
        freeInstanceMetadata = {
          ["$ref"] = "FreeInstanceMetadata",
          description = "Free instance metadata. Only populated for free instances.",
        },
        instanceType = {
          description = "The `InstanceType` of the current instance.",
          enum = {
            "INSTANCE_TYPE_UNSPECIFIED",
            "PROVISIONED",
            "FREE_INSTANCE",
          },
          enumDescriptions = {
            "Not specified.",
            "Provisioned instances have dedicated resources, standard usage limits and support.",
            "Free instances provide no guarantee for dedicated resources, [node_count, processing_units] should be 0. They come with stricter usage limits and limited support.",
          },
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + \"_\" + value would prove problematic if we were to allow \"_\" in a future release.",
          type = "object",
        },
        name = {
          description = "Required. A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be between 2 and 64 characters in length.",
          type = "string",
        },
        nodeCount = {
          description = "The number of nodes allocated to this instance. At most one of either node_count or processing_units should be present in the message. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.",
          format = "int32",
          type = "integer",
        },
        processingUnits = {
          description = "The number of processing units allocated to this instance. At most one of processing_units or node_count should be present in the message. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.",
          format = "int32",
          type = "integer",
        },
        state = {
          description = "Output only. The current instance state. For CreateInstance, the state must be either omitted or set to `CREATING`. For UpdateInstance, the state must be either omitted or set to `READY`.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
          },
          enumDescriptions = {
            "Not specified.",
            "The instance is still being created. Resources may not be available yet, and operations such as database creation may not work.",
            "The instance is fully created and ready to do work such as creating databases.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time at which the instance was most recently updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    InstanceConfig = {
      description = "A possible configuration for a Cloud Spanner instance. Configurations define the geographic placement of nodes and their replication.",
      id = "InstanceConfig",
      properties = {
        baseConfig = {
          description = "Base configuration name, e.g. projects//instanceConfigs/nam3, based on which this configuration is created. Only set for user managed configurations. `base_config` must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.",
          type = "string",
        },
        configType = {
          description = "Output only. Whether this instance config is a Google or User Managed Configuration.",
          enum = {
            "TYPE_UNSPECIFIED",
            "GOOGLE_MANAGED",
            "USER_MANAGED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Google managed configuration.",
            "User managed configuration.",
          },
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The name of this instance configuration as it appears in UIs.",
          type = "string",
        },
        etag = {
          description = "etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a instance config from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform instance config updates in order to avoid race conditions: An etag is returned in the response which contains instance configs, and systems are expected to put that etag in the request to update instance config to ensure that their change will be applied to the same version of the instance config. If no etag is provided in the call to update instance config, then the existing instance config is overwritten blindly.",
          type = "string",
        },
        freeInstanceAvailability = {
          description = "Output only. Describes whether free instances are available to be created in this instance config.",
          enum = {
            "FREE_INSTANCE_AVAILABILITY_UNSPECIFIED",
            "AVAILABLE",
            "UNSUPPORTED",
            "DISABLED",
            "QUOTA_EXCEEDED",
          },
          enumDescriptions = {
            "Not specified.",
            "Indicates that free instances are available to be created in this instance config.",
            "Indicates that free instances are not supported in this instance config.",
            "Indicates that free instances are currently not available to be created in this instance config.",
            "Indicates that additional free instances cannot be created in this instance config because the project has reached its limit of free instances.",
          },
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. Therefore, you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + \"_\" + value would prove problematic if we were to allow \"_\" in a future release.",
          type = "object",
        },
        leaderOptions = {
          description = "Allowed values of the \"default_leader\" schema option for databases in instances that use this instance configuration.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "A unique identifier for the instance configuration. Values are of the form `projects//instanceConfigs/a-z*`.",
          type = "string",
        },
        optionalReplicas = {
          description = "Output only. The available optional replicas to choose from for user managed configurations. Populated for Google managed configurations.",
          items = {
            ["$ref"] = "ReplicaInfo",
          },
          readOnly = true,
          type = "array",
        },
        reconciling = {
          description = "Output only. If true, the instance config is being created or updated. If false, there are no ongoing operations for the instance config.",
          readOnly = true,
          type = "boolean",
        },
        replicas = {
          description = "The geographic placement of nodes in this instance configuration and their replication properties.",
          items = {
            ["$ref"] = "ReplicaInfo",
          },
          type = "array",
        },
        state = {
          description = "Output only. The current instance config state.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
          },
          enumDescriptions = {
            "Not specified.",
            "The instance config is still being created.",
            "The instance config is fully created and ready to be used to create instances.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    InstanceOperationProgress = {
      description = "Encapsulates progress related information for a Cloud Spanner long running instance operations.",
      id = "InstanceOperationProgress",
      properties = {
        endTime = {
          description = "If set, the time at which this operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        progressPercent = {
          description = "Percent completion of the operation. Values are between 0 and 100 inclusive.",
          format = "int32",
          type = "integer",
        },
        startTime = {
          description = "Time the request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    KeyRange = {
      description = "KeyRange represents a range of rows in a table or index. A range has a start key and an end key. These keys can be open or closed, indicating if the range includes rows with that key. Keys are represented by lists, where the ith value in the list corresponds to the ith component of the table or index primary key. Individual values are encoded as described here. For example, consider the following table definition: CREATE TABLE UserEvents ( UserName STRING(MAX), EventDate STRING(10) ) PRIMARY KEY(UserName, EventDate); The following keys name rows in this table: \"Bob\", \"2014-09-23\" Since the `UserEvents` table's `PRIMARY KEY` clause names two columns, each `UserEvents` key has two elements; the first is the `UserName`, and the second is the `EventDate`. Key ranges with multiple components are interpreted lexicographically by component using the table or index key's declared sort order. For example, the following range returns all events for user `\"Bob\"` that occurred in the year 2015: \"start_closed\": [\"Bob\", \"2015-01-01\"] \"end_closed\": [\"Bob\", \"2015-12-31\"] Start and end keys can omit trailing key components. This affects the inclusion and exclusion of rows that exactly match the provided key components: if the key is closed, then rows that exactly match the provided components are included; if the key is open, then rows that exactly match are not included. For example, the following range includes all events for `\"Bob\"` that occurred during and after the year 2000: \"start_closed\": [\"Bob\", \"2000-01-01\"] \"end_closed\": [\"Bob\"] The next example retrieves all events for `\"Bob\"`: \"start_closed\": [\"Bob\"] \"end_closed\": [\"Bob\"] To retrieve events before the year 2000: \"start_closed\": [\"Bob\"] \"end_open\": [\"Bob\", \"2000-01-01\"] The following range includes all rows in the table: \"start_closed\": [] \"end_closed\": [] This range returns all users whose `UserName` begins with any character from A to C: \"start_closed\": [\"A\"] \"end_open\": [\"D\"] This range returns all users whose `UserName` begins with B: \"start_closed\": [\"B\"] \"end_open\": [\"C\"] Key ranges honor column sort order. For example, suppose a table is defined as follows: CREATE TABLE DescendingSortedTable { Key INT64, ... ) PRIMARY KEY(Key DESC); The following range retrieves all rows with key values between 1 and 100 inclusive: \"start_closed\": [\"100\"] \"end_closed\": [\"1\"] Note that 100 is passed as the start, and 1 is passed as the end, because `Key` is a descending column in the schema.",
      id = "KeyRange",
      properties = {
        endClosed = {
          description = "If the end is closed, then the range includes all rows whose first `len(end_closed)` key columns exactly match `end_closed`.",
          items = {
            type = "any",
          },
          type = "array",
        },
        endOpen = {
          description = "If the end is open, then the range excludes rows whose first `len(end_open)` key columns exactly match `end_open`.",
          items = {
            type = "any",
          },
          type = "array",
        },
        startClosed = {
          description = "If the start is closed, then the range includes all rows whose first `len(start_closed)` key columns exactly match `start_closed`.",
          items = {
            type = "any",
          },
          type = "array",
        },
        startOpen = {
          description = "If the start is open, then the range excludes rows whose first `len(start_open)` key columns exactly match `start_open`.",
          items = {
            type = "any",
          },
          type = "array",
        },
      },
      type = "object",
    },
    KeyRangeInfo = {
      description = "A message representing information for a key range (possibly one key).",
      id = "KeyRangeInfo",
      properties = {
        contextValues = {
          description = "The list of context values for this key range.",
          items = {
            ["$ref"] = "ContextValue",
          },
          type = "array",
        },
        endKeyIndex = {
          description = "The index of the end key in indexed_keys.",
          format = "int32",
          type = "integer",
        },
        info = {
          ["$ref"] = "LocalizedString",
          description = "Information about this key range, for all metrics.",
        },
        keysCount = {
          description = "The number of keys this range covers.",
          format = "int64",
          type = "string",
        },
        metric = {
          ["$ref"] = "LocalizedString",
          description = "The name of the metric. e.g. \"latency\".",
        },
        startKeyIndex = {
          description = "The index of the start key in indexed_keys.",
          format = "int32",
          type = "integer",
        },
        timeOffset = {
          description = "The time offset. This is the time since the start of the time interval.",
          format = "google-duration",
          type = "string",
        },
        unit = {
          ["$ref"] = "LocalizedString",
          description = "The unit of the metric. This is an unstructured field and will be mapped as is to the user.",
        },
        value = {
          description = "The value of the metric.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    KeyRangeInfos = {
      description = "A message representing a list of specific information for multiple key ranges.",
      id = "KeyRangeInfos",
      properties = {
        infos = {
          description = "The list individual KeyRangeInfos.",
          items = {
            ["$ref"] = "KeyRangeInfo",
          },
          type = "array",
        },
        totalSize = {
          description = "The total size of the list of all KeyRangeInfos. This may be larger than the number of repeated messages above. If that is the case, this number may be used to determine how many are not being shown.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    KeySet = {
      description = "`KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the keys are expected to be in the same table or index. The keys need not be sorted in any particular way. If the same key is specified multiple times in the set (for example if two ranges, two keys, or a key and a range overlap), Cloud Spanner behaves as if the key were only specified once.",
      id = "KeySet",
      properties = {
        all = {
          description = "For convenience `all` can be set to `true` to indicate that this `KeySet` matches all keys in the table or index. Note that any keys specified in `keys` or `ranges` are only yielded once.",
          type = "boolean",
        },
        keys = {
          description = "A list of specific keys. Entries in `keys` should have exactly as many elements as there are columns in the primary or index key with which this `KeySet` is used. Individual key values are encoded as described here.",
          items = {
            items = {
              type = "any",
            },
            type = "array",
          },
          type = "array",
        },
        ranges = {
          description = "A list of key ranges. See KeyRange for more information about key range specifications.",
          items = {
            ["$ref"] = "KeyRange",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListBackupOperationsResponse = {
      description = "The response for ListBackupOperations.",
      id = "ListBackupOperationsResponse",
      properties = {
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListBackupOperations call to fetch more of the matching metadata.",
          type = "string",
        },
        operations = {
          description = "The list of matching backup long-running operations. Each operation's name will be prefixed by the backup's name. The operation's metadata field type `metadata.type_url` describes the type of the metadata. Operations returned include those that are pending or have completed/failed/canceled within the last 7 days. Operations returned are ordered by `operation.metadata.value.progress.start_time` in descending order starting from the most recently started operation.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListBackupsResponse = {
      description = "The response for ListBackups.",
      id = "ListBackupsResponse",
      properties = {
        backups = {
          description = "The list of matching backups. Backups returned are ordered by `create_time` in descending order, starting from the most recent `create_time`.",
          items = {
            ["$ref"] = "Backup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListBackups call to fetch more of the matching backups.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDatabaseOperationsResponse = {
      description = "The response for ListDatabaseOperations.",
      id = "ListDatabaseOperationsResponse",
      properties = {
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListDatabaseOperations call to fetch more of the matching metadata.",
          type = "string",
        },
        operations = {
          description = "The list of matching database long-running operations. Each operation's name will be prefixed by the database's name. The operation's metadata field type `metadata.type_url` describes the type of the metadata.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDatabaseRolesResponse = {
      description = "The response for ListDatabaseRoles.",
      id = "ListDatabaseRolesResponse",
      properties = {
        databaseRoles = {
          description = "Database roles that matched the request.",
          items = {
            ["$ref"] = "DatabaseRole",
          },
          type = "array",
        },
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListDatabaseRoles call to fetch more of the matching roles.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDatabasesResponse = {
      description = "The response for ListDatabases.",
      id = "ListDatabasesResponse",
      properties = {
        databases = {
          description = "Databases that matched the request.",
          items = {
            ["$ref"] = "Database",
          },
          type = "array",
        },
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListDatabases call to fetch more of the matching databases.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInstanceConfigOperationsResponse = {
      description = "The response for ListInstanceConfigOperations.",
      id = "ListInstanceConfigOperationsResponse",
      properties = {
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListInstanceConfigOperations call to fetch more of the matching metadata.",
          type = "string",
        },
        operations = {
          description = "The list of matching instance config long-running operations. Each operation's name will be prefixed by the instance config's name. The operation's metadata field type `metadata.type_url` describes the type of the metadata.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListInstanceConfigsResponse = {
      description = "The response for ListInstanceConfigs.",
      id = "ListInstanceConfigsResponse",
      properties = {
        instanceConfigs = {
          description = "The list of requested instance configurations.",
          items = {
            ["$ref"] = "InstanceConfig",
          },
          type = "array",
        },
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListInstanceConfigs call to fetch more of the matching instance configurations.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInstancesResponse = {
      description = "The response for ListInstances.",
      id = "ListInstancesResponse",
      properties = {
        instances = {
          description = "The list of requested instances.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListInstances call to fetch more of the matching instances.",
          type = "string",
        },
        unreachable = {
          description = "The list of unreachable instances. It includes the names of instances whose metadata could not be retrieved within instance_deadline.",
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
    ListScansResponse = {
      description = "Response method from the ListScans method.",
      id = "ListScansResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        scans = {
          description = "Available scans based on the list query parameters.",
          items = {
            ["$ref"] = "Scan",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSessionsResponse = {
      description = "The response for ListSessions.",
      id = "ListSessionsResponse",
      properties = {
        nextPageToken = {
          description = "`next_page_token` can be sent in a subsequent ListSessions call to fetch more of the matching sessions.",
          type = "string",
        },
        sessions = {
          description = "The list of requested sessions.",
          items = {
            ["$ref"] = "Session",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocalizedString = {
      description = "A message representing a user-facing string whose value may need to be translated before being displayed.",
      id = "LocalizedString",
      properties = {
        args = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of arguments used when creating the localized message. Keys represent parameter names which may be used by the localized version when substituting dynamic values.",
          type = "object",
        },
        message = {
          description = "The canonical English version of this message. If no token is provided or the front-end has no message associated with the token, this text will be displayed as-is.",
          type = "string",
        },
        token = {
          description = "The token identifying the message, e.g. 'METRIC_READ_CPU'. This should be unique within the service.",
          type = "string",
        },
      },
      type = "object",
    },
    Metric = {
      description = "A message representing the actual monitoring data, values for each key bucket over time, of a metric.",
      id = "Metric",
      properties = {
        aggregation = {
          description = "The aggregation function used to aggregate each key bucket",
          enum = {
            "AGGREGATION_UNSPECIFIED",
            "MAX",
            "SUM",
          },
          enumDescriptions = {
            "Required default value.",
            "Use the maximum of all values.",
            "Use the sum of all values.",
          },
          type = "string",
        },
        category = {
          ["$ref"] = "LocalizedString",
          description = "The category of the metric, e.g. \"Activity\", \"Alerts\", \"Reads\", etc.",
        },
        derived = {
          ["$ref"] = "DerivedMetric",
          description = "The references to numerator and denominator metrics for a derived metric.",
        },
        displayLabel = {
          ["$ref"] = "LocalizedString",
          description = "The displayed label of the metric.",
        },
        hasNonzeroData = {
          description = "Whether the metric has any non-zero data.",
          type = "boolean",
        },
        hotValue = {
          description = "The value that is considered hot for the metric. On a per metric basis hotness signals high utilization and something that might potentially be a cause for concern by the end user. hot_value is used to calibrate and scale visual color scales.",
          format = "float",
          type = "number",
        },
        indexedHotKeys = {
          additionalProperties = {
            ["$ref"] = "IndexedHotKey",
          },
          description = "The (sparse) mapping from time index to an IndexedHotKey message, representing those time intervals for which there are hot keys.",
          type = "object",
        },
        indexedKeyRangeInfos = {
          additionalProperties = {
            ["$ref"] = "IndexedKeyRangeInfos",
          },
          description = "The (sparse) mapping from time interval index to an IndexedKeyRangeInfos message, representing those time intervals for which there are informational messages concerning key ranges.",
          type = "object",
        },
        info = {
          ["$ref"] = "LocalizedString",
          description = "Information about the metric.",
        },
        matrix = {
          ["$ref"] = "MetricMatrix",
          description = "The data for the metric as a matrix.",
        },
        unit = {
          ["$ref"] = "LocalizedString",
          description = "The unit of the metric.",
        },
        visible = {
          description = "Whether the metric is visible to the end user.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MetricMatrix = {
      description = "A message representing a matrix of floats.",
      id = "MetricMatrix",
      properties = {
        rows = {
          description = "The rows of the matrix.",
          items = {
            ["$ref"] = "MetricMatrixRow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MetricMatrixRow = {
      description = "A message representing a row of a matrix of floats.",
      id = "MetricMatrixRow",
      properties = {
        cols = {
          description = "The columns of the row.",
          items = {
            format = "float",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Mutation = {
      description = "A modification to one or more Cloud Spanner rows. Mutations can be applied to a Cloud Spanner database by sending them in a Commit call.",
      id = "Mutation",
      properties = {
        delete = {
          ["$ref"] = "Delete",
          description = "Delete rows from a table. Succeeds whether or not the named rows were present.",
        },
        insert = {
          ["$ref"] = "Write",
          description = "Insert new rows in a table. If any of the rows already exist, the write or transaction fails with error `ALREADY_EXISTS`.",
        },
        insertOrUpdate = {
          ["$ref"] = "Write",
          description = "Like insert, except that if the row already exists, then its column values are overwritten with the ones provided. Any column values not explicitly written are preserved. When using insert_or_update, just as when using insert, all `NOT NULL` columns in the table must be given a value. This holds true even when the row already exists and will therefore actually be updated.",
        },
        replace = {
          ["$ref"] = "Write",
          description = "Like insert, except that if the row already exists, it is deleted, and the column values provided are inserted instead. Unlike insert_or_update, this means any values not explicitly written become `NULL`. In an interleaved table, if you create the child table with the `ON DELETE CASCADE` annotation, then replacing a parent row also deletes the child rows. Otherwise, you must delete the child rows before you replace the parent row.",
        },
        update = {
          ["$ref"] = "Write",
          description = "Update existing rows in a table. If any of the rows does not already exist, the transaction fails with error `NOT_FOUND`.",
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
    OperationProgress = {
      description = "Encapsulates progress related information for a Cloud Spanner long running operation.",
      id = "OperationProgress",
      properties = {
        endTime = {
          description = "If set, the time at which this operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        progressPercent = {
          description = "Percent completion of the operation. Values are between 0 and 100 inclusive.",
          format = "int32",
          type = "integer",
        },
        startTime = {
          description = "Time the request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    OptimizeRestoredDatabaseMetadata = {
      description = "Metadata type for the long-running operation used to track the progress of optimizations performed on a newly restored database. This long-running operation is automatically created by the system after the successful completion of a database restore, and cannot be cancelled.",
      id = "OptimizeRestoredDatabaseMetadata",
      properties = {
        name = {
          description = "Name of the restored database being optimized.",
          type = "string",
        },
        progress = {
          ["$ref"] = "OperationProgress",
          description = "The progress of the post-restore optimizations.",
        },
      },
      type = "object",
    },
    PartialResultSet = {
      description = "Partial results from a streaming read or SQL query. Streaming reads and SQL queries better tolerate large result sets, large rows, and large values, but are a little trickier to consume.",
      id = "PartialResultSet",
      properties = {
        chunkedValue = {
          description = "If true, then the final value in values is chunked, and must be combined with more values from subsequent `PartialResultSet`s to obtain a complete field value.",
          type = "boolean",
        },
        metadata = {
          ["$ref"] = "ResultSetMetadata",
          description = "Metadata about the result set, such as row type information. Only present in the first response.",
        },
        resumeToken = {
          description = "Streaming calls might be interrupted for a variety of reasons, such as TCP connection loss. If this occurs, the stream of results can be resumed by re-sending the original request and including `resume_token`. Note that executing any other transaction in the same session invalidates the token.",
          format = "byte",
          type = "string",
        },
        stats = {
          ["$ref"] = "ResultSetStats",
          description = "Query plan and execution statistics for the statement that produced this streaming result set. These can be requested by setting ExecuteSqlRequest.query_mode and are sent only once with the last response in the stream. This field will also be present in the last response for DML statements.",
        },
        values = {
          description = "A streamed result set consists of a stream of values, which might be split into many `PartialResultSet` messages to accommodate large rows and/or large values. Every N complete values defines a row, where N is equal to the number of entries in metadata.row_type.fields. Most values are encoded based on type as described here. It is possible that the last value in values is \"chunked\", meaning that the rest of the value is sent in subsequent `PartialResultSet`(s). This is denoted by the chunked_value field. Two or more chunked values can be merged to form a complete value as follows: * `bool/number/null`: cannot be chunked * `string`: concatenate the strings * `list`: concatenate the lists. If the last element in a list is a `string`, `list`, or `object`, merge it with the first element in the next list by applying these rules recursively. * `object`: concatenate the (field name, field value) pairs. If a field name is duplicated, then apply these rules recursively to merge the field values. Some examples of merging: # Strings are concatenated. \"foo\", \"bar\" => \"foobar\" # Lists of non-strings are concatenated. [2, 3], [4] => [2, 3, 4] # Lists are concatenated, but the last and first elements are merged # because they are strings. [\"a\", \"b\"], [\"c\", \"d\"] => [\"a\", \"bc\", \"d\"] # Lists are concatenated, but the last and first elements are merged # because they are lists. Recursively, the last and first elements # of the inner lists are merged because they are strings. [\"a\", [\"b\", \"c\"]], [[\"d\"], \"e\"] => [\"a\", [\"b\", \"cd\"], \"e\"] # Non-overlapping object fields are combined. {\"a\": \"1\"}, {\"b\": \"2\"} => {\"a\": \"1\", \"b\": 2\"} # Overlapping object fields are merged. {\"a\": \"1\"}, {\"a\": \"2\"} => {\"a\": \"12\"} # Examples of merging objects containing lists of strings. {\"a\": [\"1\"]}, {\"a\": [\"2\"]} => {\"a\": [\"12\"]} For a more complete example, suppose a streaming SQL query is yielding a result set whose rows contain a single string field. The following `PartialResultSet`s might be yielded: { \"metadata\": { ... } \"values\": [\"Hello\", \"W\"] \"chunked_value\": true \"resume_token\": \"Af65...\" } { \"values\": [\"orl\"] \"chunked_value\": true } { \"values\": [\"d\"] \"resume_token\": \"Zx1B...\" } This sequence of `PartialResultSet`s encodes two rows, one containing the field value `\"Hello\"`, and a second containing the field value `\"World\" = \"W\" + \"orl\" + \"d\"`. Not all `PartialResultSet`s contain a `resume_token`. Execution can only be resumed from a previously yielded `resume_token`. For the above sequence of `PartialResultSet`s, resuming the query with `\"resume_token\": \"Af65...\"` will yield results from the `PartialResultSet` with value `[\"orl\"]`.",
          items = {
            type = "any",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Partition = {
      description = "Information returned for each partition returned in a PartitionResponse.",
      id = "Partition",
      properties = {
        partitionToken = {
          description = "This token can be passed to Read, StreamingRead, ExecuteSql, or ExecuteStreamingSql requests to restrict the results to those identified by this partition token.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    PartitionOptions = {
      description = "Options for a PartitionQueryRequest and PartitionReadRequest.",
      id = "PartitionOptions",
      properties = {
        maxPartitions = {
          description = "**Note:** This hint is currently ignored by PartitionQuery and PartitionRead requests. The desired maximum number of partitions to return. For example, this may be set to the number of workers available. The default for this option is currently 10,000. The maximum value is currently 200,000. This is only a hint. The actual number of partitions returned may be smaller or larger than this maximum count request.",
          format = "int64",
          type = "string",
        },
        partitionSizeBytes = {
          description = "**Note:** This hint is currently ignored by PartitionQuery and PartitionRead requests. The desired data size for each partition generated. The default for this option is currently 1 GiB. This is only a hint. The actual size of each partition may be smaller or larger than this size request.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PartitionQueryRequest = {
      description = "The request for PartitionQuery",
      id = "PartitionQueryRequest",
      properties = {
        paramTypes = {
          additionalProperties = {
            ["$ref"] = "Type",
          },
          description = "It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type `BYTES` and values of type `STRING` both appear in params as JSON strings. In these cases, `param_types` can be used to specify the exact SQL type for some or all of the SQL query parameters. See the definition of Type for more information about SQL types.",
          type = "object",
        },
        params = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameter names and values that bind to placeholders in the SQL string. A parameter placeholder consists of the `@` character followed by the parameter name (for example, `@firstName`). Parameter names can contain letters, numbers, and underscores. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: `\"WHERE id > @msg_id AND id < @msg_id + 100\"` It is an error to execute a SQL statement with unbound parameters.",
          type = "object",
        },
        partitionOptions = {
          ["$ref"] = "PartitionOptions",
          description = "Additional options that affect how many partitions are created.",
        },
        sql = {
          description = "Required. The query request to generate partitions for. The request will fail if the query is not root partitionable. The query plan of a root partitionable query has a single distributed union operator. A distributed union operator conceptually divides one or more tables into multiple splits, remotely evaluates a subquery independently on each split, and then unions all results. This must not contain DML commands, such as INSERT, UPDATE, or DELETE. Use ExecuteStreamingSql with a PartitionedDml transaction for large, partition-friendly DML operations.",
          type = "string",
        },
        transaction = {
          ["$ref"] = "TransactionSelector",
          description = "Read only snapshot transactions are supported, read/write and single use transactions are not.",
        },
      },
      type = "object",
    },
    PartitionReadRequest = {
      description = "The request for PartitionRead",
      id = "PartitionReadRequest",
      properties = {
        columns = {
          description = "The columns of table to be returned for each row matching this request.",
          items = {
            type = "string",
          },
          type = "array",
        },
        index = {
          description = "If non-empty, the name of an index on table. This index is used instead of the table primary key when interpreting key_set and sorting result rows. See key_set for further information.",
          type = "string",
        },
        keySet = {
          ["$ref"] = "KeySet",
          description = "Required. `key_set` identifies the rows to be yielded. `key_set` names the primary keys of the rows in table to be yielded, unless index is present. If index is present, then key_set instead names index keys in index. It is not an error for the `key_set` to name rows that do not exist in the database. Read yields nothing for nonexistent rows.",
        },
        partitionOptions = {
          ["$ref"] = "PartitionOptions",
          description = "Additional options that affect how many partitions are created.",
        },
        table = {
          description = "Required. The name of the table in the database to be read.",
          type = "string",
        },
        transaction = {
          ["$ref"] = "TransactionSelector",
          description = "Read only snapshot transactions are supported, read/write and single use transactions are not.",
        },
      },
      type = "object",
    },
    PartitionResponse = {
      description = "The response for PartitionQuery or PartitionRead",
      id = "PartitionResponse",
      properties = {
        partitions = {
          description = "Partitions created by this request.",
          items = {
            ["$ref"] = "Partition",
          },
          type = "array",
        },
        transaction = {
          ["$ref"] = "Transaction",
          description = "Transaction created by this request.",
        },
      },
      type = "object",
    },
    PartitionedDml = {
      description = "Message type to initiate a Partitioned DML transaction.",
      id = "PartitionedDml",
      properties = {},
      type = "object",
    },
    PlanNode = {
      description = "Node information for nodes appearing in a QueryPlan.plan_nodes.",
      id = "PlanNode",
      properties = {
        childLinks = {
          description = "List of child node `index`es and their relationship to this parent.",
          items = {
            ["$ref"] = "ChildLink",
          },
          type = "array",
        },
        displayName = {
          description = "The display name for the node.",
          type = "string",
        },
        executionStats = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The execution statistics associated with the node, contained in a group of key-value pairs. Only present if the plan was returned as a result of a profile query. For example, number of executions, number of rows/time per execution etc.",
          type = "object",
        },
        index = {
          description = "The `PlanNode`'s index in node list.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Used to determine the type of node. May be needed for visualizing different kinds of nodes differently. For example, If the node is a SCALAR node, it will have a condensed representation which can be used to directly embed a description of the node in its parent.",
          enum = {
            "KIND_UNSPECIFIED",
            "RELATIONAL",
            "SCALAR",
          },
          enumDescriptions = {
            "Not specified.",
            "Denotes a Relational operator node in the expression tree. Relational operators represent iterative processing of rows during query execution. For example, a `TableScan` operation that reads rows from a table.",
            "Denotes a Scalar node in the expression tree. Scalar nodes represent non-iterable entities in the query plan. For example, constants or arithmetic operators appearing inside predicate expressions or references to column names.",
          },
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Attributes relevant to the node contained in a group of key-value pairs. For example, a Parameter Reference node could have the following information in its metadata: { \"parameter_reference\": \"param1\", \"parameter_type\": \"array\" }",
          type = "object",
        },
        shortRepresentation = {
          ["$ref"] = "ShortRepresentation",
          description = "Condensed representation for SCALAR nodes.",
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
    PrefixNode = {
      description = "A message representing a key prefix node in the key prefix hierarchy. for eg. Bigtable keyspaces are lexicographically ordered mappings of keys to values. Keys often have a shared prefix structure where users use the keys to organize data. Eg ///employee In this case Keysight will possibly use one node for a company and reuse it for all employees that fall under the company. Doing so improves legibility in the UI.",
      id = "PrefixNode",
      properties = {
        dataSourceNode = {
          description = "Whether this corresponds to a data_source name.",
          type = "boolean",
        },
        depth = {
          description = "The depth in the prefix hierarchy.",
          format = "int32",
          type = "integer",
        },
        endIndex = {
          description = "The index of the end key bucket of the range that this node spans.",
          format = "int32",
          type = "integer",
        },
        startIndex = {
          description = "The index of the start key bucket of the range that this node spans.",
          format = "int32",
          type = "integer",
        },
        word = {
          description = "The string represented by the prefix node.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryOptions = {
      description = "Query optimizer configuration.",
      id = "QueryOptions",
      properties = {
        optimizerStatisticsPackage = {
          description = "An option to control the selection of optimizer statistics package. This parameter allows individual queries to use a different query optimizer statistics package. Specifying `latest` as a value instructs Cloud Spanner to use the latest generated statistics package. If not specified, Cloud Spanner uses the statistics package set at the database level options, or the latest package if the database option is not set. The statistics package requested by the query has to be exempt from garbage collection. This can be achieved with the following DDL statement: ``` ALTER STATISTICS SET OPTIONS (allow_gc=false) ``` The list of available statistics packages can be queried from `INFORMATION_SCHEMA.SPANNER_STATISTICS`. Executing a SQL statement with an invalid optimizer statistics package or with a statistics package that allows garbage collection fails with an `INVALID_ARGUMENT` error.",
          type = "string",
        },
        optimizerVersion = {
          description = "An option to control the selection of optimizer version. This parameter allows individual queries to pick different query optimizer versions. Specifying `latest` as a value instructs Cloud Spanner to use the latest supported query optimizer version. If not specified, Cloud Spanner uses the optimizer version set at the database level options. Any other positive integer (from the list of supported optimizer versions) overrides the default optimizer version for query execution. The list of supported optimizer versions can be queried from SPANNER_SYS.SUPPORTED_OPTIMIZER_VERSIONS. Executing a SQL statement with an invalid optimizer version fails with an `INVALID_ARGUMENT` error. See https://cloud.google.com/spanner/docs/query-optimizer/manage-query-optimizer for more information on managing the query optimizer. The `optimizer_version` statement hint has precedence over this setting.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryPlan = {
      description = "Contains an ordered list of nodes appearing in the query plan.",
      id = "QueryPlan",
      properties = {
        planNodes = {
          description = "The nodes in the query plan. Plan nodes are returned in pre-order starting with the plan root. Each PlanNode's `id` corresponds to its index in `plan_nodes`.",
          items = {
            ["$ref"] = "PlanNode",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReadOnly = {
      description = "Message type to initiate a read-only transaction.",
      id = "ReadOnly",
      properties = {
        exactStaleness = {
          description = "Executes all reads at a timestamp that is `exact_staleness` old. The timestamp is chosen soon after the read is started. Guarantees that all writes that have committed more than the specified number of seconds ago are visible. Because Cloud Spanner chooses the exact timestamp, this mode works even if the client's local clock is substantially skewed from Cloud Spanner commit timestamps. Useful for reading at nearby replicas without the distributed timestamp negotiation overhead of `max_staleness`.",
          format = "google-duration",
          type = "string",
        },
        maxStaleness = {
          description = "Read data at a timestamp >= `NOW - max_staleness` seconds. Guarantees that all writes that have committed more than the specified number of seconds ago are visible. Because Cloud Spanner chooses the exact timestamp, this mode works even if the client's local clock is substantially skewed from Cloud Spanner commit timestamps. Useful for reading the freshest data available at a nearby replica, while bounding the possible staleness if the local replica has fallen behind. Note that this option can only be used in single-use transactions.",
          format = "google-duration",
          type = "string",
        },
        minReadTimestamp = {
          description = "Executes all reads at a timestamp >= `min_read_timestamp`. This is useful for requesting fresher data than some previous read, or data that is fresh enough to observe the effects of some previously committed transaction whose timestamp is known. Note that this option can only be used in single-use transactions. A timestamp in RFC3339 UTC \\\"Zulu\\\" format, accurate to nanoseconds. Example: `\"2014-10-02T15:01:23.045123456Z\"`.",
          format = "google-datetime",
          type = "string",
        },
        readTimestamp = {
          description = "Executes all reads at the given timestamp. Unlike other modes, reads at a specific timestamp are repeatable; the same read at the same timestamp always returns the same data. If the timestamp is in the future, the read will block until the specified timestamp, modulo the read's deadline. Useful for large scale consistent reads such as mapreduces, or for coordinating many reads against a consistent snapshot of the data. A timestamp in RFC3339 UTC \\\"Zulu\\\" format, accurate to nanoseconds. Example: `\"2014-10-02T15:01:23.045123456Z\"`.",
          format = "google-datetime",
          type = "string",
        },
        returnReadTimestamp = {
          description = "If true, the Cloud Spanner-selected read timestamp is included in the Transaction message that describes the transaction.",
          type = "boolean",
        },
        strong = {
          description = "Read at a timestamp where all previously committed transactions are visible.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ReadRequest = {
      description = "The request for Read and StreamingRead.",
      id = "ReadRequest",
      properties = {
        columns = {
          description = "Required. The columns of table to be returned for each row matching this request.",
          items = {
            type = "string",
          },
          type = "array",
        },
        index = {
          description = "If non-empty, the name of an index on table. This index is used instead of the table primary key when interpreting key_set and sorting result rows. See key_set for further information.",
          type = "string",
        },
        keySet = {
          ["$ref"] = "KeySet",
          description = "Required. `key_set` identifies the rows to be yielded. `key_set` names the primary keys of the rows in table to be yielded, unless index is present. If index is present, then key_set instead names index keys in index. If the partition_token field is empty, rows are yielded in table primary key order (if index is empty) or index key order (if index is non-empty). If the partition_token field is not empty, rows will be yielded in an unspecified order. It is not an error for the `key_set` to name rows that do not exist in the database. Read yields nothing for nonexistent rows.",
        },
        limit = {
          description = "If greater than zero, only the first `limit` rows are yielded. If `limit` is zero, the default is no limit. A limit cannot be specified if `partition_token` is set.",
          format = "int64",
          type = "string",
        },
        partitionToken = {
          description = "If present, results will be restricted to the specified partition previously created using PartitionRead(). There must be an exact match for the values of fields common to this message and the PartitionReadRequest message used to create this partition_token.",
          format = "byte",
          type = "string",
        },
        requestOptions = {
          ["$ref"] = "RequestOptions",
          description = "Common options for this request.",
        },
        resumeToken = {
          description = "If this request is resuming a previously interrupted read, `resume_token` should be copied from the last PartialResultSet yielded before the interruption. Doing this enables the new read to resume where the last read left off. The rest of the request parameters must exactly match the request that yielded this token.",
          format = "byte",
          type = "string",
        },
        table = {
          description = "Required. The name of the table in the database to be read.",
          type = "string",
        },
        transaction = {
          ["$ref"] = "TransactionSelector",
          description = "The transaction to use. If none is provided, the default is a temporary read-only transaction with strong concurrency.",
        },
      },
      type = "object",
    },
    ReadWrite = {
      description = "Message type to initiate a read-write transaction. Currently this transaction type has no options.",
      id = "ReadWrite",
      properties = {
        readLockMode = {
          description = "Read lock mode for the transaction.",
          enum = {
            "READ_LOCK_MODE_UNSPECIFIED",
            "PESSIMISTIC",
            "OPTIMISTIC",
          },
          enumDescriptions = {
            "Default value. If the value is not specified, the pessimistic read lock is used.",
            "Pessimistic lock mode. Read locks are acquired immediately on read.",
            "Optimistic lock mode. Locks for reads within the transaction are not acquired on read. Instead the locks are acquired on a commit to validate that read/queried data has not changed since the transaction started.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ReplicaInfo = {
      id = "ReplicaInfo",
      properties = {
        defaultLeaderLocation = {
          description = "If true, this location is designated as the default leader location where leader replicas are placed. See the [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types) for more details.",
          type = "boolean",
        },
        location = {
          description = "The location of the serving resources, e.g. \"us-central1\".",
          type = "string",
        },
        type = {
          description = "The type of replica.",
          enum = {
            "TYPE_UNSPECIFIED",
            "READ_WRITE",
            "READ_ONLY",
            "WITNESS",
          },
          enumDescriptions = {
            "Not specified.",
            "Read-write replicas support both reads and writes. These replicas: * Maintain a full copy of your data. * Serve reads. * Can vote whether to commit a write. * Participate in leadership election. * Are eligible to become a leader.",
            "Read-only replicas only support reads (not writes). Read-only replicas: * Maintain a full copy of your data. * Serve reads. * Do not participate in voting to commit writes. * Are not eligible to become a leader.",
            "Witness replicas don't support reads but do participate in voting to commit writes. Witness replicas: * Do not maintain a full copy of data. * Do not serve reads. * Vote whether to commit writes. * Participate in leader election but are not eligible to become leader.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RequestOptions = {
      description = "Common request options for various APIs.",
      id = "RequestOptions",
      properties = {
        priority = {
          description = "Priority for the request.",
          enum = {
            "PRIORITY_UNSPECIFIED",
            "PRIORITY_LOW",
            "PRIORITY_MEDIUM",
            "PRIORITY_HIGH",
          },
          enumDescriptions = {
            "`PRIORITY_UNSPECIFIED` is equivalent to `PRIORITY_HIGH`.",
            "This specifies that the request is low priority.",
            "This specifies that the request is medium priority.",
            "This specifies that the request is high priority.",
          },
          type = "string",
        },
        requestTag = {
          description = "A per-request tag which can be applied to queries or reads, used for statistics collection. Both request_tag and transaction_tag can be specified for a read or query that belongs to a transaction. This field is ignored for requests where it's not applicable (e.g. CommitRequest). Legal characters for `request_tag` values are all printable characters (ASCII 32 - 126) and the length of a request_tag is limited to 50 characters. Values that exceed this limit are truncated. Any leading underscore (_) characters will be removed from the string.",
          type = "string",
        },
        transactionTag = {
          description = "A tag used for statistics collection about this transaction. Both request_tag and transaction_tag can be specified for a read or query that belongs to a transaction. The value of transaction_tag should be the same for all requests belonging to the same transaction. If this request doesn't belong to any transaction, transaction_tag will be ignored. Legal characters for `transaction_tag` values are all printable characters (ASCII 32 - 126) and the length of a transaction_tag is limited to 50 characters. Values that exceed this limit are truncated. Any leading underscore (_) characters will be removed from the string.",
          type = "string",
        },
      },
      type = "object",
    },
    RestoreDatabaseEncryptionConfig = {
      description = "Encryption configuration for the restored database.",
      id = "RestoreDatabaseEncryptionConfig",
      properties = {
        encryptionType = {
          description = "Required. The encryption type of the restored database.",
          enum = {
            "ENCRYPTION_TYPE_UNSPECIFIED",
            "USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION",
            "GOOGLE_DEFAULT_ENCRYPTION",
            "CUSTOMER_MANAGED_ENCRYPTION",
          },
          enumDescriptions = {
            "Unspecified. Do not use.",
            "This is the default option when encryption_config is not specified.",
            "Use Google default encryption.",
            "Use customer managed encryption. If specified, `kms_key_name` must must contain a valid Cloud KMS key.",
          },
          type = "string",
        },
        kmsKeyName = {
          description = "Optional. The Cloud KMS key that will be used to encrypt/decrypt the restored database. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.",
          type = "string",
        },
      },
      type = "object",
    },
    RestoreDatabaseMetadata = {
      description = "Metadata type for the long-running operation returned by RestoreDatabase.",
      id = "RestoreDatabaseMetadata",
      properties = {
        backupInfo = {
          ["$ref"] = "BackupInfo",
          description = "Information about the backup used to restore the database.",
        },
        cancelTime = {
          description = "The time at which cancellation of this operation was received. Operations.CancelOperation starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "Name of the database being created and restored to.",
          type = "string",
        },
        optimizeDatabaseOperationName = {
          description = "If exists, the name of the long-running operation that will be used to track the post-restore optimization process to optimize the performance of the restored database, and remove the dependency on the restore source. The name is of the form `projects//instances//databases//operations/` where the is the name of database being created and restored to. The metadata type of the long-running operation is OptimizeRestoredDatabaseMetadata. This long-running operation will be automatically created by the system after the RestoreDatabase long-running operation completes successfully. This operation will not be created if the restore was not successful.",
          type = "string",
        },
        progress = {
          ["$ref"] = "OperationProgress",
          description = "The progress of the RestoreDatabase operation.",
        },
        sourceType = {
          description = "The type of the restore source.",
          enum = {
            "TYPE_UNSPECIFIED",
            "BACKUP",
          },
          enumDescriptions = {
            "No restore associated.",
            "A backup was used as the source of the restore.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RestoreDatabaseRequest = {
      description = "The request for RestoreDatabase.",
      id = "RestoreDatabaseRequest",
      properties = {
        backup = {
          description = "Name of the backup from which to restore. Values are of the form `projects//instances//backups/`.",
          type = "string",
        },
        databaseId = {
          description = "Required. The id of the database to create and restore to. This database must not already exist. The `database_id` appended to `parent` forms the full database name of the form `projects//instances//databases/`.",
          type = "string",
        },
        encryptionConfig = {
          ["$ref"] = "RestoreDatabaseEncryptionConfig",
          description = "Optional. An encryption configuration describing the encryption type and key resources in Cloud KMS used to encrypt/decrypt the database to restore to. If this field is not specified, the restored database will use the same encryption configuration as the backup by default, namely encryption_type = `USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION`.",
        },
      },
      type = "object",
    },
    RestoreInfo = {
      description = "Information about the database restore.",
      id = "RestoreInfo",
      properties = {
        backupInfo = {
          ["$ref"] = "BackupInfo",
          description = "Information about the backup used to restore the database. The backup may no longer exist.",
        },
        sourceType = {
          description = "The type of the restore source.",
          enum = {
            "TYPE_UNSPECIFIED",
            "BACKUP",
          },
          enumDescriptions = {
            "No restore associated.",
            "A backup was used as the source of the restore.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ResultSet = {
      description = "Results from Read or ExecuteSql.",
      id = "ResultSet",
      properties = {
        metadata = {
          ["$ref"] = "ResultSetMetadata",
          description = "Metadata about the result set, such as row type information.",
        },
        rows = {
          description = "Each element in `rows` is a row whose format is defined by metadata.row_type. The ith element in each row matches the ith field in metadata.row_type. Elements are encoded based on type as described here.",
          items = {
            items = {
              type = "any",
            },
            type = "array",
          },
          type = "array",
        },
        stats = {
          ["$ref"] = "ResultSetStats",
          description = "Query plan and execution statistics for the SQL statement that produced this result set. These can be requested by setting ExecuteSqlRequest.query_mode. DML statements always produce stats containing the number of rows modified, unless executed using the ExecuteSqlRequest.QueryMode.PLAN ExecuteSqlRequest.query_mode. Other fields may or may not be populated, based on the ExecuteSqlRequest.query_mode.",
        },
      },
      type = "object",
    },
    ResultSetMetadata = {
      description = "Metadata about a ResultSet or PartialResultSet.",
      id = "ResultSetMetadata",
      properties = {
        rowType = {
          ["$ref"] = "StructType",
          description = "Indicates the field names and types for the rows in the result set. For example, a SQL query like `\"SELECT UserId, UserName FROM Users\"` could return a `row_type` value like: \"fields\": [ { \"name\": \"UserId\", \"type\": { \"code\": \"INT64\" } }, { \"name\": \"UserName\", \"type\": { \"code\": \"STRING\" } }, ]",
        },
        transaction = {
          ["$ref"] = "Transaction",
          description = "If the read or SQL query began a transaction as a side-effect, the information about the new transaction is yielded here.",
        },
        undeclaredParameters = {
          ["$ref"] = "StructType",
          description = "A SQL query can be parameterized. In PLAN mode, these parameters can be undeclared. This indicates the field names and types for those undeclared parameters in the SQL query. For example, a SQL query like `\"SELECT * FROM Users where UserId = @userId and UserName = @userName \"` could return a `undeclared_parameters` value like: \"fields\": [ { \"name\": \"UserId\", \"type\": { \"code\": \"INT64\" } }, { \"name\": \"UserName\", \"type\": { \"code\": \"STRING\" } }, ]",
        },
      },
      type = "object",
    },
    ResultSetStats = {
      description = "Additional statistics about a ResultSet or PartialResultSet.",
      id = "ResultSetStats",
      properties = {
        queryPlan = {
          ["$ref"] = "QueryPlan",
          description = "QueryPlan for the query associated with this result.",
        },
        queryStats = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Aggregated statistics from the execution of the query. Only present when the query is profiled. For example, a query could return the statistics as follows: { \"rows_returned\": \"3\", \"elapsed_time\": \"1.22 secs\", \"cpu_time\": \"1.19 secs\" }",
          type = "object",
        },
        rowCountExact = {
          description = "Standard DML returns an exact count of rows that were modified.",
          format = "int64",
          type = "string",
        },
        rowCountLowerBound = {
          description = "Partitioned DML does not offer exactly-once semantics, so it returns a lower bound of the rows modified.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    RollbackRequest = {
      description = "The request for Rollback.",
      id = "RollbackRequest",
      properties = {
        transactionId = {
          description = "Required. The transaction to roll back.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    Scan = {
      description = "Scan is a structure which describes Cloud Key Visualizer scan information.",
      id = "Scan",
      properties = {
        details = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Additional information provided by the implementer.",
          type = "object",
        },
        endTime = {
          description = "The upper bound for when the scan is defined.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The unique name of the scan, specific to the Database service implementing this interface.",
          type = "string",
        },
        scanData = {
          ["$ref"] = "ScanData",
          description = "Output only. Cloud Key Visualizer scan data. Note, this field is not available to the ListScans method.",
          readOnly = true,
        },
        startTime = {
          description = "A range of time (inclusive) for when the scan is defined. The lower bound for when the scan is defined.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ScanData = {
      description = "ScanData contains Cloud Key Visualizer scan data used by the caller to construct a visualization.",
      id = "ScanData",
      properties = {
        data = {
          ["$ref"] = "VisualizationData",
          description = "Cloud Key Visualizer scan data. The range of time this information covers is captured via the above time range fields. Note, this field is not available to the ListScans method.",
        },
        endTime = {
          description = "The upper bound for when the contained data is defined.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "A range of time (inclusive) for when the contained data is defined. The lower bound for when the contained data is defined.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Session = {
      description = "A session in the Cloud Spanner API.",
      id = "Session",
      properties = {
        approximateLastUseTime = {
          description = "Output only. The approximate timestamp when the session is last used. It is typically earlier than the actual last use time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. The timestamp when the session is created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creatorRole = {
          description = "The database role which created this session.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels for the session. * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64 labels can be associated with a given session. See https://goo.gl/xmQnxf for more information on and examples of labels.",
          type = "object",
        },
        name = {
          description = "Output only. The name of the session. This is always system-assigned.",
          readOnly = true,
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
    ShortRepresentation = {
      description = "Condensed representation of a node and its subtree. Only present for `SCALAR` PlanNode(s).",
      id = "ShortRepresentation",
      properties = {
        description = {
          description = "A string representation of the expression subtree rooted at this node.",
          type = "string",
        },
        subqueries = {
          additionalProperties = {
            format = "int32",
            type = "integer",
          },
          description = "A mapping of (subquery variable name) -> (subquery node id) for cases where the `description` string of this node references a `SCALAR` subquery contained in the expression subtree rooted at this node. The referenced `SCALAR` subquery may not necessarily be a direct child of this node.",
          type = "object",
        },
      },
      type = "object",
    },
    Statement = {
      description = "A single DML statement.",
      id = "Statement",
      properties = {
        paramTypes = {
          additionalProperties = {
            ["$ref"] = "Type",
          },
          description = "It is not always possible for Cloud Spanner to infer the right SQL type from a JSON value. For example, values of type `BYTES` and values of type `STRING` both appear in params as JSON strings. In these cases, `param_types` can be used to specify the exact SQL type for some or all of the SQL statement parameters. See the definition of Type for more information about SQL types.",
          type = "object",
        },
        params = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameter names and values that bind to placeholders in the DML string. A parameter placeholder consists of the `@` character followed by the parameter name (for example, `@firstName`). Parameter names can contain letters, numbers, and underscores. Parameters can appear anywhere that a literal value is expected. The same parameter name can be used more than once, for example: `\"WHERE id > @msg_id AND id < @msg_id + 100\"` It is an error to execute a SQL statement with unbound parameters.",
          type = "object",
        },
        sql = {
          description = "Required. The DML string.",
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
    StructType = {
      description = "`StructType` defines the fields of a STRUCT type.",
      id = "StructType",
      properties = {
        fields = {
          description = "The list of fields that make up this struct. Order is significant, because values of this struct type are represented as lists, where the order of field values matches the order of fields in the StructType. In turn, the order of fields matches the order of columns in a read request, or the order of fields in the `SELECT` clause of a query.",
          items = {
            ["$ref"] = "Field",
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
          description = "REQUIRED: The set of permissions to check for 'resource'. Permissions with wildcards (such as '*', 'spanner.*', 'spanner.instances.*') are not allowed.",
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
    Transaction = {
      description = "A transaction.",
      id = "Transaction",
      properties = {
        id = {
          description = "`id` may be used to identify the transaction in subsequent Read, ExecuteSql, Commit, or Rollback calls. Single-use read-only transactions do not have IDs, because single-use transactions do not support multiple requests.",
          format = "byte",
          type = "string",
        },
        readTimestamp = {
          description = "For snapshot read-only transactions, the read timestamp chosen for the transaction. Not returned by default: see TransactionOptions.ReadOnly.return_read_timestamp. A timestamp in RFC3339 UTC \\\"Zulu\\\" format, accurate to nanoseconds. Example: `\"2014-10-02T15:01:23.045123456Z\"`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TransactionOptions = {
      description = "Transactions: Each session can have at most one active transaction at a time (note that standalone reads and queries use a transaction internally and do count towards the one transaction limit). After the active transaction is completed, the session can immediately be re-used for the next transaction. It is not necessary to create a new session for each transaction. Transaction modes: Cloud Spanner supports three transaction modes: 1. Locking read-write. This type of transaction is the only way to write data into Cloud Spanner. These transactions rely on pessimistic locking and, if necessary, two-phase commit. Locking read-write transactions may abort, requiring the application to retry. 2. Snapshot read-only. Snapshot read-only transactions provide guaranteed consistency across several reads, but do not allow writes. Snapshot read-only transactions can be configured to read at timestamps in the past, or configured to perform a strong read (where Spanner will select a timestamp such that the read is guaranteed to see the effects of all transactions that have committed before the start of the read). Snapshot read-only transactions do not need to be committed. Queries on change streams must be performed with the snapshot read-only transaction mode, specifying a strong read. Please see TransactionOptions.ReadOnly.strong for more details. 3. Partitioned DML. This type of transaction is used to execute a single Partitioned DML statement. Partitioned DML partitions the key space and runs the DML statement over each partition in parallel using separate, internal transactions that commit independently. Partitioned DML transactions do not need to be committed. For transactions that only read, snapshot read-only transactions provide simpler semantics and are almost always faster. In particular, read-only transactions do not take locks, so they do not conflict with read-write transactions. As a consequence of not taking locks, they also do not abort, so retry loops are not needed. Transactions may only read-write data in a single database. They may, however, read-write data in different tables within that database. Locking read-write transactions: Locking transactions may be used to atomically read-modify-write data anywhere in a database. This type of transaction is externally consistent. Clients should attempt to minimize the amount of time a transaction is active. Faster transactions commit with higher probability and cause less contention. Cloud Spanner attempts to keep read locks active as long as the transaction continues to do reads, and the transaction has not been terminated by Commit or Rollback. Long periods of inactivity at the client may cause Cloud Spanner to release a transaction's locks and abort it. Conceptually, a read-write transaction consists of zero or more reads or SQL statements followed by Commit. At any time before Commit, the client can send a Rollback request to abort the transaction. Semantics: Cloud Spanner can commit the transaction if all read locks it acquired are still valid at commit time, and it is able to acquire write locks for all writes. Cloud Spanner can abort the transaction for any reason. If a commit attempt returns `ABORTED`, Cloud Spanner guarantees that the transaction has not modified any user data in Cloud Spanner. Unless the transaction commits, Cloud Spanner makes no guarantees about how long the transaction's locks were held for. It is an error to use Cloud Spanner locks for any sort of mutual exclusion other than between Cloud Spanner transactions themselves. Retrying aborted transactions: When a transaction aborts, the application can choose to retry the whole transaction again. To maximize the chances of successfully committing the retry, the client should execute the retry in the same session as the original attempt. The original session's lock priority increases with each consecutive abort, meaning that each attempt has a slightly better chance of success than the previous. Under some circumstances (for example, many transactions attempting to modify the same row(s)), a transaction can abort many times in a short period before successfully committing. Thus, it is not a good idea to cap the number of retries a transaction can attempt; instead, it is better to limit the total amount of time spent retrying. Idle transactions: A transaction is considered idle if it has no outstanding reads or SQL queries and has not started a read or SQL query within the last 10 seconds. Idle transactions can be aborted by Cloud Spanner so that they don't hold on to locks indefinitely. If an idle transaction is aborted, the commit will fail with error `ABORTED`. If this behavior is undesirable, periodically executing a simple SQL query in the transaction (for example, `SELECT 1`) prevents the transaction from becoming idle. Snapshot read-only transactions: Snapshot read-only transactions provides a simpler method than locking read-write transactions for doing several consistent reads. However, this type of transaction does not support writes. Snapshot transactions do not take locks. Instead, they work by choosing a Cloud Spanner timestamp, then executing all reads at that timestamp. Since they do not acquire locks, they do not block concurrent read-write transactions. Unlike locking read-write transactions, snapshot read-only transactions never abort. They can fail if the chosen read timestamp is garbage collected; however, the default garbage collection policy is generous enough that most applications do not need to worry about this in practice. Snapshot read-only transactions do not need to call Commit or Rollback (and in fact are not permitted to do so). To execute a snapshot transaction, the client specifies a timestamp bound, which tells Cloud Spanner how to choose a read timestamp. The types of timestamp bound are: - Strong (the default). - Bounded staleness. - Exact staleness. If the Cloud Spanner database to be read is geographically distributed, stale read-only transactions can execute more quickly than strong or read-write transactions, because they are able to execute far from the leader replica. Each type of timestamp bound is discussed in detail below. Strong: Strong reads are guaranteed to see the effects of all transactions that have committed before the start of the read. Furthermore, all rows yielded by a single read are consistent with each other -- if any part of the read observes a transaction, all parts of the read see the transaction. Strong reads are not repeatable: two consecutive strong read-only transactions might return inconsistent results if there are concurrent writes. If consistency across reads is required, the reads should be executed within a transaction or at an exact read timestamp. Queries on change streams (see below for more details) must also specify the strong read timestamp bound. See TransactionOptions.ReadOnly.strong. Exact staleness: These timestamp bounds execute reads at a user-specified timestamp. Reads at a timestamp are guaranteed to see a consistent prefix of the global transaction history: they observe modifications done by all transactions with a commit timestamp less than or equal to the read timestamp, and observe none of the modifications done by transactions with a larger commit timestamp. They will block until all conflicting transactions that may be assigned commit timestamps <= the read timestamp have finished. The timestamp can either be expressed as an absolute Cloud Spanner commit timestamp or a staleness relative to the current time. These modes do not require a \"negotiation phase\" to pick a timestamp. As a result, they execute slightly faster than the equivalent boundedly stale concurrency modes. On the other hand, boundedly stale reads usually return fresher results. See TransactionOptions.ReadOnly.read_timestamp and TransactionOptions.ReadOnly.exact_staleness. Bounded staleness: Bounded staleness modes allow Cloud Spanner to pick the read timestamp, subject to a user-provided staleness bound. Cloud Spanner chooses the newest timestamp within the staleness bound that allows execution of the reads at the closest available replica without blocking. All rows yielded are consistent with each other -- if any part of the read observes a transaction, all parts of the read see the transaction. Boundedly stale reads are not repeatable: two stale reads, even if they use the same staleness bound, can execute at different timestamps and thus return inconsistent results. Boundedly stale reads execute in two phases: the first phase negotiates a timestamp among all replicas needed to serve the read. In the second phase, reads are executed at the negotiated timestamp. As a result of the two phase execution, bounded staleness reads are usually a little slower than comparable exact staleness reads. However, they are typically able to return fresher results, and are more likely to execute at the closest replica. Because the timestamp negotiation requires up-front knowledge of which rows will be read, it can only be used with single-use read-only transactions. See TransactionOptions.ReadOnly.max_staleness and TransactionOptions.ReadOnly.min_read_timestamp. Old read timestamps and garbage collection: Cloud Spanner continuously garbage collects deleted and overwritten data in the background to reclaim storage space. This process is known as \"version GC\". By default, version GC reclaims versions after they are one hour old. Because of this, Cloud Spanner cannot perform reads at read timestamps more than one hour in the past. This restriction also applies to in-progress reads and/or SQL queries whose timestamp become too old while executing. Reads and SQL queries with too-old read timestamps fail with the error `FAILED_PRECONDITION`. You can configure and extend the `VERSION_RETENTION_PERIOD` of a database up to a period as long as one week, which allows Cloud Spanner to perform reads up to one week in the past. Querying change Streams: A Change Stream is a schema object that can be configured to watch data changes on the entire database, a set of tables, or a set of columns in a database. When a change stream is created, Spanner automatically defines a corresponding SQL Table-Valued Function (TVF) that can be used to query the change records in the associated change stream using the ExecuteStreamingSql API. The name of the TVF for a change stream is generated from the name of the change stream: READ_. All queries on change stream TVFs must be executed using the ExecuteStreamingSql API with a single-use read-only transaction with a strong read-only timestamp_bound. The change stream TVF allows users to specify the start_timestamp and end_timestamp for the time range of interest. All change records within the retention period is accessible using the strong read-only timestamp_bound. All other TransactionOptions are invalid for change stream queries. In addition, if TransactionOptions.read_only.return_read_timestamp is set to true, a special value of 2^63 - 2 will be returned in the Transaction message that describes the transaction, instead of a valid read timestamp. This special value should be discarded and not used for any subsequent queries. Please see https://cloud.google.com/spanner/docs/change-streams for more details on how to query the change stream TVFs. Partitioned DML transactions: Partitioned DML transactions are used to execute DML statements with a different execution strategy that provides different, and often better, scalability properties for large, table-wide operations than DML in a ReadWrite transaction. Smaller scoped statements, such as an OLTP workload, should prefer using ReadWrite transactions. Partitioned DML partitions the keyspace and runs the DML statement on each partition in separate, internal transactions. These transactions commit automatically when complete, and run independently from one another. To reduce lock contention, this execution strategy only acquires read locks on rows that match the WHERE clause of the statement. Additionally, the smaller per-partition transactions hold locks for less time. That said, Partitioned DML is not a drop-in replacement for standard DML used in ReadWrite transactions. - The DML statement must be fully-partitionable. Specifically, the statement must be expressible as the union of many statements which each access only a single row of the table. - The statement is not applied atomically to all rows of the table. Rather, the statement is applied atomically to partitions of the table, in independent transactions. Secondary index rows are updated atomically with the base table rows. - Partitioned DML does not guarantee exactly-once execution semantics against a partition. The statement will be applied at least once to each partition. It is strongly recommended that the DML statement should be idempotent to avoid unexpected results. For instance, it is potentially dangerous to run a statement such as `UPDATE table SET column = column + 1` as it could be run multiple times against some rows. - The partitions are committed automatically - there is no support for Commit or Rollback. If the call returns an error, or if the client issuing the ExecuteSql call dies, it is possible that some rows had the statement executed on them successfully. It is also possible that statement was never executed against other rows. - Partitioned DML transactions may only contain the execution of a single DML statement via ExecuteSql or ExecuteStreamingSql. - If any error is encountered during the execution of the partitioned DML operation (for instance, a UNIQUE INDEX violation, division by zero, or a value that cannot be stored due to schema constraints), then the operation is stopped at that point and an error is returned. It is possible that at this point, some partitions have been committed (or even committed multiple times), and other partitions have not been run at all. Given the above, Partitioned DML is good fit for large, database-wide, operations that are idempotent, such as deleting old rows from a very large table.",
      id = "TransactionOptions",
      properties = {
        partitionedDml = {
          ["$ref"] = "PartitionedDml",
          description = "Partitioned DML transaction. Authorization to begin a Partitioned DML transaction requires `spanner.databases.beginPartitionedDmlTransaction` permission on the `session` resource.",
        },
        readOnly = {
          ["$ref"] = "ReadOnly",
          description = "Transaction will not write. Authorization to begin a read-only transaction requires `spanner.databases.beginReadOnlyTransaction` permission on the `session` resource.",
        },
        readWrite = {
          ["$ref"] = "ReadWrite",
          description = "Transaction may write. Authorization to begin a read-write transaction requires `spanner.databases.beginOrRollbackReadWriteTransaction` permission on the `session` resource.",
        },
      },
      type = "object",
    },
    TransactionSelector = {
      description = "This message is used to select the transaction in which a Read or ExecuteSql call runs. See TransactionOptions for more information about transactions.",
      id = "TransactionSelector",
      properties = {
        begin = {
          ["$ref"] = "TransactionOptions",
          description = "Begin a new transaction and execute this read or SQL query in it. The transaction ID of the new transaction is returned in ResultSetMetadata.transaction, which is a Transaction.",
        },
        id = {
          description = "Execute the read or SQL query in a previously-started transaction.",
          format = "byte",
          type = "string",
        },
        singleUse = {
          ["$ref"] = "TransactionOptions",
          description = "Execute the read or SQL query in a temporary transaction. This is the most efficient way to execute a transaction that consists of a single SQL query.",
        },
      },
      type = "object",
    },
    Type = {
      description = "`Type` indicates the type of a Cloud Spanner value, as might be stored in a table cell or returned from an SQL query.",
      id = "Type",
      properties = {
        arrayElementType = {
          ["$ref"] = "Type",
          description = "If code == ARRAY, then `array_element_type` is the type of the array elements.",
        },
        code = {
          description = "Required. The TypeCode for this type.",
          enum = {
            "TYPE_CODE_UNSPECIFIED",
            "BOOL",
            "INT64",
            "FLOAT64",
            "TIMESTAMP",
            "DATE",
            "STRING",
            "BYTES",
            "ARRAY",
            "STRUCT",
            "NUMERIC",
            "JSON",
            "PROTO",
            "ENUM",
          },
          enumDescriptions = {
            "Not specified.",
            "Encoded as JSON `true` or `false`.",
            "Encoded as `string`, in decimal format.",
            "Encoded as `number`, or the strings `\"NaN\"`, `\"Infinity\"`, or `\"-Infinity\"`.",
            "Encoded as `string` in RFC 3339 timestamp format. The time zone must be present, and must be `\"Z\"`. If the schema has the column option `allow_commit_timestamp=true`, the placeholder string `\"spanner.commit_timestamp()\"` can be used to instruct the system to insert the commit timestamp associated with the transaction commit.",
            "Encoded as `string` in RFC 3339 date format.",
            "Encoded as `string`.",
            "Encoded as a base64-encoded `string`, as described in RFC 4648, section 4.",
            "Encoded as `list`, where the list elements are represented according to array_element_type.",
            "Encoded as `list`, where list element `i` is represented according to [struct_type.fields[i]][google.spanner.v1.StructType.fields].",
            "Encoded as `string`, in decimal format or scientific notation format. Decimal format: `[+-]Digits[.[Digits]]` or `+-.Digits` Scientific notation: `[+-]Digits[.[Digits]][ExponentIndicator[+-]Digits]` or `+-.Digits[ExponentIndicator[+-]Digits]` (ExponentIndicator is `\"e\"` or `\"E\"`)",
            "Encoded as a JSON-formatted `string` as described in RFC 7159. The following rules are applied when parsing JSON input: - Whitespace characters are not preserved. - If a JSON object has duplicate keys, only the first key is preserved. - Members of a JSON object are not guaranteed to have their order preserved. - JSON array elements will have their order preserved.",
            "Encoded as a base64-encoded `string`, as described in RFC 4648, section 4.",
            "Encoded as `string`, in decimal format.",
          },
          type = "string",
        },
        protoTypeFqn = {
          description = "If code == PROTO or code == ENUM, then `proto_type_fqn` is the fully qualified name of the proto type representing the proto/enum definition.",
          type = "string",
        },
        structType = {
          ["$ref"] = "StructType",
          description = "If code == STRUCT, then `struct_type` provides type information for the struct's fields.",
        },
        typeAnnotation = {
          description = "The TypeAnnotationCode that disambiguates SQL type that Spanner will use to represent values of this type during query processing. This is necessary for some type codes because a single TypeCode can be mapped to different SQL types depending on the SQL dialect. type_annotation typically is not needed to process the content of a value (it doesn't affect serialization) and clients can ignore it on the read path.",
          enum = {
            "TYPE_ANNOTATION_CODE_UNSPECIFIED",
            "PG_NUMERIC",
            "PG_JSONB",
          },
          enumDescriptions = {
            "Not specified.",
            "PostgreSQL compatible NUMERIC type. This annotation needs to be applied to Type instances having NUMERIC type code to specify that values of this type should be treated as PostgreSQL NUMERIC values. Currently this annotation is always needed for NUMERIC when a client interacts with PostgreSQL-enabled Spanner databases.",
            "PostgreSQL compatible JSONB type. This annotation needs to be applied to Type instances having JSON type code to specify that values of this type should be treated as PostgreSQL JSONB values. Currently this annotation is always needed for JSON when a client interacts with PostgreSQL-enabled Spanner databases.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UpdateDatabaseDdlMetadata = {
      description = "Metadata type for the operation returned by UpdateDatabaseDdl.",
      id = "UpdateDatabaseDdlMetadata",
      properties = {
        commitTimestamps = {
          description = "Reports the commit timestamps of all statements that have succeeded so far, where `commit_timestamps[i]` is the commit timestamp for the statement `statements[i]`.",
          items = {
            format = "google-datetime",
            type = "string",
          },
          type = "array",
        },
        database = {
          description = "The database being modified.",
          type = "string",
        },
        progress = {
          description = "The progress of the UpdateDatabaseDdl operations. Currently, only index creation statements will have a continuously updating progress. For non-index creation statements, `progress[i]` will have start time and end time populated with commit timestamp of operation, as well as a progress of 100% once the operation has completed. `progress[i]` is the operation progress for `statements[i]`.",
          items = {
            ["$ref"] = "OperationProgress",
          },
          type = "array",
        },
        statements = {
          description = "For an update this list contains all the statements. For an individual statement, this list contains only that statement.",
          items = {
            type = "string",
          },
          type = "array",
        },
        throttled = {
          description = "Output only. When true, indicates that the operation is throttled e.g due to resource constraints. When resources become available the operation will resume and this field will be false again.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    UpdateDatabaseDdlRequest = {
      description = "Enqueues the given DDL statements to be applied, in order but not necessarily all at once, to the database schema at some point (or points) in the future. The server checks that the statements are executable (syntactically valid, name tables that exist, etc.) before enqueueing them, but they may still fail upon later execution (e.g., if a statement from another batch of statements is applied first and it conflicts in some way, or if there is some data-related problem like a `NULL` value in a column to which `NOT NULL` would be added). If a statement fails, all subsequent statements in the batch are automatically cancelled. Each batch of statements is assigned a name which can be used with the Operations API to monitor progress. See the operation_id field for more details.",
      id = "UpdateDatabaseDdlRequest",
      properties = {
        operationId = {
          description = "If empty, the new update request is assigned an automatically-generated operation ID. Otherwise, `operation_id` is used to construct the name of the resulting Operation. Specifying an explicit operation ID simplifies determining whether the statements were executed in the event that the UpdateDatabaseDdl call is replayed, or the return value is otherwise lost: the database and `operation_id` fields can be combined to form the name of the resulting longrunning.Operation: `/operations/`. `operation_id` should be unique within the database, and must be a valid identifier: `a-z*`. Note that automatically-generated operation IDs always begin with an underscore. If the named operation already exists, UpdateDatabaseDdl returns `ALREADY_EXISTS`.",
          type = "string",
        },
        protoDescriptors = {
          description = "Optional. Proto descriptors used by CREATE/ALTER PROTO BUNDLE statements. Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/descriptor.proto). To generate it, [install](https://grpc.io/docs/protoc-installation/) and run `protoc` with --include_imports and --descriptor_set_out. For example, to generate for moon/shot/app.proto, run \"\"\" $protoc --proto_path=/app_path --proto_path=/lib_path \\ --include_imports \\ --descriptor_set_out=descriptors.data \\ moon/shot/app.proto \"\"\" For more details, see protobuffer [self description](https://developers.google.com/protocol-buffers/docs/techniques#self-description).",
          format = "byte",
          type = "string",
        },
        statements = {
          description = "Required. DDL statements to be applied to the database.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateInstanceConfigMetadata = {
      description = "Metadata type for the operation returned by UpdateInstanceConfig.",
      id = "UpdateInstanceConfigMetadata",
      properties = {
        cancelTime = {
          description = "The time at which this operation was cancelled.",
          format = "google-datetime",
          type = "string",
        },
        instanceConfig = {
          ["$ref"] = "InstanceConfig",
          description = "The desired instance config after updating.",
        },
        progress = {
          ["$ref"] = "InstanceOperationProgress",
          description = "The progress of the UpdateInstanceConfig operation.",
        },
      },
      type = "object",
    },
    UpdateInstanceConfigRequest = {
      description = "The request for UpdateInstanceConfigRequest.",
      id = "UpdateInstanceConfigRequest",
      properties = {
        instanceConfig = {
          ["$ref"] = "InstanceConfig",
          description = "Required. The user instance config to update, which must always include the instance config name. Otherwise, only fields mentioned in update_mask need be included. To prevent conflicts of concurrent updates, etag can be used.",
        },
        updateMask = {
          description = "Required. A mask specifying which fields in InstanceConfig should be updated. The field mask must always be specified; this prevents any future fields in InstanceConfig from being erased accidentally by clients that do not know about them. Only display_name and labels can be updated.",
          format = "google-fieldmask",
          type = "string",
        },
        validateOnly = {
          description = "An option to validate, but not actually execute, a request, and provide the same response.",
          type = "boolean",
        },
      },
      type = "object",
    },
    UpdateInstanceMetadata = {
      description = "Metadata type for the operation returned by UpdateInstance.",
      id = "UpdateInstanceMetadata",
      properties = {
        cancelTime = {
          description = "The time at which this operation was cancelled. If set, this operation is in the process of undoing itself (which is guaranteed to succeed) and cannot be cancelled again.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time at which this operation failed or was completed successfully.",
          format = "google-datetime",
          type = "string",
        },
        instance = {
          ["$ref"] = "Instance",
          description = "The desired end state of the update.",
        },
        startTime = {
          description = "The time at which UpdateInstance request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateInstanceRequest = {
      description = "The request for UpdateInstance.",
      id = "UpdateInstanceRequest",
      properties = {
        fieldMask = {
          description = "Required. A mask specifying which fields in Instance should be updated. The field mask must always be specified; this prevents any future fields in Instance from being erased accidentally by clients that do not know about them.",
          format = "google-fieldmask",
          type = "string",
        },
        instance = {
          ["$ref"] = "Instance",
          description = "Required. The instance to update, which must always include the instance name. Otherwise, only fields mentioned in field_mask need be included.",
        },
      },
      type = "object",
    },
    VisualizationData = {
      id = "VisualizationData",
      properties = {
        dataSourceEndToken = {
          description = "The token signifying the end of a data_source.",
          type = "string",
        },
        dataSourceSeparatorToken = {
          description = "The token delimiting a datasource name from the rest of a key in a data_source.",
          type = "string",
        },
        diagnosticMessages = {
          description = "The list of messages (info, alerts, ...)",
          items = {
            ["$ref"] = "DiagnosticMessage",
          },
          type = "array",
        },
        endKeyStrings = {
          description = "We discretize the entire keyspace into buckets. Assuming each bucket has an inclusive keyrange and covers keys from k(i) ... k(n). In this case k(n) would be an end key for a given range. end_key_string is the collection of all such end keys",
          items = {
            type = "string",
          },
          type = "array",
        },
        hasPii = {
          description = "Whether this scan contains PII.",
          type = "boolean",
        },
        indexedKeys = {
          description = "Keys of key ranges that contribute significantly to a given metric Can be thought of as heavy hitters.",
          items = {
            type = "string",
          },
          type = "array",
        },
        keySeparator = {
          description = "The token delimiting the key prefixes.",
          type = "string",
        },
        keyUnit = {
          description = "The unit for the key: e.g. 'key' or 'chunk'.",
          enum = {
            "KEY_UNIT_UNSPECIFIED",
            "KEY",
            "CHUNK",
          },
          enumDescriptions = {
            "Required default value",
            "Each entry corresponds to one key",
            "Each entry corresponds to a chunk of keys",
          },
          type = "string",
        },
        metrics = {
          description = "The list of data objects for each metric.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        prefixNodes = {
          description = "The list of extracted key prefix nodes used in the key prefix hierarchy.",
          items = {
            ["$ref"] = "PrefixNode",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Write = {
      description = "Arguments to insert, update, insert_or_update, and replace operations.",
      id = "Write",
      properties = {
        columns = {
          description = "The names of the columns in table to be written. The list of columns must contain enough columns to allow Cloud Spanner to derive values for all primary key columns in the row(s) to be modified.",
          items = {
            type = "string",
          },
          type = "array",
        },
        table = {
          description = "Required. The table whose rows will be written.",
          type = "string",
        },
        values = {
          description = "The values to be written. `values` can contain more than one list of values. If it does, then multiple rows are written, one for each entry in `values`. Each list in `values` must have exactly as many entries as there are entries in columns above. Sending multiple lists is equivalent to sending multiple `Mutation`s, each containing one `values` entry and repeating table and columns. Individual values in each list are encoded as described here.",
          items = {
            items = {
              type = "any",
            },
            type = "array",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Spanner API",
  version = "v1",
  version_module = true,
}
