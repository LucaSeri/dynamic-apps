return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/source.full_control"] = {
          description = "Manage your source code repositories",
        },
        ["https://www.googleapis.com/auth/source.read_only"] = {
          description = "View the contents of your source code repositories",
        },
        ["https://www.googleapis.com/auth/source.read_write"] = {
          description = "Manage the contents of your source code repositories",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://sourcerepo.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Source Repositories",
  description = "Accesses source code repositories hosted by Google.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/source-repositories/docs/apis",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "sourcerepo:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://sourcerepo.mtls.googleapis.com/",
  name = "sourcerepo",
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
        getConfig = {
          description = "Returns the Cloud Source Repositories configuration of the project.",
          flatPath = "v1/projects/{projectsId}/config",
          httpMethod = "GET",
          id = "sourcerepo.projects.getConfig",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the requested project. Values are of the form `projects/`.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}/config",
          response = {
            ["$ref"] = "ProjectConfig",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        updateConfig = {
          description = "Updates the Cloud Source Repositories configuration of the project.",
          flatPath = "v1/projects/{projectsId}/config",
          httpMethod = "PATCH",
          id = "sourcerepo.projects.updateConfig",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the requested project. Values are of the form `projects/`.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}/config",
          request = {
            ["$ref"] = "UpdateProjectConfigRequest",
          },
          response = {
            ["$ref"] = "ProjectConfig",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        repos = {
          methods = {
            create = {
              description = "Creates a repo in the given project with the given name. If the named repository already exists, `CreateRepo` returns `ALREADY_EXISTS`.",
              flatPath = "v1/projects/{projectsId}/repos",
              httpMethod = "POST",
              id = "sourcerepo.projects.repos.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The project in which to create the repo. Values are of the form `projects/`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/repos",
              request = {
                ["$ref"] = "Repo",
              },
              response = {
                ["$ref"] = "Repo",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/source.full_control",
              },
            },
            delete = {
              description = "Deletes a repo.",
              flatPath = "v1/projects/{projectsId}/repos/{reposId}",
              httpMethod = "DELETE",
              id = "sourcerepo.projects.repos.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the repo to delete. Values are of the form `projects//repos/`.",
                  location = "path",
                  pattern = "^projects/[^/]+/repos/.*$",
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
                "https://www.googleapis.com/auth/source.full_control",
              },
            },
            get = {
              description = "Returns information about a repo.",
              flatPath = "v1/projects/{projectsId}/repos/{reposId}",
              httpMethod = "GET",
              id = "sourcerepo.projects.repos.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the requested repository. Values are of the form `projects//repos/`.",
                  location = "path",
                  pattern = "^projects/[^/]+/repos/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Repo",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/source.full_control",
                "https://www.googleapis.com/auth/source.read_only",
                "https://www.googleapis.com/auth/source.read_write",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
              flatPath = "v1/projects/{projectsId}/repos/{reposId}:getIamPolicy",
              httpMethod = "GET",
              id = "sourcerepo.projects.repos.getIamPolicy",
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
                  pattern = "^projects/[^/]+/repos/.*$",
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
                "https://www.googleapis.com/auth/source.full_control",
                "https://www.googleapis.com/auth/source.read_only",
                "https://www.googleapis.com/auth/source.read_write",
              },
            },
            list = {
              description = "Returns all repos belonging to a project. The sizes of the repos are not set by ListRepos. To get the size of a repo, use GetRepo.",
              flatPath = "v1/projects/{projectsId}/repos",
              httpMethod = "GET",
              id = "sourcerepo.projects.repos.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The project ID whose repos should be listed. Values are of the form `projects/`.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of repositories to return; between 1 and 500. If not set or zero, defaults to 100 at the server.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Resume listing repositories where a prior ListReposResponse left off. This is an opaque token that must be obtained from a recent, prior ListReposResponse's next_page_token field.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/repos",
              response = {
                ["$ref"] = "ListReposResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/source.full_control",
                "https://www.googleapis.com/auth/source.read_only",
                "https://www.googleapis.com/auth/source.read_write",
              },
            },
            patch = {
              description = "Updates information about a repo.",
              flatPath = "v1/projects/{projectsId}/repos/{reposId}",
              httpMethod = "PATCH",
              id = "sourcerepo.projects.repos.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the requested repository. Values are of the form `projects//repos/`.",
                  location = "path",
                  pattern = "^projects/[^/]+/repos/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "UpdateRepoRequest",
              },
              response = {
                ["$ref"] = "Repo",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified resource. Replaces any existing policy.",
              flatPath = "v1/projects/{projectsId}/repos/{reposId}:setIamPolicy",
              httpMethod = "POST",
              id = "sourcerepo.projects.repos.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/repos/.*$",
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
                "https://www.googleapis.com/auth/source.full_control",
              },
            },
            sync = {
              description = "Synchronize a connected repo. The response contains SyncRepoMetadata in the metadata field.",
              flatPath = "v1/projects/{projectsId}/repos/{reposId}:sync",
              httpMethod = "POST",
              id = "sourcerepo.projects.repos.sync",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the repo to synchronize. Values are of the form `projects//repos/`.",
                  location = "path",
                  pattern = "^projects/[^/]+/repos/.*$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:sync",
              request = {
                ["$ref"] = "SyncRepoRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.",
              flatPath = "v1/projects/{projectsId}/repos/{reposId}:testIamPermissions",
              httpMethod = "POST",
              id = "sourcerepo.projects.repos.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/repos/.*$",
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
                "https://www.googleapis.com/auth/source.full_control",
                "https://www.googleapis.com/auth/source.read_only",
                "https://www.googleapis.com/auth/source.read_write",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://sourcerepo.googleapis.com/",
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
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
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
    ListReposResponse = {
      description = "Response for ListRepos. The size is not set in the returned repositories.",
      id = "ListReposResponse",
      properties = {
        nextPageToken = {
          description = "If non-empty, additional repositories exist within the project. These can be retrieved by including this value in the next ListReposRequest's page_token field.",
          type = "string",
        },
        repos = {
          description = "The listed repos.",
          items = {
            ["$ref"] = "Repo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MirrorConfig = {
      description = "Configuration to automatically mirror a repository from another hosting service, for example GitHub or Bitbucket.",
      id = "MirrorConfig",
      properties = {
        deployKeyId = {
          description = "ID of the SSH deploy key at the other hosting service. Removing this key from the other service would deauthorize Google Cloud Source Repositories from mirroring.",
          type = "string",
        },
        url = {
          description = "URL of the main repository at the other hosting service.",
          type = "string",
        },
        webhookId = {
          description = "ID of the webhook listening to updates to trigger mirroring. Removing this webhook from the other hosting service will stop Google Cloud Source Repositories from receiving notifications, and thereby disabling mirroring.",
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
    ProjectConfig = {
      description = "Cloud Source Repositories configuration of a project.",
      id = "ProjectConfig",
      properties = {
        enablePrivateKeyCheck = {
          description = "Reject a Git push that contains a private key.",
          type = "boolean",
        },
        name = {
          description = "The name of the project. Values are of the form `projects/`.",
          type = "string",
        },
        pubsubConfigs = {
          additionalProperties = {
            ["$ref"] = "PubsubConfig",
          },
          description = "How this project publishes a change in the repositories through Cloud Pub/Sub. Keyed by the topic names.",
          type = "object",
        },
      },
      type = "object",
    },
    PubsubConfig = {
      description = "Configuration to publish a Cloud Pub/Sub message.",
      id = "PubsubConfig",
      properties = {
        messageFormat = {
          description = "The format of the Cloud Pub/Sub messages.",
          enum = {
            "MESSAGE_FORMAT_UNSPECIFIED",
            "PROTOBUF",
            "JSON",
          },
          enumDescriptions = {
            "Unspecified.",
            "The message payload is a serialized protocol buffer of SourceRepoEvent.",
            "The message payload is a JSON string of SourceRepoEvent.",
          },
          type = "string",
        },
        serviceAccountEmail = {
          description = "Email address of the service account used for publishing Cloud Pub/Sub messages. This service account needs to be in the same project as the PubsubConfig. When added, the caller needs to have iam.serviceAccounts.actAs permission on this service account. If unspecified, it defaults to the compute engine default service account.",
          type = "string",
        },
        topic = {
          description = "A topic of Cloud Pub/Sub. Values are of the form `projects//topics/`. The project needs to be the same project as this config is in.",
          type = "string",
        },
      },
      type = "object",
    },
    Repo = {
      description = "A repository (or repo) is a Git repository storing versioned source content.",
      id = "Repo",
      properties = {
        mirrorConfig = {
          ["$ref"] = "MirrorConfig",
          description = "How this repository mirrors a repository managed by another service. Read-only field.",
        },
        name = {
          description = "Resource name of the repository, of the form `projects//repos/`. The repo name may contain slashes. eg, `projects/myproject/repos/name/with/slash`",
          type = "string",
        },
        pubsubConfigs = {
          additionalProperties = {
            ["$ref"] = "PubsubConfig",
          },
          description = "How this repository publishes a change in the repository through Cloud Pub/Sub. Keyed by the topic names.",
          type = "object",
        },
        size = {
          description = "The disk usage of the repo, in bytes. Read-only field. Size is only returned by GetRepo.",
          format = "int64",
          type = "string",
        },
        url = {
          description = "URL to clone the repository from Google Cloud Source Repositories. Read-only field.",
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
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: \"bindings, etag\"`",
          format = "google-fieldmask",
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
    SyncRepoMetadata = {
      description = "Metadata of SyncRepo. This message is in the metadata field of Operation.",
      id = "SyncRepoMetadata",
      properties = {
        name = {
          description = "The name of the repo being synchronized. Values are of the form `projects//repos/`.",
          type = "string",
        },
        startTime = {
          description = "The time this operation is started.",
          format = "google-datetime",
          type = "string",
        },
        statusMessage = {
          description = "The latest status message on syncing the repository.",
          type = "string",
        },
        updateTime = {
          description = "The time this operation's status message is updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    SyncRepoRequest = {
      description = "Request for SyncRepo.",
      id = "SyncRepoRequest",
      properties = {},
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
    UpdateProjectConfigRequest = {
      description = "Request for UpdateProjectConfig.",
      id = "UpdateProjectConfigRequest",
      properties = {
        projectConfig = {
          ["$ref"] = "ProjectConfig",
          description = "The new configuration for the project.",
        },
        updateMask = {
          description = "A FieldMask specifying which fields of the project_config to modify. Only the fields in the mask will be modified. If no mask is provided, this request is no-op.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateRepoRequest = {
      description = "Request for UpdateRepo.",
      id = "UpdateRepoRequest",
      properties = {
        repo = {
          ["$ref"] = "Repo",
          description = "The new configuration for the repository.",
        },
        updateMask = {
          description = "A FieldMask specifying which fields of the repo to modify. Only the fields in the mask will be modified. If no mask is provided, this request is no-op.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Source Repositories API",
  version = "v1",
  version_module = true,
}
