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
  baseUrl = "https://clouddeploy.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Deploy",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/deploy/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "clouddeploy:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://clouddeploy.mtls.googleapis.com/",
  name = "clouddeploy",
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
              id = "clouddeploy.projects.locations.get",
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
            getConfig = {
              description = "Gets the configuration for a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/config",
              httpMethod = "GET",
              id = "clouddeploy.projects.locations.getConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of requested configuration.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+/config$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Config",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "clouddeploy.projects.locations.list",
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
            deliveryPipelines = {
              methods = {
                create = {
                  description = "Creates a new DeliveryPipeline in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines",
                  httpMethod = "POST",
                  id = "clouddeploy.projects.locations.deliveryPipelines.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    deliveryPipelineId = {
                      description = "Required. ID of the `DeliveryPipeline`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent collection in which the `DeliveryPipeline` should be created. Format should be projects/{project_id}/locations/{location_name}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual change is made.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/deliveryPipelines",
                  request = {
                    ["$ref"] = "DeliveryPipeline",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single DeliveryPipeline.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}",
                  httpMethod = "DELETE",
                  id = "clouddeploy.projects.locations.deliveryPipelines.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "Optional. If set to true, then deleting an already deleted or non-existing `DeliveryPipeline` will succeed.",
                      location = "query",
                      type = "boolean",
                    },
                    etag = {
                      description = "Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
                      location = "query",
                      type = "string",
                    },
                    force = {
                      description = "Optional. If set to true, all child resources under this pipeline will also be deleted. Otherwise, the request will only work if the pipeline has no child resources.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The name of the `DeliveryPipeline` to delete. Format should be projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validate the request and preview the review, but do not actually post it.",
                      location = "query",
                      type = "boolean",
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
                  description = "Gets details of a single DeliveryPipeline.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}",
                  httpMethod = "GET",
                  id = "clouddeploy.projects.locations.deliveryPipelines.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the `DeliveryPipeline`. Format must be projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "DeliveryPipeline",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "clouddeploy.projects.locations.deliveryPipelines.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+$",
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
                  description = "Lists DeliveryPipelines in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines",
                  httpMethod = "GET",
                  id = "clouddeploy.projects.locations.deliveryPipelines.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter pipelines to be returned. See https://google.aip.dev/160 for more details.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Field to sort by. See https://google.aip.dev/132#ordering for more details.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of pipelines to return. The service may return fewer than this value. If unspecified, at most 50 pipelines will be returned. The maximum value is 1000; values above 1000 will be set to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListDeliveryPipelines` call. Provide this to retrieve the subsequent page. When paginating, all other provided parameters match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of pipelines. Format must be projects/{project_id}/locations/{location_name}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/deliveryPipelines",
                  response = {
                    ["$ref"] = "ListDeliveryPipelinesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single DeliveryPipeline.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}",
                  httpMethod = "PATCH",
                  id = "clouddeploy.projects.locations.deliveryPipelines.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "Optional. If set to true, updating a `DeliveryPipeline` that does not exist will result in the creation of a new `DeliveryPipeline`.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Optional. Name of the `DeliveryPipeline`. Format is projects/{project}/ locations/{location}/deliveryPipelines/a-z{0,62}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask is used to specify the fields to be overwritten in the `DeliveryPipeline` resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual change is made.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "DeliveryPipeline",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "clouddeploy.projects.locations.deliveryPipelines.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "clouddeploy.projects.locations.deliveryPipelines.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+$",
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
                releases = {
                  methods = {
                    abandon = {
                      description = "Abandons a Release in the Delivery Pipeline.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}:abandon",
                      httpMethod = "POST",
                      id = "clouddeploy.projects.locations.deliveryPipelines.releases.abandon",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the Release. Format is projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/ releases/{release}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:abandon",
                      request = {
                        ["$ref"] = "AbandonReleaseRequest",
                      },
                      response = {
                        ["$ref"] = "AbandonReleaseResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Creates a new Release in a given project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases",
                      httpMethod = "POST",
                      id = "clouddeploy.projects.locations.deliveryPipelines.releases.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The parent collection in which the `Release` should be created. Format should be projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        releaseId = {
                          description = "Required. ID of the `Release`.",
                          location = "query",
                          type = "string",
                        },
                        requestId = {
                          description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                          location = "query",
                          type = "string",
                        },
                        validateOnly = {
                          description = "Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual change is made.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+parent}/releases",
                      request = {
                        ["$ref"] = "Release",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets details of a single Release.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}",
                      httpMethod = "GET",
                      id = "clouddeploy.projects.locations.deliveryPipelines.releases.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the `Release`. Format must be projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+$",
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
                      },
                    },
                    list = {
                      description = "Lists Releases in a given project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases",
                      httpMethod = "GET",
                      id = "clouddeploy.projects.locations.deliveryPipelines.releases.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter releases to be returned. See https://google.aip.dev/160 for more details.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of `Release` objects to return. The service may return fewer than this value. If unspecified, at most 50 `Release` objects will be returned. The maximum value is 1000; values above 1000 will be set to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. A page token, received from a previous `ListReleases` call. Provide this to retrieve the subsequent page. When paginating, all other provided parameters match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The `DeliveryPipeline` which owns this collection of `Release` objects.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/releases",
                      response = {
                        ["$ref"] = "ListReleasesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    rollouts = {
                      methods = {
                        approve = {
                          description = "Approves a Rollout.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}/rollouts/{rolloutsId}:approve",
                          httpMethod = "POST",
                          id = "clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.approve",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Name of the Rollout. Format is projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/ releases/{release}/rollouts/{rollout}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+/rollouts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}:approve",
                          request = {
                            ["$ref"] = "ApproveRolloutRequest",
                          },
                          response = {
                            ["$ref"] = "ApproveRolloutResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        create = {
                          description = "Creates a new Rollout in a given project and location.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}/rollouts",
                          httpMethod = "POST",
                          id = "clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The parent collection in which the `Rollout` should be created. Format should be projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            requestId = {
                              description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                              location = "query",
                              type = "string",
                            },
                            rolloutId = {
                              description = "Required. ID of the `Rollout`.",
                              location = "query",
                              type = "string",
                            },
                            validateOnly = {
                              description = "Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual change is made.",
                              location = "query",
                              type = "boolean",
                            },
                          },
                          path = "v1/{+parent}/rollouts",
                          request = {
                            ["$ref"] = "Rollout",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Gets details of a single Rollout.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}/rollouts/{rolloutsId}",
                          httpMethod = "GET",
                          id = "clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. Name of the `Rollout`. Format must be projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}/rollouts/{rollout_name}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+/rollouts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Rollout",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists Rollouts in a given project and location.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}/rollouts",
                          httpMethod = "GET",
                          id = "clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Filter rollouts to be returned. See https://google.aip.dev/160 for more details.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. The maximum number of `Rollout` objects to return. The service may return fewer than this value. If unspecified, at most 50 `Rollout` objects will be returned. The maximum value is 1000; values above 1000 will be set to 1000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. A page token, received from a previous `ListRollouts` call. Provide this to retrieve the subsequent page. When paginating, all other provided parameters match the call that provided the page token.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The `Release` which owns this collection of `Rollout` objects.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/rollouts",
                          response = {
                            ["$ref"] = "ListRolloutsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        retryJob = {
                          description = "Retries the specified Job in a Rollout.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}/rollouts/{rolloutsId}:retryJob",
                          httpMethod = "POST",
                          id = "clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.retryJob",
                          parameterOrder = {
                            "rollout",
                          },
                          parameters = {
                            rollout = {
                              description = "Required. Name of the Rollout. Format is projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/ releases/{release}/rollouts/{rollout}.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+/rollouts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+rollout}:retryJob",
                          request = {
                            ["$ref"] = "RetryJobRequest",
                          },
                          response = {
                            ["$ref"] = "RetryJobResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                      resources = {
                        jobRuns = {
                          methods = {
                            get = {
                              description = "Gets details of a single JobRun.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}/rollouts/{rolloutsId}/jobRuns/{jobRunsId}",
                              httpMethod = "GET",
                              id = "clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.jobRuns.get",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. Name of the `JobRun`. Format must be projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}/rollouts/{rollout_name}/jobRuns/{job_run_name}.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+/rollouts/[^/]+/jobRuns/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}",
                              response = {
                                ["$ref"] = "JobRun",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                            list = {
                              description = "Lists JobRuns in a given project and location.",
                              flatPath = "v1/projects/{projectsId}/locations/{locationsId}/deliveryPipelines/{deliveryPipelinesId}/releases/{releasesId}/rollouts/{rolloutsId}/jobRuns",
                              httpMethod = "GET",
                              id = "clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.jobRuns.list",
                              parameterOrder = {
                                "parent",
                              },
                              parameters = {
                                filter = {
                                  description = "Optional. Filter results to be returned. See https://google.aip.dev/160 for more details.",
                                  location = "query",
                                  type = "string",
                                },
                                orderBy = {
                                  description = "Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details.",
                                  location = "query",
                                  type = "string",
                                },
                                pageSize = {
                                  description = "Optional. The maximum number of `JobRun` objects to return. The service may return fewer than this value. If unspecified, at most 50 `JobRun` objects will be returned. The maximum value is 1000; values above 1000 will be set to 1000.",
                                  format = "int32",
                                  location = "query",
                                  type = "integer",
                                },
                                pageToken = {
                                  description = "Optional. A page token, received from a previous `ListJobRuns` call. Provide this to retrieve the subsequent page. When paginating, all other provided parameters match the call that provided the page token.",
                                  location = "query",
                                  type = "string",
                                },
                                parent = {
                                  description = "Required. The `Rollout` which owns this collection of `JobRun` objects.",
                                  location = "path",
                                  pattern = "^projects/[^/]+/locations/[^/]+/deliveryPipelines/[^/]+/releases/[^/]+/rollouts/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+parent}/jobRuns",
                              response = {
                                ["$ref"] = "ListJobRunsResponse",
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
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "clouddeploy.projects.locations.operations.cancel",
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
                  id = "clouddeploy.projects.locations.operations.delete",
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
                  id = "clouddeploy.projects.locations.operations.get",
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
                  id = "clouddeploy.projects.locations.operations.list",
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
            targets = {
              methods = {
                create = {
                  description = "Creates a new Target in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targets",
                  httpMethod = "POST",
                  id = "clouddeploy.projects.locations.targets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent collection in which the `Target` should be created. Format should be projects/{project_id}/locations/{location_name}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    targetId = {
                      description = "Required. ID of the `Target`.",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual change is made.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/targets",
                  request = {
                    ["$ref"] = "Target",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Target.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targets/{targetsId}",
                  httpMethod = "DELETE",
                  id = "clouddeploy.projects.locations.targets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "Optional. If set to true, then deleting an already deleted or non-existing DeliveryPipeline will succeed.",
                      location = "query",
                      type = "boolean",
                    },
                    etag = {
                      description = "Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The name of the `Target` to delete. Format should be projects/{project_id}/locations/{location_name}/targets/{target_name}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/targets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes after the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set, validate the request and preview the review, but do not actually post it.",
                      location = "query",
                      type = "boolean",
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
                  description = "Gets details of a single Target.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targets/{targetsId}",
                  httpMethod = "GET",
                  id = "clouddeploy.projects.locations.targets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the `Target`. Format must be projects/{project_id}/locations/{location_name}/targets/{target_name}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/targets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Target",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targets/{targetsId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "clouddeploy.projects.locations.targets.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/targets/[^/]+$",
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
                  description = "Lists Targets in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targets",
                  httpMethod = "GET",
                  id = "clouddeploy.projects.locations.targets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Filter targets to be returned. See https://google.aip.dev/160 for more details.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of `Target` objects to return. The service may return fewer than this value. If unspecified, at most 50 `Target` objects will be returned. The maximum value is 1000; values above 1000 will be set to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A page token, received from a previous `ListTargets` call. Provide this to retrieve the subsequent page. When paginating, all other provided parameters match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of targets. Format must be projects/{project_id}/locations/{location_name}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/targets",
                  response = {
                    ["$ref"] = "ListTargetsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the parameters of a single Target.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targets/{targetsId}",
                  httpMethod = "PATCH",
                  id = "clouddeploy.projects.locations.targets.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "Optional. If set to true, updating a `Target` that does not exist will result in the creation of a new `Target`.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Optional. Name of the `Target`. Format is projects/{project}/locations/{location}/targets/a-z{0,62}.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/targets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    requestId = {
                      description = "Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).",
                      location = "query",
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask is used to specify the fields to be overwritten in the Target resource by the update. The fields specified in the update_mask are relative to the resource, not the full request. A field will be overwritten if it is in the mask. If the user does not provide a mask then all fields will be overwritten.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual change is made.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Target",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targets/{targetsId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "clouddeploy.projects.locations.targets.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/targets/[^/]+$",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/targets/{targetsId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "clouddeploy.projects.locations.targets.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/targets/[^/]+$",
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
  rootUrl = "https://clouddeploy.googleapis.com/",
  schemas = {
    AbandonReleaseRequest = {
      description = "The request object used by `AbandonRelease`.",
      id = "AbandonReleaseRequest",
      properties = {},
      type = "object",
    },
    AbandonReleaseResponse = {
      description = "The response object for `AbandonRelease`.",
      id = "AbandonReleaseResponse",
      properties = {},
      type = "object",
    },
    AnthosCluster = {
      description = "Information specifying an Anthos Cluster.",
      id = "AnthosCluster",
      properties = {
        membership = {
          description = "Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.",
          type = "string",
        },
      },
      type = "object",
    },
    ApproveRolloutRequest = {
      description = "The request object used by `ApproveRollout`.",
      id = "ApproveRolloutRequest",
      properties = {
        approved = {
          description = "Required. True = approve; false = reject",
          type = "boolean",
        },
      },
      type = "object",
    },
    ApproveRolloutResponse = {
      description = "The response object from `ApproveRollout`.",
      id = "ApproveRolloutResponse",
      properties = {},
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
    BuildArtifact = {
      description = "Description of an a image to use during Skaffold rendering.",
      id = "BuildArtifact",
      properties = {
        image = {
          description = "Image name in Skaffold configuration.",
          type = "string",
        },
        tag = {
          description = "Image tag to use. This will generally be the full path to an image, such as \"gcr.io/my-project/busybox:1.2.3\" or \"gcr.io/my-project/busybox@sha256:abc123\".",
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
    CloudRunLocation = {
      description = "Information specifying where to deploy a Cloud Run Service.",
      id = "CloudRunLocation",
      properties = {
        location = {
          description = "Required. The location for the Cloud Run Service. Format must be `projects/{project}/locations/{location}`.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudRunMetadata = {
      description = "CloudRunMetadata contains information from a Cloud Run deployment.",
      id = "CloudRunMetadata",
      properties = {
        revision = {
          description = "Output only. The Cloud Run Revision id associated with a `Rollout`.",
          readOnly = true,
          type = "string",
        },
        service = {
          description = "Output only. The name of the Cloud Run Service that is associated with a `Rollout`. Format is projects/{project}/locations/{location}/services/{service}.",
          readOnly = true,
          type = "string",
        },
        serviceUrls = {
          description = "Output only. The Cloud Run Service urls that are associated with a `Rollout`.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    Config = {
      description = "Service-wide configuration.",
      id = "Config",
      properties = {
        defaultSkaffoldVersion = {
          description = "Default Skaffold version that is assigned when a Release is created without specifying a Skaffold version.",
          type = "string",
        },
        name = {
          description = "Name of the configuration.",
          type = "string",
        },
        supportedVersions = {
          description = "All supported versions of Skaffold.",
          items = {
            ["$ref"] = "SkaffoldVersion",
          },
          type = "array",
        },
      },
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
    DefaultPool = {
      description = "Execution using the default Cloud Build pool.",
      id = "DefaultPool",
      properties = {
        artifactStorage = {
          description = "Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket (\"gs://my-bucket\") or a path within a bucket (\"gs://my-bucket/my-dir\"). If unspecified, a default bucket located in the same region will be used.",
          type = "string",
        },
        serviceAccount = {
          description = "Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.",
          type = "string",
        },
      },
      type = "object",
    },
    DeliveryPipeline = {
      description = "A `DeliveryPipeline` resource in the Google Cloud Deploy API. A `DeliveryPipeline` defines a pipeline through which a Skaffold configuration can progress.",
      id = "DeliveryPipeline",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy.",
          type = "object",
        },
        condition = {
          ["$ref"] = "PipelineCondition",
          description = "Output only. Information around the state of the Delivery Pipeline.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. Time at which the pipeline was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Description of the `DeliveryPipeline`. Max length is 255 characters.",
          type = "string",
        },
        etag = {
          description = "This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.",
          type = "object",
        },
        name = {
          description = "Optional. Name of the `DeliveryPipeline`. Format is projects/{project}/ locations/{location}/deliveryPipelines/a-z{0,62}.",
          type = "string",
        },
        serialPipeline = {
          ["$ref"] = "SerialPipeline",
          description = "SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.",
        },
        suspended = {
          description = "When suspended, no new releases or rollouts can be created, but in-progress ones will complete.",
          type = "boolean",
        },
        uid = {
          description = "Output only. Unique identifier of the `DeliveryPipeline`.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Most recent time at which the pipeline was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DeliveryPipelineNotificationEvent = {
      description = "Payload proto for \"clouddeploy.googleapis.com/deliverypipeline_notification\" Platform Log event that describes the failure to send delivery pipeline status change Pub/Sub notification.",
      id = "DeliveryPipelineNotificationEvent",
      properties = {
        deliveryPipeline = {
          description = "The name of the `Delivery Pipeline`.",
          type = "string",
        },
        message = {
          description = "Debug message for when a notification fails to send.",
          type = "string",
        },
        type = {
          description = "Type of this notification, e.g. for a Pub/Sub failure.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TYPE_PUBSUB_NOTIFICATION_FAILURE",
            "TYPE_RENDER_STATUES_CHANGE",
          },
          enumDescriptions = {
            "Type is unspecified.",
            "A Pub/Sub notification failed to be sent.",
            "Deprecated: This field is never used. Use release_render log type instead.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeployJob = {
      description = "A deploy Job.",
      id = "DeployJob",
      properties = {},
      type = "object",
    },
    DeployJobRun = {
      description = "DeployJobRun contains information specific to a deploy `JobRun`.",
      id = "DeployJobRun",
      properties = {
        build = {
          description = "Output only. The resource name of the Cloud Build `Build` object that is used to deploy. Format is projects/{project}/locations/{location}/builds/{build}.",
          readOnly = true,
          type = "string",
        },
        failureCause = {
          description = "Output only. The reason the deploy failed. This will always be unspecified while the deploy is in progress or if it succeeded.",
          enum = {
            "FAILURE_CAUSE_UNSPECIFIED",
            "CLOUD_BUILD_UNAVAILABLE",
            "EXECUTION_FAILED",
            "DEADLINE_EXCEEDED",
            "CLOUD_BUILD_REQUEST_FAILED",
          },
          enumDescriptions = {
            "No reason for failure is specified.",
            "Cloud Build is not available, either because it is not enabled or because Google Cloud Deploy has insufficient permissions. See [Required permission](/deploy/docs/cloud-deploy-service-account#required_permissions).",
            "The deploy operation did not complete successfully; check Cloud Build logs.",
            "The deploy build did not complete within the alloted time.",
            "Cloud Build failed to fulfill Google Cloud Deploy's request. See failure_message for additional details.",
          },
          readOnly = true,
          type = "string",
        },
        failureMessage = {
          description = "Output only. Additional information about the deploy failure, if available.",
          readOnly = true,
          type = "string",
        },
        metadata = {
          ["$ref"] = "DeployJobRunMetadata",
          description = "Output only. Metadata containing information about the deploy job run.",
          readOnly = true,
        },
      },
      type = "object",
    },
    DeployJobRunMetadata = {
      description = "DeployJobRunMetadata surfaces information associated with a `DeployJobRun` to the user.",
      id = "DeployJobRunMetadata",
      properties = {
        cloudRun = {
          ["$ref"] = "CloudRunMetadata",
          description = "Output only. The name of the Cloud Run Service that is associated with a `DeployJobRun`.",
          readOnly = true,
        },
      },
      type = "object",
    },
    DeploymentJobs = {
      description = "Deployment job composition.",
      id = "DeploymentJobs",
      properties = {
        deployJob = {
          ["$ref"] = "Job",
          description = "Output only. The deploy Job. This is the first job run in the phase.",
          readOnly = true,
        },
        verifyJob = {
          ["$ref"] = "Job",
          description = "Output only. The verify Job. Runs after a deploy if the deploy succeeds.",
          readOnly = true,
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
    ExecutionConfig = {
      description = "Configuration of the environment to use when calling Skaffold.",
      id = "ExecutionConfig",
      properties = {
        artifactStorage = {
          description = "Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket (\"gs://my-bucket\") or a path within a bucket (\"gs://my-bucket/my-dir\"). If unspecified, a default bucket located in the same region will be used.",
          type = "string",
        },
        defaultPool = {
          ["$ref"] = "DefaultPool",
          description = "Optional. Use default Cloud Build pool.",
        },
        executionTimeout = {
          description = "Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seconds format. If unspecified, a default timeout of 1h is used.",
          format = "google-duration",
          type = "string",
        },
        privatePool = {
          ["$ref"] = "PrivatePool",
          description = "Optional. Use private Cloud Build pool.",
        },
        serviceAccount = {
          description = "Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) is used.",
          type = "string",
        },
        usages = {
          description = "Required. Usages when this configuration should be applied.",
          items = {
            enum = {
              "EXECUTION_ENVIRONMENT_USAGE_UNSPECIFIED",
              "RENDER",
              "DEPLOY",
              "VERIFY",
            },
            enumDescriptions = {
              "Default value. This value is unused.",
              "Use for rendering.",
              "Use for deploying and deployment hooks.",
              "Use for deployment verification.",
            },
            type = "string",
          },
          type = "array",
        },
        workerPool = {
          description = "Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. If this optional field is unspecified, the default Cloud Build pool will be used.",
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
    GkeCluster = {
      description = "Information specifying a GKE Cluster.",
      id = "GkeCluster",
      properties = {
        cluster = {
          description = "Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}.",
          type = "string",
        },
        internalIp = {
          description = "Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).",
          type = "boolean",
        },
      },
      type = "object",
    },
    Job = {
      description = "Job represents an operation for a `Rollout`.",
      id = "Job",
      properties = {
        deployJob = {
          ["$ref"] = "DeployJob",
          description = "Output only. A deploy Job.",
          readOnly = true,
        },
        id = {
          description = "Output only. The ID of the Job.",
          readOnly = true,
          type = "string",
        },
        jobRun = {
          description = "Output only. The name of the `JobRun` responsible for the most recent invocation of this Job.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the Job.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "DISABLED",
            "IN_PROGRESS",
            "SUCCEEDED",
            "FAILED",
            "ABORTED",
          },
          enumDescriptions = {
            "The Job has an unspecified state.",
            "The Job is waiting for an earlier Phase(s) or Job(s) to complete.",
            "The Job is disabled.",
            "The Job is in progress.",
            "The Job succeeded.",
            "The Job failed.",
            "The Job was aborted.",
          },
          readOnly = true,
          type = "string",
        },
        verifyJob = {
          ["$ref"] = "VerifyJob",
          description = "Output only. A verify Job.",
          readOnly = true,
        },
      },
      type = "object",
    },
    JobRun = {
      description = "A `JobRun` resource in the Google Cloud Deploy API. A `JobRun` contains information of a single `Rollout` job evaluation.",
      id = "JobRun",
      properties = {
        createTime = {
          description = "Output only. Time at which the `JobRun` was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deployJobRun = {
          ["$ref"] = "DeployJobRun",
          description = "Output only. Information specific to a deploy `JobRun`.",
          readOnly = true,
        },
        endTime = {
          description = "Output only. Time at which the `JobRun` ended.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          readOnly = true,
          type = "string",
        },
        jobId = {
          description = "Output only. ID of the `Rollout` job this `JobRun` corresponds to.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Optional. Name of the `JobRun`. Format is projects/{project}/locations/{location}/ deliveryPipelines/{deliveryPipeline}/releases/{releases}/rollouts/ {rollouts}/jobRuns/{uuid}.",
          type = "string",
        },
        phaseId = {
          description = "Output only. ID of the `Rollout` phase this `JobRun` belongs in.",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Output only. Time at which the `JobRun` was started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the `JobRun`.",
          enum = {
            "STATE_UNSPECIFIED",
            "IN_PROGRESS",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "The `JobRun` has an unspecified state.",
            "The `JobRun` is in progress.",
            "The `JobRun` has succeeded.",
            "The `JobRun` has failed.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. Unique identifier of the `JobRun`.",
          readOnly = true,
          type = "string",
        },
        verifyJobRun = {
          ["$ref"] = "VerifyJobRun",
          description = "Output only. Information specific to a verify `JobRun`.",
          readOnly = true,
        },
      },
      type = "object",
    },
    JobRunNotificationEvent = {
      description = "Payload proto for \"clouddeploy.googleapis.com/jobrun_notification\" Platform Log event that describes the failure to send JobRun resource update Pub/Sub notification.",
      id = "JobRunNotificationEvent",
      properties = {
        jobRun = {
          description = "The name of the `JobRun`.",
          type = "string",
        },
        message = {
          description = "Debug message for when a notification fails to send.",
          type = "string",
        },
        pipelineUid = {
          description = "Unique identifier of the `DeliveryPipeline`.",
          type = "string",
        },
        releaseUid = {
          description = "Unique identifier of the `Release`.",
          type = "string",
        },
        rolloutUid = {
          description = "Unique identifier of the `Rollout`.",
          type = "string",
        },
        targetId = {
          description = "ID of the `Target`.",
          type = "string",
        },
        type = {
          description = "Type of this notification, e.g. for a Pub/Sub failure.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TYPE_PUBSUB_NOTIFICATION_FAILURE",
            "TYPE_RENDER_STATUES_CHANGE",
          },
          enumDescriptions = {
            "Type is unspecified.",
            "A Pub/Sub notification failed to be sent.",
            "Deprecated: This field is never used. Use release_render log type instead.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ListDeliveryPipelinesResponse = {
      description = "The response object from `ListDeliveryPipelines`.",
      id = "ListDeliveryPipelinesResponse",
      properties = {
        deliveryPipelines = {
          description = "The `DeliveryPipeline` objects.",
          items = {
            ["$ref"] = "DeliveryPipeline",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
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
    ListJobRunsResponse = {
      description = "ListJobRunsResponse is the response object returned by `ListJobRuns`.",
      id = "ListJobRunsResponse",
      properties = {
        jobRuns = {
          description = "The `JobRun` objects.",
          items = {
            ["$ref"] = "JobRun",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached",
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
    ListReleasesResponse = {
      description = "The response object from `ListReleases`.",
      id = "ListReleasesResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        releases = {
          description = "The `Release` objects.",
          items = {
            ["$ref"] = "Release",
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
    ListRolloutsResponse = {
      description = "ListRolloutsResponse is the response object reutrned by `ListRollouts`.",
      id = "ListRolloutsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        rollouts = {
          description = "The `Rollout` objects.",
          items = {
            ["$ref"] = "Rollout",
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
    ListTargetsResponse = {
      description = "The response object from `ListTargets`.",
      id = "ListTargetsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        targets = {
          description = "The `Target` objects.",
          items = {
            ["$ref"] = "Target",
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
    Metadata = {
      description = "Metadata includes information associated with a `Rollout`.",
      id = "Metadata",
      properties = {
        cloudRun = {
          ["$ref"] = "CloudRunMetadata",
          description = "Output only. The name of the Cloud Run Service that is associated with a `Rollout`.",
          readOnly = true,
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
    Phase = {
      description = "Phase represents a collection of jobs that are logically grouped together for a `Rollout`.",
      id = "Phase",
      properties = {
        deploymentJobs = {
          ["$ref"] = "DeploymentJobs",
          description = "Output only. Deployment job composition.",
          readOnly = true,
        },
        id = {
          description = "Output only. The ID of the Phase.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Current state of the Phase.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "IN_PROGRESS",
            "SUCCEEDED",
            "FAILED",
            "ABORTED",
          },
          enumDescriptions = {
            "The Phase has an unspecified state.",
            "The Phase is waiting for an earlier Phase(s) to complete.",
            "The Phase is in progress.",
            "The Phase has succeeded.",
            "The Phase has failed.",
            "The Phase was aborted.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    PipelineCondition = {
      description = "PipelineCondition contains all conditions relevant to a Delivery Pipeline.",
      id = "PipelineCondition",
      properties = {
        pipelineReadyCondition = {
          ["$ref"] = "PipelineReadyCondition",
          description = "Details around the Pipeline's overall status.",
        },
        targetsPresentCondition = {
          ["$ref"] = "TargetsPresentCondition",
          description = "Details around targets enumerated in the pipeline.",
        },
        targetsTypeCondition = {
          ["$ref"] = "TargetsTypeCondition",
          description = "Details on the whether the targets enumerated in the pipeline are of the same type.",
        },
      },
      type = "object",
    },
    PipelineReadyCondition = {
      description = "PipelineReadyCondition contains information around the status of the Pipeline.",
      id = "PipelineReadyCondition",
      properties = {
        status = {
          description = "True if the Pipeline is in a valid state. Otherwise at least one condition in `PipelineCondition` is in an invalid state. Iterate over those conditions and see which condition(s) has status = false to find out what is wrong with the Pipeline.",
          type = "boolean",
        },
        updateTime = {
          description = "Last time the condition was updated.",
          format = "google-datetime",
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
    PrivatePool = {
      description = "Execution using a private Cloud Build pool.",
      id = "PrivatePool",
      properties = {
        artifactStorage = {
          description = "Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket (\"gs://my-bucket\") or a path within a bucket (\"gs://my-bucket/my-dir\"). If unspecified, a default bucket located in the same region will be used.",
          type = "string",
        },
        serviceAccount = {
          description = "Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.",
          type = "string",
        },
        workerPool = {
          description = "Required. Resource name of the Cloud Build worker pool to use. The format is `projects/{project}/locations/{location}/workerPools/{pool}`.",
          type = "string",
        },
      },
      type = "object",
    },
    Release = {
      description = "A `Release` resource in the Google Cloud Deploy API. A `Release` defines a specific Skaffold configuration instance that can be deployed.",
      id = "Release",
      properties = {
        abandoned = {
          description = "Output only. Indicates whether this is an abandoned release.",
          readOnly = true,
          type = "boolean",
        },
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.",
          type = "object",
        },
        buildArtifacts = {
          description = "List of artifacts to pass through to Skaffold command.",
          items = {
            ["$ref"] = "BuildArtifact",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. Time at which the `Release` was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deliveryPipelineSnapshot = {
          ["$ref"] = "DeliveryPipeline",
          description = "Output only. Snapshot of the parent pipeline taken at release creation time.",
          readOnly = true,
        },
        description = {
          description = "Description of the `Release`. Max length is 255 characters.",
          type = "string",
        },
        etag = {
          description = "This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.",
          type = "object",
        },
        name = {
          description = "Optional. Name of the `Release`. Format is projects/{project}/ locations/{location}/deliveryPipelines/{deliveryPipeline}/ releases/a-z{0,62}.",
          type = "string",
        },
        renderEndTime = {
          description = "Output only. Time at which the render completed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        renderStartTime = {
          description = "Output only. Time at which the render began.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        renderState = {
          description = "Output only. Current state of the render operation.",
          enum = {
            "RENDER_STATE_UNSPECIFIED",
            "SUCCEEDED",
            "FAILED",
            "IN_PROGRESS",
          },
          enumDescriptions = {
            "The render state is unspecified.",
            "All rendering operations have completed successfully.",
            "All rendering operations have completed, and one or more have failed.",
            "Rendering has started and is not complete.",
          },
          readOnly = true,
          type = "string",
        },
        skaffoldConfigPath = {
          description = "Filepath of the Skaffold config inside of the config URI.",
          type = "string",
        },
        skaffoldConfigUri = {
          description = "Cloud Storage URI of tar.gz archive containing Skaffold configuration.",
          type = "string",
        },
        skaffoldVersion = {
          description = "The Skaffold version to use when operating on this release, such as \"1.20.0\". Not all versions are valid; Google Cloud Deploy supports a specific set of versions. If unset, the most recent supported Skaffold version will be used.",
          type = "string",
        },
        targetArtifacts = {
          additionalProperties = {
            ["$ref"] = "TargetArtifact",
          },
          description = "Output only. Map from target ID to the target artifacts created during the render operation.",
          readOnly = true,
          type = "object",
        },
        targetRenders = {
          additionalProperties = {
            ["$ref"] = "TargetRender",
          },
          description = "Output only. Map from target ID to details of the render operation for that target.",
          readOnly = true,
          type = "object",
        },
        targetSnapshots = {
          description = "Output only. Snapshot of the targets taken at release creation time.",
          items = {
            ["$ref"] = "Target",
          },
          readOnly = true,
          type = "array",
        },
        uid = {
          description = "Output only. Unique identifier of the `Release`.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ReleaseNotificationEvent = {
      description = "Payload proto for \"clouddeploy.googleapis.com/release_notification\" Platform Log event that describes the failure to send release status change Pub/Sub notification.",
      id = "ReleaseNotificationEvent",
      properties = {
        message = {
          description = "Debug message for when a notification fails to send.",
          type = "string",
        },
        release = {
          description = "The name of the `Release`.",
          type = "string",
        },
        type = {
          description = "Type of this notification, e.g. for a Pub/Sub failure.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TYPE_PUBSUB_NOTIFICATION_FAILURE",
            "TYPE_RENDER_STATUES_CHANGE",
          },
          enumDescriptions = {
            "Type is unspecified.",
            "A Pub/Sub notification failed to be sent.",
            "Deprecated: This field is never used. Use release_render log type instead.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ReleaseRenderEvent = {
      description = "Payload proto for \"clouddeploy.googleapis.com/release_render\" Platform Log event that describes the render status change.",
      id = "ReleaseRenderEvent",
      properties = {
        message = {
          description = "Debug message for when a render transition occurs. Provides further details as rendering progresses through render states.",
          type = "string",
        },
        release = {
          description = "The name of the `Release`.",
          type = "string",
        },
      },
      type = "object",
    },
    RetryJobRequest = {
      description = "RetryJobRequest is the request object used by `RetryJob`.",
      id = "RetryJobRequest",
      properties = {
        jobId = {
          description = "Required. The job ID for the Job to retry.",
          type = "string",
        },
        phaseId = {
          description = "Required. The phase ID the Job to retry belongs to.",
          type = "string",
        },
      },
      type = "object",
    },
    RetryJobResponse = {
      description = "The response object from 'RetryJob'.",
      id = "RetryJobResponse",
      properties = {},
      type = "object",
    },
    Rollout = {
      description = "A `Rollout` resource in the Google Cloud Deploy API. A `Rollout` contains information around a specific deployment to a `Target`.",
      id = "Rollout",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.",
          type = "object",
        },
        approvalState = {
          description = "Output only. Approval state of the `Rollout`.",
          enum = {
            "APPROVAL_STATE_UNSPECIFIED",
            "NEEDS_APPROVAL",
            "DOES_NOT_NEED_APPROVAL",
            "APPROVED",
            "REJECTED",
          },
          enumDescriptions = {
            "The `Rollout` has an unspecified approval state.",
            "The `Rollout` requires approval.",
            "The `Rollout` does not require approval.",
            "The `Rollout` has been approved.",
            "The `Rollout` has been rejected.",
          },
          readOnly = true,
          type = "string",
        },
        approveTime = {
          description = "Output only. Time at which the `Rollout` was approved.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. Time at which the `Rollout` was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deployEndTime = {
          description = "Output only. Time at which the `Rollout` finished deploying.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deployFailureCause = {
          description = "Output only. The reason this rollout failed. This will always be unspecified while the rollout is in progress.",
          enum = {
            "FAILURE_CAUSE_UNSPECIFIED",
            "CLOUD_BUILD_UNAVAILABLE",
            "EXECUTION_FAILED",
            "DEADLINE_EXCEEDED",
            "RELEASE_FAILED",
            "RELEASE_ABANDONED",
            "VERIFICATION_CONFIG_NOT_FOUND",
            "CLOUD_BUILD_REQUEST_FAILED",
          },
          enumDescriptions = {
            "No reason for failure is specified.",
            "Cloud Build is not available, either because it is not enabled or because Cloud Deploy has insufficient permissions. See [required permission](/deploy/docs/cloud-deploy-service-account#required_permissions).",
            "The deploy operation did not complete successfully; check Cloud Build logs.",
            "Deployment did not complete within the alloted time.",
            "Release is in a failed state.",
            "Release is abandoned.",
            "No skaffold verify configuration was found.",
            "Cloud Build failed to fulfill Google Cloud Deploy's request. See failure_message for additional details.",
          },
          readOnly = true,
          type = "string",
        },
        deployStartTime = {
          description = "Output only. Time at which the `Rollout` started deploying.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deployingBuild = {
          description = "Output only. The resource name of the Cloud Build `Build` object that is used to deploy the Rollout. Format is `projects/{project}/locations/{location}/builds/{build}`.",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Description of the `Rollout` for user purposes. Max length is 255 characters.",
          type = "string",
        },
        enqueueTime = {
          description = "Output only. Time at which the `Rollout` was enqueued.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          type = "string",
        },
        failureReason = {
          description = "Output only. Additional information about the rollout failure, if available.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.",
          type = "object",
        },
        metadata = {
          ["$ref"] = "Metadata",
          description = "Output only. Metadata contains information about the rollout.",
          readOnly = true,
        },
        name = {
          description = "Optional. Name of the `Rollout`. Format is projects/{project}/ locations/{location}/deliveryPipelines/{deliveryPipeline}/ releases/{release}/rollouts/a-z{0,62}.",
          type = "string",
        },
        phases = {
          description = "Output only. The phases that represent the workflows of this `Rollout`.",
          items = {
            ["$ref"] = "Phase",
          },
          readOnly = true,
          type = "array",
        },
        state = {
          description = "Output only. Current state of the `Rollout`.",
          enum = {
            "STATE_UNSPECIFIED",
            "SUCCEEDED",
            "FAILED",
            "IN_PROGRESS",
            "PENDING_APPROVAL",
            "APPROVAL_REJECTED",
            "PENDING",
            "PENDING_RELEASE",
          },
          enumDescriptions = {
            "The `Rollout` has an unspecified state.",
            "The `Rollout` has completed successfully.",
            "The `Rollout` has failed.",
            "The `Rollout` is being deployed.",
            "The `Rollout` needs approval.",
            "An approver rejected the `Rollout`.",
            "The `Rollout` is waiting for an earlier Rollout(s) to complete on this `Target`.",
            "The `Rollout` is waiting for the `Release` to be fully rendered.",
          },
          readOnly = true,
          type = "string",
        },
        targetId = {
          description = "Required. The ID of Target to which this `Rollout` is deploying.",
          type = "string",
        },
        uid = {
          description = "Output only. Unique identifier of the `Rollout`.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    RolloutNotificationEvent = {
      description = "Payload proto for \"clouddeploy.googleapis.com/rollout_notification\" Platform Log event that describes the failure to send rollout status change Pub/Sub notification.",
      id = "RolloutNotificationEvent",
      properties = {
        message = {
          description = "Debug message for when a notification fails to send.",
          type = "string",
        },
        pipelineUid = {
          description = "Unique identifier of the `DeliveryPipeline`.",
          type = "string",
        },
        releaseUid = {
          description = "Unique identifier of the `Release`.",
          type = "string",
        },
        rollout = {
          description = "The name of the `Rollout`.",
          type = "string",
        },
        targetId = {
          description = "ID of the `Target` that the rollout is deployed to.",
          type = "string",
        },
        type = {
          description = "Type of this notification, e.g. for a Pub/Sub failure.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TYPE_PUBSUB_NOTIFICATION_FAILURE",
            "TYPE_RENDER_STATUES_CHANGE",
          },
          enumDescriptions = {
            "Type is unspecified.",
            "A Pub/Sub notification failed to be sent.",
            "Deprecated: This field is never used. Use release_render log type instead.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SerialPipeline = {
      description = "SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.",
      id = "SerialPipeline",
      properties = {
        stages = {
          description = "Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.",
          items = {
            ["$ref"] = "Stage",
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
    SkaffoldVersion = {
      description = "Details of a supported Skaffold version.",
      id = "SkaffoldVersion",
      properties = {
        supportEndDate = {
          ["$ref"] = "Date",
          description = "Date when this version is expected to no longer be supported.",
        },
        version = {
          description = "Release version number. For example, \"1.20.3\".",
          type = "string",
        },
      },
      type = "object",
    },
    Stage = {
      description = "Stage specifies a location to which to deploy.",
      id = "Stage",
      properties = {
        profiles = {
          description = "Skaffold profiles to use when rendering the manifest for this stage's `Target`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        strategy = {
          ["$ref"] = "Strategy",
          description = "Optional. The strategy to use for a `Rollout` to this stage.",
        },
        targetId = {
          description = "The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`.",
          type = "string",
        },
      },
      type = "object",
    },
    Standard = {
      description = "Standard represents the standard deployment strategy.",
      id = "Standard",
      properties = {
        verify = {
          description = "Whether to verify a deployment.",
          type = "boolean",
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
    Strategy = {
      description = "Strategy contains deployment strategy information.",
      id = "Strategy",
      properties = {
        standard = {
          ["$ref"] = "Standard",
          description = "Standard deployment strategy executes a single deploy and allows verifying the deployment.",
        },
      },
      type = "object",
    },
    Target = {
      description = "A `Target` resource in the Google Cloud Deploy API. A `Target` defines a location to which a Skaffold configuration can be deployed.",
      id = "Target",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.",
          type = "object",
        },
        anthosCluster = {
          ["$ref"] = "AnthosCluster",
          description = "Information specifying an Anthos Cluster.",
        },
        createTime = {
          description = "Output only. Time at which the `Target` was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the `Target`. Max length is 255 characters.",
          type = "string",
        },
        etag = {
          description = "Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          type = "string",
        },
        executionConfigs = {
          description = "Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironmentUsage` value may only be used in a single configuration; using the same value multiple times is an error. When one or more configurations are specified, they must include the `RENDER` and `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are specified, execution will use the default specified in `DefaultPool`.",
          items = {
            ["$ref"] = "ExecutionConfig",
          },
          type = "array",
        },
        gke = {
          ["$ref"] = "GkeCluster",
          description = "Information specifying a GKE Cluster.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.",
          type = "object",
        },
        name = {
          description = "Optional. Name of the `Target`. Format is projects/{project}/locations/{location}/targets/a-z{0,62}.",
          type = "string",
        },
        requireApproval = {
          description = "Optional. Whether or not the `Target` requires approval.",
          type = "boolean",
        },
        run = {
          ["$ref"] = "CloudRunLocation",
          description = "Information specifying a Cloud Run deployment target.",
        },
        targetId = {
          description = "Output only. Resource id of the `Target`.",
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. Unique identifier of the `Target`.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Most recent time at which the `Target` was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    TargetArtifact = {
      description = "The artifacts produced by a target render operation.",
      id = "TargetArtifact",
      properties = {
        artifactUri = {
          description = "Output only. URI of a directory containing the artifacts. This contains deployment configuration used by Skaffold during a rollout, and all paths are relative to this location.",
          readOnly = true,
          type = "string",
        },
        manifestPath = {
          description = "Output only. File path of the rendered manifest relative to the URI.",
          readOnly = true,
          type = "string",
        },
        skaffoldConfigPath = {
          description = "Output only. File path of the resolved Skaffold configuration relative to the URI.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    TargetNotificationEvent = {
      description = "Payload proto for \"clouddeploy.googleapis.com/target_notification\" Platform Log event that describes the failure to send target status change Pub/Sub notification.",
      id = "TargetNotificationEvent",
      properties = {
        message = {
          description = "Debug message for when a notification fails to send.",
          type = "string",
        },
        target = {
          description = "The name of the `Target`.",
          type = "string",
        },
        type = {
          description = "Type of this notification, e.g. for a Pub/Sub failure.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TYPE_PUBSUB_NOTIFICATION_FAILURE",
            "TYPE_RENDER_STATUES_CHANGE",
          },
          enumDescriptions = {
            "Type is unspecified.",
            "A Pub/Sub notification failed to be sent.",
            "Deprecated: This field is never used. Use release_render log type instead.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TargetRender = {
      description = "Details of rendering for a single target.",
      id = "TargetRender",
      properties = {
        failureCause = {
          description = "Output only. Reason this render failed. This will always be unspecified while the render in progress.",
          enum = {
            "FAILURE_CAUSE_UNSPECIFIED",
            "CLOUD_BUILD_UNAVAILABLE",
            "EXECUTION_FAILED",
            "CLOUD_BUILD_REQUEST_FAILED",
          },
          enumDescriptions = {
            "No reason for failure is specified.",
            "Cloud Build is not available, either because it is not enabled or because Google Cloud Deploy has insufficient permissions. See [required permission](/deploy/docs/cloud-deploy-service-account#required_permissions).",
            "The render operation did not complete successfully; check Cloud Build logs.",
            "Cloud Build failed to fulfill Google Cloud Deploy's request. See failure_message for additional details.",
          },
          readOnly = true,
          type = "string",
        },
        failureMessage = {
          description = "Output only. Additional information about the render failure, if available.",
          readOnly = true,
          type = "string",
        },
        renderingBuild = {
          description = "Output only. The resource name of the Cloud Build `Build` object that is used to render the manifest for this target. Format is `projects/{project}/locations/{location}/builds/{build}`.",
          readOnly = true,
          type = "string",
        },
        renderingState = {
          description = "Output only. Current state of the render operation for this Target.",
          enum = {
            "TARGET_RENDER_STATE_UNSPECIFIED",
            "SUCCEEDED",
            "FAILED",
            "IN_PROGRESS",
          },
          enumDescriptions = {
            "The render operation state is unspecified.",
            "The render operation has completed successfully.",
            "The render operation has failed.",
            "The render operation is in progress.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    TargetsPresentCondition = {
      description = "TargetsPresentCondition contains information on any Targets defined in the Delivery Pipeline that do not actually exist.",
      id = "TargetsPresentCondition",
      properties = {
        missingTargets = {
          description = "The list of Target names that do not exist. For example, projects/{project_id}/locations/{location_name}/targets/{target_name}.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "True if there aren't any missing Targets.",
          type = "boolean",
        },
        updateTime = {
          description = "Last time the condition was updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TargetsTypeCondition = {
      description = "TargetsTypeCondition contains information on whether the Targets defined in the Delivery Pipeline are of the same type.",
      id = "TargetsTypeCondition",
      properties = {
        errorDetails = {
          description = "Human readable error message.",
          type = "string",
        },
        status = {
          description = "True if the targets are all a comparable type. For example this is true if all targets are GKE clusters. This is false if some targets are Cloud Run targets and others are GKE clusters.",
          type = "boolean",
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
    VerifyJob = {
      description = "A verify Job.",
      id = "VerifyJob",
      properties = {},
      type = "object",
    },
    VerifyJobRun = {
      description = "VerifyJobRun contains information specific to a verify `JobRun`.",
      id = "VerifyJobRun",
      properties = {
        artifactUri = {
          description = "Output only. URI of a directory containing the verify artifacts. This contains the Skaffold event log.",
          readOnly = true,
          type = "string",
        },
        build = {
          description = "Output only. The resource name of the Cloud Build `Build` object that is used to verify. Format is projects/{project}/locations/{location}/builds/{build}.",
          readOnly = true,
          type = "string",
        },
        eventLogPath = {
          description = "Output only. File path of the Skaffold event log relative to the artifact URI.",
          readOnly = true,
          type = "string",
        },
        failureCause = {
          description = "Output only. The reason the verify failed. This will always be unspecified while the verify is in progress or if it succeeded.",
          enum = {
            "FAILURE_CAUSE_UNSPECIFIED",
            "CLOUD_BUILD_UNAVAILABLE",
            "EXECUTION_FAILED",
            "DEADLINE_EXCEEDED",
            "VERIFICATION_CONFIG_NOT_FOUND",
            "CLOUD_BUILD_REQUEST_FAILED",
          },
          enumDescriptions = {
            "No reason for failure is specified.",
            "Cloud Build is not available, either because it is not enabled or because Google Cloud Deploy has insufficient permissions. See [required permission](/deploy/docs/cloud-deploy-service-account#required_permissions).",
            "The verify operation did not complete successfully; check Cloud Build logs.",
            "The verify build did not complete within the alloted time.",
            "No Skaffold verify configuration was found.",
            "Cloud Build failed to fulfill Google Cloud Deploy's request. See failure_message for additional details.",
          },
          readOnly = true,
          type = "string",
        },
        failureMessage = {
          description = "Output only. Additional information about the verify failure, if available.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Cloud Deploy API",
  version = "v1",
  version_module = true,
}