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
  baseUrl = "https://cloudfunctions.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Functions",
  description = "Manages lightweight user-provided functions executed in response to events.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/functions",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudfunctions:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudfunctions.mtls.googleapis.com/",
  name = "cloudfunctions",
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
    operations = {
      methods = {
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "cloudfunctions.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^operations/[^/]+$",
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
          flatPath = "v1/operations",
          httpMethod = "GET",
          id = "cloudfunctions.operations.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "Required. A filter for matching the requested operations. The supported formats of *filter* are: To query for a specific function: project:*,location:*,function:* To query for all of the latest operations for a project: project:*,latest:true",
              location = "query",
              type = "string",
            },
            name = {
              description = "Must not be set.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of records that should be returned. Requested page size cannot exceed 100. If not set, the default page size is 100. Pagination is only supported when querying for a specific function.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Token identifying which result to start with, which is returned by a previous list call. Pagination is only supported when querying for a specific function.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/operations",
          response = {
            ["$ref"] = "ListOperationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    projects = {
      resources = {
        locations = {
          methods = {
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "cloudfunctions.projects.locations.list",
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
            functions = {
              methods = {
                call = {
                  description = "Synchronously invokes a deployed Cloud Function. To be used for testing purposes as very limited traffic is allowed. For more information on the actual limits, refer to [Rate Limits](https://cloud.google.com/functions/quotas#rate_limits).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}:call",
                  httpMethod = "POST",
                  id = "cloudfunctions.projects.locations.functions.call",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the function to be called.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/functions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:call",
                  request = {
                    ["$ref"] = "CallFunctionRequest",
                  },
                  response = {
                    ["$ref"] = "CallFunctionResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a new function. If a function with the given name already exists in the specified project, the long running operation will return `ALREADY_EXISTS` error.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions",
                  httpMethod = "POST",
                  id = "cloudfunctions.projects.locations.functions.create",
                  parameterOrder = {
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "Required. The project and location in which the function should be created, specified in the format `projects/*/locations/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+location}/functions",
                  request = {
                    ["$ref"] = "CloudFunction",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a function with the given name from the specified project. If the given function is used by some trigger, the trigger will be updated to remove this function.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}",
                  httpMethod = "DELETE",
                  id = "cloudfunctions.projects.locations.functions.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the function which should be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/functions/[^/]+$",
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
                generateDownloadUrl = {
                  description = "Returns a signed URL for downloading deployed function source code. The URL is only valid for a limited period and should be used within minutes after generation. For more information about the signed URL usage see: https://cloud.google.com/storage/docs/access-control/signed-urls",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}:generateDownloadUrl",
                  httpMethod = "POST",
                  id = "cloudfunctions.projects.locations.functions.generateDownloadUrl",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of function for which source code Google Cloud Storage signed URL should be generated.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/functions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:generateDownloadUrl",
                  request = {
                    ["$ref"] = "GenerateDownloadUrlRequest",
                  },
                  response = {
                    ["$ref"] = "GenerateDownloadUrlResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                generateUploadUrl = {
                  description = "Returns a signed URL for uploading a function source code. For more information about the signed URL usage see: https://cloud.google.com/storage/docs/access-control/signed-urls. Once the function source code upload is complete, the used signed URL should be provided in CreateFunction or UpdateFunction request as a reference to the function source code. When uploading source code to the generated signed URL, please follow these restrictions: * Source file type should be a zip file. * Source file size should not exceed 100MB limit. * No credentials should be attached - the signed URLs provide access to the target bucket using internal service identity; if credentials were attached, the identity from the credentials would be used, but that identity does not have permissions to upload files to the URL. When making a HTTP PUT request, these two headers need to be specified: * `content-type: application/zip` * `x-goog-content-length-range: 0,104857600` And this header SHOULD NOT be specified: * `Authorization: Bearer YOUR_TOKEN`",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions:generateUploadUrl",
                  httpMethod = "POST",
                  id = "cloudfunctions.projects.locations.functions.generateUploadUrl",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "The project and location in which the Google Cloud Storage signed URL should be generated, specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/functions:generateUploadUrl",
                  request = {
                    ["$ref"] = "GenerateUploadUrlRequest",
                  },
                  response = {
                    ["$ref"] = "GenerateUploadUrlResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns a function with the given name from the requested project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}",
                  httpMethod = "GET",
                  id = "cloudfunctions.projects.locations.functions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the function which details should be obtained.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/functions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "CloudFunction",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the IAM access control policy for a function. Returns an empty policy if the function exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "cloudfunctions.projects.locations.functions.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/functions/[^/]+$",
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
                  description = "Returns a list of functions that belong to the requested project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions",
                  httpMethod = "GET",
                  id = "cloudfunctions.projects.locations.functions.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of functions to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListFunctionsResponse`; indicates that this is a continuation of a prior `ListFunctions` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The project and location from which the function should be listed, specified in the format `projects/*/locations/*` If you want to list functions in all locations, use \"-\" in place of a location. When listing functions in all locations, if one or more location(s) are unreachable, the response will contain functions from all reachable locations along with the names of any unreachable locations.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/functions",
                  response = {
                    ["$ref"] = "ListFunctionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates existing function.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}",
                  httpMethod = "PATCH",
                  id = "cloudfunctions.projects.locations.functions.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/functions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The list of fields in `CloudFunction` that have to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "CloudFunction",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the IAM access control policy on the specified function. Replaces any existing policy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "cloudfunctions.projects.locations.functions.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/functions/[^/]+$",
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
                  description = "Tests the specified permissions against the IAM access control policy for a function. If the function does not exist, this will return an empty set of permissions, not a NOT_FOUND error.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/functions/{functionsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "cloudfunctions.projects.locations.functions.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/functions/[^/]+$",
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
  revision = "20230105",
  rootUrl = "https://cloudfunctions.googleapis.com/",
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
    CallFunctionRequest = {
      description = "Request for the `CallFunction` method.",
      id = "CallFunctionRequest",
      properties = {
        data = {
          description = "Required. Input to be passed to the function.",
          type = "string",
        },
      },
      type = "object",
    },
    CallFunctionResponse = {
      description = "Response of `CallFunction` method.",
      id = "CallFunctionResponse",
      properties = {
        error = {
          description = "Either system or user-function generated error. Set if execution was not successful.",
          type = "string",
        },
        executionId = {
          description = "Execution id of function invocation.",
          type = "string",
        },
        result = {
          description = "Result populated for successful execution of synchronous function. Will not be populated if function does not return a result through context.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudFunction = {
      description = "Describes a Cloud Function that contains user computation executed in response to an event. It encapsulate function and triggers configurations.",
      id = "CloudFunction",
      properties = {
        availableMemoryMb = {
          description = "The amount of memory in MB available for a function. Defaults to 256MB.",
          format = "int32",
          type = "integer",
        },
        buildEnvironmentVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Build environment variables that shall be available during build time.",
          type = "object",
        },
        buildId = {
          description = "Output only. The Cloud Build ID of the latest successful deployment of the function.",
          readOnly = true,
          type = "string",
        },
        buildName = {
          description = "Output only. The Cloud Build Name of the function deployment. `projects//locations//builds/`.",
          readOnly = true,
          type = "string",
        },
        buildWorkerPool = {
          description = "Name of the Cloud Build Custom Worker Pool that should be used to build the function. The format of this field is `projects/{project}/locations/{region}/workerPools/{workerPool}` where `{project}` and `{region}` are the project id and region respectively where the worker pool is defined and `{workerPool}` is the short name of the worker pool. If the project id is not the same as the function, then the Cloud Functions Service Agent (`service-@gcf-admin-robot.iam.gserviceaccount.com`) must be granted the role Cloud Build Custom Workers Builder (`roles/cloudbuild.customworkers.builder`) in the project.",
          type = "string",
        },
        description = {
          description = "User-provided description of a function.",
          type = "string",
        },
        dockerRegistry = {
          description = "Docker Registry to use for this deployment. If `docker_repository` field is specified, this field will be automatically set as `ARTIFACT_REGISTRY`. If unspecified, it currently defaults to `CONTAINER_REGISTRY`. This field may be overridden by the backend for eligible deployments.",
          enum = {
            "DOCKER_REGISTRY_UNSPECIFIED",
            "CONTAINER_REGISTRY",
            "ARTIFACT_REGISTRY",
          },
          enumDescriptions = {
            "Unspecified.",
            "Docker images will be stored in multi-regional Container Registry repositories named `gcf`.",
            "Docker images will be stored in regional Artifact Registry repositories. By default, GCF will create and use repositories named `gcf-artifacts` in every region in which a function is deployed. But the repository to use can also be specified by the user using the `docker_repository` field.",
          },
          type = "string",
        },
        dockerRepository = {
          description = "User managed repository created in Artifact Registry optionally with a customer managed encryption key. If specified, deployments will use Artifact Registry. If unspecified and the deployment is eligible to use Artifact Registry, GCF will create and use a repository named 'gcf-artifacts' for every deployed region. This is the repository to which the function docker image will be pushed after it is built by Cloud Build. It must match the pattern `projects/{project}/locations/{location}/repositories/{repository}`. Cross-project repositories are not supported. Cross-location repositories are not supported. Repository format must be 'DOCKER'.",
          type = "string",
        },
        entryPoint = {
          description = "The name of the function (as defined in source code) that will be executed. Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named \"function\". For Node.js this is name of a function exported by the module specified in `source_location`.",
          type = "string",
        },
        environmentVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Environment variables that shall be available during function execution.",
          type = "object",
        },
        eventTrigger = {
          ["$ref"] = "EventTrigger",
          description = "A source that fires events in response to a condition in another service.",
        },
        httpsTrigger = {
          ["$ref"] = "HttpsTrigger",
          description = "An HTTPS endpoint type of source that can be triggered via URL.",
        },
        ingressSettings = {
          description = "The ingress settings for the function, controlling what traffic can reach it.",
          enum = {
            "INGRESS_SETTINGS_UNSPECIFIED",
            "ALLOW_ALL",
            "ALLOW_INTERNAL_ONLY",
            "ALLOW_INTERNAL_AND_GCLB",
          },
          enumDescriptions = {
            "Unspecified.",
            "Allow HTTP traffic from public and private sources.",
            "Allow HTTP traffic from only private VPC sources.",
            "Allow HTTP traffic from private VPC sources and through GCLB.",
          },
          type = "string",
        },
        kmsKeyName = {
          description = "Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function resources. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. If specified, you must also provide an artifact registry repository using the `docker_repository` field that was created with the same KMS crypto key. The following service accounts need to be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). 1. Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) - Required to protect the function's image. 2. Google Storage service account (service-{project_number}@gs-project-accounts.iam.gserviceaccount.com) - Required to protect the function's source code. If this service account does not exist, deploying a function without a KMS key or retrieving the service agent name provisions it. For more information, see https://cloud.google.com/storage/docs/projects#service-agents and https://cloud.google.com/storage/docs/getting-service-agent#gsutil. Google Cloud Functions delegates access to service agents to protect function resources in internal projects that are not accessible by the end user.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels associated with this Cloud Function.",
          type = "object",
        },
        maxInstances = {
          description = "The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.",
          format = "int32",
          type = "integer",
        },
        minInstances = {
          description = "A lower bound for the number function instances that may coexist at a given time.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`",
          type = "string",
        },
        network = {
          description = "The VPC Network that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network resource. If the short network name is used, the network must belong to the same project. Otherwise, it must belong to a project within the same organization. The format of this field is either `projects/{project}/global/networks/{network}` or `{network}`, where `{project}` is a project id where the network is defined, and `{network}` is the short name of the network. This field is mutually exclusive with `vpc_connector` and will be replaced by it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.",
          type = "string",
        },
        runtime = {
          description = "The runtime in which to run the function. Required when deploying a new function, optional when updating an existing function. For a complete list of possible choices, see the [`gcloud` command reference](https://cloud.google.com/sdk/gcloud/reference/functions/deploy#--runtime).",
          type = "string",
        },
        secretEnvironmentVariables = {
          description = "Secret environment variables configuration.",
          items = {
            ["$ref"] = "SecretEnvVar",
          },
          type = "array",
        },
        secretVolumes = {
          description = "Secret volumes configuration.",
          items = {
            ["$ref"] = "SecretVolume",
          },
          type = "array",
        },
        serviceAccountEmail = {
          description = "The email of the function's service account. If empty, defaults to `{project_id}@appspot.gserviceaccount.com`.",
          type = "string",
        },
        sourceArchiveUrl = {
          description = "The Google Cloud Storage URL, starting with `gs://`, pointing to the zip archive which contains the function.",
          type = "string",
        },
        sourceRepository = {
          ["$ref"] = "SourceRepository",
          description = "**Beta Feature** The source repository where a function is hosted.",
        },
        sourceToken = {
          description = "Input only. An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.",
          type = "string",
        },
        sourceUploadUrl = {
          description = "The Google Cloud Storage signed URL used for source uploading, generated by calling [google.cloud.functions.v1.GenerateUploadUrl]. The signature is validated on write methods (Create, Update) The signature is stripped from the Function object on read methods (Get, List)",
          type = "string",
        },
        status = {
          description = "Output only. Status of the function deployment.",
          enum = {
            "CLOUD_FUNCTION_STATUS_UNSPECIFIED",
            "ACTIVE",
            "OFFLINE",
            "DEPLOY_IN_PROGRESS",
            "DELETE_IN_PROGRESS",
            "UNKNOWN",
          },
          enumDescriptions = {
            "Not specified. Invalid state.",
            "Function has been successfully deployed and is serving.",
            "Function deployment failed and the function isn’t serving.",
            "Function is being created or updated.",
            "Function is being deleted.",
            "Function deployment failed and the function serving state is undefined. The function should be updated or deleted to move it out of this state.",
          },
          readOnly = true,
          type = "string",
        },
        timeout = {
          description = "The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.",
          format = "google-duration",
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of a Cloud Function.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        versionId = {
          description = "Output only. The version identifier of the Cloud Function. Each deployment attempt results in a new version of a function being created.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        vpcConnector = {
          description = "The VPC Network Connector that this cloud function can connect to. It can be either the fully-qualified URI, or the short name of the network connector resource. The format of this field is `projects/*/locations/*/connectors/*` This field is mutually exclusive with `network` field and will eventually replace it. See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for more information on connecting Cloud projects.",
          type = "string",
        },
        vpcConnectorEgressSettings = {
          description = "The egress settings for the connector, controlling what traffic is diverted through it.",
          enum = {
            "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED",
            "PRIVATE_RANGES_ONLY",
            "ALL_TRAFFIC",
          },
          enumDescriptions = {
            "Unspecified.",
            "Use the VPC Access Connector only for private IP space from RFC1918.",
            "Force the use of VPC Access Connector for all egress traffic from the function.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EventTrigger = {
      description = "Describes EventTrigger, used to request events be sent from another service.",
      id = "EventTrigger",
      properties = {
        eventType = {
          description = "Required. The type of event to observe. For example: `providers/cloud.storage/eventTypes/object.change` and `providers/cloud.pubsub/eventTypes/topic.publish`. Event types match pattern `providers/*/eventTypes/*.*`. The pattern contains: 1. namespace: For example, `cloud.storage` and `google.firebase.analytics`. 2. resource type: The type of resource on which event occurs. For example, the Google Cloud Storage API includes the type `object`. 3. action: The action that generates the event. For example, action for a Google Cloud Storage Object is 'change'. These parts are lower case.",
          type = "string",
        },
        failurePolicy = {
          ["$ref"] = "FailurePolicy",
          description = "Specifies policy for failed executions.",
        },
        resource = {
          description = "Required. The resource(s) from which to observe events, for example, `projects/_/buckets/myBucket`. Not all syntactically correct values are accepted by all services. For example: 1. The authorization model must support it. Google Cloud Functions only allows EventTriggers to be deployed that observe resources in the same project as the `CloudFunction`. 2. The resource type must match the pattern expected for an `event_type`. For example, an `EventTrigger` that has an `event_type` of \"google.pubsub.topic.publish\" should have a resource that matches Google Cloud Pub/Sub topics. Additionally, some services may support short names when creating an `EventTrigger`. These will always be returned in the normalized \"long\" format. See each *service's* documentation for supported formats.",
          type = "string",
        },
        service = {
          description = "The hostname of the service that should be observed. If no string is provided, the default service implementing the API will be used. For example, `storage.googleapis.com` is the default for all event types in the `google.storage` namespace.",
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
    FailurePolicy = {
      description = "Describes the policy in case of function's execution failure. If empty, then defaults to ignoring failures (i.e. not retrying them).",
      id = "FailurePolicy",
      properties = {
        retry = {
          ["$ref"] = "Retry",
          description = "If specified, then the function will be retried in case of a failure.",
        },
      },
      type = "object",
    },
    GenerateDownloadUrlRequest = {
      description = "Request of `GenerateDownloadUrl` method.",
      id = "GenerateDownloadUrlRequest",
      properties = {
        versionId = {
          description = "The optional version of function. If not set, default, current version is used.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    GenerateDownloadUrlResponse = {
      description = "Response of `GenerateDownloadUrl` method.",
      id = "GenerateDownloadUrlResponse",
      properties = {
        downloadUrl = {
          description = "The generated Google Cloud Storage signed URL that should be used for function source code download.",
          type = "string",
        },
      },
      type = "object",
    },
    GenerateUploadUrlRequest = {
      description = "Request of `GenerateSourceUploadUrl` method.",
      id = "GenerateUploadUrlRequest",
      properties = {
        kmsKeyName = {
          description = "Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt function source code objects in staging Cloud Storage buckets. When you generate an upload url and upload your source code, it gets copied to a staging Cloud Storage bucket in an internal regional project. The source code is then copied to a versioned directory in the sources bucket in the consumer project during the function deployment. It must match the pattern `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`. The Google Cloud Functions service account (service-{project_number}@gcf-admin-robot.iam.gserviceaccount.com) must be granted the role 'Cloud KMS CryptoKey Encrypter/Decrypter (roles/cloudkms.cryptoKeyEncrypterDecrypter)' on the Key/KeyRing/Project/Organization (least access preferred). GCF will delegate access to the Google Storage service account in the internal project.",
          type = "string",
        },
      },
      type = "object",
    },
    GenerateUploadUrlResponse = {
      description = "Response of `GenerateSourceUploadUrl` method.",
      id = "GenerateUploadUrlResponse",
      properties = {
        uploadUrl = {
          description = "The generated Google Cloud Storage signed URL that should be used for a function source code upload. The uploaded file should be a zip archive which contains a function.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudFunctionsV2OperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudFunctionsV2OperationMetadata",
      properties = {
        apiVersion = {
          description = "API version used to start the operation.",
          type = "string",
        },
        cancelRequested = {
          description = "Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          type = "boolean",
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
        requestResource = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The original request that started the operation.",
          type = "object",
        },
        stages = {
          description = "Mechanism for reporting in-progress stages",
          items = {
            ["$ref"] = "GoogleCloudFunctionsV2Stage",
          },
          type = "array",
        },
        statusDetail = {
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
    GoogleCloudFunctionsV2Stage = {
      description = "Each Stage of the deployment process",
      id = "GoogleCloudFunctionsV2Stage",
      properties = {
        message = {
          description = "Message describing the Stage",
          type = "string",
        },
        name = {
          description = "Name of the Stage. This will be unique for each Stage.",
          enum = {
            "NAME_UNSPECIFIED",
            "ARTIFACT_REGISTRY",
            "BUILD",
            "SERVICE",
            "TRIGGER",
            "SERVICE_ROLLBACK",
            "TRIGGER_ROLLBACK",
          },
          enumDescriptions = {
            "Not specified. Invalid name.",
            "Artifact Regsitry Stage",
            "Build Stage",
            "Service Stage",
            "Trigger Stage",
            "Service Rollback Stage",
            "Trigger Rollback Stage",
          },
          type = "string",
        },
        resource = {
          description = "Resource of the Stage",
          type = "string",
        },
        resourceUri = {
          description = "Link to the current Stage resource",
          type = "string",
        },
        state = {
          description = "Current state of the Stage",
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_STARTED",
            "IN_PROGRESS",
            "COMPLETE",
          },
          enumDescriptions = {
            "Not specified. Invalid state.",
            "Stage has not started.",
            "Stage is in progress.",
            "Stage has completed.",
          },
          type = "string",
        },
        stateMessages = {
          description = "State messages from the current Stage.",
          items = {
            ["$ref"] = "GoogleCloudFunctionsV2StateMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudFunctionsV2StateMessage = {
      description = "Informational messages about the state of the Cloud Function or Operation.",
      id = "GoogleCloudFunctionsV2StateMessage",
      properties = {
        message = {
          description = "The message.",
          type = "string",
        },
        severity = {
          description = "Severity of the state message.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "ERROR",
            "WARNING",
            "INFO",
          },
          enumDescriptions = {
            "Not specified. Invalid severity.",
            "ERROR-level severity.",
            "WARNING-level severity.",
            "INFO-level severity.",
          },
          type = "string",
        },
        type = {
          description = "One-word CamelCase type of the state message.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudFunctionsV2alphaOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudFunctionsV2alphaOperationMetadata",
      properties = {
        apiVersion = {
          description = "API version used to start the operation.",
          type = "string",
        },
        cancelRequested = {
          description = "Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          type = "boolean",
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
        requestResource = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The original request that started the operation.",
          type = "object",
        },
        stages = {
          description = "Mechanism for reporting in-progress stages",
          items = {
            ["$ref"] = "GoogleCloudFunctionsV2alphaStage",
          },
          type = "array",
        },
        statusDetail = {
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
    GoogleCloudFunctionsV2alphaStage = {
      description = "Each Stage of the deployment process",
      id = "GoogleCloudFunctionsV2alphaStage",
      properties = {
        message = {
          description = "Message describing the Stage",
          type = "string",
        },
        name = {
          description = "Name of the Stage. This will be unique for each Stage.",
          enum = {
            "NAME_UNSPECIFIED",
            "ARTIFACT_REGISTRY",
            "BUILD",
            "SERVICE",
            "TRIGGER",
            "SERVICE_ROLLBACK",
            "TRIGGER_ROLLBACK",
          },
          enumDescriptions = {
            "Not specified. Invalid name.",
            "Artifact Regsitry Stage",
            "Build Stage",
            "Service Stage",
            "Trigger Stage",
            "Service Rollback Stage",
            "Trigger Rollback Stage",
          },
          type = "string",
        },
        resource = {
          description = "Resource of the Stage",
          type = "string",
        },
        resourceUri = {
          description = "Link to the current Stage resource",
          type = "string",
        },
        state = {
          description = "Current state of the Stage",
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_STARTED",
            "IN_PROGRESS",
            "COMPLETE",
          },
          enumDescriptions = {
            "Not specified. Invalid state.",
            "Stage has not started.",
            "Stage is in progress.",
            "Stage has completed.",
          },
          type = "string",
        },
        stateMessages = {
          description = "State messages from the current Stage.",
          items = {
            ["$ref"] = "GoogleCloudFunctionsV2alphaStateMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudFunctionsV2alphaStateMessage = {
      description = "Informational messages about the state of the Cloud Function or Operation.",
      id = "GoogleCloudFunctionsV2alphaStateMessage",
      properties = {
        message = {
          description = "The message.",
          type = "string",
        },
        severity = {
          description = "Severity of the state message.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "ERROR",
            "WARNING",
            "INFO",
          },
          enumDescriptions = {
            "Not specified. Invalid severity.",
            "ERROR-level severity.",
            "WARNING-level severity.",
            "INFO-level severity.",
          },
          type = "string",
        },
        type = {
          description = "One-word CamelCase type of the state message.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudFunctionsV2betaOperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudFunctionsV2betaOperationMetadata",
      properties = {
        apiVersion = {
          description = "API version used to start the operation.",
          type = "string",
        },
        cancelRequested = {
          description = "Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          type = "boolean",
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
        requestResource = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The original request that started the operation.",
          type = "object",
        },
        stages = {
          description = "Mechanism for reporting in-progress stages",
          items = {
            ["$ref"] = "GoogleCloudFunctionsV2betaStage",
          },
          type = "array",
        },
        statusDetail = {
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
    GoogleCloudFunctionsV2betaStage = {
      description = "Each Stage of the deployment process",
      id = "GoogleCloudFunctionsV2betaStage",
      properties = {
        message = {
          description = "Message describing the Stage",
          type = "string",
        },
        name = {
          description = "Name of the Stage. This will be unique for each Stage.",
          enum = {
            "NAME_UNSPECIFIED",
            "ARTIFACT_REGISTRY",
            "BUILD",
            "SERVICE",
            "TRIGGER",
            "SERVICE_ROLLBACK",
            "TRIGGER_ROLLBACK",
          },
          enumDescriptions = {
            "Not specified. Invalid name.",
            "Artifact Regsitry Stage",
            "Build Stage",
            "Service Stage",
            "Trigger Stage",
            "Service Rollback Stage",
            "Trigger Rollback Stage",
          },
          type = "string",
        },
        resource = {
          description = "Resource of the Stage",
          type = "string",
        },
        resourceUri = {
          description = "Link to the current Stage resource",
          type = "string",
        },
        state = {
          description = "Current state of the Stage",
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_STARTED",
            "IN_PROGRESS",
            "COMPLETE",
          },
          enumDescriptions = {
            "Not specified. Invalid state.",
            "Stage has not started.",
            "Stage is in progress.",
            "Stage has completed.",
          },
          type = "string",
        },
        stateMessages = {
          description = "State messages from the current Stage.",
          items = {
            ["$ref"] = "GoogleCloudFunctionsV2betaStateMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudFunctionsV2betaStateMessage = {
      description = "Informational messages about the state of the Cloud Function or Operation.",
      id = "GoogleCloudFunctionsV2betaStateMessage",
      properties = {
        message = {
          description = "The message.",
          type = "string",
        },
        severity = {
          description = "Severity of the state message.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "ERROR",
            "WARNING",
            "INFO",
          },
          enumDescriptions = {
            "Not specified. Invalid severity.",
            "ERROR-level severity.",
            "WARNING-level severity.",
            "INFO-level severity.",
          },
          type = "string",
        },
        type = {
          description = "One-word CamelCase type of the state message.",
          type = "string",
        },
      },
      type = "object",
    },
    HttpsTrigger = {
      description = "Describes HttpsTrigger, could be used to connect web hooks to function.",
      id = "HttpsTrigger",
      properties = {
        securityLevel = {
          description = "The security level for the function.",
          enum = {
            "SECURITY_LEVEL_UNSPECIFIED",
            "SECURE_ALWAYS",
            "SECURE_OPTIONAL",
          },
          enumDescriptions = {
            "Unspecified.",
            "Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.",
            "Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.",
          },
          type = "string",
        },
        url = {
          description = "Output only. The deployed url for the function.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListFunctionsResponse = {
      description = "Response for the `ListFunctions` method.",
      id = "ListFunctionsResponse",
      properties = {
        functions = {
          description = "The functions that match the request.",
          items = {
            ["$ref"] = "CloudFunction",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If not empty, indicates that there may be more functions that match the request; this value should be passed in a new google.cloud.functions.v1.ListFunctionsRequest to get more functions.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached. The response does not include any functions from these locations.",
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
    OperationMetadataV1 = {
      description = "Metadata describing an Operation",
      id = "OperationMetadataV1",
      properties = {
        buildId = {
          description = "The Cloud Build ID of the function created or updated by an API call. This field is only populated for Create and Update operations.",
          type = "string",
        },
        buildName = {
          description = "The Cloud Build Name of the function deployment. This field is only populated for Create and Update operations. `projects//locations//builds/`.",
          type = "string",
        },
        request = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The original request that started the operation.",
          type = "object",
        },
        sourceToken = {
          description = "An identifier for Firebase function sources. Disclaimer: This field is only supported for Firebase function deployments.",
          type = "string",
        },
        target = {
          description = "Target of the operation - for example `projects/project-1/locations/region-1/functions/function-1`",
          type = "string",
        },
        type = {
          description = "Type of operation.",
          enum = {
            "OPERATION_UNSPECIFIED",
            "CREATE_FUNCTION",
            "UPDATE_FUNCTION",
            "DELETE_FUNCTION",
          },
          enumDescriptions = {
            "Unknown operation type.",
            "Triggered by CreateFunction call",
            "Triggered by UpdateFunction call",
            "Triggered by DeleteFunction call.",
          },
          type = "string",
        },
        updateTime = {
          description = "The last update timestamp of the operation.",
          format = "google-datetime",
          type = "string",
        },
        versionId = {
          description = "Version id of the function created or updated by an API call. This field is only populated for Create and Update operations.",
          format = "int64",
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
    Retry = {
      description = "Describes the retry policy in case of function's execution failure. A function execution will be retried on any failure. A failed execution will be retried up to 7 days with an exponential backoff (capped at 10 seconds). Retried execution is charged as any other execution.",
      id = "Retry",
      properties = {},
      type = "object",
    },
    SecretEnvVar = {
      description = "Configuration for a secret environment variable. It has the information necessary to fetch the secret value from secret manager and expose it as an environment variable.",
      id = "SecretEnvVar",
      properties = {
        key = {
          description = "Name of the environment variable.",
          type = "string",
        },
        projectId = {
          description = "Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.",
          type = "string",
        },
        secret = {
          description = "Name of the secret in secret manager (not the full resource name).",
          type = "string",
        },
        version = {
          description = "Version of the secret (version number or the string 'latest'). It is recommended to use a numeric version for secret environment variables as any updates to the secret value is not reflected until new instances start.",
          type = "string",
        },
      },
      type = "object",
    },
    SecretVersion = {
      description = "Configuration for a single version.",
      id = "SecretVersion",
      properties = {
        path = {
          description = "Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `/secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.",
          type = "string",
        },
        version = {
          description = "Version of the secret (version number or the string 'latest'). It is preferrable to use `latest` version with secret volumes as secret value changes are reflected immediately.",
          type = "string",
        },
      },
      type = "object",
    },
    SecretVolume = {
      description = "Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container. Secret value is not a part of the configuration. Every filesystem read operation performs a lookup in secret manager to retrieve the secret value.",
      id = "SecretVolume",
      properties = {
        mountPath = {
          description = "The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log",
          type = "string",
        },
        projectId = {
          description = "Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.",
          type = "string",
        },
        secret = {
          description = "Name of the secret in secret manager (not the full resource name).",
          type = "string",
        },
        versions = {
          description = "List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.",
          items = {
            ["$ref"] = "SecretVersion",
          },
          type = "array",
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
    SourceRepository = {
      description = "Describes SourceRepository, used to represent parameters related to source repository where a function is hosted.",
      id = "SourceRepository",
      properties = {
        deployedUrl = {
          description = "Output only. The URL pointing to the hosted repository where the function were defined at the time of deployment. It always points to a specific commit in the format described above.",
          readOnly = true,
          type = "string",
        },
        url = {
          description = "The URL pointing to the hosted repository where the function is defined. There are supported Cloud Source Repository URLs in the following formats: To refer to a specific commit: `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*` To refer to a moveable alias (branch): `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*` In particular, to refer to HEAD use `master` moveable alias. To refer to a specific fixed alias (tag): `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*` You may omit `paths/*` if you want to use the main directory.",
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
  },
  servicePath = "",
  title = "Cloud Functions API",
  version = "v1",
  version_module = true,
}