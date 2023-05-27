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
  baseUrl = "https://ml.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Machine Learning Engine",
  description = "An API to enable creating and using machine learning models.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/ml/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "ml:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://ml.mtls.googleapis.com/",
  name = "ml",
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
        explain = {
          description = "Performs explanation on the data in the request. {% dynamic include \"/ai-platform/includes/___explain-request\" %} ",
          flatPath = "v1/projects/{projectsId}:explain",
          httpMethod = "POST",
          id = "ml.projects.explain",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of a model or a version. Authorization: requires the `predict` permission on the specified resource.",
              location = "path",
              pattern = "^projects/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:explain",
          request = {
            ["$ref"] = "GoogleCloudMlV1__ExplainRequest",
          },
          response = {
            ["$ref"] = "GoogleApi__HttpBody",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getConfig = {
          description = "Get the service account information associated with your project. You need this information in order to grant the service account permissions for the Google Cloud Storage location where you put your model training code for training the model with Google Cloud Machine Learning.",
          flatPath = "v1/projects/{projectsId}:getConfig",
          httpMethod = "GET",
          id = "ml.projects.getConfig",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The project name.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:getConfig",
          response = {
            ["$ref"] = "GoogleCloudMlV1__GetConfigResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        predict = {
          description = "Performs online prediction on the data in the request. {% dynamic include \"/ai-platform/includes/___predict-request\" %} ",
          flatPath = "v1/projects/{projectsId}:predict",
          httpMethod = "POST",
          id = "ml.projects.predict",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of a model or a version. Authorization: requires the `predict` permission on the specified resource.",
              location = "path",
              pattern = "^projects/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:predict",
          request = {
            ["$ref"] = "GoogleCloudMlV1__PredictRequest",
          },
          response = {
            ["$ref"] = "GoogleApi__HttpBody",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        jobs = {
          methods = {
            cancel = {
              description = "Cancels a running job.",
              flatPath = "v1/projects/{projectsId}/jobs/{jobsId}:cancel",
              httpMethod = "POST",
              id = "ml.projects.jobs.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the job to cancel.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:cancel",
              request = {
                ["$ref"] = "GoogleCloudMlV1__CancelJobRequest",
              },
              response = {
                ["$ref"] = "GoogleProtobuf__Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a training or a batch prediction job.",
              flatPath = "v1/projects/{projectsId}/jobs",
              httpMethod = "POST",
              id = "ml.projects.jobs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The project name.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/jobs",
              request = {
                ["$ref"] = "GoogleCloudMlV1__Job",
              },
              response = {
                ["$ref"] = "GoogleCloudMlV1__Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Describes a job.",
              flatPath = "v1/projects/{projectsId}/jobs/{jobsId}",
              httpMethod = "GET",
              id = "ml.projects.jobs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the job to get the description of.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudMlV1__Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
              flatPath = "v1/projects/{projectsId}/jobs/{jobsId}:getIamPolicy",
              httpMethod = "GET",
              id = "ml.projects.jobs.getIamPolicy",
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
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:getIamPolicy",
              response = {
                ["$ref"] = "GoogleIamV1__Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the jobs in the project. If there are no jobs that match the request parameters, the list request returns an empty response body: {}.",
              flatPath = "v1/projects/{projectsId}/jobs",
              httpMethod = "GET",
              id = "ml.projects.jobs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Specifies the subset of jobs to retrieve. You can filter on the value of one or more attributes of the job object. For example, retrieve jobs with a job identifier that starts with 'census': gcloud ai-platform jobs list --filter='jobId:census*' List all failed jobs with names that start with 'rnn': gcloud ai-platform jobs list --filter='jobId:rnn* AND state:FAILED' For more examples, see the guide to monitoring jobs.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The number of jobs to retrieve per \"page\" of results. If there are more remaining results than this number, the response message will contain a valid value in the `next_page_token` field. The default value is 20, and the maximum page size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token to request the next page of results. You get the token from the `next_page_token` field of the response from the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project for which to list jobs.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/jobs",
              response = {
                ["$ref"] = "GoogleCloudMlV1__ListJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            patch = {
              description = "Updates a specific job resource. Currently the only supported fields to update are `labels`.",
              flatPath = "v1/projects/{projectsId}/jobs/{jobsId}",
              httpMethod = "PATCH",
              id = "ml.projects.jobs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The job name.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Specifies the path, relative to `Job`, of the field to update. To adopt etag mechanism, include `etag` field in the mask, and include the `etag` value in your job resource. For example, to change the labels of a job, the `update_mask` parameter would be specified as `labels`, `etag`, and the `PATCH` request body would specify the new value, as follows: { \"labels\": { \"owner\": \"Google\", \"color\": \"Blue\" } \"etag\": \"33a64df551425fcc55e4d42a148795d9f25f89d4\" } If `etag` matches the one on the server, the labels of the job will be replaced with the given ones, and the server end `etag` will be recalculated. Currently the only supported update masks are `labels` and `etag`.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudMlV1__Job",
              },
              response = {
                ["$ref"] = "GoogleCloudMlV1__Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
              flatPath = "v1/projects/{projectsId}/jobs/{jobsId}:setIamPolicy",
              httpMethod = "POST",
              id = "ml.projects.jobs.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:setIamPolicy",
              request = {
                ["$ref"] = "GoogleIamV1__SetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1__Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
              flatPath = "v1/projects/{projectsId}/jobs/{jobsId}:testIamPermissions",
              httpMethod = "POST",
              id = "ml.projects.jobs.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:testIamPermissions",
              request = {
                ["$ref"] = "GoogleIamV1__TestIamPermissionsRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1__TestIamPermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        locations = {
          methods = {
            get = {
              description = "Get the complete list of CMLE capabilities in a location, along with their location-specific properties.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "ml.projects.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the location.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudMlV1__Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "List all locations that provides at least one type of CMLE capability.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "ml.projects.locations.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The number of locations to retrieve per \"page\" of results. If there are more remaining results than this number, the response message will contain a valid value in the `next_page_token` field. The default value is 20, and the maximum page size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token to request the next page of results. You get the token from the `next_page_token` field of the response from the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project for which available locations are to be listed (since some locations might be whitelisted for specific projects).",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/locations",
              response = {
                ["$ref"] = "GoogleCloudMlV1__ListLocationsResponse",
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
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "ml.projects.locations.operations.cancel",
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
                  response = {
                    ["$ref"] = "GoogleProtobuf__Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "ml.projects.locations.operations.get",
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
                    ["$ref"] = "GoogleLongrunning__Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            studies = {
              methods = {
                create = {
                  description = "Creates a study.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies",
                  httpMethod = "POST",
                  id = "ml.projects.locations.studies.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project and location that the study belongs to. Format: projects/{project}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    studyId = {
                      description = "Required. The ID to use for the study, which will become the final component of the study's resource name.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/studies",
                  request = {
                    ["$ref"] = "GoogleCloudMlV1__Study",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudMlV1__Study",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a study.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}",
                  httpMethod = "DELETE",
                  id = "ml.projects.locations.studies.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The study name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobuf__Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a study.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}",
                  httpMethod = "GET",
                  id = "ml.projects.locations.studies.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The study name.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudMlV1__Study",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all the studies in a region for an associated project.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies",
                  httpMethod = "GET",
                  id = "ml.projects.locations.studies.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The project and location that the study belongs to. Format: projects/{project}/locations/{location}",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/studies",
                  response = {
                    ["$ref"] = "GoogleCloudMlV1__ListStudiesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                trials = {
                  methods = {
                    addMeasurement = {
                      description = "Adds a measurement of the objective metrics to a trial. This measurement is assumed to have been taken before the trial is complete.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials/{trialsId}:addMeasurement",
                      httpMethod = "POST",
                      id = "ml.projects.locations.studies.trials.addMeasurement",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The trial name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+/trials/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:addMeasurement",
                      request = {
                        ["$ref"] = "GoogleCloudMlV1__AddTrialMeasurementRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudMlV1__Trial",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    checkEarlyStoppingState = {
                      description = "Checks whether a trial should stop or not. Returns a long-running operation. When the operation is successful, it will contain a CheckTrialEarlyStoppingStateResponse.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials/{trialsId}:checkEarlyStoppingState",
                      httpMethod = "POST",
                      id = "ml.projects.locations.studies.trials.checkEarlyStoppingState",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The trial name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+/trials/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:checkEarlyStoppingState",
                      request = {
                        ["$ref"] = "GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunning__Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    complete = {
                      description = "Marks a trial as complete.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials/{trialsId}:complete",
                      httpMethod = "POST",
                      id = "ml.projects.locations.studies.trials.complete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The trial name.metat",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+/trials/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:complete",
                      request = {
                        ["$ref"] = "GoogleCloudMlV1__CompleteTrialRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudMlV1__Trial",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Adds a user provided trial to a study.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials",
                      httpMethod = "POST",
                      id = "ml.projects.locations.studies.trials.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The name of the study that the trial belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/trials",
                      request = {
                        ["$ref"] = "GoogleCloudMlV1__Trial",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudMlV1__Trial",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a trial.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials/{trialsId}",
                      httpMethod = "DELETE",
                      id = "ml.projects.locations.studies.trials.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The trial name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+/trials/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobuf__Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets a trial.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials/{trialsId}",
                      httpMethod = "GET",
                      id = "ml.projects.locations.studies.trials.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The trial name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+/trials/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudMlV1__Trial",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the trials associated with a study.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials",
                      httpMethod = "GET",
                      id = "ml.projects.locations.studies.trials.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The name of the study that the trial belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/trials",
                      response = {
                        ["$ref"] = "GoogleCloudMlV1__ListTrialsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    listOptimalTrials = {
                      description = "Lists the pareto-optimal trials for multi-objective study or the optimal trials for single-objective study. The definition of pareto-optimal can be checked in wiki page. https://en.wikipedia.org/wiki/Pareto_efficiency",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials:listOptimalTrials",
                      httpMethod = "POST",
                      id = "ml.projects.locations.studies.trials.listOptimalTrials",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The name of the study that the pareto-optimal trial belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/trials:listOptimalTrials",
                      request = {
                        ["$ref"] = "GoogleCloudMlV1__ListOptimalTrialsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudMlV1__ListOptimalTrialsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    stop = {
                      description = "Stops a trial.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials/{trialsId}:stop",
                      httpMethod = "POST",
                      id = "ml.projects.locations.studies.trials.stop",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The trial name.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+/trials/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:stop",
                      request = {
                        ["$ref"] = "GoogleCloudMlV1__StopTrialRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudMlV1__Trial",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    suggest = {
                      description = "Adds one or more trials to a study, with parameter values suggested by AI Platform Vizier. Returns a long-running operation associated with the generation of trial suggestions. When this long-running operation succeeds, it will contain a SuggestTrialsResponse.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/studies/{studiesId}/trials:suggest",
                      httpMethod = "POST",
                      id = "ml.projects.locations.studies.trials.suggest",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The name of the study that the trial belongs to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/studies/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/trials:suggest",
                      request = {
                        ["$ref"] = "GoogleCloudMlV1__SuggestTrialsRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleLongrunning__Operation",
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
        models = {
          methods = {
            create = {
              description = "Creates a model which will later contain one or more versions. You must add at least one version before you can request predictions from the model. Add versions by calling projects.models.versions.create.",
              flatPath = "v1/projects/{projectsId}/models",
              httpMethod = "POST",
              id = "ml.projects.models.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The project name.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/models",
              request = {
                ["$ref"] = "GoogleCloudMlV1__Model",
              },
              response = {
                ["$ref"] = "GoogleCloudMlV1__Model",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a model. You can only delete a model if there are no versions in it. You can delete versions by calling projects.models.versions.delete.",
              flatPath = "v1/projects/{projectsId}/models/{modelsId}",
              httpMethod = "DELETE",
              id = "ml.projects.models.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the model.",
                  location = "path",
                  pattern = "^projects/[^/]+/models/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunning__Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets information about a model, including its name, the description (if set), and the default version (if at least one version of the model has been deployed).",
              flatPath = "v1/projects/{projectsId}/models/{modelsId}",
              httpMethod = "GET",
              id = "ml.projects.models.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the model.",
                  location = "path",
                  pattern = "^projects/[^/]+/models/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudMlV1__Model",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            getIamPolicy = {
              description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
              flatPath = "v1/projects/{projectsId}/models/{modelsId}:getIamPolicy",
              httpMethod = "GET",
              id = "ml.projects.models.getIamPolicy",
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
                  pattern = "^projects/[^/]+/models/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:getIamPolicy",
              response = {
                ["$ref"] = "GoogleIamV1__Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the models in a project. Each project can contain multiple models, and each model can have multiple versions. If there are no models that match the request parameters, the list request returns an empty response body: {}.",
              flatPath = "v1/projects/{projectsId}/models",
              httpMethod = "GET",
              id = "ml.projects.models.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Specifies the subset of models to retrieve.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The number of models to retrieve per \"page\" of results. If there are more remaining results than this number, the response message will contain a valid value in the `next_page_token` field. The default value is 20, and the maximum page size is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token to request the next page of results. You get the token from the `next_page_token` field of the response from the previous call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project whose models are to be listed.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/models",
              response = {
                ["$ref"] = "GoogleCloudMlV1__ListModelsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            patch = {
              description = "Updates a specific model resource. Currently the only supported fields to update are `description` and `default_version.name`.",
              flatPath = "v1/projects/{projectsId}/models/{modelsId}",
              httpMethod = "PATCH",
              id = "ml.projects.models.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The project name.",
                  location = "path",
                  pattern = "^projects/[^/]+/models/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Specifies the path, relative to `Model`, of the field to update. For example, to change the description of a model to \"foo\" and set its default version to \"version_1\", the `update_mask` parameter would be specified as `description`, `default_version.name`, and the `PATCH` request body would specify the new value, as follows: { \"description\": \"foo\", \"defaultVersion\": { \"name\":\"version_1\" } } Currently the supported update masks are `description` and `default_version.name`.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudMlV1__Model",
              },
              response = {
                ["$ref"] = "GoogleLongrunning__Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
              flatPath = "v1/projects/{projectsId}/models/{modelsId}:setIamPolicy",
              httpMethod = "POST",
              id = "ml.projects.models.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/models/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:setIamPolicy",
              request = {
                ["$ref"] = "GoogleIamV1__SetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1__Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
              flatPath = "v1/projects/{projectsId}/models/{modelsId}:testIamPermissions",
              httpMethod = "POST",
              id = "ml.projects.models.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^projects/[^/]+/models/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:testIamPermissions",
              request = {
                ["$ref"] = "GoogleIamV1__TestIamPermissionsRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1__TestIamPermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            versions = {
              methods = {
                create = {
                  description = "Creates a new version of a model from a trained TensorFlow model. If the version created in the cloud by this call is the first deployed version of the specified model, it will be made the default version of the model. When you add a version to a model that already has one or more versions, the default version does not automatically change. If you want a new version to be the default, you must call projects.models.versions.setDefault.",
                  flatPath = "v1/projects/{projectsId}/models/{modelsId}/versions",
                  httpMethod = "POST",
                  id = "ml.projects.models.versions.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the model.",
                      location = "path",
                      pattern = "^projects/[^/]+/models/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/versions",
                  request = {
                    ["$ref"] = "GoogleCloudMlV1__Version",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunning__Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a model version. Each model can have multiple versions deployed and in use at any given time. Use this method to remove a single version. Note: You cannot delete the version that is set as the default version of the model unless it is the only remaining version.",
                  flatPath = "v1/projects/{projectsId}/models/{modelsId}/versions/{versionsId}",
                  httpMethod = "DELETE",
                  id = "ml.projects.models.versions.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the version. You can get the names of all the versions of a model by calling projects.models.versions.list.",
                      location = "path",
                      pattern = "^projects/[^/]+/models/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunning__Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets information about a model version. Models can have multiple versions. You can call projects.models.versions.list to get the same information that this method returns for all of the versions of a model.",
                  flatPath = "v1/projects/{projectsId}/models/{modelsId}/versions/{versionsId}",
                  httpMethod = "GET",
                  id = "ml.projects.models.versions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the version.",
                      location = "path",
                      pattern = "^projects/[^/]+/models/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudMlV1__Version",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Gets basic information about all the versions of a model. If you expect that a model has many versions, or if you need to handle only a limited number of results at a time, you can request that the list be retrieved in batches (called pages). If there are no versions that match the request parameters, the list request returns an empty response body: {}.",
                  flatPath = "v1/projects/{projectsId}/models/{modelsId}/versions",
                  httpMethod = "GET",
                  id = "ml.projects.models.versions.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Specifies the subset of versions to retrieve.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The number of versions to retrieve per \"page\" of results. If there are more remaining results than this number, the response message will contain a valid value in the `next_page_token` field. The default value is 20, and the maximum page size is 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A page token to request the next page of results. You get the token from the `next_page_token` field of the response from the previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the model for which to list the version.",
                      location = "path",
                      pattern = "^projects/[^/]+/models/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/versions",
                  response = {
                    ["$ref"] = "GoogleCloudMlV1__ListVersionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                patch = {
                  description = "Updates the specified Version resource. Currently the only update-able fields are `description`, `requestLoggingConfig`, `autoScaling.minNodes`, and `manualScaling.nodes`.",
                  flatPath = "v1/projects/{projectsId}/models/{modelsId}/versions/{versionsId}",
                  httpMethod = "PATCH",
                  id = "ml.projects.models.versions.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the model.",
                      location = "path",
                      pattern = "^projects/[^/]+/models/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Specifies the path, relative to `Version`, of the field to update. Must be present and non-empty. For example, to change the description of a version to \"foo\", the `update_mask` parameter would be specified as `description`, and the `PATCH` request body would specify the new value, as follows: ``` { \"description\": \"foo\" } ``` Currently the only supported update mask fields are `description`, `requestLoggingConfig`, `autoScaling.minNodes`, and `manualScaling.nodes`. However, you can only update `manualScaling.nodes` if the version uses a [Compute Engine (N1) machine type](/ml-engine/docs/machine-types-online-prediction).",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudMlV1__Version",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunning__Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setDefault = {
                  description = "Designates a version to be the default for the model. The default version is used for prediction requests made against the model that don't specify a version. The first version to be created for a model is automatically set as the default. You must make any subsequent changes to the default version setting manually using this method.",
                  flatPath = "v1/projects/{projectsId}/models/{modelsId}/versions/{versionsId}:setDefault",
                  httpMethod = "POST",
                  id = "ml.projects.models.versions.setDefault",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the version to make the default for the model. You can get the names of all the versions of a model by calling projects.models.versions.list.",
                      location = "path",
                      pattern = "^projects/[^/]+/models/[^/]+/versions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:setDefault",
                  request = {
                    ["$ref"] = "GoogleCloudMlV1__SetDefaultVersionRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudMlV1__Version",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
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
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}:cancel",
              httpMethod = "POST",
              id = "ml.projects.operations.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be cancelled.",
                  location = "path",
                  pattern = "^projects/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:cancel",
              response = {
                ["$ref"] = "GoogleProtobuf__Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "ml.projects.operations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource.",
                  location = "path",
                  pattern = "^projects/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunning__Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
              flatPath = "v1/projects/{projectsId}/operations",
              httpMethod = "GET",
              id = "ml.projects.operations.list",
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
                  pattern = "^projects/[^/]+$",
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
                ["$ref"] = "GoogleLongrunning__ListOperationsResponse",
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
  revision = "20230106",
  rootUrl = "https://ml.googleapis.com/",
  schemas = {
    GoogleApi__HttpBody = {
      description = "Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.",
      id = "GoogleApi__HttpBody",
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
    GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig = {
      id = "GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig",
      properties = {
        useElapsedTime = {
          description = "If true, measurement.elapsed_time is used as the x-axis of each Trials Decay Curve. Otherwise, Measurement.steps will be used as the x-axis.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig = {
      description = "The median automated stopping rule stops a pending trial if the trial's best objective_value is strictly below the median 'performance' of all completed trials reported up to the trial's last measurement. Currently, 'performance' refers to the running average of the objective values reported by the trial in each measurement.",
      id = "GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig",
      properties = {
        useElapsedTime = {
          description = "If true, the median automated stopping rule applies to measurement.use_elapsed_time, which means the elapsed_time field of the current trial's latest measurement is used to compute the median objective value for each completed trial.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric = {
      description = "An observed value of a metric.",
      id = "GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric",
      properties = {
        objectiveValue = {
          description = "The objective value at this training step.",
          format = "double",
          type = "number",
        },
        trainingStep = {
          description = "The global training step for this metric.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_Measurement_Metric = {
      description = "A message representing a metric in the measurement.",
      id = "GoogleCloudMlV1_Measurement_Metric",
      properties = {
        metric = {
          description = "Required. Metric name.",
          type = "string",
        },
        value = {
          description = "Required. The value for this metric.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec = {
      id = "GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec",
      properties = {
        values = {
          description = "Must be specified if type is `CATEGORICAL`. The list of possible categories.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec = {
      id = "GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec",
      properties = {
        values = {
          description = "Must be specified if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec = {
      id = "GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec",
      properties = {
        maxValue = {
          description = "Must be specified if type is `DOUBLE`. Maximum value of the parameter.",
          format = "double",
          type = "number",
        },
        minValue = {
          description = "Must be specified if type is `DOUBLE`. Minimum value of the parameter.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec = {
      id = "GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec",
      properties = {
        maxValue = {
          description = "Must be specified if type is `INTEGER`. Maximum value of the parameter.",
          format = "int64",
          type = "string",
        },
        minValue = {
          description = "Must be specified if type is `INTEGER`. Minimum value of the parameter.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec = {
      description = "Represents the spec to match categorical values from parent parameter.",
      id = "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec",
      properties = {
        values = {
          description = "Matches values of the parent parameter with type 'CATEGORICAL'. All values must exist in `categorical_value_spec` of parent parameter.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec = {
      description = "Represents the spec to match discrete values from parent parameter.",
      id = "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec",
      properties = {
        values = {
          description = "Matches values of the parent parameter with type 'DISCRETE'. All values must exist in `discrete_value_spec` of parent parameter.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec = {
      description = "Represents the spec to match integer values from parent parameter.",
      id = "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec",
      properties = {
        values = {
          description = "Matches values of the parent parameter with type 'INTEGER'. All values must lie in `integer_value_spec` of parent parameter.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfig_MetricSpec = {
      description = "Represents a metric to optimize.",
      id = "GoogleCloudMlV1_StudyConfig_MetricSpec",
      properties = {
        goal = {
          description = "Required. The optimization goal of the metric.",
          enum = {
            "GOAL_TYPE_UNSPECIFIED",
            "MAXIMIZE",
            "MINIMIZE",
          },
          enumDescriptions = {
            "Goal Type will default to maximize.",
            "Maximize the goal metric.",
            "Minimize the goal metric.",
          },
          type = "string",
        },
        metric = {
          description = "Required. The name of the metric.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_StudyConfig_ParameterSpec = {
      description = "Represents a single parameter to optimize.",
      id = "GoogleCloudMlV1_StudyConfig_ParameterSpec",
      properties = {
        categoricalValueSpec = {
          ["$ref"] = "GoogleCloudMlV1_StudyConfigParameterSpec_CategoricalValueSpec",
          description = "The value spec for a 'CATEGORICAL' parameter.",
        },
        childParameterSpecs = {
          description = "A child node is active if the parameter's value matches the child node's matching_parent_values. If two items in child_parameter_specs have the same name, they must have disjoint matching_parent_values.",
          items = {
            ["$ref"] = "GoogleCloudMlV1_StudyConfig_ParameterSpec",
          },
          type = "array",
        },
        discreteValueSpec = {
          ["$ref"] = "GoogleCloudMlV1_StudyConfigParameterSpec_DiscreteValueSpec",
          description = "The value spec for a 'DISCRETE' parameter.",
        },
        doubleValueSpec = {
          ["$ref"] = "GoogleCloudMlV1_StudyConfigParameterSpec_DoubleValueSpec",
          description = "The value spec for a 'DOUBLE' parameter.",
        },
        integerValueSpec = {
          ["$ref"] = "GoogleCloudMlV1_StudyConfigParameterSpec_IntegerValueSpec",
          description = "The value spec for an 'INTEGER' parameter.",
        },
        parameter = {
          description = "Required. The parameter name must be unique amongst all ParameterSpecs.",
          type = "string",
        },
        parentCategoricalValues = {
          ["$ref"] = "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentCategoricalValueSpec",
        },
        parentDiscreteValues = {
          ["$ref"] = "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentDiscreteValueSpec",
        },
        parentIntValues = {
          ["$ref"] = "GoogleCloudMlV1_StudyConfigParameterSpec_MatchingParentIntValueSpec",
        },
        scaleType = {
          description = "How the parameter should be scaled. Leave unset for categorical parameters.",
          enum = {
            "SCALE_TYPE_UNSPECIFIED",
            "UNIT_LINEAR_SCALE",
            "UNIT_LOG_SCALE",
            "UNIT_REVERSE_LOG_SCALE",
          },
          enumDescriptions = {
            "By default, no scaling is applied.",
            "Scales the feasible space to (0, 1) linearly.",
            "Scales the feasible space logarithmically to (0, 1). The entire feasible space must be strictly positive.",
            "Scales the feasible space \"reverse\" logarithmically to (0, 1). The result is that values close to the top of the feasible space are spread out more than points near the bottom. The entire feasible space must be strictly positive.",
          },
          type = "string",
        },
        type = {
          description = "Required. The type of the parameter.",
          enum = {
            "PARAMETER_TYPE_UNSPECIFIED",
            "DOUBLE",
            "INTEGER",
            "CATEGORICAL",
            "DISCRETE",
          },
          enumDescriptions = {
            "You must specify a valid type. Using this unspecified type will result in an error.",
            "Type for real-valued parameters.",
            "Type for integral parameters.",
            "The parameter is categorical, with a value chosen from the categories field.",
            "The parameter is real valued, with a fixed set of feasible points. If `type==DISCRETE`, feasible_points must be provided, and {`min_value`, `max_value`} will be ignored.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1_Trial_Parameter = {
      description = "A message representing a parameter to be tuned. Contains the name of the parameter and the suggested value to use for this trial.",
      id = "GoogleCloudMlV1_Trial_Parameter",
      properties = {
        floatValue = {
          description = "Must be set if ParameterType is DOUBLE or DISCRETE.",
          format = "double",
          type = "number",
        },
        intValue = {
          description = "Must be set if ParameterType is INTEGER",
          format = "int64",
          type = "string",
        },
        parameter = {
          description = "The name of the parameter.",
          type = "string",
        },
        stringValue = {
          description = "Must be set if ParameterTypeis CATEGORICAL",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__AcceleratorConfig = {
      description = "Represents a hardware accelerator request config. Note that the AcceleratorConfig can be used in both Jobs and Versions. Learn more about [accelerators for training](/ml-engine/docs/using-gpus) and [accelerators for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).",
      id = "GoogleCloudMlV1__AcceleratorConfig",
      properties = {
        count = {
          description = "The number of accelerators to attach to each machine running the job.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "The type of accelerator to use.",
          enum = {
            "ACCELERATOR_TYPE_UNSPECIFIED",
            "NVIDIA_TESLA_K80",
            "NVIDIA_TESLA_P100",
            "NVIDIA_TESLA_V100",
            "NVIDIA_TESLA_P4",
            "NVIDIA_TESLA_T4",
            "NVIDIA_TESLA_A100",
            "TPU_V2",
            "TPU_V3",
            "TPU_V2_POD",
            "TPU_V3_POD",
          },
          enumDescriptions = {
            "Unspecified accelerator type. Default to no GPU.",
            "Nvidia Tesla K80 GPU.",
            "Nvidia Tesla P100 GPU.",
            "Nvidia V100 GPU.",
            "Nvidia Tesla P4 GPU.",
            "Nvidia T4 GPU.",
            "Nvidia A100 GPU.",
            "TPU v2.",
            "TPU v3.",
            "TPU v2 POD.",
            "TPU v3 POD.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__AddTrialMeasurementRequest = {
      description = "The request message for the AddTrialMeasurement service method.",
      id = "GoogleCloudMlV1__AddTrialMeasurementRequest",
      properties = {
        measurement = {
          ["$ref"] = "GoogleCloudMlV1__Measurement",
          description = "Required. The measurement to be added to a trial.",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__AutoScaling = {
      description = "Options for automatically scaling a model.",
      id = "GoogleCloudMlV1__AutoScaling",
      properties = {
        maxNodes = {
          description = "The maximum number of nodes to scale this model under load. The actual value will depend on resource quota and availability.",
          format = "int32",
          type = "integer",
        },
        metrics = {
          description = "MetricSpec contains the specifications to use to calculate the desired nodes count.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__MetricSpec",
          },
          type = "array",
        },
        minNodes = {
          description = "Optional. The minimum number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed. Therefore, the cost of operating this model will be at least `rate` * `min_nodes` * number of hours since last billing cycle, where `rate` is the cost per node-hour as documented in the [pricing guide](/ml-engine/docs/pricing), even if no predictions are performed. There is additional cost for each prediction performed. Unlike manual scaling, if the load gets too heavy for the nodes that are up, the service will automatically add nodes to handle the increased load as well as scale back as traffic drops, always maintaining at least `min_nodes`. You will be charged for the time in which additional nodes are used. If `min_nodes` is not specified and AutoScaling is used with a [legacy (MLS1) machine type](/ml-engine/docs/machine-types-online-prediction), `min_nodes` defaults to 0, in which case, when traffic to a model stops (and after a cool-down period), nodes will be shut down and no charges will be incurred until traffic to the model resumes. If `min_nodes` is not specified and AutoScaling is used with a [Compute Engine (N1) machine type](/ml-engine/docs/machine-types-online-prediction), `min_nodes` defaults to 1. `min_nodes` must be at least 1 for use with a Compute Engine machine type. You can set `min_nodes` when creating the model version, and you can also update `min_nodes` for an existing version: update_body.json: { 'autoScaling': { 'minNodes': 5 } } HTTP request: PATCH https://ml.googleapis.com/v1/{name=projects/*/models/*/versions/*}?update_mask=autoScaling.minNodes -d @./update_body.json ",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__AutomatedStoppingConfig = {
      description = "Configuration for Automated Early Stopping of Trials. If no implementation_config is set, automated early stopping will not be run.",
      id = "GoogleCloudMlV1__AutomatedStoppingConfig",
      properties = {
        decayCurveStoppingConfig = {
          ["$ref"] = "GoogleCloudMlV1_AutomatedStoppingConfig_DecayCurveAutomatedStoppingConfig",
        },
        medianAutomatedStoppingConfig = {
          ["$ref"] = "GoogleCloudMlV1_AutomatedStoppingConfig_MedianAutomatedStoppingConfig",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__BuiltInAlgorithmOutput = {
      description = "Represents output related to a built-in algorithm Job.",
      id = "GoogleCloudMlV1__BuiltInAlgorithmOutput",
      properties = {
        framework = {
          description = "Framework on which the built-in algorithm was trained.",
          type = "string",
        },
        modelPath = {
          description = "The Cloud Storage path to the `model/` directory where the training job saves the trained model. Only set for successful jobs that don't use hyperparameter tuning.",
          type = "string",
        },
        pythonVersion = {
          description = "Python version on which the built-in algorithm was trained.",
          type = "string",
        },
        runtimeVersion = {
          description = "AI Platform runtime version on which the built-in algorithm was trained.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__CancelJobRequest = {
      description = "Request message for the CancelJob method.",
      id = "GoogleCloudMlV1__CancelJobRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudMlV1__Capability = {
      id = "GoogleCloudMlV1__Capability",
      properties = {
        availableAccelerators = {
          description = "Available accelerators for the capability.",
          items = {
            enum = {
              "ACCELERATOR_TYPE_UNSPECIFIED",
              "NVIDIA_TESLA_K80",
              "NVIDIA_TESLA_P100",
              "NVIDIA_TESLA_V100",
              "NVIDIA_TESLA_P4",
              "NVIDIA_TESLA_T4",
              "NVIDIA_TESLA_A100",
              "TPU_V2",
              "TPU_V3",
              "TPU_V2_POD",
              "TPU_V3_POD",
            },
            enumDescriptions = {
              "Unspecified accelerator type. Default to no GPU.",
              "Nvidia Tesla K80 GPU.",
              "Nvidia Tesla P100 GPU.",
              "Nvidia V100 GPU.",
              "Nvidia Tesla P4 GPU.",
              "Nvidia T4 GPU.",
              "Nvidia A100 GPU.",
              "TPU v2.",
              "TPU v3.",
              "TPU v2 POD.",
              "TPU v3 POD.",
            },
            type = "string",
          },
          type = "array",
        },
        type = {
          enum = {
            "TYPE_UNSPECIFIED",
            "TRAINING",
            "BATCH_PREDICTION",
            "ONLINE_PREDICTION",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata = {
      description = "This message will be placed in the metadata field of a google.longrunning.Operation associated with a CheckTrialEarlyStoppingState request.",
      id = "GoogleCloudMlV1__CheckTrialEarlyStoppingStateMetatdata",
      properties = {
        createTime = {
          description = "The time at which the operation was submitted.",
          format = "google-datetime",
          type = "string",
        },
        study = {
          description = "The name of the study that the trial belongs to.",
          type = "string",
        },
        trial = {
          description = "The trial name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest = {
      description = "The request message for the CheckTrialEarlyStoppingState service method.",
      id = "GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse = {
      description = "The message will be placed in the response field of a completed google.longrunning.Operation associated with a CheckTrialEarlyStoppingState request.",
      id = "GoogleCloudMlV1__CheckTrialEarlyStoppingStateResponse",
      properties = {
        endTime = {
          description = "The time at which operation processing completed.",
          format = "google-datetime",
          type = "string",
        },
        shouldStop = {
          description = "True if the Trial should stop.",
          type = "boolean",
        },
        startTime = {
          description = "The time at which the operation was started.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__CompleteTrialRequest = {
      description = "The request message for the CompleteTrial service method.",
      id = "GoogleCloudMlV1__CompleteTrialRequest",
      properties = {
        finalMeasurement = {
          ["$ref"] = "GoogleCloudMlV1__Measurement",
          description = "Optional. If provided, it will be used as the completed trial's final_measurement; Otherwise, the service will auto-select a previously reported measurement as the final-measurement",
        },
        infeasibleReason = {
          description = "Optional. A human readable reason why the trial was infeasible. This should only be provided if `trial_infeasible` is true.",
          type = "string",
        },
        trialInfeasible = {
          description = "Optional. True if the trial cannot be run with the given Parameter, and final_measurement will be ignored.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__Config = {
      id = "GoogleCloudMlV1__Config",
      properties = {
        tpuServiceAccount = {
          description = "The service account Cloud ML uses to run on TPU node.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ContainerPort = {
      description = "Represents a network port in a single container. This message is a subset of the [Kubernetes ContainerPort v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#containerport-v1-core).",
      id = "GoogleCloudMlV1__ContainerPort",
      properties = {
        containerPort = {
          description = "Number of the port to expose on the container. This must be a valid port number: 0 < PORT_NUMBER < 65536.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ContainerSpec = {
      description = "Specification of a custom container for serving predictions. This message is a subset of the [Kubernetes Container v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core).",
      id = "GoogleCloudMlV1__ContainerSpec",
      properties = {
        args = {
          description = "Immutable. Specifies arguments for the command that runs when the container starts. This overrides the container's [`CMD`](https://docs.docker.com/engine/reference/builder/#cmd). Specify this field as an array of executable and arguments, similar to a Docker `CMD`'s \"default parameters\" form. If you don't specify this field but do specify the command field, then the command from the `command` field runs without any additional arguments. See the [Kubernetes documentation about how the `command` and `args` fields interact with a container's `ENTRYPOINT` and `CMD`](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes). If you don't specify this field and don't specify the `commmand` field, then the container's [`ENTRYPOINT`](https://docs.docker.com/engine/reference/builder/#cmd) and `CMD` determine what runs based on their default behavior. See the [Docker documentation about how `CMD` and `ENTRYPOINT` interact](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact). In this field, you can reference [environment variables set by AI Platform Prediction](/ai-platform/prediction/docs/custom-container-requirements#aip-variables) and environment variables set in the env field. You cannot reference environment variables set in the Docker image. In order for environment variables to be expanded, reference them by using the following syntax: $( VARIABLE_NAME) Note that this differs from Bash variable expansion, which does not use parentheses. If a variable cannot be resolved, the reference in the input string is used unchanged. To avoid variable expansion, you can escape this syntax with `$$`; for example: $$(VARIABLE_NAME) This field corresponds to the `args` field of the [Kubernetes Containers v1 core API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core).",
          items = {
            type = "string",
          },
          type = "array",
        },
        command = {
          description = "Immutable. Specifies the command that runs when the container starts. This overrides the container's [`ENTRYPOINT`](https://docs.docker.com/engine/reference/builder/#entrypoint). Specify this field as an array of executable and arguments, similar to a Docker `ENTRYPOINT`'s \"exec\" form, not its \"shell\" form. If you do not specify this field, then the container's `ENTRYPOINT` runs, in conjunction with the args field or the container's [`CMD`](https://docs.docker.com/engine/reference/builder/#cmd), if either exists. If this field is not specified and the container does not have an `ENTRYPOINT`, then refer to the [Docker documentation about how `CMD` and `ENTRYPOINT` interact](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact). If you specify this field, then you can also specify the `args` field to provide additional arguments for this command. However, if you specify this field, then the container's `CMD` is ignored. See the [Kubernetes documentation about how the `command` and `args` fields interact with a container's `ENTRYPOINT` and `CMD`](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes). In this field, you can reference [environment variables set by AI Platform Prediction](/ai-platform/prediction/docs/custom-container-requirements#aip-variables) and environment variables set in the env field. You cannot reference environment variables set in the Docker image. In order for environment variables to be expanded, reference them by using the following syntax: $( VARIABLE_NAME) Note that this differs from Bash variable expansion, which does not use parentheses. If a variable cannot be resolved, the reference in the input string is used unchanged. To avoid variable expansion, you can escape this syntax with `$$`; for example: $$(VARIABLE_NAME) This field corresponds to the `command` field of the [Kubernetes Containers v1 core API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core).",
          items = {
            type = "string",
          },
          type = "array",
        },
        env = {
          description = "Immutable. List of environment variables to set in the container. After the container starts running, code running in the container can read these environment variables. Additionally, the command and args fields can reference these variables. Later entries in this list can also reference earlier entries. For example, the following example sets the variable `VAR_2` to have the value `foo bar`: ```json [ { \"name\": \"VAR_1\", \"value\": \"foo\" }, { \"name\": \"VAR_2\", \"value\": \"$(VAR_1) bar\" } ] ``` If you switch the order of the variables in the example, then the expansion does not occur. This field corresponds to the `env` field of the [Kubernetes Containers v1 core API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core).",
          items = {
            ["$ref"] = "GoogleCloudMlV1__EnvVar",
          },
          type = "array",
        },
        image = {
          description = "URI of the Docker image to be used as the custom container for serving predictions. This URI must identify [an image in Artifact Registry](/artifact-registry/docs/overview) and begin with the hostname `{REGION}-docker.pkg.dev`, where `{REGION}` is replaced by the region that matches AI Platform Prediction [regional endpoint](/ai-platform/prediction/docs/regional-endpoints) that you are using. For example, if you are using the `us-central1-ml.googleapis.com` endpoint, then this URI must begin with `us-central1-docker.pkg.dev`. To use a custom container, the [AI Platform Google-managed service account](/ai-platform/prediction/docs/custom-service-account#default) must have permission to pull (read) the Docker image at this URI. The AI Platform Google-managed service account has the following format: `service-{PROJECT_NUMBER}@cloud-ml.google.com.iam.gserviceaccount.com` {PROJECT_NUMBER} is replaced by your Google Cloud project number. By default, this service account has necessary permissions to pull an Artifact Registry image in the same Google Cloud project where you are using AI Platform Prediction. In this case, no configuration is necessary. If you want to use an image from a different Google Cloud project, learn how to [grant the Artifact Registry Reader (roles/artifactregistry.reader) role for a repository](/artifact-registry/docs/access-control#grant-repo) to your projet's AI Platform Google-managed service account. To learn about the requirements for the Docker image itself, read [Custom container requirements](/ai-platform/prediction/docs/custom-container-requirements).",
          type = "string",
        },
        ports = {
          description = "Immutable. List of ports to expose from the container. AI Platform Prediction sends any prediction requests that it receives to the first port on this list. AI Platform Prediction also sends [liveness and health checks](/ai-platform/prediction/docs/custom-container-requirements#health) to this port. If you do not specify this field, it defaults to following value: ```json [ { \"containerPort\": 8080 } ] ``` AI Platform Prediction does not use ports other than the first one listed. This field corresponds to the `ports` field of the [Kubernetes Containers v1 core API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#container-v1-core).",
          items = {
            ["$ref"] = "GoogleCloudMlV1__ContainerPort",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__DiskConfig = {
      description = "Represents the config of disk options.",
      id = "GoogleCloudMlV1__DiskConfig",
      properties = {
        bootDiskSizeGb = {
          description = "Size in GB of the boot disk (default is 100GB).",
          format = "int32",
          type = "integer",
        },
        bootDiskType = {
          description = "Type of the boot disk (default is \"pd-ssd\"). Valid values: \"pd-ssd\" (Persistent Disk Solid State Drive) or \"pd-standard\" (Persistent Disk Hard Disk Drive).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__EncryptionConfig = {
      description = "Represents a custom encryption key configuration that can be applied to a resource.",
      id = "GoogleCloudMlV1__EncryptionConfig",
      properties = {
        kmsKeyName = {
          description = "The Cloud KMS resource identifier of the customer-managed encryption key used to protect a resource, such as a training job. It has the following format: `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__EnvVar = {
      description = "Represents an environment variable to be made available in a container. This message is a subset of the [Kubernetes EnvVar v1 core specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.18/#envvar-v1-core).",
      id = "GoogleCloudMlV1__EnvVar",
      properties = {
        name = {
          description = "Name of the environment variable. Must be a [valid C identifier](https://github.com/kubernetes/kubernetes/blob/v1.18.8/staging/src/k8s.io/apimachinery/pkg/util/validation/validation.go#L258) and must not begin with the prefix `AIP_`.",
          type = "string",
        },
        value = {
          description = "Value of the environment variable. Defaults to an empty string. In this field, you can reference [environment variables set by AI Platform Prediction](/ai-platform/prediction/docs/custom-container-requirements#aip-variables) and environment variables set earlier in the same env field as where this message occurs. You cannot reference environment variables set in the Docker image. In order for environment variables to be expanded, reference them by using the following syntax: $(VARIABLE_NAME) Note that this differs from Bash variable expansion, which does not use parentheses. If a variable cannot be resolved, the reference in the input string is used unchanged. To avoid variable expansion, you can escape this syntax with `$$`; for example: $$(VARIABLE_NAME)",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ExplainRequest = {
      description = "Request for explanations to be issued against a trained model.",
      id = "GoogleCloudMlV1__ExplainRequest",
      properties = {
        httpBody = {
          ["$ref"] = "GoogleApi__HttpBody",
          description = "Required. The explanation request body.",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ExplanationConfig = {
      description = "Message holding configuration options for explaining model predictions. There are three feature attribution methods supported for TensorFlow models: integrated gradients, sampled Shapley, and XRAI. [Learn more about feature attributions.](/ai-platform/prediction/docs/ai-explanations/overview)",
      id = "GoogleCloudMlV1__ExplanationConfig",
      properties = {
        integratedGradientsAttribution = {
          ["$ref"] = "GoogleCloudMlV1__IntegratedGradientsAttribution",
          description = "Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365",
        },
        sampledShapleyAttribution = {
          ["$ref"] = "GoogleCloudMlV1__SampledShapleyAttribution",
          description = "An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.",
        },
        xraiAttribution = {
          ["$ref"] = "GoogleCloudMlV1__XraiAttribution",
          description = "Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__GetConfigResponse = {
      description = "Returns service account information associated with a project.",
      id = "GoogleCloudMlV1__GetConfigResponse",
      properties = {
        config = {
          ["$ref"] = "GoogleCloudMlV1__Config",
        },
        serviceAccount = {
          description = "The service account Cloud ML uses to access resources in the project.",
          type = "string",
        },
        serviceAccountProject = {
          description = "The project number for `service_account`.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__HyperparameterOutput = {
      description = "Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.",
      id = "GoogleCloudMlV1__HyperparameterOutput",
      properties = {
        allMetrics = {
          description = "All recorded object metrics for this trial. This field is not currently populated.",
          items = {
            ["$ref"] = "GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric",
          },
          type = "array",
        },
        builtInAlgorithmOutput = {
          ["$ref"] = "GoogleCloudMlV1__BuiltInAlgorithmOutput",
          description = "Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.",
        },
        endTime = {
          description = "Output only. End time for the trial.",
          format = "google-datetime",
          type = "string",
        },
        finalMetric = {
          ["$ref"] = "GoogleCloudMlV1_HyperparameterOutput_HyperparameterMetric",
          description = "The final objective metric seen for this trial.",
        },
        hyperparameters = {
          additionalProperties = {
            type = "string",
          },
          description = "The hyperparameters given to this trial.",
          type = "object",
        },
        isTrialStoppedEarly = {
          description = "True if the trial is stopped early.",
          type = "boolean",
        },
        startTime = {
          description = "Output only. Start time for the trial.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Output only. The detailed state of the trial.",
          enum = {
            "STATE_UNSPECIFIED",
            "QUEUED",
            "PREPARING",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLING",
            "CANCELLED",
          },
          enumDescriptions = {
            "The job state is unspecified.",
            "The job has been just created and processing has not yet begun.",
            "The service is preparing to run the job.",
            "The job is in progress.",
            "The job completed successfully.",
            "The job failed. `error_message` should contain the details of the failure.",
            "The job is being cancelled. `error_message` should describe the reason for the cancellation.",
            "The job has been cancelled. `error_message` should describe the reason for the cancellation.",
          },
          type = "string",
        },
        trialId = {
          description = "The trial id for these results.",
          type = "string",
        },
        webAccessUris = {
          additionalProperties = {
            type = "string",
          },
          description = "URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job's training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__HyperparameterSpec = {
      description = "Represents a set of hyperparameters to optimize.",
      id = "GoogleCloudMlV1__HyperparameterSpec",
      properties = {
        algorithm = {
          description = "Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.",
          enum = {
            "ALGORITHM_UNSPECIFIED",
            "GRID_SEARCH",
            "RANDOM_SEARCH",
          },
          enumDescriptions = {
            "The default algorithm used by the hyperparameter tuning service. This is a Bayesian optimization algorithm.",
            "Simple grid search within the feasible space. To use grid search, all parameters must be `INTEGER`, `CATEGORICAL`, or `DISCRETE`.",
            "Simple random search within the feasible space.",
          },
          type = "string",
        },
        enableTrialEarlyStopping = {
          description = "Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping.",
          type = "boolean",
        },
        goal = {
          description = "Required. The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.",
          enum = {
            "GOAL_TYPE_UNSPECIFIED",
            "MAXIMIZE",
            "MINIMIZE",
          },
          enumDescriptions = {
            "Goal Type will default to maximize.",
            "Maximize the goal metric.",
            "Minimize the goal metric.",
          },
          type = "string",
        },
        hyperparameterMetricTag = {
          description = "Optional. The TensorFlow summary tag name to use for optimizing trials. For current versions of TensorFlow, this tag name should exactly match what is shown in TensorBoard, including all scopes. For versions of TensorFlow prior to 0.12, this should be only the tag passed to tf.Summary. By default, \"training/hptuning/metric\" will be used.",
          type = "string",
        },
        maxFailedTrials = {
          description = "Optional. The number of failed trials that need to be seen before failing the hyperparameter tuning job. You can specify this field to override the default failing criteria for AI Platform hyperparameter tuning jobs. Defaults to zero, which means the service decides when a hyperparameter job should fail.",
          format = "int32",
          type = "integer",
        },
        maxParallelTrials = {
          description = "Optional. The number of training trials to run concurrently. You can reduce the time it takes to perform hyperparameter tuning by adding trials in parallel. However, each trail only benefits from the information gained in completed trials. That means that a trial does not get access to the results of trials running at the same time, which could reduce the quality of the overall optimization. Each trial will use the same scale tier and machine types. Defaults to one.",
          format = "int32",
          type = "integer",
        },
        maxTrials = {
          description = "Optional. How many training trials should be attempted to optimize the specified hyperparameters. Defaults to one.",
          format = "int32",
          type = "integer",
        },
        params = {
          description = "Required. The set of parameters to tune.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__ParameterSpec",
          },
          type = "array",
        },
        resumePreviousJobId = {
          description = "Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id will be used to find the corresponding vizier study guid and resume the study.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__IntegratedGradientsAttribution = {
      description = "Attributes credit by computing the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365",
      id = "GoogleCloudMlV1__IntegratedGradientsAttribution",
      properties = {
        numIntegralSteps = {
          description = "Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__Job = {
      description = "Represents a training or prediction job.",
      id = "GoogleCloudMlV1__Job",
      properties = {
        createTime = {
          description = "Output only. When the job was created.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "Output only. When the job processing was completed.",
          format = "google-datetime",
          type = "string",
        },
        errorMessage = {
          description = "Output only. The details of a failure or a cancellation.",
          type = "string",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.",
          format = "byte",
          type = "string",
        },
        jobId = {
          description = "Required. The user-specified id of the job.",
          type = "string",
        },
        jobPosition = {
          description = "Output only. It's only effect when the job is in QUEUED state. If it's positive, it indicates the job's position in the job scheduler. It's 0 when the job is already scheduled.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.",
          type = "object",
        },
        predictionInput = {
          ["$ref"] = "GoogleCloudMlV1__PredictionInput",
          description = "Input parameters to create a prediction job.",
        },
        predictionOutput = {
          ["$ref"] = "GoogleCloudMlV1__PredictionOutput",
          description = "The current prediction job result.",
        },
        startTime = {
          description = "Output only. When the job processing was started.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Output only. The detailed state of a job.",
          enum = {
            "STATE_UNSPECIFIED",
            "QUEUED",
            "PREPARING",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "CANCELLING",
            "CANCELLED",
          },
          enumDescriptions = {
            "The job state is unspecified.",
            "The job has been just created and processing has not yet begun.",
            "The service is preparing to run the job.",
            "The job is in progress.",
            "The job completed successfully.",
            "The job failed. `error_message` should contain the details of the failure.",
            "The job is being cancelled. `error_message` should describe the reason for the cancellation.",
            "The job has been cancelled. `error_message` should describe the reason for the cancellation.",
          },
          type = "string",
        },
        trainingInput = {
          ["$ref"] = "GoogleCloudMlV1__TrainingInput",
          description = "Input parameters to create a training job.",
        },
        trainingOutput = {
          ["$ref"] = "GoogleCloudMlV1__TrainingOutput",
          description = "The current training job result.",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ListJobsResponse = {
      description = "Response message for the ListJobs method.",
      id = "GoogleCloudMlV1__ListJobsResponse",
      properties = {
        jobs = {
          description = "The list of jobs.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Job",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Optional. Pass this token as the `page_token` field of the request for a subsequent call.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ListLocationsResponse = {
      id = "GoogleCloudMlV1__ListLocationsResponse",
      properties = {
        locations = {
          description = "Locations where at least one type of CMLE capability is available.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Location",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Optional. Pass this token as the `page_token` field of the request for a subsequent call.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ListModelsResponse = {
      description = "Response message for the ListModels method.",
      id = "GoogleCloudMlV1__ListModelsResponse",
      properties = {
        models = {
          description = "The list of models.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Model",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Optional. Pass this token as the `page_token` field of the request for a subsequent call.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ListOptimalTrialsRequest = {
      description = "The request message for the ListTrials service method.",
      id = "GoogleCloudMlV1__ListOptimalTrialsRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudMlV1__ListOptimalTrialsResponse = {
      description = "The response message for the ListOptimalTrials method.",
      id = "GoogleCloudMlV1__ListOptimalTrialsResponse",
      properties = {
        trials = {
          description = "The pareto-optimal trials for multiple objective study or the optimal trial for single objective study. The definition of pareto-optimal can be checked in wiki page. https://en.wikipedia.org/wiki/Pareto_efficiency",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Trial",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ListStudiesResponse = {
      id = "GoogleCloudMlV1__ListStudiesResponse",
      properties = {
        studies = {
          description = "The studies associated with the project.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Study",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ListTrialsResponse = {
      description = "The response message for the ListTrials method.",
      id = "GoogleCloudMlV1__ListTrialsResponse",
      properties = {
        trials = {
          description = "The trials associated with the study.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Trial",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ListVersionsResponse = {
      description = "Response message for the ListVersions method.",
      id = "GoogleCloudMlV1__ListVersionsResponse",
      properties = {
        nextPageToken = {
          description = "Optional. Pass this token as the `page_token` field of the request for a subsequent call.",
          type = "string",
        },
        versions = {
          description = "The list of versions.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Version",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__Location = {
      id = "GoogleCloudMlV1__Location",
      properties = {
        capabilities = {
          description = "Capabilities available in the location.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Capability",
          },
          type = "array",
        },
        name = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ManualScaling = {
      description = "Options for manually scaling a model.",
      id = "GoogleCloudMlV1__ManualScaling",
      properties = {
        nodes = {
          description = "The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed, so the cost of operating this model will be proportional to `nodes` * number of hours since last billing cycle plus the cost for each prediction performed.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__Measurement = {
      description = "A message representing a measurement.",
      id = "GoogleCloudMlV1__Measurement",
      properties = {
        elapsedTime = {
          description = "Output only. Time that the trial has been running at the point of this measurement.",
          format = "google-duration",
          type = "string",
        },
        metrics = {
          description = "Provides a list of metrics that act as inputs into the objective function.",
          items = {
            ["$ref"] = "GoogleCloudMlV1_Measurement_Metric",
          },
          type = "array",
        },
        stepCount = {
          description = "The number of steps a machine learning model has been trained for. Must be non-negative.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__MetricSpec = {
      description = "MetricSpec contains the specifications to use to calculate the desired nodes count when autoscaling is enabled.",
      id = "GoogleCloudMlV1__MetricSpec",
      properties = {
        name = {
          description = "metric name.",
          enum = {
            "METRIC_NAME_UNSPECIFIED",
            "CPU_USAGE",
            "GPU_DUTY_CYCLE",
          },
          enumDescriptions = {
            "Unspecified MetricName.",
            "CPU usage.",
            "GPU duty cycle.",
          },
          type = "string",
        },
        target = {
          description = "Target specifies the target value for the given metric; once real metric deviates from the threshold by a certain percentage, the node count changes.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__Model = {
      description = "Represents a machine learning solution. A model can have multiple versions, each of which is a deployed, trained model ready to receive prediction requests. The model itself is just a container.",
      id = "GoogleCloudMlV1__Model",
      properties = {
        defaultVersion = {
          ["$ref"] = "GoogleCloudMlV1__Version",
          description = "Output only. The default version of the model. This version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.models.versions.setDefault.",
        },
        description = {
          description = "Optional. The description specified for the model when it was created.",
          type = "string",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetModel`, and systems are expected to put that etag in the request to `UpdateModel` to ensure that their change will be applied to the model as intended.",
          format = "byte",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. One or more labels that you can add, to organize your models. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.",
          type = "object",
        },
        name = {
          description = "Required. The name specified for the model when it was created. The model name must be unique within the project it is created in.",
          type = "string",
        },
        onlinePredictionConsoleLogging = {
          description = "Optional. If true, online prediction nodes send `stderr` and `stdout` streams to Cloud Logging. These can be more verbose than the standard access logs (see `onlinePredictionLogging`) and can incur higher cost. However, they are helpful for debugging. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high QPS. Estimate your costs before enabling this option. Default is false.",
          type = "boolean",
        },
        onlinePredictionLogging = {
          description = "Optional. If true, online prediction access logs are sent to Cloud Logging. These logs are like standard server access logs, containing information like timestamp and latency for each request. Note that [logs may incur a cost](/stackdriver/pricing), especially if your project receives prediction requests at a high queries per second rate (QPS). Estimate your costs before enabling this option. Default is false.",
          type = "boolean",
        },
        regions = {
          description = "Optional. The list of regions where the model is going to be deployed. Only one region per model is supported. Defaults to 'us-central1' if nothing is set. See the available regions for AI Platform services. Note: * No matter where a model is deployed, it can always be accessed by users from anywhere, both for online and batch prediction. * The region for a batch prediction job is set by the region field when submitting the batch prediction job and does not take its value from this field.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__OperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudMlV1__OperationMetadata",
      properties = {
        createTime = {
          description = "The time the operation was submitted.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time operation processing completed.",
          format = "google-datetime",
          type = "string",
        },
        isCancellationRequested = {
          description = "Indicates whether a request to cancel this operation has been made.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The user labels, inherited from the model or the model version being operated on.",
          type = "object",
        },
        modelName = {
          description = "Contains the name of the model associated with the operation.",
          type = "string",
        },
        operationType = {
          description = "The operation type.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE_VERSION",
            "DELETE_VERSION",
            "DELETE_MODEL",
            "UPDATE_MODEL",
            "UPDATE_VERSION",
            "UPDATE_CONFIG",
          },
          enumDescriptions = {
            "Unspecified operation type.",
            "An operation to create a new version.",
            "An operation to delete an existing version.",
            "An operation to delete an existing model.",
            "An operation to update an existing model.",
            "An operation to update an existing version.",
            "An operation to update project configuration.",
          },
          type = "string",
        },
        projectNumber = {
          description = "Contains the project number associated with the operation.",
          format = "int64",
          type = "string",
        },
        startTime = {
          description = "The time operation processing started.",
          format = "google-datetime",
          type = "string",
        },
        version = {
          ["$ref"] = "GoogleCloudMlV1__Version",
          description = "Contains the version associated with the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ParameterSpec = {
      description = "Represents a single hyperparameter to optimize.",
      id = "GoogleCloudMlV1__ParameterSpec",
      properties = {
        categoricalValues = {
          description = "Required if type is `CATEGORICAL`. The list of possible categories.",
          items = {
            type = "string",
          },
          type = "array",
        },
        discreteValues = {
          description = "Required if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
        maxValue = {
          description = "Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is `INTEGER`.",
          format = "double",
          type = "number",
        },
        minValue = {
          description = "Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is INTEGER.",
          format = "double",
          type = "number",
        },
        parameterName = {
          description = "Required. The parameter name must be unique amongst all ParameterConfigs in a HyperparameterSpec message. E.g., \"learning_rate\".",
          type = "string",
        },
        scaleType = {
          description = "Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parameters. Some kind of scaling is strongly recommended for real or integral parameters (e.g., `UNIT_LINEAR_SCALE`).",
          enum = {
            "NONE",
            "UNIT_LINEAR_SCALE",
            "UNIT_LOG_SCALE",
            "UNIT_REVERSE_LOG_SCALE",
          },
          enumDescriptions = {
            "By default, no scaling is applied.",
            "Scales the feasible space to (0, 1) linearly.",
            "Scales the feasible space logarithmically to (0, 1). The entire feasible space must be strictly positive.",
            "Scales the feasible space \"reverse\" logarithmically to (0, 1). The result is that values close to the top of the feasible space are spread out more than points near the bottom. The entire feasible space must be strictly positive.",
          },
          type = "string",
        },
        type = {
          description = "Required. The type of the parameter.",
          enum = {
            "PARAMETER_TYPE_UNSPECIFIED",
            "DOUBLE",
            "INTEGER",
            "CATEGORICAL",
            "DISCRETE",
          },
          enumDescriptions = {
            "You must specify a valid type. Using this unspecified type will result in an error.",
            "Type for real-valued parameters.",
            "Type for integral parameters.",
            "The parameter is categorical, with a value chosen from the categories field.",
            "The parameter is real valued, with a fixed set of feasible points. If `type==DISCRETE`, feasible_points must be provided, and {`min_value`, `max_value`} will be ignored.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__PredictRequest = {
      description = "Request for predictions to be issued against a trained model.",
      id = "GoogleCloudMlV1__PredictRequest",
      properties = {
        httpBody = {
          ["$ref"] = "GoogleApi__HttpBody",
          description = " Required. The prediction request body. Refer to the [request body details section](#request-body-details) for more information on how to structure your request.",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__PredictionInput = {
      description = "Represents input parameters for a prediction job.",
      id = "GoogleCloudMlV1__PredictionInput",
      properties = {
        batchSize = {
          description = "Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number of records in memory before invoking one Tensorflow prediction call internally. So take the record size and memory available into consideration when setting this parameter.",
          format = "int64",
          type = "string",
        },
        dataFormat = {
          description = "Required. The format of the input data files.",
          enum = {
            "DATA_FORMAT_UNSPECIFIED",
            "JSON",
            "TEXT",
            "TF_RECORD",
            "TF_RECORD_GZIP",
            "CSV",
          },
          enumDescriptions = {
            "Unspecified format.",
            "Each line of the file is a JSON dictionary representing one record.",
            "Deprecated. Use JSON instead.",
            "The source file is a TFRecord file. Currently available only for input data.",
            "The source file is a GZIP-compressed TFRecord file. Currently available only for input data.",
            "Values are comma-separated rows, with keys in a separate file. Currently available only for output data.",
          },
          type = "string",
        },
        inputPaths = {
          description = "Required. The Cloud Storage location of the input data files. May contain wildcards.",
          items = {
            type = "string",
          },
          type = "array",
        },
        maxWorkerCount = {
          description = "Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not specified.",
          format = "int64",
          type = "string",
        },
        modelName = {
          description = "Use this field if you want to use the default version for the specified model. The string must use the following format: `\"projects/YOUR_PROJECT/models/YOUR_MODEL\"`",
          type = "string",
        },
        outputDataFormat = {
          description = "Optional. Format of the output data files, defaults to JSON.",
          enum = {
            "DATA_FORMAT_UNSPECIFIED",
            "JSON",
            "TEXT",
            "TF_RECORD",
            "TF_RECORD_GZIP",
            "CSV",
          },
          enumDescriptions = {
            "Unspecified format.",
            "Each line of the file is a JSON dictionary representing one record.",
            "Deprecated. Use JSON instead.",
            "The source file is a TFRecord file. Currently available only for input data.",
            "The source file is a GZIP-compressed TFRecord file. Currently available only for input data.",
            "Values are comma-separated rows, with keys in a separate file. Currently available only for output data.",
          },
          type = "string",
        },
        outputPath = {
          description = "Required. The output Google Cloud Storage location.",
          type = "string",
        },
        region = {
          description = "Required. The Google Compute Engine region to run the prediction job in. See the available regions for AI Platform services.",
          type = "string",
        },
        runtimeVersion = {
          description = "Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platform will pick the runtime version used during the CreateVersion request for this model version, or choose the latest stable version when model version information is not available such as when the model is specified by uri.",
          type = "string",
        },
        signatureName = {
          description = "Optional. The name of the signature defined in the SavedModel to use for this job. Please refer to [SavedModel](https://tensorflow.github.io/serving/serving_basic.html) for information about how to use signatures. Defaults to [DEFAULT_SERVING_SIGNATURE_DEF_KEY](https://www.tensorflow.org/api_docs/python/tf/saved_model/signature_constants) , which is \"serving_default\".",
          type = "string",
        },
        uri = {
          description = "Use this field if you want to specify a Google Cloud Storage path for the model to use.",
          type = "string",
        },
        versionName = {
          description = "Use this field if you want to specify a version of the model to use. The string is formatted the same way as `model_version`, with the addition of the version information: `\"projects/YOUR_PROJECT/models/YOUR_MODEL/versions/YOUR_VERSION\"`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__PredictionOutput = {
      description = "Represents results of a prediction job.",
      id = "GoogleCloudMlV1__PredictionOutput",
      properties = {
        errorCount = {
          description = "The number of data instances which resulted in errors.",
          format = "int64",
          type = "string",
        },
        nodeHours = {
          description = "Node hours used by the batch prediction job.",
          format = "double",
          type = "number",
        },
        outputPath = {
          description = "The output Google Cloud Storage location provided at the job creation time.",
          type = "string",
        },
        predictionCount = {
          description = "The number of generated predictions.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__ReplicaConfig = {
      description = "Represents the configuration for a replica in a cluster.",
      id = "GoogleCloudMlV1__ReplicaConfig",
      properties = {
        acceleratorConfig = {
          ["$ref"] = "GoogleCloudMlV1__AcceleratorConfig",
          description = "Represents the type and number of accelerators used by the replica. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu)",
        },
        containerArgs = {
          description = "Arguments to the entrypoint command. The following rules apply for container_command and container_args: - If you do not supply command or args: The defaults defined in the Docker image are used. - If you supply a command but no args: The default EntryPoint and the default Cmd defined in the Docker image are ignored. Your command is run without any arguments. - If you supply only args: The default Entrypoint defined in the Docker image is run with the args that you supplied. - If you supply a command and args: The default Entrypoint and the default Cmd defined in the Docker image are ignored. Your command is run with your args. It cannot be set if custom container image is not provided. Note that this field and [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at the same time.",
          items = {
            type = "string",
          },
          type = "array",
        },
        containerCommand = {
          description = "The command with which the replica's custom container is run. If provided, it will override default ENTRYPOINT of the docker image. If not provided, the docker image's ENTRYPOINT is used. It cannot be set if custom container image is not provided. Note that this field and [TrainingInput.args] are mutually exclusive, i.e., both cannot be set at the same time.",
          items = {
            type = "string",
          },
          type = "array",
        },
        diskConfig = {
          ["$ref"] = "GoogleCloudMlV1__DiskConfig",
          description = "Represents the configuration of disk options.",
        },
        imageUri = {
          description = "The Docker image to run on the replica. This image must be in Container Registry. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).",
          type = "string",
        },
        tpuTfVersion = {
          description = "The AI Platform runtime version that includes a TensorFlow version matching the one used in the custom container. This field is required if the replica is a TPU worker that uses a custom container. Otherwise, do not specify this field. This must be a [runtime version that currently supports training with TPUs](/ml-engine/docs/tensorflow/runtime-version-list#tpu-support). Note that the version of TensorFlow included in a runtime version may differ from the numbering of the runtime version itself, because it may have a different [patch version](https://www.tensorflow.org/guide/version_compat#semantic_versioning_20). In this field, you must specify the runtime version (TensorFlow minor version). For example, if your custom container runs TensorFlow `1.x.y`, specify `1.x`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__RequestLoggingConfig = {
      description = "Configuration for logging request-response pairs to a BigQuery table. Online prediction requests to a model version and the responses to these requests are converted to raw strings and saved to the specified BigQuery table. Logging is constrained by [BigQuery quotas and limits](/bigquery/quotas). If your project exceeds BigQuery quotas or limits, AI Platform Prediction does not log request-response pairs, but it continues to serve predictions. If you are using [continuous evaluation](/ml-engine/docs/continuous-evaluation/), you do not need to specify this configuration manually. Setting up continuous evaluation automatically enables logging of request-response pairs.",
      id = "GoogleCloudMlV1__RequestLoggingConfig",
      properties = {
        bigqueryTableName = {
          description = "Required. Fully qualified BigQuery table name in the following format: \" project_id.dataset_name.table_name\" The specified table must already exist, and the \"Cloud ML Service Agent\" for your project must have permission to write to it. The table must have the following [schema](/bigquery/docs/schemas): Field nameType Mode model STRING REQUIRED model_version STRING REQUIRED time TIMESTAMP REQUIRED raw_data STRING REQUIRED raw_prediction STRING NULLABLE groundtruth STRING NULLABLE ",
          type = "string",
        },
        samplingPercentage = {
          description = "Percentage of requests to be logged, expressed as a fraction from 0 to 1. For example, if you want to log 10% of requests, enter `0.1`. The sampling window is the lifetime of the model version. Defaults to 0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__RouteMap = {
      description = "Specifies HTTP paths served by a custom container. AI Platform Prediction sends requests to these paths on the container; the custom container must run an HTTP server that responds to these requests with appropriate responses. Read [Custom container requirements](/ai-platform/prediction/docs/custom-container-requirements) for details on how to create your container image to meet these requirements.",
      id = "GoogleCloudMlV1__RouteMap",
      properties = {
        health = {
          description = "HTTP path on the container to send health checkss to. AI Platform Prediction intermittently sends GET requests to this path on the container's IP address and port to check that the container is healthy. Read more about [health checks](/ai-platform/prediction/docs/custom-container-requirements#checks). For example, if you set this field to `/bar`, then AI Platform Prediction intermittently sends a GET request to the `/bar` path on the port of your container specified by the first value of Version.container.ports. If you don't specify this field, it defaults to the following value: /v1/models/ MODEL/versions/VERSION The placeholders in this value are replaced as follows: * MODEL: The name of the parent Model. This does not include the \"projects/PROJECT_ID/models/\" prefix that the API returns in output; it is the bare model name, as provided to projects.models.create. * VERSION: The name of the model version. This does not include the \"projects/PROJECT_ID /models/MODEL/versions/\" prefix that the API returns in output; it is the bare version name, as provided to projects.models.versions.create.",
          type = "string",
        },
        predict = {
          description = "HTTP path on the container to send prediction requests to. AI Platform Prediction forwards requests sent using projects.predict to this path on the container's IP address and port. AI Platform Prediction then returns the container's response in the API response. For example, if you set this field to `/foo`, then when AI Platform Prediction receives a prediction request, it forwards the request body in a POST request to the `/foo` path on the port of your container specified by the first value of Version.container.ports. If you don't specify this field, it defaults to the following value: /v1/models/MODEL/versions/VERSION:predict The placeholders in this value are replaced as follows: * MODEL: The name of the parent Model. This does not include the \"projects/PROJECT_ID/models/\" prefix that the API returns in output; it is the bare model name, as provided to projects.models.create. * VERSION: The name of the model version. This does not include the \"projects/PROJECT_ID/models/MODEL/versions/\" prefix that the API returns in output; it is the bare version name, as provided to projects.models.versions.create.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__SampledShapleyAttribution = {
      description = "An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.",
      id = "GoogleCloudMlV1__SampledShapleyAttribution",
      properties = {
        numPaths = {
          description = "The number of feature permutations to consider when approximating the Shapley values.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__Scheduling = {
      description = "All parameters related to scheduling of training jobs.",
      id = "GoogleCloudMlV1__Scheduling",
      properties = {
        maxRunningTime = {
          description = "Optional. The maximum job running time, expressed in seconds. The field can contain up to nine fractional digits, terminated by `s`. If not specified, this field defaults to `604800s` (seven days). If the training job is still running after this duration, AI Platform Training cancels it. The duration is measured from when the job enters the `RUNNING` state; therefore it does not overlap with the duration limited by Scheduling.max_wait_time. For example, if you want to ensure your job runs for no more than 2 hours, set this field to `7200s` (2 hours * 60 minutes / hour * 60 seconds / minute). If you submit your training job using the `gcloud` tool, you can [specify this field in a `config.yaml` file](/ai-platform/training/docs/training-jobs#formatting_your_configuration_parameters). For example: ```yaml trainingInput: scheduling: maxRunningTime: 7200s ```",
          format = "google-duration",
          type = "string",
        },
        maxWaitTime = {
          description = "Optional. The maximum job wait time, expressed in seconds. The field can contain up to nine fractional digits, terminated by `s`. If not specified, there is no limit to the wait time. The minimum for this field is `1800s` (30 minutes). If the training job has not entered the `RUNNING` state after this duration, AI Platform Training cancels it. After the job begins running, it can no longer be cancelled due to the maximum wait time. Therefore the duration limited by this field does not overlap with the duration limited by Scheduling.max_running_time. For example, if the job temporarily stops running and retries due to a [VM restart](/ai-platform/training/docs/overview#restarts), this cannot lead to a maximum wait time cancellation. However, independently of this constraint, AI Platform Training might stop a job if there are too many retries due to exhausted resources in a region. The following example describes how you might use this field: To cancel your job if it doesn't start running within 1 hour, set this field to `3600s` (1 hour * 60 minutes / hour * 60 seconds / minute). If the job is still in the `QUEUED` or `PREPARING` state after an hour of waiting, AI Platform Training cancels the job. If you submit your training job using the `gcloud` tool, you can [specify this field in a `config.yaml` file](/ai-platform/training/docs/training-jobs#formatting_your_configuration_parameters). For example: ```yaml trainingInput: scheduling: maxWaitTime: 3600s ```",
          format = "google-duration",
          type = "string",
        },
        priority = {
          description = "Optional. Job scheduling will be based on this priority, which in the range [0, 1000]. The bigger the number, the higher the priority. Default to 0 if not set. If there are multiple jobs requesting same type of accelerators, the high priority job will be scheduled prior to ones with low priority.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__SetDefaultVersionRequest = {
      description = "Request message for the SetDefaultVersion request.",
      id = "GoogleCloudMlV1__SetDefaultVersionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudMlV1__StopTrialRequest = {
      id = "GoogleCloudMlV1__StopTrialRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudMlV1__Study = {
      description = "A message representing a Study.",
      id = "GoogleCloudMlV1__Study",
      properties = {
        createTime = {
          description = "Output only. Time at which the study was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        inactiveReason = {
          description = "Output only. A human readable reason why the Study is inactive. This should be empty if a study is ACTIVE or COMPLETED.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The name of a study.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The detailed state of a study.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "INACTIVE",
            "COMPLETED",
          },
          enumDescriptions = {
            "The study state is unspecified.",
            "The study is active.",
            "The study is stopped due to an internal error.",
            "The study is done when the service exhausts the parameter search space or max_trial_count is reached.",
          },
          readOnly = true,
          type = "string",
        },
        studyConfig = {
          ["$ref"] = "GoogleCloudMlV1__StudyConfig",
          description = "Required. Configuration of the study.",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__StudyConfig = {
      description = "Represents configuration of a study.",
      id = "GoogleCloudMlV1__StudyConfig",
      properties = {
        algorithm = {
          description = "The search algorithm specified for the study.",
          enum = {
            "ALGORITHM_UNSPECIFIED",
            "GAUSSIAN_PROCESS_BANDIT",
            "GRID_SEARCH",
            "RANDOM_SEARCH",
          },
          enumDescriptions = {
            "The default algorithm used by the Cloud AI Platform Vizier service.",
            "Gaussian Process Bandit.",
            "Simple grid search within the feasible space. To use grid search, all parameters must be `INTEGER`, `CATEGORICAL`, or `DISCRETE`.",
            "Simple random search within the feasible space.",
          },
          type = "string",
        },
        automatedStoppingConfig = {
          ["$ref"] = "GoogleCloudMlV1__AutomatedStoppingConfig",
          description = "Configuration for automated stopping of unpromising Trials.",
        },
        metrics = {
          description = "Metric specs for the study.",
          items = {
            ["$ref"] = "GoogleCloudMlV1_StudyConfig_MetricSpec",
          },
          type = "array",
        },
        parameters = {
          description = "Required. The set of parameters to tune.",
          items = {
            ["$ref"] = "GoogleCloudMlV1_StudyConfig_ParameterSpec",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__SuggestTrialsMetadata = {
      description = "Metadata field of a google.longrunning.Operation associated with a SuggestTrialsRequest.",
      id = "GoogleCloudMlV1__SuggestTrialsMetadata",
      properties = {
        clientId = {
          description = "The identifier of the client that is requesting the suggestion.",
          type = "string",
        },
        createTime = {
          description = "The time operation was submitted.",
          format = "google-datetime",
          type = "string",
        },
        study = {
          description = "The name of the study that the trial belongs to.",
          type = "string",
        },
        suggestionCount = {
          description = "The number of suggestions requested.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__SuggestTrialsRequest = {
      description = "The request message for the SuggestTrial service method.",
      id = "GoogleCloudMlV1__SuggestTrialsRequest",
      properties = {
        clientId = {
          description = "Required. The identifier of the client that is requesting the suggestion. If multiple SuggestTrialsRequests have the same `client_id`, the service will return the identical suggested trial if the trial is pending, and provide a new trial if the last suggested trial was completed.",
          type = "string",
        },
        suggestionCount = {
          description = "Required. The number of suggestions requested.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__SuggestTrialsResponse = {
      description = "This message will be placed in the response field of a completed google.longrunning.Operation associated with a SuggestTrials request.",
      id = "GoogleCloudMlV1__SuggestTrialsResponse",
      properties = {
        endTime = {
          description = "The time at which operation processing completed.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The time at which the operation was started.",
          format = "google-datetime",
          type = "string",
        },
        studyState = {
          description = "The state of the study.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "INACTIVE",
            "COMPLETED",
          },
          enumDescriptions = {
            "The study state is unspecified.",
            "The study is active.",
            "The study is stopped due to an internal error.",
            "The study is done when the service exhausts the parameter search space or max_trial_count is reached.",
          },
          type = "string",
        },
        trials = {
          description = "A list of trials.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Trial",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__TrainingInput = {
      description = "Represents input parameters for a training job. When using the gcloud command to submit your training job, you can specify the input parameters as command-line arguments and/or in a YAML configuration file referenced from the --config command-line argument. For details, see the guide to [submitting a training job](/ai-platform/training/docs/training-jobs).",
      id = "GoogleCloudMlV1__TrainingInput",
      properties = {
        args = {
          description = "Optional. Command-line arguments passed to the training application when it starts. If your job uses a custom container, then the arguments are passed to the container's `ENTRYPOINT` command.",
          items = {
            type = "string",
          },
          type = "array",
        },
        enableWebAccess = {
          description = "Optional. Whether you want AI Platform Training to enable [interactive shell access](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) to training containers. If set to `true`, you can access interactive shells at the URIs given by TrainingOutput.web_access_uris or HyperparameterOutput.web_access_uris (within TrainingOutput.trials).",
          type = "boolean",
        },
        encryptionConfig = {
          ["$ref"] = "GoogleCloudMlV1__EncryptionConfig",
          description = "Optional. Options for using customer-managed encryption keys (CMEK) to protect resources created by a training job, instead of using Google's default encryption. If this is set, then all resources created by the training job will be encrypted with the customer-managed encryption key that you specify. [Learn how and when to use CMEK with AI Platform Training](/ai-platform/training/docs/cmek).",
        },
        evaluatorConfig = {
          ["$ref"] = "GoogleCloudMlV1__ReplicaConfig",
          description = "Optional. The configuration for evaluators. You should only set `evaluatorConfig.acceleratorConfig` if `evaluatorType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `evaluatorConfig.imageUri` only if you build a custom image for your evaluator. If `evaluatorConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).",
        },
        evaluatorCount = {
          description = "Optional. The number of evaluator replicas to use for the training job. Each replica in the cluster will be of the type specified in `evaluator_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `evaluator_type`. The default value is zero.",
          format = "int64",
          type = "string",
        },
        evaluatorType = {
          description = "Optional. Specifies the type of virtual machine to use for your training job's evaluator nodes. The supported values are the same as those described in the entry for `masterType`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. This value must be present when `scaleTier` is set to `CUSTOM` and `evaluatorCount` is greater than zero.",
          type = "string",
        },
        hyperparameters = {
          ["$ref"] = "GoogleCloudMlV1__HyperparameterSpec",
          description = "Optional. The set of Hyperparameters to tune.",
        },
        jobDir = {
          description = "Optional. A Google Cloud Storage path in which to store training outputs and other data needed for training. This path is passed to your TensorFlow program as the '--job-dir' command-line argument. The benefit of specifying this field is that Cloud ML validates the path for use in training.",
          type = "string",
        },
        masterConfig = {
          ["$ref"] = "GoogleCloudMlV1__ReplicaConfig",
          description = "Optional. The configuration for your master worker. You should only set `masterConfig.acceleratorConfig` if `masterType` is set to a Compute Engine machine type. Learn about [restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `masterConfig.imageUri` only if you build a custom image. Only one of `masterConfig.imageUri` and `runtimeVersion` should be set. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).",
        },
        masterType = {
          description = "Optional. Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. See the [list of compatible Compute Engine machine types](/ai-platform/training/docs/machine-types#compute-engine-machine-types). Alternatively, you can use the certain legacy machine types in this field. See the [list of legacy machine types](/ai-platform/training/docs/machine-types#legacy-machine-types). Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPUs](/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).",
          type = "string",
        },
        network = {
          description = "Optional. The full name of the [Compute Engine network](/vpc/docs/vpc) to which the Job is peered. For example, `projects/12345/global/networks/myVPC`. The format of this field is `projects/{project}/global/networks/{network}`, where {project} is a project number (like `12345`) and {network} is network name. Private services access must already be configured for the network. If left unspecified, the Job is not peered with any network. [Learn about using VPC Network Peering.](/ai-platform/training/docs/vpc-peering).",
          type = "string",
        },
        packageUris = {
          description = "Required. The Google Cloud Storage location of the packages with the training program and any additional dependencies. The maximum number of package URIs is 100.",
          items = {
            type = "string",
          },
          type = "array",
        },
        parameterServerConfig = {
          ["$ref"] = "GoogleCloudMlV1__ReplicaConfig",
          description = "Optional. The configuration for parameter servers. You should only set `parameterServerConfig.acceleratorConfig` if `parameterServerType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `parameterServerConfig.imageUri` only if you build a custom image for your parameter server. If `parameterServerConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).",
        },
        parameterServerCount = {
          description = "Optional. The number of parameter server replicas to use for the training job. Each replica in the cluster will be of the type specified in `parameter_server_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `parameter_server_type`. The default value is zero.",
          format = "int64",
          type = "string",
        },
        parameterServerType = {
          description = "Optional. Specifies the type of virtual machine to use for your training job's parameter server. The supported values are the same as those described in the entry for `master_type`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. This value must be present when `scaleTier` is set to `CUSTOM` and `parameter_server_count` is greater than zero.",
          type = "string",
        },
        pythonModule = {
          description = "Required. The Python module name to run after installing the packages.",
          type = "string",
        },
        pythonVersion = {
          description = "Optional. The version of Python used in training. You must either specify this field or specify `masterConfig.imageUri`. The following Python versions are available: * Python '3.7' is available when `runtime_version` is set to '1.15' or later. * Python '3.5' is available when `runtime_version` is set to a version from '1.4' to '1.14'. * Python '2.7' is available when `runtime_version` is set to '1.15' or earlier. Read more about the Python versions available for [each runtime version](/ml-engine/docs/runtime-version-list).",
          type = "string",
        },
        region = {
          description = "Required. The region to run the training job in. See the [available regions](/ai-platform/training/docs/regions) for AI Platform Training.",
          type = "string",
        },
        runtimeVersion = {
          description = "Optional. The AI Platform runtime version to use for training. You must either specify this field or specify `masterConfig.imageUri`. For more information, see the [runtime version list](/ai-platform/training/docs/runtime-version-list) and learn [how to manage runtime versions](/ai-platform/training/docs/versioning).",
          type = "string",
        },
        scaleTier = {
          description = "Required. Specifies the machine types, the number of replicas for workers and parameter servers.",
          enum = {
            "BASIC",
            "STANDARD_1",
            "PREMIUM_1",
            "BASIC_GPU",
            "BASIC_TPU",
            "CUSTOM",
          },
          enumDescriptions = {
            "A single worker instance. This tier is suitable for learning how to use Cloud ML, and for experimenting with new models using small datasets.",
            "Many workers and a few parameter servers.",
            "A large number of workers with many parameter servers.",
            "A single worker instance [with a GPU](/ai-platform/training/docs/using-gpus).",
            "A single worker instance with a [Cloud TPU](/ml-engine/docs/tensorflow/using-tpus).",
            "The CUSTOM tier is not a set tier, but rather enables you to use your own cluster specification. When you use this tier, set values to configure your processing cluster according to these guidelines: * You _must_ set `TrainingInput.masterType` to specify the type of machine to use for your master node. This is the only required setting. * You _may_ set `TrainingInput.workerCount` to specify the number of workers to use. If you specify one or more workers, you _must_ also set `TrainingInput.workerType` to specify the type of machine to use for your worker nodes. * You _may_ set `TrainingInput.parameterServerCount` to specify the number of parameter servers to use. If you specify one or more parameter servers, you _must_ also set `TrainingInput.parameterServerType` to specify the type of machine to use for your parameter servers. Note that all of your workers must use the same machine type, which can be different from your parameter server type and master type. Your parameter servers must likewise use the same machine type, which can be different from your worker type and master type.",
          },
          type = "string",
        },
        scheduling = {
          ["$ref"] = "GoogleCloudMlV1__Scheduling",
          description = "Optional. Scheduling options for a training job.",
        },
        serviceAccount = {
          description = "Optional. The email address of a service account to use when running the training appplication. You must have the `iam.serviceAccounts.actAs` permission for the specified service account. In addition, the AI Platform Training Google-managed service account must have the `roles/iam.serviceAccountAdmin` role for the specified service account. [Learn more about configuring a service account.](/ai-platform/training/docs/custom-service-account) If not specified, the AI Platform Training Google-managed service account is used by default.",
          type = "string",
        },
        useChiefInTfConfig = {
          description = "Optional. Use `chief` instead of `master` in the `TF_CONFIG` environment variable when training with a custom container. Defaults to `false`. [Learn more about this field.](/ai-platform/training/docs/distributed-training-details#chief-versus-master) This field has no effect for training jobs that don't use a custom container.",
          type = "boolean",
        },
        workerConfig = {
          ["$ref"] = "GoogleCloudMlV1__ReplicaConfig",
          description = "Optional. The configuration for workers. You should only set `workerConfig.acceleratorConfig` if `workerType` is set to a Compute Engine machine type. [Learn about restrictions on accelerator configurations for training.](/ai-platform/training/docs/using-gpus#compute-engine-machine-types-with-gpu) Set `workerConfig.imageUri` only if you build a custom image for your worker. If `workerConfig.imageUri` has not been set, AI Platform uses the value of `masterConfig.imageUri`. Learn more about [configuring custom containers](/ai-platform/training/docs/distributed-training-containers).",
        },
        workerCount = {
          description = "Optional. The number of worker replicas to use for the training job. Each replica in the cluster will be of the type specified in `worker_type`. This value can only be used when `scale_tier` is set to `CUSTOM`. If you set this value, you must also set `worker_type`. The default value is zero.",
          format = "int64",
          type = "string",
        },
        workerType = {
          description = "Optional. Specifies the type of virtual machine to use for your training job's worker nodes. The supported values are the same as those described in the entry for `masterType`. This value must be consistent with the category of machine type that `masterType` uses. In other words, both must be Compute Engine machine types or both must be legacy machine types. If you use `cloud_tpu` for this value, see special instructions for [configuring a custom TPU machine](/ml-engine/docs/tensorflow/using-tpus#configuring_a_custom_tpu_machine). This value must be present when `scaleTier` is set to `CUSTOM` and `workerCount` is greater than zero.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__TrainingOutput = {
      description = "Represents results of a training job. Output only.",
      id = "GoogleCloudMlV1__TrainingOutput",
      properties = {
        builtInAlgorithmOutput = {
          ["$ref"] = "GoogleCloudMlV1__BuiltInAlgorithmOutput",
          description = "Details related to built-in algorithms jobs. Only set for built-in algorithms jobs.",
        },
        completedTrialCount = {
          description = "The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs.",
          format = "int64",
          type = "string",
        },
        consumedMLUnits = {
          description = "The amount of ML units consumed by the job.",
          format = "double",
          type = "number",
        },
        hyperparameterMetricTag = {
          description = "The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See [`HyperparameterSpec.hyperparameterMetricTag`](#HyperparameterSpec.FIELDS.hyperparameter_metric_tag) for more information. Only set for hyperparameter tuning jobs.",
          type = "string",
        },
        isBuiltInAlgorithmJob = {
          description = "Whether this job is a built-in Algorithm job.",
          type = "boolean",
        },
        isHyperparameterTuningJob = {
          description = "Whether this job is a hyperparameter tuning job.",
          type = "boolean",
        },
        trials = {
          description = "Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__HyperparameterOutput",
          },
          type = "array",
        },
        webAccessUris = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.",
          readOnly = true,
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__Trial = {
      description = "A message representing a trial.",
      id = "GoogleCloudMlV1__Trial",
      properties = {
        clientId = {
          description = "Output only. The identifier of the client that originally requested this trial.",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. Time at which the trial's status changed to COMPLETED.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        finalMeasurement = {
          ["$ref"] = "GoogleCloudMlV1__Measurement",
          description = "The final measurement containing the objective value.",
        },
        infeasibleReason = {
          description = "Output only. A human readable string describing why the trial is infeasible. This should only be set if trial_infeasible is true.",
          readOnly = true,
          type = "string",
        },
        measurements = {
          description = "A list of measurements that are strictly lexicographically ordered by their induced tuples (steps, elapsed_time). These are used for early stopping computations.",
          items = {
            ["$ref"] = "GoogleCloudMlV1__Measurement",
          },
          type = "array",
        },
        name = {
          description = "Output only. Name of the trial assigned by the service.",
          readOnly = true,
          type = "string",
        },
        parameters = {
          description = "The parameters of the trial.",
          items = {
            ["$ref"] = "GoogleCloudMlV1_Trial_Parameter",
          },
          type = "array",
        },
        startTime = {
          description = "Output only. Time at which the trial was started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "The detailed state of a trial.",
          enum = {
            "STATE_UNSPECIFIED",
            "REQUESTED",
            "ACTIVE",
            "COMPLETED",
            "STOPPING",
          },
          enumDescriptions = {
            "The trial state is unspecified.",
            "Indicates that a specific trial has been requested, but it has not yet been suggested by the service.",
            "Indicates that the trial has been suggested.",
            "Indicates that the trial is done, and either has a final_measurement set, or is marked as trial_infeasible.",
            "Indicates that the trial should stop according to the service.",
          },
          type = "string",
        },
        trialInfeasible = {
          description = "Output only. If true, the parameters in this trial are not attempted again.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__Version = {
      description = "Represents a version of the model. Each version is a trained model deployed in the cloud, ready to handle prediction requests. A model can have multiple versions. You can get information about all of the versions of a given model by calling projects.models.versions.list.",
      id = "GoogleCloudMlV1__Version",
      properties = {
        acceleratorConfig = {
          ["$ref"] = "GoogleCloudMlV1__AcceleratorConfig",
          description = "Optional. Accelerator config for using GPUs for online prediction (beta). Only specify this field if you have specified a Compute Engine (N1) machine type in the `machineType` field. Learn more about [using GPUs for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).",
        },
        autoScaling = {
          ["$ref"] = "GoogleCloudMlV1__AutoScaling",
          description = "Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model's ability to scale or you will start seeing increases in latency and 429 response codes.",
        },
        container = {
          ["$ref"] = "GoogleCloudMlV1__ContainerSpec",
          description = "Optional. Specifies a custom container to use for serving predictions. If you specify this field, then `machineType` is required. If you specify this field, then `deploymentUri` is optional. If you specify this field, then you must not specify `runtimeVersion`, `packageUris`, `framework`, `pythonVersion`, or `predictionClass`.",
        },
        createTime = {
          description = "Output only. The time the version was created.",
          format = "google-datetime",
          type = "string",
        },
        deploymentUri = {
          description = "The Cloud Storage URI of a directory containing trained model artifacts to be used to create the model version. See the [guide to deploying models](/ai-platform/prediction/docs/deploying-models) for more information. The total number of files under this directory must not exceed 1000. During projects.models.versions.create, AI Platform Prediction copies all files from the specified directory to a location managed by the service. From then on, AI Platform Prediction uses these copies of the model artifacts to serve predictions, not the original files in Cloud Storage, so this location is useful only as a historical record. If you specify container, then this field is optional. Otherwise, it is required. Learn [how to use this field with a custom container](/ai-platform/prediction/docs/custom-container-requirements#artifacts).",
          type = "string",
        },
        description = {
          description = "Optional. The description specified for the version when it was created.",
          type = "string",
        },
        errorMessage = {
          description = "Output only. The details of a failure or a cancellation.",
          type = "string",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetVersion`, and systems are expected to put that etag in the request to `UpdateVersion` to ensure that their change will be applied to the model as intended.",
          format = "byte",
          type = "string",
        },
        explanationConfig = {
          ["$ref"] = "GoogleCloudMlV1__ExplanationConfig",
          description = "Optional. Configures explainability features on the model's version. Some explanation features require additional metadata to be loaded as part of the model payload.",
        },
        framework = {
          description = "Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are `TENSORFLOW`, `SCIKIT_LEARN`, `XGBOOST`. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose `SCIKIT_LEARN` or `XGBOOST`, you must also set the runtime version of the model to 1.4 or greater. Do **not** specify a framework if you're deploying a [custom prediction routine](/ai-platform/prediction/docs/custom-prediction-routines) or if you're using a [custom container](/ai-platform/prediction/docs/use-custom-container).",
          enum = {
            "FRAMEWORK_UNSPECIFIED",
            "TENSORFLOW",
            "SCIKIT_LEARN",
            "XGBOOST",
          },
          enumDescriptions = {
            "Unspecified framework. Assigns a value based on the file suffix.",
            "Tensorflow framework.",
            "Scikit-learn framework.",
            "XGBoost framework.",
          },
          type = "string",
        },
        isDefault = {
          description = "Output only. If true, this version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.methods.versions.setDefault.",
          type = "boolean",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. One or more labels that you can add, to organize your model versions. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.",
          type = "object",
        },
        lastMigrationModelId = {
          description = "Output only. The [AI Platform (Unified) `Model`](https://cloud.google.com/ai-platform-unified/docs/reference/rest/v1beta1/projects.locations.models) ID for the last [model migration](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).",
          readOnly = true,
          type = "string",
        },
        lastMigrationTime = {
          description = "Output only. The last time this version was successfully [migrated to AI Platform (Unified)](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        lastUseTime = {
          description = "Output only. The time the version was last used for prediction.",
          format = "google-datetime",
          type = "string",
        },
        machineType = {
          description = "Optional. The type of machine on which to serve the model. Currently only applies to online prediction service. To learn about valid values for this field, read [Choosing a machine type for online prediction](/ai-platform/prediction/docs/machine-types-online-prediction). If this field is not specified and you are using a [regional endpoint](/ai-platform/prediction/docs/regional-endpoints), then the machine type defaults to `n1-standard-2`. If this field is not specified and you are using the global endpoint (`ml.googleapis.com`), then the machine type defaults to `mls1-c1-m2`.",
          type = "string",
        },
        manualScaling = {
          ["$ref"] = "GoogleCloudMlV1__ManualScaling",
          description = "Manually select the number of nodes to use for serving the model. You should generally use `auto_scaling` with an appropriate `min_nodes` instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes.",
        },
        name = {
          description = "Required. The name specified for the version when it was created. The version name must be unique within the model it is created in.",
          type = "string",
        },
        packageUris = {
          description = "Optional. Cloud Storage paths (`gs://…`) of packages for [custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines) or [scikit-learn pipelines with custom code](/ml-engine/docs/scikit/exporting-for-prediction#custom-pipeline-code). For a custom prediction routine, one of these packages must contain your Predictor class (see [`predictionClass`](#Version.FIELDS.prediction_class)). Additionally, include any dependencies used by your Predictor or scikit-learn pipeline uses that are not already included in your selected [runtime version](/ml-engine/docs/tensorflow/runtime-version-list). If you specify this field, you must also set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater.",
          items = {
            type = "string",
          },
          type = "array",
        },
        predictionClass = {
          description = "Optional. The fully qualified name (module_name.class_name) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the [`packageUris` field](#Version.FIELDS.package_uris). Specify this field if and only if you are deploying a [custom prediction routine (beta)](/ml-engine/docs/tensorflow/custom-prediction-routines). If you specify this field, you must set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater and you must set `machineType` to a [legacy (MLS1) machine type](/ml-engine/docs/machine-types-online-prediction). The following code sample provides the Predictor interface: class Predictor(object): \"\"\"Interface for constructing custom predictors.\"\"\" def predict(self, instances, **kwargs): \"\"\"Performs custom prediction. Instances are the decoded values from the request. They have already been deserialized from JSON. Args: instances: A list of prediction input instances. **kwargs: A dictionary of keyword args provided as additional fields on the predict request body. Returns: A list of outputs containing the prediction results. This list must be JSON serializable. \"\"\" raise NotImplementedError() @classmethod def from_path(cls, model_dir): \"\"\"Creates an instance of Predictor using the given path. Loading of the predictor should be done in this method. Args: model_dir: The local directory that contains the exported model file along with any additional files uploaded when creating the version resource. Returns: An instance implementing this Predictor class. \"\"\" raise NotImplementedError() Learn more about [the Predictor interface and custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines).",
          type = "string",
        },
        pythonVersion = {
          description = "Required. The version of Python used in prediction. The following Python versions are available: * Python '3.7' is available when `runtime_version` is set to '1.15' or later. * Python '3.5' is available when `runtime_version` is set to a version from '1.4' to '1.14'. * Python '2.7' is available when `runtime_version` is set to '1.15' or earlier. Read more about the Python versions available for [each runtime version](/ml-engine/docs/runtime-version-list).",
          type = "string",
        },
        requestLoggingConfig = {
          ["$ref"] = "GoogleCloudMlV1__RequestLoggingConfig",
          description = "Optional. *Only* specify this field in a projects.models.versions.patch request. Specifying it in a projects.models.versions.create request has no effect. Configures the request-response pair logging on predictions from this Version.",
        },
        routes = {
          ["$ref"] = "GoogleCloudMlV1__RouteMap",
          description = "Optional. Specifies paths on a custom container's HTTP server where AI Platform Prediction sends certain requests. If you specify this field, then you must also specify the `container` field. If you specify the `container` field and do not specify this field, it defaults to the following: ```json { \"predict\": \"/v1/models/MODEL/versions/VERSION:predict\", \"health\": \"/v1/models/MODEL/versions/VERSION\" } ``` See RouteMap for more details about these default values.",
        },
        runtimeVersion = {
          description = "Required. The AI Platform runtime version to use for this deployment. For more information, see the [runtime version list](/ml-engine/docs/runtime-version-list) and [how to manage runtime versions](/ml-engine/docs/versioning).",
          type = "string",
        },
        serviceAccount = {
          description = "Optional. Specifies the service account for resource access control. If you specify this field, then you must also specify either the `containerSpec` or the `predictionClass` field. Learn more about [using a custom service account](/ai-platform/prediction/docs/custom-service-account).",
          type = "string",
        },
        state = {
          description = "Output only. The state of a version.",
          enum = {
            "UNKNOWN",
            "READY",
            "CREATING",
            "FAILED",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "The version state is unspecified.",
            "The version is ready for prediction.",
            "The version is being created. New UpdateVersion and DeleteVersion requests will fail if a version is in the CREATING state.",
            "The version failed to be created, possibly cancelled. `error_message` should contain the details of the failure.",
            "The version is being deleted. New UpdateVersion and DeleteVersion requests will fail if a version is in the DELETING state.",
            "The version is being updated. New UpdateVersion and DeleteVersion requests will fail if a version is in the UPDATING state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudMlV1__XraiAttribution = {
      description = "Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.",
      id = "GoogleCloudMlV1__XraiAttribution",
      properties = {
        numIntegralSteps = {
          description = "Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleIamV1__AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "GoogleIamV1__AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "GoogleIamV1__AuditLogConfig",
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
    GoogleIamV1__AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "GoogleIamV1__AuditLogConfig",
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
    GoogleIamV1__Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "GoogleIamV1__Binding",
      properties = {
        condition = {
          ["$ref"] = "GoogleType__Expr",
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
    GoogleIamV1__Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "GoogleIamV1__Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "GoogleIamV1__AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "GoogleIamV1__Binding",
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
    GoogleIamV1__SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "GoogleIamV1__SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "GoogleIamV1__Policy",
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
    GoogleIamV1__TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "GoogleIamV1__TestIamPermissionsRequest",
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
    GoogleIamV1__TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "GoogleIamV1__TestIamPermissionsResponse",
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
    GoogleLongrunning__ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunning__ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunning__Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunning__Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunning__Operation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpc__Status",
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
    GoogleProtobuf__Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobuf__Empty",
      properties = {},
      type = "object",
    },
    GoogleRpc__Status = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpc__Status",
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
    GoogleType__Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "GoogleType__Expr",
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
  },
  servicePath = "",
  title = "AI Platform Training & Prediction API",
  version = "v1",
  version_module = true,
}