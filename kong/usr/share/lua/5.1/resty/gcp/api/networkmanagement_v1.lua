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
  baseUrl = "https://networkmanagement.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Network Management",
  description = "The Network Management API provides a collection of network performance monitoring and diagnostic capabilities.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "networkmanagement:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://networkmanagement.mtls.googleapis.com/",
  name = "networkmanagement",
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
              id = "networkmanagement.projects.locations.get",
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
              id = "networkmanagement.projects.locations.list",
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
            global = {
              resources = {
                connectivityTests = {
                  methods = {
                    create = {
                      description = "Creates a new Connectivity Test. After you create a test, the reachability analysis is performed as part of the long running operation, which completes when the analysis completes. If the endpoint specifications in `ConnectivityTest` are invalid (for example, containing non-existent resources in the network, or you don't have read permissions to the network configurations of listed projects), then the reachability result returns a value of `UNKNOWN`. If the endpoint specifications in `ConnectivityTest` are incomplete, the reachability result returns a value of AMBIGUOUS. For more information, see the Connectivity Test documentation.",
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests",
                      httpMethod = "POST",
                      id = "networkmanagement.projects.locations.global.connectivityTests.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent resource of the Connectivity Test to create: `projects/{project_id}/locations/global`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global$",
                          required = true,
                          type = "string",
                        },
                        testId = {
                          description = "Required. The logical name of the Connectivity Test in your project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/connectivityTests",
                      request = {
                        ["$ref"] = "ConnectivityTest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a specific `ConnectivityTest`.",
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests/{connectivityTestsId}",
                      httpMethod = "DELETE",
                      id = "networkmanagement.projects.locations.global.connectivityTests.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Connectivity Test resource name using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/connectivityTests/[^/]+$",
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
                      description = "Gets the details of a specific Connectivity Test.",
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests/{connectivityTestsId}",
                      httpMethod = "GET",
                      id = "networkmanagement.projects.locations.global.connectivityTests.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. `ConnectivityTest` resource name using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/connectivityTests/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "ConnectivityTest",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests/{connectivityTestsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "networkmanagement.projects.locations.global.connectivityTests.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/global/connectivityTests/[^/]+$",
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
                      description = "Lists all Connectivity Tests owned by a project.",
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests",
                      httpMethod = "GET",
                      id = "networkmanagement.projects.locations.global.connectivityTests.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Lists the `ConnectivityTests` that match the filter expression. A filter expression filters the resources listed in the response. The expression must be of the form ` ` where operators: `<`, `>`, `<=`, `>=`, `!=`, `=`, `:` are supported (colon `:` represents a HAS operator which is roughly synonymous with equality). can refer to a proto or JSON field, or a synthetic field. Field names can be camelCase or snake_case. Examples: - Filter by name: name = \"projects/proj-1/locations/global/connectivityTests/test-1 - Filter by labels: - Resources that have a key called `foo` labels.foo:* - Resources that have a key called `foo` whose value is `bar` labels.foo = bar",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Field to use to sort the list.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Number of `ConnectivityTests` to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Page token from an earlier query, as returned in `next_page_token`.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource of the Connectivity Tests: `projects/{project_id}/locations/global`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/connectivityTests",
                      response = {
                        ["$ref"] = "ListConnectivityTestsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the configuration of an existing `ConnectivityTest`. After you update a test, the reachability analysis is performed as part of the long running operation, which completes when the analysis completes. The Reachability state in the test resource is updated with the new result. If the endpoint specifications in `ConnectivityTest` are invalid (for example, they contain non-existent resources in the network, or the user does not have read permissions to the network configurations of listed projects), then the reachability result returns a value of UNKNOWN. If the endpoint specifications in `ConnectivityTest` are incomplete, the reachability result returns a value of `AMBIGUOUS`. See the documentation in `ConnectivityTest` for for more details.",
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests/{connectivityTestsId}",
                      httpMethod = "PATCH",
                      id = "networkmanagement.projects.locations.global.connectivityTests.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/connectivityTests/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update. At least one path must be supplied in this field.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "ConnectivityTest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    rerun = {
                      description = "Rerun an existing `ConnectivityTest`. After the user triggers the rerun, the reachability analysis is performed as part of the long running operation, which completes when the analysis completes. Even though the test configuration remains the same, the reachability result may change due to underlying network configuration changes. If the endpoint specifications in `ConnectivityTest` become invalid (for example, specified resources are deleted in the network, or you lost read permissions to the network configurations of listed projects), then the reachability result returns a value of `UNKNOWN`.",
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests/{connectivityTestsId}:rerun",
                      httpMethod = "POST",
                      id = "networkmanagement.projects.locations.global.connectivityTests.rerun",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Connectivity Test resource name using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/connectivityTests/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:rerun",
                      request = {
                        ["$ref"] = "RerunConnectivityTestRequest",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests/{connectivityTestsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "networkmanagement.projects.locations.global.connectivityTests.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/connectivityTests/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/connectivityTests/{connectivityTestsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "networkmanagement.projects.locations.global.connectivityTests.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/connectivityTests/[^/]+$",
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
                operations = {
                  methods = {
                    cancel = {
                      description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                      flatPath = "v1/projects/{projectsId}/locations/global/operations/{operationsId}:cancel",
                      httpMethod = "POST",
                      id = "networkmanagement.projects.locations.global.operations.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be cancelled.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/operations/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/operations/{operationsId}",
                      httpMethod = "DELETE",
                      id = "networkmanagement.projects.locations.global.operations.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be deleted.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/operations/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/operations/{operationsId}",
                      httpMethod = "GET",
                      id = "networkmanagement.projects.locations.global.operations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/operations/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/operations",
                      httpMethod = "GET",
                      id = "networkmanagement.projects.locations.global.operations.list",
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
                          pattern = "^projects/[^/]+/locations/global$",
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
              },
            },
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://networkmanagement.googleapis.com/",
  schemas = {
    AbortInfo = {
      description = "Details of the final state \"abort\" and associated resource.",
      id = "AbortInfo",
      properties = {
        cause = {
          description = "Causes that the analysis is aborted.",
          enum = {
            "CAUSE_UNSPECIFIED",
            "UNKNOWN_NETWORK",
            "UNKNOWN_IP",
            "UNKNOWN_PROJECT",
            "PERMISSION_DENIED",
            "NO_SOURCE_LOCATION",
            "INVALID_ARGUMENT",
            "NO_EXTERNAL_IP",
            "UNINTENDED_DESTINATION",
            "TRACE_TOO_LONG",
            "INTERNAL_ERROR",
            "SOURCE_ENDPOINT_NOT_FOUND",
            "MISMATCHED_SOURCE_NETWORK",
            "DESTINATION_ENDPOINT_NOT_FOUND",
            "MISMATCHED_DESTINATION_NETWORK",
            "UNSUPPORTED",
            "MISMATCHED_IP_VERSION",
            "GKE_KONNECTIVITY_PROXY_UNSUPPORTED",
          },
          enumDescriptions = {
            "Cause is unspecified.",
            "Aborted due to unknown network. The reachability analysis cannot proceed because the user does not have access to the host project's network configurations, including firewall rules and routes. This happens when the project is a service project and the endpoints being traced are in the host project's network.",
            "Aborted because the IP address(es) are unknown.",
            "Aborted because no project information can be derived from the test input.",
            "Aborted because the user lacks the permission to access all or part of the network configurations required to run the test.",
            "Aborted because no valid source endpoint is derived from the input test request.",
            "Aborted because the source and/or destination endpoint specified in the test are invalid. The possible reasons that an endpoint is invalid include: malformed IP address; nonexistent instance or network URI; IP address not in the range of specified network URI; and instance not owning the network interface in the specified network.",
            "Aborted because traffic is sent from a public IP to an instance without an external IP.",
            "Aborted because none of the traces matches destination information specified in the input test request.",
            "Aborted because the number of steps in the trace exceeding a certain limit which may be caused by routing loop.",
            "Aborted due to internal server error.",
            "Aborted because the source endpoint could not be found.",
            "Aborted because the source network does not match the source endpoint.",
            "Aborted because the destination endpoint could not be found.",
            "Aborted because the destination network does not match the destination endpoint.",
            "Aborted because the test scenario is not supported.",
            "Aborted because the source and destination resources have no common IP version.",
            "Aborted because the connection between the control plane and the node of the source cluster is initiated by the node and managed by the Konnectivity proxy.",
          },
          type = "string",
        },
        projectsMissingPermission = {
          description = "List of project IDs that the user has specified in the request but does not have permission to access network configs. Analysis is aborted in this case with the PERMISSION_DENIED cause.",
          items = {
            type = "string",
          },
          type = "array",
        },
        resourceUri = {
          description = "URI of the resource that caused the abort.",
          type = "string",
        },
      },
      type = "object",
    },
    AppEngineVersionEndpoint = {
      description = "Wrapper for app engine service version attributes.",
      id = "AppEngineVersionEndpoint",
      properties = {
        uri = {
          description = "An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions) name.",
          type = "string",
        },
      },
      type = "object",
    },
    AppEngineVersionInfo = {
      description = "For display only. Metadata associated with an App Engine version.",
      id = "AppEngineVersionInfo",
      properties = {
        displayName = {
          description = "Name of an App Engine version.",
          type = "string",
        },
        environment = {
          description = "App Engine execution environment for a version.",
          type = "string",
        },
        runtime = {
          description = "Runtime of the App Engine version.",
          type = "string",
        },
        uri = {
          description = "URI of an App Engine version.",
          type = "string",
        },
      },
      type = "object",
    },
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
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    CloudFunctionEndpoint = {
      description = "Wrapper for Cloud Function attributes.",
      id = "CloudFunctionEndpoint",
      properties = {
        uri = {
          description = "A [Cloud Function](https://cloud.google.com/functions) name.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudFunctionInfo = {
      description = "For display only. Metadata associated with a Cloud Function.",
      id = "CloudFunctionInfo",
      properties = {
        displayName = {
          description = "Name of a Cloud Function.",
          type = "string",
        },
        location = {
          description = "Location in which the Cloud Function is deployed.",
          type = "string",
        },
        uri = {
          description = "URI of a Cloud Function.",
          type = "string",
        },
        versionId = {
          description = "Latest successfully deployed version id of the Cloud Function.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CloudRunRevisionEndpoint = {
      description = "Wrapper for Cloud Run revision attributes.",
      id = "CloudRunRevisionEndpoint",
      properties = {
        uri = {
          description = "A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is: projects/{project}/locations/{location}/revisions/{revision}",
          type = "string",
        },
      },
      type = "object",
    },
    CloudRunRevisionInfo = {
      description = "For display only. Metadata associated with a Cloud Run revision.",
      id = "CloudRunRevisionInfo",
      properties = {
        displayName = {
          description = "Name of a Cloud Run revision.",
          type = "string",
        },
        location = {
          description = "Location in which this revision is deployed.",
          type = "string",
        },
        serviceUri = {
          description = "URI of Cloud Run service this revision belongs to.",
          type = "string",
        },
        uri = {
          description = "URI of a Cloud Run revision.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudSQLInstanceInfo = {
      description = "For display only. Metadata associated with a Cloud SQL instance.",
      id = "CloudSQLInstanceInfo",
      properties = {
        displayName = {
          description = "Name of a Cloud SQL instance.",
          type = "string",
        },
        externalIp = {
          description = "External IP address of a Cloud SQL instance.",
          type = "string",
        },
        internalIp = {
          description = "Internal IP address of a Cloud SQL instance.",
          type = "string",
        },
        networkUri = {
          description = "URI of a Cloud SQL instance network or empty string if the instance does not have one.",
          type = "string",
        },
        region = {
          description = "Region in which the Cloud SQL instance is running.",
          type = "string",
        },
        uri = {
          description = "URI of a Cloud SQL instance.",
          type = "string",
        },
      },
      type = "object",
    },
    ConnectivityTest = {
      description = "A Connectivity Test for a network reachability analysis.",
      id = "ConnectivityTest",
      properties = {
        createTime = {
          description = "Output only. The time the test was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The user-supplied description of the Connectivity Test. Maximum of 512 characters.",
          type = "string",
        },
        destination = {
          ["$ref"] = "Endpoint",
          description = "Required. Destination specification of the Connectivity Test. You can use a combination of destination IP address, Compute Engine VM instance, or VPC network to uniquely identify the destination location. Even if the destination IP address is not unique, the source IP location is unique. Usually, the analysis can infer the destination endpoint from route information. If the destination you specify is a VM instance and the instance has multiple network interfaces, then you must also specify either a destination IP address or VPC network to identify the destination interface. A reachability analysis proceeds even if the destination location is ambiguous. However, the result can include endpoints that you don't intend to test.",
        },
        displayName = {
          description = "Output only. The display name of a Connectivity Test.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Resource labels to represent user-provided metadata.",
          type = "object",
        },
        name = {
          description = "Required. Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`",
          type = "string",
        },
        protocol = {
          description = "IP Protocol of the test. When not provided, \"TCP\" is assumed.",
          type = "string",
        },
        reachabilityDetails = {
          ["$ref"] = "ReachabilityDetails",
          description = "Output only. The reachability details of this test from the latest run. The details are updated when creating a new test, updating an existing test, or triggering a one-time rerun of an existing test.",
          readOnly = true,
        },
        relatedProjects = {
          description = "Other projects that may be relevant for reachability analysis. This is applicable to scenarios where a test can cross project boundaries.",
          items = {
            type = "string",
          },
          type = "array",
        },
        source = {
          ["$ref"] = "Endpoint",
          description = "Required. Source specification of the Connectivity Test. You can use a combination of source IP address, virtual machine (VM) instance, or Compute Engine network to uniquely identify the source location. Examples: If the source IP address is an internal IP address within a Google Cloud Virtual Private Cloud (VPC) network, then you must also specify the VPC network. Otherwise, specify the VM instance, which already contains its internal IP address and VPC network information. If the source of the test is within an on-premises network, then you must provide the destination VPC network. If the source endpoint is a Compute Engine VM instance with multiple network interfaces, the instance itself is not sufficient to identify the endpoint. So, you must also specify the source IP address or VPC network. A reachability analysis proceeds even if the source location is ambiguous. However, the test result may include endpoints that you don't intend to test.",
        },
        updateTime = {
          description = "Output only. The time the test's configuration was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DeliverInfo = {
      description = "Details of the final state \"deliver\" and associated resource.",
      id = "DeliverInfo",
      properties = {
        resourceUri = {
          description = "URI of the resource that the packet is delivered to.",
          type = "string",
        },
        target = {
          description = "Target type where the packet is delivered to.",
          enum = {
            "TARGET_UNSPECIFIED",
            "INSTANCE",
            "INTERNET",
            "GOOGLE_API",
            "GKE_MASTER",
            "CLOUD_SQL_INSTANCE",
            "PSC_PUBLISHED_SERVICE",
            "PSC_GOOGLE_API",
            "PSC_VPC_SC",
          },
          enumDescriptions = {
            "Target not specified.",
            "Target is a Compute Engine instance.",
            "Target is the internet.",
            "Target is a Google API.",
            "Target is a Google Kubernetes Engine cluster master.",
            "Target is a Cloud SQL instance.",
            "Target is a published service that uses [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-services).",
            "Target is all Google APIs that use [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-apis).",
            "Target is a VPC-SC that uses [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-apis).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DropInfo = {
      description = "Details of the final state \"drop\" and associated resource.",
      id = "DropInfo",
      properties = {
        cause = {
          description = "Cause that the packet is dropped.",
          enum = {
            "CAUSE_UNSPECIFIED",
            "UNKNOWN_EXTERNAL_ADDRESS",
            "FOREIGN_IP_DISALLOWED",
            "FIREWALL_RULE",
            "NO_ROUTE",
            "ROUTE_BLACKHOLE",
            "ROUTE_WRONG_NETWORK",
            "PRIVATE_TRAFFIC_TO_INTERNET",
            "PRIVATE_GOOGLE_ACCESS_DISALLOWED",
            "NO_EXTERNAL_ADDRESS",
            "UNKNOWN_INTERNAL_ADDRESS",
            "FORWARDING_RULE_MISMATCH",
            "FORWARDING_RULE_REGION_MISMATCH",
            "FORWARDING_RULE_NO_INSTANCES",
            "FIREWALL_BLOCKING_LOAD_BALANCER_BACKEND_HEALTH_CHECK",
            "INSTANCE_NOT_RUNNING",
            "GKE_CLUSTER_NOT_RUNNING",
            "CLOUD_SQL_INSTANCE_NOT_RUNNING",
            "TRAFFIC_TYPE_BLOCKED",
            "GKE_MASTER_UNAUTHORIZED_ACCESS",
            "CLOUD_SQL_INSTANCE_UNAUTHORIZED_ACCESS",
            "DROPPED_INSIDE_GKE_SERVICE",
            "DROPPED_INSIDE_CLOUD_SQL_SERVICE",
            "GOOGLE_MANAGED_SERVICE_NO_PEERING",
            "CLOUD_SQL_INSTANCE_NO_IP_ADDRESS",
            "GKE_CONTROL_PLANE_REGION_MISMATCH",
            "PUBLIC_GKE_CONTROL_PLANE_TO_PRIVATE_DESTINATION",
            "GKE_CONTROL_PLANE_NO_ROUTE",
            "CLOUD_SQL_INSTANCE_NOT_CONFIGURED_FOR_EXTERNAL_TRAFFIC",
            "PUBLIC_CLOUD_SQL_INSTANCE_TO_PRIVATE_DESTINATION",
            "CLOUD_SQL_INSTANCE_NO_ROUTE",
            "CLOUD_FUNCTION_NOT_ACTIVE",
            "VPC_CONNECTOR_NOT_SET",
            "VPC_CONNECTOR_NOT_RUNNING",
            "PSC_CONNECTION_NOT_ACCEPTED",
            "CLOUD_RUN_REVISION_NOT_READY",
          },
          enumDescriptions = {
            "Cause is unspecified.",
            "Destination external address cannot be resolved to a known target. If the address is used in a Google Cloud project, provide the project ID as test input.",
            "A Compute Engine instance can only send or receive a packet with a foreign IP address if ip_forward is enabled.",
            "Dropped due to a firewall rule, unless allowed due to connection tracking.",
            "Dropped due to no routes.",
            "Dropped due to invalid route. Route's next hop is a blackhole.",
            "Packet is sent to a wrong (unintended) network. Example: you trace a packet from VM1:Network1 to VM2:Network2, however, the route configured in Network1 sends the packet destined for VM2's IP addresss to Network3.",
            "Packet with internal destination address sent to the internet gateway.",
            "Instance with only an internal IP address tries to access Google API and services, but private Google access is not enabled.",
            "Instance with only an internal IP address tries to access external hosts, but Cloud NAT is not enabled in the subnet, unless special configurations on a VM allow this connection.",
            "Destination internal address cannot be resolved to a known target. If this is a shared VPC scenario, verify if the service project ID is provided as test input. Otherwise, verify if the IP address is being used in the project.",
            "Forwarding rule's protocol and ports do not match the packet header.",
            "Packet could be dropped because it was sent from a different region to a regional forwarding without global access.",
            "Forwarding rule does not have backends configured.",
            "Firewalls block the health check probes to the backends and cause the backends to be unavailable for traffic from the load balancer. For more details, see [Health check firewall rules](https://cloud.google.com/load-balancing/docs/health-checks#firewall_rules).",
            "Packet is sent from or to a Compute Engine instance that is not in a running state.",
            "Packet sent from or to a GKE cluster that is not in running state.",
            "Packet sent from or to a Cloud SQL instance that is not in running state.",
            "The type of traffic is blocked and the user cannot configure a firewall rule to enable it. See [Always blocked traffic](https://cloud.google.com/vpc/docs/firewalls#blockedtraffic) for more details.",
            "Access to Google Kubernetes Engine cluster master's endpoint is not authorized. See [Access to the cluster endpoints](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters#access_to_the_cluster_endpoints) for more details.",
            "Access to the Cloud SQL instance endpoint is not authorized. See [Authorizing with authorized networks](https://cloud.google.com/sql/docs/mysql/authorize-networks) for more details.",
            "Packet was dropped inside Google Kubernetes Engine Service.",
            "Packet was dropped inside Cloud SQL Service.",
            "Packet was dropped because there is no peering between the originating network and the Google Managed Services Network.",
            "Packet was dropped because the Cloud SQL instance has neither a private nor a public IP address.",
            "Packet was dropped because a GKE cluster private endpoint is unreachable from a region different from the cluster's region.",
            "Packet sent from a public GKE cluster control plane to a private IP address.",
            "Packet was dropped because there is no route from a GKE cluster control plane to a destination network.",
            "Packet sent from a Cloud SQL instance to an external IP address is not allowed. The Cloud SQL instance is not configured to send packets to external IP addresses.",
            "Packet sent from a Cloud SQL instance with only a public IP address to a private IP address.",
            "Packet was dropped because there is no route from a Cloud SQL instance to a destination network.",
            "Packet could be dropped because the Cloud Function is not in an active status.",
            "Packet could be dropped because no VPC connector is set.",
            "Packet could be dropped because the VPC connector is not in a running state.",
            "The Private Service Connect endpoint is in a project that is not approved to connect to the service.",
            "Packet sent from a Cloud Run revision that is not ready.",
          },
          type = "string",
        },
        resourceUri = {
          description = "URI of the resource that caused the drop.",
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
    Endpoint = {
      description = "Source or destination of the Connectivity Test.",
      id = "Endpoint",
      properties = {
        appEngineVersion = {
          ["$ref"] = "AppEngineVersionEndpoint",
          description = "An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).",
        },
        cloudFunction = {
          ["$ref"] = "CloudFunctionEndpoint",
          description = "A [Cloud Function](https://cloud.google.com/functions).",
        },
        cloudRunRevision = {
          ["$ref"] = "CloudRunRevisionEndpoint",
          description = "A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)",
        },
        cloudSqlInstance = {
          description = "A [Cloud SQL](https://cloud.google.com/sql) instance URI.",
          type = "string",
        },
        gkeMasterCluster = {
          description = "A cluster URI for [Google Kubernetes Engine master](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).",
          type = "string",
        },
        instance = {
          description = "A Compute Engine instance URI.",
          type = "string",
        },
        ipAddress = {
          description = "The IP address of the endpoint, which can be an external or internal IP. An IPv6 address is only allowed when the test's destination is a [global load balancer VIP](/load-balancing/docs/load-balancing-overview).",
          type = "string",
        },
        network = {
          description = "A Compute Engine network URI.",
          type = "string",
        },
        networkType = {
          description = "Type of the network where the endpoint is located. Applicable only to source endpoint, as destination network type can be inferred from the source.",
          enum = {
            "NETWORK_TYPE_UNSPECIFIED",
            "GCP_NETWORK",
            "NON_GCP_NETWORK",
          },
          enumDescriptions = {
            "Default type if unspecified.",
            "A network hosted within Google Cloud Platform. To receive more detailed output, specify the URI for the source or destination network.",
            "A network hosted outside of Google Cloud Platform. This can be an on-premises network, or a network hosted by another cloud provider.",
          },
          type = "string",
        },
        port = {
          description = "The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP.",
          format = "int32",
          type = "integer",
        },
        projectId = {
          description = "Project ID where the endpoint is located. The Project ID can be derived from the URI if you provide a VM instance or network URI. The following are two cases where you must provide the project ID: 1. Only the IP address is specified, and the IP address is within a GCP project. 2. When you are using Shared VPC and the IP address that you provide is from the service project. In this case, the network that the IP address resides in is defined in the host project.",
          type = "string",
        },
      },
      type = "object",
    },
    EndpointInfo = {
      description = "For display only. The specification of the endpoints for the test. EndpointInfo is derived from source and destination Endpoint and validated by the backend data plane model.",
      id = "EndpointInfo",
      properties = {
        destinationIp = {
          description = "Destination IP address.",
          type = "string",
        },
        destinationNetworkUri = {
          description = "URI of the network where this packet is sent to.",
          type = "string",
        },
        destinationPort = {
          description = "Destination port. Only valid when protocol is TCP or UDP.",
          format = "int32",
          type = "integer",
        },
        protocol = {
          description = "IP protocol in string format, for example: \"TCP\", \"UDP\", \"ICMP\".",
          type = "string",
        },
        sourceIp = {
          description = "Source IP address.",
          type = "string",
        },
        sourceNetworkUri = {
          description = "URI of the network where this packet originates from.",
          type = "string",
        },
        sourcePort = {
          description = "Source port. Only valid when protocol is TCP or UDP.",
          format = "int32",
          type = "integer",
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
    FirewallInfo = {
      description = "For display only. Metadata associated with a VPC firewall rule, an implied VPC firewall rule, or a hierarchical firewall policy rule.",
      id = "FirewallInfo",
      properties = {
        action = {
          description = "Possible values: ALLOW, DENY",
          type = "string",
        },
        direction = {
          description = "Possible values: INGRESS, EGRESS",
          type = "string",
        },
        displayName = {
          description = "The display name of the VPC firewall rule. This field is not applicable to hierarchical firewall policy rules.",
          type = "string",
        },
        firewallRuleType = {
          description = "The firewall rule's type.",
          enum = {
            "FIREWALL_RULE_TYPE_UNSPECIFIED",
            "HIERARCHICAL_FIREWALL_POLICY_RULE",
            "VPC_FIREWALL_RULE",
            "IMPLIED_VPC_FIREWALL_RULE",
            "SERVERLESS_VPC_ACCESS_MANAGED_FIREWALL_RULE",
            "NETWORK_FIREWALL_POLICY_RULE",
          },
          enumDescriptions = {
            "Unspecified type.",
            "Hierarchical firewall policy rule. For details, see [Hierarchical firewall policies overview](https://cloud.google.com/vpc/docs/firewall-policies).",
            "VPC firewall rule. For details, see [VPC firewall rules overview](https://cloud.google.com/vpc/docs/firewalls).",
            "Implied VPC firewall rule. For details, see [Implied rules](https://cloud.google.com/vpc/docs/firewalls#default_firewall_rules).",
            "Implicit firewall rules that are managed by serverless VPC access to allow ingress access. They are not visible in the Google Cloud console. For details, see [VPC connector's implicit rules](https://cloud.google.com/functions/docs/networking/connecting-vpc#restrict-access).",
            "Global network firewall policy rule. For details, see [Network firewall policies](https://cloud.google.com/vpc/docs/network-firewall-policies).",
          },
          type = "string",
        },
        networkUri = {
          description = "The URI of the VPC network that the firewall rule is associated with. This field is not applicable to hierarchical firewall policy rules.",
          type = "string",
        },
        policy = {
          description = "The hierarchical firewall policy that this rule is associated with. This field is not applicable to VPC firewall rules.",
          type = "string",
        },
        priority = {
          description = "The priority of the firewall rule.",
          format = "int32",
          type = "integer",
        },
        targetServiceAccounts = {
          description = "The target service accounts specified by the firewall rule.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetTags = {
          description = "The target tags defined by the VPC firewall rule. This field is not applicable to hierarchical firewall policy rules.",
          items = {
            type = "string",
          },
          type = "array",
        },
        uri = {
          description = "The URI of the VPC firewall rule. This field is not applicable to implied firewall rules or hierarchical firewall policy rules.",
          type = "string",
        },
      },
      type = "object",
    },
    ForwardInfo = {
      description = "Details of the final state \"forward\" and associated resource.",
      id = "ForwardInfo",
      properties = {
        resourceUri = {
          description = "URI of the resource that the packet is forwarded to.",
          type = "string",
        },
        target = {
          description = "Target type where this packet is forwarded to.",
          enum = {
            "TARGET_UNSPECIFIED",
            "PEERING_VPC",
            "VPN_GATEWAY",
            "INTERCONNECT",
            "GKE_MASTER",
            "IMPORTED_CUSTOM_ROUTE_NEXT_HOP",
            "CLOUD_SQL_INSTANCE",
            "ANOTHER_PROJECT",
          },
          enumDescriptions = {
            "Target not specified.",
            "Forwarded to a VPC peering network.",
            "Forwarded to a Cloud VPN gateway.",
            "Forwarded to a Cloud Interconnect connection.",
            "Forwarded to a Google Kubernetes Engine Container cluster master.",
            "Forwarded to the next hop of a custom route imported from a peering VPC.",
            "Forwarded to a Cloud SQL instance.",
            "Forwarded to a VPC network in another project.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ForwardingRuleInfo = {
      description = "For display only. Metadata associated with a Compute Engine forwarding rule.",
      id = "ForwardingRuleInfo",
      properties = {
        displayName = {
          description = "Name of a Compute Engine forwarding rule.",
          type = "string",
        },
        matchedPortRange = {
          description = "Port range defined in the forwarding rule that matches the test.",
          type = "string",
        },
        matchedProtocol = {
          description = "Protocol defined in the forwarding rule that matches the test.",
          type = "string",
        },
        networkUri = {
          description = "Network URI. Only valid for Internal Load Balancer.",
          type = "string",
        },
        target = {
          description = "Target type of the forwarding rule.",
          type = "string",
        },
        uri = {
          description = "URI of a Compute Engine forwarding rule.",
          type = "string",
        },
        vip = {
          description = "VIP of the forwarding rule.",
          type = "string",
        },
      },
      type = "object",
    },
    GKEMasterInfo = {
      description = "For display only. Metadata associated with a Google Kubernetes Engine (GKE) cluster master.",
      id = "GKEMasterInfo",
      properties = {
        clusterNetworkUri = {
          description = "URI of a GKE cluster network.",
          type = "string",
        },
        clusterUri = {
          description = "URI of a GKE cluster.",
          type = "string",
        },
        externalIp = {
          description = "External IP address of a GKE cluster master.",
          type = "string",
        },
        internalIp = {
          description = "Internal IP address of a GKE cluster master.",
          type = "string",
        },
      },
      type = "object",
    },
    InstanceInfo = {
      description = "For display only. Metadata associated with a Compute Engine instance.",
      id = "InstanceInfo",
      properties = {
        displayName = {
          description = "Name of a Compute Engine instance.",
          type = "string",
        },
        externalIp = {
          description = "External IP address of the network interface.",
          type = "string",
        },
        interface = {
          description = "Name of the network interface of a Compute Engine instance.",
          type = "string",
        },
        internalIp = {
          description = "Internal IP address of the network interface.",
          type = "string",
        },
        networkTags = {
          description = "Network tags configured on the instance.",
          items = {
            type = "string",
          },
          type = "array",
        },
        networkUri = {
          description = "URI of a Compute Engine network.",
          type = "string",
        },
        serviceAccount = {
          description = "Service account authorized for the instance.",
          type = "string",
        },
        uri = {
          description = "URI of a Compute Engine instance.",
          type = "string",
        },
      },
      type = "object",
    },
    ListConnectivityTestsResponse = {
      description = "Response for the `ListConnectivityTests` method.",
      id = "ListConnectivityTestsResponse",
      properties = {
        nextPageToken = {
          description = "Page token to fetch the next set of Connectivity Tests.",
          type = "string",
        },
        resources = {
          description = "List of Connectivity Tests.",
          items = {
            ["$ref"] = "ConnectivityTest",
          },
          type = "array",
        },
        unreachable = {
          description = "Locations that could not be reached (when querying all locations with `-`).",
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
    LoadBalancerBackend = {
      description = "For display only. Metadata associated with a specific load balancer backend.",
      id = "LoadBalancerBackend",
      properties = {
        displayName = {
          description = "Name of a Compute Engine instance or network endpoint.",
          type = "string",
        },
        healthCheckAllowingFirewallRules = {
          description = "A list of firewall rule URIs allowing probes from health check IP ranges.",
          items = {
            type = "string",
          },
          type = "array",
        },
        healthCheckBlockingFirewallRules = {
          description = "A list of firewall rule URIs blocking probes from health check IP ranges.",
          items = {
            type = "string",
          },
          type = "array",
        },
        healthCheckFirewallState = {
          description = "State of the health check firewall configuration.",
          enum = {
            "HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED",
            "CONFIGURED",
            "MISCONFIGURED",
          },
          enumDescriptions = {
            "State is unspecified. Default state if not populated.",
            "There are configured firewall rules to allow health check probes to the backend.",
            "There are firewall rules configured to allow partial health check ranges or block all health check ranges. If a health check probe is sent from denied IP ranges, the health check to the backend will fail. Then, the backend will be marked unhealthy and will not receive traffic sent to the load balancer.",
          },
          type = "string",
        },
        uri = {
          description = "URI of a Compute Engine instance or network endpoint.",
          type = "string",
        },
      },
      type = "object",
    },
    LoadBalancerInfo = {
      description = "For display only. Metadata associated with a load balancer.",
      id = "LoadBalancerInfo",
      properties = {
        backendType = {
          description = "Type of load balancer's backend configuration.",
          enum = {
            "BACKEND_TYPE_UNSPECIFIED",
            "BACKEND_SERVICE",
            "TARGET_POOL",
            "TARGET_INSTANCE",
          },
          enumDescriptions = {
            "Type is unspecified.",
            "Backend Service as the load balancer's backend.",
            "Target Pool as the load balancer's backend.",
            "Target Instance as the load balancer's backend.",
          },
          type = "string",
        },
        backendUri = {
          description = "Backend configuration URI.",
          type = "string",
        },
        backends = {
          description = "Information for the loadbalancer backends.",
          items = {
            ["$ref"] = "LoadBalancerBackend",
          },
          type = "array",
        },
        healthCheckUri = {
          description = "URI of the health check for the load balancer.",
          type = "string",
        },
        loadBalancerType = {
          description = "Type of the load balancer.",
          enum = {
            "LOAD_BALANCER_TYPE_UNSPECIFIED",
            "INTERNAL_TCP_UDP",
            "NETWORK_TCP_UDP",
            "HTTP_PROXY",
            "TCP_PROXY",
            "SSL_PROXY",
          },
          enumDescriptions = {
            "Type is unspecified.",
            "Internal TCP/UDP load balancer.",
            "Network TCP/UDP load balancer.",
            "HTTP(S) proxy load balancer.",
            "TCP proxy load balancer.",
            "SSL proxy load balancer.",
          },
          type = "string",
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
    NetworkInfo = {
      description = "For display only. Metadata associated with a Compute Engine network.",
      id = "NetworkInfo",
      properties = {
        displayName = {
          description = "Name of a Compute Engine network.",
          type = "string",
        },
        matchedIpRange = {
          description = "The IP range that matches the test.",
          type = "string",
        },
        uri = {
          description = "URI of a Compute Engine network.",
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
      description = "Metadata describing an Operation",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "API version.",
          type = "string",
        },
        cancelRequested = {
          description = "Specifies if cancellation was requested for the operation.",
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
        statusDetail = {
          description = "Human-readable status of the operation, if any.",
          type = "string",
        },
        target = {
          description = "Target of the operation - for example projects/project-1/locations/global/connectivityTests/test-1",
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
    ReachabilityDetails = {
      description = "Results of the configuration analysis from the last run of the test.",
      id = "ReachabilityDetails",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "The details of a failure or a cancellation of reachability analysis.",
        },
        result = {
          description = "The overall result of the test's configuration analysis.",
          enum = {
            "RESULT_UNSPECIFIED",
            "REACHABLE",
            "UNREACHABLE",
            "AMBIGUOUS",
            "UNDETERMINED",
          },
          enumDescriptions = {
            "No result was specified.",
            "Possible scenarios are: * The configuration analysis determined that a packet originating from the source is expected to reach the destination. * The analysis didn't complete because the user lacks permission for some of the resources in the trace. However, at the time the user's permission became insufficient, the trace had been successful so far.",
            "A packet originating from the source is expected to be dropped before reaching the destination.",
            "The source and destination endpoints do not uniquely identify the test location in the network, and the reachability result contains multiple traces. For some traces, a packet could be delivered, and for others, it would not be.",
            "The configuration analysis did not complete. Possible reasons are: * A permissions error occurred--for example, the user might not have read permission for all of the resources named in the test. * An internal error occurred. * The analyzer received an invalid or unsupported argument or was unable to identify a known endpoint.",
          },
          type = "string",
        },
        traces = {
          description = "Result may contain a list of traces if a test has multiple possible paths in the network, such as when destination endpoint is a load balancer with multiple backends.",
          items = {
            ["$ref"] = "Trace",
          },
          type = "array",
        },
        verifyTime = {
          description = "The time of the configuration analysis.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    RerunConnectivityTestRequest = {
      description = "Request for the `RerunConnectivityTest` method.",
      id = "RerunConnectivityTestRequest",
      properties = {},
      type = "object",
    },
    RouteInfo = {
      description = "For display only. Metadata associated with a Compute Engine route.",
      id = "RouteInfo",
      properties = {
        destIpRange = {
          description = "Destination IP range of the route.",
          type = "string",
        },
        destPortRanges = {
          description = "Destination port ranges of the route. Policy based routes only.",
          items = {
            type = "string",
          },
          type = "array",
        },
        displayName = {
          description = "Name of a Compute Engine route.",
          type = "string",
        },
        instanceTags = {
          description = "Instance tags of the route.",
          items = {
            type = "string",
          },
          type = "array",
        },
        networkUri = {
          description = "URI of a Compute Engine network.",
          type = "string",
        },
        nextHop = {
          description = "Next hop of the route.",
          type = "string",
        },
        nextHopType = {
          description = "Type of next hop.",
          enum = {
            "NEXT_HOP_TYPE_UNSPECIFIED",
            "NEXT_HOP_IP",
            "NEXT_HOP_INSTANCE",
            "NEXT_HOP_NETWORK",
            "NEXT_HOP_PEERING",
            "NEXT_HOP_INTERCONNECT",
            "NEXT_HOP_VPN_TUNNEL",
            "NEXT_HOP_VPN_GATEWAY",
            "NEXT_HOP_INTERNET_GATEWAY",
            "NEXT_HOP_BLACKHOLE",
            "NEXT_HOP_ILB",
            "NEXT_HOP_ROUTER_APPLIANCE",
          },
          enumDescriptions = {
            "Unspecified type. Default value.",
            "Next hop is an IP address.",
            "Next hop is a Compute Engine instance.",
            "Next hop is a VPC network gateway.",
            "Next hop is a peering VPC.",
            "Next hop is an interconnect.",
            "Next hop is a VPN tunnel.",
            "Next hop is a VPN gateway. This scenario only happens when tracing connectivity from an on-premises network to Google Cloud through a VPN. The analysis simulates a packet departing from the on-premises network through a VPN tunnel and arriving at a Cloud VPN gateway.",
            "Next hop is an internet gateway.",
            "Next hop is blackhole; that is, the next hop either does not exist or is not running.",
            "Next hop is the forwarding rule of an Internal Load Balancer.",
            "Next hop is a [router appliance instance](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/ra-overview).",
          },
          type = "string",
        },
        priority = {
          description = "Priority of the route.",
          format = "int32",
          type = "integer",
        },
        protocols = {
          description = "Protocols of the route. Policy based routes only.",
          items = {
            type = "string",
          },
          type = "array",
        },
        routeType = {
          description = "Type of route.",
          enum = {
            "ROUTE_TYPE_UNSPECIFIED",
            "SUBNET",
            "STATIC",
            "DYNAMIC",
            "PEERING_SUBNET",
            "PEERING_STATIC",
            "PEERING_DYNAMIC",
            "POLICY_BASED",
          },
          enumDescriptions = {
            "Unspecified type. Default value.",
            "Route is a subnet route automatically created by the system.",
            "Static route created by the user, including the default route to the internet.",
            "Dynamic route exchanged between BGP peers.",
            "A subnet route received from peering network.",
            "A static route received from peering network.",
            "A dynamic route received from peering network.",
            "Policy based route.",
          },
          type = "string",
        },
        srcIpRange = {
          description = "Source IP address range of the route. Policy based routes only.",
          type = "string",
        },
        srcPortRanges = {
          description = "Source port ranges of the route. Policy based routes only.",
          items = {
            type = "string",
          },
          type = "array",
        },
        uri = {
          description = "URI of a Compute Engine route. Dynamic route from cloud router does not have a URI. Advertised route from Google Cloud VPC to on-premises network also does not have a URI.",
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
    Step = {
      description = "A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.",
      id = "Step",
      properties = {
        abort = {
          ["$ref"] = "AbortInfo",
          description = "Display information of the final state \"abort\" and reason.",
        },
        appEngineVersion = {
          ["$ref"] = "AppEngineVersionInfo",
          description = "Display information of an App Engine service version.",
        },
        causesDrop = {
          description = "This is a step that leads to the final state Drop.",
          type = "boolean",
        },
        cloudFunction = {
          ["$ref"] = "CloudFunctionInfo",
          description = "Display information of a Cloud Function.",
        },
        cloudRunRevision = {
          ["$ref"] = "CloudRunRevisionInfo",
          description = "Display information of a Cloud Run revision.",
        },
        cloudSqlInstance = {
          ["$ref"] = "CloudSQLInstanceInfo",
          description = "Display information of a Cloud SQL instance.",
        },
        deliver = {
          ["$ref"] = "DeliverInfo",
          description = "Display information of the final state \"deliver\" and reason.",
        },
        description = {
          description = "A description of the step. Usually this is a summary of the state.",
          type = "string",
        },
        drop = {
          ["$ref"] = "DropInfo",
          description = "Display information of the final state \"drop\" and reason.",
        },
        endpoint = {
          ["$ref"] = "EndpointInfo",
          description = "Display information of the source and destination under analysis. The endpoint information in an intermediate state may differ with the initial input, as it might be modified by state like NAT, or Connection Proxy.",
        },
        firewall = {
          ["$ref"] = "FirewallInfo",
          description = "Display information of a Compute Engine firewall rule.",
        },
        forward = {
          ["$ref"] = "ForwardInfo",
          description = "Display information of the final state \"forward\" and reason.",
        },
        forwardingRule = {
          ["$ref"] = "ForwardingRuleInfo",
          description = "Display information of a Compute Engine forwarding rule.",
        },
        gkeMaster = {
          ["$ref"] = "GKEMasterInfo",
          description = "Display information of a Google Kubernetes Engine cluster master.",
        },
        instance = {
          ["$ref"] = "InstanceInfo",
          description = "Display information of a Compute Engine instance.",
        },
        loadBalancer = {
          ["$ref"] = "LoadBalancerInfo",
          description = "Display information of the load balancers.",
        },
        network = {
          ["$ref"] = "NetworkInfo",
          description = "Display information of a Google Cloud network.",
        },
        projectId = {
          description = "Project ID that contains the configuration this step is validating.",
          type = "string",
        },
        route = {
          ["$ref"] = "RouteInfo",
          description = "Display information of a Compute Engine route.",
        },
        state = {
          description = "Each step is in one of the pre-defined states.",
          enum = {
            "STATE_UNSPECIFIED",
            "START_FROM_INSTANCE",
            "START_FROM_INTERNET",
            "START_FROM_PRIVATE_NETWORK",
            "START_FROM_GKE_MASTER",
            "START_FROM_CLOUD_SQL_INSTANCE",
            "START_FROM_CLOUD_FUNCTION",
            "START_FROM_APP_ENGINE_VERSION",
            "START_FROM_CLOUD_RUN_REVISION",
            "APPLY_INGRESS_FIREWALL_RULE",
            "APPLY_EGRESS_FIREWALL_RULE",
            "APPLY_ROUTE",
            "APPLY_FORWARDING_RULE",
            "SPOOFING_APPROVED",
            "ARRIVE_AT_INSTANCE",
            "ARRIVE_AT_INTERNAL_LOAD_BALANCER",
            "ARRIVE_AT_EXTERNAL_LOAD_BALANCER",
            "ARRIVE_AT_VPN_GATEWAY",
            "ARRIVE_AT_VPN_TUNNEL",
            "ARRIVE_AT_VPC_CONNECTOR",
            "NAT",
            "PROXY_CONNECTION",
            "DELIVER",
            "DROP",
            "FORWARD",
            "ABORT",
            "VIEWER_PERMISSION_MISSING",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Initial state: packet originating from a Compute Engine instance. An InstanceInfo is populated with starting instance information.",
            "Initial state: packet originating from the internet. The endpoint information is populated.",
            "Initial state: packet originating from a VPC or on-premises network with internal source IP. If the source is a VPC network visible to the user, a NetworkInfo is populated with details of the network.",
            "Initial state: packet originating from a Google Kubernetes Engine cluster master. A GKEMasterInfo is populated with starting instance information.",
            "Initial state: packet originating from a Cloud SQL instance. A CloudSQLInstanceInfo is populated with starting instance information.",
            "Initial state: packet originating from a Cloud Function. A CloudFunctionInfo is populated with starting function information.",
            "Initial state: packet originating from an App Engine service version. An AppEngineVersionInfo is populated with starting version information.",
            "Initial state: packet originating from a Cloud Run revision. A CloudRunRevisionInfo is populated with starting revision information.",
            "Config checking state: verify ingress firewall rule.",
            "Config checking state: verify egress firewall rule.",
            "Config checking state: verify route.",
            "Config checking state: match forwarding rule.",
            "Config checking state: packet sent or received under foreign IP address and allowed.",
            "Forwarding state: arriving at a Compute Engine instance.",
            "Forwarding state: arriving at a Compute Engine internal load balancer.",
            "Forwarding state: arriving at a Compute Engine external load balancer.",
            "Forwarding state: arriving at a Cloud VPN gateway.",
            "Forwarding state: arriving at a Cloud VPN tunnel.",
            "Forwarding state: arriving at a VPC connector.",
            "Transition state: packet header translated.",
            "Transition state: original connection is terminated and a new proxied connection is initiated.",
            "Final state: packet could be delivered.",
            "Final state: packet could be dropped.",
            "Final state: packet could be forwarded to a network with an unknown configuration.",
            "Final state: analysis is aborted.",
            "Special state: viewer of the test result does not have permission to see the configuration in this step.",
          },
          type = "string",
        },
        vpcConnector = {
          ["$ref"] = "VpcConnectorInfo",
          description = "Display information of a VPC connector.",
        },
        vpnGateway = {
          ["$ref"] = "VpnGatewayInfo",
          description = "Display information of a Compute Engine VPN gateway.",
        },
        vpnTunnel = {
          ["$ref"] = "VpnTunnelInfo",
          description = "Display information of a Compute Engine VPN tunnel.",
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
    Trace = {
      description = "Trace represents one simulated packet forwarding path. * Each trace contains multiple ordered steps. * Each step is in a particular state with associated configuration. * State is categorized as final or non-final states. * Each final state has a reason associated. * Each trace must end with a final state (the last step). ``` |---------------------Trace----------------------| Step1(State) Step2(State) --- StepN(State(final)) ```",
      id = "Trace",
      properties = {
        endpointInfo = {
          ["$ref"] = "EndpointInfo",
          description = "Derived from the source and destination endpoints definition specified by user request, and validated by the data plane model. If there are multiple traces starting from different source locations, then the endpoint_info may be different between traces.",
        },
        steps = {
          description = "A trace of a test contains multiple steps from the initial state to the final state (delivered, dropped, forwarded, or aborted). The steps are ordered by the processing sequence within the simulated network state machine. It is critical to preserve the order of the steps and avoid reordering or sorting them.",
          items = {
            ["$ref"] = "Step",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VpcConnectorInfo = {
      description = "For display only. Metadata associated with a VPC connector.",
      id = "VpcConnectorInfo",
      properties = {
        displayName = {
          description = "Name of a VPC connector.",
          type = "string",
        },
        location = {
          description = "Location in which the VPC connector is deployed.",
          type = "string",
        },
        uri = {
          description = "URI of a VPC connector.",
          type = "string",
        },
      },
      type = "object",
    },
    VpnGatewayInfo = {
      description = "For display only. Metadata associated with a Compute Engine VPN gateway.",
      id = "VpnGatewayInfo",
      properties = {
        displayName = {
          description = "Name of a VPN gateway.",
          type = "string",
        },
        ipAddress = {
          description = "IP address of the VPN gateway.",
          type = "string",
        },
        networkUri = {
          description = "URI of a Compute Engine network where the VPN gateway is configured.",
          type = "string",
        },
        region = {
          description = "Name of a Google Cloud region where this VPN gateway is configured.",
          type = "string",
        },
        uri = {
          description = "URI of a VPN gateway.",
          type = "string",
        },
        vpnTunnelUri = {
          description = "A VPN tunnel that is associated with this VPN gateway. There may be multiple VPN tunnels configured on a VPN gateway, and only the one relevant to the test is displayed.",
          type = "string",
        },
      },
      type = "object",
    },
    VpnTunnelInfo = {
      description = "For display only. Metadata associated with a Compute Engine VPN tunnel.",
      id = "VpnTunnelInfo",
      properties = {
        displayName = {
          description = "Name of a VPN tunnel.",
          type = "string",
        },
        networkUri = {
          description = "URI of a Compute Engine network where the VPN tunnel is configured.",
          type = "string",
        },
        region = {
          description = "Name of a Google Cloud region where this VPN tunnel is configured.",
          type = "string",
        },
        remoteGateway = {
          description = "URI of a VPN gateway at remote end of the tunnel.",
          type = "string",
        },
        remoteGatewayIp = {
          description = "Remote VPN gateway's IP address.",
          type = "string",
        },
        routingType = {
          description = "Type of the routing policy.",
          enum = {
            "ROUTING_TYPE_UNSPECIFIED",
            "ROUTE_BASED",
            "POLICY_BASED",
            "DYNAMIC",
          },
          enumDescriptions = {
            "Unspecified type. Default value.",
            "Route based VPN.",
            "Policy based routing.",
            "Dynamic (BGP) routing.",
          },
          type = "string",
        },
        sourceGateway = {
          description = "URI of the VPN gateway at local end of the tunnel.",
          type = "string",
        },
        sourceGatewayIp = {
          description = "Local VPN gateway's IP address.",
          type = "string",
        },
        uri = {
          description = "URI of a VPN tunnel.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Network Management API",
  version = "v1",
  version_module = true,
}
