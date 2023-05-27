return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/firebase"] = {
          description = "View and administer all your Firebase data and settings",
        },
        ["https://www.googleapis.com/auth/firebase.readonly"] = {
          description = "View all your Firebase data and settings",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://firebaserules.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Firebase Rules",
  description = "Creates and manages rules that determine when a Firebase Rules-enabled service should permit a request. ",
  discoveryVersion = "v1",
  documentationLink = "https://firebase.google.com/docs/storage/security",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "firebaserules:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://firebaserules.mtls.googleapis.com/",
  name = "firebaserules",
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
      methods = {
        test = {
          description = "Test `Source` for syntactic and semantic correctness. Issues present, if any, will be returned to the caller with a description, severity, and source location. The test method may be executed with `Source` or a `Ruleset` name. Passing `Source` is useful for unit testing new rules. Passing a `Ruleset` name is useful for regression testing an existing rule. The following is an example of `Source` that permits users to upload images to a bucket bearing their user id and matching the correct metadata: _*Example*_ // Users are allowed to subscribe and unsubscribe to the blog. service firebase.storage { match /users/{userId}/images/{imageName} { allow write: if userId == request.auth.uid && (imageName.matches('*.png$') || imageName.matches('*.jpg$')) && resource.mimeType.matches('^image/') } }",
          flatPath = "v1/projects/{projectsId}:test",
          httpMethod = "POST",
          id = "firebaserules.projects.test",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Tests may either provide `source` or a `Ruleset` resource name. For tests against `source`, the resource name must refer to the project: Format: `projects/{project_id}` For tests against a `Ruleset`, this must be the `Ruleset` resource name: Format: `projects/{project_id}/rulesets/{ruleset_id}`",
              location = "path",
              pattern = "^projects/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:test",
          request = {
            ["$ref"] = "TestRulesetRequest",
          },
          response = {
            ["$ref"] = "TestRulesetResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/firebase",
            "https://www.googleapis.com/auth/firebase.readonly",
          },
        },
      },
      resources = {
        releases = {
          methods = {
            create = {
              description = "Create a `Release`. Release names should reflect the developer's deployment practices. For example, the release name may include the environment name, application name, application version, or any other name meaningful to the developer. Once a `Release` refers to a `Ruleset`, the rules can be enforced by Firebase Rules-enabled services. More than one `Release` may be 'live' concurrently. Consider the following three `Release` names for `projects/foo` and the `Ruleset` to which they refer. Release Name -> Ruleset Name * projects/foo/releases/prod -> projects/foo/rulesets/uuid123 * projects/foo/releases/prod/beta -> projects/foo/rulesets/uuid123 * projects/foo/releases/prod/v23 -> projects/foo/rulesets/uuid456 The relationships reflect a `Ruleset` rollout in progress. The `prod` and `prod/beta` releases refer to the same `Ruleset`. However, `prod/v23` refers to a new `Ruleset`. The `Ruleset` reference for a `Release` may be updated using the UpdateRelease method.",
              flatPath = "v1/projects/{projectsId}/releases",
              httpMethod = "POST",
              id = "firebaserules.projects.releases.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the project which owns this `Release`. Format: `projects/{project_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}/releases",
              request = {
                ["$ref"] = "Release",
              },
              response = {
                ["$ref"] = "Release",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            delete = {
              description = "Delete a `Release` by resource name.",
              flatPath = "v1/projects/{projectsId}/releases/{releasesId}",
              httpMethod = "DELETE",
              id = "firebaserules.projects.releases.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the `Release` to delete. Format: `projects/{project_id}/releases/{release_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/releases/.*$",
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
                "https://www.googleapis.com/auth/firebase",
              },
            },
            get = {
              description = "Get a `Release` by name.",
              flatPath = "v1/projects/{projectsId}/releases/{releasesId}",
              httpMethod = "GET",
              id = "firebaserules.projects.releases.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the `Release`. Format: `projects/{project_id}/releases/{release_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/releases/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Release",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
                "https://www.googleapis.com/auth/firebase.readonly",
              },
            },
            getExecutable = {
              description = "Get the `Release` executable to use when enforcing rules.",
              flatPath = "v1/projects/{projectsId}/releases/{releasesId}:getExecutable",
              httpMethod = "GET",
              id = "firebaserules.projects.releases.getExecutable",
              parameterOrder = {
                "name",
              },
              parameters = {
                executableVersion = {
                  description = "The requested runtime executable version. Defaults to FIREBASE_RULES_EXECUTABLE_V1.",
                  enum = {
                    "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED",
                    "FIREBASE_RULES_EXECUTABLE_V1",
                    "FIREBASE_RULES_EXECUTABLE_V2",
                  },
                  enumDescriptions = {
                    "Executable format unspecified. Defaults to FIREBASE_RULES_EXECUTABLE_V1",
                    "Firebase Rules syntax 'rules2' executable versions: Custom AST for use with Java clients.",
                    "CEL-based executable for use with C++ clients.",
                  },
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. Resource name of the `Release`. Format: `projects/{project_id}/releases/{release_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/releases/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:getExecutable",
              response = {
                ["$ref"] = "GetReleaseExecutableResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
                "https://www.googleapis.com/auth/firebase.readonly",
              },
            },
            list = {
              description = "List the `Release` values for a project. This list may optionally be filtered by `Release` name, `Ruleset` name, `TestSuite` name, or any combination thereof.",
              flatPath = "v1/projects/{projectsId}/releases",
              httpMethod = "GET",
              id = "firebaserules.projects.releases.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "`Release` filter. The list method supports filters with restrictions on the `Release.name`, and `Release.ruleset_name`. Example 1: A filter of 'name=prod*' might return `Release`s with names within 'projects/foo' prefixed with 'prod': Name -> Ruleset Name: * projects/foo/releases/prod -> projects/foo/rulesets/uuid1234 * projects/foo/releases/prod/v1 -> projects/foo/rulesets/uuid1234 * projects/foo/releases/prod/v2 -> projects/foo/rulesets/uuid8888 Example 2: A filter of `name=prod* ruleset_name=uuid1234` would return only `Release` instances for 'projects/foo' with names prefixed with 'prod' referring to the same `Ruleset` name of 'uuid1234': Name -> Ruleset Name: * projects/foo/releases/prod -> projects/foo/rulesets/1234 * projects/foo/releases/prod/v1 -> projects/foo/rulesets/1234 In the examples, the filter parameters refer to the search filters are relative to the project. Fully qualified prefixed may also be used.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. Resource name for the project. Format: `projects/{project_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Page size to load. Maximum of 100. Defaults to 10. Note: `page_size` is just a hint and the service may choose to load fewer than `page_size` results due to the size of the output. To traverse all of the releases, the caller should iterate until the `page_token` on the response is empty.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Next page token for the next batch of `Release` instances.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/releases",
              response = {
                ["$ref"] = "ListReleasesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
                "https://www.googleapis.com/auth/firebase.readonly",
              },
            },
            patch = {
              description = "Update a `Release` via PATCH. Only updates to `ruleset_name` will be honored. `Release` rename is not supported. To create a `Release` use the CreateRelease method.",
              flatPath = "v1/projects/{projectsId}/releases/{releasesId}",
              httpMethod = "PATCH",
              id = "firebaserules.projects.releases.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the project which owns this `Release`. Format: `projects/{project_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/releases/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "UpdateReleaseRequest",
              },
              response = {
                ["$ref"] = "Release",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
          },
        },
        rulesets = {
          methods = {
            create = {
              description = "Create a `Ruleset` from `Source`. The `Ruleset` is given a unique generated name which is returned to the caller. `Source` containing syntactic or semantics errors will result in an error response indicating the first error encountered. For a detailed view of `Source` issues, use TestRuleset.",
              flatPath = "v1/projects/{projectsId}/rulesets",
              httpMethod = "POST",
              id = "firebaserules.projects.rulesets.create",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for Project which owns this `Ruleset`. Format: `projects/{project_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}/rulesets",
              request = {
                ["$ref"] = "Ruleset",
              },
              response = {
                ["$ref"] = "Ruleset",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
              },
            },
            delete = {
              description = "Delete a `Ruleset` by resource name. If the `Ruleset` is referenced by a `Release` the operation will fail.",
              flatPath = "v1/projects/{projectsId}/rulesets/{rulesetsId}",
              httpMethod = "DELETE",
              id = "firebaserules.projects.rulesets.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the ruleset to delete. Format: `projects/{project_id}/rulesets/{ruleset_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/rulesets/[^/]+$",
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
                "https://www.googleapis.com/auth/firebase",
              },
            },
            get = {
              description = "Get a `Ruleset` by name including the full `Source` contents.",
              flatPath = "v1/projects/{projectsId}/rulesets/{rulesetsId}",
              httpMethod = "GET",
              id = "firebaserules.projects.rulesets.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the ruleset to get. Format: `projects/{project_id}/rulesets/{ruleset_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/rulesets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Ruleset",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
                "https://www.googleapis.com/auth/firebase.readonly",
              },
            },
            list = {
              description = "List `Ruleset` metadata only and optionally filter the results by `Ruleset` name. The full `Source` contents of a `Ruleset` may be retrieved with GetRuleset.",
              flatPath = "v1/projects/{projectsId}/rulesets",
              httpMethod = "GET",
              id = "firebaserules.projects.rulesets.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "`Ruleset` filter. The list method supports filters with restrictions on `Ruleset.name`. Filters on `Ruleset.create_time` should use the `date` function which parses strings that conform to the RFC 3339 date/time specifications. Example: `create_time > date(\"2017-01-01T00:00:00Z\") AND name=UUID-*`",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. Resource name for the project. Format: `projects/{project_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Page size to load. Maximum of 100. Defaults to 10. Note: `page_size` is just a hint and the service may choose to load less than `page_size` due to the size of the output. To traverse all of the releases, caller should iterate until the `page_token` is empty.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Next page token for loading the next batch of `Ruleset` instances.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/rulesets",
              response = {
                ["$ref"] = "ListRulesetsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/firebase",
                "https://www.googleapis.com/auth/firebase.readonly",
              },
            },
          },
        },
      },
    },
  },
  revision = "20221228",
  rootUrl = "https://firebaserules.googleapis.com/",
  schemas = {
    Arg = {
      description = "Arg matchers for the mock function.",
      id = "Arg",
      properties = {
        anyValue = {
          ["$ref"] = "Empty",
          description = "Argument matches any value provided.",
        },
        exactValue = {
          description = "Argument exactly matches value provided.",
          type = "any",
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
    ExpressionReport = {
      description = "Describes where in a file an expression is found and what it was evaluated to over the course of its use.",
      id = "ExpressionReport",
      properties = {
        children = {
          description = "Subexpressions",
          items = {
            ["$ref"] = "ExpressionReport",
          },
          type = "array",
        },
        sourcePosition = {
          ["$ref"] = "SourcePosition",
          description = "Position of expression in original rules source.",
        },
        values = {
          description = "Values that this expression evaluated to when encountered.",
          items = {
            ["$ref"] = "ValueCount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    File = {
      description = "`File` containing source content.",
      id = "File",
      properties = {
        content = {
          description = "Required. Textual Content.",
          type = "string",
        },
        fingerprint = {
          description = "Fingerprint (e.g. github sha) associated with the `File`.",
          format = "byte",
          type = "string",
        },
        name = {
          description = "Required. File name.",
          type = "string",
        },
      },
      type = "object",
    },
    FunctionCall = {
      description = "Represents a service-defined function call that was invoked during test execution.",
      id = "FunctionCall",
      properties = {
        args = {
          description = "The arguments that were provided to the function.",
          items = {
            type = "any",
          },
          type = "array",
        },
        ["function"] = {
          description = "Name of the function invoked.",
          type = "string",
        },
      },
      type = "object",
    },
    FunctionMock = {
      description = "Mock function definition. Mocks must refer to a function declared by the target service. The type of the function args and result will be inferred at test time. If either the arg or result values are not compatible with function type declaration, the request will be considered invalid. More than one `FunctionMock` may be provided for a given function name so long as the `Arg` matchers are distinct. There may be only one function for a given overload where all `Arg` values are `Arg.any_value`.",
      id = "FunctionMock",
      properties = {
        args = {
          description = "The list of `Arg` values to match. The order in which the arguments are provided is the order in which they must appear in the function invocation.",
          items = {
            ["$ref"] = "Arg",
          },
          type = "array",
        },
        ["function"] = {
          description = "The name of the function. The function name must match one provided by a service declaration.",
          type = "string",
        },
        result = {
          ["$ref"] = "Result",
          description = "The mock result of the function call.",
        },
      },
      type = "object",
    },
    GetReleaseExecutableResponse = {
      description = "The response for FirebaseRulesService.GetReleaseExecutable",
      id = "GetReleaseExecutableResponse",
      properties = {
        executable = {
          description = "Executable view of the `Ruleset` referenced by the `Release`.",
          format = "byte",
          type = "string",
        },
        executableVersion = {
          description = "The Rules runtime version of the executable.",
          enum = {
            "RELEASE_EXECUTABLE_VERSION_UNSPECIFIED",
            "FIREBASE_RULES_EXECUTABLE_V1",
            "FIREBASE_RULES_EXECUTABLE_V2",
          },
          enumDescriptions = {
            "Executable format unspecified. Defaults to FIREBASE_RULES_EXECUTABLE_V1",
            "Firebase Rules syntax 'rules2' executable versions: Custom AST for use with Java clients.",
            "CEL-based executable for use with C++ clients.",
          },
          type = "string",
        },
        language = {
          description = "`Language` used to generate the executable bytes.",
          enum = {
            "LANGUAGE_UNSPECIFIED",
            "FIREBASE_RULES",
            "EVENT_FLOW_TRIGGERS",
          },
          enumDescriptions = {
            "Language unspecified. Defaults to FIREBASE_RULES.",
            "Firebase Rules language.",
            "Event Flow triggers.",
          },
          type = "string",
        },
        rulesetName = {
          description = "`Ruleset` name associated with the `Release` executable.",
          type = "string",
        },
        syncTime = {
          description = "Optional, indicates the freshness of the result. The response is guaranteed to be the latest within an interval up to the sync_time (inclusive).",
          format = "google-datetime",
          type = "string",
        },
        updateTime = {
          description = "Timestamp for the most recent `Release.update_time`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Issue = {
      description = "Issues include warnings, errors, and deprecation notices.",
      id = "Issue",
      properties = {
        description = {
          description = "Short error description.",
          type = "string",
        },
        severity = {
          description = "The severity of the issue.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "DEPRECATION",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "An unspecified severity.",
            "Deprecation issue for statements and method that may no longer be supported or maintained.",
            "Warnings such as: unused variables.",
            "Errors such as: unmatched curly braces or variable redefinition.",
          },
          type = "string",
        },
        sourcePosition = {
          ["$ref"] = "SourcePosition",
          description = "Position of the issue in the `Source`.",
        },
      },
      type = "object",
    },
    ListReleasesResponse = {
      description = "The response for FirebaseRulesService.ListReleases.",
      id = "ListReleasesResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results. If the value is empty, no further results remain.",
          type = "string",
        },
        releases = {
          description = "List of `Release` instances.",
          items = {
            ["$ref"] = "Release",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListRulesetsResponse = {
      description = "The response for FirebaseRulesService.ListRulesets.",
      id = "ListRulesetsResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results. If the value is empty, no further results remain.",
          type = "string",
        },
        rulesets = {
          description = "List of `Ruleset` instances.",
          items = {
            ["$ref"] = "Ruleset",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Metadata = {
      description = "Metadata for a Ruleset.",
      id = "Metadata",
      properties = {
        services = {
          description = "Services that this ruleset has declarations for (e.g., \"cloud.firestore\"). There may be 0+ of these.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Release = {
      description = "`Release` is a named reference to a `Ruleset`. Once a `Release` refers to a `Ruleset`, rules-enabled services will be able to enforce the `Ruleset`.",
      id = "Release",
      properties = {
        createTime = {
          description = "Output only. Time the release was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Required. Format: `projects/{project_id}/releases/{release_id}`",
          type = "string",
        },
        rulesetName = {
          description = "Required. Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Time the release was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Result = {
      description = "Possible result values from the function mock invocation.",
      id = "Result",
      properties = {
        undefined = {
          ["$ref"] = "Empty",
          description = "The result is undefined, meaning the result could not be computed.",
        },
        value = {
          description = "The result is an actual value. The type of the value must match that of the type declared by the service.",
          type = "any",
        },
      },
      type = "object",
    },
    Ruleset = {
      description = "`Ruleset` is an immutable copy of `Source` with a globally unique identifier and a creation time.",
      id = "Ruleset",
      properties = {
        createTime = {
          description = "Output only. Time the `Ruleset` was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "Metadata",
          description = "Output only. The metadata for this ruleset.",
          readOnly = true,
        },
        name = {
          description = "Output only. Name of the `Ruleset`. The ruleset_id is auto generated by the service. Format: `projects/{project_id}/rulesets/{ruleset_id}`",
          readOnly = true,
          type = "string",
        },
        source = {
          ["$ref"] = "Source",
          description = "Required. `Source` for the `Ruleset`.",
        },
      },
      type = "object",
    },
    Source = {
      description = "`Source` is one or more `File` messages comprising a logical set of rules.",
      id = "Source",
      properties = {
        files = {
          description = "Required. `File` set constituting the `Source` bundle.",
          items = {
            ["$ref"] = "File",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SourcePosition = {
      description = "Position in the `Source` content including its line, column number, and an index of the `File` in the `Source` message. Used for debug purposes.",
      id = "SourcePosition",
      properties = {
        column = {
          description = "First column on the source line associated with the source fragment.",
          format = "int32",
          type = "integer",
        },
        currentOffset = {
          description = "Start position relative to the beginning of the file.",
          format = "int32",
          type = "integer",
        },
        endOffset = {
          description = "End position relative to the beginning of the file.",
          format = "int32",
          type = "integer",
        },
        fileName = {
          description = "Name of the `File`.",
          type = "string",
        },
        line = {
          description = "Line number of the source fragment. 1-based.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TestCase = {
      description = "`TestCase` messages provide the request context and an expectation as to whether the given context will be allowed or denied. Test cases may specify the `request`, `resource`, and `function_mocks` to mock a function call to a service-provided function. The `request` object represents context present at request-time. The `resource` is the value of the target resource as it appears in persistent storage before the request is executed.",
      id = "TestCase",
      properties = {
        expectation = {
          description = "Test expectation.",
          enum = {
            "EXPECTATION_UNSPECIFIED",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "Unspecified expectation.",
            "Expect an allowed result.",
            "Expect a denied result.",
          },
          type = "string",
        },
        expressionReportLevel = {
          description = "Specifies what should be included in the response.",
          enum = {
            "LEVEL_UNSPECIFIED",
            "NONE",
            "FULL",
            "VISITED",
          },
          enumDescriptions = {
            "No level has been specified. Defaults to \"NONE\" behavior.",
            "Do not include any additional information.",
            "Include detailed reporting on expressions evaluated.",
            "Only include the expressions that were visited during evaluation.",
          },
          type = "string",
        },
        functionMocks = {
          description = "Optional function mocks for service-defined functions. If not set, any service defined function is expected to return an error, which may or may not influence the test outcome.",
          items = {
            ["$ref"] = "FunctionMock",
          },
          type = "array",
        },
        pathEncoding = {
          description = "Specifies whether paths (such as request.path) are encoded and how.",
          enum = {
            "ENCODING_UNSPECIFIED",
            "URL_ENCODED",
            "PLAIN",
          },
          enumDescriptions = {
            "No encoding has been specified. Defaults to \"URL_ENCODED\" behavior.",
            "Treats path segments as URL encoded but with non-encoded separators (\"/\"). This is the default behavior.",
            "Treats total path as non-URL encoded e.g. raw.",
          },
          type = "string",
        },
        request = {
          description = "Request context. The exact format of the request context is service-dependent. See the appropriate service documentation for information about the supported fields and types on the request. Minimally, all services support the following fields and types: Request field | Type ---------------|----------------- auth.uid | `string` auth.token | `map` headers | `map` method | `string` params | `map` path | `string` time | `google.protobuf.Timestamp` If the request value is not well-formed for the service, the request will be rejected as an invalid argument.",
          type = "any",
        },
        resource = {
          description = "Optional resource value as it appears in persistent storage before the request is fulfilled. The resource type depends on the `request.path` value.",
          type = "any",
        },
      },
      type = "object",
    },
    TestResult = {
      description = "Test result message containing the state of the test as well as a description and source position for test failures.",
      id = "TestResult",
      properties = {
        debugMessages = {
          description = "Debug messages related to test execution issues encountered during evaluation. Debug messages may be related to too many or too few invocations of function mocks or to runtime errors that occur during evaluation. For example: ```Unable to read variable [name: \"resource\"]```",
          items = {
            type = "string",
          },
          type = "array",
        },
        errorPosition = {
          ["$ref"] = "SourcePosition",
          description = "Position in the `Source` or `Ruleset` where the principle runtime error occurs. Evaluation of an expression may result in an error. Rules are deny by default, so a `DENY` expectation when an error is generated is valid. When there is a `DENY` with an error, the `SourcePosition` is returned. E.g. `error_position { line: 19 column: 37 }`",
        },
        expressionReports = {
          description = "The mapping from expression in the ruleset AST to the values they were evaluated to. Partially-nested to mirror AST structure. Note that this field is actually tracking expressions and not permission statements in contrast to the \"visited_expressions\" field above. Literal expressions are omitted.",
          items = {
            ["$ref"] = "ExpressionReport",
          },
          type = "array",
        },
        functionCalls = {
          description = "The set of function calls made to service-defined methods. Function calls are included in the order in which they are encountered during evaluation, are provided for both mocked and unmocked functions, and included on the response regardless of the test `state`.",
          items = {
            ["$ref"] = "FunctionCall",
          },
          type = "array",
        },
        state = {
          description = "State of the test.",
          enum = {
            "STATE_UNSPECIFIED",
            "SUCCESS",
            "FAILURE",
          },
          enumDescriptions = {
            "Test state is not set.",
            "Test is a success.",
            "Test is a failure.",
          },
          type = "string",
        },
        visitedExpressions = {
          description = "The set of visited permission expressions for a given test. This returns the positions and evaluation results of all visited permission expressions which were relevant to the test case, e.g. ``` match /path { allow read if: } ``` For a detailed report of the intermediate evaluation states, see the `expression_reports` field",
          items = {
            ["$ref"] = "VisitedExpression",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestRulesetRequest = {
      description = "The request for FirebaseRulesService.TestRuleset.",
      id = "TestRulesetRequest",
      properties = {
        source = {
          ["$ref"] = "Source",
          description = "Optional `Source` to be checked for correctness. This field must not be set when the resource name refers to a `Ruleset`.",
        },
        testSuite = {
          ["$ref"] = "TestSuite",
          description = "The tests to execute against the `Source`. When `Source` is provided inline, the test cases will only be run if the `Source` is syntactically and semantically valid. Inline `TestSuite` to run.",
        },
      },
      type = "object",
    },
    TestRulesetResponse = {
      description = "The response for FirebaseRulesService.TestRuleset.",
      id = "TestRulesetResponse",
      properties = {
        issues = {
          description = "Syntactic and semantic `Source` issues of varying severity. Issues of `ERROR` severity will prevent tests from executing.",
          items = {
            ["$ref"] = "Issue",
          },
          type = "array",
        },
        testResults = {
          description = "The set of test results given the test cases in the `TestSuite`. The results will appear in the same order as the test cases appear in the `TestSuite`.",
          items = {
            ["$ref"] = "TestResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestSuite = {
      description = "`TestSuite` is a collection of `TestCase` instances that validate the logical correctness of a `Ruleset`. The `TestSuite` may be referenced in-line within a `TestRuleset` invocation or as part of a `Release` object as a pre-release check.",
      id = "TestSuite",
      properties = {
        testCases = {
          description = "Collection of test cases associated with the `TestSuite`.",
          items = {
            ["$ref"] = "TestCase",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateReleaseRequest = {
      description = "The request for FirebaseRulesService.UpdateRelease.",
      id = "UpdateReleaseRequest",
      properties = {
        release = {
          ["$ref"] = "Release",
          description = "Required. `Release` to update.",
        },
        updateMask = {
          description = "Specifies which fields to update.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    ValueCount = {
      description = "Tuple for how many times an Expression was evaluated to a particular ExpressionValue.",
      id = "ValueCount",
      properties = {
        count = {
          description = "The amount of times that expression returned.",
          format = "int32",
          type = "integer",
        },
        value = {
          description = "The return value of the expression",
          type = "any",
        },
      },
      type = "object",
    },
    VisitedExpression = {
      description = "Store the position and access outcome for an expression visited in rules.",
      id = "VisitedExpression",
      properties = {
        sourcePosition = {
          ["$ref"] = "SourcePosition",
          description = "Position in the `Source` or `Ruleset` where an expression was visited.",
        },
        value = {
          description = "The evaluated value for the visited expression, e.g. true/false",
          type = "any",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Firebase Rules API",
  version = "v1",
  version_module = true,
}
