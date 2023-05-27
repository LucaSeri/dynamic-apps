return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/compute"] = {
          description = "View and manage your Google Compute Engine resources",
        },
        ["https://www.googleapis.com/auth/compute.readonly"] = {
          description = "View your Google Compute Engine resources",
        },
        ["https://www.googleapis.com/auth/userinfo.email"] = {
          description = "See your primary Google Account email address",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://dataflow.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Dataflow",
  description = "Manages Google Cloud Dataflow projects on Google Cloud Platform.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/dataflow",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "dataflow:v1b3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://dataflow.mtls.googleapis.com/",
  name = "dataflow",
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
        deleteSnapshots = {
          description = "Deletes a snapshot.",
          flatPath = "v1b3/projects/{projectId}/snapshots",
          httpMethod = "DELETE",
          id = "dataflow.projects.deleteSnapshots",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            location = {
              description = "The location that contains this snapshot.",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "The ID of the Cloud Platform project that the snapshot belongs to.",
              location = "path",
              required = true,
              type = "string",
            },
            snapshotId = {
              description = "The ID of the snapshot.",
              location = "query",
              type = "string",
            },
          },
          path = "v1b3/projects/{projectId}/snapshots",
          response = {
            ["$ref"] = "DeleteSnapshotResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/compute.readonly",
            "https://www.googleapis.com/auth/userinfo.email",
          },
        },
        workerMessages = {
          description = "Send a worker_message to the service.",
          flatPath = "v1b3/projects/{projectId}/WorkerMessages",
          httpMethod = "POST",
          id = "dataflow.projects.workerMessages",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "The project to send the WorkerMessages to.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1b3/projects/{projectId}/WorkerMessages",
          request = {
            ["$ref"] = "SendWorkerMessagesRequest",
          },
          response = {
            ["$ref"] = "SendWorkerMessagesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/compute.readonly",
            "https://www.googleapis.com/auth/userinfo.email",
          },
        },
      },
      resources = {
        jobs = {
          methods = {
            aggregated = {
              description = "List the jobs of a project across all regions.",
              flatPath = "v1b3/projects/{projectId}/jobs:aggregated",
              httpMethod = "GET",
              id = "dataflow.projects.jobs.aggregated",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                filter = {
                  description = "The kind of filter to use.",
                  enum = {
                    "UNKNOWN",
                    "ALL",
                    "TERMINATED",
                    "ACTIVE",
                  },
                  enumDescriptions = {
                    "The filter isn't specified, or is unknown. This returns all jobs ordered on descending `JobUuid`.",
                    "Returns all running jobs first ordered on creation timestamp, then returns all terminated jobs ordered on the termination timestamp.",
                    "Filters the jobs that have a terminated state, ordered on the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`, `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.",
                    "Filters the jobs that are running ordered on the creation timestamp.",
                  },
                  location = "query",
                  type = "string",
                },
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Optional. The job name. Optional.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "If there are many jobs, limit response to at most this many. The actual number of jobs returned will be the lesser of max_responses and an unspecified server-defined limit.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Set this to the 'next_page_token' field of a previous response to request additional results in a long list.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "The project which owns the jobs.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews.",
                  enum = {
                    "JOB_VIEW_UNKNOWN",
                    "JOB_VIEW_SUMMARY",
                    "JOB_VIEW_ALL",
                    "JOB_VIEW_DESCRIPTION",
                  },
                  enumDescriptions = {
                    "The job view to return isn't specified, or is unknown. Responses will contain at least the `JOB_VIEW_SUMMARY` information, and may contain additional information.",
                    "Request summary information only: Project ID, Job ID, job name, job type, job status, start/end time, and Cloud SDK version details.",
                    "Request all information available for this job.",
                    "Request summary info and limited job description data for steps, labels and environment.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/jobs:aggregated",
              response = {
                ["$ref"] = "ListJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            create = {
              description = "Creates a Cloud Dataflow job. To create a job, we recommend using `projects.locations.jobs.create` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.create` is not recommended, as your job will always start in `us-central1`. Do not enter confidential information when you supply string values using the API.",
              flatPath = "v1b3/projects/{projectId}/jobs",
              httpMethod = "POST",
              id = "dataflow.projects.jobs.create",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "The ID of the Cloud Platform project that the job belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                replaceJobId = {
                  description = "Deprecated. This field is now in the Job message.",
                  location = "query",
                  type = "string",
                },
                view = {
                  description = "The level of information requested in response.",
                  enum = {
                    "JOB_VIEW_UNKNOWN",
                    "JOB_VIEW_SUMMARY",
                    "JOB_VIEW_ALL",
                    "JOB_VIEW_DESCRIPTION",
                  },
                  enumDescriptions = {
                    "The job view to return isn't specified, or is unknown. Responses will contain at least the `JOB_VIEW_SUMMARY` information, and may contain additional information.",
                    "Request summary information only: Project ID, Job ID, job name, job type, job status, start/end time, and Cloud SDK version details.",
                    "Request all information available for this job.",
                    "Request summary info and limited job description data for steps, labels and environment.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/jobs",
              request = {
                ["$ref"] = "Job",
              },
              response = {
                ["$ref"] = "Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            get = {
              description = "Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using `projects.locations.jobs.get` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.get` is not recommended, as you can only get the state of jobs that are running in `us-central1`.",
              flatPath = "v1b3/projects/{projectId}/jobs/{jobId}",
              httpMethod = "GET",
              id = "dataflow.projects.jobs.get",
              parameterOrder = {
                "projectId",
                "jobId",
              },
              parameters = {
                jobId = {
                  description = "The job ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "The ID of the Cloud Platform project that the job belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The level of information requested in response.",
                  enum = {
                    "JOB_VIEW_UNKNOWN",
                    "JOB_VIEW_SUMMARY",
                    "JOB_VIEW_ALL",
                    "JOB_VIEW_DESCRIPTION",
                  },
                  enumDescriptions = {
                    "The job view to return isn't specified, or is unknown. Responses will contain at least the `JOB_VIEW_SUMMARY` information, and may contain additional information.",
                    "Request summary information only: Project ID, Job ID, job name, job type, job status, start/end time, and Cloud SDK version details.",
                    "Request all information available for this job.",
                    "Request summary info and limited job description data for steps, labels and environment.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/jobs/{jobId}",
              response = {
                ["$ref"] = "Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            getMetrics = {
              description = "Request the job status. To request the status of a job, we recommend using `projects.locations.jobs.getMetrics` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.getMetrics` is not recommended, as you can only request the status of jobs that are running in `us-central1`.",
              flatPath = "v1b3/projects/{projectId}/jobs/{jobId}/metrics",
              httpMethod = "GET",
              id = "dataflow.projects.jobs.getMetrics",
              parameterOrder = {
                "projectId",
                "jobId",
              },
              parameters = {
                jobId = {
                  description = "The job to get metrics for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "A project id.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                startTime = {
                  description = "Return only metric data that has changed since this time. Default is to return all information about all metrics for the job.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/jobs/{jobId}/metrics",
              response = {
                ["$ref"] = "JobMetrics",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            list = {
              description = "List the jobs of a project. To list the jobs of a project in a region, we recommend using `projects.locations.jobs.list` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). To list the all jobs across all regions, use `projects.jobs.aggregated`. Using `projects.jobs.list` is not recommended, as you can only get the list of jobs that are running in `us-central1`.",
              flatPath = "v1b3/projects/{projectId}/jobs",
              httpMethod = "GET",
              id = "dataflow.projects.jobs.list",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                filter = {
                  description = "The kind of filter to use.",
                  enum = {
                    "UNKNOWN",
                    "ALL",
                    "TERMINATED",
                    "ACTIVE",
                  },
                  enumDescriptions = {
                    "The filter isn't specified, or is unknown. This returns all jobs ordered on descending `JobUuid`.",
                    "Returns all running jobs first ordered on creation timestamp, then returns all terminated jobs ordered on the termination timestamp.",
                    "Filters the jobs that have a terminated state, ordered on the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`, `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.",
                    "Filters the jobs that are running ordered on the creation timestamp.",
                  },
                  location = "query",
                  type = "string",
                },
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Optional. The job name. Optional.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "If there are many jobs, limit response to at most this many. The actual number of jobs returned will be the lesser of max_responses and an unspecified server-defined limit.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Set this to the 'next_page_token' field of a previous response to request additional results in a long list.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "The project which owns the jobs.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews.",
                  enum = {
                    "JOB_VIEW_UNKNOWN",
                    "JOB_VIEW_SUMMARY",
                    "JOB_VIEW_ALL",
                    "JOB_VIEW_DESCRIPTION",
                  },
                  enumDescriptions = {
                    "The job view to return isn't specified, or is unknown. Responses will contain at least the `JOB_VIEW_SUMMARY` information, and may contain additional information.",
                    "Request summary information only: Project ID, Job ID, job name, job type, job status, start/end time, and Cloud SDK version details.",
                    "Request all information available for this job.",
                    "Request summary info and limited job description data for steps, labels and environment.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/jobs",
              response = {
                ["$ref"] = "ListJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            snapshot = {
              description = "Snapshot the state of a streaming job.",
              flatPath = "v1b3/projects/{projectId}/jobs/{jobId}:snapshot",
              httpMethod = "POST",
              id = "dataflow.projects.jobs.snapshot",
              parameterOrder = {
                "projectId",
                "jobId",
              },
              parameters = {
                jobId = {
                  description = "The job to be snapshotted.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "The project which owns the job to be snapshotted.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/jobs/{jobId}:snapshot",
              request = {
                ["$ref"] = "SnapshotJobRequest",
              },
              response = {
                ["$ref"] = "Snapshot",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            update = {
              description = "Updates the state of an existing Cloud Dataflow job. To update the state of an existing job, we recommend using `projects.locations.jobs.update` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.update` is not recommended, as you can only update the state of jobs that are running in `us-central1`.",
              flatPath = "v1b3/projects/{projectId}/jobs/{jobId}",
              httpMethod = "PUT",
              id = "dataflow.projects.jobs.update",
              parameterOrder = {
                "projectId",
                "jobId",
              },
              parameters = {
                jobId = {
                  description = "The job ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "The ID of the Cloud Platform project that the job belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/jobs/{jobId}",
              request = {
                ["$ref"] = "Job",
              },
              response = {
                ["$ref"] = "Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
          },
          resources = {
            debug = {
              methods = {
                getConfig = {
                  description = "Get encoded debug configuration for component. Not cacheable.",
                  flatPath = "v1b3/projects/{projectId}/jobs/{jobId}/debug/getConfig",
                  httpMethod = "POST",
                  id = "dataflow.projects.jobs.debug.getConfig",
                  parameterOrder = {
                    "projectId",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "The job id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The project id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/jobs/{jobId}/debug/getConfig",
                  request = {
                    ["$ref"] = "GetDebugConfigRequest",
                  },
                  response = {
                    ["$ref"] = "GetDebugConfigResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                sendCapture = {
                  description = "Send encoded debug capture data for component.",
                  flatPath = "v1b3/projects/{projectId}/jobs/{jobId}/debug/sendCapture",
                  httpMethod = "POST",
                  id = "dataflow.projects.jobs.debug.sendCapture",
                  parameterOrder = {
                    "projectId",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "The job id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The project id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/jobs/{jobId}/debug/sendCapture",
                  request = {
                    ["$ref"] = "SendDebugCaptureRequest",
                  },
                  response = {
                    ["$ref"] = "SendDebugCaptureResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
              },
            },
            messages = {
              methods = {
                list = {
                  description = "Request the job status. To request the status of a job, we recommend using `projects.locations.jobs.messages.list` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.messages.list` is not recommended, as you can only request the status of jobs that are running in `us-central1`.",
                  flatPath = "v1b3/projects/{projectId}/jobs/{jobId}/messages",
                  httpMethod = "GET",
                  id = "dataflow.projects.jobs.messages.list",
                  parameterOrder = {
                    "projectId",
                    "jobId",
                  },
                  parameters = {
                    endTime = {
                      description = "Return only messages with timestamps < end_time. The default is now (i.e. return up to the latest messages available).",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                    jobId = {
                      description = "The job to get messages about.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
                      location = "query",
                      type = "string",
                    },
                    minimumImportance = {
                      description = "Filter to only get messages with importance >= level",
                      enum = {
                        "JOB_MESSAGE_IMPORTANCE_UNKNOWN",
                        "JOB_MESSAGE_DEBUG",
                        "JOB_MESSAGE_DETAILED",
                        "JOB_MESSAGE_BASIC",
                        "JOB_MESSAGE_WARNING",
                        "JOB_MESSAGE_ERROR",
                      },
                      enumDescriptions = {
                        "The message importance isn't specified, or is unknown.",
                        "The message is at the 'debug' level: typically only useful for software engineers working on the code the job is running. Typically, Dataflow pipeline runners do not display log messages at this level by default.",
                        "The message is at the 'detailed' level: somewhat verbose, but potentially useful to users. Typically, Dataflow pipeline runners do not display log messages at this level by default. These messages are displayed by default in the Dataflow monitoring UI.",
                        "The message is at the 'basic' level: useful for keeping track of the execution of a Dataflow pipeline. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
                        "The message is at the 'warning' level: indicating a condition pertaining to a job which may require human intervention. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
                        "The message is at the 'error' level: indicating a condition preventing a job from succeeding. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
                      },
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "If specified, determines the maximum number of messages to return. If unspecified, the service may choose an appropriate default, or may return an arbitrarily large number of results.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "If supplied, this should be the value of next_page_token returned by an earlier call. This will cause the next page of results to be returned.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "A project id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    startTime = {
                      description = "If specified, return only messages with timestamps >= start_time. The default is the job creation time (i.e. beginning of messages).",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/jobs/{jobId}/messages",
                  response = {
                    ["$ref"] = "ListJobMessagesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
              },
            },
            workItems = {
              methods = {
                lease = {
                  description = "Leases a dataflow WorkItem to run.",
                  flatPath = "v1b3/projects/{projectId}/jobs/{jobId}/workItems:lease",
                  httpMethod = "POST",
                  id = "dataflow.projects.jobs.workItems.lease",
                  parameterOrder = {
                    "projectId",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "Identifies the workflow job this worker belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Identifies the project this worker belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/jobs/{jobId}/workItems:lease",
                  request = {
                    ["$ref"] = "LeaseWorkItemRequest",
                  },
                  response = {
                    ["$ref"] = "LeaseWorkItemResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                reportStatus = {
                  description = "Reports the status of dataflow WorkItems leased by a worker.",
                  flatPath = "v1b3/projects/{projectId}/jobs/{jobId}/workItems:reportStatus",
                  httpMethod = "POST",
                  id = "dataflow.projects.jobs.workItems.reportStatus",
                  parameterOrder = {
                    "projectId",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "The job which the WorkItem is part of.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The project which owns the WorkItem's job.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/jobs/{jobId}/workItems:reportStatus",
                  request = {
                    ["$ref"] = "ReportWorkItemStatusRequest",
                  },
                  response = {
                    ["$ref"] = "ReportWorkItemStatusResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
              },
            },
          },
        },
        locations = {
          methods = {
            workerMessages = {
              description = "Send a worker_message to the service.",
              flatPath = "v1b3/projects/{projectId}/locations/{location}/WorkerMessages",
              httpMethod = "POST",
              id = "dataflow.projects.locations.workerMessages",
              parameterOrder = {
                "projectId",
                "location",
              },
              parameters = {
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "The project to send the WorkerMessages to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/locations/{location}/WorkerMessages",
              request = {
                ["$ref"] = "SendWorkerMessagesRequest",
              },
              response = {
                ["$ref"] = "SendWorkerMessagesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
          },
          resources = {
            flexTemplates = {
              methods = {
                launch = {
                  description = "Launch a job with a FlexTemplate.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/flexTemplates:launch",
                  httpMethod = "POST",
                  id = "dataflow.projects.locations.flexTemplates.launch",
                  parameterOrder = {
                    "projectId",
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "Required. The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request. E.g., us-central1, us-west1.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/flexTemplates:launch",
                  request = {
                    ["$ref"] = "LaunchFlexTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "LaunchFlexTemplateResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
              },
            },
            jobs = {
              methods = {
                create = {
                  description = "Creates a Cloud Dataflow job. To create a job, we recommend using `projects.locations.jobs.create` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.create` is not recommended, as your job will always start in `us-central1`. Do not enter confidential information when you supply string values using the API.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs",
                  httpMethod = "POST",
                  id = "dataflow.projects.locations.jobs.create",
                  parameterOrder = {
                    "projectId",
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The ID of the Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    replaceJobId = {
                      description = "Deprecated. This field is now in the Job message.",
                      location = "query",
                      type = "string",
                    },
                    view = {
                      description = "The level of information requested in response.",
                      enum = {
                        "JOB_VIEW_UNKNOWN",
                        "JOB_VIEW_SUMMARY",
                        "JOB_VIEW_ALL",
                        "JOB_VIEW_DESCRIPTION",
                      },
                      enumDescriptions = {
                        "The job view to return isn't specified, or is unknown. Responses will contain at least the `JOB_VIEW_SUMMARY` information, and may contain additional information.",
                        "Request summary information only: Project ID, Job ID, job name, job type, job status, start/end time, and Cloud SDK version details.",
                        "Request all information available for this job.",
                        "Request summary info and limited job description data for steps, labels and environment.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/jobs",
                  request = {
                    ["$ref"] = "Job",
                  },
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                get = {
                  description = "Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using `projects.locations.jobs.get` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.get` is not recommended, as you can only get the state of jobs that are running in `us-central1`.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}",
                  httpMethod = "GET",
                  id = "dataflow.projects.locations.jobs.get",
                  parameterOrder = {
                    "projectId",
                    "location",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "The job ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The ID of the Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "The level of information requested in response.",
                      enum = {
                        "JOB_VIEW_UNKNOWN",
                        "JOB_VIEW_SUMMARY",
                        "JOB_VIEW_ALL",
                        "JOB_VIEW_DESCRIPTION",
                      },
                      enumDescriptions = {
                        "The job view to return isn't specified, or is unknown. Responses will contain at least the `JOB_VIEW_SUMMARY` information, and may contain additional information.",
                        "Request summary information only: Project ID, Job ID, job name, job type, job status, start/end time, and Cloud SDK version details.",
                        "Request all information available for this job.",
                        "Request summary info and limited job description data for steps, labels and environment.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}",
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                getExecutionDetails = {
                  description = "Request detailed information about the execution status of the job. EXPERIMENTAL. This API is subject to change or removal without notice.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/executionDetails",
                  httpMethod = "GET",
                  id = "dataflow.projects.locations.jobs.getExecutionDetails",
                  parameterOrder = {
                    "projectId",
                    "location",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "The job to get execution details for.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "If specified, determines the maximum number of stages to return. If unspecified, the service may choose an appropriate default, or may return an arbitrarily large number of results.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "If supplied, this should be the value of next_page_token returned by an earlier call. This will cause the next page of results to be returned.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "A project id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/executionDetails",
                  response = {
                    ["$ref"] = "JobExecutionDetails",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                getMetrics = {
                  description = "Request the job status. To request the status of a job, we recommend using `projects.locations.jobs.getMetrics` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.getMetrics` is not recommended, as you can only request the status of jobs that are running in `us-central1`.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/metrics",
                  httpMethod = "GET",
                  id = "dataflow.projects.locations.jobs.getMetrics",
                  parameterOrder = {
                    "projectId",
                    "location",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "The job to get metrics for.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "A project id.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    startTime = {
                      description = "Return only metric data that has changed since this time. Default is to return all information about all metrics for the job.",
                      format = "google-datetime",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/metrics",
                  response = {
                    ["$ref"] = "JobMetrics",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                list = {
                  description = "List the jobs of a project. To list the jobs of a project in a region, we recommend using `projects.locations.jobs.list` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). To list the all jobs across all regions, use `projects.jobs.aggregated`. Using `projects.jobs.list` is not recommended, as you can only get the list of jobs that are running in `us-central1`.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs",
                  httpMethod = "GET",
                  id = "dataflow.projects.locations.jobs.list",
                  parameterOrder = {
                    "projectId",
                    "location",
                  },
                  parameters = {
                    filter = {
                      description = "The kind of filter to use.",
                      enum = {
                        "UNKNOWN",
                        "ALL",
                        "TERMINATED",
                        "ACTIVE",
                      },
                      enumDescriptions = {
                        "The filter isn't specified, or is unknown. This returns all jobs ordered on descending `JobUuid`.",
                        "Returns all running jobs first ordered on creation timestamp, then returns all terminated jobs ordered on the termination timestamp.",
                        "Filters the jobs that have a terminated state, ordered on the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`, `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.",
                        "Filters the jobs that are running ordered on the creation timestamp.",
                      },
                      location = "query",
                      type = "string",
                    },
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    name = {
                      description = "Optional. The job name. Optional.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "If there are many jobs, limit response to at most this many. The actual number of jobs returned will be the lesser of max_responses and an unspecified server-defined limit.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Set this to the 'next_page_token' field of a previous response to request additional results in a long list.",
                      location = "query",
                      type = "string",
                    },
                    projectId = {
                      description = "The project which owns the jobs.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews.",
                      enum = {
                        "JOB_VIEW_UNKNOWN",
                        "JOB_VIEW_SUMMARY",
                        "JOB_VIEW_ALL",
                        "JOB_VIEW_DESCRIPTION",
                      },
                      enumDescriptions = {
                        "The job view to return isn't specified, or is unknown. Responses will contain at least the `JOB_VIEW_SUMMARY` information, and may contain additional information.",
                        "Request summary information only: Project ID, Job ID, job name, job type, job status, start/end time, and Cloud SDK version details.",
                        "Request all information available for this job.",
                        "Request summary info and limited job description data for steps, labels and environment.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/jobs",
                  response = {
                    ["$ref"] = "ListJobsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                snapshot = {
                  description = "Snapshot the state of a streaming job.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}:snapshot",
                  httpMethod = "POST",
                  id = "dataflow.projects.locations.jobs.snapshot",
                  parameterOrder = {
                    "projectId",
                    "location",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "The job to be snapshotted.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    location = {
                      description = "The location that contains this job.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The project which owns the job to be snapshotted.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}:snapshot",
                  request = {
                    ["$ref"] = "SnapshotJobRequest",
                  },
                  response = {
                    ["$ref"] = "Snapshot",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                update = {
                  description = "Updates the state of an existing Cloud Dataflow job. To update the state of an existing job, we recommend using `projects.locations.jobs.update` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.update` is not recommended, as you can only update the state of jobs that are running in `us-central1`.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}",
                  httpMethod = "PUT",
                  id = "dataflow.projects.locations.jobs.update",
                  parameterOrder = {
                    "projectId",
                    "location",
                    "jobId",
                  },
                  parameters = {
                    jobId = {
                      description = "The job ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The ID of the Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}",
                  request = {
                    ["$ref"] = "Job",
                  },
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
              },
              resources = {
                debug = {
                  methods = {
                    getConfig = {
                      description = "Get encoded debug configuration for component. Not cacheable.",
                      flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/getConfig",
                      httpMethod = "POST",
                      id = "dataflow.projects.locations.jobs.debug.getConfig",
                      parameterOrder = {
                        "projectId",
                        "location",
                        "jobId",
                      },
                      parameters = {
                        jobId = {
                          description = "The job id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        location = {
                          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "The project id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/getConfig",
                      request = {
                        ["$ref"] = "GetDebugConfigRequest",
                      },
                      response = {
                        ["$ref"] = "GetDebugConfigResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/compute",
                        "https://www.googleapis.com/auth/compute.readonly",
                        "https://www.googleapis.com/auth/userinfo.email",
                      },
                    },
                    sendCapture = {
                      description = "Send encoded debug capture data for component.",
                      flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/sendCapture",
                      httpMethod = "POST",
                      id = "dataflow.projects.locations.jobs.debug.sendCapture",
                      parameterOrder = {
                        "projectId",
                        "location",
                        "jobId",
                      },
                      parameters = {
                        jobId = {
                          description = "The job id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        location = {
                          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "The project id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/sendCapture",
                      request = {
                        ["$ref"] = "SendDebugCaptureRequest",
                      },
                      response = {
                        ["$ref"] = "SendDebugCaptureResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/compute",
                        "https://www.googleapis.com/auth/compute.readonly",
                        "https://www.googleapis.com/auth/userinfo.email",
                      },
                    },
                  },
                },
                messages = {
                  methods = {
                    list = {
                      description = "Request the job status. To request the status of a job, we recommend using `projects.locations.jobs.messages.list` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.messages.list` is not recommended, as you can only request the status of jobs that are running in `us-central1`.",
                      flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/messages",
                      httpMethod = "GET",
                      id = "dataflow.projects.locations.jobs.messages.list",
                      parameterOrder = {
                        "projectId",
                        "location",
                        "jobId",
                      },
                      parameters = {
                        endTime = {
                          description = "Return only messages with timestamps < end_time. The default is now (i.e. return up to the latest messages available).",
                          format = "google-datetime",
                          location = "query",
                          type = "string",
                        },
                        jobId = {
                          description = "The job to get messages about.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        location = {
                          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        minimumImportance = {
                          description = "Filter to only get messages with importance >= level",
                          enum = {
                            "JOB_MESSAGE_IMPORTANCE_UNKNOWN",
                            "JOB_MESSAGE_DEBUG",
                            "JOB_MESSAGE_DETAILED",
                            "JOB_MESSAGE_BASIC",
                            "JOB_MESSAGE_WARNING",
                            "JOB_MESSAGE_ERROR",
                          },
                          enumDescriptions = {
                            "The message importance isn't specified, or is unknown.",
                            "The message is at the 'debug' level: typically only useful for software engineers working on the code the job is running. Typically, Dataflow pipeline runners do not display log messages at this level by default.",
                            "The message is at the 'detailed' level: somewhat verbose, but potentially useful to users. Typically, Dataflow pipeline runners do not display log messages at this level by default. These messages are displayed by default in the Dataflow monitoring UI.",
                            "The message is at the 'basic' level: useful for keeping track of the execution of a Dataflow pipeline. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
                            "The message is at the 'warning' level: indicating a condition pertaining to a job which may require human intervention. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
                            "The message is at the 'error' level: indicating a condition preventing a job from succeeding. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
                          },
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "If specified, determines the maximum number of messages to return. If unspecified, the service may choose an appropriate default, or may return an arbitrarily large number of results.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "If supplied, this should be the value of next_page_token returned by an earlier call. This will cause the next page of results to be returned.",
                          location = "query",
                          type = "string",
                        },
                        projectId = {
                          description = "A project id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        startTime = {
                          description = "If specified, return only messages with timestamps >= start_time. The default is the job creation time (i.e. beginning of messages).",
                          format = "google-datetime",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/messages",
                      response = {
                        ["$ref"] = "ListJobMessagesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/compute",
                        "https://www.googleapis.com/auth/compute.readonly",
                        "https://www.googleapis.com/auth/userinfo.email",
                      },
                    },
                  },
                },
                snapshots = {
                  methods = {
                    list = {
                      description = "Lists snapshots.",
                      flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/snapshots",
                      httpMethod = "GET",
                      id = "dataflow.projects.locations.jobs.snapshots.list",
                      parameterOrder = {
                        "projectId",
                        "location",
                        "jobId",
                      },
                      parameters = {
                        jobId = {
                          description = "If specified, list snapshots created from this job.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        location = {
                          description = "The location to list snapshots in.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "The project ID to list snapshots for.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/snapshots",
                      response = {
                        ["$ref"] = "ListSnapshotsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/compute",
                        "https://www.googleapis.com/auth/compute.readonly",
                        "https://www.googleapis.com/auth/userinfo.email",
                      },
                    },
                  },
                },
                stages = {
                  methods = {
                    getExecutionDetails = {
                      description = "Request detailed information about the execution status of a stage of the job. EXPERIMENTAL. This API is subject to change or removal without notice.",
                      flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/stages/{stageId}/executionDetails",
                      httpMethod = "GET",
                      id = "dataflow.projects.locations.jobs.stages.getExecutionDetails",
                      parameterOrder = {
                        "projectId",
                        "location",
                        "jobId",
                        "stageId",
                      },
                      parameters = {
                        endTime = {
                          description = "Upper time bound of work items to include, by start time.",
                          format = "google-datetime",
                          location = "query",
                          type = "string",
                        },
                        jobId = {
                          description = "The job to get execution details for.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        location = {
                          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        pageSize = {
                          description = "If specified, determines the maximum number of work items to return. If unspecified, the service may choose an appropriate default, or may return an arbitrarily large number of results.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "If supplied, this should be the value of next_page_token returned by an earlier call. This will cause the next page of results to be returned.",
                          location = "query",
                          type = "string",
                        },
                        projectId = {
                          description = "A project id.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        stageId = {
                          description = "The stage for which to fetch information.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        startTime = {
                          description = "Lower time bound of work items to include, by start time.",
                          format = "google-datetime",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/stages/{stageId}/executionDetails",
                      response = {
                        ["$ref"] = "StageExecutionDetails",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/compute",
                        "https://www.googleapis.com/auth/compute.readonly",
                        "https://www.googleapis.com/auth/userinfo.email",
                      },
                    },
                  },
                },
                workItems = {
                  methods = {
                    lease = {
                      description = "Leases a dataflow WorkItem to run.",
                      flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/workItems:lease",
                      httpMethod = "POST",
                      id = "dataflow.projects.locations.jobs.workItems.lease",
                      parameterOrder = {
                        "projectId",
                        "location",
                        "jobId",
                      },
                      parameters = {
                        jobId = {
                          description = "Identifies the workflow job this worker belongs to.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        location = {
                          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the WorkItem's job.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "Identifies the project this worker belongs to.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/workItems:lease",
                      request = {
                        ["$ref"] = "LeaseWorkItemRequest",
                      },
                      response = {
                        ["$ref"] = "LeaseWorkItemResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/compute",
                        "https://www.googleapis.com/auth/compute.readonly",
                        "https://www.googleapis.com/auth/userinfo.email",
                      },
                    },
                    reportStatus = {
                      description = "Reports the status of dataflow WorkItems leased by a worker.",
                      flatPath = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/workItems:reportStatus",
                      httpMethod = "POST",
                      id = "dataflow.projects.locations.jobs.workItems.reportStatus",
                      parameterOrder = {
                        "projectId",
                        "location",
                        "jobId",
                      },
                      parameters = {
                        jobId = {
                          description = "The job which the WorkItem is part of.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        location = {
                          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the WorkItem's job.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        projectId = {
                          description = "The project which owns the WorkItem's job.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/workItems:reportStatus",
                      request = {
                        ["$ref"] = "ReportWorkItemStatusRequest",
                      },
                      response = {
                        ["$ref"] = "ReportWorkItemStatusResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/compute",
                        "https://www.googleapis.com/auth/compute.readonly",
                        "https://www.googleapis.com/auth/userinfo.email",
                      },
                    },
                  },
                },
              },
            },
            snapshots = {
              methods = {
                delete = {
                  description = "Deletes a snapshot.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/snapshots/{snapshotId}",
                  httpMethod = "DELETE",
                  id = "dataflow.projects.locations.snapshots.delete",
                  parameterOrder = {
                    "projectId",
                    "location",
                    "snapshotId",
                  },
                  parameters = {
                    location = {
                      description = "The location that contains this snapshot.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The ID of the Cloud Platform project that the snapshot belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    snapshotId = {
                      description = "The ID of the snapshot.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/snapshots/{snapshotId}",
                  response = {
                    ["$ref"] = "DeleteSnapshotResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                get = {
                  description = "Gets information about a snapshot.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/snapshots/{snapshotId}",
                  httpMethod = "GET",
                  id = "dataflow.projects.locations.snapshots.get",
                  parameterOrder = {
                    "projectId",
                    "location",
                    "snapshotId",
                  },
                  parameters = {
                    location = {
                      description = "The location that contains this snapshot.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The ID of the Cloud Platform project that the snapshot belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    snapshotId = {
                      description = "The ID of the snapshot.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/snapshots/{snapshotId}",
                  response = {
                    ["$ref"] = "Snapshot",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                list = {
                  description = "Lists snapshots.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/snapshots",
                  httpMethod = "GET",
                  id = "dataflow.projects.locations.snapshots.list",
                  parameterOrder = {
                    "projectId",
                    "location",
                  },
                  parameters = {
                    jobId = {
                      description = "If specified, list snapshots created from this job.",
                      location = "query",
                      type = "string",
                    },
                    location = {
                      description = "The location to list snapshots in.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "The project ID to list snapshots for.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/snapshots",
                  response = {
                    ["$ref"] = "ListSnapshotsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
              },
            },
            sql = {
              methods = {
                validate = {
                  description = "Validates a GoogleSQL query for Cloud Dataflow syntax. Will always confirm the given query parses correctly, and if able to look up schema information from DataCatalog, will validate that the query analyzes properly as well.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/sql:validate",
                  httpMethod = "GET",
                  id = "dataflow.projects.locations.sql.validate",
                  parameterOrder = {
                    "projectId",
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    query = {
                      description = "The sql query to validate.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/sql:validate",
                  response = {
                    ["$ref"] = "ValidateResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
              },
            },
            templates = {
              methods = {
                create = {
                  description = "Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supply string values using the API.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/templates",
                  httpMethod = "POST",
                  id = "dataflow.projects.locations.templates.create",
                  parameterOrder = {
                    "projectId",
                    "location",
                  },
                  parameters = {
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/templates",
                  request = {
                    ["$ref"] = "CreateJobFromTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                get = {
                  description = "Get the template associated with a template.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/templates:get",
                  httpMethod = "GET",
                  id = "dataflow.projects.locations.templates.get",
                  parameterOrder = {
                    "projectId",
                    "location",
                  },
                  parameters = {
                    gcsPath = {
                      description = "Required. A Cloud Storage path to the template from which to create the job. Must be valid Cloud Storage URL, beginning with 'gs://'.",
                      location = "query",
                      type = "string",
                    },
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "The view to retrieve. Defaults to METADATA_ONLY.",
                      enum = {
                        "METADATA_ONLY",
                      },
                      enumDescriptions = {
                        "Template view that retrieves only the metadata associated with the template.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/templates:get",
                  response = {
                    ["$ref"] = "GetTemplateResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
                launch = {
                  description = "Launch a template.",
                  flatPath = "v1b3/projects/{projectId}/locations/{location}/templates:launch",
                  httpMethod = "POST",
                  id = "dataflow.projects.locations.templates.launch",
                  parameterOrder = {
                    "projectId",
                    "location",
                  },
                  parameters = {
                    ["dynamicTemplate.gcsPath"] = {
                      description = "Path to dynamic template spec file on Cloud Storage. The file must be a Json serialized DynamicTemplateFieSpec object.",
                      location = "query",
                      type = "string",
                    },
                    ["dynamicTemplate.stagingLocation"] = {
                      description = "Cloud Storage path for staging dependencies. Must be a valid Cloud Storage URL, beginning with `gs://`.",
                      location = "query",
                      type = "string",
                    },
                    gcsPath = {
                      description = "A Cloud Storage path to the template from which to create the job. Must be valid Cloud Storage URL, beginning with 'gs://'.",
                      location = "query",
                      type = "string",
                    },
                    location = {
                      description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectId = {
                      description = "Required. The ID of the Cloud Platform project that the job belongs to.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    validateOnly = {
                      description = "If true, the request is validated but not actually executed. Defaults to false.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1b3/projects/{projectId}/locations/{location}/templates:launch",
                  request = {
                    ["$ref"] = "LaunchTemplateParameters",
                  },
                  response = {
                    ["$ref"] = "LaunchTemplateResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/compute",
                    "https://www.googleapis.com/auth/compute.readonly",
                    "https://www.googleapis.com/auth/userinfo.email",
                  },
                },
              },
            },
          },
        },
        snapshots = {
          methods = {
            get = {
              description = "Gets information about a snapshot.",
              flatPath = "v1b3/projects/{projectId}/snapshots/{snapshotId}",
              httpMethod = "GET",
              id = "dataflow.projects.snapshots.get",
              parameterOrder = {
                "projectId",
                "snapshotId",
              },
              parameters = {
                location = {
                  description = "The location that contains this snapshot.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "The ID of the Cloud Platform project that the snapshot belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                snapshotId = {
                  description = "The ID of the snapshot.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/snapshots/{snapshotId}",
              response = {
                ["$ref"] = "Snapshot",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            list = {
              description = "Lists snapshots.",
              flatPath = "v1b3/projects/{projectId}/snapshots",
              httpMethod = "GET",
              id = "dataflow.projects.snapshots.list",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                jobId = {
                  description = "If specified, list snapshots created from this job.",
                  location = "query",
                  type = "string",
                },
                location = {
                  description = "The location to list snapshots in.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "The project ID to list snapshots for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/snapshots",
              response = {
                ["$ref"] = "ListSnapshotsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
          },
        },
        templates = {
          methods = {
            create = {
              description = "Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supply string values using the API.",
              flatPath = "v1b3/projects/{projectId}/templates",
              httpMethod = "POST",
              id = "dataflow.projects.templates.create",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                projectId = {
                  description = "Required. The ID of the Cloud Platform project that the job belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/templates",
              request = {
                ["$ref"] = "CreateJobFromTemplateRequest",
              },
              response = {
                ["$ref"] = "Job",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            get = {
              description = "Get the template associated with a template.",
              flatPath = "v1b3/projects/{projectId}/templates:get",
              httpMethod = "GET",
              id = "dataflow.projects.templates.get",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                gcsPath = {
                  description = "Required. A Cloud Storage path to the template from which to create the job. Must be valid Cloud Storage URL, beginning with 'gs://'.",
                  location = "query",
                  type = "string",
                },
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. The ID of the Cloud Platform project that the job belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The view to retrieve. Defaults to METADATA_ONLY.",
                  enum = {
                    "METADATA_ONLY",
                  },
                  enumDescriptions = {
                    "Template view that retrieves only the metadata associated with the template.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1b3/projects/{projectId}/templates:get",
              response = {
                ["$ref"] = "GetTemplateResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
            launch = {
              description = "Launch a template.",
              flatPath = "v1b3/projects/{projectId}/templates:launch",
              httpMethod = "POST",
              id = "dataflow.projects.templates.launch",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                ["dynamicTemplate.gcsPath"] = {
                  description = "Path to dynamic template spec file on Cloud Storage. The file must be a Json serialized DynamicTemplateFieSpec object.",
                  location = "query",
                  type = "string",
                },
                ["dynamicTemplate.stagingLocation"] = {
                  description = "Cloud Storage path for staging dependencies. Must be a valid Cloud Storage URL, beginning with `gs://`.",
                  location = "query",
                  type = "string",
                },
                gcsPath = {
                  description = "A Cloud Storage path to the template from which to create the job. Must be valid Cloud Storage URL, beginning with 'gs://'.",
                  location = "query",
                  type = "string",
                },
                location = {
                  description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. The ID of the Cloud Platform project that the job belongs to.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "If true, the request is validated but not actually executed. Defaults to false.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v1b3/projects/{projectId}/templates:launch",
              request = {
                ["$ref"] = "LaunchTemplateParameters",
              },
              response = {
                ["$ref"] = "LaunchTemplateResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/compute",
                "https://www.googleapis.com/auth/compute.readonly",
                "https://www.googleapis.com/auth/userinfo.email",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230106",
  rootUrl = "https://dataflow.googleapis.com/",
  schemas = {
    ApproximateProgress = {
      description = "Obsolete in favor of ApproximateReportedProgress and ApproximateSplitRequest.",
      id = "ApproximateProgress",
      properties = {
        percentComplete = {
          description = "Obsolete.",
          format = "float",
          type = "number",
        },
        position = {
          ["$ref"] = "Position",
          description = "Obsolete.",
        },
        remainingTime = {
          description = "Obsolete.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    ApproximateReportedProgress = {
      description = "A progress measurement of a WorkItem by a worker.",
      id = "ApproximateReportedProgress",
      properties = {
        consumedParallelism = {
          ["$ref"] = "ReportedParallelism",
          description = "Total amount of parallelism in the portion of input of this task that has already been consumed and is no longer active. In the first two examples above (see remaining_parallelism), the value should be 29 or 2 respectively. The sum of remaining_parallelism and consumed_parallelism should equal the total amount of parallelism in this work item. If specified, must be finite.",
        },
        fractionConsumed = {
          description = "Completion as fraction of the input consumed, from 0.0 (beginning, nothing consumed), to 1.0 (end of the input, entire input consumed).",
          format = "double",
          type = "number",
        },
        position = {
          ["$ref"] = "Position",
          description = "A Position within the work to represent a progress.",
        },
        remainingParallelism = {
          ["$ref"] = "ReportedParallelism",
          description = "Total amount of parallelism in the input of this task that remains, (i.e. can be delegated to this task and any new tasks via dynamic splitting). Always at least 1 for non-finished work items and 0 for finished. \"Amount of parallelism\" refers to how many non-empty parts of the input can be read in parallel. This does not necessarily equal number of records. An input that can be read in parallel down to the individual records is called \"perfectly splittable\". An example of non-perfectly parallelizable input is a block-compressed file format where a block of records has to be read as a whole, but different blocks can be read in parallel. Examples: * If we are processing record #30 (starting at 1) out of 50 in a perfectly splittable 50-record input, this value should be 21 (20 remaining + 1 current). * If we are reading through block 3 in a block-compressed file consisting of 5 blocks, this value should be 3 (since blocks 4 and 5 can be processed in parallel by new tasks via dynamic splitting and the current task remains processing block 3). * If we are reading through the last block in a block-compressed file, or reading or processing the last record in a perfectly splittable input, this value should be 1, because apart from the current task, no additional remainder can be split off.",
        },
      },
      type = "object",
    },
    ApproximateSplitRequest = {
      description = "A suggestion by the service to the worker to dynamically split the WorkItem.",
      id = "ApproximateSplitRequest",
      properties = {
        fractionConsumed = {
          description = "A fraction at which to split the work item, from 0.0 (beginning of the input) to 1.0 (end of the input).",
          format = "double",
          type = "number",
        },
        fractionOfRemainder = {
          description = "The fraction of the remainder of work to split the work item at, from 0.0 (split at the current position) to 1.0 (end of the input).",
          format = "double",
          type = "number",
        },
        position = {
          ["$ref"] = "Position",
          description = "A Position at which to split the work item.",
        },
      },
      type = "object",
    },
    AutoscalingEvent = {
      description = "A structured message reporting an autoscaling decision made by the Dataflow service.",
      id = "AutoscalingEvent",
      properties = {
        currentNumWorkers = {
          description = "The current number of workers the job has.",
          format = "int64",
          type = "string",
        },
        description = {
          ["$ref"] = "StructuredMessage",
          description = "A message describing why the system decided to adjust the current number of workers, why it failed, or why the system decided to not make any changes to the number of workers.",
        },
        eventType = {
          description = "The type of autoscaling event to report.",
          enum = {
            "TYPE_UNKNOWN",
            "TARGET_NUM_WORKERS_CHANGED",
            "CURRENT_NUM_WORKERS_CHANGED",
            "ACTUATION_FAILURE",
            "NO_CHANGE",
          },
          enumDescriptions = {
            "Default type for the enum. Value should never be returned.",
            "The TARGET_NUM_WORKERS_CHANGED type should be used when the target worker pool size has changed at the start of an actuation. An event should always be specified as TARGET_NUM_WORKERS_CHANGED if it reflects a change in the target_num_workers.",
            "The CURRENT_NUM_WORKERS_CHANGED type should be used when actual worker pool size has been changed, but the target_num_workers has not changed.",
            "The ACTUATION_FAILURE type should be used when we want to report an error to the user indicating why the current number of workers in the pool could not be changed. Displayed in the current status and history widgets.",
            "Used when we want to report to the user a reason why we are not currently adjusting the number of workers. Should specify both target_num_workers, current_num_workers and a decision_message.",
          },
          type = "string",
        },
        targetNumWorkers = {
          description = "The target number of workers the worker pool wants to resize to use.",
          format = "int64",
          type = "string",
        },
        time = {
          description = "The time this event was emitted to indicate a new target or current num_workers value.",
          format = "google-datetime",
          type = "string",
        },
        workerPool = {
          description = "A short and friendly name for the worker pool this event refers to.",
          type = "string",
        },
      },
      type = "object",
    },
    AutoscalingSettings = {
      description = "Settings for WorkerPool autoscaling.",
      id = "AutoscalingSettings",
      properties = {
        algorithm = {
          description = "The algorithm to use for autoscaling.",
          enum = {
            "AUTOSCALING_ALGORITHM_UNKNOWN",
            "AUTOSCALING_ALGORITHM_NONE",
            "AUTOSCALING_ALGORITHM_BASIC",
          },
          enumDescriptions = {
            "The algorithm is unknown, or unspecified.",
            "Disable autoscaling.",
            "Increase worker count over time to reduce job execution time.",
          },
          type = "string",
        },
        maxNumWorkers = {
          description = "The maximum number of workers to cap scaling at.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BigQueryIODetails = {
      description = "Metadata for a BigQuery connector used by the job.",
      id = "BigQueryIODetails",
      properties = {
        dataset = {
          description = "Dataset accessed in the connection.",
          type = "string",
        },
        projectId = {
          description = "Project accessed in the connection.",
          type = "string",
        },
        query = {
          description = "Query used to access data in the connection.",
          type = "string",
        },
        table = {
          description = "Table accessed in the connection.",
          type = "string",
        },
      },
      type = "object",
    },
    BigTableIODetails = {
      description = "Metadata for a Cloud Bigtable connector used by the job.",
      id = "BigTableIODetails",
      properties = {
        instanceId = {
          description = "InstanceId accessed in the connection.",
          type = "string",
        },
        projectId = {
          description = "ProjectId accessed in the connection.",
          type = "string",
        },
        tableId = {
          description = "TableId accessed in the connection.",
          type = "string",
        },
      },
      type = "object",
    },
    CPUTime = {
      description = "Modeled after information exposed by /proc/stat.",
      id = "CPUTime",
      properties = {
        rate = {
          description = "Average CPU utilization rate (% non-idle cpu / second) since previous sample.",
          format = "double",
          type = "number",
        },
        timestamp = {
          description = "Timestamp of the measurement.",
          format = "google-datetime",
          type = "string",
        },
        totalMs = {
          description = "Total active CPU time across all cores (ie., non-idle) in milliseconds since start-up.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    ComponentSource = {
      description = "Description of an interstitial value between transforms in an execution stage.",
      id = "ComponentSource",
      properties = {
        name = {
          description = "Dataflow service generated name for this source.",
          type = "string",
        },
        originalTransformOrCollection = {
          description = "User name for the original user transform or collection with which this source is most closely associated.",
          type = "string",
        },
        userName = {
          description = "Human-readable name for this transform; may be user or system generated.",
          type = "string",
        },
      },
      type = "object",
    },
    ComponentTransform = {
      description = "Description of a transform executed as part of an execution stage.",
      id = "ComponentTransform",
      properties = {
        name = {
          description = "Dataflow service generated name for this source.",
          type = "string",
        },
        originalTransform = {
          description = "User name for the original user transform with which this transform is most closely associated.",
          type = "string",
        },
        userName = {
          description = "Human-readable name for this transform; may be user or system generated.",
          type = "string",
        },
      },
      type = "object",
    },
    ComputationTopology = {
      description = "All configuration data for a particular Computation.",
      id = "ComputationTopology",
      properties = {
        computationId = {
          description = "The ID of the computation.",
          type = "string",
        },
        inputs = {
          description = "The inputs to the computation.",
          items = {
            ["$ref"] = "StreamLocation",
          },
          type = "array",
        },
        keyRanges = {
          description = "The key ranges processed by the computation.",
          items = {
            ["$ref"] = "KeyRangeLocation",
          },
          type = "array",
        },
        outputs = {
          description = "The outputs from the computation.",
          items = {
            ["$ref"] = "StreamLocation",
          },
          type = "array",
        },
        stateFamilies = {
          description = "The state family values.",
          items = {
            ["$ref"] = "StateFamilyConfig",
          },
          type = "array",
        },
        systemStageName = {
          description = "The system stage name.",
          type = "string",
        },
      },
      type = "object",
    },
    ConcatPosition = {
      description = "A position that encapsulates an inner position and an index for the inner position. A ConcatPosition can be used by a reader of a source that encapsulates a set of other sources.",
      id = "ConcatPosition",
      properties = {
        index = {
          description = "Index of the inner source.",
          format = "int32",
          type = "integer",
        },
        position = {
          ["$ref"] = "Position",
          description = "Position within the inner source.",
        },
      },
      type = "object",
    },
    ContainerSpec = {
      description = "Container Spec.",
      id = "ContainerSpec",
      properties = {
        defaultEnvironment = {
          ["$ref"] = "FlexTemplateRuntimeEnvironment",
          description = "Default runtime environment for the job.",
        },
        image = {
          description = "Name of the docker container image. E.g., gcr.io/project/some-image",
          type = "string",
        },
        imageRepositoryCertPath = {
          description = "Cloud Storage path to self-signed certificate of private registry.",
          type = "string",
        },
        imageRepositoryPasswordSecretId = {
          description = "Secret Manager secret id for password to authenticate to private registry.",
          type = "string",
        },
        imageRepositoryUsernameSecretId = {
          description = "Secret Manager secret id for username to authenticate to private registry.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "TemplateMetadata",
          description = "Metadata describing a template including description and validation rules.",
        },
        sdkInfo = {
          ["$ref"] = "SDKInfo",
          description = "Required. SDK info of the Flex Template.",
        },
      },
      type = "object",
    },
    CounterMetadata = {
      description = "CounterMetadata includes all static non-name non-value counter attributes.",
      id = "CounterMetadata",
      properties = {
        description = {
          description = "Human-readable description of the counter semantics.",
          type = "string",
        },
        kind = {
          description = "Counter aggregation kind.",
          enum = {
            "INVALID",
            "SUM",
            "MAX",
            "MIN",
            "MEAN",
            "OR",
            "AND",
            "SET",
            "DISTRIBUTION",
            "LATEST_VALUE",
          },
          enumDescriptions = {
            "Counter aggregation kind was not set.",
            "Aggregated value is the sum of all contributed values.",
            "Aggregated value is the max of all contributed values.",
            "Aggregated value is the min of all contributed values.",
            "Aggregated value is the mean of all contributed values.",
            "Aggregated value represents the logical 'or' of all contributed values.",
            "Aggregated value represents the logical 'and' of all contributed values.",
            "Aggregated value is a set of unique contributed values.",
            "Aggregated value captures statistics about a distribution.",
            "Aggregated value tracks the latest value of a variable.",
          },
          type = "string",
        },
        otherUnits = {
          description = "A string referring to the unit type.",
          type = "string",
        },
        standardUnits = {
          description = "System defined Units, see above enum.",
          enum = {
            "BYTES",
            "BYTES_PER_SEC",
            "MILLISECONDS",
            "MICROSECONDS",
            "NANOSECONDS",
            "TIMESTAMP_MSEC",
            "TIMESTAMP_USEC",
            "TIMESTAMP_NSEC",
          },
          enumDescriptions = {
            "Counter returns a value in bytes.",
            "Counter returns a value in bytes per second.",
            "Counter returns a value in milliseconds.",
            "Counter returns a value in microseconds.",
            "Counter returns a value in nanoseconds.",
            "Counter returns a timestamp in milliseconds.",
            "Counter returns a timestamp in microseconds.",
            "Counter returns a timestamp in nanoseconds.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CounterStructuredName = {
      description = "Identifies a counter within a per-job namespace. Counters whose structured names are the same get merged into a single value for the job.",
      id = "CounterStructuredName",
      properties = {
        componentStepName = {
          description = "Name of the optimized step being executed by the workers.",
          type = "string",
        },
        executionStepName = {
          description = "Name of the stage. An execution step contains multiple component steps.",
          type = "string",
        },
        inputIndex = {
          description = "Index of an input collection that's being read from/written to as a side input. The index identifies a step's side inputs starting by 1 (e.g. the first side input has input_index 1, the third has input_index 3). Side inputs are identified by a pair of (original_step_name, input_index). This field helps uniquely identify them.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Counter name. Not necessarily globally-unique, but unique within the context of the other fields. Required.",
          type = "string",
        },
        origin = {
          description = "One of the standard Origins defined above.",
          enum = {
            "SYSTEM",
            "USER",
          },
          enumDescriptions = {
            "Counter was created by the Dataflow system.",
            "Counter was created by the user.",
          },
          type = "string",
        },
        originNamespace = {
          description = "A string containing a more specific namespace of the counter's origin.",
          type = "string",
        },
        originalRequestingStepName = {
          description = "The step name requesting an operation, such as GBK. I.e. the ParDo causing a read/write from shuffle to occur, or a read from side inputs.",
          type = "string",
        },
        originalStepName = {
          description = "System generated name of the original step in the user's graph, before optimization.",
          type = "string",
        },
        portion = {
          description = "Portion of this counter, either key or value.",
          enum = {
            "ALL",
            "KEY",
            "VALUE",
          },
          enumDescriptions = {
            "Counter portion has not been set.",
            "Counter reports a key.",
            "Counter reports a value.",
          },
          type = "string",
        },
        workerId = {
          description = "ID of a particular worker.",
          type = "string",
        },
      },
      type = "object",
    },
    CounterStructuredNameAndMetadata = {
      description = "A single message which encapsulates structured name and metadata for a given counter.",
      id = "CounterStructuredNameAndMetadata",
      properties = {
        metadata = {
          ["$ref"] = "CounterMetadata",
          description = "Metadata associated with a counter",
        },
        name = {
          ["$ref"] = "CounterStructuredName",
          description = "Structured name of the counter.",
        },
      },
      type = "object",
    },
    CounterUpdate = {
      description = "An update to a Counter sent from a worker.",
      id = "CounterUpdate",
      properties = {
        boolean = {
          description = "Boolean value for And, Or.",
          type = "boolean",
        },
        cumulative = {
          description = "True if this counter is reported as the total cumulative aggregate value accumulated since the worker started working on this WorkItem. By default this is false, indicating that this counter is reported as a delta.",
          type = "boolean",
        },
        distribution = {
          ["$ref"] = "DistributionUpdate",
          description = "Distribution data",
        },
        floatingPoint = {
          description = "Floating point value for Sum, Max, Min.",
          format = "double",
          type = "number",
        },
        floatingPointList = {
          ["$ref"] = "FloatingPointList",
          description = "List of floating point numbers, for Set.",
        },
        floatingPointMean = {
          ["$ref"] = "FloatingPointMean",
          description = "Floating point mean aggregation value for Mean.",
        },
        integer = {
          ["$ref"] = "SplitInt64",
          description = "Integer value for Sum, Max, Min.",
        },
        integerGauge = {
          ["$ref"] = "IntegerGauge",
          description = "Gauge data",
        },
        integerList = {
          ["$ref"] = "IntegerList",
          description = "List of integers, for Set.",
        },
        integerMean = {
          ["$ref"] = "IntegerMean",
          description = "Integer mean aggregation value for Mean.",
        },
        internal = {
          description = "Value for internally-defined counters used by the Dataflow service.",
          type = "any",
        },
        nameAndKind = {
          ["$ref"] = "NameAndKind",
          description = "Counter name and aggregation type.",
        },
        shortId = {
          description = "The service-generated short identifier for this counter. The short_id -> (name, metadata) mapping is constant for the lifetime of a job.",
          format = "int64",
          type = "string",
        },
        stringList = {
          ["$ref"] = "StringList",
          description = "List of strings, for Set.",
        },
        structuredNameAndMetadata = {
          ["$ref"] = "CounterStructuredNameAndMetadata",
          description = "Counter structured name and metadata.",
        },
      },
      type = "object",
    },
    CreateJobFromTemplateRequest = {
      description = "A request to create a Cloud Dataflow job from a template.",
      id = "CreateJobFromTemplateRequest",
      properties = {
        environment = {
          ["$ref"] = "RuntimeEnvironment",
          description = "The runtime environment for the job.",
        },
        gcsPath = {
          description = "Required. A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with `gs://`.",
          type = "string",
        },
        jobName = {
          description = "Required. The job name to use for the created job.",
          type = "string",
        },
        location = {
          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "The runtime parameters to pass to the job.",
          type = "object",
        },
      },
      type = "object",
    },
    CustomSourceLocation = {
      description = "Identifies the location of a custom souce.",
      id = "CustomSourceLocation",
      properties = {
        stateful = {
          description = "Whether this source is stateful.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DataDiskAssignment = {
      description = "Data disk assignment for a given VM instance.",
      id = "DataDiskAssignment",
      properties = {
        dataDisks = {
          description = "Mounted data disks. The order is important a data disk's 0-based index in this list defines which persistent directory the disk is mounted to, for example the list of { \"myproject-1014-104817-4c2-harness-0-disk-0\" }, { \"myproject-1014-104817-4c2-harness-0-disk-1\" }.",
          items = {
            type = "string",
          },
          type = "array",
        },
        vmInstance = {
          description = "VM instance name the data disks mounted to, for example \"myproject-1014-104817-4c2-harness-0\".",
          type = "string",
        },
      },
      type = "object",
    },
    DatastoreIODetails = {
      description = "Metadata for a Datastore connector used by the job.",
      id = "DatastoreIODetails",
      properties = {
        namespace = {
          description = "Namespace used in the connection.",
          type = "string",
        },
        projectId = {
          description = "ProjectId accessed in the connection.",
          type = "string",
        },
      },
      type = "object",
    },
    DebugOptions = {
      description = "Describes any options that have an effect on the debugging of pipelines.",
      id = "DebugOptions",
      properties = {
        enableHotKeyLogging = {
          description = "When true, enables the logging of the literal hot key to the user's Cloud Logging.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeleteSnapshotResponse = {
      description = "Response from deleting a snapshot.",
      id = "DeleteSnapshotResponse",
      properties = {},
      type = "object",
    },
    DerivedSource = {
      description = "Specification of one of the bundles produced as a result of splitting a Source (e.g. when executing a SourceSplitRequest, or when splitting an active task using WorkItemStatus.dynamic_source_split), relative to the source being split.",
      id = "DerivedSource",
      properties = {
        derivationMode = {
          description = "What source to base the produced source on (if any).",
          enum = {
            "SOURCE_DERIVATION_MODE_UNKNOWN",
            "SOURCE_DERIVATION_MODE_INDEPENDENT",
            "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT",
            "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT",
          },
          enumDescriptions = {
            "The source derivation is unknown, or unspecified.",
            "Produce a completely independent Source with no base.",
            "Produce a Source based on the Source being split.",
            "Produce a Source based on the base of the Source being split.",
          },
          type = "string",
        },
        source = {
          ["$ref"] = "Source",
          description = "Specification of the source.",
        },
      },
      type = "object",
    },
    Disk = {
      description = "Describes the data disk used by a workflow job.",
      id = "Disk",
      properties = {
        diskType = {
          description = "Disk storage type, as defined by Google Compute Engine. This must be a disk type appropriate to the project and zone in which the workers will run. If unknown or unspecified, the service will attempt to choose a reasonable default. For example, the standard persistent disk type is a resource name typically ending in \"pd-standard\". If SSD persistent disks are available, the resource name typically ends with \"pd-ssd\". The actual valid values are defined the Google Compute Engine API, not by the Cloud Dataflow API; consult the Google Compute Engine documentation for more information about determining the set of available disk types for a particular project and zone. Google Compute Engine Disk types are local to a particular project in a particular zone, and so the resource name will typically look something like this: compute.googleapis.com/projects/project-id/zones/zone/diskTypes/pd-standard",
          type = "string",
        },
        mountPoint = {
          description = "Directory in a VM where disk is mounted.",
          type = "string",
        },
        sizeGb = {
          description = "Size of disk in GB. If zero or unspecified, the service will attempt to choose a reasonable default.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DisplayData = {
      description = "Data provided with a pipeline or transform to provide descriptive info.",
      id = "DisplayData",
      properties = {
        boolValue = {
          description = "Contains value if the data is of a boolean type.",
          type = "boolean",
        },
        durationValue = {
          description = "Contains value if the data is of duration type.",
          format = "google-duration",
          type = "string",
        },
        floatValue = {
          description = "Contains value if the data is of float type.",
          format = "float",
          type = "number",
        },
        int64Value = {
          description = "Contains value if the data is of int64 type.",
          format = "int64",
          type = "string",
        },
        javaClassValue = {
          description = "Contains value if the data is of java class type.",
          type = "string",
        },
        key = {
          description = "The key identifying the display data. This is intended to be used as a label for the display data when viewed in a dax monitoring system.",
          type = "string",
        },
        label = {
          description = "An optional label to display in a dax UI for the element.",
          type = "string",
        },
        namespace = {
          description = "The namespace for the key. This is usually a class name or programming language namespace (i.e. python module) which defines the display data. This allows a dax monitoring system to specially handle the data and perform custom rendering.",
          type = "string",
        },
        shortStrValue = {
          description = "A possible additional shorter value to display. For example a java_class_name_value of com.mypackage.MyDoFn will be stored with MyDoFn as the short_str_value and com.mypackage.MyDoFn as the java_class_name value. short_str_value can be displayed and java_class_name_value will be displayed as a tooltip.",
          type = "string",
        },
        strValue = {
          description = "Contains value if the data is of string type.",
          type = "string",
        },
        timestampValue = {
          description = "Contains value if the data is of timestamp type.",
          format = "google-datetime",
          type = "string",
        },
        url = {
          description = "An optional full URL.",
          type = "string",
        },
      },
      type = "object",
    },
    DistributionUpdate = {
      description = "A metric value representing a distribution.",
      id = "DistributionUpdate",
      properties = {
        count = {
          ["$ref"] = "SplitInt64",
          description = "The count of the number of elements present in the distribution.",
        },
        histogram = {
          ["$ref"] = "Histogram",
          description = "(Optional) Histogram of value counts for the distribution.",
        },
        max = {
          ["$ref"] = "SplitInt64",
          description = "The maximum value present in the distribution.",
        },
        min = {
          ["$ref"] = "SplitInt64",
          description = "The minimum value present in the distribution.",
        },
        sum = {
          ["$ref"] = "SplitInt64",
          description = "Use an int64 since we'd prefer the added precision. If overflow is a common problem we can detect it and use an additional int64 or a double.",
        },
        sumOfSquares = {
          description = "Use a double since the sum of squares is likely to overflow int64.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    DynamicSourceSplit = {
      description = "When a task splits using WorkItemStatus.dynamic_source_split, this message describes the two parts of the split relative to the description of the current task's input.",
      id = "DynamicSourceSplit",
      properties = {
        primary = {
          ["$ref"] = "DerivedSource",
          description = "Primary part (continued to be processed by worker). Specified relative to the previously-current source. Becomes current.",
        },
        residual = {
          ["$ref"] = "DerivedSource",
          description = "Residual part (returned to the pool of work). Specified relative to the previously-current source.",
        },
      },
      type = "object",
    },
    Environment = {
      description = "Describes the environment in which a Dataflow Job runs.",
      id = "Environment",
      properties = {
        clusterManagerApiService = {
          description = "The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. \"compute.googleapis.com\".",
          type = "string",
        },
        dataset = {
          description = "The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com/{dataset}",
          type = "string",
        },
        debugOptions = {
          ["$ref"] = "DebugOptions",
          description = "Any debugging options to be supplied to the job.",
        },
        experiments = {
          description = "The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options.",
          items = {
            type = "string",
          },
          type = "array",
        },
        flexResourceSchedulingGoal = {
          description = "Which Flexible Resource Scheduling mode to run in.",
          enum = {
            "FLEXRS_UNSPECIFIED",
            "FLEXRS_SPEED_OPTIMIZED",
            "FLEXRS_COST_OPTIMIZED",
          },
          enumDescriptions = {
            "Run in the default mode.",
            "Optimize for lower execution time.",
            "Optimize for lower cost.",
          },
          type = "string",
        },
        internalExperiments = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Experimental settings.",
          type = "object",
        },
        sdkPipelineOptions = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.",
          type = "object",
        },
        serviceAccountEmail = {
          description = "Identity to run virtual machines as. Defaults to the default account.",
          type = "string",
        },
        serviceKmsKeyName = {
          description = "If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY",
          type = "string",
        },
        serviceOptions = {
          description = "The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on).",
          items = {
            type = "string",
          },
          type = "array",
        },
        shuffleMode = {
          description = "Output only. The shuffle mode used for the job.",
          enum = {
            "SHUFFLE_MODE_UNSPECIFIED",
            "VM_BASED",
            "SERVICE_BASED",
          },
          enumDescriptions = {
            "Shuffle mode information is not available.",
            "Shuffle is done on the worker VMs.",
            "Shuffle is done on the service side.",
          },
          readOnly = true,
          type = "string",
        },
        tempStoragePrefix = {
          description = "The prefix of the resources the system should use for temporary storage. The system will append the suffix \"/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}",
          type = "string",
        },
        userAgent = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "A description of the process that generated the request.",
          type = "object",
        },
        version = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "A structure describing which components and their versions of the service are required in order to run the job.",
          type = "object",
        },
        workerPools = {
          description = "The worker pools. At least one \"harness\" worker pool must be specified in order for the job to have workers.",
          items = {
            ["$ref"] = "WorkerPool",
          },
          type = "array",
        },
        workerRegion = {
          description = "The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1\". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.",
          type = "string",
        },
        workerZone = {
          description = "The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1-a\". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.",
          type = "string",
        },
      },
      type = "object",
    },
    ExecutionStageState = {
      description = "A message describing the state of a particular execution stage.",
      id = "ExecutionStageState",
      properties = {
        currentStateTime = {
          description = "The time at which the stage transitioned to this state.",
          format = "google-datetime",
          type = "string",
        },
        executionStageName = {
          description = "The name of the execution stage.",
          type = "string",
        },
        executionStageState = {
          description = "Executions stage states allow the same set of values as JobState.",
          enum = {
            "JOB_STATE_UNKNOWN",
            "JOB_STATE_STOPPED",
            "JOB_STATE_RUNNING",
            "JOB_STATE_DONE",
            "JOB_STATE_FAILED",
            "JOB_STATE_CANCELLED",
            "JOB_STATE_UPDATED",
            "JOB_STATE_DRAINING",
            "JOB_STATE_DRAINED",
            "JOB_STATE_PENDING",
            "JOB_STATE_CANCELLING",
            "JOB_STATE_QUEUED",
            "JOB_STATE_RESOURCE_CLEANING_UP",
          },
          enumDescriptions = {
            "The job's run state isn't specified.",
            "`JOB_STATE_STOPPED` indicates that the job has not yet started to run.",
            "`JOB_STATE_RUNNING` indicates that the job is currently running.",
            "`JOB_STATE_DONE` indicates that the job has successfully completed. This is a terminal job state. This state may be set by the Cloud Dataflow service, as a transition from `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob` call, if the job has not yet reached a terminal state.",
            "`JOB_STATE_FAILED` indicates that the job has failed. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.",
            "`JOB_STATE_CANCELLED` indicates that the job has been explicitly cancelled. This is a terminal job state. This state may only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has not yet reached another terminal state.",
            "`JOB_STATE_UPDATED` indicates that the job was successfully updated, meaning that this job was stopped and another job was started, inheriting state from this one. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.",
            "`JOB_STATE_DRAINING` indicates that the job is in the process of draining. A draining job has stopped pulling from its input sources and is processing any data that remains in-flight. This state may be set via a Cloud Dataflow `UpdateJob` call, but only as a transition from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.",
            "`JOB_STATE_DRAINED` indicates that the job has been drained. A drained job terminated by stopping pulling from its input sources and processing any data that remained in-flight when draining was requested. This state is a terminal state, may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.",
            "`JOB_STATE_PENDING` indicates that the job has been created but is not yet running. Jobs that are pending may only transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.",
            "`JOB_STATE_CANCELLING` indicates that the job has been explicitly cancelled and is in the process of stopping. Jobs that are cancelling may only transition to `JOB_STATE_CANCELLED` or `JOB_STATE_FAILED`.",
            "`JOB_STATE_QUEUED` indicates that the job has been created but is being delayed until launch. Jobs that are queued may only transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.",
            "`JOB_STATE_RESOURCE_CLEANING_UP` indicates that the batch job's associated resources are currently being cleaned up after a successful run. Currently, this is an opt-in feature, please reach out to Cloud support team if you are interested.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ExecutionStageSummary = {
      description = "Description of the composing transforms, names/ids, and input/outputs of a stage of execution. Some composing transforms and sources may have been generated by the Dataflow service during execution planning.",
      id = "ExecutionStageSummary",
      properties = {
        componentSource = {
          description = "Collections produced and consumed by component transforms of this stage.",
          items = {
            ["$ref"] = "ComponentSource",
          },
          type = "array",
        },
        componentTransform = {
          description = "Transforms that comprise this execution stage.",
          items = {
            ["$ref"] = "ComponentTransform",
          },
          type = "array",
        },
        id = {
          description = "Dataflow service generated id for this stage.",
          type = "string",
        },
        inputSource = {
          description = "Input sources for this stage.",
          items = {
            ["$ref"] = "StageSource",
          },
          type = "array",
        },
        kind = {
          description = "Type of transform this stage is executing.",
          enum = {
            "UNKNOWN_KIND",
            "PAR_DO_KIND",
            "GROUP_BY_KEY_KIND",
            "FLATTEN_KIND",
            "READ_KIND",
            "WRITE_KIND",
            "CONSTANT_KIND",
            "SINGLETON_KIND",
            "SHUFFLE_KIND",
          },
          enumDescriptions = {
            "Unrecognized transform type.",
            "ParDo transform.",
            "Group By Key transform.",
            "Flatten transform.",
            "Read transform.",
            "Write transform.",
            "Constructs from a constant value, such as with Create.of.",
            "Creates a Singleton view of a collection.",
            "Opening or closing a shuffle session, often as part of a GroupByKey.",
          },
          type = "string",
        },
        name = {
          description = "Dataflow service generated name for this stage.",
          type = "string",
        },
        outputSource = {
          description = "Output sources for this stage.",
          items = {
            ["$ref"] = "StageSource",
          },
          type = "array",
        },
        prerequisiteStage = {
          description = "Other stages that must complete before this stage can run.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FailedLocation = {
      description = "Indicates which [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) failed to respond to a request for data.",
      id = "FailedLocation",
      properties = {
        name = {
          description = "The name of the [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that failed to respond.",
          type = "string",
        },
      },
      type = "object",
    },
    FileIODetails = {
      description = "Metadata for a File connector used by the job.",
      id = "FileIODetails",
      properties = {
        filePattern = {
          description = "File Pattern used to access files by the connector.",
          type = "string",
        },
      },
      type = "object",
    },
    FlattenInstruction = {
      description = "An instruction that copies its inputs (zero or more) to its (single) output.",
      id = "FlattenInstruction",
      properties = {
        inputs = {
          description = "Describes the inputs to the flatten instruction.",
          items = {
            ["$ref"] = "InstructionInput",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FlexTemplateRuntimeEnvironment = {
      description = "The environment values to be set at runtime for flex template.",
      id = "FlexTemplateRuntimeEnvironment",
      properties = {
        additionalExperiments = {
          description = "Additional experiment flags for the job.",
          items = {
            type = "string",
          },
          type = "array",
        },
        additionalUserLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional user labels to be specified for the job. Keys and values must follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of \"key\": value pairs. Example: { \"name\": \"wrench\", \"mass\": \"1kg\", \"count\": \"3\" }.",
          type = "object",
        },
        autoscalingAlgorithm = {
          description = "The algorithm to use for autoscaling",
          enum = {
            "AUTOSCALING_ALGORITHM_UNKNOWN",
            "AUTOSCALING_ALGORITHM_NONE",
            "AUTOSCALING_ALGORITHM_BASIC",
          },
          enumDescriptions = {
            "The algorithm is unknown, or unspecified.",
            "Disable autoscaling.",
            "Increase worker count over time to reduce job execution time.",
          },
          type = "string",
        },
        diskSizeGb = {
          description = "Worker disk size, in gigabytes.",
          format = "int32",
          type = "integer",
        },
        dumpHeapOnOom = {
          description = "If true, when processing time is spent almost entirely on garbage collection (GC), saves a heap dump before ending the thread or process. If false, ends the thread or process without saving a heap dump. Does not save a heap dump when the Java Virtual Machine (JVM) has an out of memory error during processing. The location of the heap file is either echoed back to the user, or the user is given the opportunity to download the heap file.",
          type = "boolean",
        },
        enableLauncherVmSerialPortLogging = {
          description = "If true serial port logging will be enabled for the launcher VM.",
          type = "boolean",
        },
        enableStreamingEngine = {
          description = "Whether to enable Streaming Engine for the job.",
          type = "boolean",
        },
        flexrsGoal = {
          description = "Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs",
          enum = {
            "FLEXRS_UNSPECIFIED",
            "FLEXRS_SPEED_OPTIMIZED",
            "FLEXRS_COST_OPTIMIZED",
          },
          enumDescriptions = {
            "Run in the default mode.",
            "Optimize for lower execution time.",
            "Optimize for lower cost.",
          },
          type = "string",
        },
        ipConfiguration = {
          description = "Configuration for VM IPs.",
          enum = {
            "WORKER_IP_UNSPECIFIED",
            "WORKER_IP_PUBLIC",
            "WORKER_IP_PRIVATE",
          },
          enumDescriptions = {
            "The configuration is unknown, or unspecified.",
            "Workers should have public IP addresses.",
            "Workers should have private IP addresses.",
          },
          type = "string",
        },
        kmsKeyName = {
          description = "Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/",
          type = "string",
        },
        launcherMachineType = {
          description = "The machine type to use for launching the job. The default is n1-standard-1.",
          type = "string",
        },
        machineType = {
          description = "The machine type to use for the job. Defaults to the value from the template if not specified.",
          type = "string",
        },
        maxWorkers = {
          description = "The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.",
          format = "int32",
          type = "integer",
        },
        network = {
          description = "Network to which VMs will be assigned. If empty or unspecified, the service will use the network \"default\".",
          type = "string",
        },
        numWorkers = {
          description = "The initial number of Google Compute Engine instances for the job.",
          format = "int32",
          type = "integer",
        },
        saveHeapDumpsToGcsPath = {
          description = "Cloud Storage bucket (directory) to upload heap dumps to. Enabling this field implies that `dump_heap_on_oom` is set to true.",
          type = "string",
        },
        sdkContainerImage = {
          description = "Docker registry location of container image to use for the 'worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines.",
          type = "string",
        },
        serviceAccountEmail = {
          description = "The email address of the service account to run the job as.",
          type = "string",
        },
        stagingLocation = {
          description = "The Cloud Storage path for staging local files. Must be a valid Cloud Storage URL, beginning with `gs://`.",
          type = "string",
        },
        subnetwork = {
          description = "Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form \"https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK\" or \"regions/REGION/subnetworks/SUBNETWORK\". If the subnetwork is located in a Shared VPC network, you must use the complete URL.",
          type = "string",
        },
        tempLocation = {
          description = "The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.",
          type = "string",
        },
        workerRegion = {
          description = "The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1\". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.",
          type = "string",
        },
        workerZone = {
          description = "The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1-a\". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.",
          type = "string",
        },
        zone = {
          description = "The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.",
          type = "string",
        },
      },
      type = "object",
    },
    FloatingPointList = {
      description = "A metric value representing a list of floating point numbers.",
      id = "FloatingPointList",
      properties = {
        elements = {
          description = "Elements of the list.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FloatingPointMean = {
      description = "A representation of a floating point mean metric contribution.",
      id = "FloatingPointMean",
      properties = {
        count = {
          ["$ref"] = "SplitInt64",
          description = "The number of values being aggregated.",
        },
        sum = {
          description = "The sum of all values being aggregated.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GetDebugConfigRequest = {
      description = "Request to get updated debug configuration for component.",
      id = "GetDebugConfigRequest",
      properties = {
        componentId = {
          description = "The internal component id for which debug configuration is requested.",
          type = "string",
        },
        location = {
          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
          type = "string",
        },
        workerId = {
          description = "The worker id, i.e., VM hostname.",
          type = "string",
        },
      },
      type = "object",
    },
    GetDebugConfigResponse = {
      description = "Response to a get debug configuration request.",
      id = "GetDebugConfigResponse",
      properties = {
        config = {
          description = "The encoded debug configuration for the requested component.",
          type = "string",
        },
      },
      type = "object",
    },
    GetTemplateResponse = {
      description = "The response to a GetTemplate request.",
      id = "GetTemplateResponse",
      properties = {
        metadata = {
          ["$ref"] = "TemplateMetadata",
          description = "The template metadata describing the template name, available parameters, etc.",
        },
        runtimeMetadata = {
          ["$ref"] = "RuntimeMetadata",
          description = "Describes the runtime metadata with SDKInfo and available parameters.",
        },
        status = {
          ["$ref"] = "Status",
          description = "The status of the get template request. Any problems with the request will be indicated in the error_details.",
        },
        templateType = {
          description = "Template Type.",
          enum = {
            "UNKNOWN",
            "LEGACY",
            "FLEX",
          },
          enumDescriptions = {
            "Unknown Template Type.",
            "Legacy Template.",
            "Flex Template.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Histogram = {
      description = "Histogram of value counts for a distribution. Buckets have an inclusive lower bound and exclusive upper bound and use \"1,2,5 bucketing\": The first bucket range is from [0,1) and all subsequent bucket boundaries are powers of ten multiplied by 1, 2, or 5. Thus, bucket boundaries are 0, 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, ... Negative values are not supported.",
      id = "Histogram",
      properties = {
        bucketCounts = {
          description = "Counts of values in each bucket. For efficiency, prefix and trailing buckets with count = 0 are elided. Buckets can store the full range of values of an unsigned long, with ULLONG_MAX falling into the 59th bucket with range [1e19, 2e19).",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        firstBucketOffset = {
          description = "Starting index of first stored bucket. The non-inclusive upper-bound of the ith bucket is given by: pow(10,(i-first_bucket_offset)/3) * (1,2,5)[(i-first_bucket_offset)%3]",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HotKeyDebuggingInfo = {
      description = "Information useful for debugging a hot key detection.",
      id = "HotKeyDebuggingInfo",
      properties = {
        detectedHotKeys = {
          additionalProperties = {
            ["$ref"] = "HotKeyInfo",
          },
          description = "Debugging information for each detected hot key. Keyed by a hash of the key.",
          type = "object",
        },
      },
      type = "object",
    },
    HotKeyDetection = {
      description = "Proto describing a hot key detected on a given WorkItem.",
      id = "HotKeyDetection",
      properties = {
        hotKeyAge = {
          description = "The age of the hot key measured from when it was first detected.",
          format = "google-duration",
          type = "string",
        },
        systemName = {
          description = "System-defined name of the step containing this hot key. Unique across the workflow.",
          type = "string",
        },
        userStepName = {
          description = "User-provided name of the step that contains this hot key.",
          type = "string",
        },
      },
      type = "object",
    },
    HotKeyInfo = {
      description = "Information about a hot key.",
      id = "HotKeyInfo",
      properties = {
        hotKeyAge = {
          description = "The age of the hot key measured from when it was first detected.",
          format = "google-duration",
          type = "string",
        },
        key = {
          description = "A detected hot key that is causing limited parallelism. This field will be populated only if the following flag is set to true: \"--enable_hot_key_logging\".",
          type = "string",
        },
        keyTruncated = {
          description = "If true, then the above key is truncated and cannot be deserialized. This occurs if the key above is populated and the key size is >5MB.",
          type = "boolean",
        },
      },
      type = "object",
    },
    InstructionInput = {
      description = "An input of an instruction, as a reference to an output of a producer instruction.",
      id = "InstructionInput",
      properties = {
        outputNum = {
          description = "The output index (origin zero) within the producer.",
          format = "int32",
          type = "integer",
        },
        producerInstructionIndex = {
          description = "The index (origin zero) of the parallel instruction that produces the output to be consumed by this input. This index is relative to the list of instructions in this input's instruction's containing MapTask.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    InstructionOutput = {
      description = "An output of an instruction.",
      id = "InstructionOutput",
      properties = {
        codec = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The codec to use to encode data being written via this output.",
          type = "object",
        },
        name = {
          description = "The user-provided name of this output.",
          type = "string",
        },
        onlyCountKeyBytes = {
          description = "For system-generated byte and mean byte metrics, certain instructions should only report the key size.",
          type = "boolean",
        },
        onlyCountValueBytes = {
          description = "For system-generated byte and mean byte metrics, certain instructions should only report the value size.",
          type = "boolean",
        },
        originalName = {
          description = "System-defined name for this output in the original workflow graph. Outputs that do not contribute to an original instruction do not set this.",
          type = "string",
        },
        systemName = {
          description = "System-defined name of this output. Unique across the workflow.",
          type = "string",
        },
      },
      type = "object",
    },
    IntegerGauge = {
      description = "A metric value representing temporal values of a variable.",
      id = "IntegerGauge",
      properties = {
        timestamp = {
          description = "The time at which this value was measured. Measured as msecs from epoch.",
          format = "google-datetime",
          type = "string",
        },
        value = {
          ["$ref"] = "SplitInt64",
          description = "The value of the variable represented by this gauge.",
        },
      },
      type = "object",
    },
    IntegerList = {
      description = "A metric value representing a list of integers.",
      id = "IntegerList",
      properties = {
        elements = {
          description = "Elements of the list.",
          items = {
            ["$ref"] = "SplitInt64",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IntegerMean = {
      description = "A representation of an integer mean metric contribution.",
      id = "IntegerMean",
      properties = {
        count = {
          ["$ref"] = "SplitInt64",
          description = "The number of values being aggregated.",
        },
        sum = {
          ["$ref"] = "SplitInt64",
          description = "The sum of all values being aggregated.",
        },
      },
      type = "object",
    },
    Job = {
      description = "Defines a job to be run by the Cloud Dataflow service. Do not enter confidential information when you supply string values using the API.",
      id = "Job",
      properties = {
        clientRequestId = {
          description = "The client's unique identifier of the job, re-used across retried attempts. If this field is set, the service will ensure its uniqueness. The request to create a job will fail if the service has knowledge of a previously submitted job with the same client's ID and job name. The caller may use this field to ensure idempotence of job creation across retried attempts to create a job. By default, the field is empty and, in that case, the service ignores it.",
          type = "string",
        },
        createTime = {
          description = "The timestamp when the job was initially created. Immutable and set by the Cloud Dataflow service.",
          format = "google-datetime",
          type = "string",
        },
        createdFromSnapshotId = {
          description = "If this is specified, the job's initial state is populated from the given snapshot.",
          type = "string",
        },
        currentState = {
          description = "The current state of the job. Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise specified. A job in the `JOB_STATE_RUNNING` state may asynchronously enter a terminal state. After a job has reached a terminal state, no further state updates may be made. This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.",
          enum = {
            "JOB_STATE_UNKNOWN",
            "JOB_STATE_STOPPED",
            "JOB_STATE_RUNNING",
            "JOB_STATE_DONE",
            "JOB_STATE_FAILED",
            "JOB_STATE_CANCELLED",
            "JOB_STATE_UPDATED",
            "JOB_STATE_DRAINING",
            "JOB_STATE_DRAINED",
            "JOB_STATE_PENDING",
            "JOB_STATE_CANCELLING",
            "JOB_STATE_QUEUED",
            "JOB_STATE_RESOURCE_CLEANING_UP",
          },
          enumDescriptions = {
            "The job's run state isn't specified.",
            "`JOB_STATE_STOPPED` indicates that the job has not yet started to run.",
            "`JOB_STATE_RUNNING` indicates that the job is currently running.",
            "`JOB_STATE_DONE` indicates that the job has successfully completed. This is a terminal job state. This state may be set by the Cloud Dataflow service, as a transition from `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob` call, if the job has not yet reached a terminal state.",
            "`JOB_STATE_FAILED` indicates that the job has failed. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.",
            "`JOB_STATE_CANCELLED` indicates that the job has been explicitly cancelled. This is a terminal job state. This state may only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has not yet reached another terminal state.",
            "`JOB_STATE_UPDATED` indicates that the job was successfully updated, meaning that this job was stopped and another job was started, inheriting state from this one. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.",
            "`JOB_STATE_DRAINING` indicates that the job is in the process of draining. A draining job has stopped pulling from its input sources and is processing any data that remains in-flight. This state may be set via a Cloud Dataflow `UpdateJob` call, but only as a transition from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.",
            "`JOB_STATE_DRAINED` indicates that the job has been drained. A drained job terminated by stopping pulling from its input sources and processing any data that remained in-flight when draining was requested. This state is a terminal state, may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.",
            "`JOB_STATE_PENDING` indicates that the job has been created but is not yet running. Jobs that are pending may only transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.",
            "`JOB_STATE_CANCELLING` indicates that the job has been explicitly cancelled and is in the process of stopping. Jobs that are cancelling may only transition to `JOB_STATE_CANCELLED` or `JOB_STATE_FAILED`.",
            "`JOB_STATE_QUEUED` indicates that the job has been created but is being delayed until launch. Jobs that are queued may only transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.",
            "`JOB_STATE_RESOURCE_CLEANING_UP` indicates that the batch job's associated resources are currently being cleaned up after a successful run. Currently, this is an opt-in feature, please reach out to Cloud support team if you are interested.",
          },
          type = "string",
        },
        currentStateTime = {
          description = "The timestamp associated with the current state.",
          format = "google-datetime",
          type = "string",
        },
        environment = {
          ["$ref"] = "Environment",
          description = "The environment for the job.",
        },
        executionInfo = {
          ["$ref"] = "JobExecutionInfo",
          description = "Deprecated.",
        },
        id = {
          description = "The unique ID of this job. This field is set by the Cloud Dataflow service when the Job is created, and is immutable for the life of the job.",
          type = "string",
        },
        jobMetadata = {
          ["$ref"] = "JobMetadata",
          description = "This field is populated by the Dataflow service to support filtering jobs by the metadata values provided here. Populated for ListJobs and all GetJob views SUMMARY and higher.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-defined labels for this job. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.",
          type = "object",
        },
        location = {
          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.",
          type = "string",
        },
        name = {
          description = "The user-specified Cloud Dataflow job name. Only one Job with a given name can exist in a project within one region at any given time. Jobs in different regions can have the same name. If a caller attempts to create a Job with the same name as an already-existing Job, the attempt returns the existing Job. The name must match the regular expression `[a-z]([-a-z0-9]{0,1022}[a-z0-9])?`",
          type = "string",
        },
        pipelineDescription = {
          ["$ref"] = "PipelineDescription",
          description = "Preliminary field: The format of this data may change at any time. A description of the user pipeline and stages through which it is executed. Created by Cloud Dataflow service. Only retrieved with JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL.",
        },
        projectId = {
          description = "The ID of the Cloud Platform project that the job belongs to.",
          type = "string",
        },
        replaceJobId = {
          description = "If this job is an update of an existing job, this field is the job ID of the job it replaced. When sending a `CreateJobRequest`, you can update a job by specifying it here. The job named here is stopped, and its intermediate state is transferred to this job.",
          type = "string",
        },
        replacedByJobId = {
          description = "If another job is an update of this job (and thus, this job is in `JOB_STATE_UPDATED`), this field contains the ID of that job.",
          type = "string",
        },
        requestedState = {
          description = "The job's requested state. `UpdateJob` may be used to switch between the `JOB_STATE_STOPPED` and `JOB_STATE_RUNNING` states, by setting requested_state. `UpdateJob` may also be used to directly set a job's requested state to `JOB_STATE_CANCELLED` or `JOB_STATE_DONE`, irrevocably terminating the job if it has not already reached a terminal state.",
          enum = {
            "JOB_STATE_UNKNOWN",
            "JOB_STATE_STOPPED",
            "JOB_STATE_RUNNING",
            "JOB_STATE_DONE",
            "JOB_STATE_FAILED",
            "JOB_STATE_CANCELLED",
            "JOB_STATE_UPDATED",
            "JOB_STATE_DRAINING",
            "JOB_STATE_DRAINED",
            "JOB_STATE_PENDING",
            "JOB_STATE_CANCELLING",
            "JOB_STATE_QUEUED",
            "JOB_STATE_RESOURCE_CLEANING_UP",
          },
          enumDescriptions = {
            "The job's run state isn't specified.",
            "`JOB_STATE_STOPPED` indicates that the job has not yet started to run.",
            "`JOB_STATE_RUNNING` indicates that the job is currently running.",
            "`JOB_STATE_DONE` indicates that the job has successfully completed. This is a terminal job state. This state may be set by the Cloud Dataflow service, as a transition from `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob` call, if the job has not yet reached a terminal state.",
            "`JOB_STATE_FAILED` indicates that the job has failed. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.",
            "`JOB_STATE_CANCELLED` indicates that the job has been explicitly cancelled. This is a terminal job state. This state may only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has not yet reached another terminal state.",
            "`JOB_STATE_UPDATED` indicates that the job was successfully updated, meaning that this job was stopped and another job was started, inheriting state from this one. This is a terminal job state. This state may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.",
            "`JOB_STATE_DRAINING` indicates that the job is in the process of draining. A draining job has stopped pulling from its input sources and is processing any data that remains in-flight. This state may be set via a Cloud Dataflow `UpdateJob` call, but only as a transition from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.",
            "`JOB_STATE_DRAINED` indicates that the job has been drained. A drained job terminated by stopping pulling from its input sources and processing any data that remained in-flight when draining was requested. This state is a terminal state, may only be set by the Cloud Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.",
            "`JOB_STATE_PENDING` indicates that the job has been created but is not yet running. Jobs that are pending may only transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.",
            "`JOB_STATE_CANCELLING` indicates that the job has been explicitly cancelled and is in the process of stopping. Jobs that are cancelling may only transition to `JOB_STATE_CANCELLED` or `JOB_STATE_FAILED`.",
            "`JOB_STATE_QUEUED` indicates that the job has been created but is being delayed until launch. Jobs that are queued may only transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.",
            "`JOB_STATE_RESOURCE_CLEANING_UP` indicates that the batch job's associated resources are currently being cleaned up after a successful run. Currently, this is an opt-in feature, please reach out to Cloud support team if you are interested.",
          },
          type = "string",
        },
        satisfiesPzs = {
          description = "Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.",
          type = "boolean",
        },
        stageStates = {
          description = "This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.",
          items = {
            ["$ref"] = "ExecutionStageState",
          },
          type = "array",
        },
        startTime = {
          description = "The timestamp when the job was started (transitioned to JOB_STATE_PENDING). Flexible resource scheduling jobs are started with some delay after job creation, so start_time is unset before start and is updated when the job is started by the Cloud Dataflow service. For other jobs, start_time always equals to create_time and is immutable and set by the Cloud Dataflow service.",
          format = "google-datetime",
          type = "string",
        },
        steps = {
          description = "Exactly one of step or steps_location should be specified. The top-level steps that constitute the entire job. Only retrieved with JOB_VIEW_ALL.",
          items = {
            ["$ref"] = "Step",
          },
          type = "array",
        },
        stepsLocation = {
          description = "The Cloud Storage location where the steps are stored.",
          type = "string",
        },
        tempFiles = {
          description = "A set of files the system should be aware of that are used for temporary storage. These temporary files will be removed on job completion. No duplicates are allowed. No file patterns are supported. The supported files are: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}",
          items = {
            type = "string",
          },
          type = "array",
        },
        transformNameMapping = {
          additionalProperties = {
            type = "string",
          },
          description = "The map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.",
          type = "object",
        },
        type = {
          description = "The type of Cloud Dataflow job.",
          enum = {
            "JOB_TYPE_UNKNOWN",
            "JOB_TYPE_BATCH",
            "JOB_TYPE_STREAMING",
          },
          enumDescriptions = {
            "The type of the job is unspecified, or unknown.",
            "A batch job with a well-defined end point: data is read, data is processed, data is written, and the job is done.",
            "A continuously streaming job with no end: data is read, processed, and written continuously.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    JobExecutionDetails = {
      description = "Information about the execution of a job.",
      id = "JobExecutionDetails",
      properties = {
        nextPageToken = {
          description = "If present, this response does not contain all requested tasks. To obtain the next page of results, repeat the request with page_token set to this value.",
          type = "string",
        },
        stages = {
          description = "The stages of the job execution.",
          items = {
            ["$ref"] = "StageSummary",
          },
          type = "array",
        },
      },
      type = "object",
    },
    JobExecutionInfo = {
      description = "Additional information about how a Cloud Dataflow job will be executed that isn't contained in the submitted job.",
      id = "JobExecutionInfo",
      properties = {
        stages = {
          additionalProperties = {
            ["$ref"] = "JobExecutionStageInfo",
          },
          description = "A mapping from each stage to the information about that stage.",
          type = "object",
        },
      },
      type = "object",
    },
    JobExecutionStageInfo = {
      description = "Contains information about how a particular google.dataflow.v1beta3.Step will be executed.",
      id = "JobExecutionStageInfo",
      properties = {
        stepName = {
          description = "The steps associated with the execution stage. Note that stages may have several steps, and that a given step might be run by more than one stage.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    JobMessage = {
      description = "A particular message pertaining to a Dataflow job.",
      id = "JobMessage",
      properties = {
        id = {
          description = "Deprecated.",
          type = "string",
        },
        messageImportance = {
          description = "Importance level of the message.",
          enum = {
            "JOB_MESSAGE_IMPORTANCE_UNKNOWN",
            "JOB_MESSAGE_DEBUG",
            "JOB_MESSAGE_DETAILED",
            "JOB_MESSAGE_BASIC",
            "JOB_MESSAGE_WARNING",
            "JOB_MESSAGE_ERROR",
          },
          enumDescriptions = {
            "The message importance isn't specified, or is unknown.",
            "The message is at the 'debug' level: typically only useful for software engineers working on the code the job is running. Typically, Dataflow pipeline runners do not display log messages at this level by default.",
            "The message is at the 'detailed' level: somewhat verbose, but potentially useful to users. Typically, Dataflow pipeline runners do not display log messages at this level by default. These messages are displayed by default in the Dataflow monitoring UI.",
            "The message is at the 'basic' level: useful for keeping track of the execution of a Dataflow pipeline. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
            "The message is at the 'warning' level: indicating a condition pertaining to a job which may require human intervention. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
            "The message is at the 'error' level: indicating a condition preventing a job from succeeding. Typically, Dataflow pipeline runners display log messages at this level by default, and these messages are displayed by default in the Dataflow monitoring UI.",
          },
          type = "string",
        },
        messageText = {
          description = "The text of the message.",
          type = "string",
        },
        time = {
          description = "The timestamp of the message.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    JobMetadata = {
      description = "Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.",
      id = "JobMetadata",
      properties = {
        bigTableDetails = {
          description = "Identification of a Cloud Bigtable source used in the Dataflow job.",
          items = {
            ["$ref"] = "BigTableIODetails",
          },
          type = "array",
        },
        bigqueryDetails = {
          description = "Identification of a BigQuery source used in the Dataflow job.",
          items = {
            ["$ref"] = "BigQueryIODetails",
          },
          type = "array",
        },
        datastoreDetails = {
          description = "Identification of a Datastore source used in the Dataflow job.",
          items = {
            ["$ref"] = "DatastoreIODetails",
          },
          type = "array",
        },
        fileDetails = {
          description = "Identification of a File source used in the Dataflow job.",
          items = {
            ["$ref"] = "FileIODetails",
          },
          type = "array",
        },
        pubsubDetails = {
          description = "Identification of a Pub/Sub source used in the Dataflow job.",
          items = {
            ["$ref"] = "PubSubIODetails",
          },
          type = "array",
        },
        sdkVersion = {
          ["$ref"] = "SdkVersion",
          description = "The SDK version used to run the job.",
        },
        spannerDetails = {
          description = "Identification of a Spanner source used in the Dataflow job.",
          items = {
            ["$ref"] = "SpannerIODetails",
          },
          type = "array",
        },
      },
      type = "object",
    },
    JobMetrics = {
      description = "JobMetrics contains a collection of metrics describing the detailed progress of a Dataflow job. Metrics correspond to user-defined and system-defined metrics in the job. This resource captures only the most recent values of each metric; time-series data can be queried for them (under the same metric names) from Cloud Monitoring.",
      id = "JobMetrics",
      properties = {
        metricTime = {
          description = "Timestamp as of which metric values are current.",
          format = "google-datetime",
          type = "string",
        },
        metrics = {
          description = "All metrics for this job.",
          items = {
            ["$ref"] = "MetricUpdate",
          },
          type = "array",
        },
      },
      type = "object",
    },
    KeyRangeDataDiskAssignment = {
      description = "Data disk assignment information for a specific key-range of a sharded computation. Currently we only support UTF-8 character splits to simplify encoding into JSON.",
      id = "KeyRangeDataDiskAssignment",
      properties = {
        dataDisk = {
          description = "The name of the data disk where data for this range is stored. This name is local to the Google Cloud Platform project and uniquely identifies the disk within that project, for example \"myproject-1014-104817-4c2-harness-0-disk-1\".",
          type = "string",
        },
        ["end"] = {
          description = "The end (exclusive) of the key range.",
          type = "string",
        },
        start = {
          description = "The start (inclusive) of the key range.",
          type = "string",
        },
      },
      type = "object",
    },
    KeyRangeLocation = {
      description = "Location information for a specific key-range of a sharded computation. Currently we only support UTF-8 character splits to simplify encoding into JSON.",
      id = "KeyRangeLocation",
      properties = {
        dataDisk = {
          description = "The name of the data disk where data for this range is stored. This name is local to the Google Cloud Platform project and uniquely identifies the disk within that project, for example \"myproject-1014-104817-4c2-harness-0-disk-1\".",
          type = "string",
        },
        deliveryEndpoint = {
          description = "The physical location of this range assignment to be used for streaming computation cross-worker message delivery.",
          type = "string",
        },
        deprecatedPersistentDirectory = {
          description = "DEPRECATED. The location of the persistent state for this range, as a persistent directory in the worker local filesystem.",
          type = "string",
        },
        ["end"] = {
          description = "The end (exclusive) of the key range.",
          type = "string",
        },
        start = {
          description = "The start (inclusive) of the key range.",
          type = "string",
        },
      },
      type = "object",
    },
    LaunchFlexTemplateParameter = {
      description = "Launch FlexTemplate Parameter.",
      id = "LaunchFlexTemplateParameter",
      properties = {
        containerSpec = {
          ["$ref"] = "ContainerSpec",
          description = "Spec about the container image to launch.",
        },
        containerSpecGcsPath = {
          description = "Cloud Storage path to a file with json serialized ContainerSpec as content.",
          type = "string",
        },
        environment = {
          ["$ref"] = "FlexTemplateRuntimeEnvironment",
          description = "The runtime environment for the FlexTemplate job",
        },
        jobName = {
          description = "Required. The job name to use for the created job. For update job request, job name should be same as the existing running job.",
          type = "string",
        },
        launchOptions = {
          additionalProperties = {
            type = "string",
          },
          description = "Launch options for this flex template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.",
          type = "object",
        },
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "The parameters for FlexTemplate. Ex. {\"num_workers\":\"5\"}",
          type = "object",
        },
        transformNameMappings = {
          additionalProperties = {
            type = "string",
          },
          description = "Use this to pass transform_name_mappings for streaming update jobs. Ex:{\"oldTransformName\":\"newTransformName\",...}'",
          type = "object",
        },
        update = {
          description = "Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LaunchFlexTemplateRequest = {
      description = "A request to launch a Cloud Dataflow job from a FlexTemplate.",
      id = "LaunchFlexTemplateRequest",
      properties = {
        launchParameter = {
          ["$ref"] = "LaunchFlexTemplateParameter",
          description = "Required. Parameter to launch a job form Flex Template.",
        },
        validateOnly = {
          description = "If true, the request is validated but not actually executed. Defaults to false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LaunchFlexTemplateResponse = {
      description = "Response to the request to launch a job from Flex Template.",
      id = "LaunchFlexTemplateResponse",
      properties = {
        job = {
          ["$ref"] = "Job",
          description = "The job that was launched, if the request was not a dry run and the job was successfully launched.",
        },
      },
      type = "object",
    },
    LaunchTemplateParameters = {
      description = "Parameters to provide to the template being launched. Note that the [metadata in the pipeline code] (https://cloud.google.com/dataflow/docs/guides/templates/creating-templates#metadata) determines which runtime parameters are valid.",
      id = "LaunchTemplateParameters",
      properties = {
        environment = {
          ["$ref"] = "RuntimeEnvironment",
          description = "The runtime environment for the job.",
        },
        jobName = {
          description = "Required. The job name to use for the created job. The name must match the regular expression `[a-z]([-a-z0-9]{0,1022}[a-z0-9])?`",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            type = "string",
          },
          description = "The runtime parameters to pass to the job.",
          type = "object",
        },
        transformNameMapping = {
          additionalProperties = {
            type = "string",
          },
          description = "Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.",
          type = "object",
        },
        update = {
          description = "If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LaunchTemplateResponse = {
      description = "Response to the request to launch a template.",
      id = "LaunchTemplateResponse",
      properties = {
        job = {
          ["$ref"] = "Job",
          description = "The job that was launched, if the request was not a dry run and the job was successfully launched.",
        },
      },
      type = "object",
    },
    LeaseWorkItemRequest = {
      description = "Request to lease WorkItems.",
      id = "LeaseWorkItemRequest",
      properties = {
        currentWorkerTime = {
          description = "The current timestamp at the worker.",
          format = "google-datetime",
          type = "string",
        },
        location = {
          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the WorkItem's job.",
          type = "string",
        },
        requestedLeaseDuration = {
          description = "The initial lease period.",
          format = "google-duration",
          type = "string",
        },
        unifiedWorkerRequest = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Untranslated bag-of-bytes WorkRequest from UnifiedWorker.",
          type = "object",
        },
        workItemTypes = {
          description = "Filter for WorkItem type.",
          items = {
            type = "string",
          },
          type = "array",
        },
        workerCapabilities = {
          description = "Worker capabilities. WorkItems might be limited to workers with specific capabilities.",
          items = {
            type = "string",
          },
          type = "array",
        },
        workerId = {
          description = "Identifies the worker leasing work -- typically the ID of the virtual machine running the worker.",
          type = "string",
        },
      },
      type = "object",
    },
    LeaseWorkItemResponse = {
      description = "Response to a request to lease WorkItems.",
      id = "LeaseWorkItemResponse",
      properties = {
        unifiedWorkerResponse = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Untranslated bag-of-bytes WorkResponse for UnifiedWorker.",
          type = "object",
        },
        workItems = {
          description = "A list of the leased WorkItems.",
          items = {
            ["$ref"] = "WorkItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListJobMessagesResponse = {
      description = "Response to a request to list job messages.",
      id = "ListJobMessagesResponse",
      properties = {
        autoscalingEvents = {
          description = "Autoscaling events in ascending timestamp order.",
          items = {
            ["$ref"] = "AutoscalingEvent",
          },
          type = "array",
        },
        jobMessages = {
          description = "Messages in ascending timestamp order.",
          items = {
            ["$ref"] = "JobMessage",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token to obtain the next page of results if there are more.",
          type = "string",
        },
      },
      type = "object",
    },
    ListJobsResponse = {
      description = "Response to a request to list Cloud Dataflow jobs in a project. This might be a partial response, depending on the page size in the ListJobsRequest. However, if the project does not have any jobs, an instance of ListJobsResponse is not returned and the requests's response body is empty {}.",
      id = "ListJobsResponse",
      properties = {
        failedLocation = {
          description = "Zero or more messages describing the [regional endpoints] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that failed to respond.",
          items = {
            ["$ref"] = "FailedLocation",
          },
          type = "array",
        },
        jobs = {
          description = "A subset of the requested job information.",
          items = {
            ["$ref"] = "Job",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Set if there may be more results than fit in this response.",
          type = "string",
        },
      },
      type = "object",
    },
    ListSnapshotsResponse = {
      description = "List of snapshots.",
      id = "ListSnapshotsResponse",
      properties = {
        snapshots = {
          description = "Returned snapshots.",
          items = {
            ["$ref"] = "Snapshot",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MapTask = {
      description = "MapTask consists of an ordered set of instructions, each of which describes one particular low-level operation for the worker to perform in order to accomplish the MapTask's WorkItem. Each instruction must appear in the list before any instructions which depends on its output.",
      id = "MapTask",
      properties = {
        counterPrefix = {
          description = "Counter prefix that can be used to prefix counters. Not currently used in Dataflow.",
          type = "string",
        },
        instructions = {
          description = "The instructions in the MapTask.",
          items = {
            ["$ref"] = "ParallelInstruction",
          },
          type = "array",
        },
        stageName = {
          description = "System-defined name of the stage containing this MapTask. Unique across the workflow.",
          type = "string",
        },
        systemName = {
          description = "System-defined name of this MapTask. Unique across the workflow.",
          type = "string",
        },
      },
      type = "object",
    },
    MemInfo = {
      description = "Information about the memory usage of a worker or a container within a worker.",
      id = "MemInfo",
      properties = {
        currentLimitBytes = {
          description = "Instantenous memory limit in bytes.",
          format = "uint64",
          type = "string",
        },
        currentOoms = {
          description = "Number of Out of Memory (OOM) events recorded since the previous measurement.",
          format = "int64",
          type = "string",
        },
        currentRssBytes = {
          description = "Instantenous memory (RSS) size in bytes.",
          format = "uint64",
          type = "string",
        },
        timestamp = {
          description = "Timestamp of the measurement.",
          format = "google-datetime",
          type = "string",
        },
        totalGbMs = {
          description = "Total memory (RSS) usage since start up in GB * ms.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    MetricShortId = {
      description = "The metric short id is returned to the user alongside an offset into ReportWorkItemStatusRequest",
      id = "MetricShortId",
      properties = {
        metricIndex = {
          description = "The index of the corresponding metric in the ReportWorkItemStatusRequest. Required.",
          format = "int32",
          type = "integer",
        },
        shortId = {
          description = "The service-generated short identifier for the metric.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MetricStructuredName = {
      description = "Identifies a metric, by describing the source which generated the metric.",
      id = "MetricStructuredName",
      properties = {
        context = {
          additionalProperties = {
            type = "string",
          },
          description = "Zero or more labeled fields which identify the part of the job this metric is associated with, such as the name of a step or collection. For example, built-in counters associated with steps will have context['step'] = . Counters associated with PCollections in the SDK will have context['pcollection'] = .",
          type = "object",
        },
        name = {
          description = "Worker-defined metric name.",
          type = "string",
        },
        origin = {
          description = "Origin (namespace) of metric name. May be blank for user-define metrics; will be \"dataflow\" for metrics defined by the Dataflow service or SDK.",
          type = "string",
        },
      },
      type = "object",
    },
    MetricUpdate = {
      description = "Describes the state of a metric.",
      id = "MetricUpdate",
      properties = {
        cumulative = {
          description = "True if this metric is reported as the total cumulative aggregate value accumulated since the worker started working on this WorkItem. By default this is false, indicating that this metric is reported as a delta that is not associated with any WorkItem.",
          type = "boolean",
        },
        distribution = {
          description = "A struct value describing properties of a distribution of numeric values.",
          type = "any",
        },
        gauge = {
          description = "A struct value describing properties of a Gauge. Metrics of gauge type show the value of a metric across time, and is aggregated based on the newest value.",
          type = "any",
        },
        internal = {
          description = "Worker-computed aggregate value for internal use by the Dataflow service.",
          type = "any",
        },
        kind = {
          description = "Metric aggregation kind. The possible metric aggregation kinds are \"Sum\", \"Max\", \"Min\", \"Mean\", \"Set\", \"And\", \"Or\", and \"Distribution\". The specified aggregation kind is case-insensitive. If omitted, this is not an aggregated value but instead a single metric sample value.",
          type = "string",
        },
        meanCount = {
          description = "Worker-computed aggregate value for the \"Mean\" aggregation kind. This holds the count of the aggregated values and is used in combination with mean_sum above to obtain the actual mean aggregate value. The only possible value type is Long.",
          type = "any",
        },
        meanSum = {
          description = "Worker-computed aggregate value for the \"Mean\" aggregation kind. This holds the sum of the aggregated values and is used in combination with mean_count below to obtain the actual mean aggregate value. The only possible value types are Long and Double.",
          type = "any",
        },
        name = {
          ["$ref"] = "MetricStructuredName",
          description = "Name of the metric.",
        },
        scalar = {
          description = "Worker-computed aggregate value for aggregation kinds \"Sum\", \"Max\", \"Min\", \"And\", and \"Or\". The possible value types are Long, Double, and Boolean.",
          type = "any",
        },
        set = {
          description = "Worker-computed aggregate value for the \"Set\" aggregation kind. The only possible value type is a list of Values whose type can be Long, Double, or String, according to the metric's type. All Values in the list must be of the same type.",
          type = "any",
        },
        updateTime = {
          description = "Timestamp associated with the metric value. Optional when workers are reporting work progress; it will be filled in responses from the metrics API.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    MountedDataDisk = {
      description = "Describes mounted data disk.",
      id = "MountedDataDisk",
      properties = {
        dataDisk = {
          description = "The name of the data disk. This name is local to the Google Cloud Platform project and uniquely identifies the disk within that project, for example \"myproject-1014-104817-4c2-harness-0-disk-1\".",
          type = "string",
        },
      },
      type = "object",
    },
    MultiOutputInfo = {
      description = "Information about an output of a multi-output DoFn.",
      id = "MultiOutputInfo",
      properties = {
        tag = {
          description = "The id of the tag the user code will emit to this output by; this should correspond to the tag of some SideInputInfo.",
          type = "string",
        },
      },
      type = "object",
    },
    NameAndKind = {
      description = "Basic metadata about a counter.",
      id = "NameAndKind",
      properties = {
        kind = {
          description = "Counter aggregation kind.",
          enum = {
            "INVALID",
            "SUM",
            "MAX",
            "MIN",
            "MEAN",
            "OR",
            "AND",
            "SET",
            "DISTRIBUTION",
            "LATEST_VALUE",
          },
          enumDescriptions = {
            "Counter aggregation kind was not set.",
            "Aggregated value is the sum of all contributed values.",
            "Aggregated value is the max of all contributed values.",
            "Aggregated value is the min of all contributed values.",
            "Aggregated value is the mean of all contributed values.",
            "Aggregated value represents the logical 'or' of all contributed values.",
            "Aggregated value represents the logical 'and' of all contributed values.",
            "Aggregated value is a set of unique contributed values.",
            "Aggregated value captures statistics about a distribution.",
            "Aggregated value tracks the latest value of a variable.",
          },
          type = "string",
        },
        name = {
          description = "Name of the counter.",
          type = "string",
        },
      },
      type = "object",
    },
    Package = {
      description = "The packages that must be installed in order for a worker to run the steps of the Cloud Dataflow job that will be assigned to its worker pool. This is the mechanism by which the Cloud Dataflow SDK causes code to be loaded onto the workers. For example, the Cloud Dataflow Java SDK might use this to install jars containing the user's code and all of the various dependencies (libraries, data files, etc.) required in order for that code to run.",
      id = "Package",
      properties = {
        location = {
          description = "The resource to read the package from. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket} bucket.storage.googleapis.com/",
          type = "string",
        },
        name = {
          description = "The name of the package.",
          type = "string",
        },
      },
      type = "object",
    },
    ParDoInstruction = {
      description = "An instruction that does a ParDo operation. Takes one main input and zero or more side inputs, and produces zero or more outputs. Runs user code.",
      id = "ParDoInstruction",
      properties = {
        input = {
          ["$ref"] = "InstructionInput",
          description = "The input.",
        },
        multiOutputInfos = {
          description = "Information about each of the outputs, if user_fn is a MultiDoFn.",
          items = {
            ["$ref"] = "MultiOutputInfo",
          },
          type = "array",
        },
        numOutputs = {
          description = "The number of outputs.",
          format = "int32",
          type = "integer",
        },
        sideInputs = {
          description = "Zero or more side inputs.",
          items = {
            ["$ref"] = "SideInputInfo",
          },
          type = "array",
        },
        userFn = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The user function to invoke.",
          type = "object",
        },
      },
      type = "object",
    },
    ParallelInstruction = {
      description = "Describes a particular operation comprising a MapTask.",
      id = "ParallelInstruction",
      properties = {
        flatten = {
          ["$ref"] = "FlattenInstruction",
          description = "Additional information for Flatten instructions.",
        },
        name = {
          description = "User-provided name of this operation.",
          type = "string",
        },
        originalName = {
          description = "System-defined name for the operation in the original workflow graph.",
          type = "string",
        },
        outputs = {
          description = "Describes the outputs of the instruction.",
          items = {
            ["$ref"] = "InstructionOutput",
          },
          type = "array",
        },
        parDo = {
          ["$ref"] = "ParDoInstruction",
          description = "Additional information for ParDo instructions.",
        },
        partialGroupByKey = {
          ["$ref"] = "PartialGroupByKeyInstruction",
          description = "Additional information for PartialGroupByKey instructions.",
        },
        read = {
          ["$ref"] = "ReadInstruction",
          description = "Additional information for Read instructions.",
        },
        systemName = {
          description = "System-defined name of this operation. Unique across the workflow.",
          type = "string",
        },
        write = {
          ["$ref"] = "WriteInstruction",
          description = "Additional information for Write instructions.",
        },
      },
      type = "object",
    },
    Parameter = {
      description = "Structured data associated with this message.",
      id = "Parameter",
      properties = {
        key = {
          description = "Key or name for this parameter.",
          type = "string",
        },
        value = {
          description = "Value for this parameter.",
          type = "any",
        },
      },
      type = "object",
    },
    ParameterMetadata = {
      description = "Metadata for a specific parameter.",
      id = "ParameterMetadata",
      properties = {
        customMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Additional metadata for describing this parameter.",
          type = "object",
        },
        helpText = {
          description = "Required. The help text to display for the parameter.",
          type = "string",
        },
        isOptional = {
          description = "Optional. Whether the parameter is optional. Defaults to false.",
          type = "boolean",
        },
        label = {
          description = "Required. The label to display for the parameter.",
          type = "string",
        },
        name = {
          description = "Required. The name of the parameter.",
          type = "string",
        },
        paramType = {
          description = "Optional. The type of the parameter. Used for selecting input picker.",
          enum = {
            "DEFAULT",
            "TEXT",
            "GCS_READ_BUCKET",
            "GCS_WRITE_BUCKET",
            "GCS_READ_FILE",
            "GCS_WRITE_FILE",
            "GCS_READ_FOLDER",
            "GCS_WRITE_FOLDER",
            "PUBSUB_TOPIC",
            "PUBSUB_SUBSCRIPTION",
            "BIGQUERY_TABLE",
            "JAVASCRIPT_UDF_FILE",
          },
          enumDescriptions = {
            "Default input type.",
            "The parameter specifies generic text input.",
            "The parameter specifies a Cloud Storage Bucket to read from.",
            "The parameter specifies a Cloud Storage Bucket to write to.",
            "The parameter specifies a Cloud Storage file path to read from.",
            "The parameter specifies a Cloud Storage file path to write to.",
            "The parameter specifies a Cloud Storage folder path to read from.",
            "The parameter specifies a Cloud Storage folder to write to.",
            "The parameter specifies a Pub/Sub Topic.",
            "The parameter specifies a Pub/Sub Subscription.",
            "The parameter specifies a BigQuery table.",
            "The parameter specifies a JavaScript UDF in Cloud Storage.",
          },
          type = "string",
        },
        regexes = {
          description = "Optional. Regexes that the parameter must match.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PartialGroupByKeyInstruction = {
      description = "An instruction that does a partial group-by-key. One input and one output.",
      id = "PartialGroupByKeyInstruction",
      properties = {
        input = {
          ["$ref"] = "InstructionInput",
          description = "Describes the input to the partial group-by-key instruction.",
        },
        inputElementCodec = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The codec to use for interpreting an element in the input PTable.",
          type = "object",
        },
        originalCombineValuesInputStoreName = {
          description = "If this instruction includes a combining function this is the name of the intermediate store between the GBK and the CombineValues.",
          type = "string",
        },
        originalCombineValuesStepName = {
          description = "If this instruction includes a combining function, this is the name of the CombineValues instruction lifted into this instruction.",
          type = "string",
        },
        sideInputs = {
          description = "Zero or more side inputs.",
          items = {
            ["$ref"] = "SideInputInfo",
          },
          type = "array",
        },
        valueCombiningFn = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The value combining function to invoke.",
          type = "object",
        },
      },
      type = "object",
    },
    PipelineDescription = {
      description = "A descriptive representation of submitted pipeline as well as the executed form. This data is provided by the Dataflow service for ease of visualizing the pipeline and interpreting Dataflow provided metrics.",
      id = "PipelineDescription",
      properties = {
        displayData = {
          description = "Pipeline level display data.",
          items = {
            ["$ref"] = "DisplayData",
          },
          type = "array",
        },
        executionPipelineStage = {
          description = "Description of each stage of execution of the pipeline.",
          items = {
            ["$ref"] = "ExecutionStageSummary",
          },
          type = "array",
        },
        originalPipelineTransform = {
          description = "Description of each transform in the pipeline and collections between them.",
          items = {
            ["$ref"] = "TransformSummary",
          },
          type = "array",
        },
        stepNamesHash = {
          description = "A hash value of the submitted pipeline portable graph step names if exists.",
          type = "string",
        },
      },
      type = "object",
    },
    Point = {
      description = "A point in the timeseries.",
      id = "Point",
      properties = {
        time = {
          description = "The timestamp of the point.",
          format = "google-datetime",
          type = "string",
        },
        value = {
          description = "The value of the point.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Position = {
      description = "Position defines a position within a collection of data. The value can be either the end position, a key (used with ordered collections), a byte offset, or a record index.",
      id = "Position",
      properties = {
        byteOffset = {
          description = "Position is a byte offset.",
          format = "int64",
          type = "string",
        },
        concatPosition = {
          ["$ref"] = "ConcatPosition",
          description = "CloudPosition is a concat position.",
        },
        ["end"] = {
          description = "Position is past all other positions. Also useful for the end position of an unbounded range.",
          type = "boolean",
        },
        key = {
          description = "Position is a string key, ordered lexicographically.",
          type = "string",
        },
        recordIndex = {
          description = "Position is a record index.",
          format = "int64",
          type = "string",
        },
        shufflePosition = {
          description = "CloudPosition is a base64 encoded BatchShufflePosition (with FIXED sharding).",
          type = "string",
        },
      },
      type = "object",
    },
    ProgressTimeseries = {
      description = "Information about the progress of some component of job execution.",
      id = "ProgressTimeseries",
      properties = {
        currentProgress = {
          description = "The current progress of the component, in the range [0,1].",
          format = "double",
          type = "number",
        },
        dataPoints = {
          description = "History of progress for the component. Points are sorted by time.",
          items = {
            ["$ref"] = "Point",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PubSubIODetails = {
      description = "Metadata for a Pub/Sub connector used by the job.",
      id = "PubSubIODetails",
      properties = {
        subscription = {
          description = "Subscription used in the connection.",
          type = "string",
        },
        topic = {
          description = "Topic accessed in the connection.",
          type = "string",
        },
      },
      type = "object",
    },
    PubsubLocation = {
      description = "Identifies a pubsub location to use for transferring data into or out of a streaming Dataflow job.",
      id = "PubsubLocation",
      properties = {
        dropLateData = {
          description = "Indicates whether the pipeline allows late-arriving data.",
          type = "boolean",
        },
        idLabel = {
          description = "If set, contains a pubsub label from which to extract record ids. If left empty, record deduplication will be strictly best effort.",
          type = "string",
        },
        subscription = {
          description = "A pubsub subscription, in the form of \"pubsub.googleapis.com/subscriptions//\"",
          type = "string",
        },
        timestampLabel = {
          description = "If set, contains a pubsub label from which to extract record timestamps. If left empty, record timestamps will be generated upon arrival.",
          type = "string",
        },
        topic = {
          description = "A pubsub topic, in the form of \"pubsub.googleapis.com/topics//\"",
          type = "string",
        },
        trackingSubscription = {
          description = "If set, specifies the pubsub subscription that will be used for tracking custom time timestamps for watermark estimation.",
          type = "string",
        },
        withAttributes = {
          description = "If true, then the client has requested to get pubsub attributes.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PubsubSnapshotMetadata = {
      description = "Represents a Pubsub snapshot.",
      id = "PubsubSnapshotMetadata",
      properties = {
        expireTime = {
          description = "The expire time of the Pubsub snapshot.",
          format = "google-datetime",
          type = "string",
        },
        snapshotName = {
          description = "The name of the Pubsub snapshot.",
          type = "string",
        },
        topicName = {
          description = "The name of the Pubsub topic.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryInfo = {
      description = "Information about a validated query.",
      id = "QueryInfo",
      properties = {
        queryProperty = {
          description = "Includes an entry for each satisfied QueryProperty.",
          items = {
            enum = {
              "QUERY_PROPERTY_UNSPECIFIED",
              "HAS_UNBOUNDED_SOURCE",
            },
            enumDescriptions = {
              "The query property is unknown or unspecified.",
              "Indicates this query reads from >= 1 unbounded source.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReadInstruction = {
      description = "An instruction that reads records. Takes no inputs, produces one output.",
      id = "ReadInstruction",
      properties = {
        source = {
          ["$ref"] = "Source",
          description = "The source to read from.",
        },
      },
      type = "object",
    },
    ReportWorkItemStatusRequest = {
      description = "Request to report the status of WorkItems.",
      id = "ReportWorkItemStatusRequest",
      properties = {
        currentWorkerTime = {
          description = "The current timestamp at the worker.",
          format = "google-datetime",
          type = "string",
        },
        location = {
          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the WorkItem's job.",
          type = "string",
        },
        unifiedWorkerRequest = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Untranslated bag-of-bytes WorkProgressUpdateRequest from UnifiedWorker.",
          type = "object",
        },
        workItemStatuses = {
          description = "The order is unimportant, except that the order of the WorkItemServiceState messages in the ReportWorkItemStatusResponse corresponds to the order of WorkItemStatus messages here.",
          items = {
            ["$ref"] = "WorkItemStatus",
          },
          type = "array",
        },
        workerId = {
          description = "The ID of the worker reporting the WorkItem status. If this does not match the ID of the worker which the Dataflow service believes currently has the lease on the WorkItem, the report will be dropped (with an error response).",
          type = "string",
        },
      },
      type = "object",
    },
    ReportWorkItemStatusResponse = {
      description = "Response from a request to report the status of WorkItems.",
      id = "ReportWorkItemStatusResponse",
      properties = {
        unifiedWorkerResponse = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Untranslated bag-of-bytes WorkProgressUpdateResponse for UnifiedWorker.",
          type = "object",
        },
        workItemServiceStates = {
          description = "A set of messages indicating the service-side state for each WorkItem whose status was reported, in the same order as the WorkItemStatus messages in the ReportWorkItemStatusRequest which resulting in this response.",
          items = {
            ["$ref"] = "WorkItemServiceState",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReportedParallelism = {
      description = "Represents the level of parallelism in a WorkItem's input, reported by the worker.",
      id = "ReportedParallelism",
      properties = {
        isInfinite = {
          description = "Specifies whether the parallelism is infinite. If true, \"value\" is ignored. Infinite parallelism means the service will assume that the work item can always be split into more non-empty work items by dynamic splitting. This is a work-around for lack of support for infinity by the current JSON-based Java RPC stack.",
          type = "boolean",
        },
        value = {
          description = "Specifies the level of parallelism in case it is finite.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ResourceUtilizationReport = {
      description = "Worker metrics exported from workers. This contains resource utilization metrics accumulated from a variety of sources. For more information, see go/df-resource-signals.",
      id = "ResourceUtilizationReport",
      properties = {
        containers = {
          additionalProperties = {
            ["$ref"] = "ResourceUtilizationReport",
          },
          description = "Per container information. Key: container name.",
          type = "object",
        },
        cpuTime = {
          description = "CPU utilization samples.",
          items = {
            ["$ref"] = "CPUTime",
          },
          type = "array",
        },
        memoryInfo = {
          description = "Memory utilization samples.",
          items = {
            ["$ref"] = "MemInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResourceUtilizationReportResponse = {
      description = "Service-side response to WorkerMessage reporting resource utilization.",
      id = "ResourceUtilizationReportResponse",
      properties = {},
      type = "object",
    },
    RuntimeEnvironment = {
      description = "The environment values to set at runtime.",
      id = "RuntimeEnvironment",
      properties = {
        additionalExperiments = {
          description = "Additional experiment flags for the job, specified with the `--experiments` option.",
          items = {
            type = "string",
          },
          type = "array",
        },
        additionalUserLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of \"key\": value pairs. Example: { \"name\": \"wrench\", \"mass\": \"1kg\", \"count\": \"3\" }.",
          type = "object",
        },
        bypassTempDirValidation = {
          description = "Whether to bypass the safety checks for the job's temporary directory. Use with caution.",
          type = "boolean",
        },
        enableStreamingEngine = {
          description = "Whether to enable Streaming Engine for the job.",
          type = "boolean",
        },
        ipConfiguration = {
          description = "Configuration for VM IPs.",
          enum = {
            "WORKER_IP_UNSPECIFIED",
            "WORKER_IP_PUBLIC",
            "WORKER_IP_PRIVATE",
          },
          enumDescriptions = {
            "The configuration is unknown, or unspecified.",
            "Workers should have public IP addresses.",
            "Workers should have private IP addresses.",
          },
          type = "string",
        },
        kmsKeyName = {
          description = "Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/",
          type = "string",
        },
        machineType = {
          description = "The machine type to use for the job. Defaults to the value from the template if not specified.",
          type = "string",
        },
        maxWorkers = {
          description = "The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.",
          format = "int32",
          type = "integer",
        },
        network = {
          description = "Network to which VMs will be assigned. If empty or unspecified, the service will use the network \"default\".",
          type = "string",
        },
        numWorkers = {
          description = "The initial number of Google Compute Engine instances for the job.",
          format = "int32",
          type = "integer",
        },
        serviceAccountEmail = {
          description = "The email address of the service account to run the job as.",
          type = "string",
        },
        subnetwork = {
          description = "Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form \"https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK\" or \"regions/REGION/subnetworks/SUBNETWORK\". If the subnetwork is located in a Shared VPC network, you must use the complete URL.",
          type = "string",
        },
        tempLocation = {
          description = "The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.",
          type = "string",
        },
        workerRegion = {
          description = "The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1\". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.",
          type = "string",
        },
        workerZone = {
          description = "The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. \"us-west1-a\". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.",
          type = "string",
        },
        zone = {
          description = "The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.",
          type = "string",
        },
      },
      type = "object",
    },
    RuntimeMetadata = {
      description = "RuntimeMetadata describing a runtime environment.",
      id = "RuntimeMetadata",
      properties = {
        parameters = {
          description = "The parameters for the template.",
          items = {
            ["$ref"] = "ParameterMetadata",
          },
          type = "array",
        },
        sdkInfo = {
          ["$ref"] = "SDKInfo",
          description = "SDK Info for the template.",
        },
      },
      type = "object",
    },
    SDKInfo = {
      description = "SDK Information.",
      id = "SDKInfo",
      properties = {
        language = {
          description = "Required. The SDK Language.",
          enum = {
            "UNKNOWN",
            "JAVA",
            "PYTHON",
            "GO",
          },
          enumDescriptions = {
            "UNKNOWN Language.",
            "Java.",
            "Python.",
            "Go.",
          },
          type = "string",
        },
        version = {
          description = "Optional. The SDK version.",
          type = "string",
        },
      },
      type = "object",
    },
    SdkHarnessContainerImage = {
      description = "Defines an SDK harness container for executing Dataflow pipelines.",
      id = "SdkHarnessContainerImage",
      properties = {
        capabilities = {
          description = "The set of capabilities enumerated in the above Environment proto. See also [beam_runner_api.proto](https://github.com/apache/beam/blob/master/model/pipeline/src/main/proto/org/apache/beam/model/pipeline/v1/beam_runner_api.proto)",
          items = {
            type = "string",
          },
          type = "array",
        },
        containerImage = {
          description = "A docker container image that resides in Google Container Registry.",
          type = "string",
        },
        environmentId = {
          description = "Environment ID for the Beam runner API proto Environment that corresponds to the current SDK Harness.",
          type = "string",
        },
        useSingleCorePerContainer = {
          description = "If true, recommends the Dataflow service to use only one core per SDK container instance with this image. If false (or unset) recommends using more than one core per SDK container instance with this image for efficiency. Note that Dataflow service may choose to override this property if needed.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SdkVersion = {
      description = "The version of the SDK used to run the job.",
      id = "SdkVersion",
      properties = {
        sdkSupportStatus = {
          description = "The support status for this SDK version.",
          enum = {
            "UNKNOWN",
            "SUPPORTED",
            "STALE",
            "DEPRECATED",
            "UNSUPPORTED",
          },
          enumDescriptions = {
            "Cloud Dataflow is unaware of this version.",
            "This is a known version of an SDK, and is supported.",
            "A newer version of the SDK family exists, and an update is recommended.",
            "This version of the SDK is deprecated and will eventually be unsupported.",
            "Support for this SDK version has ended and it should no longer be used.",
          },
          type = "string",
        },
        version = {
          description = "The version of the SDK used to run the job.",
          type = "string",
        },
        versionDisplayName = {
          description = "A readable string describing the version of the SDK.",
          type = "string",
        },
      },
      type = "object",
    },
    SendDebugCaptureRequest = {
      description = "Request to send encoded debug information. Next ID: 8",
      id = "SendDebugCaptureRequest",
      properties = {
        componentId = {
          description = "The internal component id for which debug information is sent.",
          type = "string",
        },
        data = {
          description = "The encoded debug information.",
          type = "string",
        },
        dataFormat = {
          description = "Format for the data field above (id=5).",
          enum = {
            "DATA_FORMAT_UNSPECIFIED",
            "RAW",
            "JSON",
            "ZLIB",
            "BROTLI",
          },
          enumDescriptions = {
            "Format unspecified, parsing is determined based upon page type and legacy encoding. (go/protodosdonts#do-include-an-unspecified-value-in-an-enum)",
            "Raw HTML string.",
            "JSON-encoded string.",
            "Websafe encoded zlib-compressed string.",
            "Websafe encoded brotli-compressed string.",
          },
          type = "string",
        },
        location = {
          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job specified by job_id.",
          type = "string",
        },
        workerId = {
          description = "The worker id, i.e., VM hostname.",
          type = "string",
        },
      },
      type = "object",
    },
    SendDebugCaptureResponse = {
      description = "Response to a send capture request. nothing",
      id = "SendDebugCaptureResponse",
      properties = {},
      type = "object",
    },
    SendWorkerMessagesRequest = {
      description = "A request for sending worker messages to the service.",
      id = "SendWorkerMessagesRequest",
      properties = {
        location = {
          description = "The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job.",
          type = "string",
        },
        workerMessages = {
          description = "The WorkerMessages to send.",
          items = {
            ["$ref"] = "WorkerMessage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SendWorkerMessagesResponse = {
      description = "The response to the worker messages.",
      id = "SendWorkerMessagesResponse",
      properties = {
        workerMessageResponses = {
          description = "The servers response to the worker messages.",
          items = {
            ["$ref"] = "WorkerMessageResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SeqMapTask = {
      description = "Describes a particular function to invoke.",
      id = "SeqMapTask",
      properties = {
        inputs = {
          description = "Information about each of the inputs.",
          items = {
            ["$ref"] = "SideInputInfo",
          },
          type = "array",
        },
        name = {
          description = "The user-provided name of the SeqDo operation.",
          type = "string",
        },
        outputInfos = {
          description = "Information about each of the outputs.",
          items = {
            ["$ref"] = "SeqMapTaskOutputInfo",
          },
          type = "array",
        },
        stageName = {
          description = "System-defined name of the stage containing the SeqDo operation. Unique across the workflow.",
          type = "string",
        },
        systemName = {
          description = "System-defined name of the SeqDo operation. Unique across the workflow.",
          type = "string",
        },
        userFn = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The user function to invoke.",
          type = "object",
        },
      },
      type = "object",
    },
    SeqMapTaskOutputInfo = {
      description = "Information about an output of a SeqMapTask.",
      id = "SeqMapTaskOutputInfo",
      properties = {
        sink = {
          ["$ref"] = "Sink",
          description = "The sink to write the output value to.",
        },
        tag = {
          description = "The id of the TupleTag the user code will tag the output value by.",
          type = "string",
        },
      },
      type = "object",
    },
    ShellTask = {
      description = "A task which consists of a shell command for the worker to execute.",
      id = "ShellTask",
      properties = {
        command = {
          description = "The shell command to run.",
          type = "string",
        },
        exitCode = {
          description = "Exit code for the task.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SideInputInfo = {
      description = "Information about a side input of a DoFn or an input of a SeqDoFn.",
      id = "SideInputInfo",
      properties = {
        kind = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "How to interpret the source element(s) as a side input value.",
          type = "object",
        },
        sources = {
          description = "The source(s) to read element(s) from to get the value of this side input. If more than one source, then the elements are taken from the sources, in the specified order if order matters. At least one source is required.",
          items = {
            ["$ref"] = "Source",
          },
          type = "array",
        },
        tag = {
          description = "The id of the tag the user code will access this side input by; this should correspond to the tag of some MultiOutputInfo.",
          type = "string",
        },
      },
      type = "object",
    },
    Sink = {
      description = "A sink that records can be encoded and written to.",
      id = "Sink",
      properties = {
        codec = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The codec to use to encode data written to the sink.",
          type = "object",
        },
        spec = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The sink to write to, plus its parameters.",
          type = "object",
        },
      },
      type = "object",
    },
    Snapshot = {
      description = "Represents a snapshot of a job.",
      id = "Snapshot",
      properties = {
        creationTime = {
          description = "The time this snapshot was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "User specified description of the snapshot. Maybe empty.",
          type = "string",
        },
        diskSizeBytes = {
          description = "The disk byte size of the snapshot. Only available for snapshots in READY state.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "The unique ID of this snapshot.",
          type = "string",
        },
        projectId = {
          description = "The project this snapshot belongs to.",
          type = "string",
        },
        pubsubMetadata = {
          description = "Pub/Sub snapshot metadata.",
          items = {
            ["$ref"] = "PubsubSnapshotMetadata",
          },
          type = "array",
        },
        region = {
          description = "Cloud region where this snapshot lives in, e.g., \"us-central1\".",
          type = "string",
        },
        sourceJobId = {
          description = "The job this snapshot was created from.",
          type = "string",
        },
        state = {
          description = "State of the snapshot.",
          enum = {
            "UNKNOWN_SNAPSHOT_STATE",
            "PENDING",
            "RUNNING",
            "READY",
            "FAILED",
            "DELETED",
          },
          enumDescriptions = {
            "Unknown state.",
            "Snapshot intent to create has been persisted, snapshotting of state has not yet started.",
            "Snapshotting is being performed.",
            "Snapshot has been created and is ready to be used.",
            "Snapshot failed to be created.",
            "Snapshot has been deleted.",
          },
          type = "string",
        },
        ttl = {
          description = "The time after which this snapshot will be automatically deleted.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    SnapshotJobRequest = {
      description = "Request to create a snapshot of a job.",
      id = "SnapshotJobRequest",
      properties = {
        description = {
          description = "User specified description of the snapshot. Maybe empty.",
          type = "string",
        },
        location = {
          description = "The location that contains this job.",
          type = "string",
        },
        snapshotSources = {
          description = "If true, perform snapshots for sources which support this.",
          type = "boolean",
        },
        ttl = {
          description = "TTL for the snapshot.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Source = {
      description = "A source that records can be read and decoded from.",
      id = "Source",
      properties = {
        baseSpecs = {
          description = "While splitting, sources may specify the produced bundles as differences against another source, in order to save backend-side memory and allow bigger jobs. For details, see SourceSplitRequest. To support this use case, the full set of parameters of the source is logically obtained by taking the latest explicitly specified value of each parameter in the order: base_specs (later items win), spec (overrides anything in base_specs).",
          items = {
            additionalProperties = {
              description = "Properties of the object.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        codec = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The codec to use to decode data read from the source.",
          type = "object",
        },
        doesNotNeedSplitting = {
          description = "Setting this value to true hints to the framework that the source doesn't need splitting, and using SourceSplitRequest on it would yield SOURCE_SPLIT_OUTCOME_USE_CURRENT. E.g. a file splitter may set this to true when splitting a single file into a set of byte ranges of appropriate size, and set this to false when splitting a filepattern into individual files. However, for efficiency, a file splitter may decide to produce file subranges directly from the filepattern to avoid a splitting round-trip. See SourceSplitRequest for an overview of the splitting process. This field is meaningful only in the Source objects populated by the user (e.g. when filling in a DerivedSource). Source objects supplied by the framework to the user don't have this field populated.",
          type = "boolean",
        },
        metadata = {
          ["$ref"] = "SourceMetadata",
          description = "Optionally, metadata for this source can be supplied right away, avoiding a SourceGetMetadataOperation roundtrip (see SourceOperationRequest). This field is meaningful only in the Source objects populated by the user (e.g. when filling in a DerivedSource). Source objects supplied by the framework to the user don't have this field populated.",
        },
        spec = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The source to read from, plus its parameters.",
          type = "object",
        },
      },
      type = "object",
    },
    SourceFork = {
      description = "DEPRECATED in favor of DynamicSourceSplit.",
      id = "SourceFork",
      properties = {
        primary = {
          ["$ref"] = "SourceSplitShard",
          description = "DEPRECATED",
        },
        primarySource = {
          ["$ref"] = "DerivedSource",
          description = "DEPRECATED",
        },
        residual = {
          ["$ref"] = "SourceSplitShard",
          description = "DEPRECATED",
        },
        residualSource = {
          ["$ref"] = "DerivedSource",
          description = "DEPRECATED",
        },
      },
      type = "object",
    },
    SourceGetMetadataRequest = {
      description = "A request to compute the SourceMetadata of a Source.",
      id = "SourceGetMetadataRequest",
      properties = {
        source = {
          ["$ref"] = "Source",
          description = "Specification of the source whose metadata should be computed.",
        },
      },
      type = "object",
    },
    SourceGetMetadataResponse = {
      description = "The result of a SourceGetMetadataOperation.",
      id = "SourceGetMetadataResponse",
      properties = {
        metadata = {
          ["$ref"] = "SourceMetadata",
          description = "The computed metadata.",
        },
      },
      type = "object",
    },
    SourceMetadata = {
      description = "Metadata about a Source useful for automatically optimizing and tuning the pipeline, etc.",
      id = "SourceMetadata",
      properties = {
        estimatedSizeBytes = {
          description = "An estimate of the total size (in bytes) of the data that would be read from this source. This estimate is in terms of external storage size, before any decompression or other processing done by the reader.",
          format = "int64",
          type = "string",
        },
        infinite = {
          description = "Specifies that the size of this source is known to be infinite (this is a streaming source).",
          type = "boolean",
        },
        producesSortedKeys = {
          description = "Whether this source is known to produce key/value pairs with the (encoded) keys in lexicographically sorted order.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SourceOperationRequest = {
      description = "A work item that represents the different operations that can be performed on a user-defined Source specification.",
      id = "SourceOperationRequest",
      properties = {
        getMetadata = {
          ["$ref"] = "SourceGetMetadataRequest",
          description = "Information about a request to get metadata about a source.",
        },
        name = {
          description = "User-provided name of the Read instruction for this source.",
          type = "string",
        },
        originalName = {
          description = "System-defined name for the Read instruction for this source in the original workflow graph.",
          type = "string",
        },
        split = {
          ["$ref"] = "SourceSplitRequest",
          description = "Information about a request to split a source.",
        },
        stageName = {
          description = "System-defined name of the stage containing the source operation. Unique across the workflow.",
          type = "string",
        },
        systemName = {
          description = "System-defined name of the Read instruction for this source. Unique across the workflow.",
          type = "string",
        },
      },
      type = "object",
    },
    SourceOperationResponse = {
      description = "The result of a SourceOperationRequest, specified in ReportWorkItemStatusRequest.source_operation when the work item is completed.",
      id = "SourceOperationResponse",
      properties = {
        getMetadata = {
          ["$ref"] = "SourceGetMetadataResponse",
          description = "A response to a request to get metadata about a source.",
        },
        split = {
          ["$ref"] = "SourceSplitResponse",
          description = "A response to a request to split a source.",
        },
      },
      type = "object",
    },
    SourceSplitOptions = {
      description = "Hints for splitting a Source into bundles (parts for parallel processing) using SourceSplitRequest.",
      id = "SourceSplitOptions",
      properties = {
        desiredBundleSizeBytes = {
          description = "The source should be split into a set of bundles where the estimated size of each is approximately this many bytes.",
          format = "int64",
          type = "string",
        },
        desiredShardSizeBytes = {
          description = "DEPRECATED in favor of desired_bundle_size_bytes.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SourceSplitRequest = {
      description = "Represents the operation to split a high-level Source specification into bundles (parts for parallel processing). At a high level, splitting of a source into bundles happens as follows: SourceSplitRequest is applied to the source. If it returns SOURCE_SPLIT_OUTCOME_USE_CURRENT, no further splitting happens and the source is used \"as is\". Otherwise, splitting is applied recursively to each produced DerivedSource. As an optimization, for any Source, if its does_not_need_splitting is true, the framework assumes that splitting this source would return SOURCE_SPLIT_OUTCOME_USE_CURRENT, and doesn't initiate a SourceSplitRequest. This applies both to the initial source being split and to bundles produced from it.",
      id = "SourceSplitRequest",
      properties = {
        options = {
          ["$ref"] = "SourceSplitOptions",
          description = "Hints for tuning the splitting process.",
        },
        source = {
          ["$ref"] = "Source",
          description = "Specification of the source to be split.",
        },
      },
      type = "object",
    },
    SourceSplitResponse = {
      description = "The response to a SourceSplitRequest.",
      id = "SourceSplitResponse",
      properties = {
        bundles = {
          description = "If outcome is SPLITTING_HAPPENED, then this is a list of bundles into which the source was split. Otherwise this field is ignored. This list can be empty, which means the source represents an empty input.",
          items = {
            ["$ref"] = "DerivedSource",
          },
          type = "array",
        },
        outcome = {
          description = "Indicates whether splitting happened and produced a list of bundles. If this is USE_CURRENT_SOURCE_AS_IS, the current source should be processed \"as is\" without splitting. \"bundles\" is ignored in this case. If this is SPLITTING_HAPPENED, then \"bundles\" contains a list of bundles into which the source was split.",
          enum = {
            "SOURCE_SPLIT_OUTCOME_UNKNOWN",
            "SOURCE_SPLIT_OUTCOME_USE_CURRENT",
            "SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED",
          },
          enumDescriptions = {
            "The source split outcome is unknown, or unspecified.",
            "The current source should be processed \"as is\" without splitting.",
            "Splitting produced a list of bundles.",
          },
          type = "string",
        },
        shards = {
          description = "DEPRECATED in favor of bundles.",
          items = {
            ["$ref"] = "SourceSplitShard",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SourceSplitShard = {
      description = "DEPRECATED in favor of DerivedSource.",
      id = "SourceSplitShard",
      properties = {
        derivationMode = {
          description = "DEPRECATED",
          enum = {
            "SOURCE_DERIVATION_MODE_UNKNOWN",
            "SOURCE_DERIVATION_MODE_INDEPENDENT",
            "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT",
            "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT",
          },
          enumDescriptions = {
            "The source derivation is unknown, or unspecified.",
            "Produce a completely independent Source with no base.",
            "Produce a Source based on the Source being split.",
            "Produce a Source based on the base of the Source being split.",
          },
          type = "string",
        },
        source = {
          ["$ref"] = "Source",
          description = "DEPRECATED",
        },
      },
      type = "object",
    },
    SpannerIODetails = {
      description = "Metadata for a Spanner connector used by the job.",
      id = "SpannerIODetails",
      properties = {
        databaseId = {
          description = "DatabaseId accessed in the connection.",
          type = "string",
        },
        instanceId = {
          description = "InstanceId accessed in the connection.",
          type = "string",
        },
        projectId = {
          description = "ProjectId accessed in the connection.",
          type = "string",
        },
      },
      type = "object",
    },
    SplitInt64 = {
      description = "A representation of an int64, n, that is immune to precision loss when encoded in JSON.",
      id = "SplitInt64",
      properties = {
        highBits = {
          description = "The high order bits, including the sign: n >> 32.",
          format = "int32",
          type = "integer",
        },
        lowBits = {
          description = "The low order bits: n & 0xffffffff.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    StageExecutionDetails = {
      description = "Information about the workers and work items within a stage.",
      id = "StageExecutionDetails",
      properties = {
        nextPageToken = {
          description = "If present, this response does not contain all requested tasks. To obtain the next page of results, repeat the request with page_token set to this value.",
          type = "string",
        },
        workers = {
          description = "Workers that have done work on the stage.",
          items = {
            ["$ref"] = "WorkerDetails",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StageSource = {
      description = "Description of an input or output of an execution stage.",
      id = "StageSource",
      properties = {
        name = {
          description = "Dataflow service generated name for this source.",
          type = "string",
        },
        originalTransformOrCollection = {
          description = "User name for the original user transform or collection with which this source is most closely associated.",
          type = "string",
        },
        sizeBytes = {
          description = "Size of the source, if measurable.",
          format = "int64",
          type = "string",
        },
        userName = {
          description = "Human-readable name for this source; may be user or system generated.",
          type = "string",
        },
      },
      type = "object",
    },
    StageSummary = {
      description = "Information about a particular execution stage of a job.",
      id = "StageSummary",
      properties = {
        endTime = {
          description = "End time of this stage. If the work item is completed, this is the actual end time of the stage. Otherwise, it is the predicted end time.",
          format = "google-datetime",
          type = "string",
        },
        metrics = {
          description = "Metrics for this stage.",
          items = {
            ["$ref"] = "MetricUpdate",
          },
          type = "array",
        },
        progress = {
          ["$ref"] = "ProgressTimeseries",
          description = "Progress for this stage. Only applicable to Batch jobs.",
        },
        stageId = {
          description = "ID of this stage",
          type = "string",
        },
        startTime = {
          description = "Start time of this stage.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "State of this stage.",
          enum = {
            "EXECUTION_STATE_UNKNOWN",
            "EXECUTION_STATE_NOT_STARTED",
            "EXECUTION_STATE_RUNNING",
            "EXECUTION_STATE_SUCCEEDED",
            "EXECUTION_STATE_FAILED",
            "EXECUTION_STATE_CANCELLED",
          },
          enumDescriptions = {
            "The component state is unknown or unspecified.",
            "The component is not yet running.",
            "The component is currently running.",
            "The component succeeded.",
            "The component failed.",
            "Execution of the component was cancelled.",
          },
          type = "string",
        },
        stragglerSummary = {
          ["$ref"] = "StragglerSummary",
          description = "Straggler summary for this stage.",
        },
      },
      type = "object",
    },
    StateFamilyConfig = {
      description = "State family configuration.",
      id = "StateFamilyConfig",
      properties = {
        isRead = {
          description = "If true, this family corresponds to a read operation.",
          type = "boolean",
        },
        stateFamily = {
          description = "The state family value.",
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
      description = "Defines a particular step within a Cloud Dataflow job. A job consists of multiple steps, each of which performs some specific operation as part of the overall job. Data is typically passed from one step to another as part of the job. **Note:** The properties of this object are not stable and might change. Here's an example of a sequence of steps which together implement a Map-Reduce job: * Read a collection of data from some source, parsing the collection's elements. * Validate the elements. * Apply a user-defined function to map each element to some value and extract an element-specific key value. * Group elements with the same key into a single element with that key, transforming a multiply-keyed collection into a uniquely-keyed collection. * Write the elements out to some data sink. Note that the Cloud Dataflow service may be used to run many different types of jobs, not just Map-Reduce.",
      id = "Step",
      properties = {
        kind = {
          description = "The kind of step in the Cloud Dataflow job.",
          type = "string",
        },
        name = {
          description = "The name that identifies the step. This must be unique for each step with respect to all other steps in the Cloud Dataflow job.",
          type = "string",
        },
        properties = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Named properties associated with the step. Each kind of predefined step has its own required set of properties. Must be provided on Create. Only retrieved with JOB_VIEW_ALL.",
          type = "object",
        },
      },
      type = "object",
    },
    Straggler = {
      description = "Information for a straggler.",
      id = "Straggler",
      properties = {
        batchStraggler = {
          ["$ref"] = "StragglerInfo",
          description = "Batch straggler identification and debugging information.",
        },
        streamingStraggler = {
          ["$ref"] = "StreamingStragglerInfo",
          description = "Streaming straggler identification and debugging information.",
        },
      },
      type = "object",
    },
    StragglerDebuggingInfo = {
      description = "Information useful for debugging a straggler. Each type will provide specialized debugging information relevant for a particular cause. The StragglerDebuggingInfo will be 1:1 mapping to the StragglerCause enum.",
      id = "StragglerDebuggingInfo",
      properties = {
        hotKey = {
          ["$ref"] = "HotKeyDebuggingInfo",
          description = "Hot key debugging details.",
        },
      },
      type = "object",
    },
    StragglerInfo = {
      description = "Information useful for straggler identification and debugging.",
      id = "StragglerInfo",
      properties = {
        causes = {
          additionalProperties = {
            ["$ref"] = "StragglerDebuggingInfo",
          },
          description = "The straggler causes, keyed by the string representation of the StragglerCause enum and contains specialized debugging information for each straggler cause.",
          type = "object",
        },
        startTime = {
          description = "The time when the work item attempt became a straggler.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    StragglerSummary = {
      description = "Summarized straggler identification details.",
      id = "StragglerSummary",
      properties = {
        recentStragglers = {
          description = "The most recent stragglers.",
          items = {
            ["$ref"] = "Straggler",
          },
          type = "array",
        },
        stragglerCauseCount = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "Aggregated counts of straggler causes, keyed by the string representation of the StragglerCause enum.",
          type = "object",
        },
        totalStragglerCount = {
          description = "The total count of stragglers.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    StreamLocation = {
      description = "Describes a stream of data, either as input to be processed or as output of a streaming Dataflow job.",
      id = "StreamLocation",
      properties = {
        customSourceLocation = {
          ["$ref"] = "CustomSourceLocation",
          description = "The stream is a custom source.",
        },
        pubsubLocation = {
          ["$ref"] = "PubsubLocation",
          description = "The stream is a pubsub stream.",
        },
        sideInputLocation = {
          ["$ref"] = "StreamingSideInputLocation",
          description = "The stream is a streaming side input.",
        },
        streamingStageLocation = {
          ["$ref"] = "StreamingStageLocation",
          description = "The stream is part of another computation within the current streaming Dataflow job.",
        },
      },
      type = "object",
    },
    StreamingApplianceSnapshotConfig = {
      description = "Streaming appliance snapshot configuration.",
      id = "StreamingApplianceSnapshotConfig",
      properties = {
        importStateEndpoint = {
          description = "Indicates which endpoint is used to import appliance state.",
          type = "string",
        },
        snapshotId = {
          description = "If set, indicates the snapshot id for the snapshot being performed.",
          type = "string",
        },
      },
      type = "object",
    },
    StreamingComputationConfig = {
      description = "Configuration information for a single streaming computation.",
      id = "StreamingComputationConfig",
      properties = {
        computationId = {
          description = "Unique identifier for this computation.",
          type = "string",
        },
        instructions = {
          description = "Instructions that comprise the computation.",
          items = {
            ["$ref"] = "ParallelInstruction",
          },
          type = "array",
        },
        stageName = {
          description = "Stage name of this computation.",
          type = "string",
        },
        systemName = {
          description = "System defined name for this computation.",
          type = "string",
        },
        transformUserNameToStateFamily = {
          additionalProperties = {
            type = "string",
          },
          description = "Map from user name of stateful transforms in this stage to their state family.",
          type = "object",
        },
      },
      type = "object",
    },
    StreamingComputationRanges = {
      description = "Describes full or partial data disk assignment information of the computation ranges.",
      id = "StreamingComputationRanges",
      properties = {
        computationId = {
          description = "The ID of the computation.",
          type = "string",
        },
        rangeAssignments = {
          description = "Data disk assignments for ranges from this computation.",
          items = {
            ["$ref"] = "KeyRangeDataDiskAssignment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StreamingComputationTask = {
      description = "A task which describes what action should be performed for the specified streaming computation ranges.",
      id = "StreamingComputationTask",
      properties = {
        computationRanges = {
          description = "Contains ranges of a streaming computation this task should apply to.",
          items = {
            ["$ref"] = "StreamingComputationRanges",
          },
          type = "array",
        },
        dataDisks = {
          description = "Describes the set of data disks this task should apply to.",
          items = {
            ["$ref"] = "MountedDataDisk",
          },
          type = "array",
        },
        taskType = {
          description = "A type of streaming computation task.",
          enum = {
            "STREAMING_COMPUTATION_TASK_UNKNOWN",
            "STREAMING_COMPUTATION_TASK_STOP",
            "STREAMING_COMPUTATION_TASK_START",
          },
          enumDescriptions = {
            "The streaming computation task is unknown, or unspecified.",
            "Stop processing specified streaming computation range(s).",
            "Start processing specified streaming computation range(s).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    StreamingConfigTask = {
      description = "A task that carries configuration information for streaming computations.",
      id = "StreamingConfigTask",
      properties = {
        commitStreamChunkSizeBytes = {
          description = "Chunk size for commit streams from the harness to windmill.",
          format = "int64",
          type = "string",
        },
        getDataStreamChunkSizeBytes = {
          description = "Chunk size for get data streams from the harness to windmill.",
          format = "int64",
          type = "string",
        },
        maxWorkItemCommitBytes = {
          description = "Maximum size for work item commit supported windmill storage layer.",
          format = "int64",
          type = "string",
        },
        streamingComputationConfigs = {
          description = "Set of computation configuration information.",
          items = {
            ["$ref"] = "StreamingComputationConfig",
          },
          type = "array",
        },
        userStepToStateFamilyNameMap = {
          additionalProperties = {
            type = "string",
          },
          description = "Map from user step names to state families.",
          type = "object",
        },
        windmillServiceEndpoint = {
          description = "If present, the worker must use this endpoint to communicate with Windmill Service dispatchers, otherwise the worker must continue to use whatever endpoint it had been using.",
          type = "string",
        },
        windmillServicePort = {
          description = "If present, the worker must use this port to communicate with Windmill Service dispatchers. Only applicable when windmill_service_endpoint is specified.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    StreamingSetupTask = {
      description = "A task which initializes part of a streaming Dataflow job.",
      id = "StreamingSetupTask",
      properties = {
        drain = {
          description = "The user has requested drain.",
          type = "boolean",
        },
        receiveWorkPort = {
          description = "The TCP port on which the worker should listen for messages from other streaming computation workers.",
          format = "int32",
          type = "integer",
        },
        snapshotConfig = {
          ["$ref"] = "StreamingApplianceSnapshotConfig",
          description = "Configures streaming appliance snapshot.",
        },
        streamingComputationTopology = {
          ["$ref"] = "TopologyConfig",
          description = "The global topology of the streaming Dataflow job.",
        },
        workerHarnessPort = {
          description = "The TCP port used by the worker to communicate with the Dataflow worker harness.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    StreamingSideInputLocation = {
      description = "Identifies the location of a streaming side input.",
      id = "StreamingSideInputLocation",
      properties = {
        stateFamily = {
          description = "Identifies the state family where this side input is stored.",
          type = "string",
        },
        tag = {
          description = "Identifies the particular side input within the streaming Dataflow job.",
          type = "string",
        },
      },
      type = "object",
    },
    StreamingStageLocation = {
      description = "Identifies the location of a streaming computation stage, for stage-to-stage communication.",
      id = "StreamingStageLocation",
      properties = {
        streamId = {
          description = "Identifies the particular stream within the streaming Dataflow job.",
          type = "string",
        },
      },
      type = "object",
    },
    StreamingStragglerInfo = {
      description = "Information useful for streaming straggler identification and debugging.",
      id = "StreamingStragglerInfo",
      properties = {
        dataWatermarkLag = {
          description = "The event-time watermark lag at the time of the straggler detection.",
          format = "google-duration",
          type = "string",
        },
        endTime = {
          description = "End time of this straggler.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Start time of this straggler.",
          format = "google-datetime",
          type = "string",
        },
        systemWatermarkLag = {
          description = "The system watermark lag at the time of the straggler detection.",
          format = "google-duration",
          type = "string",
        },
        workerName = {
          description = "Name of the worker where the straggler was detected.",
          type = "string",
        },
      },
      type = "object",
    },
    StringList = {
      description = "A metric value representing a list of strings.",
      id = "StringList",
      properties = {
        elements = {
          description = "Elements of the list.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StructuredMessage = {
      description = "A rich message format, including a human readable string, a key for identifying the message, and structured data associated with the message for programmatic consumption.",
      id = "StructuredMessage",
      properties = {
        messageKey = {
          description = "Identifier for this message type. Used by external systems to internationalize or personalize message.",
          type = "string",
        },
        messageText = {
          description = "Human-readable version of message.",
          type = "string",
        },
        parameters = {
          description = "The structured data associated with this message.",
          items = {
            ["$ref"] = "Parameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TaskRunnerSettings = {
      description = "Taskrunner configuration settings.",
      id = "TaskRunnerSettings",
      properties = {
        alsologtostderr = {
          description = "Whether to also send taskrunner log info to stderr.",
          type = "boolean",
        },
        baseTaskDir = {
          description = "The location on the worker for task-specific subdirectories.",
          type = "string",
        },
        baseUrl = {
          description = "The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, \"Relative Uniform Resource Locators\". If not specified, the default value is \"http://www.googleapis.com/\"",
          type = "string",
        },
        commandlinesFileName = {
          description = "The file to store preprocessing commands in.",
          type = "string",
        },
        continueOnException = {
          description = "Whether to continue taskrunner if an exception is hit.",
          type = "boolean",
        },
        dataflowApiVersion = {
          description = "The API version of endpoint, e.g. \"v1b3\"",
          type = "string",
        },
        harnessCommand = {
          description = "The command to launch the worker harness.",
          type = "string",
        },
        languageHint = {
          description = "The suggested backend language.",
          type = "string",
        },
        logDir = {
          description = "The directory on the VM to store logs.",
          type = "string",
        },
        logToSerialconsole = {
          description = "Whether to send taskrunner log info to Google Compute Engine VM serial console.",
          type = "boolean",
        },
        logUploadLocation = {
          description = "Indicates where to put logs. If this is not specified, the logs will not be uploaded. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}",
          type = "string",
        },
        oauthScopes = {
          description = "The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API.",
          items = {
            type = "string",
          },
          type = "array",
        },
        parallelWorkerSettings = {
          ["$ref"] = "WorkerSettings",
          description = "The settings to pass to the parallel worker harness.",
        },
        streamingWorkerMainClass = {
          description = "The streaming worker main class name.",
          type = "string",
        },
        taskGroup = {
          description = "The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. \"wheel\".",
          type = "string",
        },
        taskUser = {
          description = "The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. \"root\".",
          type = "string",
        },
        tempStoragePrefix = {
          description = "The prefix of the resources the taskrunner should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}",
          type = "string",
        },
        vmId = {
          description = "The ID string of the VM.",
          type = "string",
        },
        workflowFileName = {
          description = "The file to store the workflow in.",
          type = "string",
        },
      },
      type = "object",
    },
    TemplateMetadata = {
      description = "Metadata describing a template.",
      id = "TemplateMetadata",
      properties = {
        description = {
          description = "Optional. A description of the template.",
          type = "string",
        },
        name = {
          description = "Required. The name of the template.",
          type = "string",
        },
        parameters = {
          description = "The parameters for the template.",
          items = {
            ["$ref"] = "ParameterMetadata",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TopologyConfig = {
      description = "Global topology of the streaming Dataflow job, including all computations and their sharded locations.",
      id = "TopologyConfig",
      properties = {
        computations = {
          description = "The computations associated with a streaming Dataflow job.",
          items = {
            ["$ref"] = "ComputationTopology",
          },
          type = "array",
        },
        dataDiskAssignments = {
          description = "The disks assigned to a streaming Dataflow job.",
          items = {
            ["$ref"] = "DataDiskAssignment",
          },
          type = "array",
        },
        forwardingKeyBits = {
          description = "The size (in bits) of keys that will be assigned to source messages.",
          format = "int32",
          type = "integer",
        },
        persistentStateVersion = {
          description = "Version number for persistent state.",
          format = "int32",
          type = "integer",
        },
        userStageToComputationNameMap = {
          additionalProperties = {
            type = "string",
          },
          description = "Maps user stage names to stable computation names.",
          type = "object",
        },
      },
      type = "object",
    },
    TransformSummary = {
      description = "Description of the type, names/ids, and input/outputs for a transform.",
      id = "TransformSummary",
      properties = {
        displayData = {
          description = "Transform-specific display data.",
          items = {
            ["$ref"] = "DisplayData",
          },
          type = "array",
        },
        id = {
          description = "SDK generated id of this transform instance.",
          type = "string",
        },
        inputCollectionName = {
          description = "User names for all collection inputs to this transform.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kind = {
          description = "Type of transform.",
          enum = {
            "UNKNOWN_KIND",
            "PAR_DO_KIND",
            "GROUP_BY_KEY_KIND",
            "FLATTEN_KIND",
            "READ_KIND",
            "WRITE_KIND",
            "CONSTANT_KIND",
            "SINGLETON_KIND",
            "SHUFFLE_KIND",
          },
          enumDescriptions = {
            "Unrecognized transform type.",
            "ParDo transform.",
            "Group By Key transform.",
            "Flatten transform.",
            "Read transform.",
            "Write transform.",
            "Constructs from a constant value, such as with Create.of.",
            "Creates a Singleton view of a collection.",
            "Opening or closing a shuffle session, often as part of a GroupByKey.",
          },
          type = "string",
        },
        name = {
          description = "User provided name for this transform instance.",
          type = "string",
        },
        outputCollectionName = {
          description = "User names for all collection outputs to this transform.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ValidateResponse = {
      description = "Response to the validation request.",
      id = "ValidateResponse",
      properties = {
        errorMessage = {
          description = "Will be empty if validation succeeds.",
          type = "string",
        },
        queryInfo = {
          ["$ref"] = "QueryInfo",
          description = "Information about the validated query. Not defined if validation fails.",
        },
      },
      type = "object",
    },
    WorkItem = {
      description = "WorkItem represents basic information about a WorkItem to be executed in the cloud.",
      id = "WorkItem",
      properties = {
        configuration = {
          description = "Work item-specific configuration as an opaque blob.",
          type = "string",
        },
        id = {
          description = "Identifies this WorkItem.",
          format = "int64",
          type = "string",
        },
        initialReportIndex = {
          description = "The initial index to use when reporting the status of the WorkItem.",
          format = "int64",
          type = "string",
        },
        jobId = {
          description = "Identifies the workflow job this WorkItem belongs to.",
          type = "string",
        },
        leaseExpireTime = {
          description = "Time when the lease on this Work will expire.",
          format = "google-datetime",
          type = "string",
        },
        mapTask = {
          ["$ref"] = "MapTask",
          description = "Additional information for MapTask WorkItems.",
        },
        packages = {
          description = "Any required packages that need to be fetched in order to execute this WorkItem.",
          items = {
            ["$ref"] = "Package",
          },
          type = "array",
        },
        projectId = {
          description = "Identifies the cloud project this WorkItem belongs to.",
          type = "string",
        },
        reportStatusInterval = {
          description = "Recommended reporting interval.",
          format = "google-duration",
          type = "string",
        },
        seqMapTask = {
          ["$ref"] = "SeqMapTask",
          description = "Additional information for SeqMapTask WorkItems.",
        },
        shellTask = {
          ["$ref"] = "ShellTask",
          description = "Additional information for ShellTask WorkItems.",
        },
        sourceOperationTask = {
          ["$ref"] = "SourceOperationRequest",
          description = "Additional information for source operation WorkItems.",
        },
        streamingComputationTask = {
          ["$ref"] = "StreamingComputationTask",
          description = "Additional information for StreamingComputationTask WorkItems.",
        },
        streamingConfigTask = {
          ["$ref"] = "StreamingConfigTask",
          description = "Additional information for StreamingConfigTask WorkItems.",
        },
        streamingSetupTask = {
          ["$ref"] = "StreamingSetupTask",
          description = "Additional information for StreamingSetupTask WorkItems.",
        },
      },
      type = "object",
    },
    WorkItemDetails = {
      description = "Information about an individual work item execution.",
      id = "WorkItemDetails",
      properties = {
        attemptId = {
          description = "Attempt ID of this work item",
          type = "string",
        },
        endTime = {
          description = "End time of this work item attempt. If the work item is completed, this is the actual end time of the work item. Otherwise, it is the predicted end time.",
          format = "google-datetime",
          type = "string",
        },
        metrics = {
          description = "Metrics for this work item.",
          items = {
            ["$ref"] = "MetricUpdate",
          },
          type = "array",
        },
        progress = {
          ["$ref"] = "ProgressTimeseries",
          description = "Progress of this work item.",
        },
        startTime = {
          description = "Start time of this work item attempt.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "State of this work item.",
          enum = {
            "EXECUTION_STATE_UNKNOWN",
            "EXECUTION_STATE_NOT_STARTED",
            "EXECUTION_STATE_RUNNING",
            "EXECUTION_STATE_SUCCEEDED",
            "EXECUTION_STATE_FAILED",
            "EXECUTION_STATE_CANCELLED",
          },
          enumDescriptions = {
            "The component state is unknown or unspecified.",
            "The component is not yet running.",
            "The component is currently running.",
            "The component succeeded.",
            "The component failed.",
            "Execution of the component was cancelled.",
          },
          type = "string",
        },
        stragglerInfo = {
          ["$ref"] = "StragglerInfo",
          description = "Information about straggler detections for this work item.",
        },
        taskId = {
          description = "Name of this work item.",
          type = "string",
        },
      },
      type = "object",
    },
    WorkItemServiceState = {
      description = "The Dataflow service's idea of the current state of a WorkItem being processed by a worker.",
      id = "WorkItemServiceState",
      properties = {
        completeWorkStatus = {
          ["$ref"] = "Status",
          description = "If set, a request to complete the work item with the given status. This will not be set to OK, unless supported by the specific kind of WorkItem. It can be used for the backend to indicate a WorkItem must terminate, e.g., for aborting work.",
        },
        harnessData = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Other data returned by the service, specific to the particular worker harness.",
          type = "object",
        },
        hotKeyDetection = {
          ["$ref"] = "HotKeyDetection",
          description = "A hot key is a symptom of poor data distribution in which there are enough elements mapped to a single key to impact pipeline performance. When present, this field includes metadata associated with any hot key.",
        },
        leaseExpireTime = {
          description = "Time at which the current lease will expire.",
          format = "google-datetime",
          type = "string",
        },
        metricShortId = {
          description = "The short ids that workers should use in subsequent metric updates. Workers should strive to use short ids whenever possible, but it is ok to request the short_id again if a worker lost track of it (e.g. if the worker is recovering from a crash). NOTE: it is possible that the response may have short ids for a subset of the metrics.",
          items = {
            ["$ref"] = "MetricShortId",
          },
          type = "array",
        },
        nextReportIndex = {
          description = "The index value to use for the next report sent by the worker. Note: If the report call fails for whatever reason, the worker should reuse this index for subsequent report attempts.",
          format = "int64",
          type = "string",
        },
        reportStatusInterval = {
          description = "New recommended reporting interval.",
          format = "google-duration",
          type = "string",
        },
        splitRequest = {
          ["$ref"] = "ApproximateSplitRequest",
          description = "The progress point in the WorkItem where the Dataflow service suggests that the worker truncate the task.",
        },
        suggestedStopPoint = {
          ["$ref"] = "ApproximateProgress",
          description = "DEPRECATED in favor of split_request.",
        },
        suggestedStopPosition = {
          ["$ref"] = "Position",
          description = "Obsolete, always empty.",
        },
      },
      type = "object",
    },
    WorkItemStatus = {
      description = "Conveys a worker's progress through the work described by a WorkItem.",
      id = "WorkItemStatus",
      properties = {
        completed = {
          description = "True if the WorkItem was completed (successfully or unsuccessfully).",
          type = "boolean",
        },
        counterUpdates = {
          description = "Worker output counters for this WorkItem.",
          items = {
            ["$ref"] = "CounterUpdate",
          },
          type = "array",
        },
        dynamicSourceSplit = {
          ["$ref"] = "DynamicSourceSplit",
          description = "See documentation of stop_position.",
        },
        errors = {
          description = "Specifies errors which occurred during processing. If errors are provided, and completed = true, then the WorkItem is considered to have failed.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
        metricUpdates = {
          description = "DEPRECATED in favor of counter_updates.",
          items = {
            ["$ref"] = "MetricUpdate",
          },
          type = "array",
        },
        progress = {
          ["$ref"] = "ApproximateProgress",
          description = "DEPRECATED in favor of reported_progress.",
        },
        reportIndex = {
          description = "The report index. When a WorkItem is leased, the lease will contain an initial report index. When a WorkItem's status is reported to the system, the report should be sent with that report index, and the response will contain the index the worker should use for the next report. Reports received with unexpected index values will be rejected by the service. In order to preserve idempotency, the worker should not alter the contents of a report, even if the worker must submit the same report multiple times before getting back a response. The worker should not submit a subsequent report until the response for the previous report had been received from the service.",
          format = "int64",
          type = "string",
        },
        reportedProgress = {
          ["$ref"] = "ApproximateReportedProgress",
          description = "The worker's progress through this WorkItem.",
        },
        requestedLeaseDuration = {
          description = "Amount of time the worker requests for its lease.",
          format = "google-duration",
          type = "string",
        },
        sourceFork = {
          ["$ref"] = "SourceFork",
          description = "DEPRECATED in favor of dynamic_source_split.",
        },
        sourceOperationResponse = {
          ["$ref"] = "SourceOperationResponse",
          description = "If the work item represented a SourceOperationRequest, and the work is completed, contains the result of the operation.",
        },
        stopPosition = {
          ["$ref"] = "Position",
          description = "A worker may split an active map task in two parts, \"primary\" and \"residual\", continuing to process the primary part and returning the residual part into the pool of available work. This event is called a \"dynamic split\" and is critical to the dynamic work rebalancing feature. The two obtained sub-tasks are called \"parts\" of the split. The parts, if concatenated, must represent the same input as would be read by the current task if the split did not happen. The exact way in which the original task is decomposed into the two parts is specified either as a position demarcating them (stop_position), or explicitly as two DerivedSources, if this task consumes a user-defined source type (dynamic_source_split). The \"current\" task is adjusted as a result of the split: after a task with range [A, B) sends a stop_position update at C, its range is considered to be [A, C), e.g.: * Progress should be interpreted relative to the new range, e.g. \"75% completed\" means \"75% of [A, C) completed\" * The worker should interpret proposed_stop_position relative to the new range, e.g. \"split at 68%\" should be interpreted as \"split at 68% of [A, C)\". * If the worker chooses to split again using stop_position, only stop_positions in [A, C) will be accepted. * Etc. dynamic_source_split has similar semantics: e.g., if a task with source S splits using dynamic_source_split into {P, R} (where P and R must be together equivalent to S), then subsequent progress and proposed_stop_position should be interpreted relative to P, and in a potential subsequent dynamic_source_split into {P', R'}, P' and R' must be together equivalent to P, etc.",
        },
        totalThrottlerWaitTimeSeconds = {
          description = "Total time the worker spent being throttled by external systems.",
          format = "double",
          type = "number",
        },
        workItemId = {
          description = "Identifies the WorkItem.",
          type = "string",
        },
      },
      type = "object",
    },
    WorkerDetails = {
      description = "Information about a worker",
      id = "WorkerDetails",
      properties = {
        workItems = {
          description = "Work items processed by this worker, sorted by time.",
          items = {
            ["$ref"] = "WorkItemDetails",
          },
          type = "array",
        },
        workerName = {
          description = "Name of this worker",
          type = "string",
        },
      },
      type = "object",
    },
    WorkerHealthReport = {
      description = "WorkerHealthReport contains information about the health of a worker. The VM should be identified by the labels attached to the WorkerMessage that this health ping belongs to.",
      id = "WorkerHealthReport",
      properties = {
        msg = {
          description = "Message describing any unusual health reports.",
          type = "string",
        },
        pods = {
          description = "The pods running on the worker. See: http://kubernetes.io/v1.1/docs/api-reference/v1/definitions.html#_v1_pod This field is used by the worker to send the status of the indvidual containers running on each worker.",
          items = {
            additionalProperties = {
              description = "Properties of the object.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        reportInterval = {
          description = "The interval at which the worker is sending health reports. The default value of 0 should be interpreted as the field is not being explicitly set by the worker.",
          format = "google-duration",
          type = "string",
        },
        vmBrokenCode = {
          description = "Code to describe a specific reason, if known, that a VM has reported broken state.",
          type = "string",
        },
        vmIsBroken = {
          description = "Whether the VM is in a permanently broken state. Broken VMs should be abandoned or deleted ASAP to avoid assigning or completing any work.",
          type = "boolean",
        },
        vmIsHealthy = {
          description = "Whether the VM is currently healthy.",
          type = "boolean",
        },
        vmStartupTime = {
          description = "The time the VM was booted.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    WorkerHealthReportResponse = {
      description = "WorkerHealthReportResponse contains information returned to the worker in response to a health ping.",
      id = "WorkerHealthReportResponse",
      properties = {
        reportInterval = {
          description = "A positive value indicates the worker should change its reporting interval to the specified value. The default value of zero means no change in report rate is requested by the server.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    WorkerLifecycleEvent = {
      description = "A report of an event in a worker's lifecycle. The proto contains one event, because the worker is expected to asynchronously send each message immediately after the event. Due to this asynchrony, messages may arrive out of order (or missing), and it is up to the consumer to interpret. The timestamp of the event is in the enclosing WorkerMessage proto.",
      id = "WorkerLifecycleEvent",
      properties = {
        containerStartTime = {
          description = "The start time of this container. All events will report this so that events can be grouped together across container/VM restarts.",
          format = "google-datetime",
          type = "string",
        },
        event = {
          description = "The event being reported.",
          enum = {
            "UNKNOWN_EVENT",
            "OS_START",
            "CONTAINER_START",
            "NETWORK_UP",
            "STAGING_FILES_DOWNLOAD_START",
            "STAGING_FILES_DOWNLOAD_FINISH",
            "SDK_INSTALL_START",
            "SDK_INSTALL_FINISH",
          },
          enumDescriptions = {
            "Invalid event.",
            "The time the VM started.",
            "Our container code starts running. Multiple containers could be distinguished with WorkerMessage.labels if desired.",
            "The worker has a functional external network connection.",
            "Started downloading staging files.",
            "Finished downloading all staging files.",
            "For applicable SDKs, started installation of SDK and worker packages.",
            "Finished installing SDK.",
          },
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Other stats that can accompany an event. E.g. { \"downloaded_bytes\" : \"123456\" }",
          type = "object",
        },
      },
      type = "object",
    },
    WorkerMessage = {
      description = "WorkerMessage provides information to the backend about a worker.",
      id = "WorkerMessage",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels are used to group WorkerMessages. For example, a worker_message about a particular container might have the labels: { \"JOB_ID\": \"2015-04-22\", \"WORKER_ID\": \"wordcount-vm-2015…\" \"CONTAINER_TYPE\": \"worker\", \"CONTAINER_ID\": \"ac1234def\"} Label tags typically correspond to Label enum values. However, for ease of development other strings can be used as tags. LABEL_UNSPECIFIED should not be used here.",
          type = "object",
        },
        time = {
          description = "The timestamp of the worker_message.",
          format = "google-datetime",
          type = "string",
        },
        workerHealthReport = {
          ["$ref"] = "WorkerHealthReport",
          description = "The health of a worker.",
        },
        workerLifecycleEvent = {
          ["$ref"] = "WorkerLifecycleEvent",
          description = "Record of worker lifecycle events.",
        },
        workerMessageCode = {
          ["$ref"] = "WorkerMessageCode",
          description = "A worker message code.",
        },
        workerMetrics = {
          ["$ref"] = "ResourceUtilizationReport",
          description = "Resource metrics reported by workers.",
        },
        workerShutdownNotice = {
          ["$ref"] = "WorkerShutdownNotice",
          description = "Shutdown notice by workers.",
        },
        workerThreadScalingReport = {
          ["$ref"] = "WorkerThreadScalingReport",
          description = "Thread scaling information reported by workers.",
        },
      },
      type = "object",
    },
    WorkerMessageCode = {
      description = "A message code is used to report status and error messages to the service. The message codes are intended to be machine readable. The service will take care of translating these into user understandable messages if necessary. Example use cases: 1. Worker processes reporting successful startup. 2. Worker processes reporting specific errors (e.g. package staging failure).",
      id = "WorkerMessageCode",
      properties = {
        code = {
          description = "The code is a string intended for consumption by a machine that identifies the type of message being sent. Examples: 1. \"HARNESS_STARTED\" might be used to indicate the worker harness has started. 2. \"GCS_DOWNLOAD_ERROR\" might be used to indicate an error downloading a Cloud Storage file as part of the boot process of one of the worker containers. This is a string and not an enum to make it easy to add new codes without waiting for an API change.",
          type = "string",
        },
        parameters = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Parameters contains specific information about the code. This is a struct to allow parameters of different types. Examples: 1. For a \"HARNESS_STARTED\" message parameters might provide the name of the worker and additional data like timing information. 2. For a \"GCS_DOWNLOAD_ERROR\" parameters might contain fields listing the Cloud Storage objects being downloaded and fields containing errors. In general complex data structures should be avoided. If a worker needs to send a specific and complicated data structure then please consider defining a new proto and adding it to the data oneof in WorkerMessageResponse. Conventions: Parameters should only be used for information that isn't typically passed as a label. hostname and other worker identifiers should almost always be passed as labels since they will be included on most messages.",
          type = "object",
        },
      },
      type = "object",
    },
    WorkerMessageResponse = {
      description = "A worker_message response allows the server to pass information to the sender.",
      id = "WorkerMessageResponse",
      properties = {
        workerHealthReportResponse = {
          ["$ref"] = "WorkerHealthReportResponse",
          description = "The service's response to a worker's health report.",
        },
        workerMetricsResponse = {
          ["$ref"] = "ResourceUtilizationReportResponse",
          description = "Service's response to reporting worker metrics (currently empty).",
        },
        workerShutdownNoticeResponse = {
          ["$ref"] = "WorkerShutdownNoticeResponse",
          description = "Service's response to shutdown notice (currently empty).",
        },
        workerThreadScalingReportResponse = {
          ["$ref"] = "WorkerThreadScalingReportResponse",
          description = "Service's thread scaling recommendation for workers.",
        },
      },
      type = "object",
    },
    WorkerPool = {
      description = "Describes one particular pool of Cloud Dataflow workers to be instantiated by the Cloud Dataflow service in order to perform the computations required by a job. Note that a workflow job may use multiple pools, in order to match the various computational requirements of the various stages of the job.",
      id = "WorkerPool",
      properties = {
        autoscalingSettings = {
          ["$ref"] = "AutoscalingSettings",
          description = "Settings for autoscaling of this WorkerPool.",
        },
        dataDisks = {
          description = "Data disks that are used by a VM in this workflow.",
          items = {
            ["$ref"] = "Disk",
          },
          type = "array",
        },
        defaultPackageSet = {
          description = "The default package set to install. This allows the service to select a default set of packages which are useful to worker harnesses written in a particular language.",
          enum = {
            "DEFAULT_PACKAGE_SET_UNKNOWN",
            "DEFAULT_PACKAGE_SET_NONE",
            "DEFAULT_PACKAGE_SET_JAVA",
            "DEFAULT_PACKAGE_SET_PYTHON",
          },
          enumDescriptions = {
            "The default set of packages to stage is unknown, or unspecified.",
            "Indicates that no packages should be staged at the worker unless explicitly specified by the job.",
            "Stage packages typically useful to workers written in Java.",
            "Stage packages typically useful to workers written in Python.",
          },
          type = "string",
        },
        diskSizeGb = {
          description = "Size of root disk for VMs, in GB. If zero or unspecified, the service will attempt to choose a reasonable default.",
          format = "int32",
          type = "integer",
        },
        diskSourceImage = {
          description = "Fully qualified source image for disks.",
          type = "string",
        },
        diskType = {
          description = "Type of root disk for VMs. If empty or unspecified, the service will attempt to choose a reasonable default.",
          type = "string",
        },
        ipConfiguration = {
          description = "Configuration for VM IPs.",
          enum = {
            "WORKER_IP_UNSPECIFIED",
            "WORKER_IP_PUBLIC",
            "WORKER_IP_PRIVATE",
          },
          enumDescriptions = {
            "The configuration is unknown, or unspecified.",
            "Workers should have public IP addresses.",
            "Workers should have private IP addresses.",
          },
          type = "string",
        },
        kind = {
          description = "The kind of the worker pool; currently only `harness` and `shuffle` are supported.",
          type = "string",
        },
        machineType = {
          description = "Machine type (e.g. \"n1-standard-1\"). If empty or unspecified, the service will attempt to choose a reasonable default.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Metadata to set on the Google Compute Engine VMs.",
          type = "object",
        },
        network = {
          description = "Network to which VMs will be assigned. If empty or unspecified, the service will use the network \"default\".",
          type = "string",
        },
        numThreadsPerWorker = {
          description = "The number of threads per worker harness. If empty or unspecified, the service will choose a number of threads (according to the number of cores on the selected machine type for batch, or 1 by convention for streaming).",
          format = "int32",
          type = "integer",
        },
        numWorkers = {
          description = "Number of Google Compute Engine workers in this pool needed to execute the job. If zero or unspecified, the service will attempt to choose a reasonable default.",
          format = "int32",
          type = "integer",
        },
        onHostMaintenance = {
          description = "The action to take on host maintenance, as defined by the Google Compute Engine API.",
          type = "string",
        },
        packages = {
          description = "Packages to be installed on workers.",
          items = {
            ["$ref"] = "Package",
          },
          type = "array",
        },
        poolArgs = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Extra arguments for this worker pool.",
          type = "object",
        },
        sdkHarnessContainerImages = {
          description = "Set of SDK harness containers needed to execute this pipeline. This will only be set in the Fn API path. For non-cross-language pipelines this should have only one entry. Cross-language pipelines will have two or more entries.",
          items = {
            ["$ref"] = "SdkHarnessContainerImage",
          },
          type = "array",
        },
        subnetwork = {
          description = "Subnetwork to which VMs will be assigned, if desired. Expected to be of the form \"regions/REGION/subnetworks/SUBNETWORK\".",
          type = "string",
        },
        taskrunnerSettings = {
          ["$ref"] = "TaskRunnerSettings",
          description = "Settings passed through to Google Compute Engine workers when using the standard Dataflow task runner. Users should ignore this field.",
        },
        teardownPolicy = {
          description = "Sets the policy for determining when to turndown worker pool. Allowed values are: `TEARDOWN_ALWAYS`, `TEARDOWN_ON_SUCCESS`, and `TEARDOWN_NEVER`. `TEARDOWN_ALWAYS` means workers are always torn down regardless of whether the job succeeds. `TEARDOWN_ON_SUCCESS` means workers are torn down if the job succeeds. `TEARDOWN_NEVER` means the workers are never torn down. If the workers are not torn down by the service, they will continue to run and use Google Compute Engine VM resources in the user's project until they are explicitly terminated by the user. Because of this, Google recommends using the `TEARDOWN_ALWAYS` policy except for small, manually supervised test jobs. If unknown or unspecified, the service will attempt to choose a reasonable default.",
          enum = {
            "TEARDOWN_POLICY_UNKNOWN",
            "TEARDOWN_ALWAYS",
            "TEARDOWN_ON_SUCCESS",
            "TEARDOWN_NEVER",
          },
          enumDescriptions = {
            "The teardown policy isn't specified, or is unknown.",
            "Always teardown the resource.",
            "Teardown the resource on success. This is useful for debugging failures.",
            "Never teardown the resource. This is useful for debugging and development.",
          },
          type = "string",
        },
        workerHarnessContainerImage = {
          description = "Required. Docker container image that executes the Cloud Dataflow worker harness, residing in Google Container Registry. Deprecated for the Fn API path. Use sdk_harness_container_images instead.",
          type = "string",
        },
        zone = {
          description = "Zone to run the worker pools in. If empty or unspecified, the service will attempt to choose a reasonable default.",
          type = "string",
        },
      },
      type = "object",
    },
    WorkerSettings = {
      description = "Provides data to pass through to the worker harness.",
      id = "WorkerSettings",
      properties = {
        baseUrl = {
          description = "The base URL for accessing Google Cloud APIs. When workers access Google Cloud APIs, they logically do so via relative URLs. If this field is specified, it supplies the base URL to use for resolving these relative URLs. The normative algorithm used is defined by RFC 1808, \"Relative Uniform Resource Locators\". If not specified, the default value is \"http://www.googleapis.com/\"",
          type = "string",
        },
        reportingEnabled = {
          description = "Whether to send work progress updates to the service.",
          type = "boolean",
        },
        servicePath = {
          description = "The Cloud Dataflow service path relative to the root URL, for example, \"dataflow/v1b3/projects\".",
          type = "string",
        },
        shuffleServicePath = {
          description = "The Shuffle service path relative to the root URL, for example, \"shuffle/v1beta1\".",
          type = "string",
        },
        tempStoragePrefix = {
          description = "The prefix of the resources the system should use for temporary storage. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}",
          type = "string",
        },
        workerId = {
          description = "The ID of the worker running this pipeline.",
          type = "string",
        },
      },
      type = "object",
    },
    WorkerShutdownNotice = {
      description = "Shutdown notification from workers. This is to be sent by the shutdown script of the worker VM so that the backend knows that the VM is being shut down.",
      id = "WorkerShutdownNotice",
      properties = {
        reason = {
          description = "The reason for the worker shutdown. Current possible values are: \"UNKNOWN\": shutdown reason is unknown. \"PREEMPTION\": shutdown reason is preemption. Other possible reasons may be added in the future.",
          type = "string",
        },
      },
      type = "object",
    },
    WorkerShutdownNoticeResponse = {
      description = "Service-side response to WorkerMessage issuing shutdown notice.",
      id = "WorkerShutdownNoticeResponse",
      properties = {},
      type = "object",
    },
    WorkerThreadScalingReport = {
      description = "Contains information about the thread scaling information of a worker.",
      id = "WorkerThreadScalingReport",
      properties = {
        currentThreadCount = {
          description = "Current number of active threads in a worker.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    WorkerThreadScalingReportResponse = {
      description = "Contains the thread scaling recommendation for a worker from the backend.",
      id = "WorkerThreadScalingReportResponse",
      properties = {
        recommendedThreadCount = {
          description = "Recommended number of threads for a worker.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    WriteInstruction = {
      description = "An instruction that writes records. Takes one input, produces no outputs.",
      id = "WriteInstruction",
      properties = {
        input = {
          ["$ref"] = "InstructionInput",
          description = "The input.",
        },
        sink = {
          ["$ref"] = "Sink",
          description = "The sink to write to.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Dataflow API",
  version = "v1b3",
}