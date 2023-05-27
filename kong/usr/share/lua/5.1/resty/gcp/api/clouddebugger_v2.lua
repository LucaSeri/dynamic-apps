return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud_debugger"] = {
          description = "Use Stackdriver Debugger",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://clouddebugger.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Debugger",
  description = "Examines the call stack and variables of a running application without stopping or slowing it down. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/debugger",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "clouddebugger:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://clouddebugger.mtls.googleapis.com/",
  name = "clouddebugger",
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
    controller = {
      resources = {
        debuggees = {
          methods = {
            register = {
              description = "Registers the debuggee with the controller service. All agents attached to the same application must call this method with exactly the same request content to get back the same stable `debuggee_id`. Agents should call this method again whenever `google.rpc.Code.NOT_FOUND` is returned from any controller method. This protocol allows the controller service to disable debuggees, recover from data loss, or change the `debuggee_id` format. Agents must handle `debuggee_id` value changing upon re-registration.",
              flatPath = "v2/controller/debuggees/register",
              httpMethod = "POST",
              id = "clouddebugger.controller.debuggees.register",
              parameterOrder = {},
              parameters = {},
              path = "v2/controller/debuggees/register",
              request = {
                ["$ref"] = "RegisterDebuggeeRequest",
              },
              response = {
                ["$ref"] = "RegisterDebuggeeResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud_debugger",
              },
            },
          },
          resources = {
            breakpoints = {
              methods = {
                list = {
                  description = "Returns the list of all active breakpoints for the debuggee. The breakpoint specification (`location`, `condition`, and `expressions` fields) is semantically immutable, although the field values may change. For example, an agent may update the location line number to reflect the actual line where the breakpoint was set, but this doesn't change the breakpoint semantics. This means that an agent does not need to check if a breakpoint has changed when it encounters the same breakpoint on a successive call. Moreover, an agent should remember the breakpoints that are completed until the controller removes them from the active list to avoid setting those breakpoints again.",
                  flatPath = "v2/controller/debuggees/{debuggeeId}/breakpoints",
                  httpMethod = "GET",
                  id = "clouddebugger.controller.debuggees.breakpoints.list",
                  parameterOrder = {
                    "debuggeeId",
                  },
                  parameters = {
                    agentId = {
                      description = "Identifies the agent. This is the ID returned in the RegisterDebuggee response.",
                      location = "query",
                      type = "string",
                    },
                    debuggeeId = {
                      description = "Required. Identifies the debuggee.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    successOnTimeout = {
                      description = "If set to `true` (recommended), returns `google.rpc.Code.OK` status and sets the `wait_expired` response field to `true` when the server-selected timeout has expired. If set to `false` (deprecated), returns `google.rpc.Code.ABORTED` status when the server-selected timeout has expired.",
                      location = "query",
                      type = "boolean",
                    },
                    waitToken = {
                      description = "A token that, if specified, blocks the method call until the list of active breakpoints has changed, or a server-selected timeout has expired. The value should be set from the `next_wait_token` field in the last response. The initial value should be set to `\"init\"`.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/controller/debuggees/{debuggeeId}/breakpoints",
                  response = {
                    ["$ref"] = "ListActiveBreakpointsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud_debugger",
                  },
                },
                update = {
                  description = "Updates the breakpoint state or mutable fields. The entire Breakpoint message must be sent back to the controller service. Updates to active breakpoint fields are only allowed if the new value does not change the breakpoint specification. Updates to the `location`, `condition` and `expressions` fields should not alter the breakpoint semantics. These may only make changes such as canonicalizing a value or snapping the location to the correct line of code.",
                  flatPath = "v2/controller/debuggees/{debuggeeId}/breakpoints/{id}",
                  httpMethod = "PUT",
                  id = "clouddebugger.controller.debuggees.breakpoints.update",
                  parameterOrder = {
                    "debuggeeId",
                    "id",
                  },
                  parameters = {
                    debuggeeId = {
                      description = "Required. Identifies the debuggee being debugged.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    id = {
                      description = "Breakpoint identifier, unique in the scope of the debuggee.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/controller/debuggees/{debuggeeId}/breakpoints/{id}",
                  request = {
                    ["$ref"] = "UpdateActiveBreakpointRequest",
                  },
                  response = {
                    ["$ref"] = "UpdateActiveBreakpointResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud_debugger",
                  },
                },
              },
            },
          },
        },
      },
    },
    debugger = {
      resources = {
        debuggees = {
          methods = {
            list = {
              description = "Lists all the debuggees that the user has access to.",
              flatPath = "v2/debugger/debuggees",
              httpMethod = "GET",
              id = "clouddebugger.debugger.debuggees.list",
              parameterOrder = {},
              parameters = {
                clientVersion = {
                  description = "Required. The client version making the call. Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).",
                  location = "query",
                  type = "string",
                },
                includeInactive = {
                  description = "When set to `true`, the result includes all debuggees. Otherwise, the result includes only debuggees that are active.",
                  location = "query",
                  type = "boolean",
                },
                project = {
                  description = "Required. Project number of a Google Cloud project whose debuggees to list.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/debugger/debuggees",
              response = {
                ["$ref"] = "ListDebuggeesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud_debugger",
              },
            },
          },
          resources = {
            breakpoints = {
              methods = {
                delete = {
                  description = "Deletes the breakpoint from the debuggee.",
                  flatPath = "v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}",
                  httpMethod = "DELETE",
                  id = "clouddebugger.debugger.debuggees.breakpoints.delete",
                  parameterOrder = {
                    "debuggeeId",
                    "breakpointId",
                  },
                  parameters = {
                    breakpointId = {
                      description = "Required. ID of the breakpoint to delete.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    clientVersion = {
                      description = "Required. The client version making the call. Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).",
                      location = "query",
                      type = "string",
                    },
                    debuggeeId = {
                      description = "Required. ID of the debuggee whose breakpoint to delete.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud_debugger",
                  },
                },
                get = {
                  description = "Gets breakpoint information.",
                  flatPath = "v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}",
                  httpMethod = "GET",
                  id = "clouddebugger.debugger.debuggees.breakpoints.get",
                  parameterOrder = {
                    "debuggeeId",
                    "breakpointId",
                  },
                  parameters = {
                    breakpointId = {
                      description = "Required. ID of the breakpoint to get.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    clientVersion = {
                      description = "Required. The client version making the call. Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).",
                      location = "query",
                      type = "string",
                    },
                    debuggeeId = {
                      description = "Required. ID of the debuggee whose breakpoint to get.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}",
                  response = {
                    ["$ref"] = "GetBreakpointResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud_debugger",
                  },
                },
                list = {
                  description = "Lists all breakpoints for the debuggee.",
                  flatPath = "v2/debugger/debuggees/{debuggeeId}/breakpoints",
                  httpMethod = "GET",
                  id = "clouddebugger.debugger.debuggees.breakpoints.list",
                  parameterOrder = {
                    "debuggeeId",
                  },
                  parameters = {
                    ["action.value"] = {
                      description = "Only breakpoints with the specified action will pass the filter.",
                      enum = {
                        "CAPTURE",
                        "LOG",
                      },
                      enumDescriptions = {
                        "Capture stack frame and variables and update the breakpoint. The data is only captured once. After that the breakpoint is set in a final state.",
                        "Log each breakpoint hit. The breakpoint remains active until deleted or expired.",
                      },
                      location = "query",
                      type = "string",
                    },
                    clientVersion = {
                      description = "Required. The client version making the call. Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).",
                      location = "query",
                      type = "string",
                    },
                    debuggeeId = {
                      description = "Required. ID of the debuggee whose breakpoints to list.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    includeAllUsers = {
                      description = "When set to `true`, the response includes the list of breakpoints set by any user. Otherwise, it includes only breakpoints set by the caller.",
                      location = "query",
                      type = "boolean",
                    },
                    includeInactive = {
                      description = "When set to `true`, the response includes active and inactive breakpoints. Otherwise, it includes only active breakpoints.",
                      location = "query",
                      type = "boolean",
                    },
                    stripResults = {
                      description = "This field is deprecated. The following fields are always stripped out of the result: `stack_frames`, `evaluated_expressions` and `variable_table`.",
                      location = "query",
                      type = "boolean",
                    },
                    waitToken = {
                      description = "A wait token that, if specified, blocks the call until the breakpoints list has changed, or a server selected timeout has expired. The value should be set from the last response. The error code `google.rpc.Code.ABORTED` (RPC) is returned on wait timeout, which should be called again with the same `wait_token`.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/debugger/debuggees/{debuggeeId}/breakpoints",
                  response = {
                    ["$ref"] = "ListBreakpointsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud_debugger",
                  },
                },
                set = {
                  description = "Sets the breakpoint to the debuggee.",
                  flatPath = "v2/debugger/debuggees/{debuggeeId}/breakpoints/set",
                  httpMethod = "POST",
                  id = "clouddebugger.debugger.debuggees.breakpoints.set",
                  parameterOrder = {
                    "debuggeeId",
                  },
                  parameters = {
                    canaryOption = {
                      description = "The canary option set by the user upon setting breakpoint.",
                      enum = {
                        "CANARY_OPTION_UNSPECIFIED",
                        "CANARY_OPTION_TRY_ENABLE",
                        "CANARY_OPTION_TRY_DISABLE",
                      },
                      enumDescriptions = {
                        "Depends on the canary_mode of the debuggee.",
                        "Enable the canary for this breakpoint if the canary_mode of the debuggee is not CANARY_MODE_ALWAYS_ENABLED or CANARY_MODE_ALWAYS_DISABLED.",
                        "Disable the canary for this breakpoint if the canary_mode of the debuggee is not CANARY_MODE_ALWAYS_ENABLED or CANARY_MODE_ALWAYS_DISABLED.",
                      },
                      location = "query",
                      type = "string",
                    },
                    clientVersion = {
                      description = "Required. The client version making the call. Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).",
                      location = "query",
                      type = "string",
                    },
                    debuggeeId = {
                      description = "Required. ID of the debuggee where the breakpoint is to be set.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/debugger/debuggees/{debuggeeId}/breakpoints/set",
                  request = {
                    ["$ref"] = "Breakpoint",
                  },
                  response = {
                    ["$ref"] = "SetBreakpointResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud_debugger",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230106",
  rootUrl = "https://clouddebugger.googleapis.com/",
  schemas = {
    AliasContext = {
      description = "An alias to a repo revision.",
      id = "AliasContext",
      properties = {
        kind = {
          description = "The alias kind.",
          enum = {
            "ANY",
            "FIXED",
            "MOVABLE",
            "OTHER",
          },
          enumDescriptions = {
            "Do not use.",
            "Git tag",
            "Git branch",
            "OTHER is used to specify non-standard aliases, those not of the kinds above. For example, if a Git repo has a ref named \"refs/foo/bar\", it is considered to be of kind OTHER.",
          },
          type = "string",
        },
        name = {
          description = "The alias name.",
          type = "string",
        },
      },
      type = "object",
    },
    Breakpoint = {
      description = "------------------------------------------------------------------------------ ## Breakpoint (the resource) Represents the breakpoint specification, status and results.",
      id = "Breakpoint",
      properties = {
        action = {
          description = "Action that the agent should perform when the code at the breakpoint location is hit.",
          enum = {
            "CAPTURE",
            "LOG",
          },
          enumDescriptions = {
            "Capture stack frame and variables and update the breakpoint. The data is only captured once. After that the breakpoint is set in a final state.",
            "Log each breakpoint hit. The breakpoint remains active until deleted or expired.",
          },
          type = "string",
        },
        canaryExpireTime = {
          description = "The deadline for the breakpoint to stay in CANARY_ACTIVE state. The value is meaningless when the breakpoint is not in CANARY_ACTIVE state.",
          format = "google-datetime",
          type = "string",
        },
        condition = {
          description = "Condition that triggers the breakpoint. The condition is a compound boolean expression composed using expressions in a programming language at the source location.",
          type = "string",
        },
        createTime = {
          description = "Time this breakpoint was created by the server in seconds resolution.",
          format = "google-datetime",
          type = "string",
        },
        evaluatedExpressions = {
          description = "Values of evaluated expressions at breakpoint time. The evaluated expressions appear in exactly the same order they are listed in the `expressions` field. The `name` field holds the original expression text, the `value` or `members` field holds the result of the evaluated expression. If the expression cannot be evaluated, the `status` inside the `Variable` will indicate an error and contain the error text.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
        expressions = {
          description = "List of read-only expressions to evaluate at the breakpoint location. The expressions are composed using expressions in the programming language at the source location. If the breakpoint action is `LOG`, the evaluated expressions are included in log statements.",
          items = {
            type = "string",
          },
          type = "array",
        },
        finalTime = {
          description = "Time this breakpoint was finalized as seen by the server in seconds resolution.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "Breakpoint identifier, unique in the scope of the debuggee.",
          type = "string",
        },
        isFinalState = {
          description = "When true, indicates that this is a final result and the breakpoint state will not change from here on.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of custom breakpoint properties, populated by the agent, to be displayed to the user.",
          type = "object",
        },
        location = {
          ["$ref"] = "SourceLocation",
          description = "Breakpoint source location.",
        },
        logLevel = {
          description = "Indicates the severity of the log. Only relevant when action is `LOG`.",
          enum = {
            "INFO",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "Information log message.",
            "Warning log message.",
            "Error log message.",
          },
          type = "string",
        },
        logMessageFormat = {
          description = "Only relevant when action is `LOG`. Defines the message to log when the breakpoint hits. The message may include parameter placeholders `$0`, `$1`, etc. These placeholders are replaced with the evaluated value of the appropriate expression. Expressions not referenced in `log_message_format` are not logged. Example: `Message received, id = $0, count = $1` with `expressions` = `[ message.id, message.count ]`.",
          type = "string",
        },
        stackFrames = {
          description = "The stack at breakpoint time, where stack_frames[0] represents the most recently entered function.",
          items = {
            ["$ref"] = "StackFrame",
          },
          type = "array",
        },
        state = {
          description = "The current state of the breakpoint.",
          enum = {
            "STATE_UNSPECIFIED",
            "STATE_CANARY_PENDING_AGENTS",
            "STATE_CANARY_ACTIVE",
            "STATE_ROLLING_TO_ALL",
            "STATE_IS_FINAL",
          },
          enumDescriptions = {
            "Breakpoint state UNSPECIFIED.",
            "Enabling canary but no agents are available.",
            "Enabling canary and successfully assigning canary agents.",
            "Breakpoint rolling out to all agents.",
            "Breakpoint is hit/complete/failed.",
          },
          type = "string",
        },
        status = {
          ["$ref"] = "StatusMessage",
          description = "Breakpoint status. The status includes an error flag and a human readable message. This field is usually unset. The message can be either informational or an error message. Regardless, clients should always display the text message back to the user. Error status indicates complete failure of the breakpoint. Example (non-final state): `Still loading symbols...` Examples (final state): * `Invalid line number` referring to location * `Field f not found in class C` referring to condition",
        },
        userEmail = {
          description = "E-mail address of the user that created this breakpoint",
          type = "string",
        },
        variableTable = {
          description = "The `variable_table` exists to aid with computation, memory and network traffic optimization. It enables storing a variable once and reference it from multiple variables, including variables stored in the `variable_table` itself. For example, the same `this` object, which may appear at many levels of the stack, can have all of its data stored once in this table. The stack frame variables then would hold only a reference to it. The variable `var_table_index` field is an index into this repeated field. The stored objects are nameless and get their name from the referencing variable. The effective variable is a merge of the referencing variable and the referenced variable.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CloudRepoSourceContext = {
      description = "A CloudRepoSourceContext denotes a particular revision in a cloud repo (a repo hosted by the Google Cloud Platform).",
      id = "CloudRepoSourceContext",
      properties = {
        aliasContext = {
          ["$ref"] = "AliasContext",
          description = "An alias, which may be a branch or tag.",
        },
        aliasName = {
          description = "The name of an alias (branch, tag, etc.).",
          type = "string",
        },
        repoId = {
          ["$ref"] = "RepoId",
          description = "The ID of the repo.",
        },
        revisionId = {
          description = "A revision ID.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudWorkspaceId = {
      description = "A CloudWorkspaceId is a unique identifier for a cloud workspace. A cloud workspace is a place associated with a repo where modified files can be stored before they are committed.",
      id = "CloudWorkspaceId",
      properties = {
        name = {
          description = "The unique name of the workspace within the repo. This is the name chosen by the client in the Source API's CreateWorkspace method.",
          type = "string",
        },
        repoId = {
          ["$ref"] = "RepoId",
          description = "The ID of the repo containing the workspace.",
        },
      },
      type = "object",
    },
    CloudWorkspaceSourceContext = {
      description = "A CloudWorkspaceSourceContext denotes a workspace at a particular snapshot.",
      id = "CloudWorkspaceSourceContext",
      properties = {
        snapshotId = {
          description = "The ID of the snapshot. An empty snapshot_id refers to the most recent snapshot.",
          type = "string",
        },
        workspaceId = {
          ["$ref"] = "CloudWorkspaceId",
          description = "The ID of the workspace.",
        },
      },
      type = "object",
    },
    Debuggee = {
      description = "Represents the debugged application. The application may include one or more replicated processes executing the same code. Each of these processes is attached with a debugger agent, carrying out the debugging commands. Agents attached to the same debuggee identify themselves as such by using exactly the same Debuggee message value when registering.",
      id = "Debuggee",
      properties = {
        agentVersion = {
          description = "Version ID of the agent. Schema: `domain/language-platform/vmajor.minor` (for example `google.com/java-gcp/v1.1`).",
          type = "string",
        },
        canaryMode = {
          description = "Used when setting breakpoint canary for this debuggee.",
          enum = {
            "CANARY_MODE_UNSPECIFIED",
            "CANARY_MODE_ALWAYS_ENABLED",
            "CANARY_MODE_ALWAYS_DISABLED",
            "CANARY_MODE_DEFAULT_ENABLED",
            "CANARY_MODE_DEFAULT_DISABLED",
          },
          enumDescriptions = {
            "CANARY_MODE_UNSPECIFIED is equivalent to CANARY_MODE_ALWAYS_DISABLED so that if the debuggee is not configured to use the canary feature, the feature will be disabled.",
            "Always enable breakpoint canary regardless of the value of breakpoint's canary option.",
            "Always disable breakpoint canary regardless of the value of breakpoint's canary option.",
            "Depends on the breakpoint's canary option. Enable canary by default if the breakpoint's canary option is not specified.",
            "Depends on the breakpoint's canary option. Disable canary by default if the breakpoint's canary option is not specified.",
          },
          type = "string",
        },
        description = {
          description = "Human readable description of the debuggee. Including a human-readable project name, environment name and version information is recommended.",
          type = "string",
        },
        extSourceContexts = {
          description = "References to the locations and revisions of the source code used in the deployed application.",
          items = {
            ["$ref"] = "ExtendedSourceContext",
          },
          type = "array",
        },
        id = {
          description = "Unique identifier for the debuggee generated by the controller service.",
          type = "string",
        },
        isDisabled = {
          description = "If set to `true`, indicates that the agent should disable itself and detach from the debuggee.",
          type = "boolean",
        },
        isInactive = {
          description = "If set to `true`, indicates that Controller service does not detect any activity from the debuggee agents and the application is possibly stopped.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of custom debuggee properties, populated by the agent, to be displayed to the user.",
          type = "object",
        },
        project = {
          description = "Project the debuggee is associated with. Use project number or id when registering a Google Cloud Platform project.",
          type = "string",
        },
        sourceContexts = {
          description = "References to the locations and revisions of the source code used in the deployed application.",
          items = {
            ["$ref"] = "SourceContext",
          },
          type = "array",
        },
        status = {
          ["$ref"] = "StatusMessage",
          description = "Human readable message to be displayed to the user about this debuggee. Absence of this field indicates no status. The message can be either informational or an error status.",
        },
        uniquifier = {
          description = "Uniquifier to further distinguish the application. It is possible that different applications might have identical values in the debuggee message, thus, incorrectly identified as a single application by the Controller service. This field adds salt to further distinguish the application. Agents should consider seeding this field with value that identifies the code, binary, configuration and environment.",
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
    ExtendedSourceContext = {
      description = "An ExtendedSourceContext is a SourceContext combined with additional details describing the context.",
      id = "ExtendedSourceContext",
      properties = {
        context = {
          ["$ref"] = "SourceContext",
          description = "Any source context.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels with user defined metadata.",
          type = "object",
        },
      },
      type = "object",
    },
    FormatMessage = {
      description = "Represents a message with parameters.",
      id = "FormatMessage",
      properties = {
        format = {
          description = "Format template for the message. The `format` uses placeholders `$0`, `$1`, etc. to reference parameters. `$$` can be used to denote the `$` character. Examples: * `Failed to load '$0' which helps debug $1 the first time it is loaded. Again, $0 is very important.` * `Please pay $$10 to use $0 instead of $1.`",
          type = "string",
        },
        parameters = {
          description = "Optional parameters to be embedded into the message.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GerritSourceContext = {
      description = "A SourceContext referring to a Gerrit project.",
      id = "GerritSourceContext",
      properties = {
        aliasContext = {
          ["$ref"] = "AliasContext",
          description = "An alias, which may be a branch or tag.",
        },
        aliasName = {
          description = "The name of an alias (branch, tag, etc.).",
          type = "string",
        },
        gerritProject = {
          description = "The full project name within the host. Projects may be nested, so \"project/subproject\" is a valid project name. The \"repo name\" is hostURI/project.",
          type = "string",
        },
        hostUri = {
          description = "The URI of a running Gerrit instance.",
          type = "string",
        },
        revisionId = {
          description = "A revision (commit) ID.",
          type = "string",
        },
      },
      type = "object",
    },
    GetBreakpointResponse = {
      description = "Response for getting breakpoint information.",
      id = "GetBreakpointResponse",
      properties = {
        breakpoint = {
          ["$ref"] = "Breakpoint",
          description = "Complete breakpoint state. The fields `id` and `location` are guaranteed to be set.",
        },
      },
      type = "object",
    },
    GitSourceContext = {
      description = "A GitSourceContext denotes a particular revision in a third party Git repository (e.g. GitHub).",
      id = "GitSourceContext",
      properties = {
        revisionId = {
          description = "Git commit hash. required.",
          type = "string",
        },
        url = {
          description = "Git repository URL.",
          type = "string",
        },
      },
      type = "object",
    },
    ListActiveBreakpointsResponse = {
      description = "Response for listing active breakpoints.",
      id = "ListActiveBreakpointsResponse",
      properties = {
        breakpoints = {
          description = "List of all active breakpoints. The fields `id` and `location` are guaranteed to be set on each breakpoint.",
          items = {
            ["$ref"] = "Breakpoint",
          },
          type = "array",
        },
        nextWaitToken = {
          description = "A token that can be used in the next method call to block until the list of breakpoints changes.",
          type = "string",
        },
        waitExpired = {
          description = "If set to `true`, indicates that there is no change to the list of active breakpoints and the server-selected timeout has expired. The `breakpoints` field would be empty and should be ignored.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ListBreakpointsResponse = {
      description = "Response for listing breakpoints.",
      id = "ListBreakpointsResponse",
      properties = {
        breakpoints = {
          description = "List of breakpoints matching the request. The fields `id` and `location` are guaranteed to be set on each breakpoint. The fields: `stack_frames`, `evaluated_expressions` and `variable_table` are cleared on each breakpoint regardless of its status.",
          items = {
            ["$ref"] = "Breakpoint",
          },
          type = "array",
        },
        nextWaitToken = {
          description = "A wait token that can be used in the next call to `list` (REST) or `ListBreakpoints` (RPC) to block until the list of breakpoints has changes.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDebuggeesResponse = {
      description = "Response for listing debuggees.",
      id = "ListDebuggeesResponse",
      properties = {
        debuggees = {
          description = "List of debuggees accessible to the calling user. The fields `debuggee.id` and `description` are guaranteed to be set. The `description` field is a human readable field provided by agents and can be displayed to users.",
          items = {
            ["$ref"] = "Debuggee",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProjectRepoId = {
      description = "Selects a repo using a Google Cloud Platform project ID (e.g. winged-cargo-31) and a repo name within that project.",
      id = "ProjectRepoId",
      properties = {
        projectId = {
          description = "The ID of the project.",
          type = "string",
        },
        repoName = {
          description = "The name of the repo. Leave empty for the default repo.",
          type = "string",
        },
      },
      type = "object",
    },
    RegisterDebuggeeRequest = {
      description = "Request to register a debuggee.",
      id = "RegisterDebuggeeRequest",
      properties = {
        debuggee = {
          ["$ref"] = "Debuggee",
          description = "Required. Debuggee information to register. The fields `project`, `uniquifier`, `description` and `agent_version` of the debuggee must be set.",
        },
      },
      type = "object",
    },
    RegisterDebuggeeResponse = {
      description = "Response for registering a debuggee.",
      id = "RegisterDebuggeeResponse",
      properties = {
        agentId = {
          description = "A unique ID generated for the agent. Each RegisterDebuggee request will generate a new agent ID.",
          type = "string",
        },
        debuggee = {
          ["$ref"] = "Debuggee",
          description = "Debuggee resource. The field `id` is guaranteed to be set (in addition to the echoed fields). If the field `is_disabled` is set to `true`, the agent should disable itself by removing all breakpoints and detaching from the application. It should however continue to poll `RegisterDebuggee` until reenabled.",
        },
      },
      type = "object",
    },
    RepoId = {
      description = "A unique identifier for a cloud repo.",
      id = "RepoId",
      properties = {
        projectRepoId = {
          ["$ref"] = "ProjectRepoId",
          description = "A combination of a project ID and a repo name.",
        },
        uid = {
          description = "A server-assigned, globally unique identifier.",
          type = "string",
        },
      },
      type = "object",
    },
    SetBreakpointResponse = {
      description = "Response for setting a breakpoint.",
      id = "SetBreakpointResponse",
      properties = {
        breakpoint = {
          ["$ref"] = "Breakpoint",
          description = "Breakpoint resource. The field `id` is guaranteed to be set (in addition to the echoed fields).",
        },
      },
      type = "object",
    },
    SourceContext = {
      description = "A SourceContext is a reference to a tree of files. A SourceContext together with a path point to a unique revision of a single file or directory.",
      id = "SourceContext",
      properties = {
        cloudRepo = {
          ["$ref"] = "CloudRepoSourceContext",
          description = "A SourceContext referring to a revision in a cloud repo.",
        },
        cloudWorkspace = {
          ["$ref"] = "CloudWorkspaceSourceContext",
          description = "A SourceContext referring to a snapshot in a cloud workspace.",
        },
        gerrit = {
          ["$ref"] = "GerritSourceContext",
          description = "A SourceContext referring to a Gerrit project.",
        },
        git = {
          ["$ref"] = "GitSourceContext",
          description = "A SourceContext referring to any third party Git repo (e.g. GitHub).",
        },
      },
      type = "object",
    },
    SourceLocation = {
      description = "Represents a location in the source code.",
      id = "SourceLocation",
      properties = {
        column = {
          description = "Column within a line. The first column in a line as the value `1`. Agents that do not support setting breakpoints on specific columns ignore this field.",
          format = "int32",
          type = "integer",
        },
        line = {
          description = "Line inside the file. The first line in the file has the value `1`.",
          format = "int32",
          type = "integer",
        },
        path = {
          description = "Path to the source file within the source context of the target binary.",
          type = "string",
        },
      },
      type = "object",
    },
    StackFrame = {
      description = "Represents a stack frame context.",
      id = "StackFrame",
      properties = {
        arguments = {
          description = "Set of arguments passed to this function. Note that this might not be populated for all stack frames.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
        ["function"] = {
          description = "Demangled function name at the call site.",
          type = "string",
        },
        locals = {
          description = "Set of local variables at the stack frame location. Note that this might not be populated for all stack frames.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
        location = {
          ["$ref"] = "SourceLocation",
          description = "Source location of the call site.",
        },
      },
      type = "object",
    },
    StatusMessage = {
      description = "Represents a contextual status message. The message can indicate an error or informational status, and refer to specific parts of the containing object. For example, the `Breakpoint.status` field can indicate an error referring to the `BREAKPOINT_SOURCE_LOCATION` with the message `Location not found`.",
      id = "StatusMessage",
      properties = {
        description = {
          ["$ref"] = "FormatMessage",
          description = "Status message text.",
        },
        isError = {
          description = "Distinguishes errors from informational messages.",
          type = "boolean",
        },
        refersTo = {
          description = "Reference to which the message applies.",
          enum = {
            "UNSPECIFIED",
            "BREAKPOINT_SOURCE_LOCATION",
            "BREAKPOINT_CONDITION",
            "BREAKPOINT_EXPRESSION",
            "BREAKPOINT_AGE",
            "BREAKPOINT_CANARY_FAILED",
            "VARIABLE_NAME",
            "VARIABLE_VALUE",
          },
          enumDescriptions = {
            "Status doesn't refer to any particular input.",
            "Status applies to the breakpoint and is related to its location.",
            "Status applies to the breakpoint and is related to its condition.",
            "Status applies to the breakpoint and is related to its expressions.",
            "Status applies to the breakpoint and is related to its age.",
            "Status applies to the breakpoint when the breakpoint failed to exit the canary state.",
            "Status applies to the entire variable.",
            "Status applies to variable value (variable name is valid).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UpdateActiveBreakpointRequest = {
      description = "Request to update an active breakpoint.",
      id = "UpdateActiveBreakpointRequest",
      properties = {
        breakpoint = {
          ["$ref"] = "Breakpoint",
          description = "Required. Updated breakpoint information. The field `id` must be set. The agent must echo all Breakpoint specification fields in the update.",
        },
      },
      type = "object",
    },
    UpdateActiveBreakpointResponse = {
      description = "Response for updating an active breakpoint. The message is defined to allow future extensions.",
      id = "UpdateActiveBreakpointResponse",
      properties = {},
      type = "object",
    },
    Variable = {
      description = "Represents a variable or an argument possibly of a compound object type. Note how the following variables are represented: 1) A simple variable: int x = 5 { name: \"x\", value: \"5\", type: \"int\" } // Captured variable 2) A compound object: struct T { int m1; int m2; }; T x = { 3, 7 }; { // Captured variable name: \"x\", type: \"T\", members { name: \"m1\", value: \"3\", type: \"int\" }, members { name: \"m2\", value: \"7\", type: \"int\" } } 3) A pointer where the pointee was captured: T x = { 3, 7 }; T* p = &x; { // Captured variable name: \"p\", type: \"T*\", value: \"0x00500500\", members { name: \"m1\", value: \"3\", type: \"int\" }, members { name: \"m2\", value: \"7\", type: \"int\" } } 4) A pointer where the pointee was not captured: T* p = new T; { // Captured variable name: \"p\", type: \"T*\", value: \"0x00400400\" status { is_error: true, description { format: \"unavailable\" } } } The status should describe the reason for the missing value, such as ``, ``, ``. Note that a null pointer should not have members. 5) An unnamed value: int* p = new int(7); { // Captured variable name: \"p\", value: \"0x00500500\", type: \"int*\", members { value: \"7\", type: \"int\" } } 6) An unnamed pointer where the pointee was not captured: int* p = new int(7); int** pp = &p; { // Captured variable name: \"pp\", value: \"0x00500500\", type: \"int**\", members { value: \"0x00400400\", type: \"int*\" status { is_error: true, description: { format: \"unavailable\" } } } } } To optimize computation, memory and network traffic, variables that repeat in the output multiple times can be stored once in a shared variable table and be referenced using the `var_table_index` field. The variables stored in the shared table are nameless and are essentially a partition of the complete variable. To reconstruct the complete variable, merge the referencing variable with the referenced variable. When using the shared variable table, the following variables: T x = { 3, 7 }; T* p = &x; T& r = x; { name: \"x\", var_table_index: 3, type: \"T\" } // Captured variables { name: \"p\", value \"0x00500500\", type=\"T*\", var_table_index: 3 } { name: \"r\", type=\"T&\", var_table_index: 3 } { // Shared variable table entry #3: members { name: \"m1\", value: \"3\", type: \"int\" }, members { name: \"m2\", value: \"7\", type: \"int\" } } Note that the pointer address is stored with the referencing variable and not with the referenced variable. This allows the referenced variable to be shared between pointers and references. The type field is optional. The debugger agent may or may not support it.",
      id = "Variable",
      properties = {
        members = {
          description = "Members contained or pointed to by the variable.",
          items = {
            ["$ref"] = "Variable",
          },
          type = "array",
        },
        name = {
          description = "Name of the variable, if any.",
          type = "string",
        },
        status = {
          ["$ref"] = "StatusMessage",
          description = "Status associated with the variable. This field will usually stay unset. A status of a single variable only applies to that variable or expression. The rest of breakpoint data still remains valid. Variables might be reported in error state even when breakpoint is not in final state. The message may refer to variable name with `refers_to` set to `VARIABLE_NAME`. Alternatively `refers_to` will be set to `VARIABLE_VALUE`. In either case variable value and members will be unset. Example of error message applied to name: `Invalid expression syntax`. Example of information message applied to value: `Not captured`. Examples of error message applied to value: * `Malformed string`, * `Field f not found in class C` * `Null pointer dereference`",
        },
        type = {
          description = "Variable type (e.g. `MyClass`). If the variable is split with `var_table_index`, `type` goes next to `value`. The interpretation of a type is agent specific. It is recommended to include the dynamic type rather than a static type of an object.",
          type = "string",
        },
        value = {
          description = "Simple value of the variable.",
          type = "string",
        },
        varTableIndex = {
          description = "Reference to a variable in the shared variable table. More than one variable can reference the same variable in the table. The `var_table_index` field is an index into `variable_table` in Breakpoint.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Debugger API",
  version = "v2",
  version_module = true,
}