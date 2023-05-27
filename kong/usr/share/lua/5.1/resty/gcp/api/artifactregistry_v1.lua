return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://artifactregistry.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Artifact Registry",
  description = "Store and manage build artifacts in a scalable and integrated service built on Google infrastructure.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/artifacts/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "artifactregistry:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://artifactregistry.mtls.googleapis.com/",
  name = "artifactregistry",
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
        getProjectSettings = {
          description = "Retrieves the Settings for the Project.",
          flatPath = "v1/projects/{projectsId}/projectSettings",
          httpMethod = "GET",
          id = "artifactregistry.projects.getProjectSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the projectSettings resource.",
              location = "path",
              pattern = "^projects/[^/]+/projectSettings$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "ProjectSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        updateProjectSettings = {
          description = "Updates the Settings for the Project.",
          flatPath = "v1/projects/{projectsId}/projectSettings",
          httpMethod = "PATCH",
          id = "artifactregistry.projects.updateProjectSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the project's settings. Always of the form: projects/{project-id}/projectSettings In update request: never set In response: always set",
              location = "path",
              pattern = "^projects/[^/]+/projectSettings$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Field mask to support partial updates.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "ProjectSettings",
          },
          response = {
            ["$ref"] = "ProjectSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "artifactregistry.projects.locations.get",
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
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "artifactregistry.projects.locations.list",
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
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
          resources = {
            operations = {
              methods = {
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "artifactregistry.projects.locations.operations.get",
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
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
              },
            },
            repositories = {
              methods = {
                create = {
                  description = "Creates a repository. The returned Operation will finish once the repository has been created. Its response will be the created Repository.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories",
                  httpMethod = "POST",
                  id = "artifactregistry.projects.locations.repositories.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the parent resource where the repository will be created.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    repositoryId = {
                      description = "The repository id to use for this repository.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/repositories",
                  request = {
                    ["$ref"] = "Repository",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a repository and all of its contents. The returned Operation will finish once the repository has been deleted. It will not have any Operation metadata and will return a google.protobuf.Empty response.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}",
                  httpMethod = "DELETE",
                  id = "artifactregistry.projects.locations.repositories.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the repository to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
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
                  description = "Gets a repository.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}",
                  httpMethod = "GET",
                  id = "artifactregistry.projects.locations.repositories.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the repository to retrieve.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Repository",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                getIamPolicy = {
                  description = "Gets the IAM policy for a given resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}:getIamPolicy",
                  httpMethod = "GET",
                  id = "artifactregistry.projects.locations.repositories.getIamPolicy",
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
                      pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                list = {
                  description = "Lists repositories.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories",
                  httpMethod = "GET",
                  id = "artifactregistry.projects.locations.repositories.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of repositories to return. Maximum page size is 1,000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The next_page_token value returned from a previous list request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the parent resource whose repositories will be listed.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/repositories",
                  response = {
                    ["$ref"] = "ListRepositoriesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                patch = {
                  description = "Updates a repository.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}",
                  httpMethod = "PATCH",
                  id = "artifactregistry.projects.locations.repositories.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the repository, for example: \"projects/p1/locations/us-central1/repositories/repo1\".",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Repository",
                  },
                  response = {
                    ["$ref"] = "Repository",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Updates the IAM policy for a given resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "artifactregistry.projects.locations.repositories.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
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
                  description = "Tests if the caller has a list of permissions on a resource.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "artifactregistry.projects.locations.repositories.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
              },
              resources = {
                aptArtifacts = {
                  methods = {
                    import = {
                      description = "Imports Apt artifacts. The returned Operation will complete once the resources are imported. Package, Version, and File resources are created based on the imported artifacts. Imported artifacts that conflict with existing resources are ignored.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/aptArtifacts:import",
                      httpMethod = "POST",
                      id = "artifactregistry.projects.locations.repositories.aptArtifacts.import",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The name of the parent resource where the artifacts will be imported.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/aptArtifacts:import",
                      request = {
                        ["$ref"] = "ImportAptArtifactsRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    upload = {
                      description = "Directly uploads an Apt artifact. The returned Operation will complete once the resources are uploaded. Package, Version, and File resources are created based on the imported artifact. Imported artifacts that conflict with existing resources are ignored.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/aptArtifacts:create",
                      httpMethod = "POST",
                      id = "artifactregistry.projects.locations.repositories.aptArtifacts.upload",
                      mediaUpload = {
                        accept = {
                          "*/*",
                        },
                        protocols = {
                          simple = {
                            multipart = true,
                            path = "/upload/v1/{+parent}/aptArtifacts:create",
                          },
                        },
                      },
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The name of the parent resource where the artifacts will be uploaded.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/aptArtifacts:create",
                      request = {
                        ["$ref"] = "UploadAptArtifactRequest",
                      },
                      response = {
                        ["$ref"] = "UploadAptArtifactMediaResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                      supportsMediaUpload = true,
                    },
                  },
                },
                dockerImages = {
                  methods = {
                    get = {
                      description = "Gets a docker image.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/dockerImages/{dockerImagesId}",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.dockerImages.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the docker images.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/dockerImages/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "DockerImage",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                    list = {
                      description = "Lists docker images.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/dockerImages",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.dockerImages.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        orderBy = {
                          description = "The field to order the results by.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of artifacts to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the parent resource whose docker images will be listed.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/dockerImages",
                      response = {
                        ["$ref"] = "ListDockerImagesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                  },
                },
                files = {
                  methods = {
                    get = {
                      description = "Gets a file.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/files/{filesId}",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.files.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the file to retrieve.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/files/.*$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleDevtoolsArtifactregistryV1File",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                    list = {
                      description = "Lists files.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/files",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.files.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are: * `name` * `owner` An example of using a filter: * `name=\"projects/p1/locations/us-central1/repositories/repo1/files/a/b/*\"` --> Files with an ID starting with \"a/b/\". * `owner=\"projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/1.0\"` --> Files owned by the version `1.0` in package `pkg1`.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "The field to order the results by.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of files to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "The name of the repository whose files will be listed. For example: \"projects/p1/locations/us-central1/repositories/repo1",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/files",
                      response = {
                        ["$ref"] = "ListFilesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                  },
                },
                kfpArtifacts = {
                  methods = {
                    upload = {
                      description = "Directly uploads a KFP artifact. The returned Operation will complete once the resource is uploaded. Package, Version, and File resources will be created based on the uploaded artifact. Uploaded artifacts that conflict with existing resources will be overwritten.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/kfpArtifacts:create",
                      httpMethod = "POST",
                      id = "artifactregistry.projects.locations.repositories.kfpArtifacts.upload",
                      mediaUpload = {
                        accept = {
                          "*/*",
                        },
                        protocols = {
                          simple = {
                            multipart = true,
                            path = "/upload/v1/{+parent}/kfpArtifacts:create",
                          },
                        },
                      },
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The resource name of the repository where the KFP artifact will be uploaded.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/kfpArtifacts:create",
                      request = {
                        ["$ref"] = "UploadKfpArtifactRequest",
                      },
                      response = {
                        ["$ref"] = "UploadKfpArtifactMediaResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                      supportsMediaUpload = true,
                    },
                  },
                },
                mavenArtifacts = {
                  methods = {
                    get = {
                      description = "Gets a maven artifact.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/mavenArtifacts/{mavenArtifactsId}",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.mavenArtifacts.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the maven artifact.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/mavenArtifacts/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "MavenArtifact",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                    list = {
                      description = "Lists maven artifacts.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/mavenArtifacts",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.mavenArtifacts.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of artifacts to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the parent resource whose maven artifacts will be listed.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/mavenArtifacts",
                      response = {
                        ["$ref"] = "ListMavenArtifactsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                  },
                },
                npmPackages = {
                  methods = {
                    get = {
                      description = "Gets a npm package.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/npmPackages/{npmPackagesId}",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.npmPackages.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the npm package.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/npmPackages/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "NpmPackage",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                    list = {
                      description = "Lists npm packages.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/npmPackages",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.npmPackages.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of artifacts to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the parent resource whose npm packages will be listed.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/npmPackages",
                      response = {
                        ["$ref"] = "ListNpmPackagesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                  },
                },
                packages = {
                  methods = {
                    delete = {
                      description = "Deletes a package and all of its versions and tags. The returned operation will complete once the package has been deleted.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}",
                      httpMethod = "DELETE",
                      id = "artifactregistry.projects.locations.repositories.packages.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the package to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+$",
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
                      description = "Gets a package.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.packages.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the package to retrieve.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Package",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                    list = {
                      description = "Lists packages.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.packages.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of packages to return. Maximum page size is 1,000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the parent resource whose packages will be listed.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/packages",
                      response = {
                        ["$ref"] = "ListPackagesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                  },
                  resources = {
                    tags = {
                      methods = {
                        create = {
                          description = "Creates a tag.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}/tags",
                          httpMethod = "POST",
                          id = "artifactregistry.projects.locations.repositories.packages.tags.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "The name of the parent resource where the tag will be created.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            tagId = {
                              description = "The tag id to use for this repository.",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/tags",
                          request = {
                            ["$ref"] = "Tag",
                          },
                          response = {
                            ["$ref"] = "Tag",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes a tag.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}/tags/{tagsId}",
                          httpMethod = "DELETE",
                          id = "artifactregistry.projects.locations.repositories.packages.tags.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the tag to delete.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+/tags/[^/]+$",
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
                          description = "Gets a tag.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}/tags/{tagsId}",
                          httpMethod = "GET",
                          id = "artifactregistry.projects.locations.repositories.packages.tags.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the tag to retrieve.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+/tags/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Tag",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                          },
                        },
                        list = {
                          description = "Lists tags.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}/tags",
                          httpMethod = "GET",
                          id = "artifactregistry.projects.locations.repositories.packages.tags.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for filtering are: * `version` An example of using a filter: * `version=\"projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/1.0\"` --> Tags that are applied to the version `1.0` in package `pkg1`.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of tags to return. Maximum page size is 10,000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request, if any.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "The name of the parent resource whose tags will be listed.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/tags",
                          response = {
                            ["$ref"] = "ListTagsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                          },
                        },
                        patch = {
                          description = "Updates a tag.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}/tags/{tagsId}",
                          httpMethod = "PATCH",
                          id = "artifactregistry.projects.locations.repositories.packages.tags.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the tag, for example: \"projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1\". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\\-._~:@], anything else must be URL encoded.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+/tags/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "Tag",
                          },
                          response = {
                            ["$ref"] = "Tag",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    versions = {
                      methods = {
                        delete = {
                          description = "Deletes a version and all of its content. The returned operation will complete once the version has been deleted.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}/versions/{versionsId}",
                          httpMethod = "DELETE",
                          id = "artifactregistry.projects.locations.repositories.packages.versions.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            force = {
                              description = "By default, a version that is tagged may not be deleted. If force=true, the version and any tags pointing to the version are deleted.",
                              location = "query",
                              type = "boolean",
                            },
                            name = {
                              description = "The name of the version to delete.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+/versions/[^/]+$",
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
                          description = "Gets a version",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}/versions/{versionsId}",
                          httpMethod = "GET",
                          id = "artifactregistry.projects.locations.repositories.packages.versions.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "The name of the version to retrieve.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+/versions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "The view that should be returned in the response.",
                              enum = {
                                "VERSION_VIEW_UNSPECIFIED",
                                "BASIC",
                                "FULL",
                              },
                              enumDescriptions = {
                                "The default / unset value. The API will default to the BASIC view.",
                                "Includes basic information about the version, but not any related tags.",
                                "Include everything.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Version",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                          },
                        },
                        list = {
                          description = "Lists versions.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/packages/{packagesId}/versions",
                          httpMethod = "GET",
                          id = "artifactregistry.projects.locations.repositories.packages.versions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            orderBy = {
                              description = "Optional. The field to order the results by.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "The maximum number of versions to return. Maximum page size is 1,000.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "The next_page_token value returned from a previous list request, if any.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "The name of the parent resource whose versions will be listed.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/packages/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            view = {
                              description = "The view that should be returned in the response.",
                              enum = {
                                "VERSION_VIEW_UNSPECIFIED",
                                "BASIC",
                                "FULL",
                              },
                              enumDescriptions = {
                                "The default / unset value. The API will default to the BASIC view.",
                                "Includes basic information about the version, but not any related tags.",
                                "Include everything.",
                              },
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/versions",
                          response = {
                            ["$ref"] = "ListVersionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/cloud-platform.read-only",
                          },
                        },
                      },
                    },
                  },
                },
                pythonPackages = {
                  methods = {
                    get = {
                      description = "Gets a python package.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/pythonPackages/{pythonPackagesId}",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.pythonPackages.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the python package.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+/pythonPackages/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "PythonPackage",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                    list = {
                      description = "Lists python packages.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/pythonPackages",
                      httpMethod = "GET",
                      id = "artifactregistry.projects.locations.repositories.pythonPackages.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of artifacts to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The next_page_token value returned from a previous list request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The name of the parent resource whose python packages will be listed.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/pythonPackages",
                      response = {
                        ["$ref"] = "ListPythonPackagesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                  },
                },
                yumArtifacts = {
                  methods = {
                    import = {
                      description = "Imports Yum (RPM) artifacts. The returned Operation will complete once the resources are imported. Package, Version, and File resources are created based on the imported artifacts. Imported artifacts that conflict with existing resources are ignored.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/yumArtifacts:import",
                      httpMethod = "POST",
                      id = "artifactregistry.projects.locations.repositories.yumArtifacts.import",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The name of the parent resource where the artifacts will be imported.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/yumArtifacts:import",
                      request = {
                        ["$ref"] = "ImportYumArtifactsRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    upload = {
                      description = "Directly uploads a Yum artifact. The returned Operation will complete once the resources are uploaded. Package, Version, and File resources are created based on the imported artifact. Imported artifacts that conflict with existing resources are ignored.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/yumArtifacts:create",
                      httpMethod = "POST",
                      id = "artifactregistry.projects.locations.repositories.yumArtifacts.upload",
                      mediaUpload = {
                        accept = {
                          "*/*",
                        },
                        protocols = {
                          simple = {
                            multipart = true,
                            path = "/upload/v1/{+parent}/yumArtifacts:create",
                          },
                        },
                      },
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "The name of the parent resource where the artifacts will be uploaded.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/repositories/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/yumArtifacts:create",
                      request = {
                        ["$ref"] = "UploadYumArtifactRequest",
                      },
                      response = {
                        ["$ref"] = "UploadYumArtifactMediaResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                      supportsMediaUpload = true,
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
  revision = "20230111",
  rootUrl = "https://artifactregistry.googleapis.com/",
  schemas = {
    AptArtifact = {
      description = "A detailed representation of an Apt artifact. Information in the record is derived from the archive's control file. See https://www.debian.org/doc/debian-policy/ch-controlfields.html",
      id = "AptArtifact",
      properties = {
        architecture = {
          description = "Output only. Operating system architecture of the artifact.",
          readOnly = true,
          type = "string",
        },
        component = {
          description = "Output only. Repository component of the artifact.",
          readOnly = true,
          type = "string",
        },
        controlFile = {
          description = "Output only. Contents of the artifact's control metadata file.",
          format = "byte",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The Artifact Registry resource name of the artifact.",
          readOnly = true,
          type = "string",
        },
        packageName = {
          description = "Output only. The Apt package name of the artifact.",
          readOnly = true,
          type = "string",
        },
        packageType = {
          description = "Output only. An artifact is a binary or source package.",
          enum = {
            "PACKAGE_TYPE_UNSPECIFIED",
            "BINARY",
            "SOURCE",
          },
          enumDescriptions = {
            "Package type is not specified.",
            "Binary package.",
            "Source package.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    BatchDeleteVersionsMetadata = {
      description = "The metadata of an LRO from deleting multiple versions.",
      id = "BatchDeleteVersionsMetadata",
      properties = {
        failedVersions = {
          description = "The versions the operation failed to delete.",
          items = {
            type = "string",
          },
          type = "array",
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
    DockerImage = {
      description = "DockerImage represents a docker artifact. The following fields are returned as untyped metadata in the Version resource, using camelcase keys (i.e. metadata.imageSizeBytes): * imageSizeBytes * mediaType * buildTime",
      id = "DockerImage",
      properties = {
        buildTime = {
          description = "The time this image was built. This field is returned as the 'metadata.buildTime' field in the Version resource. The build time is returned to the client as an RFC 3339 string, which can be easily used with the JavaScript Date constructor.",
          format = "google-datetime",
          type = "string",
        },
        imageSizeBytes = {
          description = "Calculated size of the image. This field is returned as the 'metadata.imageSizeBytes' field in the Version resource.",
          format = "int64",
          type = "string",
        },
        mediaType = {
          description = "Media type of this image, e.g. \"application/vnd.docker.distribution.manifest.v2+json\". This field is returned as the 'metadata.mediaType' field in the Version resource.",
          type = "string",
        },
        name = {
          description = "Required. registry_location, project_id, repository_name and image id forms a unique image name:`projects//locations//repository//dockerImages/`. For example, \"projects/test-project/locations/us-west4/repositories/test-repo/dockerImages/ nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf\", where \"us-west4\" is the registry_location, \"test-project\" is the project_id, \"test-repo\" is the repository_name and \"nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf\" is the image's digest.",
          type = "string",
        },
        tags = {
          description = "Tags attached to this image.",
          items = {
            type = "string",
          },
          type = "array",
        },
        updateTime = {
          description = "Output only. The time when the docker image was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        uploadTime = {
          description = "Time the image was uploaded.",
          format = "google-datetime",
          type = "string",
        },
        uri = {
          description = "Required. URL to access the image. Example: us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf",
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
    GoogleDevtoolsArtifactregistryV1File = {
      description = "Files store content that is potentially associated with Packages or Versions.",
      id = "GoogleDevtoolsArtifactregistryV1File",
      properties = {
        createTime = {
          description = "The time when the File was created.",
          format = "google-datetime",
          type = "string",
        },
        hashes = {
          description = "The hashes of the file content.",
          items = {
            ["$ref"] = "Hash",
          },
          type = "array",
        },
        name = {
          description = "The name of the file, for example: \"projects/p1/locations/us-central1/repositories/repo1/files/a%2Fb%2Fc.txt\". If the file ID part contains slashes, they are escaped.",
          type = "string",
        },
        owner = {
          description = "The name of the Package or Version that owns this file, if any.",
          type = "string",
        },
        sizeBytes = {
          description = "The size of the File in bytes.",
          format = "int64",
          type = "string",
        },
        updateTime = {
          description = "The time when the File was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Hash = {
      description = "A hash of file content.",
      id = "Hash",
      properties = {
        type = {
          description = "The algorithm used to compute the hash value.",
          enum = {
            "HASH_TYPE_UNSPECIFIED",
            "SHA256",
            "MD5",
          },
          enumDescriptions = {
            "Unspecified.",
            "SHA256 hash.",
            "MD5 hash.",
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
    ImportAptArtifactsErrorInfo = {
      description = "Error information explaining why a package was not imported.",
      id = "ImportAptArtifactsErrorInfo",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "The detailed error status.",
        },
        gcsSource = {
          ["$ref"] = "ImportAptArtifactsGcsSource",
          description = "Google Cloud Storage location requested.",
        },
      },
      type = "object",
    },
    ImportAptArtifactsGcsSource = {
      description = "Google Cloud Storage location where the artifacts currently reside.",
      id = "ImportAptArtifactsGcsSource",
      properties = {
        uris = {
          description = "Cloud Storage paths URI (e.g., gs://my_bucket//my_object).",
          items = {
            type = "string",
          },
          type = "array",
        },
        useWildcards = {
          description = "Supports URI wildcards for matching multiple objects from a single URI.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ImportAptArtifactsMetadata = {
      description = "The operation metadata for importing artifacts.",
      id = "ImportAptArtifactsMetadata",
      properties = {},
      type = "object",
    },
    ImportAptArtifactsRequest = {
      description = "The request to import new apt artifacts.",
      id = "ImportAptArtifactsRequest",
      properties = {
        gcsSource = {
          ["$ref"] = "ImportAptArtifactsGcsSource",
          description = "Google Cloud Storage location where input content is located.",
        },
      },
      type = "object",
    },
    ImportAptArtifactsResponse = {
      description = "The response message from importing APT artifacts.",
      id = "ImportAptArtifactsResponse",
      properties = {
        aptArtifacts = {
          description = "The Apt artifacts imported.",
          items = {
            ["$ref"] = "AptArtifact",
          },
          type = "array",
        },
        errors = {
          description = "Detailed error info for packages that were not imported.",
          items = {
            ["$ref"] = "ImportAptArtifactsErrorInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ImportYumArtifactsErrorInfo = {
      description = "Error information explaining why a package was not imported.",
      id = "ImportYumArtifactsErrorInfo",
      properties = {
        error = {
          ["$ref"] = "Status",
          description = "The detailed error status.",
        },
        gcsSource = {
          ["$ref"] = "ImportYumArtifactsGcsSource",
          description = "Google Cloud Storage location requested.",
        },
      },
      type = "object",
    },
    ImportYumArtifactsGcsSource = {
      description = "Google Cloud Storage location where the artifacts currently reside.",
      id = "ImportYumArtifactsGcsSource",
      properties = {
        uris = {
          description = "Cloud Storage paths URI (e.g., gs://my_bucket//my_object).",
          items = {
            type = "string",
          },
          type = "array",
        },
        useWildcards = {
          description = "Supports URI wildcards for matching multiple objects from a single URI.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ImportYumArtifactsMetadata = {
      description = "The operation metadata for importing artifacts.",
      id = "ImportYumArtifactsMetadata",
      properties = {},
      type = "object",
    },
    ImportYumArtifactsRequest = {
      description = "The request to import new yum artifacts.",
      id = "ImportYumArtifactsRequest",
      properties = {
        gcsSource = {
          ["$ref"] = "ImportYumArtifactsGcsSource",
          description = "Google Cloud Storage location where input content is located.",
        },
      },
      type = "object",
    },
    ImportYumArtifactsResponse = {
      description = "The response message from importing YUM artifacts.",
      id = "ImportYumArtifactsResponse",
      properties = {
        errors = {
          description = "Detailed error info for packages that were not imported.",
          items = {
            ["$ref"] = "ImportYumArtifactsErrorInfo",
          },
          type = "array",
        },
        yumArtifacts = {
          description = "The yum artifacts imported.",
          items = {
            ["$ref"] = "YumArtifact",
          },
          type = "array",
        },
      },
      type = "object",
    },
    KfpArtifact = {
      description = "A detailed representation of a GooGet artifact.",
      id = "KfpArtifact",
      properties = {
        name = {
          description = "Output only. Resource name of the KFP artifact. Since users don't directly interact with this resource, the name will be derived from the associated version. For example, when version = \".../versions/sha256:abcdef...\", the name will be \".../kfpArtifacts/sha256:abcdef...\".",
          readOnly = true,
          type = "string",
        },
        version = {
          description = "The version associated with the KFP artifact. Must follow the Semantic Versioning standard.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDockerImagesResponse = {
      description = "The response from listing docker images.",
      id = "ListDockerImagesResponse",
      properties = {
        dockerImages = {
          description = "The docker images returned.",
          items = {
            ["$ref"] = "DockerImage",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token to retrieve the next page of artifacts, or empty if there are no more artifacts to return.",
          type = "string",
        },
      },
      type = "object",
    },
    ListFilesResponse = {
      description = "The response from listing files.",
      id = "ListFilesResponse",
      properties = {
        files = {
          description = "The files returned.",
          items = {
            ["$ref"] = "GoogleDevtoolsArtifactregistryV1File",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token to retrieve the next page of files, or empty if there are no more files to return.",
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
    ListMavenArtifactsResponse = {
      description = "The response from listing maven artifacts.",
      id = "ListMavenArtifactsResponse",
      properties = {
        mavenArtifacts = {
          description = "The maven artifacts returned.",
          items = {
            ["$ref"] = "MavenArtifact",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token to retrieve the next page of artifacts, or empty if there are no more artifacts to return.",
          type = "string",
        },
      },
      type = "object",
    },
    ListNpmPackagesResponse = {
      description = "The response from listing npm packages.",
      id = "ListNpmPackagesResponse",
      properties = {
        nextPageToken = {
          description = "The token to retrieve the next page of artifacts, or empty if there are no more artifacts to return.",
          type = "string",
        },
        npmPackages = {
          description = "The npm packages returned.",
          items = {
            ["$ref"] = "NpmPackage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPackagesResponse = {
      description = "The response from listing packages.",
      id = "ListPackagesResponse",
      properties = {
        nextPageToken = {
          description = "The token to retrieve the next page of packages, or empty if there are no more packages to return.",
          type = "string",
        },
        packages = {
          description = "The packages returned.",
          items = {
            ["$ref"] = "Package",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPythonPackagesResponse = {
      description = "The response from listing python packages.",
      id = "ListPythonPackagesResponse",
      properties = {
        nextPageToken = {
          description = "The token to retrieve the next page of artifacts, or empty if there are no more artifacts to return.",
          type = "string",
        },
        pythonPackages = {
          description = "The python packages returned.",
          items = {
            ["$ref"] = "PythonPackage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListRepositoriesResponse = {
      description = "The response from listing repositories.",
      id = "ListRepositoriesResponse",
      properties = {
        nextPageToken = {
          description = "The token to retrieve the next page of repositories, or empty if there are no more repositories to return.",
          type = "string",
        },
        repositories = {
          description = "The repositories returned.",
          items = {
            ["$ref"] = "Repository",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTagsResponse = {
      description = "The response from listing tags.",
      id = "ListTagsResponse",
      properties = {
        nextPageToken = {
          description = "The token to retrieve the next page of tags, or empty if there are no more tags to return.",
          type = "string",
        },
        tags = {
          description = "The tags returned.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVersionsResponse = {
      description = "The response from listing versions.",
      id = "ListVersionsResponse",
      properties = {
        nextPageToken = {
          description = "The token to retrieve the next page of versions, or empty if there are no more versions to return.",
          type = "string",
        },
        versions = {
          description = "The versions returned.",
          items = {
            ["$ref"] = "Version",
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
    MavenArtifact = {
      description = "MavenArtifact represents a maven artifact.",
      id = "MavenArtifact",
      properties = {
        artifactId = {
          description = "Artifact ID for the artifact.",
          type = "string",
        },
        createTime = {
          description = "Output only. Time the artifact was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        groupId = {
          description = "Group ID for the artifact. Example: com.google.guava",
          type = "string",
        },
        name = {
          description = "Required. registry_location, project_id, repository_name and maven_artifact forms a unique artifact For example, \"projects/test-project/locations/us-west4/repositories/test-repo/mavenArtifacts/ com.google.guava:guava:31.0-jre\", where \"us-west4\" is the registry_location, \"test-project\" is the project_id, \"test-repo\" is the repository_name and \"com.google.guava:guava:31.0-jre\" is the maven artifact.",
          type = "string",
        },
        pomUri = {
          description = "Required. URL to access the pom file of the artifact. Example: us-west4-maven.pkg.dev/test-project/test-repo/com/google/guava/guava/31.0/guava-31.0.pom",
          type = "string",
        },
        updateTime = {
          description = "Output only. Time the artifact was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        version = {
          description = "Version of this artifact.",
          type = "string",
        },
      },
      type = "object",
    },
    MavenRepositoryConfig = {
      description = "MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.",
      id = "MavenRepositoryConfig",
      properties = {
        allowSnapshotOverwrites = {
          description = "The repository with this flag will allow publishing the same snapshot versions.",
          type = "boolean",
        },
        versionPolicy = {
          description = "Version policy defines the versions that the registry will accept.",
          enum = {
            "VERSION_POLICY_UNSPECIFIED",
            "RELEASE",
            "SNAPSHOT",
          },
          enumDescriptions = {
            "VERSION_POLICY_UNSPECIFIED - the version policy is not defined. When the version policy is not defined, no validation is performed for the versions.",
            "RELEASE - repository will accept only Release versions.",
            "SNAPSHOT - repository will accept only Snapshot versions.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NpmPackage = {
      description = "NpmPackage represents an npm artifact.",
      id = "NpmPackage",
      properties = {
        createTime = {
          description = "Output only. Time the package was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Required. registry_location, project_id, repository_name and npm_package forms a unique package For example, \"projects/test-project/locations/us-west4/repositories/test-repo/npmPackages/ npm_test:1.0.0\", where \"us-west4\" is the registry_location, \"test-project\" is the project_id, \"test-repo\" is the repository_name and npm_test:1.0.0\" is the npm package.",
          type = "string",
        },
        packageName = {
          description = "Package for the artifact.",
          type = "string",
        },
        tags = {
          description = "Tags attached to this package.",
          items = {
            type = "string",
          },
          type = "array",
        },
        updateTime = {
          description = "Output only. Time the package was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        version = {
          description = "Version of this package.",
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
      description = "Metadata type for longrunning-operations, currently empty.",
      id = "OperationMetadata",
      properties = {},
      type = "object",
    },
    Package = {
      description = "Packages are named collections of versions.",
      id = "Package",
      properties = {
        createTime = {
          description = "The time when the package was created.",
          format = "google-datetime",
          type = "string",
        },
        displayName = {
          description = "The display name of the package.",
          type = "string",
        },
        name = {
          description = "The name of the package, for example: \"projects/p1/locations/us-central1/repositories/repo1/packages/pkg1\". If the package ID part contains slashes, the slashes are escaped.",
          type = "string",
        },
        updateTime = {
          description = "The time when the package was last updated. This includes publishing a new version of the package.",
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
    ProjectSettings = {
      description = "The Artifact Registry settings that apply to a Project.",
      id = "ProjectSettings",
      properties = {
        legacyRedirectionState = {
          description = "The redirection state of the legacy repositories in this project.",
          enum = {
            "REDIRECTION_STATE_UNSPECIFIED",
            "REDIRECTION_FROM_GCR_IO_DISABLED",
            "REDIRECTION_FROM_GCR_IO_ENABLED",
            "REDIRECTION_FROM_GCR_IO_FINALIZED",
          },
          enumDescriptions = {
            "No redirection status has been set.",
            "Redirection is disabled.",
            "Redirection is enabled.",
            "Redirection is enabled, and has been finalized so cannot be reverted.",
          },
          type = "string",
        },
        name = {
          description = "The name of the project's settings. Always of the form: projects/{project-id}/projectSettings In update request: never set In response: always set",
          type = "string",
        },
      },
      type = "object",
    },
    PythonPackage = {
      description = "PythonPackage represents a python artifact.",
      id = "PythonPackage",
      properties = {
        createTime = {
          description = "Output only. Time the package was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Required. registry_location, project_id, repository_name and python_package forms a unique package name:`projects//locations//repository//pythonPackages/`. For example, \"projects/test-project/locations/us-west4/repositories/test-repo/pythonPackages/ python_package:1.0.0\", where \"us-west4\" is the registry_location, \"test-project\" is the project_id, \"test-repo\" is the repository_name and python_package:1.0.0\" is the python package.",
          type = "string",
        },
        packageName = {
          description = "Package for the artifact.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Time the package was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        uri = {
          description = "Required. URL to access the package. Example: us-west4-python.pkg.dev/test-project/test-repo/python_package/file-name-1.0.0.tar.gz",
          type = "string",
        },
        version = {
          description = "Version of this package.",
          type = "string",
        },
      },
      type = "object",
    },
    Repository = {
      description = "A Repository for storing artifacts with a specific format.",
      id = "Repository",
      properties = {
        createTime = {
          description = "The time when the repository was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "The user-provided description of the repository.",
          type = "string",
        },
        format = {
          description = "The format of packages that are stored in the repository.",
          enum = {
            "FORMAT_UNSPECIFIED",
            "DOCKER",
            "MAVEN",
            "NPM",
            "APT",
            "YUM",
            "PYTHON",
            "KFP",
          },
          enumDescriptions = {
            "Unspecified package format.",
            "Docker package format.",
            "Maven package format.",
            "NPM package format.",
            "APT package format.",
            "YUM package format.",
            "Python package format.",
            "Kubeflow Pipelines package format.",
          },
          type = "string",
        },
        kmsKeyName = {
          description = "The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.",
          type = "object",
        },
        mavenConfig = {
          ["$ref"] = "MavenRepositoryConfig",
          description = "Maven repository config contains repository level configuration for the repositories of maven type.",
        },
        name = {
          description = "The name of the repository, for example: \"projects/p1/locations/us-central1/repositories/repo1\".",
          type = "string",
        },
        satisfiesPzs = {
          description = "Output only. If set, the repository satisfies physical zone separation.",
          readOnly = true,
          type = "boolean",
        },
        sizeBytes = {
          description = "Output only. The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "The time when the repository was last updated.",
          format = "google-datetime",
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
    Tag = {
      description = "Tags point to a version and represent an alternative name that can be used to access the version.",
      id = "Tag",
      properties = {
        name = {
          description = "The name of the tag, for example: \"projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1\". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\\-._~:@], anything else must be URL encoded.",
          type = "string",
        },
        version = {
          description = "The name of the version the tag refers to, for example: \"projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811\" If the package or version ID parts contain slashes, the slashes are escaped.",
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
    UploadAptArtifactMediaResponse = {
      description = "The response to upload an artifact.",
      id = "UploadAptArtifactMediaResponse",
      properties = {
        operation = {
          ["$ref"] = "Operation",
          description = "Operation to be returned to the user.",
        },
      },
      type = "object",
    },
    UploadAptArtifactMetadata = {
      description = "The operation metadata for uploading artifacts.",
      id = "UploadAptArtifactMetadata",
      properties = {},
      type = "object",
    },
    UploadAptArtifactRequest = {
      description = "The request to upload an artifact.",
      id = "UploadAptArtifactRequest",
      properties = {},
      type = "object",
    },
    UploadAptArtifactResponse = {
      description = "The response of the completed artifact upload operation. This response is contained in the Operation and available to users.",
      id = "UploadAptArtifactResponse",
      properties = {
        aptArtifacts = {
          description = "The Apt artifacts updated.",
          items = {
            ["$ref"] = "AptArtifact",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UploadKfpArtifactMediaResponse = {
      description = "The response to upload an artifact.",
      id = "UploadKfpArtifactMediaResponse",
      properties = {
        operation = {
          ["$ref"] = "Operation",
          description = "Operation that will be returned to the user.",
        },
      },
      type = "object",
    },
    UploadKfpArtifactMetadata = {
      description = "The operation metadata for uploading KFP artifacts.",
      id = "UploadKfpArtifactMetadata",
      properties = {},
      type = "object",
    },
    UploadKfpArtifactRequest = {
      description = "The request to upload an artifact.",
      id = "UploadKfpArtifactRequest",
      properties = {
        description = {
          description = "Description of the package version.",
          type = "string",
        },
        tags = {
          description = "Tags to be created with the version.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UploadYumArtifactMediaResponse = {
      description = "The response to upload an artifact.",
      id = "UploadYumArtifactMediaResponse",
      properties = {
        operation = {
          ["$ref"] = "Operation",
          description = "Operation to be returned to the user.",
        },
      },
      type = "object",
    },
    UploadYumArtifactMetadata = {
      description = "The operation metadata for uploading artifacts.",
      id = "UploadYumArtifactMetadata",
      properties = {},
      type = "object",
    },
    UploadYumArtifactRequest = {
      description = "The request to upload an artifact.",
      id = "UploadYumArtifactRequest",
      properties = {},
      type = "object",
    },
    UploadYumArtifactResponse = {
      description = "The response of the completed artifact upload operation. This response is contained in the Operation and available to users.",
      id = "UploadYumArtifactResponse",
      properties = {
        yumArtifacts = {
          description = "The Apt artifacts updated.",
          items = {
            ["$ref"] = "YumArtifact",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Version = {
      description = "The body of a version resource. A version resource represents a collection of components, such as files and other data. This may correspond to a version in many package management schemes.",
      id = "Version",
      properties = {
        createTime = {
          description = "The time when the version was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "Optional. Description of the version, as specified in its metadata.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Output only. Repository-specific Metadata stored against this version. The fields returned are defined by the underlying repository-specific resource. Currently, the resources could be: DockerImage MavenArtifact",
          readOnly = true,
          type = "object",
        },
        name = {
          description = "The name of the version, for example: \"projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/art1\". If the package or version ID parts contain slashes, the slashes are escaped.",
          type = "string",
        },
        relatedTags = {
          description = "Output only. A list of related tags. Will contain up to 100 tags that reference this version.",
          items = {
            ["$ref"] = "Tag",
          },
          type = "array",
        },
        updateTime = {
          description = "The time when the version was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    YumArtifact = {
      description = "A detailed representation of a Yum artifact.",
      id = "YumArtifact",
      properties = {
        architecture = {
          description = "Output only. Operating system architecture of the artifact.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The Artifact Registry resource name of the artifact.",
          readOnly = true,
          type = "string",
        },
        packageName = {
          description = "Output only. The yum package name of the artifact.",
          readOnly = true,
          type = "string",
        },
        packageType = {
          description = "Output only. An artifact is a binary or source package.",
          enum = {
            "PACKAGE_TYPE_UNSPECIFIED",
            "BINARY",
            "SOURCE",
          },
          enumDescriptions = {
            "Package type is not specified.",
            "Binary package (.rpm).",
            "Source package (.srpm).",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Artifact Registry API",
  version = "v1",
  version_module = true,
}
