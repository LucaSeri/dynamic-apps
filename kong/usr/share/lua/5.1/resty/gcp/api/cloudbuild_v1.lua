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
  baseUrl = "https://cloudbuild.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Build",
  description = "Creates and manages builds on Google Cloud Platform.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/cloud-build/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudbuild:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudbuild.mtls.googleapis.com/",
  name = "cloudbuild",
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
    githubDotComWebhook = {
      methods = {
        receive = {
          description = "ReceiveGitHubDotComWebhook is called when the API receives a github.com webhook.",
          flatPath = "v1/githubDotComWebhook:receive",
          httpMethod = "POST",
          id = "cloudbuild.githubDotComWebhook.receive",
          parameterOrder = {},
          parameters = {
            webhookKey = {
              description = "For GitHub Enterprise webhooks, this key is used to associate the webhook request with the GitHubEnterpriseConfig to use for validation.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/githubDotComWebhook:receive",
          request = {
            ["$ref"] = "HttpBody",
          },
          response = {
            ["$ref"] = "Empty",
          },
        },
      },
    },
    locations = {
      methods = {
        regionalWebhook = {
          description = "ReceiveRegionalWebhook is called when the API receives a regional GitHub webhook.",
          flatPath = "v1/locations/{locationsId}/regionalWebhook",
          httpMethod = "POST",
          id = "cloudbuild.locations.regionalWebhook",
          parameterOrder = {
            "location",
          },
          parameters = {
            location = {
              description = "Required. The location where the webhook should be sent.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
            webhookKey = {
              description = "For GitHub Enterprise webhooks, this key is used to associate the webhook request with the GitHubEnterpriseConfig to use for validation.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+location}/regionalWebhook",
          request = {
            ["$ref"] = "HttpBody",
          },
          response = {
            ["$ref"] = "Empty",
          },
        },
      },
    },
    operations = {
      methods = {
        cancel = {
          description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          flatPath = "v1/operations/{operationsId}:cancel",
          httpMethod = "POST",
          id = "cloudbuild.operations.cancel",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be cancelled.",
              location = "path",
              pattern = "^operations/.*$",
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
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "cloudbuild.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^operations/.*$",
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
    projects = {
      resources = {
        builds = {
          methods = {
            approve = {
              description = "Approves or rejects a pending build. If approved, the returned LRO will be analogous to the LRO returned from a CreateBuild call. If rejected, the returned LRO will be immediately done.",
              flatPath = "v1/projects/{projectsId}/builds/{buildsId}:approve",
              httpMethod = "POST",
              id = "cloudbuild.projects.builds.approve",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the target build. For example: \"projects/{$project_id}/builds/{$build_id}\"",
                  location = "path",
                  pattern = "^projects/[^/]+/builds/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:approve",
              request = {
                ["$ref"] = "ApproveBuildRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            cancel = {
              description = "Cancels a build in progress.",
              flatPath = "v1/projects/{projectId}/builds/{id}:cancel",
              httpMethod = "POST",
              id = "cloudbuild.projects.builds.cancel",
              parameterOrder = {
                "projectId",
                "id",
              },
              parameters = {
                id = {
                  description = "Required. ID of the build.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/builds/{id}:cancel",
              request = {
                ["$ref"] = "CancelBuildRequest",
              },
              response = {
                ["$ref"] = "Build",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Starts a build with the specified configuration. This method returns a long-running `Operation`, which includes the build ID. Pass the build ID to `GetBuild` to determine the build status (such as `SUCCESS` or `FAILURE`).",
              flatPath = "v1/projects/{projectId}/builds",
              httpMethod = "POST",
              id = "cloudbuild.projects.builds.create",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                parent = {
                  description = "The parent resource where this build will be created. Format: `projects/{project}/locations/{location}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/builds",
              request = {
                ["$ref"] = "Build",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Returns information about a previously requested build. The `Build` that is returned includes its status (such as `SUCCESS`, `FAILURE`, or `WORKING`), and timing information.",
              flatPath = "v1/projects/{projectId}/builds/{id}",
              httpMethod = "GET",
              id = "cloudbuild.projects.builds.get",
              parameterOrder = {
                "projectId",
                "id",
              },
              parameters = {
                id = {
                  description = "Required. ID of the build.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                name = {
                  description = "The name of the `Build` to retrieve. Format: `projects/{project}/locations/{location}/builds/{build}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/builds/{id}",
              response = {
                ["$ref"] = "Build",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists previously requested builds. Previously requested builds may still be in-progress, or may have finished successfully or unsuccessfully.",
              flatPath = "v1/projects/{projectId}/builds",
              httpMethod = "GET",
              id = "cloudbuild.projects.builds.list",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                filter = {
                  description = "The raw filter text to constrain the results.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Number of results to return in the list.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The page token for the next page of Builds. If unspecified, the first page of results is returned. If the token is rejected for any reason, INVALID_ARGUMENT will be thrown. In this case, the token should be discarded, and pagination should be restarted from the first page of results. See https://google.aip.dev/158 for more.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent of the collection of `Builds`. Format: `projects/{project}/locations/{location}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/builds",
              response = {
                ["$ref"] = "ListBuildsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            retry = {
              description = "Creates a new build based on the specified build. This method creates a new build using the original build request, which may or may not result in an identical build. For triggered builds: * Triggered builds resolve to a precise revision; therefore a retry of a triggered build will result in a build that uses the same revision. For non-triggered builds that specify `RepoSource`: * If the original build built from the tip of a branch, the retried build will build from the tip of that branch, which may not be the same revision as the original build. * If the original build specified a commit sha or revision ID, the retried build will use the identical source. For builds that specify `StorageSource`: * If the original build pulled source from Google Cloud Storage without specifying the generation of the object, the new build will use the current object, which may be different from the original build source. * If the original build pulled source from Cloud Storage and specified the generation of the object, the new build will attempt to use the same object, which may or may not be available depending on the bucket's lifecycle management settings.",
              flatPath = "v1/projects/{projectId}/builds/{id}:retry",
              httpMethod = "POST",
              id = "cloudbuild.projects.builds.retry",
              parameterOrder = {
                "projectId",
                "id",
              },
              parameters = {
                id = {
                  description = "Required. Build ID of the original build.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/builds/{id}:retry",
              request = {
                ["$ref"] = "RetryBuildRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        githubEnterpriseConfigs = {
          methods = {
            create = {
              description = "Create an association between a GCP project and a GitHub Enterprise server.",
              flatPath = "v1/projects/{projectsId}/githubEnterpriseConfigs",
              httpMethod = "POST",
              id = "cloudbuild.projects.githubEnterpriseConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                gheConfigId = {
                  description = "Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig's resource name. ghe_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Name of the parent project. For example: projects/{$project_number} or projects/{$project_id}",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "ID of the project.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/githubEnterpriseConfigs",
              request = {
                ["$ref"] = "GitHubEnterpriseConfig",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Delete an association between a GCP project and a GitHub Enterprise server.",
              flatPath = "v1/projects/{projectsId}/githubEnterpriseConfigs/{githubEnterpriseConfigsId}",
              httpMethod = "DELETE",
              id = "cloudbuild.projects.githubEnterpriseConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                configId = {
                  description = "Unique identifier of the `GitHubEnterpriseConfig`",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "This field should contain the name of the enterprise config resource. For example: \"projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}\"",
                  location = "path",
                  pattern = "^projects/[^/]+/githubEnterpriseConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "ID of the project",
                  location = "query",
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
              description = "Retrieve a GitHubEnterpriseConfig.",
              flatPath = "v1/projects/{projectsId}/githubEnterpriseConfigs/{githubEnterpriseConfigsId}",
              httpMethod = "GET",
              id = "cloudbuild.projects.githubEnterpriseConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                configId = {
                  description = "Unique identifier of the `GitHubEnterpriseConfig`",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "This field should contain the name of the enterprise config resource. For example: \"projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}\"",
                  location = "path",
                  pattern = "^projects/[^/]+/githubEnterpriseConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "ID of the project",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GitHubEnterpriseConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "List all GitHubEnterpriseConfigs for a given project.",
              flatPath = "v1/projects/{projectsId}/githubEnterpriseConfigs",
              httpMethod = "GET",
              id = "cloudbuild.projects.githubEnterpriseConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Name of the parent project. For example: projects/{$project_number} or projects/{$project_id}",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "ID of the project",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/githubEnterpriseConfigs",
              response = {
                ["$ref"] = "ListGithubEnterpriseConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Update an association between a GCP project and a GitHub Enterprise server.",
              flatPath = "v1/projects/{projectsId}/githubEnterpriseConfigs/{githubEnterpriseConfigsId}",
              httpMethod = "PATCH",
              id = "cloudbuild.projects.githubEnterpriseConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Optional. The full resource name for the GitHubEnterpriseConfig For example: \"projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}\"",
                  location = "path",
                  pattern = "^projects/[^/]+/githubEnterpriseConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Update mask for the resource. If this is set, the server will only update the fields specified in the field mask. Otherwise, a full update of the mutable resource fields will be performed.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GitHubEnterpriseConfig",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        locations = {
          resources = {
            bitbucketServerConfigs = {
              methods = {
                create = {
                  description = "Creates a new `BitbucketServerConfig`. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/bitbucketServerConfigs",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.bitbucketServerConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    bitbucketServerConfigId = {
                      description = "Optional. The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name. bitbucket_server_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/bitbucketServerConfigs",
                  request = {
                    ["$ref"] = "BitbucketServerConfig",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a `BitbucketServerConfig`. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/bitbucketServerConfigs/{bitbucketServerConfigsId}",
                  httpMethod = "DELETE",
                  id = "cloudbuild.projects.locations.bitbucketServerConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The config resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/bitbucketServerConfigs/[^/]+$",
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
                  description = "Retrieve a `BitbucketServerConfig`. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/bitbucketServerConfigs/{bitbucketServerConfigsId}",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.bitbucketServerConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The config resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/bitbucketServerConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "BitbucketServerConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List all `BitbucketServerConfigs` for a given project. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/bitbucketServerConfigs",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.bitbucketServerConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 50 configs will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListBitbucketServerConfigsRequest` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBitbucketServerConfigsRequest` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/bitbucketServerConfigs",
                  response = {
                    ["$ref"] = "ListBitbucketServerConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing `BitbucketServerConfig`. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/bitbucketServerConfigs/{bitbucketServerConfigsId}",
                  httpMethod = "PATCH",
                  id = "cloudbuild.projects.locations.bitbucketServerConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name for the config.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/bitbucketServerConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Update mask for the resource. If this is set, the server will only update the fields specified in the field mask. Otherwise, a full update of the mutable resource fields will be performed.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "BitbucketServerConfig",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                removeBitbucketServerConnectedRepository = {
                  description = "Remove a Bitbucket Server repository from a given BitbucketServerConfig's connected repositories. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/bitbucketServerConfigs/{bitbucketServerConfigsId}:removeBitbucketServerConnectedRepository",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.bitbucketServerConfigs.removeBitbucketServerConnectedRepository",
                  parameterOrder = {
                    "config",
                  },
                  parameters = {
                    config = {
                      description = "Required. The name of the `BitbucketServerConfig` to remove a connected repository. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/bitbucketServerConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+config}:removeBitbucketServerConnectedRepository",
                  request = {
                    ["$ref"] = "RemoveBitbucketServerConnectedRepositoryRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                connectedRepositories = {
                  methods = {
                    batchCreate = {
                      description = "Batch connecting Bitbucket Server repositories to Cloud Build.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/bitbucketServerConfigs/{bitbucketServerConfigsId}/connectedRepositories:batchCreate",
                      httpMethod = "POST",
                      id = "cloudbuild.projects.locations.bitbucketServerConfigs.connectedRepositories.batchCreate",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The name of the `BitbucketServerConfig` that added connected repository. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/bitbucketServerConfigs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/connectedRepositories:batchCreate",
                      request = {
                        ["$ref"] = "BatchCreateBitbucketServerConnectedRepositoriesRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                repos = {
                  methods = {
                    list = {
                      description = "List all repositories for a given `BitbucketServerConfig`. This API is experimental.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/bitbucketServerConfigs/{bitbucketServerConfigsId}/repos",
                      httpMethod = "GET",
                      id = "cloudbuild.projects.locations.bitbucketServerConfigs.repos.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of configs to return. The service may return fewer than this value. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListBitbucketServerRepositoriesRequest` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListBitbucketServerConfigsRequest` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Name of the parent resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/bitbucketServerConfigs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/repos",
                      response = {
                        ["$ref"] = "ListBitbucketServerRepositoriesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            builds = {
              methods = {
                approve = {
                  description = "Approves or rejects a pending build. If approved, the returned LRO will be analogous to the LRO returned from a CreateBuild call. If rejected, the returned LRO will be immediately done.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/builds/{buildsId}:approve",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.builds.approve",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the target build. For example: \"projects/{$project_id}/builds/{$build_id}\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/builds/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:approve",
                  request = {
                    ["$ref"] = "ApproveBuildRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                cancel = {
                  description = "Cancels a build in progress.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/builds/{buildsId}:cancel",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.builds.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the `Build` to cancel. Format: `projects/{project}/locations/{location}/builds/{build}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/builds/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelBuildRequest",
                  },
                  response = {
                    ["$ref"] = "Build",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Starts a build with the specified configuration. This method returns a long-running `Operation`, which includes the build ID. Pass the build ID to `GetBuild` to determine the build status (such as `SUCCESS` or `FAILURE`).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/builds",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.builds.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "The parent resource where this build will be created. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. ID of the project.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/builds",
                  request = {
                    ["$ref"] = "Build",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns information about a previously requested build. The `Build` that is returned includes its status (such as `SUCCESS`, `FAILURE`, or `WORKING`), and timing information.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/builds/{buildsId}",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.builds.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    id = {
                      description = "Required. ID of the build.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the `Build` to retrieve. Format: `projects/{project}/locations/{location}/builds/{build}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/builds/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. ID of the project.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Build",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists previously requested builds. Previously requested builds may still be in-progress, or may have finished successfully or unsuccessfully.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/builds",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.builds.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "The raw filter text to constrain the results.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Number of results to return in the list.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The page token for the next page of Builds. If unspecified, the first page of results is returned. If the token is rejected for any reason, INVALID_ARGUMENT will be thrown. In this case, the token should be discarded, and pagination should be restarted from the first page of results. See https://google.aip.dev/158 for more.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The parent of the collection of `Builds`. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. ID of the project.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/builds",
                  response = {
                    ["$ref"] = "ListBuildsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                retry = {
                  description = "Creates a new build based on the specified build. This method creates a new build using the original build request, which may or may not result in an identical build. For triggered builds: * Triggered builds resolve to a precise revision; therefore a retry of a triggered build will result in a build that uses the same revision. For non-triggered builds that specify `RepoSource`: * If the original build built from the tip of a branch, the retried build will build from the tip of that branch, which may not be the same revision as the original build. * If the original build specified a commit sha or revision ID, the retried build will use the identical source. For builds that specify `StorageSource`: * If the original build pulled source from Google Cloud Storage without specifying the generation of the object, the new build will use the current object, which may be different from the original build source. * If the original build pulled source from Cloud Storage and specified the generation of the object, the new build will attempt to use the same object, which may or may not be available depending on the bucket's lifecycle management settings.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/builds/{buildsId}:retry",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.builds.retry",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the `Build` to retry. Format: `projects/{project}/locations/{location}/builds/{build}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/builds/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:retry",
                  request = {
                    ["$ref"] = "RetryBuildRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            gitLabConfigs = {
              methods = {
                create = {
                  description = "Creates a new `GitLabConfig`. This API is experimental",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gitLabConfigs",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.gitLabConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    gitlabConfigId = {
                      description = "Optional. The ID to use for the GitLabConfig, which will become the final component of the GitLabConfig’s resource name. gitlab_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/gitLabConfigs",
                  request = {
                    ["$ref"] = "GitLabConfig",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a `GitLabConfig`. This API is experimental",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gitLabConfigs/{gitLabConfigsId}",
                  httpMethod = "DELETE",
                  id = "cloudbuild.projects.locations.gitLabConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The config resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gitLabConfigs/[^/]+$",
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
                  description = "Retrieves a `GitLabConfig`. This API is experimental",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gitLabConfigs/{gitLabConfigsId}",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.gitLabConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The config resource name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gitLabConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GitLabConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List all `GitLabConfigs` for a given project. This API is experimental",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gitLabConfigs",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.gitLabConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 50 configs will be returned. The maximum value is 1000;, values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous ‘ListGitlabConfigsRequest’ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ‘ListGitlabConfigsRequest’ must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the parent resource",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/gitLabConfigs",
                  response = {
                    ["$ref"] = "ListGitLabConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing `GitLabConfig`. This API is experimental",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gitLabConfigs/{gitLabConfigsId}",
                  httpMethod = "PATCH",
                  id = "cloudbuild.projects.locations.gitLabConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name for the config.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gitLabConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Update mask for the resource. If this is set, the server will only update the fields specified in the field mask. Otherwise, a full update of the mutable resource fields will be performed.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GitLabConfig",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                removeGitLabConnectedRepository = {
                  description = "Remove a GitLab repository from a given GitLabConfig's connected repositories. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gitLabConfigs/{gitLabConfigsId}:removeGitLabConnectedRepository",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.gitLabConfigs.removeGitLabConnectedRepository",
                  parameterOrder = {
                    "config",
                  },
                  parameters = {
                    config = {
                      description = "Required. The name of the `GitLabConfig` to remove a connected repository. Format: `projects/{project}/locations/{location}/gitLabConfigs/{config}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/gitLabConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+config}:removeGitLabConnectedRepository",
                  request = {
                    ["$ref"] = "RemoveGitLabConnectedRepositoryRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                connectedRepositories = {
                  methods = {
                    batchCreate = {
                      description = "Batch connecting GitLab repositories to Cloud Build. This API is experimental.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gitLabConfigs/{gitLabConfigsId}/connectedRepositories:batchCreate",
                      httpMethod = "POST",
                      id = "cloudbuild.projects.locations.gitLabConfigs.connectedRepositories.batchCreate",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The name of the `GitLabConfig` that adds connected repositories. Format: `projects/{project}/locations/{location}/gitLabConfigs/{config}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/gitLabConfigs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/connectedRepositories:batchCreate",
                      request = {
                        ["$ref"] = "BatchCreateGitLabConnectedRepositoriesRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                repos = {
                  methods = {
                    list = {
                      description = "List all repositories for a given `GitLabConfig`. This API is experimental",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/gitLabConfigs/{gitLabConfigsId}/repos",
                      httpMethod = "GET",
                      id = "cloudbuild.projects.locations.gitLabConfigs.repos.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of repositories to return. The service may return fewer than this value.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous ListGitLabRepositoriesRequest` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListGitLabRepositoriesRequest` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Name of the parent resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/gitLabConfigs/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/repos",
                      response = {
                        ["$ref"] = "ListGitLabRepositoriesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            githubEnterpriseConfigs = {
              methods = {
                create = {
                  description = "Create an association between a GCP project and a GitHub Enterprise server.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/githubEnterpriseConfigs",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.githubEnterpriseConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    gheConfigId = {
                      description = "Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig's resource name. ghe_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Name of the parent project. For example: projects/{$project_number} or projects/{$project_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "ID of the project.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/githubEnterpriseConfigs",
                  request = {
                    ["$ref"] = "GitHubEnterpriseConfig",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete an association between a GCP project and a GitHub Enterprise server.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/githubEnterpriseConfigs/{githubEnterpriseConfigsId}",
                  httpMethod = "DELETE",
                  id = "cloudbuild.projects.locations.githubEnterpriseConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    configId = {
                      description = "Unique identifier of the `GitHubEnterpriseConfig`",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "This field should contain the name of the enterprise config resource. For example: \"projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/githubEnterpriseConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "ID of the project",
                      location = "query",
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
                  description = "Retrieve a GitHubEnterpriseConfig.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/githubEnterpriseConfigs/{githubEnterpriseConfigsId}",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.githubEnterpriseConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    configId = {
                      description = "Unique identifier of the `GitHubEnterpriseConfig`",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "This field should contain the name of the enterprise config resource. For example: \"projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/githubEnterpriseConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "ID of the project",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GitHubEnterpriseConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List all GitHubEnterpriseConfigs for a given project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/githubEnterpriseConfigs",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.githubEnterpriseConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Name of the parent project. For example: projects/{$project_number} or projects/{$project_id}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "ID of the project",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/githubEnterpriseConfigs",
                  response = {
                    ["$ref"] = "ListGithubEnterpriseConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update an association between a GCP project and a GitHub Enterprise server.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/githubEnterpriseConfigs/{githubEnterpriseConfigsId}",
                  httpMethod = "PATCH",
                  id = "cloudbuild.projects.locations.githubEnterpriseConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Optional. The full resource name for the GitHubEnterpriseConfig For example: \"projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}\"",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/githubEnterpriseConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Update mask for the resource. If this is set, the server will only update the fields specified in the field mask. Otherwise, a full update of the mutable resource fields will be performed.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GitHubEnterpriseConfig",
                  },
                  response = {
                    ["$ref"] = "Operation",
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
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.operations.cancel",
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
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.operations.get",
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
              },
            },
            triggers = {
              methods = {
                create = {
                  description = "Creates a new `BuildTrigger`. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/triggers",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.triggers.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "The parent resource where this trigger will be created. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. ID of the project for which to configure automatic builds.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/triggers",
                  request = {
                    ["$ref"] = "BuildTrigger",
                  },
                  response = {
                    ["$ref"] = "BuildTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a `BuildTrigger` by its project ID and trigger ID. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/triggers/{triggersId}",
                  httpMethod = "DELETE",
                  id = "cloudbuild.projects.locations.triggers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the `Trigger` to delete. Format: `projects/{project}/locations/{location}/triggers/{trigger}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/triggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. ID of the project that owns the trigger.",
                      location = "query",
                      type = "string",
                    },
                    triggerId = {
                      description = "Required. ID of the `BuildTrigger` to delete.",
                      location = "query",
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
                  description = "Returns information about a `BuildTrigger`. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/triggers/{triggersId}",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.triggers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the `Trigger` to retrieve. Format: `projects/{project}/locations/{location}/triggers/{trigger}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/triggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. ID of the project that owns the trigger.",
                      location = "query",
                      type = "string",
                    },
                    triggerId = {
                      description = "Required. Identifier (`id` or `name`) of the `BuildTrigger` to get.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "BuildTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists existing `BuildTrigger`s. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/triggers",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.triggers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Number of results to return in the list.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Token to provide to skip to a particular spot in the list.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "The parent of the collection of `Triggers`. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. ID of the project for which to list BuildTriggers.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/triggers",
                  response = {
                    ["$ref"] = "ListBuildTriggersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a `BuildTrigger` by its project ID and trigger ID. This API is experimental.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/triggers/{triggersId}",
                  httpMethod = "PATCH",
                  id = "cloudbuild.projects.locations.triggers.patch",
                  parameterOrder = {
                    "resourceName",
                  },
                  parameters = {
                    projectId = {
                      description = "Required. ID of the project that owns the trigger.",
                      location = "query",
                      type = "string",
                    },
                    resourceName = {
                      description = "The `Trigger` name with format: `projects/{project}/locations/{location}/triggers/{trigger}`, where {trigger} is a unique identifier generated by the service.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/triggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    triggerId = {
                      description = "Required. ID of the `BuildTrigger` to update.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+resourceName}",
                  request = {
                    ["$ref"] = "BuildTrigger",
                  },
                  response = {
                    ["$ref"] = "BuildTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                run = {
                  description = "Runs a `BuildTrigger` at a particular source revision. To run a regional or global trigger, use the POST request that includes the location endpoint in the path (ex. v1/projects/{projectId}/locations/{region}/triggers/{triggerId}:run). The POST request that does not include the location endpoint in the path can only be used when running global triggers.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/triggers/{triggersId}:run",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.triggers.run",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the `Trigger` to run. Format: `projects/{project}/locations/{location}/triggers/{trigger}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/triggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:run",
                  request = {
                    ["$ref"] = "RunBuildTriggerRequest",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                webhook = {
                  description = "ReceiveTriggerWebhook [Experimental] is called when the API receives a webhook request targeted at a specific trigger.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/triggers/{triggersId}:webhook",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.triggers.webhook",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the `ReceiveTriggerWebhook` to retrieve. Format: `projects/{project}/locations/{location}/triggers/{trigger}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/triggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Project in which the specified trigger lives",
                      location = "query",
                      type = "string",
                    },
                    secret = {
                      description = "Secret token used for authorization if an OAuth token isn't provided.",
                      location = "query",
                      type = "string",
                    },
                    trigger = {
                      description = "Name of the trigger to run the payload against",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:webhook",
                  request = {
                    ["$ref"] = "HttpBody",
                  },
                  response = {
                    ["$ref"] = "ReceiveTriggerWebhookResponse",
                  },
                },
              },
            },
            workerPools = {
              methods = {
                create = {
                  description = "Creates a `WorkerPool`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workerPools",
                  httpMethod = "POST",
                  id = "cloudbuild.projects.locations.workerPools.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource where this worker pool will be created. Format: `projects/{project}/locations/{location}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "If set, validate the request and preview the response, but do not actually post it.",
                      location = "query",
                      type = "boolean",
                    },
                    workerPoolId = {
                      description = "Required. Immutable. The ID to use for the `WorkerPool`, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are /a-z-/.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workerPools",
                  request = {
                    ["$ref"] = "WorkerPool",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a `WorkerPool`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workerPools/{workerPoolsId}",
                  httpMethod = "DELETE",
                  id = "cloudbuild.projects.locations.workerPools.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "If set to true, and the `WorkerPool` is not found, the request will succeed but no action will be taken on the server.",
                      location = "query",
                      type = "boolean",
                    },
                    etag = {
                      description = "Optional. If provided, it must match the server's etag on the workerpool for the request to be processed.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The name of the `WorkerPool` to delete. Format: `projects/{project}/locations/{location}/workerPools/{workerPool}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workerPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "If set, validate the request and preview the response, but do not actually post it.",
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
                  description = "Returns details of a `WorkerPool`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workerPools/{workerPoolsId}",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.workerPools.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the `WorkerPool` to retrieve. Format: `projects/{project}/locations/{location}/workerPools/{workerPool}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workerPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "WorkerPool",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists `WorkerPool`s.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workerPools",
                  httpMethod = "GET",
                  id = "cloudbuild.projects.locations.workerPools.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of `WorkerPool`s to return. The service may return fewer than this value. If omitted, the server will use a sensible default.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListWorkerPools` call. Provide this to retrieve the subsequent page.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent of the collection of `WorkerPools`. Format: `projects/{project}/locations/{location}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/workerPools",
                  response = {
                    ["$ref"] = "ListWorkerPoolsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a `WorkerPool`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/workerPools/{workerPoolsId}",
                  httpMethod = "PATCH",
                  id = "cloudbuild.projects.locations.workerPools.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/workerPools/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "A mask specifying which fields in `worker_pool` to update.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    validateOnly = {
                      description = "If set, validate the request and preview the response, but do not actually post it.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "WorkerPool",
                  },
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
        triggers = {
          methods = {
            create = {
              description = "Creates a new `BuildTrigger`. This API is experimental.",
              flatPath = "v1/projects/{projectId}/triggers",
              httpMethod = "POST",
              id = "cloudbuild.projects.triggers.create",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                parent = {
                  description = "The parent resource where this trigger will be created. Format: `projects/{project}/locations/{location}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project for which to configure automatic builds.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/triggers",
              request = {
                ["$ref"] = "BuildTrigger",
              },
              response = {
                ["$ref"] = "BuildTrigger",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a `BuildTrigger` by its project ID and trigger ID. This API is experimental.",
              flatPath = "v1/projects/{projectId}/triggers/{triggerId}",
              httpMethod = "DELETE",
              id = "cloudbuild.projects.triggers.delete",
              parameterOrder = {
                "projectId",
                "triggerId",
              },
              parameters = {
                name = {
                  description = "The name of the `Trigger` to delete. Format: `projects/{project}/locations/{location}/triggers/{trigger}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project that owns the trigger.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                triggerId = {
                  description = "Required. ID of the `BuildTrigger` to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/triggers/{triggerId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Returns information about a `BuildTrigger`. This API is experimental.",
              flatPath = "v1/projects/{projectId}/triggers/{triggerId}",
              httpMethod = "GET",
              id = "cloudbuild.projects.triggers.get",
              parameterOrder = {
                "projectId",
                "triggerId",
              },
              parameters = {
                name = {
                  description = "The name of the `Trigger` to retrieve. Format: `projects/{project}/locations/{location}/triggers/{trigger}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project that owns the trigger.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                triggerId = {
                  description = "Required. Identifier (`id` or `name`) of the `BuildTrigger` to get.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/triggers/{triggerId}",
              response = {
                ["$ref"] = "BuildTrigger",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists existing `BuildTrigger`s. This API is experimental.",
              flatPath = "v1/projects/{projectId}/triggers",
              httpMethod = "GET",
              id = "cloudbuild.projects.triggers.list",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                pageSize = {
                  description = "Number of results to return in the list.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to provide to skip to a particular spot in the list.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent of the collection of `Triggers`. Format: `projects/{project}/locations/{location}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project for which to list BuildTriggers.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/triggers",
              response = {
                ["$ref"] = "ListBuildTriggersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a `BuildTrigger` by its project ID and trigger ID. This API is experimental.",
              flatPath = "v1/projects/{projectId}/triggers/{triggerId}",
              httpMethod = "PATCH",
              id = "cloudbuild.projects.triggers.patch",
              parameterOrder = {
                "projectId",
                "triggerId",
              },
              parameters = {
                projectId = {
                  description = "Required. ID of the project that owns the trigger.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                triggerId = {
                  description = "Required. ID of the `BuildTrigger` to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/triggers/{triggerId}",
              request = {
                ["$ref"] = "BuildTrigger",
              },
              response = {
                ["$ref"] = "BuildTrigger",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            run = {
              description = "Runs a `BuildTrigger` at a particular source revision. To run a regional or global trigger, use the POST request that includes the location endpoint in the path (ex. v1/projects/{projectId}/locations/{region}/triggers/{triggerId}:run). The POST request that does not include the location endpoint in the path can only be used when running global triggers.",
              flatPath = "v1/projects/{projectId}/triggers/{triggerId}:run",
              httpMethod = "POST",
              id = "cloudbuild.projects.triggers.run",
              parameterOrder = {
                "projectId",
                "triggerId",
              },
              parameters = {
                name = {
                  description = "The name of the `Trigger` to run. Format: `projects/{project}/locations/{location}/triggers/{trigger}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. ID of the project.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                triggerId = {
                  description = "Required. ID of the trigger.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/triggers/{triggerId}:run",
              request = {
                ["$ref"] = "RepoSource",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            webhook = {
              description = "ReceiveTriggerWebhook [Experimental] is called when the API receives a webhook request targeted at a specific trigger.",
              flatPath = "v1/projects/{projectId}/triggers/{trigger}:webhook",
              httpMethod = "POST",
              id = "cloudbuild.projects.triggers.webhook",
              parameterOrder = {
                "projectId",
                "trigger",
              },
              parameters = {
                name = {
                  description = "The name of the `ReceiveTriggerWebhook` to retrieve. Format: `projects/{project}/locations/{location}/triggers/{trigger}`",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Project in which the specified trigger lives",
                  location = "path",
                  required = true,
                  type = "string",
                },
                secret = {
                  description = "Secret token used for authorization if an OAuth token isn't provided.",
                  location = "query",
                  type = "string",
                },
                trigger = {
                  description = "Name of the trigger to run the payload against",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/triggers/{trigger}:webhook",
              request = {
                ["$ref"] = "HttpBody",
              },
              response = {
                ["$ref"] = "ReceiveTriggerWebhookResponse",
              },
            },
          },
        },
      },
    },
    v1 = {
      methods = {
        webhook = {
          description = "ReceiveWebhook is called when the API receives a GitHub webhook.",
          flatPath = "v1/webhook",
          httpMethod = "POST",
          id = "cloudbuild.webhook",
          parameterOrder = {},
          parameters = {
            webhookKey = {
              description = "For GitHub Enterprise webhooks, this key is used to associate the webhook request with the GitHubEnterpriseConfig to use for validation.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/webhook",
          request = {
            ["$ref"] = "HttpBody",
          },
          response = {
            ["$ref"] = "Empty",
          },
        },
      },
    },
  },
  revision = "20230102",
  rootUrl = "https://cloudbuild.googleapis.com/",
  schemas = {
    ApprovalConfig = {
      description = "ApprovalConfig describes configuration for manual approval of a build.",
      id = "ApprovalConfig",
      properties = {
        approvalRequired = {
          description = "Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ApprovalResult = {
      description = "ApprovalResult describes the decision and associated metadata of a manual approval of a build.",
      id = "ApprovalResult",
      properties = {
        approvalTime = {
          description = "Output only. The time when the approval decision was made.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        approverAccount = {
          description = "Output only. Email of the user that called the ApproveBuild API to approve or reject a build at the time that the API was called.",
          readOnly = true,
          type = "string",
        },
        comment = {
          description = "Optional. An optional comment for this manual approval result.",
          type = "string",
        },
        decision = {
          description = "Required. The decision of this manual approval.",
          enum = {
            "DECISION_UNSPECIFIED",
            "APPROVED",
            "REJECTED",
          },
          enumDescriptions = {
            "Default enum type. This should not be used.",
            "Build is approved.",
            "Build is rejected.",
          },
          type = "string",
        },
        url = {
          description = "Optional. An optional URL tied to this manual approval result. This field is essentially the same as comment, except that it will be rendered by the UI differently. An example use case is a link to an external job that approved this Build.",
          type = "string",
        },
      },
      type = "object",
    },
    ApproveBuildRequest = {
      description = "Request to approve or reject a pending build.",
      id = "ApproveBuildRequest",
      properties = {
        approvalResult = {
          ["$ref"] = "ApprovalResult",
          description = "Approval decision and metadata.",
        },
      },
      type = "object",
    },
    ArtifactObjects = {
      description = "Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.",
      id = "ArtifactObjects",
      properties = {
        location = {
          description = "Cloud Storage bucket and optional object path, in the form \"gs://bucket/path/to/somewhere/\". (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.",
          type = "string",
        },
        paths = {
          description = "Path globs used to match files in the build's workspace.",
          items = {
            type = "string",
          },
          type = "array",
        },
        timing = {
          ["$ref"] = "TimeSpan",
          description = "Output only. Stores timing information for pushing all artifact objects.",
          readOnly = true,
        },
      },
      type = "object",
    },
    ArtifactResult = {
      description = "An artifact that was uploaded during a build. This is a single record in the artifact manifest JSON file.",
      id = "ArtifactResult",
      properties = {
        fileHash = {
          description = "The file hash of the artifact.",
          items = {
            ["$ref"] = "FileHashes",
          },
          type = "array",
        },
        location = {
          description = "The path of an artifact in a Google Cloud Storage bucket, with the generation number. For example, `gs://mybucket/path/to/output.jar#generation`.",
          type = "string",
        },
      },
      type = "object",
    },
    Artifacts = {
      description = "Artifacts produced by a build that should be uploaded upon successful completion of all build steps.",
      id = "Artifacts",
      properties = {
        images = {
          description = "A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account's credentials. The digests of the pushed images will be stored in the Build resource's results field. If any of the images fail to be pushed, the build is marked FAILURE.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mavenArtifacts = {
          description = "A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any artifacts fail to be pushed, the build is marked FAILURE.",
          items = {
            ["$ref"] = "MavenArtifact",
          },
          type = "array",
        },
        objects = {
          ["$ref"] = "ArtifactObjects",
          description = "A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account's credentials. The location and generation of the uploaded objects will be stored in the Build resource's results field. If any objects fail to be pushed, the build is marked FAILURE.",
        },
        pythonPackages = {
          description = "A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.",
          items = {
            ["$ref"] = "PythonPackage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateBitbucketServerConnectedRepositoriesRequest = {
      description = "RPC request object accepted by BatchCreateBitbucketServerConnectedRepositories RPC method.",
      id = "BatchCreateBitbucketServerConnectedRepositoriesRequest",
      properties = {
        requests = {
          description = "Required. Requests to connect Bitbucket Server repositories.",
          items = {
            ["$ref"] = "CreateBitbucketServerConnectedRepositoryRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateBitbucketServerConnectedRepositoriesResponse = {
      description = "Response of BatchCreateBitbucketServerConnectedRepositories RPC method including all successfully connected Bitbucket Server repositories.",
      id = "BatchCreateBitbucketServerConnectedRepositoriesResponse",
      properties = {
        bitbucketServerConnectedRepositories = {
          description = "The connected Bitbucket Server repositories.",
          items = {
            ["$ref"] = "BitbucketServerConnectedRepository",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata = {
      description = "Metadata for `BatchCreateBitbucketServerConnectedRepositories` operation.",
      id = "BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        config = {
          description = "The name of the `BitbucketServerConfig` that added connected repositories. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    BatchCreateGitLabConnectedRepositoriesRequest = {
      description = "RPC request object accepted by BatchCreateGitLabConnectedRepositories RPC method.",
      id = "BatchCreateGitLabConnectedRepositoriesRequest",
      properties = {
        requests = {
          description = "Required. Requests to connect GitLab repositories.",
          items = {
            ["$ref"] = "CreateGitLabConnectedRepositoryRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateGitLabConnectedRepositoriesResponse = {
      description = "Response of BatchCreateGitLabConnectedRepositories RPC method.",
      id = "BatchCreateGitLabConnectedRepositoriesResponse",
      properties = {
        gitlabConnectedRepositories = {
          description = "The GitLab connected repository requests' responses.",
          items = {
            ["$ref"] = "GitLabConnectedRepository",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreateGitLabConnectedRepositoriesResponseMetadata = {
      description = "Metadata for `BatchCreateGitLabConnectedRepositories` operation.",
      id = "BatchCreateGitLabConnectedRepositoriesResponseMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        config = {
          description = "The name of the `GitLabConfig` that added connected repositories. Format: `projects/{project}/locations/{location}/gitLabConfigs/{config}`",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    BitbucketServerConfig = {
      description = "BitbucketServerConfig represents the configuration for a Bitbucket Server.",
      id = "BitbucketServerConfig",
      properties = {
        apiKey = {
          description = "Required. Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.",
          type = "string",
        },
        connectedRepositories = {
          description = "Output only. Connected Bitbucket Server repositories for this config.",
          items = {
            ["$ref"] = "BitbucketServerRepositoryId",
          },
          readOnly = true,
          type = "array",
        },
        createTime = {
          description = "Time when the config was created.",
          format = "google-datetime",
          type = "string",
        },
        hostUri = {
          description = "Required. Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.",
          type = "string",
        },
        name = {
          description = "The resource name for the config.",
          type = "string",
        },
        peeredNetwork = {
          description = "Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.",
          type = "string",
        },
        secrets = {
          ["$ref"] = "BitbucketServerSecrets",
          description = "Required. Secret Manager secrets needed by the config.",
        },
        sslCa = {
          description = "Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.",
          type = "string",
        },
        username = {
          description = "Username of the account Cloud Build will use on Bitbucket Server.",
          type = "string",
        },
        webhookKey = {
          description = "Output only. UUID included in webhook requests. The UUID is used to look up the corresponding config.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    BitbucketServerConnectedRepository = {
      description = "/ BitbucketServerConnectedRepository represents a connected Bitbucket Server / repository.",
      id = "BitbucketServerConnectedRepository",
      properties = {
        parent = {
          description = "The name of the `BitbucketServerConfig` that added connected repository. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`",
          type = "string",
        },
        repo = {
          ["$ref"] = "BitbucketServerRepositoryId",
          description = "The Bitbucket Server repositories to connect.",
        },
        status = {
          ["$ref"] = "Status",
          description = "Output only. The status of the repo connection request.",
          readOnly = true,
        },
      },
      type = "object",
    },
    BitbucketServerRepository = {
      description = "BitbucketServerRepository represents a repository hosted on a Bitbucket Server.",
      id = "BitbucketServerRepository",
      properties = {
        browseUri = {
          description = "Link to the browse repo page on the Bitbucket Server instance.",
          type = "string",
        },
        description = {
          description = "Description of the repository.",
          type = "string",
        },
        displayName = {
          description = "Display name of the repository.",
          type = "string",
        },
        name = {
          description = "The resource name of the repository.",
          type = "string",
        },
        repoId = {
          ["$ref"] = "BitbucketServerRepositoryId",
          description = "Identifier for a repository hosted on a Bitbucket Server.",
        },
      },
      type = "object",
    },
    BitbucketServerRepositoryId = {
      description = "BitbucketServerRepositoryId identifies a specific repository hosted on a Bitbucket Server.",
      id = "BitbucketServerRepositoryId",
      properties = {
        projectKey = {
          description = "Required. Identifier for the project storing the repository.",
          type = "string",
        },
        repoSlug = {
          description = "Required. Identifier for the repository.",
          type = "string",
        },
        webhookId = {
          description = "Output only. The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    BitbucketServerSecrets = {
      description = "BitbucketServerSecrets represents the secrets in Secret Manager for a Bitbucket Server.",
      id = "BitbucketServerSecrets",
      properties = {
        adminAccessTokenVersionName = {
          description = "Required. The resource name for the admin access token's secret version.",
          type = "string",
        },
        readAccessTokenVersionName = {
          description = "Required. The resource name for the read access token's secret version.",
          type = "string",
        },
        webhookSecretVersionName = {
          description = "Required. Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.",
          type = "string",
        },
      },
      type = "object",
    },
    BitbucketServerTriggerConfig = {
      description = "BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.",
      id = "BitbucketServerTriggerConfig",
      properties = {
        bitbucketServerConfig = {
          ["$ref"] = "BitbucketServerConfig",
          description = "Output only. The BitbucketServerConfig specified in the bitbucket_server_config_resource field.",
          readOnly = true,
        },
        bitbucketServerConfigResource = {
          description = "Required. The Bitbucket server config resource that this trigger config maps to.",
          type = "string",
        },
        projectKey = {
          description = "Required. Key of the project that the repo is in. For example: The key for https://mybitbucket.server/projects/TEST/repos/test-repo is \"TEST\".",
          type = "string",
        },
        pullRequest = {
          ["$ref"] = "PullRequestFilter",
          description = "Filter to match changes in pull requests.",
        },
        push = {
          ["$ref"] = "PushFilter",
          description = "Filter to match changes in refs like branches, tags.",
        },
        repoSlug = {
          description = "Required. Slug of the repository. A repository slug is a URL-friendly version of a repository name, automatically generated by Bitbucket for use in the URL. For example, if the repository name is 'test repo', in the URL it would become 'test-repo' as in https://mybitbucket.server/projects/TEST/repos/test-repo.",
          type = "string",
        },
      },
      type = "object",
    },
    Build = {
      description = "A build resource in the Cloud Build API. At a high level, a `Build` describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT_ID: the project ID of the build. - $PROJECT_NUMBER: the project number of the build. - $LOCATION: the location/region of the build. - $BUILD_ID: the autogenerated ID of the build. - $REPO_NAME: the source repository name specified by RepoSource. - $BRANCH_NAME: the branch name specified by RepoSource. - $TAG_NAME: the tag name specified by RepoSource. - $REVISION_ID or $COMMIT_SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT_SHA: first 7 characters of $REVISION_ID or $COMMIT_SHA.",
      id = "Build",
      properties = {
        approval = {
          ["$ref"] = "BuildApproval",
          description = "Output only. Describes this build's approval configuration, status, and result.",
          readOnly = true,
        },
        artifacts = {
          ["$ref"] = "Artifacts",
          description = "Artifacts produced by the build that should be uploaded upon successful completion of all build steps.",
        },
        availableSecrets = {
          ["$ref"] = "Secrets",
          description = "Secrets and secret environment variables.",
        },
        buildTriggerId = {
          description = "Output only. The ID of the `BuildTrigger` that triggered this build, if it was triggered automatically.",
          readOnly = true,
          type = "string",
        },
        createTime = {
          description = "Output only. Time at which the request to create the build was received.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        failureInfo = {
          ["$ref"] = "FailureInfo",
          description = "Output only. Contains information about the build when status=FAILURE.",
          readOnly = true,
        },
        finishTime = {
          description = "Output only. Time at which execution of the build was finished. The difference between finish_time and start_time is the duration of the build's execution.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Output only. Unique identifier of the build.",
          readOnly = true,
          type = "string",
        },
        images = {
          description = "A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account's credentials. The digests of the pushed images will be stored in the `Build` resource's results field. If any of the images fail to be pushed, the build status is marked `FAILURE`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logUrl = {
          description = "Output only. URL to logs for this build in Google Cloud Console.",
          readOnly = true,
          type = "string",
        },
        logsBucket = {
          description = "Google Cloud Storage bucket where logs should be written (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.",
          type = "string",
        },
        name = {
          description = "Output only. The 'Build' name with format: `projects/{project}/locations/{location}/builds/{build}`, where {build} is a unique identifier generated by the service.",
          readOnly = true,
          type = "string",
        },
        options = {
          ["$ref"] = "BuildOptions",
          description = "Special options for this build.",
        },
        projectId = {
          description = "Output only. ID of the project.",
          readOnly = true,
          type = "string",
        },
        queueTtl = {
          description = "TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be `EXPIRED`. The TTL starts ticking from create_time.",
          format = "google-duration",
          type = "string",
        },
        results = {
          ["$ref"] = "Results",
          description = "Output only. Results of the build.",
          readOnly = true,
        },
        secrets = {
          description = "Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use `available_secrets` to configure builds to access secrets from Secret Manager. For instructions, see: https://cloud.google.com/cloud-build/docs/securing-builds/use-secrets",
          items = {
            ["$ref"] = "Secret",
          },
          type = "array",
        },
        serviceAccount = {
          description = "IAM service account whose credentials will be used at build runtime. Must be of the format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. ACCOUNT can be email address or uniqueId of the service account. ",
          type = "string",
        },
        source = {
          ["$ref"] = "Source",
          description = "The location of the source files to build.",
        },
        sourceProvenance = {
          ["$ref"] = "SourceProvenance",
          description = "Output only. A permanent fixed identifier for source.",
          readOnly = true,
        },
        startTime = {
          description = "Output only. Time at which execution of the build was started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        status = {
          description = "Output only. Status of the build.",
          enum = {
            "STATUS_UNKNOWN",
            "PENDING",
            "QUEUED",
            "WORKING",
            "SUCCESS",
            "FAILURE",
            "INTERNAL_ERROR",
            "TIMEOUT",
            "CANCELLED",
            "EXPIRED",
          },
          enumDescriptions = {
            "Status of the build is unknown.",
            "Build has been created and is pending execution and queuing. It has not been queued.",
            "Build or step is queued; work has not yet begun.",
            "Build or step is being executed.",
            "Build or step finished successfully.",
            "Build or step failed to complete successfully.",
            "Build or step failed due to an internal cause.",
            "Build or step took longer than was allowed.",
            "Build or step was canceled by a user.",
            "Build was enqueued for longer than the value of `queue_ttl`.",
          },
          readOnly = true,
          type = "string",
        },
        statusDetail = {
          description = "Output only. Customer-readable message about the current status.",
          readOnly = true,
          type = "string",
        },
        steps = {
          description = "Required. The operations to be performed on the workspace.",
          items = {
            ["$ref"] = "BuildStep",
          },
          type = "array",
        },
        substitutions = {
          additionalProperties = {
            type = "string",
          },
          description = "Substitutions data for `Build` resource.",
          type = "object",
        },
        tags = {
          description = "Tags for annotation of a `Build`. These are not docker tags.",
          items = {
            type = "string",
          },
          type = "array",
        },
        timeout = {
          description = "Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be `TIMEOUT`. `timeout` starts ticking from `startTime`. Default time is ten minutes.",
          format = "google-duration",
          type = "string",
        },
        timing = {
          additionalProperties = {
            ["$ref"] = "TimeSpan",
          },
          description = "Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all artifacts including docker images and non docker artifacts. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included.",
          readOnly = true,
          type = "object",
        },
        warnings = {
          description = "Output only. Non-fatal problems encountered during the execution of the build.",
          items = {
            ["$ref"] = "Warning",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    BuildApproval = {
      description = "BuildApproval describes a build's approval configuration, state, and result.",
      id = "BuildApproval",
      properties = {
        config = {
          ["$ref"] = "ApprovalConfig",
          description = "Output only. Configuration for manual approval of this build.",
          readOnly = true,
        },
        result = {
          ["$ref"] = "ApprovalResult",
          description = "Output only. Result of manual approval for this Build.",
          readOnly = true,
        },
        state = {
          description = "Output only. The state of this build's approval.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "APPROVED",
            "REJECTED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Default enum type. This should not be used.",
            "Build approval is pending.",
            "Build approval has been approved.",
            "Build approval has been rejected.",
            "Build was cancelled while it was still pending approval.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    BuildOperationMetadata = {
      description = "Metadata for build operations.",
      id = "BuildOperationMetadata",
      properties = {
        build = {
          ["$ref"] = "Build",
          description = "The build that the operation is tracking.",
        },
      },
      type = "object",
    },
    BuildOptions = {
      description = "Optional arguments to enable specific features of builds.",
      id = "BuildOptions",
      properties = {
        diskSizeGb = {
          description = "Requested disk size for the VM that runs the build. Note that this is *NOT* \"disk free\"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 2000GB; builds that request more than the maximum are rejected with an error.",
          format = "int64",
          type = "string",
        },
        dynamicSubstitutions = {
          description = "Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.",
          type = "boolean",
        },
        env = {
          description = "A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        logStreamingOption = {
          description = "Option to define build log streaming behavior to Google Cloud Storage.",
          enum = {
            "STREAM_DEFAULT",
            "STREAM_ON",
            "STREAM_OFF",
          },
          enumDescriptions = {
            "Service may automatically determine build log streaming behavior.",
            "Build logs should be streamed to Google Cloud Storage.",
            "Build logs should not be streamed to Google Cloud Storage; they will be written when the build is completed.",
          },
          type = "string",
        },
        logging = {
          description = "Option to specify the logging mode, which determines if and where build logs are stored.",
          enum = {
            "LOGGING_UNSPECIFIED",
            "LEGACY",
            "GCS_ONLY",
            "STACKDRIVER_ONLY",
            "CLOUD_LOGGING_ONLY",
            "NONE",
          },
          enumDescriptions = {
            "The service determines the logging mode. The default is `LEGACY`. Do not rely on the default logging behavior as it may change in the future.",
            "Build logs are stored in Cloud Logging and Cloud Storage.",
            "Build logs are stored in Cloud Storage.",
            "This option is the same as CLOUD_LOGGING_ONLY.",
            "Build logs are stored in Cloud Logging. Selecting this option will not allow [logs streaming](https://cloud.google.com/sdk/gcloud/reference/builds/log).",
            "Turn off all logging. No build logs will be captured.",
          },
          type = "string",
        },
        machineType = {
          description = "Compute Engine machine type on which to run the build.",
          enum = {
            "UNSPECIFIED",
            "N1_HIGHCPU_8",
            "N1_HIGHCPU_32",
            "E2_HIGHCPU_8",
            "E2_HIGHCPU_32",
          },
          enumDescriptions = {
            "Standard machine type.",
            "Highcpu machine with 8 CPUs.",
            "Highcpu machine with 32 CPUs.",
            "Highcpu e2 machine with 8 CPUs.",
            "Highcpu e2 machine with 32 CPUs.",
          },
          type = "string",
        },
        pool = {
          ["$ref"] = "PoolOption",
          description = "Optional. Specification for execution on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.",
        },
        requestedVerifyOption = {
          description = "Requested verifiability options.",
          enum = {
            "NOT_VERIFIED",
            "VERIFIED",
          },
          enumDescriptions = {
            "Not a verifiable build (the default).",
            "Build must be verified.",
          },
          type = "string",
        },
        secretEnv = {
          description = "A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`. These variables will be available to all build steps in this build.",
          items = {
            type = "string",
          },
          type = "array",
        },
        sourceProvenanceHash = {
          description = "Requested hash for SourceProvenance.",
          items = {
            enum = {
              "NONE",
              "SHA256",
              "MD5",
            },
            enumDescriptions = {
              "No hash requested.",
              "Use a sha256 hash.",
              "Use a md5 hash.",
            },
            type = "string",
          },
          type = "array",
        },
        substitutionOption = {
          description = "Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.",
          enum = {
            "MUST_MATCH",
            "ALLOW_LOOSE",
          },
          enumDescriptions = {
            "Fails the build if error in substitutions checks, like missing a substitution in the template or in the map.",
            "Do not fail the build if error in substitutions checks.",
          },
          type = "string",
        },
        volumes = {
          description = "Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
        workerPool = {
          description = "This field deprecated; please use `pool.name` instead.",
          type = "string",
        },
      },
      type = "object",
    },
    BuildStep = {
      description = "A step in the build pipeline.",
      id = "BuildStep",
      properties = {
        allowExitCodes = {
          description = "Allow this build step to fail without failing the entire build if and only if the exit code is one of the specified codes. If allow_failure is also specified, this field will take precedence.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        allowFailure = {
          description = "Allow this build step to fail without failing the entire build. If false, the entire build will fail if this step fails. Otherwise, the build will succeed, but this step will still have a failure status. Error information will be reported in the failure_detail field.",
          type = "boolean",
        },
        args = {
          description = "A list of arguments that will be presented to the step when it is started. If the image used to run the step's container has an entrypoint, the `args` are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dir = {
          description = "Working directory to use when running this step's container. If this value is a relative path, it is relative to the build's working directory. If this value is absolute, it may be outside the build's working directory, in which case the contents of the path may not be persisted across build step executions, unless a `volume` for that path is specified. If the build specifies a `RepoSource` with `dir` and a step with a `dir`, which specifies an absolute path, the `RepoSource` `dir` is ignored for the step's execution.",
          type = "string",
        },
        entrypoint = {
          description = "Entrypoint to be used instead of the build step image's default entrypoint. If unset, the image's default entrypoint is used.",
          type = "string",
        },
        env = {
          description = "A list of environment variable definitions to be used when running a step. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        exitCode = {
          description = "Output only. Return code from running the step.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        id = {
          description = "Unique identifier for this build step, used in `wait_for` to reference this build step as a dependency.",
          type = "string",
        },
        name = {
          description = "Required. The name of the container image that will run this particular build step. If the image is available in the host's Docker daemon's cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account's credentials if necessary. The Docker daemon's cache will already have the latest versions of all of the officially supported build steps ([https://github.com/GoogleCloudPlatform/cloud-builders](https://github.com/GoogleCloudPlatform/cloud-builders)). The Docker daemon will also have cached many of the layers for some popular images, like \"ubuntu\", \"debian\", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host's Docker daemon's cache and is available to use as the name for a later build step.",
          type = "string",
        },
        pullTiming = {
          ["$ref"] = "TimeSpan",
          description = "Output only. Stores timing information for pulling this build step's builder image only.",
          readOnly = true,
        },
        script = {
          description = "A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.",
          type = "string",
        },
        secretEnv = {
          description = "A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build's `Secret`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.",
          enum = {
            "STATUS_UNKNOWN",
            "PENDING",
            "QUEUED",
            "WORKING",
            "SUCCESS",
            "FAILURE",
            "INTERNAL_ERROR",
            "TIMEOUT",
            "CANCELLED",
            "EXPIRED",
          },
          enumDescriptions = {
            "Status of the build is unknown.",
            "Build has been created and is pending execution and queuing. It has not been queued.",
            "Build or step is queued; work has not yet begun.",
            "Build or step is being executed.",
            "Build or step finished successfully.",
            "Build or step failed to complete successfully.",
            "Build or step failed due to an internal cause.",
            "Build or step took longer than was allowed.",
            "Build or step was canceled by a user.",
            "Build was enqueued for longer than the value of `queue_ttl`.",
          },
          readOnly = true,
          type = "string",
        },
        timeout = {
          description = "Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.",
          format = "google-duration",
          type = "string",
        },
        timing = {
          ["$ref"] = "TimeSpan",
          description = "Output only. Stores timing information for executing this build step.",
          readOnly = true,
        },
        volumes = {
          description = "List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
        waitFor = {
          description = "The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in `wait_for` have completed successfully. If `wait_for` is empty, this build step will start when all previous build steps in the `Build.Steps` list have completed successfully.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BuildTrigger = {
      description = "Configuration for an automated build in response to source repository changes.",
      id = "BuildTrigger",
      properties = {
        approvalConfig = {
          ["$ref"] = "ApprovalConfig",
          description = "Configuration for manual approval to start a build invocation of this BuildTrigger.",
        },
        autodetect = {
          description = "Autodetect build configuration. The following precedence is used (case insensitive): 1. cloudbuild.yaml 2. cloudbuild.yml 3. cloudbuild.json 4. Dockerfile Currently only available for GitHub App Triggers.",
          type = "boolean",
        },
        bitbucketServerTriggerConfig = {
          ["$ref"] = "BitbucketServerTriggerConfig",
          description = "BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.",
        },
        build = {
          ["$ref"] = "Build",
          description = "Contents of the build template.",
        },
        createTime = {
          description = "Output only. Time when the trigger was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Human-readable description of this trigger.",
          type = "string",
        },
        disabled = {
          description = "If true, the trigger will never automatically execute a build.",
          type = "boolean",
        },
        eventType = {
          description = "EventType allows the user to explicitly set the type of event to which this BuildTrigger should respond. This field will be validated against the rest of the configuration if it is set.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "REPO",
            "WEBHOOK",
            "PUBSUB",
            "MANUAL",
          },
          enumDescriptions = {
            "EVENT_TYPE_UNSPECIFIED event_types are ignored.",
            "REPO corresponds to the supported VCS integrations.",
            "WEBHOOK corresponds to webhook triggers.",
            "PUBSUB corresponds to pubsub triggers.",
            "MANUAL corresponds to manual-only invoked triggers.",
          },
          type = "string",
        },
        filename = {
          description = "Path, from the source root, to the build configuration file (i.e. cloudbuild.yaml).",
          type = "string",
        },
        filter = {
          description = "A Common Expression Language string.",
          type = "string",
        },
        gitFileSource = {
          ["$ref"] = "GitFileSource",
          description = "The file source describing the local or remote Build template.",
        },
        github = {
          ["$ref"] = "GitHubEventsConfig",
          description = "GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received. Mutually exclusive with `trigger_template`.",
        },
        gitlabEnterpriseEventsConfig = {
          ["$ref"] = "GitLabEventsConfig",
          description = "GitLabEnterpriseEventsConfig describes the configuration of a trigger that creates a build whenever a GitLab Enterprise event is received.",
        },
        id = {
          description = "Output only. Unique identifier of the trigger.",
          readOnly = true,
          type = "string",
        },
        ignoredFiles = {
          description = "ignored_files and included_files are file glob matches using https://golang.org/pkg/path/filepath/#Match extended with support for \"**\". If ignored_files and changed files are both empty, then they are not used to determine whether or not to trigger a build. If ignored_files is not empty, then we ignore any files that match any of the ignored_file globs. If the change has no files that are outside of the ignored_files globs, then we do not trigger a build.",
          items = {
            type = "string",
          },
          type = "array",
        },
        includeBuildLogs = {
          description = "If set to INCLUDE_BUILD_LOGS_WITH_STATUS, log url will be shown on GitHub page when build status is final. Setting this field to INCLUDE_BUILD_LOGS_WITH_STATUS for non GitHub triggers results in INVALID_ARGUMENT error.",
          enum = {
            "INCLUDE_BUILD_LOGS_UNSPECIFIED",
            "INCLUDE_BUILD_LOGS_WITH_STATUS",
          },
          enumDescriptions = {
            "Build logs will not be shown on GitHub.",
            "Build logs will be shown on GitHub.",
          },
          type = "string",
        },
        includedFiles = {
          description = "If any of the files altered in the commit pass the ignored_files filter and included_files is empty, then as far as this filter is concerned, we should trigger the build. If any of the files altered in the commit pass the ignored_files filter and included_files is not empty, then we make sure that at least one of those files matches a included_files glob. If not, then we do not trigger a build.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "User-assigned name of the trigger. Must be unique within the project. Trigger names must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.",
          type = "string",
        },
        pubsubConfig = {
          ["$ref"] = "PubsubConfig",
          description = "PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub/Sub message is published.",
        },
        repositoryEventConfig = {
          ["$ref"] = "RepositoryEventConfig",
          description = "The configuration of a trigger that creates a build whenever an event from Repo API is received.",
        },
        resourceName = {
          description = "The `Trigger` name with format: `projects/{project}/locations/{location}/triggers/{trigger}`, where {trigger} is a unique identifier generated by the service.",
          type = "string",
        },
        serviceAccount = {
          description = "The service account used for all user-controlled operations including UpdateBuildTrigger, RunBuildTrigger, CreateBuild, and CancelBuild. If no service account is set, then the standard Cloud Build service account ([PROJECT_NUM]@system.gserviceaccount.com) will be used instead. Format: `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL}`",
          type = "string",
        },
        sourceToBuild = {
          ["$ref"] = "GitRepoSource",
          description = "The repo and ref of the repository from which to build. This field is used only for those triggers that do not respond to SCM events. Triggers that respond to such events build source at whatever commit caused the event. This field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.",
        },
        substitutions = {
          additionalProperties = {
            type = "string",
          },
          description = "Substitutions for Build resource. The keys must match the following regular expression: `^_[A-Z0-9_]+$`.",
          type = "object",
        },
        tags = {
          description = "Tags for annotation of a `BuildTrigger`",
          items = {
            type = "string",
          },
          type = "array",
        },
        triggerTemplate = {
          ["$ref"] = "RepoSource",
          description = "Template describing the types of source changes to trigger a build. Branch and tag names in trigger templates are interpreted as regular expressions. Any branch or tag change that matches that regular expression will trigger a build. Mutually exclusive with `github`.",
        },
        webhookConfig = {
          ["$ref"] = "WebhookConfig",
          description = "WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger's webhook URL.",
        },
      },
      type = "object",
    },
    BuiltImage = {
      description = "An image built by the pipeline.",
      id = "BuiltImage",
      properties = {
        digest = {
          description = "Docker Registry 2.0 digest.",
          type = "string",
        },
        name = {
          description = "Name used to push the container image to Google Container Registry, as presented to `docker push`.",
          type = "string",
        },
        pushTiming = {
          ["$ref"] = "TimeSpan",
          description = "Output only. Stores timing information for pushing the specified image.",
          readOnly = true,
        },
      },
      type = "object",
    },
    CancelBuildRequest = {
      description = "Request to cancel an ongoing build.",
      id = "CancelBuildRequest",
      properties = {
        id = {
          description = "Required. ID of the build.",
          type = "string",
        },
        name = {
          description = "The name of the `Build` to cancel. Format: `projects/{project}/locations/{location}/builds/{build}`",
          type = "string",
        },
        projectId = {
          description = "Required. ID of the project.",
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
    CreateBitbucketServerConfigOperationMetadata = {
      description = "Metadata for `CreateBitbucketServerConfig` operation.",
      id = "CreateBitbucketServerConfigOperationMetadata",
      properties = {
        bitbucketServerConfig = {
          description = "The resource name of the BitbucketServerConfig to be created. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.",
          type = "string",
        },
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    CreateBitbucketServerConnectedRepositoryRequest = {
      description = "Request to connect a repository from a connected Bitbucket Server host.",
      id = "CreateBitbucketServerConnectedRepositoryRequest",
      properties = {
        bitbucketServerConnectedRepository = {
          ["$ref"] = "BitbucketServerConnectedRepository",
          description = "Required. The Bitbucket Server repository to connect.",
        },
        parent = {
          description = "Required. The name of the `BitbucketServerConfig` that added connected repository. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{config}`",
          type = "string",
        },
      },
      type = "object",
    },
    CreateGitHubEnterpriseConfigOperationMetadata = {
      description = "Metadata for `CreateGithubEnterpriseConfig` operation.",
      id = "CreateGitHubEnterpriseConfigOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        githubEnterpriseConfig = {
          description = "The resource name of the GitHubEnterprise to be created. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateGitLabConfigOperationMetadata = {
      description = "Metadata for `CreateGitLabConfig` operation.",
      id = "CreateGitLabConfigOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        gitlabConfig = {
          description = "The resource name of the GitLabConfig to be created. Format: `projects/{project}/locations/{location}/gitlabConfigs/{id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateGitLabConnectedRepositoryRequest = {
      description = "Request to connect a repository from a connected GitLab host.",
      id = "CreateGitLabConnectedRepositoryRequest",
      properties = {
        gitlabConnectedRepository = {
          ["$ref"] = "GitLabConnectedRepository",
          description = "Required. The GitLab repository to connect.",
        },
        parent = {
          description = "Required. The name of the `GitLabConfig` that adds connected repository. Format: `projects/{project}/locations/{location}/gitLabConfigs/{config}`",
          type = "string",
        },
      },
      type = "object",
    },
    CreateWorkerPoolOperationMetadata = {
      description = "Metadata for the `CreateWorkerPool` operation.",
      id = "CreateWorkerPoolOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        workerPool = {
          description = "The resource name of the `WorkerPool` to create. Format: `projects/{project}/locations/{location}/workerPools/{worker_pool}`.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteBitbucketServerConfigOperationMetadata = {
      description = "Metadata for `DeleteBitbucketServerConfig` operation.",
      id = "DeleteBitbucketServerConfigOperationMetadata",
      properties = {
        bitbucketServerConfig = {
          description = "The resource name of the BitbucketServerConfig to be deleted. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.",
          type = "string",
        },
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteGitHubEnterpriseConfigOperationMetadata = {
      description = "Metadata for `DeleteGitHubEnterpriseConfig` operation.",
      id = "DeleteGitHubEnterpriseConfigOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        githubEnterpriseConfig = {
          description = "The resource name of the GitHubEnterprise to be deleted. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteGitLabConfigOperationMetadata = {
      description = "Metadata for `DeleteGitLabConfig` operation.",
      id = "DeleteGitLabConfigOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        gitlabConfig = {
          description = "The resource name of the GitLabConfig to be created. Format: `projects/{project}/locations/{location}/gitlabConfigs/{id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    DeleteWorkerPoolOperationMetadata = {
      description = "Metadata for the `DeleteWorkerPool` operation.",
      id = "DeleteWorkerPoolOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        workerPool = {
          description = "The resource name of the `WorkerPool` being deleted. Format: `projects/{project}/locations/{location}/workerPools/{worker_pool}`.",
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
    FailureInfo = {
      description = "A fatal problem encountered during the execution of the build.",
      id = "FailureInfo",
      properties = {
        detail = {
          description = "Explains the failure issue in more detail using hard-coded text.",
          type = "string",
        },
        type = {
          description = "The name of the failure.",
          enum = {
            "FAILURE_TYPE_UNSPECIFIED",
            "PUSH_FAILED",
            "PUSH_IMAGE_NOT_FOUND",
            "PUSH_NOT_AUTHORIZED",
            "LOGGING_FAILURE",
            "USER_BUILD_STEP",
            "FETCH_SOURCE_FAILED",
          },
          enumDescriptions = {
            "Type unspecified",
            "Unable to push the image to the repository.",
            "Final image not found.",
            "Unauthorized push of the final image.",
            "Backend logging failures. Should retry.",
            "A build step has failed.",
            "The source fetching has failed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    FileHashes = {
      description = "Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.",
      id = "FileHashes",
      properties = {
        fileHash = {
          description = "Collection of file hashes.",
          items = {
            ["$ref"] = "Hash",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GitFileSource = {
      description = "GitFileSource describes a file within a (possibly remote) code repository.",
      id = "GitFileSource",
      properties = {
        bitbucketServerConfig = {
          description = "The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.",
          type = "string",
        },
        githubEnterpriseConfig = {
          description = "The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.",
          type = "string",
        },
        path = {
          description = "The path of the file, with the repo root as the root of the path.",
          type = "string",
        },
        repoType = {
          description = "See RepoType above.",
          enum = {
            "UNKNOWN",
            "CLOUD_SOURCE_REPOSITORIES",
            "GITHUB",
            "BITBUCKET_SERVER",
          },
          enumDescriptions = {
            "The default, unknown repo type.",
            "A Google Cloud Source Repositories-hosted repo.",
            "A GitHub-hosted repo not necessarily on \"github.com\" (i.e. GitHub Enterprise).",
            "A Bitbucket Server-hosted repo.",
          },
          type = "string",
        },
        revision = {
          description = "The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.",
          type = "string",
        },
        uri = {
          description = "The URI of the repo. Either uri or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.",
          type = "string",
        },
      },
      type = "object",
    },
    GitHubEnterpriseConfig = {
      description = "GitHubEnterpriseConfig represents a configuration for a GitHub Enterprise server.",
      id = "GitHubEnterpriseConfig",
      properties = {
        appId = {
          description = "Required. The GitHub app id of the Cloud Build app on the GitHub Enterprise server.",
          format = "int64",
          type = "string",
        },
        createTime = {
          description = "Output only. Time when the installation was associated with the project.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Name to display for this config.",
          type = "string",
        },
        hostUrl = {
          description = "The URL of the github enterprise host the configuration is for.",
          type = "string",
        },
        name = {
          description = "Optional. The full resource name for the GitHubEnterpriseConfig For example: \"projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}\"",
          type = "string",
        },
        peeredNetwork = {
          description = "Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.",
          type = "string",
        },
        secrets = {
          ["$ref"] = "GitHubEnterpriseSecrets",
          description = "Names of secrets in Secret Manager.",
        },
        sslCa = {
          description = "Optional. SSL certificate to use for requests to GitHub Enterprise.",
          type = "string",
        },
        webhookKey = {
          description = "The key that should be attached to webhook calls to the ReceiveWebhook endpoint.",
          type = "string",
        },
      },
      type = "object",
    },
    GitHubEnterpriseSecrets = {
      description = "GitHubEnterpriseSecrets represents the names of all necessary secrets in Secret Manager for a GitHub Enterprise server. Format is: projects//secrets/.",
      id = "GitHubEnterpriseSecrets",
      properties = {
        oauthClientIdName = {
          description = "The resource name for the OAuth client ID secret in Secret Manager.",
          type = "string",
        },
        oauthClientIdVersionName = {
          description = "The resource name for the OAuth client ID secret version in Secret Manager.",
          type = "string",
        },
        oauthSecretName = {
          description = "The resource name for the OAuth secret in Secret Manager.",
          type = "string",
        },
        oauthSecretVersionName = {
          description = "The resource name for the OAuth secret secret version in Secret Manager.",
          type = "string",
        },
        privateKeyName = {
          description = "The resource name for the private key secret.",
          type = "string",
        },
        privateKeyVersionName = {
          description = "The resource name for the private key secret version.",
          type = "string",
        },
        webhookSecretName = {
          description = "The resource name for the webhook secret in Secret Manager.",
          type = "string",
        },
        webhookSecretVersionName = {
          description = "The resource name for the webhook secret secret version in Secret Manager.",
          type = "string",
        },
      },
      type = "object",
    },
    GitHubEventsConfig = {
      description = "GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received.",
      id = "GitHubEventsConfig",
      properties = {
        enterpriseConfigResourceName = {
          description = "Optional. The resource name of the github enterprise config that should be applied to this installation. For example: \"projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}\"",
          type = "string",
        },
        installationId = {
          description = "The installationID that emits the GitHub event.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is \"cloud-builders\".",
          type = "string",
        },
        owner = {
          description = "Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is \"googlecloudplatform\".",
          type = "string",
        },
        pullRequest = {
          ["$ref"] = "PullRequestFilter",
          description = "filter to match changes in pull requests.",
        },
        push = {
          ["$ref"] = "PushFilter",
          description = "filter to match changes in refs like branches, tags.",
        },
      },
      type = "object",
    },
    GitLabConfig = {
      description = "GitLabConfig represents the configuration for a GitLab integration.",
      id = "GitLabConfig",
      properties = {
        connectedRepositories = {
          description = "Connected GitLab.com or GitLabEnterprise repositories for this config.",
          items = {
            ["$ref"] = "GitLabRepositoryId",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. Time when the config was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        enterpriseConfig = {
          ["$ref"] = "GitLabEnterpriseConfig",
          description = "Optional. GitLabEnterprise config.",
        },
        name = {
          description = "The resource name for the config.",
          type = "string",
        },
        secrets = {
          ["$ref"] = "GitLabSecrets",
          description = "Required. Secret Manager secrets needed by the config.",
        },
        username = {
          description = "Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.",
          type = "string",
        },
        webhookKey = {
          description = "Output only. UUID included in webhook requests. The UUID is used to look up the corresponding config.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GitLabConnectedRepository = {
      description = "GitLabConnectedRepository represents a GitLab connected repository request response.",
      id = "GitLabConnectedRepository",
      properties = {
        parent = {
          description = "The name of the `GitLabConfig` that added connected repository. Format: `projects/{project}/locations/{location}/gitLabConfigs/{config}`",
          type = "string",
        },
        repo = {
          ["$ref"] = "GitLabRepositoryId",
          description = "The GitLab repositories to connect.",
        },
        status = {
          ["$ref"] = "Status",
          description = "Output only. The status of the repo connection request.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GitLabEnterpriseConfig = {
      description = "GitLabEnterpriseConfig represents the configuration for a GitLabEnterprise integration.",
      id = "GitLabEnterpriseConfig",
      properties = {
        hostUri = {
          description = "Immutable. The URI of the GitlabEnterprise host.",
          type = "string",
        },
        serviceDirectoryConfig = {
          ["$ref"] = "ServiceDirectoryConfig",
          description = "The Service Directory configuration to be used when reaching out to the GitLab Enterprise instance.",
        },
        sslCa = {
          description = "The SSL certificate to use in requests to GitLab Enterprise instances.",
          type = "string",
        },
      },
      type = "object",
    },
    GitLabEventsConfig = {
      description = "GitLabEventsConfig describes the configuration of a trigger that creates a build whenever a GitLab event is received.",
      id = "GitLabEventsConfig",
      properties = {
        gitlabConfig = {
          ["$ref"] = "GitLabConfig",
          description = "Output only. The GitLabConfig specified in the gitlab_config_resource field.",
          readOnly = true,
        },
        gitlabConfigResource = {
          description = "The GitLab config resource that this trigger config maps to.",
          type = "string",
        },
        projectNamespace = {
          description = "Namespace of the GitLab project.",
          type = "string",
        },
        pullRequest = {
          ["$ref"] = "PullRequestFilter",
          description = "Filter to match changes in pull requests.",
        },
        push = {
          ["$ref"] = "PushFilter",
          description = "Filter to match changes in refs like branches, tags.",
        },
      },
      type = "object",
    },
    GitLabRepository = {
      description = "Proto Representing a GitLabRepository",
      id = "GitLabRepository",
      properties = {
        browseUri = {
          description = "Link to the browse repo page on the GitLab instance",
          type = "string",
        },
        description = {
          description = "Description of the repository",
          type = "string",
        },
        displayName = {
          description = "Display name of the repository",
          type = "string",
        },
        name = {
          description = "The resource name of the repository",
          type = "string",
        },
        repositoryId = {
          ["$ref"] = "GitLabRepositoryId",
          description = "Identifier for a repository",
        },
      },
      type = "object",
    },
    GitLabRepositoryId = {
      description = "GitLabRepositoryId identifies a specific repository hosted on GitLab.com or GitLabEnterprise",
      id = "GitLabRepositoryId",
      properties = {
        id = {
          description = "Required. Identifier for the repository. example: \"namespace/project-slug\", namespace is usually the username or group ID",
          type = "string",
        },
        webhookId = {
          description = "Output only. The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    GitLabSecrets = {
      description = "GitLabSecrets represents the secrets in Secret Manager for a GitLab integration.",
      id = "GitLabSecrets",
      properties = {
        apiAccessTokenVersion = {
          description = "Required. The resource name for the api access token’s secret version",
          type = "string",
        },
        apiKeyVersion = {
          description = "Required. Immutable. API Key that will be attached to webhook requests from GitLab to Cloud Build.",
          type = "string",
        },
        readAccessTokenVersion = {
          description = "Required. The resource name for the read access token’s secret version",
          type = "string",
        },
        webhookSecretVersion = {
          description = "Required. Immutable. The resource name for the webhook secret’s secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another GitLabConfig.",
          type = "string",
        },
      },
      type = "object",
    },
    GitRepoSource = {
      description = "GitRepoSource describes a repo and ref of a code repository.",
      id = "GitRepoSource",
      properties = {
        bitbucketServerConfig = {
          description = "The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.",
          type = "string",
        },
        githubEnterpriseConfig = {
          description = "The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.",
          type = "string",
        },
        ref = {
          description = "The branch or tag to use. Must start with \"refs/\" (required).",
          type = "string",
        },
        repoType = {
          description = "See RepoType below.",
          enum = {
            "UNKNOWN",
            "CLOUD_SOURCE_REPOSITORIES",
            "GITHUB",
            "BITBUCKET_SERVER",
          },
          enumDescriptions = {
            "The default, unknown repo type.",
            "A Google Cloud Source Repositories-hosted repo.",
            "A GitHub-hosted repo not necessarily on \"github.com\" (i.e. GitHub Enterprise).",
            "A Bitbucket Server-hosted repo.",
          },
          type = "string",
        },
        uri = {
          description = "The URI of the repo. Either uri or repository can be specified and is required.",
          type = "string",
        },
      },
      type = "object",
    },
    HTTPDelivery = {
      description = "HTTPDelivery is the delivery configuration for an HTTP notification.",
      id = "HTTPDelivery",
      properties = {
        uri = {
          description = "The URI to which JSON-containing HTTP POST requests should be sent.",
          type = "string",
        },
      },
      type = "object",
    },
    Hash = {
      description = "Container message for hash values.",
      id = "Hash",
      properties = {
        type = {
          description = "The type of hash that was performed.",
          enum = {
            "NONE",
            "SHA256",
            "MD5",
          },
          enumDescriptions = {
            "No hash requested.",
            "Use a sha256 hash.",
            "Use a md5 hash.",
          },
          type = "string",
        },
        value = {
          description = "The hash value.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    HttpBody = {
      description = "Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.",
      id = "HttpBody",
      properties = {
        contentType = {
          description = "The HTTP Content-Type header value specifying the content type of the body.",
          type = "string",
        },
        data = {
          description = "The HTTP request/response body as raw binary.",
          format = "byte",
          type = "string",
        },
        extensions = {
          description = "Application specific response metadata. Must be set in the first response for streaming APIs.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InlineSecret = {
      description = "Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.",
      id = "InlineSecret",
      properties = {
        envMap = {
          additionalProperties = {
            format = "byte",
            type = "string",
          },
          description = "Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.",
          type = "object",
        },
        kmsKeyName = {
          description = "Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*",
          type = "string",
        },
      },
      type = "object",
    },
    ListBitbucketServerConfigsResponse = {
      description = "RPC response object returned by ListBitbucketServerConfigs RPC method.",
      id = "ListBitbucketServerConfigsResponse",
      properties = {
        bitbucketServerConfigs = {
          description = "A list of BitbucketServerConfigs",
          items = {
            ["$ref"] = "BitbucketServerConfig",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListBitbucketServerRepositoriesResponse = {
      description = "RPC response object returned by the ListBitbucketServerRepositories RPC method.",
      id = "ListBitbucketServerRepositoriesResponse",
      properties = {
        bitbucketServerRepositories = {
          description = "List of Bitbucket Server repositories.",
          items = {
            ["$ref"] = "BitbucketServerRepository",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListBuildTriggersResponse = {
      description = "Response containing existing `BuildTriggers`.",
      id = "ListBuildTriggersResponse",
      properties = {
        nextPageToken = {
          description = "Token to receive the next page of results.",
          type = "string",
        },
        triggers = {
          description = "`BuildTriggers` for the project, sorted by `create_time` descending.",
          items = {
            ["$ref"] = "BuildTrigger",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListBuildsResponse = {
      description = "Response including listed builds.",
      id = "ListBuildsResponse",
      properties = {
        builds = {
          description = "Builds will be sorted by `create_time`, descending.",
          items = {
            ["$ref"] = "Build",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to receive the next page of results. This will be absent if the end of the response list has been reached.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGitLabConfigsResponse = {
      description = "RPC response object returned by ListGitLabConfigs RPC method.",
      id = "ListGitLabConfigsResponse",
      properties = {
        gitlabConfigs = {
          description = "A list of GitLabConfigs",
          items = {
            ["$ref"] = "GitLabConfig",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGitLabRepositoriesResponse = {
      description = "RPC response object returned by the ListGitLabRepositories RPC method.",
      id = "ListGitLabRepositoriesResponse",
      properties = {
        gitlabRepositories = {
          description = "List of GitLab repositories",
          items = {
            ["$ref"] = "GitLabRepository",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGithubEnterpriseConfigsResponse = {
      description = "RPC response object returned by ListGithubEnterpriseConfigs RPC method.",
      id = "ListGithubEnterpriseConfigsResponse",
      properties = {
        configs = {
          description = "A list of GitHubEnterpriseConfigs",
          items = {
            ["$ref"] = "GitHubEnterpriseConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListWorkerPoolsResponse = {
      description = "Response containing existing `WorkerPools`.",
      id = "ListWorkerPoolsResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token used to page through large result sets. Provide this value in a subsequent ListWorkerPoolsRequest to return the next page of results.",
          type = "string",
        },
        workerPools = {
          description = "`WorkerPools` for the specified project.",
          items = {
            ["$ref"] = "WorkerPool",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MavenArtifact = {
      description = "A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.",
      id = "MavenArtifact",
      properties = {
        artifactId = {
          description = "Maven `artifactId` value used when uploading the artifact to Artifact Registry.",
          type = "string",
        },
        groupId = {
          description = "Maven `groupId` value used when uploading the artifact to Artifact Registry.",
          type = "string",
        },
        path = {
          description = "Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.",
          type = "string",
        },
        repository = {
          description = "Artifact Registry repository, in the form \"https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY\" Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix.",
          type = "string",
        },
        version = {
          description = "Maven `version` value used when uploading the artifact to Artifact Registry.",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkConfig = {
      description = "Defines the network configuration for the pool.",
      id = "NetworkConfig",
      properties = {
        egressOption = {
          description = "Option to configure network egress for the workers.",
          enum = {
            "EGRESS_OPTION_UNSPECIFIED",
            "NO_PUBLIC_EGRESS",
            "PUBLIC_EGRESS",
          },
          enumDescriptions = {
            "If set, defaults to PUBLIC_EGRESS.",
            "If set, workers are created without any public address, which prevents network egress to public IPs unless a network proxy is configured.",
            "If set, workers are created with a public address which allows for public internet egress.",
          },
          type = "string",
        },
        peeredNetwork = {
          description = "Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/build/docs/private-pools/set-up-private-pool-environment)",
          type = "string",
        },
        peeredNetworkIpRange = {
          description = "Immutable. Subnet IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a prefix size of 29 bits. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used.",
          type = "string",
        },
      },
      type = "object",
    },
    Notification = {
      description = "Notification is the container which holds the data that is relevant to this particular notification.",
      id = "Notification",
      properties = {
        filter = {
          description = "The filter string to use for notification filtering. Currently, this is assumed to be a CEL program. See https://opensource.google/projects/cel for more.",
          type = "string",
        },
        httpDelivery = {
          ["$ref"] = "HTTPDelivery",
          description = "Configuration for HTTP delivery.",
        },
        slackDelivery = {
          ["$ref"] = "SlackDelivery",
          description = "Configuration for Slack delivery.",
        },
        smtpDelivery = {
          ["$ref"] = "SMTPDelivery",
          description = "Configuration for SMTP (email) delivery.",
        },
        structDelivery = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Escape hatch for users to supply custom delivery configs.",
          type = "object",
        },
      },
      type = "object",
    },
    NotifierConfig = {
      description = "NotifierConfig is the top-level configuration message.",
      id = "NotifierConfig",
      properties = {
        apiVersion = {
          description = "The API version of this configuration format.",
          type = "string",
        },
        kind = {
          description = "The type of notifier to use (e.g. SMTPNotifier).",
          type = "string",
        },
        metadata = {
          ["$ref"] = "NotifierMetadata",
          description = "Metadata for referring to/handling/deploying this notifier.",
        },
        spec = {
          ["$ref"] = "NotifierSpec",
          description = "The actual configuration for this notifier.",
        },
      },
      type = "object",
    },
    NotifierMetadata = {
      description = "NotifierMetadata contains the data which can be used to reference or describe this notifier.",
      id = "NotifierMetadata",
      properties = {
        name = {
          description = "The human-readable and user-given name for the notifier. For example: \"repo-merge-email-notifier\".",
          type = "string",
        },
        notifier = {
          description = "The string representing the name and version of notifier to deploy. Expected to be of the form of \"/:\". For example: \"gcr.io/my-project/notifiers/smtp:1.2.34\".",
          type = "string",
        },
      },
      type = "object",
    },
    NotifierSecret = {
      description = "NotifierSecret is the container that maps a secret name (reference) to its Google Cloud Secret Manager resource path.",
      id = "NotifierSecret",
      properties = {
        name = {
          description = "Name is the local name of the secret, such as the verbatim string \"my-smtp-password\".",
          type = "string",
        },
        value = {
          description = "Value is interpreted to be a resource path for fetching the actual (versioned) secret data for this secret. For example, this would be a Google Cloud Secret Manager secret version resource path like: \"projects/my-project/secrets/my-secret/versions/latest\".",
          type = "string",
        },
      },
      type = "object",
    },
    NotifierSecretRef = {
      description = "NotifierSecretRef contains the reference to a secret stored in the corresponding NotifierSpec.",
      id = "NotifierSecretRef",
      properties = {
        secretRef = {
          description = "The value of `secret_ref` should be a `name` that is registered in a `Secret` in the `secrets` list of the `Spec`.",
          type = "string",
        },
      },
      type = "object",
    },
    NotifierSpec = {
      description = "NotifierSpec is the configuration container for notifications.",
      id = "NotifierSpec",
      properties = {
        notification = {
          ["$ref"] = "Notification",
          description = "The configuration of this particular notifier.",
        },
        secrets = {
          description = "Configurations for secret resources used by this particular notifier.",
          items = {
            ["$ref"] = "NotifierSecret",
          },
          type = "array",
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
        cancelRequested = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have been cancelled successfully have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
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
        statusDetail = {
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
    PoolOption = {
      description = "Details about how a build should be executed on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.",
      id = "PoolOption",
      properties = {
        name = {
          description = "The `WorkerPool` resource to execute the build on. You must have `cloudbuild.workerpools.use` on the project hosting the WorkerPool. Format projects/{project}/locations/{location}/workerPools/{workerPoolId}",
          type = "string",
        },
      },
      type = "object",
    },
    PrivatePoolV1Config = {
      description = "Configuration for a V1 `PrivatePool`.",
      id = "PrivatePoolV1Config",
      properties = {
        networkConfig = {
          ["$ref"] = "NetworkConfig",
          description = "Network configuration for the pool.",
        },
        workerConfig = {
          ["$ref"] = "WorkerConfig",
          description = "Machine configuration for the workers in the pool.",
        },
      },
      type = "object",
    },
    ProcessAppManifestCallbackOperationMetadata = {
      description = "Metadata for `ProcessAppManifestCallback` operation.",
      id = "ProcessAppManifestCallbackOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        githubEnterpriseConfig = {
          description = "The resource name of the GitHubEnterprise to be created. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    PubsubConfig = {
      description = "PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub/Sub message is published.",
      id = "PubsubConfig",
      properties = {
        serviceAccountEmail = {
          description = "Service account that will make the push request.",
          type = "string",
        },
        state = {
          description = "Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.",
          enum = {
            "STATE_UNSPECIFIED",
            "OK",
            "SUBSCRIPTION_DELETED",
            "TOPIC_DELETED",
            "SUBSCRIPTION_MISCONFIGURED",
          },
          enumDescriptions = {
            "The subscription configuration has not been checked.",
            "The Pub/Sub subscription is properly configured.",
            "The subscription has been deleted.",
            "The topic has been deleted.",
            "Some of the subscription's field are misconfigured.",
          },
          type = "string",
        },
        subscription = {
          description = "Output only. Name of the subscription. Format is `projects/{project}/subscriptions/{subscription}`.",
          readOnly = true,
          type = "string",
        },
        topic = {
          description = "The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`.",
          type = "string",
        },
      },
      type = "object",
    },
    PullRequestFilter = {
      description = "PullRequestFilter contains filter properties for matching GitHub Pull Requests.",
      id = "PullRequestFilter",
      properties = {
        branch = {
          description = "Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax",
          type = "string",
        },
        commentControl = {
          description = "Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.",
          enum = {
            "COMMENTS_DISABLED",
            "COMMENTS_ENABLED",
            "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY",
          },
          enumDescriptions = {
            "Do not require comments on Pull Requests before builds are triggered.",
            "Enforce that repository owners or collaborators must comment on Pull Requests before builds are triggered.",
            "Enforce that repository owners or collaborators must comment on external contributors' Pull Requests before builds are triggered.",
          },
          type = "string",
        },
        invertRegex = {
          description = "If true, branches that do NOT match the git_ref will trigger a build.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PushFilter = {
      description = "Push contains filter properties for matching GitHub git pushes.",
      id = "PushFilter",
      properties = {
        branch = {
          description = "Regexes matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax",
          type = "string",
        },
        invertRegex = {
          description = "When true, only trigger a build if the revision regex does NOT match the git_ref regex.",
          type = "boolean",
        },
        tag = {
          description = "Regexes matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax",
          type = "string",
        },
      },
      type = "object",
    },
    PythonPackage = {
      description = "Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.",
      id = "PythonPackage",
      properties = {
        paths = {
          description = "Path globs used to match files in the build's workspace. For Python/ Twine, this is usually `dist/*`, and sometimes additionally an `.asc` file.",
          items = {
            type = "string",
          },
          type = "array",
        },
        repository = {
          description = "Artifact Registry repository, in the form \"https://$REGION-python.pkg.dev/$PROJECT/$REPOSITORY\" Files in the workspace matching any path pattern will be uploaded to Artifact Registry with this location as a prefix.",
          type = "string",
        },
      },
      type = "object",
    },
    ReceiveTriggerWebhookResponse = {
      description = "ReceiveTriggerWebhookResponse [Experimental] is the response object for the ReceiveTriggerWebhook method.",
      id = "ReceiveTriggerWebhookResponse",
      properties = {},
      type = "object",
    },
    RemoveBitbucketServerConnectedRepositoryRequest = {
      description = "RPC request object accepted by RemoveBitbucketServerConnectedRepository RPC method.",
      id = "RemoveBitbucketServerConnectedRepositoryRequest",
      properties = {
        connectedRepository = {
          ["$ref"] = "BitbucketServerRepositoryId",
          description = "The connected repository to remove.",
        },
      },
      type = "object",
    },
    RemoveGitLabConnectedRepositoryRequest = {
      description = "RPC request object accepted by RemoveGitLabConnectedRepository RPC method.",
      id = "RemoveGitLabConnectedRepositoryRequest",
      properties = {
        connectedRepository = {
          ["$ref"] = "GitLabRepositoryId",
          description = "The connected repository to remove.",
        },
      },
      type = "object",
    },
    RepoSource = {
      description = "Location of the source in a Google Cloud Source Repository.",
      id = "RepoSource",
      properties = {
        branchName = {
          description = "Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax",
          type = "string",
        },
        commitSha = {
          description = "Explicit commit SHA to build.",
          type = "string",
        },
        dir = {
          description = "Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.",
          type = "string",
        },
        invertRegex = {
          description = "Only trigger a build if the revision regex does NOT match the revision regex.",
          type = "boolean",
        },
        projectId = {
          description = "ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.",
          type = "string",
        },
        repoName = {
          description = "Name of the Cloud Source Repository.",
          type = "string",
        },
        substitutions = {
          additionalProperties = {
            type = "string",
          },
          description = "Substitutions to use in a triggered build. Should only be used with RunBuildTrigger",
          type = "object",
        },
        tagName = {
          description = "Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax",
          type = "string",
        },
      },
      type = "object",
    },
    RepositoryEventConfig = {
      description = "The configuration of a trigger that creates a build whenever an event from Repo API is received.",
      id = "RepositoryEventConfig",
      properties = {
        pullRequest = {
          ["$ref"] = "PullRequestFilter",
          description = "Filter to match changes in pull requests.",
        },
        push = {
          ["$ref"] = "PushFilter",
          description = "Filter to match changes in refs like branches, tags.",
        },
        repository = {
          description = "The resource name of the Repo API resource.",
          type = "string",
        },
        repositoryType = {
          description = "Output only. The type of the SCM vendor the repository points to.",
          enum = {
            "REPOSITORY_TYPE_UNSPECIFIED",
            "GITHUB",
            "GITHUB_ENTERPRISE",
            "GITLAB_ENTERPRISE",
          },
          enumDescriptions = {
            "If unspecified, RepositoryType defaults to GITHUB.",
            "The SCM repo is GITHUB.",
            "The SCM repo is GITHUB Enterprise.",
            "The SCM repo is GITLAB Enterprise.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Results = {
      description = "Artifacts created by the build pipeline.",
      id = "Results",
      properties = {
        artifactManifest = {
          description = "Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.",
          type = "string",
        },
        artifactTiming = {
          ["$ref"] = "TimeSpan",
          description = "Time to push all non-container artifacts to Cloud Storage.",
        },
        buildStepImages = {
          description = "List of build step digests, in the order corresponding to build step indices.",
          items = {
            type = "string",
          },
          type = "array",
        },
        buildStepOutputs = {
          description = "List of build step outputs, produced by builder images, in the order corresponding to build step indices. [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders) can produce this output by writing to `$BUILDER_OUTPUT/output`. Only the first 4KB of data is stored.",
          items = {
            format = "byte",
            type = "string",
          },
          type = "array",
        },
        images = {
          description = "Container images that were built as a part of the build.",
          items = {
            ["$ref"] = "BuiltImage",
          },
          type = "array",
        },
        mavenArtifacts = {
          description = "Maven artifacts uploaded to Artifact Registry at the end of the build.",
          items = {
            ["$ref"] = "UploadedMavenArtifact",
          },
          type = "array",
        },
        numArtifacts = {
          description = "Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.",
          format = "int64",
          type = "string",
        },
        pythonPackages = {
          description = "Python artifacts uploaded to Artifact Registry at the end of the build.",
          items = {
            ["$ref"] = "UploadedPythonPackage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RetryBuildRequest = {
      description = "Specifies a build to retry.",
      id = "RetryBuildRequest",
      properties = {
        id = {
          description = "Required. Build ID of the original build.",
          type = "string",
        },
        name = {
          description = "The name of the `Build` to retry. Format: `projects/{project}/locations/{location}/builds/{build}`",
          type = "string",
        },
        projectId = {
          description = "Required. ID of the project.",
          type = "string",
        },
      },
      type = "object",
    },
    RunBuildTriggerRequest = {
      description = "Specifies a build trigger to run and the source to use.",
      id = "RunBuildTriggerRequest",
      properties = {
        projectId = {
          description = "Required. ID of the project.",
          type = "string",
        },
        source = {
          ["$ref"] = "RepoSource",
          description = "Source to build against this trigger. Branch and tag names cannot consist of regular expressions.",
        },
        triggerId = {
          description = "Required. ID of the trigger.",
          type = "string",
        },
      },
      type = "object",
    },
    SMTPDelivery = {
      description = "SMTPDelivery is the delivery configuration for an SMTP (email) notification.",
      id = "SMTPDelivery",
      properties = {
        fromAddress = {
          description = "This is the SMTP account/email that appears in the `From:` of the email. If empty, it is assumed to be sender.",
          type = "string",
        },
        password = {
          ["$ref"] = "NotifierSecretRef",
          description = "The SMTP sender's password.",
        },
        port = {
          description = "The SMTP port of the server.",
          type = "string",
        },
        recipientAddresses = {
          description = "This is the list of addresses to which we send the email (i.e. in the `To:` of the email).",
          items = {
            type = "string",
          },
          type = "array",
        },
        senderAddress = {
          description = "This is the SMTP account/email that is used to send the message.",
          type = "string",
        },
        server = {
          description = "The address of the SMTP server.",
          type = "string",
        },
      },
      type = "object",
    },
    Secret = {
      description = "Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use `kmsKeyName` with `available_secrets` instead of using `kmsKeyName` with `secret`. For instructions see: https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-credentials.",
      id = "Secret",
      properties = {
        kmsKeyName = {
          description = "Cloud KMS key name to use to decrypt these envs.",
          type = "string",
        },
        secretEnv = {
          additionalProperties = {
            format = "byte",
            type = "string",
          },
          description = "Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.",
          type = "object",
        },
      },
      type = "object",
    },
    SecretManagerSecret = {
      description = "Pairs a secret environment variable with a SecretVersion in Secret Manager.",
      id = "SecretManagerSecret",
      properties = {
        env = {
          description = "Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step.",
          type = "string",
        },
        versionName = {
          description = "Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*",
          type = "string",
        },
      },
      type = "object",
    },
    Secrets = {
      description = "Secrets and secret environment variables.",
      id = "Secrets",
      properties = {
        inline = {
          description = "Secrets encrypted with KMS key and the associated secret environment variable.",
          items = {
            ["$ref"] = "InlineSecret",
          },
          type = "array",
        },
        secretManager = {
          description = "Secrets in Secret Manager and associated secret environment variable.",
          items = {
            ["$ref"] = "SecretManagerSecret",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ServiceDirectoryConfig = {
      description = "ServiceDirectoryConfig represents Service Directory configuration for a SCM host connection.",
      id = "ServiceDirectoryConfig",
      properties = {
        service = {
          description = "The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.",
          type = "string",
        },
      },
      type = "object",
    },
    SlackDelivery = {
      description = "SlackDelivery is the delivery configuration for delivering Slack messages via webhooks. See Slack webhook documentation at: https://api.slack.com/messaging/webhooks.",
      id = "SlackDelivery",
      properties = {
        webhookUri = {
          ["$ref"] = "NotifierSecretRef",
          description = "The secret reference for the Slack webhook URI for sending messages to a channel.",
        },
      },
      type = "object",
    },
    Source = {
      description = "Location of the source in a supported storage service.",
      id = "Source",
      properties = {
        repoSource = {
          ["$ref"] = "RepoSource",
          description = "If provided, get the source from this location in a Cloud Source Repository.",
        },
        storageSource = {
          ["$ref"] = "StorageSource",
          description = "If provided, get the source from this location in Google Cloud Storage.",
        },
        storageSourceManifest = {
          ["$ref"] = "StorageSourceManifest",
          description = "If provided, get the source from this manifest in Google Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).",
        },
      },
      type = "object",
    },
    SourceProvenance = {
      description = "Provenance of the source. Ways to find the original source, or verify that some source was used for this build.",
      id = "SourceProvenance",
      properties = {
        fileHashes = {
          additionalProperties = {
            ["$ref"] = "FileHashes",
          },
          description = "Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that `FileHashes` will only be populated if `BuildOptions` has requested a `SourceProvenanceHash`. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (`.tar.gz`), the `FileHash` will be for the single path to that file.",
          readOnly = true,
          type = "object",
        },
        resolvedRepoSource = {
          ["$ref"] = "RepoSource",
          description = "A copy of the build's `source.repo_source`, if exists, with any revisions resolved.",
        },
        resolvedStorageSource = {
          ["$ref"] = "StorageSource",
          description = "A copy of the build's `source.storage_source`, if exists, with any generations resolved.",
        },
        resolvedStorageSourceManifest = {
          ["$ref"] = "StorageSourceManifest",
          description = "A copy of the build's `source.storage_source_manifest`, if exists, with any revisions resolved. This feature is in Preview.",
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
    StorageSource = {
      description = "Location of the source in an archive file in Google Cloud Storage.",
      id = "StorageSource",
      properties = {
        bucket = {
          description = "Google Cloud Storage bucket containing the source (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).",
          type = "string",
        },
        generation = {
          description = "Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.",
          format = "int64",
          type = "string",
        },
        object = {
          description = "Google Cloud Storage object containing the source. This object must be a zipped (`.zip`) or gzipped archive file (`.tar.gz`) containing source to build.",
          type = "string",
        },
      },
      type = "object",
    },
    StorageSourceManifest = {
      description = "Location of the source manifest in Google Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).",
      id = "StorageSourceManifest",
      properties = {
        bucket = {
          description = "Google Cloud Storage bucket containing the source manifest (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).",
          type = "string",
        },
        generation = {
          description = "Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.",
          format = "int64",
          type = "string",
        },
        object = {
          description = "Google Cloud Storage object containing the source manifest. This object must be a JSON file.",
          type = "string",
        },
      },
      type = "object",
    },
    TimeSpan = {
      description = "Start and end times for a build execution phase.",
      id = "TimeSpan",
      properties = {
        endTime = {
          description = "End of time span.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Start of time span.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateBitbucketServerConfigOperationMetadata = {
      description = "Metadata for `UpdateBitbucketServerConfig` operation.",
      id = "UpdateBitbucketServerConfigOperationMetadata",
      properties = {
        bitbucketServerConfig = {
          description = "The resource name of the BitbucketServerConfig to be updated. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.",
          type = "string",
        },
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateGitHubEnterpriseConfigOperationMetadata = {
      description = "Metadata for `UpdateGitHubEnterpriseConfig` operation.",
      id = "UpdateGitHubEnterpriseConfigOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        githubEnterpriseConfig = {
          description = "The resource name of the GitHubEnterprise to be updated. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateGitLabConfigOperationMetadata = {
      description = "Metadata for `UpdateGitLabConfig` operation.",
      id = "UpdateGitLabConfigOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        gitlabConfig = {
          description = "The resource name of the GitLabConfig to be created. Format: `projects/{project}/locations/{location}/gitlabConfigs/{id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateWorkerPoolOperationMetadata = {
      description = "Metadata for the `UpdateWorkerPool` operation.",
      id = "UpdateWorkerPoolOperationMetadata",
      properties = {
        completeTime = {
          description = "Time the operation was completed.",
          format = "google-datetime",
          type = "string",
        },
        createTime = {
          description = "Time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        workerPool = {
          description = "The resource name of the `WorkerPool` being updated. Format: `projects/{project}/locations/{location}/workerPools/{worker_pool}`.",
          type = "string",
        },
      },
      type = "object",
    },
    UploadedMavenArtifact = {
      description = "A Maven artifact uploaded using the MavenArtifact directive.",
      id = "UploadedMavenArtifact",
      properties = {
        fileHashes = {
          ["$ref"] = "FileHashes",
          description = "Hash types and values of the Maven Artifact.",
        },
        pushTiming = {
          ["$ref"] = "TimeSpan",
          description = "Output only. Stores timing information for pushing the specified artifact.",
          readOnly = true,
        },
        uri = {
          description = "URI of the uploaded artifact.",
          type = "string",
        },
      },
      type = "object",
    },
    UploadedPythonPackage = {
      description = "Artifact uploaded using the PythonPackage directive.",
      id = "UploadedPythonPackage",
      properties = {
        fileHashes = {
          ["$ref"] = "FileHashes",
          description = "Hash types and values of the Python Artifact.",
        },
        pushTiming = {
          ["$ref"] = "TimeSpan",
          description = "Output only. Stores timing information for pushing the specified artifact.",
          readOnly = true,
        },
        uri = {
          description = "URI of the uploaded artifact.",
          type = "string",
        },
      },
      type = "object",
    },
    Volume = {
      description = "Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.",
      id = "Volume",
      properties = {
        name = {
          description = "Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.",
          type = "string",
        },
        path = {
          description = "Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.",
          type = "string",
        },
      },
      type = "object",
    },
    Warning = {
      description = "A non-fatal problem encountered during the execution of the build.",
      id = "Warning",
      properties = {
        priority = {
          description = "The priority for this warning.",
          enum = {
            "PRIORITY_UNSPECIFIED",
            "INFO",
            "WARNING",
            "ALERT",
          },
          enumDescriptions = {
            "Should not be used.",
            "e.g. deprecation warnings and alternative feature highlights.",
            "e.g. automated detection of possible issues with the build.",
            "e.g. alerts that a feature used in the build is pending removal",
          },
          type = "string",
        },
        text = {
          description = "Explanation of the warning generated.",
          type = "string",
        },
      },
      type = "object",
    },
    WebhookConfig = {
      description = "WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger's webhook URL.",
      id = "WebhookConfig",
      properties = {
        secret = {
          description = "Required. Resource name for the secret required as a URL parameter.",
          type = "string",
        },
        state = {
          description = "Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.",
          enum = {
            "STATE_UNSPECIFIED",
            "OK",
            "SECRET_DELETED",
          },
          enumDescriptions = {
            "The webhook auth configuration not been checked.",
            "The auth configuration is properly setup.",
            "The secret provided in auth_method has been deleted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    WorkerConfig = {
      description = "Defines the configuration to be used for creating workers in the pool.",
      id = "WorkerConfig",
      properties = {
        diskSizeGb = {
          description = "Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.",
          format = "int64",
          type = "string",
        },
        machineType = {
          description = "Machine type of a worker, such as `e2-medium`. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will use a sensible default.",
          type = "string",
        },
      },
      type = "object",
    },
    WorkerPool = {
      description = "Configuration for a `WorkerPool`. Cloud Build owns and maintains a pool of workers for general use and have no access to a project's private network. By default, builds submitted to Cloud Build will use a worker from this pool. If your build needs access to resources on a private network, create and use a `WorkerPool` to run your builds. Private `WorkerPool`s give your builds access to any single VPC network that you administer, including any on-prem resources connected to that VPC network. For an overview of private pools, see [Private pools overview](https://cloud.google.com/build/docs/private-pools/private-pools-overview).",
      id = "WorkerPool",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "User specified annotations. See https://google.aip.dev/128#annotations for more details such as format and size limitations.",
          type = "object",
        },
        createTime = {
          description = "Output only. Time at which the request to create the `WorkerPool` was received.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. Time at which the request to delete the `WorkerPool` was received.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "A user-specified, human-readable name for the `WorkerPool`. If provided, this value must be 1-63 characters.",
          type = "string",
        },
        etag = {
          description = "Output only. Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the `WorkerPool`, with format `projects/{project}/locations/{location}/workerPools/{worker_pool}`. The value of `{worker_pool}` is provided by `worker_pool_id` in `CreateWorkerPool` request and the value of `{location}` is determined by the endpoint accessed.",
          readOnly = true,
          type = "string",
        },
        privatePoolV1Config = {
          ["$ref"] = "PrivatePoolV1Config",
          description = "Legacy Private Pool configuration.",
        },
        state = {
          description = "Output only. `WorkerPool` state.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "RUNNING",
            "DELETING",
            "DELETED",
            "UPDATING",
          },
          enumDescriptions = {
            "State of the `WorkerPool` is unknown.",
            "`WorkerPool` is being created.",
            "`WorkerPool` is running.",
            "`WorkerPool` is being deleted: cancelling builds and draining workers.",
            "`WorkerPool` is deleted.",
            "`WorkerPool` is being updated; new builds cannot be run.",
          },
          readOnly = true,
          type = "string",
        },
        uid = {
          description = "Output only. A unique identifier for the `WorkerPool`.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Time at which the request to update the `WorkerPool` was received.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Build API",
  version = "v1",
  version_module = true,
}