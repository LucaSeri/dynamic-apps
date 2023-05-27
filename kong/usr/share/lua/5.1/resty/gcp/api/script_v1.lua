return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://mail.google.com/"] = {
          description = "Read, compose, send, and permanently delete all your email from Gmail",
        },
        ["https://www.google.com/calendar/feeds"] = {
          description = "See, edit, share, and permanently delete all the calendars you can access using Google Calendar",
        },
        ["https://www.google.com/m8/feeds"] = {
          description = "See, edit, download, and permanently delete your contacts",
        },
        ["https://www.googleapis.com/auth/admin.directory.group"] = {
          description = "View and manage the provisioning of groups on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.user"] = {
          description = "View and manage the provisioning of users on your domain",
        },
        ["https://www.googleapis.com/auth/documents"] = {
          description = "See, edit, create, and delete all your Google Docs documents",
        },
        ["https://www.googleapis.com/auth/drive"] = {
          description = "See, edit, create, and delete all of your Google Drive files",
        },
        ["https://www.googleapis.com/auth/forms"] = {
          description = "View and manage your forms in Google Drive",
        },
        ["https://www.googleapis.com/auth/forms.currentonly"] = {
          description = "View and manage forms that this application has been installed in",
        },
        ["https://www.googleapis.com/auth/groups"] = {
          description = "View and manage your Google Groups",
        },
        ["https://www.googleapis.com/auth/script.deployments"] = {
          description = "Create and update Google Apps Script deployments",
        },
        ["https://www.googleapis.com/auth/script.deployments.readonly"] = {
          description = "View Google Apps Script deployments",
        },
        ["https://www.googleapis.com/auth/script.metrics"] = {
          description = "View Google Apps Script project's metrics",
        },
        ["https://www.googleapis.com/auth/script.processes"] = {
          description = "View Google Apps Script processes",
        },
        ["https://www.googleapis.com/auth/script.projects"] = {
          description = "Create and update Google Apps Script projects",
        },
        ["https://www.googleapis.com/auth/script.projects.readonly"] = {
          description = "View Google Apps Script projects",
        },
        ["https://www.googleapis.com/auth/spreadsheets"] = {
          description = "See, edit, create, and delete all your Google Sheets spreadsheets",
        },
        ["https://www.googleapis.com/auth/userinfo.email"] = {
          description = "See your primary Google Account email address",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://script.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Script",
  description = "Manages and executes Google Apps Script projects. ",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/apps-script/api/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "script:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://script.mtls.googleapis.com/",
  name = "script",
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
    processes = {
      methods = {
        list = {
          description = "List information about processes made by or on behalf of a user, such as process type and current status.",
          flatPath = "v1/processes",
          httpMethod = "GET",
          id = "script.processes.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of returned processes per page of results. Defaults to 50.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken` from a previous response.",
              location = "query",
              type = "string",
            },
            ["userProcessFilter.deploymentId"] = {
              description = "Optional field used to limit returned processes to those originating from projects with a specific deployment ID.",
              location = "query",
              type = "string",
            },
            ["userProcessFilter.endTime"] = {
              description = "Optional field used to limit returned processes to those that completed on or before the given timestamp.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            ["userProcessFilter.functionName"] = {
              description = "Optional field used to limit returned processes to those originating from a script function with the given function name.",
              location = "query",
              type = "string",
            },
            ["userProcessFilter.projectName"] = {
              description = "Optional field used to limit returned processes to those originating from projects with project names containing a specific string.",
              location = "query",
              type = "string",
            },
            ["userProcessFilter.scriptId"] = {
              description = "Optional field used to limit returned processes to those originating from projects with a specific script ID.",
              location = "query",
              type = "string",
            },
            ["userProcessFilter.startTime"] = {
              description = "Optional field used to limit returned processes to those that were started on or after the given timestamp.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            ["userProcessFilter.statuses"] = {
              description = "Optional field used to limit returned processes to those having one of the specified process statuses.",
              enum = {
                "PROCESS_STATUS_UNSPECIFIED",
                "RUNNING",
                "PAUSED",
                "COMPLETED",
                "CANCELED",
                "FAILED",
                "TIMED_OUT",
                "UNKNOWN",
                "DELAYED",
              },
              enumDescriptions = {
                "Unspecified status.",
                "The process is currently running.",
                "The process has paused.",
                "The process has completed.",
                "The process was cancelled.",
                "The process failed.",
                "The process timed out.",
                "Process status unknown.",
                "The process is delayed, waiting for quota.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            ["userProcessFilter.types"] = {
              description = "Optional field used to limit returned processes to those having one of the specified process types.",
              enum = {
                "PROCESS_TYPE_UNSPECIFIED",
                "ADD_ON",
                "EXECUTION_API",
                "TIME_DRIVEN",
                "TRIGGER",
                "WEBAPP",
                "EDITOR",
                "SIMPLE_TRIGGER",
                "MENU",
                "BATCH_TASK",
              },
              enumDescriptions = {
                "Unspecified type.",
                "The process was started from an add-on entry point.",
                "The process was started using the Apps Script API.",
                "The process was started from a time-based trigger.",
                "The process was started from an event-based trigger.",
                "The process was started from a web app entry point.",
                "The process was started using the Apps Script IDE.",
                "The process was started from a G Suite simple trigger.",
                "The process was started from a G Suite menu item.",
                "The process was started as a task in a batch job.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            ["userProcessFilter.userAccessLevels"] = {
              description = "Optional field used to limit returned processes to those having one of the specified user access levels.",
              enum = {
                "USER_ACCESS_LEVEL_UNSPECIFIED",
                "NONE",
                "READ",
                "WRITE",
                "OWNER",
              },
              enumDescriptions = {
                "User access level unspecified",
                "The user has no access.",
                "The user has read-only access.",
                "The user has write access.",
                "The user is an owner.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/processes",
          response = {
            ["$ref"] = "ListUserProcessesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/script.processes",
          },
        },
        listScriptProcesses = {
          description = "List information about a script's executed processes, such as process type and current status.",
          flatPath = "v1/processes:listScriptProcesses",
          httpMethod = "GET",
          id = "script.processes.listScriptProcesses",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of returned processes per page of results. Defaults to 50.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken` from a previous response.",
              location = "query",
              type = "string",
            },
            scriptId = {
              description = "The script ID of the project whose processes are listed.",
              location = "query",
              type = "string",
            },
            ["scriptProcessFilter.deploymentId"] = {
              description = "Optional field used to limit returned processes to those originating from projects with a specific deployment ID.",
              location = "query",
              type = "string",
            },
            ["scriptProcessFilter.endTime"] = {
              description = "Optional field used to limit returned processes to those that completed on or before the given timestamp.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            ["scriptProcessFilter.functionName"] = {
              description = "Optional field used to limit returned processes to those originating from a script function with the given function name.",
              location = "query",
              type = "string",
            },
            ["scriptProcessFilter.startTime"] = {
              description = "Optional field used to limit returned processes to those that were started on or after the given timestamp.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            ["scriptProcessFilter.statuses"] = {
              description = "Optional field used to limit returned processes to those having one of the specified process statuses.",
              enum = {
                "PROCESS_STATUS_UNSPECIFIED",
                "RUNNING",
                "PAUSED",
                "COMPLETED",
                "CANCELED",
                "FAILED",
                "TIMED_OUT",
                "UNKNOWN",
                "DELAYED",
              },
              enumDescriptions = {
                "Unspecified status.",
                "The process is currently running.",
                "The process has paused.",
                "The process has completed.",
                "The process was cancelled.",
                "The process failed.",
                "The process timed out.",
                "Process status unknown.",
                "The process is delayed, waiting for quota.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            ["scriptProcessFilter.types"] = {
              description = "Optional field used to limit returned processes to those having one of the specified process types.",
              enum = {
                "PROCESS_TYPE_UNSPECIFIED",
                "ADD_ON",
                "EXECUTION_API",
                "TIME_DRIVEN",
                "TRIGGER",
                "WEBAPP",
                "EDITOR",
                "SIMPLE_TRIGGER",
                "MENU",
                "BATCH_TASK",
              },
              enumDescriptions = {
                "Unspecified type.",
                "The process was started from an add-on entry point.",
                "The process was started using the Apps Script API.",
                "The process was started from a time-based trigger.",
                "The process was started from an event-based trigger.",
                "The process was started from a web app entry point.",
                "The process was started using the Apps Script IDE.",
                "The process was started from a G Suite simple trigger.",
                "The process was started from a G Suite menu item.",
                "The process was started as a task in a batch job.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            ["scriptProcessFilter.userAccessLevels"] = {
              description = "Optional field used to limit returned processes to those having one of the specified user access levels.",
              enum = {
                "USER_ACCESS_LEVEL_UNSPECIFIED",
                "NONE",
                "READ",
                "WRITE",
                "OWNER",
              },
              enumDescriptions = {
                "User access level unspecified",
                "The user has no access.",
                "The user has read-only access.",
                "The user has write access.",
                "The user is an owner.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/processes:listScriptProcesses",
          response = {
            ["$ref"] = "ListScriptProcessesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/script.processes",
          },
        },
      },
    },
    projects = {
      methods = {
        create = {
          description = "Creates a new, empty script project with no script files and a base manifest file.",
          flatPath = "v1/projects",
          httpMethod = "POST",
          id = "script.projects.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/projects",
          request = {
            ["$ref"] = "CreateProjectRequest",
          },
          response = {
            ["$ref"] = "Project",
          },
          scopes = {
            "https://www.googleapis.com/auth/script.projects",
          },
        },
        get = {
          description = "Gets a script project's metadata.",
          flatPath = "v1/projects/{scriptId}",
          httpMethod = "GET",
          id = "script.projects.get",
          parameterOrder = {
            "scriptId",
          },
          parameters = {
            scriptId = {
              description = "The script project's Drive ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{scriptId}",
          response = {
            ["$ref"] = "Project",
          },
          scopes = {
            "https://www.googleapis.com/auth/script.projects",
            "https://www.googleapis.com/auth/script.projects.readonly",
          },
        },
        getContent = {
          description = "Gets the content of the script project, including the code source and metadata for each script file.",
          flatPath = "v1/projects/{scriptId}/content",
          httpMethod = "GET",
          id = "script.projects.getContent",
          parameterOrder = {
            "scriptId",
          },
          parameters = {
            scriptId = {
              description = "The script project's Drive ID.",
              location = "path",
              required = true,
              type = "string",
            },
            versionNumber = {
              description = "The version number of the project to retrieve. If not provided, the project's HEAD version is returned.",
              format = "int32",
              location = "query",
              type = "integer",
            },
          },
          path = "v1/projects/{scriptId}/content",
          response = {
            ["$ref"] = "Content",
          },
          scopes = {
            "https://www.googleapis.com/auth/script.projects",
            "https://www.googleapis.com/auth/script.projects.readonly",
          },
        },
        getMetrics = {
          description = "Get metrics data for scripts, such as number of executions and active users.",
          flatPath = "v1/projects/{scriptId}/metrics",
          httpMethod = "GET",
          id = "script.projects.getMetrics",
          parameterOrder = {
            "scriptId",
          },
          parameters = {
            ["metricsFilter.deploymentId"] = {
              description = "Optional field indicating a specific deployment to retrieve metrics from.",
              location = "query",
              type = "string",
            },
            metricsGranularity = {
              description = "Required field indicating what granularity of metrics are returned.",
              enum = {
                "UNSPECIFIED_GRANULARITY",
                "WEEKLY",
                "DAILY",
              },
              enumDescriptions = {
                "Default metric granularity used to query no metrics.",
                "Represents weekly metrics.",
                "Represents daily metrics over a period of 7 days.",
              },
              location = "query",
              type = "string",
            },
            scriptId = {
              description = "Required field indicating the script to get metrics for.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{scriptId}/metrics",
          response = {
            ["$ref"] = "Metrics",
          },
          scopes = {
            "https://www.googleapis.com/auth/script.metrics",
          },
        },
        updateContent = {
          description = "Updates the content of the specified script project. This content is stored as the HEAD version, and is used when the script is executed as a trigger, in the script editor, in add-on preview mode, or as a web app or Apps Script API in development mode. This clears all the existing files in the project.",
          flatPath = "v1/projects/{scriptId}/content",
          httpMethod = "PUT",
          id = "script.projects.updateContent",
          parameterOrder = {
            "scriptId",
          },
          parameters = {
            scriptId = {
              description = "The script project's Drive ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{scriptId}/content",
          request = {
            ["$ref"] = "Content",
          },
          response = {
            ["$ref"] = "Content",
          },
          scopes = {
            "https://www.googleapis.com/auth/script.projects",
          },
        },
      },
      resources = {
        deployments = {
          methods = {
            create = {
              description = "Creates a deployment of an Apps Script project.",
              flatPath = "v1/projects/{scriptId}/deployments",
              httpMethod = "POST",
              id = "script.projects.deployments.create",
              parameterOrder = {
                "scriptId",
              },
              parameters = {
                scriptId = {
                  description = "The script project's Drive ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{scriptId}/deployments",
              request = {
                ["$ref"] = "DeploymentConfig",
              },
              response = {
                ["$ref"] = "Deployment",
              },
              scopes = {
                "https://www.googleapis.com/auth/script.deployments",
              },
            },
            delete = {
              description = "Deletes a deployment of an Apps Script project.",
              flatPath = "v1/projects/{scriptId}/deployments/{deploymentId}",
              httpMethod = "DELETE",
              id = "script.projects.deployments.delete",
              parameterOrder = {
                "scriptId",
                "deploymentId",
              },
              parameters = {
                deploymentId = {
                  description = "The deployment ID to be undeployed.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                scriptId = {
                  description = "The script project's Drive ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{scriptId}/deployments/{deploymentId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/script.deployments",
              },
            },
            get = {
              description = "Gets a deployment of an Apps Script project.",
              flatPath = "v1/projects/{scriptId}/deployments/{deploymentId}",
              httpMethod = "GET",
              id = "script.projects.deployments.get",
              parameterOrder = {
                "scriptId",
                "deploymentId",
              },
              parameters = {
                deploymentId = {
                  description = "The deployment ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                scriptId = {
                  description = "The script project's Drive ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{scriptId}/deployments/{deploymentId}",
              response = {
                ["$ref"] = "Deployment",
              },
              scopes = {
                "https://www.googleapis.com/auth/script.deployments",
                "https://www.googleapis.com/auth/script.deployments.readonly",
              },
            },
            list = {
              description = "Lists the deployments of an Apps Script project.",
              flatPath = "v1/projects/{scriptId}/deployments",
              httpMethod = "GET",
              id = "script.projects.deployments.list",
              parameterOrder = {
                "scriptId",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of deployments on each returned page. Defaults to 50.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken` from a previous response.",
                  location = "query",
                  type = "string",
                },
                scriptId = {
                  description = "The script project's Drive ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{scriptId}/deployments",
              response = {
                ["$ref"] = "ListDeploymentsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/script.deployments",
                "https://www.googleapis.com/auth/script.deployments.readonly",
              },
            },
            update = {
              description = "Updates a deployment of an Apps Script project.",
              flatPath = "v1/projects/{scriptId}/deployments/{deploymentId}",
              httpMethod = "PUT",
              id = "script.projects.deployments.update",
              parameterOrder = {
                "scriptId",
                "deploymentId",
              },
              parameters = {
                deploymentId = {
                  description = "The deployment ID for this deployment.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                scriptId = {
                  description = "The script project's Drive ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{scriptId}/deployments/{deploymentId}",
              request = {
                ["$ref"] = "UpdateDeploymentRequest",
              },
              response = {
                ["$ref"] = "Deployment",
              },
              scopes = {
                "https://www.googleapis.com/auth/script.deployments",
              },
            },
          },
        },
        versions = {
          methods = {
            create = {
              description = "Creates a new immutable version using the current code, with a unique version number.",
              flatPath = "v1/projects/{scriptId}/versions",
              httpMethod = "POST",
              id = "script.projects.versions.create",
              parameterOrder = {
                "scriptId",
              },
              parameters = {
                scriptId = {
                  description = "The script project's Drive ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{scriptId}/versions",
              request = {
                ["$ref"] = "Version",
              },
              response = {
                ["$ref"] = "Version",
              },
              scopes = {
                "https://www.googleapis.com/auth/script.projects",
              },
            },
            get = {
              description = "Gets a version of a script project.",
              flatPath = "v1/projects/{scriptId}/versions/{versionNumber}",
              httpMethod = "GET",
              id = "script.projects.versions.get",
              parameterOrder = {
                "scriptId",
                "versionNumber",
              },
              parameters = {
                scriptId = {
                  description = "The script project's Drive ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                versionNumber = {
                  description = "The version number.",
                  format = "int32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
              },
              path = "v1/projects/{scriptId}/versions/{versionNumber}",
              response = {
                ["$ref"] = "Version",
              },
              scopes = {
                "https://www.googleapis.com/auth/script.projects",
                "https://www.googleapis.com/auth/script.projects.readonly",
              },
            },
            list = {
              description = "List the versions of a script project.",
              flatPath = "v1/projects/{scriptId}/versions",
              httpMethod = "GET",
              id = "script.projects.versions.list",
              parameterOrder = {
                "scriptId",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of versions on each returned page. Defaults to 50.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The token for continuing a previous list request on the next page. This should be set to the value of `nextPageToken` from a previous response.",
                  location = "query",
                  type = "string",
                },
                scriptId = {
                  description = "The script project's Drive ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{scriptId}/versions",
              response = {
                ["$ref"] = "ListVersionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/script.projects",
                "https://www.googleapis.com/auth/script.projects.readonly",
              },
            },
          },
        },
      },
    },
    scripts = {
      methods = {
        run = {
          description = "Runs a function in an Apps Script project. The script project must be deployed for use with the Apps Script API and the calling application must share the same Cloud Platform project. This method requires authorization with an OAuth 2.0 token that includes at least one of the scopes listed in the [Authorization](#authorization-scopes) section; script projects that do not require authorization cannot be executed through this API. To find the correct scopes to include in the authentication token, open the script project **Overview** page and scroll down to \"Project OAuth Scopes.\" The error `403, PERMISSION_DENIED: The caller does not have permission` indicates that the Cloud Platform project used to authorize the request is not the same as the one used by the script.",
          flatPath = "v1/scripts/{scriptId}:run",
          httpMethod = "POST",
          id = "script.scripts.run",
          parameterOrder = {
            "scriptId",
          },
          parameters = {
            scriptId = {
              description = "The script ID of the script to be executed. Find the script ID on the **Project settings** page under \"IDs.\"",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/scripts/{scriptId}:run",
          request = {
            ["$ref"] = "ExecutionRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://mail.google.com/",
            "https://www.google.com/calendar/feeds",
            "https://www.google.com/m8/feeds",
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.user",
            "https://www.googleapis.com/auth/documents",
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/forms",
            "https://www.googleapis.com/auth/forms.currentonly",
            "https://www.googleapis.com/auth/groups",
            "https://www.googleapis.com/auth/spreadsheets",
            "https://www.googleapis.com/auth/userinfo.email",
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://script.googleapis.com/",
  schemas = {
    Content = {
      description = "The Content resource.",
      id = "Content",
      properties = {
        files = {
          description = "The list of script project files. One of the files is a script manifest; it must be named \"appsscript\", must have type of JSON, and include the manifest configurations for the project.",
          items = {
            ["$ref"] = "File",
          },
          type = "array",
        },
        scriptId = {
          description = "The script project's Drive ID.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateProjectRequest = {
      description = "Request to create a script project. Request to create a script project.",
      id = "CreateProjectRequest",
      properties = {
        parentId = {
          description = "The Drive ID of a parent file that the created script project is bound to. This is usually the ID of a Google Doc, Google Sheet, Google Form, or Google Slides file. If not set, a standalone script project is created.",
          type = "string",
        },
        title = {
          description = "The title for the project.",
          type = "string",
        },
      },
      type = "object",
    },
    Deployment = {
      description = "Representation of a single script deployment.",
      id = "Deployment",
      properties = {
        deploymentConfig = {
          ["$ref"] = "DeploymentConfig",
          description = "The deployment configuration.",
        },
        deploymentId = {
          description = "The deployment ID for this deployment.",
          type = "string",
        },
        entryPoints = {
          description = "The deployment's entry points.",
          items = {
            ["$ref"] = "EntryPoint",
          },
          type = "array",
        },
        updateTime = {
          description = "Last modified date time stamp.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    DeploymentConfig = {
      description = "Metadata the defines how a deployment is configured.",
      id = "DeploymentConfig",
      properties = {
        description = {
          description = "The description for this deployment.",
          type = "string",
        },
        manifestFileName = {
          description = "The manifest file name for this deployment.",
          type = "string",
        },
        scriptId = {
          description = "The script project's Drive ID.",
          type = "string",
        },
        versionNumber = {
          description = "The version number on which this deployment is based.",
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
    EntryPoint = {
      description = "A configuration that defines how a deployment is accessed externally.",
      id = "EntryPoint",
      properties = {
        addOn = {
          ["$ref"] = "GoogleAppsScriptTypeAddOnEntryPoint",
          description = "Add-on properties.",
        },
        entryPointType = {
          description = "The type of the entry point.",
          enum = {
            "ENTRY_POINT_TYPE_UNSPECIFIED",
            "WEB_APP",
            "EXECUTION_API",
            "ADD_ON",
          },
          enumDescriptions = {
            "An unspecified entry point.",
            "A web application entry point.",
            "An API executable entry point.",
            "An Add-On entry point.",
          },
          type = "string",
        },
        executionApi = {
          ["$ref"] = "GoogleAppsScriptTypeExecutionApiEntryPoint",
          description = "An entry point specification for Apps Script API execution calls.",
        },
        webApp = {
          ["$ref"] = "GoogleAppsScriptTypeWebAppEntryPoint",
          description = "An entry point specification for web apps.",
        },
      },
      type = "object",
    },
    ExecuteStreamResponse = {
      description = "The response for executing or debugging a function in an Apps Script project.",
      id = "ExecuteStreamResponse",
      properties = {
        result = {
          ["$ref"] = "ScriptExecutionResult",
          description = "The result of the execution.",
        },
      },
      type = "object",
    },
    ExecutionError = {
      description = "An object that provides information about the nature of an error resulting from an attempted execution of a script function using the Apps Script API. If a run call succeeds but the script function (or Apps Script itself) throws an exception, the response body's error field contains a Status object. The `Status` object's `details` field contains an array with a single one of these `ExecutionError` objects.",
      id = "ExecutionError",
      properties = {
        errorMessage = {
          description = "The error message thrown by Apps Script, usually localized into the user's language.",
          type = "string",
        },
        errorType = {
          description = "The error type, for example `TypeError` or `ReferenceError`. If the error type is unavailable, this field is not included.",
          type = "string",
        },
        scriptStackTraceElements = {
          description = "An array of objects that provide a stack trace through the script to show where the execution failed, with the deepest call first.",
          items = {
            ["$ref"] = "ScriptStackTraceElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ExecutionRequest = {
      description = "A request to run the function in a script. The script is identified by the specified `script_id`. Executing a function on a script returns results based on the implementation of the script.",
      id = "ExecutionRequest",
      properties = {
        devMode = {
          description = "If `true` and the user is an owner of the script, the script runs at the most recently saved version rather than the version deployed for use with the Apps Script API. Optional; default is `false`.",
          type = "boolean",
        },
        ["function"] = {
          description = "The name of the function to execute in the given script. The name does not include parentheses or parameters. It can reference a function in an included library such as `Library.libFunction1`.",
          type = "string",
        },
        parameters = {
          description = "The parameters to be passed to the function being executed. The object type for each parameter should match the expected type in Apps Script. Parameters cannot be Apps Script-specific object types (such as a `Document` or a `Calendar`); they can only be primitive types such as `string`, `number`, `array`, `object`, or `boolean`. Optional.",
          items = {
            type = "any",
          },
          type = "array",
        },
        sessionState = {
          description = "*Deprecated*. For use with Android add-ons only. An ID that represents the user's current session in the Android app for Google Docs or Sheets, included as extra data in the [Intent](https://developer.android.com/guide/components/intents-filters.html) that launches the add-on. When an Android add-on is run with a session state, it gains the privileges of a [bound](https://developers.google.com/apps-script/guides/bound) script—that is, it can access information like the user's current cursor position (in Docs) or selected cell (in Sheets). To retrieve the state, call `Intent.getStringExtra(\"com.google.android.apps.docs.addons.SessionState\")`. Optional.",
          type = "string",
        },
      },
      type = "object",
    },
    ExecutionResponse = {
      description = "An object that provides the return value of a function executed using the Apps Script API. If the script function returns successfully, the response body's response field contains this `ExecutionResponse` object.",
      id = "ExecutionResponse",
      properties = {
        result = {
          description = "The return value of the script function. The type matches the object type returned in Apps Script. Functions called using the Apps Script API cannot return Apps Script-specific objects (such as a `Document` or a `Calendar`); they can only return primitive types such as a `string`, `number`, `array`, `object`, or `boolean`.",
          type = "any",
        },
      },
      type = "object",
    },
    File = {
      description = "An individual file within a script project. A file is a third-party source code created by one or more developers. It can be a server-side JS code, HTML, or a configuration file. Each script project can contain multiple files.",
      id = "File",
      properties = {
        createTime = {
          description = "Creation date timestamp. This read-only field is only visible to users who have WRITER permission for the script project.",
          format = "google-datetime",
          type = "string",
        },
        functionSet = {
          ["$ref"] = "GoogleAppsScriptTypeFunctionSet",
          description = "The defined set of functions in the script file, if any.",
        },
        lastModifyUser = {
          ["$ref"] = "GoogleAppsScriptTypeUser",
          description = "The user who modified the file most recently. This read-only field is only visible to users who have WRITER permission for the script project.",
        },
        name = {
          description = "The name of the file. The file extension is not part of the file name, which can be identified from the type field.",
          type = "string",
        },
        source = {
          description = "The file content.",
          type = "string",
        },
        type = {
          description = "The type of the file.",
          enum = {
            "ENUM_TYPE_UNSPECIFIED",
            "SERVER_JS",
            "HTML",
            "JSON",
          },
          enumDescriptions = {
            "Undetermined file type; never actually used.",
            "An Apps Script server-side code file.",
            "A file containing client-side HTML.",
            "A file in JSON format. This type is only used for the script project's manifest. The manifest file content must match the structure of a valid [ScriptManifest](/apps-script/concepts/manifests)",
          },
          type = "string",
        },
        updateTime = {
          description = "Last modified date timestamp. This read-only field is only visible to users who have WRITER permission for the script project.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeAddOnEntryPoint = {
      description = "An add-on entry point.",
      id = "GoogleAppsScriptTypeAddOnEntryPoint",
      properties = {
        addOnType = {
          description = "The add-on's required list of supported container types.",
          enum = {
            "UNKNOWN_ADDON_TYPE",
            "GMAIL",
            "DATA_STUDIO",
          },
          enumDescriptions = {
            "Default value, unknown add-on type.",
            "Add-on type for Gmail.",
            "Add-on type for Data Studio.",
          },
          type = "string",
        },
        description = {
          description = "The add-on's optional description.",
          type = "string",
        },
        helpUrl = {
          description = "The add-on's optional help URL.",
          type = "string",
        },
        postInstallTipUrl = {
          description = "The add-on's required post install tip URL.",
          type = "string",
        },
        reportIssueUrl = {
          description = "The add-on's optional report issue URL.",
          type = "string",
        },
        title = {
          description = "The add-on's required title.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeExecutionApiConfig = {
      description = "API executable entry point configuration.",
      id = "GoogleAppsScriptTypeExecutionApiConfig",
      properties = {
        access = {
          description = "Who has permission to run the API executable.",
          enum = {
            "UNKNOWN_ACCESS",
            "MYSELF",
            "DOMAIN",
            "ANYONE",
            "ANYONE_ANONYMOUS",
          },
          enumDescriptions = {
            "Default value, should not be used.",
            "Only the user who deployed the web app or executable can access it. Note that this is not necessarily the owner of the script project.",
            "Only users in the same domain as the user who deployed the web app or executable can access it.",
            "Any logged in user can access the web app or executable.",
            "Any user, logged in or not, can access the web app or executable.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeExecutionApiEntryPoint = {
      description = "An API executable entry point.",
      id = "GoogleAppsScriptTypeExecutionApiEntryPoint",
      properties = {
        entryPointConfig = {
          ["$ref"] = "GoogleAppsScriptTypeExecutionApiConfig",
          description = "The entry point's configuration.",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeFunction = {
      description = "Represents a function in a script project.",
      id = "GoogleAppsScriptTypeFunction",
      properties = {
        name = {
          description = "The function name in the script project.",
          type = "string",
        },
        parameters = {
          description = "The ordered list of parameter names of the function in the script project.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeFunctionSet = {
      description = "A set of functions. No duplicates are permitted.",
      id = "GoogleAppsScriptTypeFunctionSet",
      properties = {
        values = {
          description = "A list of functions composing the set.",
          items = {
            ["$ref"] = "GoogleAppsScriptTypeFunction",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeProcess = {
      description = "Representation of a single script process execution that was started from the script editor, a trigger, an application, or using the Apps Script API. This is distinct from the `Operation` resource, which only represents executions started via the Apps Script API.",
      id = "GoogleAppsScriptTypeProcess",
      properties = {
        duration = {
          description = "Duration the execution spent executing.",
          format = "google-duration",
          type = "string",
        },
        functionName = {
          description = "Name of the function the started the execution.",
          type = "string",
        },
        processStatus = {
          description = "The executions status.",
          enum = {
            "PROCESS_STATUS_UNSPECIFIED",
            "RUNNING",
            "PAUSED",
            "COMPLETED",
            "CANCELED",
            "FAILED",
            "TIMED_OUT",
            "UNKNOWN",
            "DELAYED",
          },
          enumDescriptions = {
            "Unspecified status.",
            "The process is currently running.",
            "The process has paused.",
            "The process has completed.",
            "The process was cancelled.",
            "The process failed.",
            "The process timed out.",
            "Process status unknown.",
            "The process is delayed, waiting for quota.",
          },
          type = "string",
        },
        processType = {
          description = "The executions type.",
          enum = {
            "PROCESS_TYPE_UNSPECIFIED",
            "ADD_ON",
            "EXECUTION_API",
            "TIME_DRIVEN",
            "TRIGGER",
            "WEBAPP",
            "EDITOR",
            "SIMPLE_TRIGGER",
            "MENU",
            "BATCH_TASK",
          },
          enumDescriptions = {
            "Unspecified type.",
            "The process was started from an add-on entry point.",
            "The process was started using the Apps Script API.",
            "The process was started from a time-based trigger.",
            "The process was started from an event-based trigger.",
            "The process was started from a web app entry point.",
            "The process was started using the Apps Script IDE.",
            "The process was started from a G Suite simple trigger.",
            "The process was started from a G Suite menu item.",
            "The process was started as a task in a batch job.",
          },
          type = "string",
        },
        projectName = {
          description = "Name of the script being executed.",
          type = "string",
        },
        startTime = {
          description = "Time the execution started.",
          format = "google-datetime",
          type = "string",
        },
        userAccessLevel = {
          description = "The executing users access level to the script.",
          enum = {
            "USER_ACCESS_LEVEL_UNSPECIFIED",
            "NONE",
            "READ",
            "WRITE",
            "OWNER",
          },
          enumDescriptions = {
            "User access level unspecified",
            "The user has no access.",
            "The user has read-only access.",
            "The user has write access.",
            "The user is an owner.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeUser = {
      description = "A simple user profile resource.",
      id = "GoogleAppsScriptTypeUser",
      properties = {
        domain = {
          description = "The user's domain.",
          type = "string",
        },
        email = {
          description = "The user's identifying email address.",
          type = "string",
        },
        name = {
          description = "The user's display name.",
          type = "string",
        },
        photoUrl = {
          description = "The user's photo.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeWebAppConfig = {
      description = "Web app entry point configuration.",
      id = "GoogleAppsScriptTypeWebAppConfig",
      properties = {
        access = {
          description = "Who has permission to run the web app.",
          enum = {
            "UNKNOWN_ACCESS",
            "MYSELF",
            "DOMAIN",
            "ANYONE",
            "ANYONE_ANONYMOUS",
          },
          enumDescriptions = {
            "Default value, should not be used.",
            "Only the user who deployed the web app or executable can access it. Note that this is not necessarily the owner of the script project.",
            "Only users in the same domain as the user who deployed the web app or executable can access it.",
            "Any logged in user can access the web app or executable.",
            "Any user, logged in or not, can access the web app or executable.",
          },
          type = "string",
        },
        executeAs = {
          description = "Who to execute the web app as.",
          enum = {
            "UNKNOWN_EXECUTE_AS",
            "USER_ACCESSING",
            "USER_DEPLOYING",
          },
          enumDescriptions = {
            "Default value, should not be used.",
            "The script runs as the user accessing the web app.",
            "The script runs as the user who deployed the web app. Note that this is not necessarily the owner of the script project.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppsScriptTypeWebAppEntryPoint = {
      description = "A web application entry point.",
      id = "GoogleAppsScriptTypeWebAppEntryPoint",
      properties = {
        entryPointConfig = {
          ["$ref"] = "GoogleAppsScriptTypeWebAppConfig",
          description = "The entry point's configuration.",
        },
        url = {
          description = "The URL for the web application.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDeploymentsResponse = {
      description = "Response with the list of deployments for the specified Apps Script project.",
      id = "ListDeploymentsResponse",
      properties = {
        deployments = {
          description = "The list of deployments.",
          items = {
            ["$ref"] = "Deployment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token that can be used in the next call to get the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListScriptProcessesResponse = {
      description = "Response with the list of Process resources.",
      id = "ListScriptProcessesResponse",
      properties = {
        nextPageToken = {
          description = "Token for the next page of results. If empty, there are no more pages remaining.",
          type = "string",
        },
        processes = {
          description = "List of processes matching request parameters.",
          items = {
            ["$ref"] = "GoogleAppsScriptTypeProcess",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListUserProcessesResponse = {
      description = "Response with the list of Process resources.",
      id = "ListUserProcessesResponse",
      properties = {
        nextPageToken = {
          description = "Token for the next page of results. If empty, there are no more pages remaining.",
          type = "string",
        },
        processes = {
          description = "List of processes matching request parameters.",
          items = {
            ["$ref"] = "GoogleAppsScriptTypeProcess",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListValue = {
      description = "`ListValue` is a wrapper around a repeated field of values.",
      id = "ListValue",
      properties = {
        values = {
          description = "Repeated field of dynamically typed values.",
          items = {
            ["$ref"] = "Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVersionsResponse = {
      description = "Response with the list of the versions for the specified script project.",
      id = "ListVersionsResponse",
      properties = {
        nextPageToken = {
          description = "The token use to fetch the next page of records. if not exist in the response, that means no more versions to list.",
          type = "string",
        },
        versions = {
          description = "The list of versions.",
          items = {
            ["$ref"] = "Version",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Metrics = {
      description = "Resource containing usage stats for a given script, based on the supplied filter and mask present in the request.",
      id = "Metrics",
      properties = {
        activeUsers = {
          description = "Number of active users.",
          items = {
            ["$ref"] = "MetricsValue",
          },
          type = "array",
        },
        failedExecutions = {
          description = "Number of failed executions.",
          items = {
            ["$ref"] = "MetricsValue",
          },
          type = "array",
        },
        totalExecutions = {
          description = "Number of total executions.",
          items = {
            ["$ref"] = "MetricsValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MetricsValue = {
      description = "Metrics value that holds number of executions counted.",
      id = "MetricsValue",
      properties = {
        endTime = {
          description = "Required field indicating the end time of the interval.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Required field indicating the start time of the interval.",
          format = "google-datetime",
          type = "string",
        },
        value = {
          description = "Indicates the number of executions counted.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "A representation of an execution of an Apps Script function started with run. The execution response does not arrive until the function finishes executing. The maximum execution runtime is listed in the [Apps Script quotas guide](/apps-script/guides/services/quotas#current_limitations). After execution has started, it can have one of four outcomes: - If the script function returns successfully, the response field contains an ExecutionResponse object with the function's return value in the object's `result` field. - If the script function (or Apps Script itself) throws an exception, the error field contains a Status object. The `Status` object's `details` field contains an array with a single ExecutionError object that provides information about the nature of the error. - If the execution has not yet completed, the done field is `false` and the neither the `response` nor `error` fields are present. - If the `run` call itself fails (for example, because of a malformed request or an authorization error), the method returns an HTTP response code in the 4XX range with a different format for the response body. Client libraries automatically convert a 4XX response into an exception class. ",
      id = "Operation",
      properties = {
        done = {
          description = "This field indicates whether the script execution has completed. A completed execution has a populated `response` field containing the ExecutionResponse from function that was executed.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "Status",
          description = "If a `run` call succeeds but the script function (or Apps Script itself) throws an exception, this field contains a Status object. The `Status` object's `details` field contains an array with a single ExecutionError object that provides information about the nature of the error.",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "If the script function returns successfully, this field contains an ExecutionResponse object with the function's return value.",
          type = "object",
        },
      },
      type = "object",
    },
    Project = {
      description = "The script project resource.",
      id = "Project",
      properties = {
        createTime = {
          description = "When the script was created.",
          format = "google-datetime",
          type = "string",
        },
        creator = {
          ["$ref"] = "GoogleAppsScriptTypeUser",
          description = "User who originally created the script.",
        },
        lastModifyUser = {
          ["$ref"] = "GoogleAppsScriptTypeUser",
          description = "User who last modified the script.",
        },
        parentId = {
          description = "The parent's Drive ID that the script will be attached to. This is usually the ID of a Google Document or Google Sheet. This filed is optional, and if not set, a stand-alone script will be created.",
          type = "string",
        },
        scriptId = {
          description = "The script project's Drive ID.",
          type = "string",
        },
        title = {
          description = "The title for the project.",
          type = "string",
        },
        updateTime = {
          description = "When the script was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ScriptExecutionResult = {
      description = "The result of an execution.",
      id = "ScriptExecutionResult",
      properties = {
        returnValue = {
          ["$ref"] = "Value",
          description = "The returned value of the execution.",
        },
      },
      type = "object",
    },
    ScriptStackTraceElement = {
      description = "A stack trace through the script that shows where the execution failed.",
      id = "ScriptStackTraceElement",
      properties = {
        ["function"] = {
          description = "The name of the function that failed.",
          type = "string",
        },
        lineNumber = {
          description = "The line number where the script failed.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Status = {
      description = "If a `run` call succeeds but the script function (or Apps Script itself) throws an exception, the response body's error field contains this `Status` object.",
      id = "Status",
      properties = {
        code = {
          description = "The status code. For this API, this value either: - 10, indicating a `SCRIPT_TIMEOUT` error, - 3, indicating an `INVALID_ARGUMENT` error, or - 1, indicating a `CANCELLED` execution. ",
          format = "int32",
          type = "integer",
        },
        details = {
          description = "An array that contains a single ExecutionError object that provides information about the nature of the error.",
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
          description = "A developer-facing error message, which is in English. Any user-facing error message is localized and sent in the details field, or localized by the client.",
          type = "string",
        },
      },
      type = "object",
    },
    Struct = {
      description = "`Struct` represents a structured data value, consisting of fields which map to dynamically typed values.",
      id = "Struct",
      properties = {
        fields = {
          additionalProperties = {
            ["$ref"] = "Value",
          },
          description = "Unordered map of dynamically typed values.",
          type = "object",
        },
      },
      type = "object",
    },
    UpdateDeploymentRequest = {
      description = "Request with deployment information to update an existing deployment.",
      id = "UpdateDeploymentRequest",
      properties = {
        deploymentConfig = {
          ["$ref"] = "DeploymentConfig",
          description = "The deployment configuration.",
        },
      },
      type = "object",
    },
    Value = {
      description = "`Value` represents a dynamically typed value which is the outcome of an executed script.",
      id = "Value",
      properties = {
        boolValue = {
          description = "Represents a boolean value.",
          type = "boolean",
        },
        bytesValue = {
          description = "Represents raw byte values.",
          format = "byte",
          type = "string",
        },
        dateValue = {
          description = "Represents a date in ms since the epoch.",
          format = "int64",
          type = "string",
        },
        listValue = {
          ["$ref"] = "ListValue",
          description = "Represents a repeated `Value`.",
        },
        nullValue = {
          description = "Represents a null value.",
          enum = {
            "NULL_VALUE",
          },
          enumDescriptions = {
            "Null value.",
          },
          type = "string",
        },
        numberValue = {
          description = "Represents a double value.",
          format = "double",
          type = "number",
        },
        protoValue = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Represents a structured proto value.",
          type = "object",
        },
        stringValue = {
          description = "Represents a string value.",
          type = "string",
        },
        structValue = {
          ["$ref"] = "Struct",
          description = "Represents a structured value.",
        },
      },
      type = "object",
    },
    Version = {
      description = "A resource representing a script project version. A version is a \"snapshot\" of a script project and is similar to a read-only branched release. When creating deployments, the version to use must be specified.",
      id = "Version",
      properties = {
        createTime = {
          description = "When the version was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "The description for this version.",
          type = "string",
        },
        scriptId = {
          description = "The script project's Drive ID.",
          type = "string",
        },
        versionNumber = {
          description = "The incremental ID that is created by Apps Script when a version is created. This is system assigned number and is immutable once created.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Apps Script API",
  version = "v1",
}