return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/bigquery"] = {
          description = "View and manage your data in Google BigQuery and see the email address for your Google Account",
        },
        ["https://www.googleapis.com/auth/bigquery.insertdata"] = {
          description = "Insert data into Google BigQuery",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
        ["https://www.googleapis.com/auth/devstorage.full_control"] = {
          description = "Manage your data and permissions in Cloud Storage and see the email address for your Google Account",
        },
        ["https://www.googleapis.com/auth/devstorage.read_only"] = {
          description = "View your data in Google Cloud Storage",
        },
        ["https://www.googleapis.com/auth/devstorage.read_write"] = {
          description = "Manage your data in Cloud Storage and see the email address of your Google Account",
        },
      },
    },
  },
  basePath = "/bigquery/v2/",
  baseUrl = "https://bigquery.googleapis.com/bigquery/v2/",
  batchPath = "batch/bigquery/v2",
  description = "A data platform for customers to create, manage, share and query data.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/bigquery/",
  icons = {
    x16 = "https://www.google.com/images/icons/product/search-16.gif",
    x32 = "https://www.google.com/images/icons/product/search-32.gif",
  },
  id = "bigquery:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://bigquery.mtls.googleapis.com/",
  name = "bigquery",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    alt = {
      default = "json",
      description = "Data format for the response.",
      enum = {
        "json",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
      },
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
      description = "An opaque string that represents a user for quota purposes. Must not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    userIp = {
      description = "Deprecated. Please use quotaUser instead.",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    datasets = {
      methods = {
        delete = {
          description = "Deletes the dataset specified by the datasetId value. Before you can delete a dataset, you must delete all its tables, either manually or by specifying deleteContents. Immediately after deletion, you can create another dataset with the same name.",
          httpMethod = "DELETE",
          id = "bigquery.datasets.delete",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of dataset being deleted",
              location = "path",
              required = true,
              type = "string",
            },
            deleteContents = {
              description = "If True, delete all the tables in the dataset. If False and the dataset contains tables, the request will fail. Default is False",
              location = "query",
              type = "boolean",
            },
            projectId = {
              description = "Project ID of the dataset being deleted",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}",
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Returns the dataset specified by datasetID.",
          httpMethod = "GET",
          id = "bigquery.datasets.get",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the requested dataset",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the requested dataset",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}",
          response = {
            ["$ref"] = "Dataset",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        insert = {
          description = "Creates a new empty dataset.",
          httpMethod = "POST",
          id = "bigquery.datasets.insert",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Project ID of the new dataset",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets",
          request = {
            ["$ref"] = "Dataset",
          },
          response = {
            ["$ref"] = "Dataset",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists all datasets in the specified project to which you have been granted the READER dataset role.",
          httpMethod = "GET",
          id = "bigquery.datasets.list",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            all = {
              description = "Whether to list all datasets, including hidden ones",
              location = "query",
              type = "boolean",
            },
            filter = {
              description = "An expression for filtering the results of the request by label. The syntax is \"labels.<name>[:<value>]\". Multiple filters can be ANDed together by connecting with a space. Example: \"labels.department:receiving labels.active\". See Filtering datasets using labels for details.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of results to return",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Page token, returned by a previous call, to request the next page of results",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Project ID of the datasets to be listed",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets",
          response = {
            ["$ref"] = "DatasetList",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        patch = {
          description = "Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "bigquery.datasets.patch",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the dataset being updated",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the dataset being updated",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}",
          request = {
            ["$ref"] = "Dataset",
          },
          response = {
            ["$ref"] = "Dataset",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        update = {
          description = "Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource.",
          httpMethod = "PUT",
          id = "bigquery.datasets.update",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the dataset being updated",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the dataset being updated",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}",
          request = {
            ["$ref"] = "Dataset",
          },
          response = {
            ["$ref"] = "Dataset",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    jobs = {
      methods = {
        cancel = {
          description = "Requests that a job be cancelled. This call will return immediately, and the client will need to poll for the job status to see if the cancel completed successfully. Cancelled jobs may still incur costs.",
          httpMethod = "POST",
          id = "bigquery.jobs.cancel",
          parameterOrder = {
            "projectId",
            "jobId",
          },
          parameters = {
            jobId = {
              description = "[Required] Job ID of the job to cancel",
              location = "path",
              required = true,
              type = "string",
            },
            location = {
              description = "The geographic location of the job. Required except for US and EU. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "[Required] Project ID of the job to cancel",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/jobs/{jobId}/cancel",
          response = {
            ["$ref"] = "JobCancelResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Requests the deletion of the metadata of a job. This call returns when the job's metadata is deleted.",
          flatPath = "projects/{projectsId}/jobs/{jobsId}/delete",
          httpMethod = "DELETE",
          id = "bigquery.jobs.delete",
          parameterOrder = {
            "projectId",
            "jobId",
          },
          parameters = {
            jobId = {
              description = "Required. Job ID of the job for which metadata is to be deleted. If this is a parent job which has child jobs, the metadata from all child jobs will be deleted as well. Direct deletion of the metadata of child jobs is not allowed.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            location = {
              description = "The geographic location of the job. Required. See details at: https://cloud.google.com/bigquery/docs/locations#specifying_your_location.",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the job for which metadata is to be deleted.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/jobs/{+jobId}/delete",
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Returns information about a specific job. Job information is available for a six month period after creation. Requires that you're the person who ran the job, or have the Is Owner project role.",
          httpMethod = "GET",
          id = "bigquery.jobs.get",
          parameterOrder = {
            "projectId",
            "jobId",
          },
          parameters = {
            jobId = {
              description = "[Required] Job ID of the requested job",
              location = "path",
              required = true,
              type = "string",
            },
            location = {
              description = "The geographic location of the job. Required except for US and EU. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "[Required] Project ID of the requested job",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/jobs/{jobId}",
          response = {
            ["$ref"] = "Job",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getQueryResults = {
          description = "Retrieves the results of a query job.",
          httpMethod = "GET",
          id = "bigquery.jobs.getQueryResults",
          parameterOrder = {
            "projectId",
            "jobId",
          },
          parameters = {
            jobId = {
              description = "[Required] Job ID of the query job",
              location = "path",
              required = true,
              type = "string",
            },
            location = {
              description = "The geographic location where the job should run. Required except for US and EU. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "Maximum number of results to read",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Page token, returned by a previous call, to request the next page of results",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "[Required] Project ID of the query job",
              location = "path",
              required = true,
              type = "string",
            },
            startIndex = {
              description = "Zero-based index of the starting row",
              format = "uint64",
              location = "query",
              type = "string",
            },
            timeoutMs = {
              description = "How long to wait for the query to complete, in milliseconds, before returning. Default is 10 seconds. If the timeout passes before the job completes, the 'jobComplete' field in the response will be false",
              format = "uint32",
              location = "query",
              type = "integer",
            },
          },
          path = "projects/{projectId}/queries/{jobId}",
          response = {
            ["$ref"] = "GetQueryResultsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        insert = {
          description = "Starts a new asynchronous job. Requires the Can View project role.",
          httpMethod = "POST",
          id = "bigquery.jobs.insert",
          mediaUpload = {
            accept = {
              "*/*",
            },
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/bigquery/v2/projects/{projectId}/jobs",
              },
              simple = {
                multipart = true,
                path = "/upload/bigquery/v2/projects/{projectId}/jobs",
              },
            },
          },
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Project ID of the project that will be billed for the job",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/jobs",
          request = {
            ["$ref"] = "Job",
          },
          response = {
            ["$ref"] = "Job",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/devstorage.full_control",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/devstorage.read_write",
          },
          supportsMediaUpload = true,
        },
        list = {
          description = "Lists all jobs that you started in the specified project. Job information is available for a six month period after creation. The job list is sorted in reverse chronological order, by job creation time. Requires the Can View project role, or the Is Owner project role if you set the allUsers property.",
          httpMethod = "GET",
          id = "bigquery.jobs.list",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            allUsers = {
              description = "Whether to display jobs owned by all users in the project. Default false",
              location = "query",
              type = "boolean",
            },
            maxCreationTime = {
              description = "Max value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created before or at this timestamp are returned",
              format = "uint64",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "Maximum number of results to return",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            minCreationTime = {
              description = "Min value for job creation time, in milliseconds since the POSIX epoch. If set, only jobs created after or at this timestamp are returned",
              format = "uint64",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Page token, returned by a previous call, to request the next page of results",
              location = "query",
              type = "string",
            },
            parentJobId = {
              description = "If set, retrieves only jobs whose parent is this job. Otherwise, retrieves only jobs which have no parent",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Project ID of the jobs to list",
              location = "path",
              required = true,
              type = "string",
            },
            projection = {
              description = "Restrict information returned to a set of selected fields",
              enum = {
                "full",
                "minimal",
              },
              enumDescriptions = {
                "Includes all job data",
                "Does not include the job configuration",
              },
              location = "query",
              type = "string",
            },
            stateFilter = {
              description = "Filter for job state",
              enum = {
                "done",
                "pending",
                "running",
              },
              enumDescriptions = {
                "Finished jobs",
                "Pending jobs",
                "Running jobs",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/jobs",
          response = {
            ["$ref"] = "JobList",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        query = {
          description = "Runs a BigQuery SQL query synchronously and returns query results if the query completes within a specified timeout.",
          httpMethod = "POST",
          id = "bigquery.jobs.query",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Project ID of the project billed for the query",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/queries",
          request = {
            ["$ref"] = "QueryRequest",
          },
          response = {
            ["$ref"] = "QueryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    models = {
      methods = {
        delete = {
          description = "Deletes the model specified by modelId from the dataset.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/models/{modelsId}",
          httpMethod = "DELETE",
          id = "bigquery.models.delete",
          parameterOrder = {
            "projectId",
            "datasetId",
            "modelId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the model to delete.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            modelId = {
              description = "Required. Model ID of the model to delete.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the model to delete.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}",
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets the specified model resource by model ID.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/models/{modelsId}",
          httpMethod = "GET",
          id = "bigquery.models.get",
          parameterOrder = {
            "projectId",
            "datasetId",
            "modelId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the requested model.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            modelId = {
              description = "Required. Model ID of the requested model.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the requested model.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}",
          response = {
            ["$ref"] = "Model",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "Lists all models in the specified dataset. Requires the READER dataset role. After retrieving the list of models, you can get information about a particular model by calling the models.get method.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/models",
          httpMethod = "GET",
          id = "bigquery.models.list",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the models to list.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Page token, returned by a previous call to request the next page of results",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the models to list.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/models",
          response = {
            ["$ref"] = "ListModelsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        patch = {
          description = "Patch specific fields in the specified model.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/models/{modelsId}",
          httpMethod = "PATCH",
          id = "bigquery.models.patch",
          parameterOrder = {
            "projectId",
            "datasetId",
            "modelId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the model to patch.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            modelId = {
              description = "Required. Model ID of the model to patch.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the model to patch.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/models/{+modelId}",
          request = {
            ["$ref"] = "Model",
          },
          response = {
            ["$ref"] = "Model",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    projects = {
      methods = {
        getServiceAccount = {
          description = "Returns the email address of the service account for your project used for interactions with Google Cloud KMS.",
          httpMethod = "GET",
          id = "bigquery.projects.getServiceAccount",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Project ID for which the service account is requested.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/serviceAccount",
          response = {
            ["$ref"] = "GetServiceAccountResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "Lists all projects to which you have been granted any project role.",
          httpMethod = "GET",
          id = "bigquery.projects.list",
          parameters = {
            maxResults = {
              description = "Maximum number of results to return",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Page token, returned by a previous call, to request the next page of results",
              location = "query",
              type = "string",
            },
          },
          path = "projects",
          response = {
            ["$ref"] = "ProjectList",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    routines = {
      methods = {
        delete = {
          description = "Deletes the routine specified by routineId from the dataset.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/routines/{routinesId}",
          httpMethod = "DELETE",
          id = "bigquery.routines.delete",
          parameterOrder = {
            "projectId",
            "datasetId",
            "routineId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the routine to delete",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the routine to delete",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            routineId = {
              description = "Required. Routine ID of the routine to delete",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets the specified routine resource by routine ID.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/routines/{routinesId}",
          httpMethod = "GET",
          id = "bigquery.routines.get",
          parameterOrder = {
            "projectId",
            "datasetId",
            "routineId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the requested routine",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the requested routine",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            readMask = {
              description = "If set, only the Routine fields in the field mask are returned in the response. If unset, all Routine fields are returned.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            routineId = {
              description = "Required. Routine ID of the requested routine",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
          response = {
            ["$ref"] = "Routine",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        insert = {
          description = "Creates a new routine in the dataset.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/routines",
          httpMethod = "POST",
          id = "bigquery.routines.insert",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the new routine",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the new routine",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/routines",
          request = {
            ["$ref"] = "Routine",
          },
          response = {
            ["$ref"] = "Routine",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists all routines in the specified dataset. Requires the READER dataset role.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/routines",
          httpMethod = "GET",
          id = "bigquery.routines.list",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the routines to list",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            filter = {
              description = "If set, then only the Routines matching this filter are returned. The current supported form is either \"routine_type:\" or \"routineType:\", where is a RoutineType enum. Example: \"routineType:SCALAR_FUNCTION\".",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Page token, returned by a previous call, to request the next page of results",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the routines to list",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            readMask = {
              description = "If set, then only the Routine fields in the field mask, as well as project_id, dataset_id and routine_id, are returned in the response. If unset, then the following Routine fields are returned: etag, project_id, dataset_id, routine_id, routine_type, creation_time, last_modified_time, and language.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/routines",
          response = {
            ["$ref"] = "ListRoutinesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        update = {
          description = "Updates information in an existing routine. The update method replaces the entire Routine resource.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/routines/{routinesId}",
          httpMethod = "PUT",
          id = "bigquery.routines.update",
          parameterOrder = {
            "projectId",
            "datasetId",
            "routineId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of the routine to update",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the routine to update",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            routineId = {
              description = "Required. Routine ID of the routine to update",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
          request = {
            ["$ref"] = "Routine",
          },
          response = {
            ["$ref"] = "Routine",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    rowAccessPolicies = {
      methods = {
        getIamPolicy = {
          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/tables/{tablesId}/rowAccessPolicies/{rowAccessPoliciesId}:getIamPolicy",
          httpMethod = "POST",
          id = "bigquery.rowAccessPolicies.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/datasets/[^/]+/tables/[^/]+/rowAccessPolicies/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "Lists all row access policies on the specified table.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/tables/{tablesId}/rowAccessPolicies",
          httpMethod = "GET",
          id = "bigquery.rowAccessPolicies.list",
          parameterOrder = {
            "projectId",
            "datasetId",
            "tableId",
          },
          parameters = {
            datasetId = {
              description = "Required. Dataset ID of row access policies to list.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Page token, returned by a previous call, to request the next page of results.",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Required. Project ID of the row access policies to list.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
            tableId = {
              description = "Required. Table ID of the table to list row access policies.",
              location = "path",
              pattern = "^[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "projects/{+projectId}/datasets/{+datasetId}/tables/{+tableId}/rowAccessPolicies",
          response = {
            ["$ref"] = "ListRowAccessPoliciesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/tables/{tablesId}/rowAccessPolicies/{rowAccessPoliciesId}:setIamPolicy",
          httpMethod = "POST",
          id = "bigquery.rowAccessPolicies.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/datasets/[^/]+/tables/[^/]+/rowAccessPolicies/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "{+resource}:setIamPolicy",
          request = {
            ["$ref"] = "SetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        testIamPermissions = {
          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/tables/{tablesId}/rowAccessPolicies/{rowAccessPoliciesId}:testIamPermissions",
          httpMethod = "POST",
          id = "bigquery.rowAccessPolicies.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/datasets/[^/]+/tables/[^/]+/rowAccessPolicies/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "{+resource}:testIamPermissions",
          request = {
            ["$ref"] = "TestIamPermissionsRequest",
          },
          response = {
            ["$ref"] = "TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    tabledata = {
      methods = {
        insertAll = {
          description = "Streams data into BigQuery one record at a time without needing to run a load job. Requires the WRITER dataset role.",
          httpMethod = "POST",
          id = "bigquery.tabledata.insertAll",
          parameterOrder = {
            "projectId",
            "datasetId",
            "tableId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the destination table.",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the destination table.",
              location = "path",
              required = true,
              type = "string",
            },
            tableId = {
              description = "Table ID of the destination table.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}/insertAll",
          request = {
            ["$ref"] = "TableDataInsertAllRequest",
          },
          response = {
            ["$ref"] = "TableDataInsertAllResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/bigquery.insertdata",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Retrieves table data from a specified set of rows. Requires the READER dataset role.",
          httpMethod = "GET",
          id = "bigquery.tabledata.list",
          parameterOrder = {
            "projectId",
            "datasetId",
            "tableId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the table to read",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Maximum number of results to return",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Page token, returned by a previous call, identifying the result set",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Project ID of the table to read",
              location = "path",
              required = true,
              type = "string",
            },
            selectedFields = {
              description = "List of fields to return (comma-separated). If unspecified, all fields are returned",
              location = "query",
              type = "string",
            },
            startIndex = {
              description = "Zero-based index of the starting row to read",
              format = "uint64",
              location = "query",
              type = "string",
            },
            tableId = {
              description = "Table ID of the table to read",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}/data",
          response = {
            ["$ref"] = "TableDataList",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    tables = {
      methods = {
        delete = {
          description = "Deletes the table specified by tableId from the dataset. If the table contains data, all the data will be deleted.",
          httpMethod = "DELETE",
          id = "bigquery.tables.delete",
          parameterOrder = {
            "projectId",
            "datasetId",
            "tableId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the table to delete",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the table to delete",
              location = "path",
              required = true,
              type = "string",
            },
            tableId = {
              description = "Table ID of the table to delete",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}",
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets the specified table resource by table ID. This method does not return the data in the table, it only returns the table resource, which describes the structure of this table.",
          httpMethod = "GET",
          id = "bigquery.tables.get",
          parameterOrder = {
            "projectId",
            "datasetId",
            "tableId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the requested table",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the requested table",
              location = "path",
              required = true,
              type = "string",
            },
            selectedFields = {
              description = "List of fields to return (comma-separated). If unspecified, all fields are returned",
              location = "query",
              type = "string",
            },
            tableId = {
              description = "Table ID of the requested table",
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              description = "Specifies the view that determines which table information is returned. By default, basic table information and storage statistics (STORAGE_STATS) are returned.",
              enum = {
                "BASIC",
                "FULL",
                "STORAGE_STATS",
                "TABLE_METADATA_VIEW_UNSPECIFIED",
              },
              enumDescriptions = {
                "Includes basic table information including schema and partitioning specification. This view does not include storage statistics such as numRows or numBytes. This view is significantly more efficient and should be used to support high query rates.",
                "Includes all table information, including storage statistics. It returns same information as STORAGE_STATS view, but may contain additional information in the future.",
                "Includes all information in the BASIC view as well as storage statistics (numBytes, numLongTermBytes, numRows and lastModifiedTime).",
                "The default value. Default to the STORAGE_STATS view.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}",
          response = {
            ["$ref"] = "Table",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/tables/{tablesId}:getIamPolicy",
          httpMethod = "POST",
          id = "bigquery.tables.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/datasets/[^/]+/tables/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        insert = {
          description = "Creates a new, empty table in the dataset.",
          httpMethod = "POST",
          id = "bigquery.tables.insert",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the new table",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the new table",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}/tables",
          request = {
            ["$ref"] = "Table",
          },
          response = {
            ["$ref"] = "Table",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists all tables in the specified dataset. Requires the READER dataset role.",
          httpMethod = "GET",
          id = "bigquery.tables.list",
          parameterOrder = {
            "projectId",
            "datasetId",
          },
          parameters = {
            datasetId = {
              description = "Dataset ID of the tables to list",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Maximum number of results to return",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Page token, returned by a previous call, to request the next page of results",
              location = "query",
              type = "string",
            },
            projectId = {
              description = "Project ID of the tables to list",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}/tables",
          response = {
            ["$ref"] = "TableList",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        patch = {
          description = "Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "bigquery.tables.patch",
          parameterOrder = {
            "projectId",
            "datasetId",
            "tableId",
          },
          parameters = {
            autodetect_schema = {
              description = "When true will autodetect schema, else will keep original schema",
              location = "query",
              type = "boolean",
            },
            datasetId = {
              description = "Dataset ID of the table to update",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the table to update",
              location = "path",
              required = true,
              type = "string",
            },
            tableId = {
              description = "Table ID of the table to update",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}",
          request = {
            ["$ref"] = "Table",
          },
          response = {
            ["$ref"] = "Table",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/tables/{tablesId}:setIamPolicy",
          httpMethod = "POST",
          id = "bigquery.tables.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/datasets/[^/]+/tables/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "{+resource}:setIamPolicy",
          request = {
            ["$ref"] = "SetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        testIamPermissions = {
          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
          flatPath = "projects/{projectsId}/datasets/{datasetsId}/tables/{tablesId}:testIamPermissions",
          httpMethod = "POST",
          id = "bigquery.tables.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/datasets/[^/]+/tables/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "{+resource}:testIamPermissions",
          request = {
            ["$ref"] = "TestIamPermissionsRequest",
          },
          response = {
            ["$ref"] = "TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        update = {
          description = "Updates information in an existing table. The update method replaces the entire table resource, whereas the patch method only replaces fields that are provided in the submitted table resource.",
          httpMethod = "PUT",
          id = "bigquery.tables.update",
          parameterOrder = {
            "projectId",
            "datasetId",
            "tableId",
          },
          parameters = {
            autodetect_schema = {
              description = "When true will autodetect schema, else will keep original schema",
              location = "query",
              type = "boolean",
            },
            datasetId = {
              description = "Dataset ID of the table to update",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID of the table to update",
              location = "path",
              required = true,
              type = "string",
            },
            tableId = {
              description = "Table ID of the table to update",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "projects/{projectId}/datasets/{datasetId}/tables/{tableId}",
          request = {
            ["$ref"] = "Table",
          },
          response = {
            ["$ref"] = "Table",
          },
          scopes = {
            "https://www.googleapis.com/auth/bigquery",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20221217",
  rootUrl = "https://bigquery.googleapis.com/",
  schemas = {
    AggregateClassificationMetrics = {
      description = "Aggregate metrics for classification/classifier models. For multi-class models, the metrics are either macro-averaged or micro-averaged. When macro-averaged, the metrics are calculated for each label and then an unweighted average is taken of those values. When micro-averaged, the metric is calculated globally by counting the total number of correctly predicted rows.",
      id = "AggregateClassificationMetrics",
      properties = {
        accuracy = {
          description = "Accuracy is the fraction of predictions given the correct label. For multiclass this is a micro-averaged metric.",
          format = "double",
          type = "number",
        },
        f1Score = {
          description = "The F1 score is an average of recall and precision. For multiclass this is a macro-averaged metric.",
          format = "double",
          type = "number",
        },
        logLoss = {
          description = "Logarithmic Loss. For multiclass this is a macro-averaged metric.",
          format = "double",
          type = "number",
        },
        precision = {
          description = "Precision is the fraction of actual positive predictions that had positive actual labels. For multiclass this is a macro-averaged metric treating each class as a binary classifier.",
          format = "double",
          type = "number",
        },
        recall = {
          description = "Recall is the fraction of actual positive labels that were given a positive prediction. For multiclass this is a macro-averaged metric.",
          format = "double",
          type = "number",
        },
        rocAuc = {
          description = "Area Under a ROC Curve. For multiclass this is a macro-averaged metric.",
          format = "double",
          type = "number",
        },
        threshold = {
          description = "Threshold at which the metrics are computed. For binary classification models this is the positive class threshold. For multi-class classfication models this is the confidence threshold.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Argument = {
      description = "Input/output argument of a function or a stored procedure.",
      id = "Argument",
      properties = {
        argumentKind = {
          description = "Optional. Defaults to FIXED_TYPE.",
          enum = {
            "ARGUMENT_KIND_UNSPECIFIED",
            "FIXED_TYPE",
            "ANY_TYPE",
          },
          enumDescriptions = {
            "",
            "The argument is a variable with fully specified type, which can be a struct or an array, but not a table.",
            "The argument is any type, including struct or array, but not a table. To be added: FIXED_TABLE, ANY_TABLE",
          },
          type = "string",
        },
        dataType = {
          ["$ref"] = "StandardSqlDataType",
          description = "Required unless argument_kind = ANY_TYPE.",
        },
        mode = {
          description = "Optional. Specifies whether the argument is input or output. Can be set for procedures only.",
          enum = {
            "MODE_UNSPECIFIED",
            "IN",
            "OUT",
            "INOUT",
          },
          enumDescriptions = {
            "",
            "The argument is input-only.",
            "The argument is output-only.",
            "The argument is both an input and an output.",
          },
          type = "string",
        },
        name = {
          description = "Optional. The name of this argument. Can be absent for function return argument.",
          type = "string",
        },
      },
      type = "object",
    },
    ArimaCoefficients = {
      description = "Arima coefficients.",
      id = "ArimaCoefficients",
      properties = {
        autoRegressiveCoefficients = {
          description = "Auto-regressive coefficients, an array of double.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
        interceptCoefficient = {
          description = "Intercept coefficient, just a double not an array.",
          format = "double",
          type = "number",
        },
        movingAverageCoefficients = {
          description = "Moving-average coefficients, an array of double.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ArimaFittingMetrics = {
      description = "ARIMA model fitting metrics.",
      id = "ArimaFittingMetrics",
      properties = {
        aic = {
          description = "AIC.",
          format = "double",
          type = "number",
        },
        logLikelihood = {
          description = "Log-likelihood.",
          format = "double",
          type = "number",
        },
        variance = {
          description = "Variance.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ArimaForecastingMetrics = {
      description = "Model evaluation metrics for ARIMA forecasting models.",
      id = "ArimaForecastingMetrics",
      properties = {
        arimaFittingMetrics = {
          description = "Arima model fitting metrics.",
          items = {
            ["$ref"] = "ArimaFittingMetrics",
          },
          type = "array",
        },
        arimaSingleModelForecastingMetrics = {
          description = "Repeated as there can be many metric sets (one for each model) in auto-arima and the large-scale case.",
          items = {
            ["$ref"] = "ArimaSingleModelForecastingMetrics",
          },
          type = "array",
        },
        hasDrift = {
          description = "Whether Arima model fitted with drift or not. It is always false when d is not 1.",
          items = {
            type = "boolean",
          },
          type = "array",
        },
        nonSeasonalOrder = {
          description = "Non-seasonal order.",
          items = {
            ["$ref"] = "ArimaOrder",
          },
          type = "array",
        },
        seasonalPeriods = {
          description = "Seasonal periods. Repeated because multiple periods are supported for one time series.",
          items = {
            enum = {
              "SEASONAL_PERIOD_TYPE_UNSPECIFIED",
              "NO_SEASONALITY",
              "DAILY",
              "WEEKLY",
              "MONTHLY",
              "QUARTERLY",
              "YEARLY",
            },
            enumDescriptions = {
              "Unspecified seasonal period.",
              "No seasonality",
              "Daily period, 24 hours.",
              "Weekly period, 7 days.",
              "Monthly period, 30 days or irregular.",
              "Quarterly period, 90 days or irregular.",
              "Yearly period, 365 days or irregular.",
            },
            type = "string",
          },
          type = "array",
        },
        timeSeriesId = {
          description = "Id to differentiate different time series for the large-scale case.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ArimaModelInfo = {
      description = "Arima model information.",
      id = "ArimaModelInfo",
      properties = {
        arimaCoefficients = {
          ["$ref"] = "ArimaCoefficients",
          description = "Arima coefficients.",
        },
        arimaFittingMetrics = {
          ["$ref"] = "ArimaFittingMetrics",
          description = "Arima fitting metrics.",
        },
        hasDrift = {
          description = "Whether Arima model fitted with drift or not. It is always false when d is not 1.",
          type = "boolean",
        },
        hasHolidayEffect = {
          description = "If true, holiday_effect is a part of time series decomposition result.",
          type = "boolean",
        },
        hasSpikesAndDips = {
          description = "If true, spikes_and_dips is a part of time series decomposition result.",
          type = "boolean",
        },
        hasStepChanges = {
          description = "If true, step_changes is a part of time series decomposition result.",
          type = "boolean",
        },
        nonSeasonalOrder = {
          ["$ref"] = "ArimaOrder",
          description = "Non-seasonal order.",
        },
        seasonalPeriods = {
          description = "Seasonal periods. Repeated because multiple periods are supported for one time series.",
          items = {
            enum = {
              "SEASONAL_PERIOD_TYPE_UNSPECIFIED",
              "NO_SEASONALITY",
              "DAILY",
              "WEEKLY",
              "MONTHLY",
              "QUARTERLY",
              "YEARLY",
            },
            enumDescriptions = {
              "Unspecified seasonal period.",
              "No seasonality",
              "Daily period, 24 hours.",
              "Weekly period, 7 days.",
              "Monthly period, 30 days or irregular.",
              "Quarterly period, 90 days or irregular.",
              "Yearly period, 365 days or irregular.",
            },
            type = "string",
          },
          type = "array",
        },
        timeSeriesId = {
          description = "The time_series_id value for this time series. It will be one of the unique values from the time_series_id_column specified during ARIMA model training. Only present when time_series_id_column training option was used.",
          type = "string",
        },
        timeSeriesIds = {
          description = "The tuple of time_series_ids identifying this time series. It will be one of the unique tuples of values present in the time_series_id_columns specified during ARIMA model training. Only present when time_series_id_columns training option was used and the order of values here are same as the order of time_series_id_columns.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ArimaOrder = {
      description = "Arima order, can be used for both non-seasonal and seasonal parts.",
      id = "ArimaOrder",
      properties = {
        d = {
          description = "Order of the differencing part.",
          format = "int64",
          type = "string",
        },
        p = {
          description = "Order of the autoregressive part.",
          format = "int64",
          type = "string",
        },
        q = {
          description = "Order of the moving-average part.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ArimaResult = {
      description = "(Auto-)arima fitting result. Wrap everything in ArimaResult for easier refactoring if we want to use model-specific iteration results.",
      id = "ArimaResult",
      properties = {
        arimaModelInfo = {
          description = "This message is repeated because there are multiple arima models fitted in auto-arima. For non-auto-arima model, its size is one.",
          items = {
            ["$ref"] = "ArimaModelInfo",
          },
          type = "array",
        },
        seasonalPeriods = {
          description = "Seasonal periods. Repeated because multiple periods are supported for one time series.",
          items = {
            enum = {
              "SEASONAL_PERIOD_TYPE_UNSPECIFIED",
              "NO_SEASONALITY",
              "DAILY",
              "WEEKLY",
              "MONTHLY",
              "QUARTERLY",
              "YEARLY",
            },
            enumDescriptions = {
              "Unspecified seasonal period.",
              "No seasonality",
              "Daily period, 24 hours.",
              "Weekly period, 7 days.",
              "Monthly period, 30 days or irregular.",
              "Quarterly period, 90 days or irregular.",
              "Yearly period, 365 days or irregular.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ArimaSingleModelForecastingMetrics = {
      description = "Model evaluation metrics for a single ARIMA forecasting model.",
      id = "ArimaSingleModelForecastingMetrics",
      properties = {
        arimaFittingMetrics = {
          ["$ref"] = "ArimaFittingMetrics",
          description = "Arima fitting metrics.",
        },
        hasDrift = {
          description = "Is arima model fitted with drift or not. It is always false when d is not 1.",
          type = "boolean",
        },
        hasHolidayEffect = {
          description = "If true, holiday_effect is a part of time series decomposition result.",
          type = "boolean",
        },
        hasSpikesAndDips = {
          description = "If true, spikes_and_dips is a part of time series decomposition result.",
          type = "boolean",
        },
        hasStepChanges = {
          description = "If true, step_changes is a part of time series decomposition result.",
          type = "boolean",
        },
        nonSeasonalOrder = {
          ["$ref"] = "ArimaOrder",
          description = "Non-seasonal order.",
        },
        seasonalPeriods = {
          description = "Seasonal periods. Repeated because multiple periods are supported for one time series.",
          items = {
            enum = {
              "SEASONAL_PERIOD_TYPE_UNSPECIFIED",
              "NO_SEASONALITY",
              "DAILY",
              "WEEKLY",
              "MONTHLY",
              "QUARTERLY",
              "YEARLY",
            },
            enumDescriptions = {
              "Unspecified seasonal period.",
              "No seasonality",
              "Daily period, 24 hours.",
              "Weekly period, 7 days.",
              "Monthly period, 30 days or irregular.",
              "Quarterly period, 90 days or irregular.",
              "Yearly period, 365 days or irregular.",
            },
            type = "string",
          },
          type = "array",
        },
        timeSeriesId = {
          description = "The time_series_id value for this time series. It will be one of the unique values from the time_series_id_column specified during ARIMA model training. Only present when time_series_id_column training option was used.",
          type = "string",
        },
        timeSeriesIds = {
          description = "The tuple of time_series_ids identifying this time series. It will be one of the unique tuples of values present in the time_series_id_columns specified during ARIMA model training. Only present when time_series_id_columns training option was used and the order of values here are same as the order of time_series_id_columns.",
          items = {
            type = "string",
          },
          type = "array",
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
    AvroOptions = {
      id = "AvroOptions",
      properties = {
        useAvroLogicalTypes = {
          description = "[Optional] If sourceFormat is set to \"AVRO\", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).",
          type = "boolean",
        },
      },
      type = "object",
    },
    BiEngineReason = {
      id = "BiEngineReason",
      properties = {
        code = {
          default = "",
          description = "[Output-only] High-level BI Engine reason for partial or disabled acceleration.",
          type = "string",
        },
        message = {
          default = "",
          description = "[Output-only] Free form human-readable reason for partial or disabled acceleration.",
          type = "string",
        },
      },
      type = "object",
    },
    BiEngineStatistics = {
      id = "BiEngineStatistics",
      properties = {
        biEngineMode = {
          default = "",
          description = "[Output-only] Specifies which mode of BI Engine acceleration was performed (if any).",
          type = "string",
        },
        biEngineReasons = {
          description = "In case of DISABLED or PARTIAL bi_engine_mode, these contain the explanatory reasons as to why BI Engine could not accelerate. In case the full query was accelerated, this field is not populated.",
          items = {
            ["$ref"] = "BiEngineReason",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BigQueryModelTraining = {
      id = "BigQueryModelTraining",
      properties = {
        currentIteration = {
          description = "[Output-only, Beta] Index of current ML training iteration. Updated during create model query job to show job progress.",
          format = "int32",
          type = "integer",
        },
        expectedTotalIterations = {
          description = "[Output-only, Beta] Expected number of iterations for the create model query job specified as num_iterations in the input query. The actual total number of iterations may be less than this number due to early stop.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    BigtableColumn = {
      id = "BigtableColumn",
      properties = {
        encoding = {
          description = "[Optional] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. 'encoding' can also be set at the column family level. However, the setting at this level takes precedence if 'encoding' is set at both levels.",
          type = "string",
        },
        fieldName = {
          description = "[Optional] If the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as the column field name and is used as field name in queries.",
          type = "string",
        },
        onlyReadLatest = {
          description = "[Optional] If this is set, only the latest version of value in this column are exposed. 'onlyReadLatest' can also be set at the column family level. However, the setting at this level takes precedence if 'onlyReadLatest' is set at both levels.",
          type = "boolean",
        },
        qualifierEncoded = {
          description = "[Required] Qualifier of the column. Columns in the parent column family that has this exact qualifier are exposed as . field. If the qualifier is valid UTF-8 string, it can be specified in the qualifier_string field. Otherwise, a base-64 encoded value must be set to qualifier_encoded. The column field name is the same as the column qualifier. However, if the qualifier is not a valid BigQuery field identifier i.e. does not match [a-zA-Z][a-zA-Z0-9_]*, a valid identifier must be provided as field_name.",
          format = "byte",
          type = "string",
        },
        qualifierString = {
          type = "string",
        },
        type = {
          description = "[Optional] The type to convert the value in cells of this column. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is BYTES. 'type' can also be set at the column family level. However, the setting at this level takes precedence if 'type' is set at both levels.",
          type = "string",
        },
      },
      type = "object",
    },
    BigtableColumnFamily = {
      id = "BigtableColumnFamily",
      properties = {
        columns = {
          description = "[Optional] Lists of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as .. Other columns can be accessed as a list through .Column field.",
          items = {
            ["$ref"] = "BigtableColumn",
          },
          type = "array",
        },
        encoding = {
          description = "[Optional] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.",
          type = "string",
        },
        familyId = {
          description = "Identifier of the column family.",
          type = "string",
        },
        onlyReadLatest = {
          description = "[Optional] If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.",
          type = "boolean",
        },
        type = {
          description = "[Optional] The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive) - BYTES STRING INTEGER FLOAT BOOLEAN Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.",
          type = "string",
        },
      },
      type = "object",
    },
    BigtableOptions = {
      id = "BigtableOptions",
      properties = {
        columnFamilies = {
          description = "[Optional] List of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.",
          items = {
            ["$ref"] = "BigtableColumnFamily",
          },
          type = "array",
        },
        ignoreUnspecifiedColumnFamilies = {
          description = "[Optional] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.",
          type = "boolean",
        },
        readRowkeyAsString = {
          description = "[Optional] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    BinaryClassificationMetrics = {
      description = "Evaluation metrics for binary classification/classifier models.",
      id = "BinaryClassificationMetrics",
      properties = {
        aggregateClassificationMetrics = {
          ["$ref"] = "AggregateClassificationMetrics",
          description = "Aggregate classification metrics.",
        },
        binaryConfusionMatrixList = {
          description = "Binary confusion matrix at multiple thresholds.",
          items = {
            ["$ref"] = "BinaryConfusionMatrix",
          },
          type = "array",
        },
        negativeLabel = {
          description = "Label representing the negative class.",
          type = "string",
        },
        positiveLabel = {
          description = "Label representing the positive class.",
          type = "string",
        },
      },
      type = "object",
    },
    BinaryConfusionMatrix = {
      description = "Confusion matrix for binary classification models.",
      id = "BinaryConfusionMatrix",
      properties = {
        accuracy = {
          description = "The fraction of predictions given the correct label.",
          format = "double",
          type = "number",
        },
        f1Score = {
          description = "The equally weighted average of recall and precision.",
          format = "double",
          type = "number",
        },
        falseNegatives = {
          description = "Number of false samples predicted as false.",
          format = "int64",
          type = "string",
        },
        falsePositives = {
          description = "Number of false samples predicted as true.",
          format = "int64",
          type = "string",
        },
        positiveClassThreshold = {
          description = "Threshold value used when computing each of the following metric.",
          format = "double",
          type = "number",
        },
        precision = {
          description = "The fraction of actual positive predictions that had positive actual labels.",
          format = "double",
          type = "number",
        },
        recall = {
          description = "The fraction of actual positive labels that were given a positive prediction.",
          format = "double",
          type = "number",
        },
        trueNegatives = {
          description = "Number of true samples predicted as false.",
          format = "int64",
          type = "string",
        },
        truePositives = {
          description = "Number of true samples predicted as true.",
          format = "int64",
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
    BqmlIterationResult = {
      id = "BqmlIterationResult",
      properties = {
        durationMs = {
          description = "[Output-only, Beta] Time taken to run the training iteration in milliseconds.",
          format = "int64",
          type = "string",
        },
        evalLoss = {
          description = "[Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval_split_method option is specified as no_split or auto_split with input data size less than 500 rows.",
          format = "double",
          type = "number",
        },
        index = {
          description = "[Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.",
          format = "int32",
          type = "integer",
        },
        learnRate = {
          description = "[Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn_rate_strategy option is not constant.",
          format = "double",
          type = "number",
        },
        trainingLoss = {
          description = "[Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    BqmlTrainingRun = {
      id = "BqmlTrainingRun",
      properties = {
        iterationResults = {
          description = "[Output-only, Beta] List of each iteration results.",
          items = {
            ["$ref"] = "BqmlIterationResult",
          },
          type = "array",
        },
        startTime = {
          description = "[Output-only, Beta] Training run start time in milliseconds since the epoch.",
          format = "date-time",
          type = "string",
        },
        state = {
          description = "[Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.",
          type = "string",
        },
        trainingOptions = {
          description = "[Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.",
          properties = {
            earlyStop = {
              type = "boolean",
            },
            l1Reg = {
              format = "double",
              type = "number",
            },
            l2Reg = {
              format = "double",
              type = "number",
            },
            learnRate = {
              format = "double",
              type = "number",
            },
            learnRateStrategy = {
              type = "string",
            },
            lineSearchInitLearnRate = {
              format = "double",
              type = "number",
            },
            maxIteration = {
              format = "int64",
              type = "string",
            },
            minRelProgress = {
              format = "double",
              type = "number",
            },
            warmStart = {
              type = "boolean",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    CategoricalValue = {
      description = "Representative value of a categorical feature.",
      id = "CategoricalValue",
      properties = {
        categoryCounts = {
          description = "Counts of all categories for the categorical feature. If there are more than ten categories, we return top ten (by count) and return one more CategoryCount with category \"_OTHER_\" and count as aggregate counts of remaining categories.",
          items = {
            ["$ref"] = "CategoryCount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CategoryCount = {
      description = "Represents the count of a single category within the cluster.",
      id = "CategoryCount",
      properties = {
        category = {
          description = "The name of category.",
          type = "string",
        },
        count = {
          description = "The count of training samples matching the category within the cluster.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CloneDefinition = {
      id = "CloneDefinition",
      properties = {
        baseTableReference = {
          ["$ref"] = "TableReference",
          description = "[Required] Reference describing the ID of the table that was cloned.",
        },
        cloneTime = {
          description = "[Required] The time at which the base table was cloned. This value is reported in the JSON response using RFC3339 format.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    Cluster = {
      description = "Message containing the information about one cluster.",
      id = "Cluster",
      properties = {
        centroidId = {
          description = "Centroid id.",
          format = "int64",
          type = "string",
        },
        count = {
          description = "Count of training data rows that were assigned to this cluster.",
          format = "int64",
          type = "string",
        },
        featureValues = {
          description = "Values of highly variant features for this cluster.",
          items = {
            ["$ref"] = "FeatureValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ClusterInfo = {
      description = "Information about a single cluster for clustering model.",
      id = "ClusterInfo",
      properties = {
        centroidId = {
          description = "Centroid id.",
          format = "int64",
          type = "string",
        },
        clusterRadius = {
          description = "Cluster radius, the average distance from centroid to each point assigned to the cluster.",
          format = "double",
          type = "number",
        },
        clusterSize = {
          description = "Cluster size, the total number of points assigned to the cluster.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Clustering = {
      id = "Clustering",
      properties = {
        fields = {
          description = "[Repeated] One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ClusteringMetrics = {
      description = "Evaluation metrics for clustering models.",
      id = "ClusteringMetrics",
      properties = {
        clusters = {
          description = "Information for all clusters.",
          items = {
            ["$ref"] = "Cluster",
          },
          type = "array",
        },
        daviesBouldinIndex = {
          description = "Davies-Bouldin index.",
          format = "double",
          type = "number",
        },
        meanSquaredDistance = {
          description = "Mean of squared distances between each sample to its cluster centroid.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ConfusionMatrix = {
      description = "Confusion matrix for multi-class classification models.",
      id = "ConfusionMatrix",
      properties = {
        confidenceThreshold = {
          description = "Confidence threshold used when computing the entries of the confusion matrix.",
          format = "double",
          type = "number",
        },
        rows = {
          description = "One row per actual label.",
          items = {
            ["$ref"] = "Row",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ConnectionProperty = {
      id = "ConnectionProperty",
      properties = {
        key = {
          description = "[Required] Name of the connection property to set.",
          type = "string",
        },
        value = {
          description = "[Required] Value of the connection property.",
          type = "string",
        },
      },
      type = "object",
    },
    CsvOptions = {
      id = "CsvOptions",
      properties = {
        allowJaggedRows = {
          description = "[Optional] Indicates if BigQuery should accept rows that are missing trailing optional columns. If true, BigQuery treats missing trailing columns as null values. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.",
          type = "boolean",
        },
        allowQuotedNewlines = {
          description = "[Optional] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.",
          type = "boolean",
        },
        encoding = {
          description = "[Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.",
          type = "string",
        },
        fieldDelimiter = {
          description = "[Optional] The separator for fields in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence \"\\t\" to specify a tab separator. The default value is a comma (',').",
          type = "string",
        },
        null_marker = {
          description = "[Optional] An custom string that will represent a NULL value in CSV import data.",
          type = "string",
        },
        preserveAsciiControlCharacters = {
          description = "[Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\\x00' to '\\x1F') when loading from CSV. Only applicable to CSV, ignored for other formats.",
          type = "boolean",
        },
        quote = {
          default = "\"",
          description = "[Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('\"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.",
          pattern = ".?",
          type = "string",
        },
        skipLeadingRows = {
          description = "[Optional] The number of rows at the top of a CSV file that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DataMaskingStatistics = {
      id = "DataMaskingStatistics",
      properties = {
        dataMaskingApplied = {
          default = "false",
          description = "[Output-only] [Preview] Whether any accessed data was protected by data masking. The actual evaluation is done by accessStats.masked_field_count > 0. Since this is only used for the discovery_doc generation purpose, as long as the type (boolean) matches, client library can leverage this. The actual evaluation of the variable is done else-where.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DataSplitResult = {
      description = "Data split result. This contains references to the training and evaluation data tables that were used to train the model.",
      id = "DataSplitResult",
      properties = {
        evaluationTable = {
          ["$ref"] = "TableReference",
          description = "Table reference of the evaluation data after split.",
        },
        testTable = {
          ["$ref"] = "TableReference",
          description = "Table reference of the test data after split.",
        },
        trainingTable = {
          ["$ref"] = "TableReference",
          description = "Table reference of the training data after split.",
        },
      },
      type = "object",
    },
    Dataset = {
      id = "Dataset",
      properties = {
        access = {
          description = "[Optional] An array of objects that define dataset access for one or more entities. You can set this property when inserting or updating a dataset in order to control who is allowed to access the data. If unspecified at dataset creation time, BigQuery adds default dataset access for the following entities: access.specialGroup: projectReaders; access.role: READER; access.specialGroup: projectWriters; access.role: WRITER; access.specialGroup: projectOwners; access.role: OWNER; access.userByEmail: [dataset creator email]; access.role: OWNER;",
          items = {
            properties = {
              dataset = {
                ["$ref"] = "DatasetAccessEntry",
                description = "[Pick one] A grant authorizing all resources of a particular type in a particular dataset access to this dataset. Only views are supported for now. The role field is not required when this field is set. If that dataset is deleted and re-created, its access needs to be granted again via an update operation.",
              },
              domain = {
                description = "[Pick one] A domain to grant access to. Any users signed in with the domain specified will be granted the specified access. Example: \"example.com\". Maps to IAM policy member \"domain:DOMAIN\".",
                type = "string",
              },
              groupByEmail = {
                description = "[Pick one] An email address of a Google Group to grant access to. Maps to IAM policy member \"group:GROUP\".",
                type = "string",
              },
              iamMember = {
                description = "[Pick one] Some other type of member that appears in the IAM Policy but isn't a user, group, domain, or special group.",
                type = "string",
              },
              role = {
                description = "[Required] An IAM role ID that should be granted to the user, group, or domain specified in this access entry. The following legacy mappings will be applied: OWNER  roles/bigquery.dataOwner WRITER  roles/bigquery.dataEditor READER  roles/bigquery.dataViewer This field will accept any of the above formats, but will return only the legacy format. For example, if you set this field to \"roles/bigquery.dataOwner\", it will be returned back as \"OWNER\".",
                type = "string",
              },
              routine = {
                ["$ref"] = "RoutineReference",
                description = "[Pick one] A routine from a different dataset to grant access to. Queries executed against that routine will have read access to views/tables/routines in this dataset. Only UDF is supported for now. The role field is not required when this field is set. If that routine is updated by any user, access to the routine needs to be granted again via an update operation.",
              },
              specialGroup = {
                description = "[Pick one] A special group to grant access to. Possible values include: projectOwners: Owners of the enclosing project. projectReaders: Readers of the enclosing project. projectWriters: Writers of the enclosing project. allAuthenticatedUsers: All authenticated BigQuery users. Maps to similarly-named IAM members.",
                type = "string",
              },
              userByEmail = {
                description = "[Pick one] An email address of a user to grant access to. For example: fred@example.com. Maps to IAM policy member \"user:EMAIL\" or \"serviceAccount:EMAIL\".",
                type = "string",
              },
              view = {
                ["$ref"] = "TableReference",
                description = "[Pick one] A view from a different dataset to grant access to. Queries executed against that view will have read access to tables in this dataset. The role field is not required when this field is set. If that view is updated by any user, access to the view needs to be granted again via an update operation.",
              },
            },
            type = "object",
          },
          type = "array",
        },
        creationTime = {
          description = "[Output-only] The time when this dataset was created, in milliseconds since the epoch.",
          format = "int64",
          type = "string",
        },
        datasetReference = {
          ["$ref"] = "DatasetReference",
          description = "[Required] A reference that identifies the dataset.",
        },
        defaultCollation = {
          description = "[Output-only] The default collation of the dataset.",
          type = "string",
        },
        defaultEncryptionConfiguration = {
          ["$ref"] = "EncryptionConfiguration",
        },
        defaultPartitionExpirationMs = {
          description = "[Optional] The default partition expiration for all partitioned tables in the dataset, in milliseconds. Once this property is set, all newly-created partitioned tables in the dataset will have an expirationMs property in the timePartitioning settings set to this value, and changing the value will only affect new tables, not existing ones. The storage in a partition will have an expiration time of its partition time plus this value. Setting this property overrides the use of defaultTableExpirationMs for partitioned tables: only one of defaultTableExpirationMs and defaultPartitionExpirationMs will be used for any new partitioned table. If you provide an explicit timePartitioning.expirationMs when creating or updating a partitioned table, that value takes precedence over the default partition expiration time indicated by this property.",
          format = "int64",
          type = "string",
        },
        defaultTableExpirationMs = {
          description = "[Optional] The default lifetime of all tables in the dataset, in milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this property is set, all newly-created tables in the dataset will have an expirationTime property set to the creation time plus the value in this property, and changing the value will only affect new tables, not existing ones. When the expirationTime for a given table is reached, that table will be deleted automatically. If a table's expirationTime is modified or removed before the table expires, or if you provide an explicit expirationTime when creating a table, that value takes precedence over the default expiration time indicated by this property.",
          format = "int64",
          type = "string",
        },
        description = {
          description = "[Optional] A user-friendly description of the dataset.",
          type = "string",
        },
        etag = {
          description = "[Output-only] A hash of the resource.",
          type = "string",
        },
        friendlyName = {
          description = "[Optional] A descriptive name for the dataset.",
          type = "string",
        },
        id = {
          description = "[Output-only] The fully-qualified unique name of the dataset in the format projectId:datasetId. The dataset name without the project name is given in the datasetId field. When creating a new dataset, leave this field blank, and instead specify the datasetId field.",
          type = "string",
        },
        isCaseInsensitive = {
          description = "[Optional] Indicates if table names are case insensitive in the dataset.",
          type = "boolean",
        },
        kind = {
          default = "bigquery#dataset",
          description = "[Output-only] The resource type.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See Creating and Updating Dataset Labels for more information.",
          type = "object",
        },
        lastModifiedTime = {
          description = "[Output-only] The date when this dataset or any of its tables was last modified, in milliseconds since the epoch.",
          format = "int64",
          type = "string",
        },
        location = {
          description = "The geographic location where the dataset should reside. The default value is US. See details at https://cloud.google.com/bigquery/docs/locations.",
          type = "string",
        },
        maxTimeTravelHours = {
          description = "[Optional] Number of hours for the max time travel for all tables in the dataset.",
          format = "int64",
          type = "string",
        },
        satisfiesPzs = {
          description = "[Output-only] Reserved for future use.",
          type = "boolean",
        },
        selfLink = {
          description = "[Output-only] A URL that can be used to access the resource again. You can use this URL in Get or Update requests to the resource.",
          type = "string",
        },
        storageBillingModel = {
          description = "[Optional] Storage billing model to be used for all tables in the dataset. Can be set to PHYSICAL. Default is LOGICAL.",
          type = "string",
        },
        tags = {
          description = "[Optional]The tags associated with this dataset. Tag keys are globally unique.",
          items = {
            properties = {
              tagKey = {
                description = "[Required] The namespaced friendly name of the tag key, e.g. \"12345/environment\" where 12345 is org id.",
                type = "string",
              },
              tagValue = {
                description = "[Required] Friendly short name of the tag value, e.g. \"production\".",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatasetAccessEntry = {
      id = "DatasetAccessEntry",
      properties = {
        dataset = {
          ["$ref"] = "DatasetReference",
          description = "[Required] The dataset this entry applies to.",
        },
        targetTypes = {
          items = {
            enum = {
              "TARGET_TYPE_UNSPECIFIED",
              "VIEWS",
              "ROUTINES",
            },
            enumDescriptions = {
              "Do not use. You must set a target type explicitly.",
              "This entry applies to views in the dataset.",
              "This entry applies to routines in the dataset.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatasetList = {
      id = "DatasetList",
      properties = {
        datasets = {
          description = "An array of the dataset resources in the project. Each resource contains basic information. For full information about a particular dataset resource, use the Datasets: get method. This property is omitted when there are no datasets in the project.",
          items = {
            properties = {
              datasetReference = {
                ["$ref"] = "DatasetReference",
                description = "The dataset reference. Use this property to access specific parts of the dataset's ID, such as project ID or dataset ID.",
              },
              friendlyName = {
                description = "A descriptive name for the dataset, if one exists.",
                type = "string",
              },
              id = {
                description = "The fully-qualified, unique, opaque ID of the dataset.",
                type = "string",
              },
              kind = {
                default = "bigquery#dataset",
                description = "The resource type. This property always returns the value \"bigquery#dataset\".",
                type = "string",
              },
              labels = {
                additionalProperties = {
                  type = "string",
                },
                description = "The labels associated with this dataset. You can use these to organize and group your datasets.",
                type = "object",
              },
              location = {
                description = "The geographic location where the data resides.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        etag = {
          description = "A hash value of the results page. You can use this property to determine if the page has changed since the last request.",
          type = "string",
        },
        kind = {
          default = "bigquery#datasetList",
          description = "The list type. This property always returns the value \"bigquery#datasetList\".",
          type = "string",
        },
        nextPageToken = {
          description = "A token that can be used to request the next results page. This property is omitted on the final results page.",
          type = "string",
        },
      },
      type = "object",
    },
    DatasetReference = {
      id = "DatasetReference",
      properties = {
        datasetId = {
          annotations = {
            required = {
              "bigquery.datasets.update",
            },
          },
          description = "[Required] A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.",
          type = "string",
        },
        projectId = {
          annotations = {
            required = {
              "bigquery.datasets.update",
            },
          },
          description = "[Optional] The ID of the project containing this dataset.",
          type = "string",
        },
      },
      type = "object",
    },
    DestinationTableProperties = {
      id = "DestinationTableProperties",
      properties = {
        description = {
          description = "[Optional] The description for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current description is provided, the job will fail.",
          type = "string",
        },
        expirationTime = {
          description = "[Internal] This field is for Google internal use only.",
          format = "date-time",
          type = "string",
        },
        friendlyName = {
          description = "[Optional] The friendly name for the destination table. This will only be used if the destination table is newly created. If the table already exists and a value different than the current friendly name is provided, the job will fail.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "[Optional] The labels associated with this table. You can use these to organize and group your tables. This will only be used if the destination table is newly created. If the table already exists and labels are different than the current labels are provided, the job will fail.",
          type = "object",
        },
      },
      type = "object",
    },
    DimensionalityReductionMetrics = {
      description = "Model evaluation metrics for dimensionality reduction models.",
      id = "DimensionalityReductionMetrics",
      properties = {
        totalExplainedVarianceRatio = {
          description = "Total percentage of variance explained by the selected principal components.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    DmlStatistics = {
      id = "DmlStatistics",
      properties = {
        deletedRowCount = {
          description = "Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE statements.",
          format = "int64",
          type = "string",
        },
        insertedRowCount = {
          description = "Number of inserted Rows. Populated by DML INSERT and MERGE statements.",
          format = "int64",
          type = "string",
        },
        updatedRowCount = {
          description = "Number of updated Rows. Populated by DML UPDATE and MERGE statements.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DoubleCandidates = {
      description = "Discrete candidates of a double hyperparameter.",
      id = "DoubleCandidates",
      properties = {
        candidates = {
          description = "Candidates for the double parameter in increasing order.",
          items = {
            format = "double",
            type = "number",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DoubleHparamSearchSpace = {
      description = "Search space for a double hyperparameter.",
      id = "DoubleHparamSearchSpace",
      properties = {
        candidates = {
          ["$ref"] = "DoubleCandidates",
          description = "Candidates of the double hyperparameter.",
        },
        range = {
          ["$ref"] = "DoubleRange",
          description = "Range of the double hyperparameter.",
        },
      },
      type = "object",
    },
    DoubleRange = {
      description = "Range of a double hyperparameter.",
      id = "DoubleRange",
      properties = {
        max = {
          description = "Max value of the double parameter.",
          format = "double",
          type = "number",
        },
        min = {
          description = "Min value of the double parameter.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    EncryptionConfiguration = {
      id = "EncryptionConfiguration",
      properties = {
        kmsKeyName = {
          description = "[Optional] Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key.",
          type = "string",
        },
      },
      type = "object",
    },
    Entry = {
      description = "A single entry in the confusion matrix.",
      id = "Entry",
      properties = {
        itemCount = {
          description = "Number of items being predicted as this label.",
          format = "int64",
          type = "string",
        },
        predictedLabel = {
          description = "The predicted label. For confidence_threshold > 0, we will also add an entry indicating the number of items under the confidence threshold.",
          type = "string",
        },
      },
      type = "object",
    },
    ErrorProto = {
      id = "ErrorProto",
      properties = {
        debugInfo = {
          description = "Debugging information. This property is internal to Google and should not be used.",
          type = "string",
        },
        location = {
          description = "Specifies where the error occurred, if present.",
          type = "string",
        },
        message = {
          description = "A human-readable description of the error.",
          type = "string",
        },
        reason = {
          description = "A short error code that summarizes the error.",
          type = "string",
        },
      },
      type = "object",
    },
    EvaluationMetrics = {
      description = "Evaluation metrics of a model. These are either computed on all training data or just the eval data based on whether eval data was used during training. These are not present for imported models.",
      id = "EvaluationMetrics",
      properties = {
        arimaForecastingMetrics = {
          ["$ref"] = "ArimaForecastingMetrics",
          description = "Populated for ARIMA models.",
        },
        binaryClassificationMetrics = {
          ["$ref"] = "BinaryClassificationMetrics",
          description = "Populated for binary classification/classifier models.",
        },
        clusteringMetrics = {
          ["$ref"] = "ClusteringMetrics",
          description = "Populated for clustering models.",
        },
        dimensionalityReductionMetrics = {
          ["$ref"] = "DimensionalityReductionMetrics",
          description = "Evaluation metrics when the model is a dimensionality reduction model, which currently includes PCA.",
        },
        multiClassClassificationMetrics = {
          ["$ref"] = "MultiClassClassificationMetrics",
          description = "Populated for multi-class classification/classifier models.",
        },
        rankingMetrics = {
          ["$ref"] = "RankingMetrics",
          description = "Populated for implicit feedback type matrix factorization models.",
        },
        regressionMetrics = {
          ["$ref"] = "RegressionMetrics",
          description = "Populated for regression models and explicit feedback type matrix factorization models.",
        },
      },
      type = "object",
    },
    ExplainQueryStage = {
      id = "ExplainQueryStage",
      properties = {
        completedParallelInputs = {
          description = "Number of parallel input segments completed.",
          format = "int64",
          type = "string",
        },
        computeMsAvg = {
          description = "Milliseconds the average shard spent on CPU-bound tasks.",
          format = "int64",
          type = "string",
        },
        computeMsMax = {
          description = "Milliseconds the slowest shard spent on CPU-bound tasks.",
          format = "int64",
          type = "string",
        },
        computeRatioAvg = {
          description = "Relative amount of time the average shard spent on CPU-bound tasks.",
          format = "double",
          type = "number",
        },
        computeRatioMax = {
          description = "Relative amount of time the slowest shard spent on CPU-bound tasks.",
          format = "double",
          type = "number",
        },
        endMs = {
          description = "Stage end time represented as milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "Unique ID for stage within plan.",
          format = "int64",
          type = "string",
        },
        inputStages = {
          description = "IDs for stages that are inputs to this stage.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Human-readable name for stage.",
          type = "string",
        },
        parallelInputs = {
          description = "Number of parallel input segments to be processed.",
          format = "int64",
          type = "string",
        },
        readMsAvg = {
          description = "Milliseconds the average shard spent reading input.",
          format = "int64",
          type = "string",
        },
        readMsMax = {
          description = "Milliseconds the slowest shard spent reading input.",
          format = "int64",
          type = "string",
        },
        readRatioAvg = {
          description = "Relative amount of time the average shard spent reading input.",
          format = "double",
          type = "number",
        },
        readRatioMax = {
          description = "Relative amount of time the slowest shard spent reading input.",
          format = "double",
          type = "number",
        },
        recordsRead = {
          description = "Number of records read into the stage.",
          format = "int64",
          type = "string",
        },
        recordsWritten = {
          description = "Number of records written by the stage.",
          format = "int64",
          type = "string",
        },
        shuffleOutputBytes = {
          description = "Total number of bytes written to shuffle.",
          format = "int64",
          type = "string",
        },
        shuffleOutputBytesSpilled = {
          description = "Total number of bytes written to shuffle and spilled to disk.",
          format = "int64",
          type = "string",
        },
        slotMs = {
          description = "Slot-milliseconds used by the stage.",
          format = "int64",
          type = "string",
        },
        startMs = {
          description = "Stage start time represented as milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        status = {
          description = "Current status for the stage.",
          type = "string",
        },
        steps = {
          description = "List of operations within the stage in dependency order (approximately chronological).",
          items = {
            ["$ref"] = "ExplainQueryStep",
          },
          type = "array",
        },
        waitMsAvg = {
          description = "Milliseconds the average shard spent waiting to be scheduled.",
          format = "int64",
          type = "string",
        },
        waitMsMax = {
          description = "Milliseconds the slowest shard spent waiting to be scheduled.",
          format = "int64",
          type = "string",
        },
        waitRatioAvg = {
          description = "Relative amount of time the average shard spent waiting to be scheduled.",
          format = "double",
          type = "number",
        },
        waitRatioMax = {
          description = "Relative amount of time the slowest shard spent waiting to be scheduled.",
          format = "double",
          type = "number",
        },
        writeMsAvg = {
          description = "Milliseconds the average shard spent on writing output.",
          format = "int64",
          type = "string",
        },
        writeMsMax = {
          description = "Milliseconds the slowest shard spent on writing output.",
          format = "int64",
          type = "string",
        },
        writeRatioAvg = {
          description = "Relative amount of time the average shard spent on writing output.",
          format = "double",
          type = "number",
        },
        writeRatioMax = {
          description = "Relative amount of time the slowest shard spent on writing output.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ExplainQueryStep = {
      id = "ExplainQueryStep",
      properties = {
        kind = {
          description = "Machine-readable operation type.",
          type = "string",
        },
        substeps = {
          description = "Human-readable stage descriptions.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Explanation = {
      description = "Explanation for a single feature.",
      id = "Explanation",
      properties = {
        attribution = {
          description = "Attribution of feature.",
          format = "double",
          type = "number",
        },
        featureName = {
          description = "The full feature name. For non-numerical features, will be formatted like `.`. Overall size of feature name will always be truncated to first 120 characters.",
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
    ExternalDataConfiguration = {
      id = "ExternalDataConfiguration",
      properties = {
        autodetect = {
          description = "Try to detect schema and format options automatically. Any option specified explicitly will be honored.",
          type = "boolean",
        },
        avroOptions = {
          ["$ref"] = "AvroOptions",
          description = "Additional properties to set if sourceFormat is set to Avro.",
        },
        bigtableOptions = {
          ["$ref"] = "BigtableOptions",
          description = "[Optional] Additional options if sourceFormat is set to BIGTABLE.",
        },
        compression = {
          description = "[Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.",
          type = "string",
        },
        connectionId = {
          description = "[Optional, Trusted Tester] Connection for external data source.",
          type = "string",
        },
        csvOptions = {
          ["$ref"] = "CsvOptions",
          description = "Additional properties to set if sourceFormat is set to CSV.",
        },
        decimalTargetTypes = {
          description = "[Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is [\"NUMERIC\", \"BIGNUMERIC\"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, [\"BIGNUMERIC\", \"NUMERIC\"] is the same as [\"NUMERIC\", \"BIGNUMERIC\"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to [\"NUMERIC\", \"STRING\"] for ORC and [\"NUMERIC\"] for the other file formats.",
          items = {
            type = "string",
          },
          type = "array",
        },
        googleSheetsOptions = {
          ["$ref"] = "GoogleSheetsOptions",
          description = "[Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.",
        },
        hivePartitioningOptions = {
          ["$ref"] = "HivePartitioningOptions",
          description = "[Optional] Options to configure hive partitioning support.",
        },
        ignoreUnknownValues = {
          description = "[Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.",
          type = "boolean",
        },
        maxBadRecords = {
          description = "[Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.",
          format = "int32",
          type = "integer",
        },
        metadataCacheMode = {
          description = "[Optional] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.",
          type = "string",
        },
        objectMetadata = {
          description = "ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source_uris. If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is the only supported Object Metadata type.",
          type = "string",
        },
        parquetOptions = {
          ["$ref"] = "ParquetOptions",
          description = "Additional properties to set if sourceFormat is set to Parquet.",
        },
        referenceFileSchemaUri = {
          description = "[Optional] Provide a referencing file with the expected table schema. Enabled for the format: AVRO, PARQUET, ORC.",
          type = "string",
        },
        schema = {
          ["$ref"] = "TableSchema",
          description = "[Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.",
        },
        sourceFormat = {
          description = "[Required] The data format. For CSV files, specify \"CSV\". For Google sheets, specify \"GOOGLE_SHEETS\". For newline-delimited JSON, specify \"NEWLINE_DELIMITED_JSON\". For Avro files, specify \"AVRO\". For Google Cloud Datastore backups, specify \"DATASTORE_BACKUP\". [Beta] For Google Cloud Bigtable, specify \"BIGTABLE\".",
          type = "string",
        },
        sourceUris = {
          description = "[Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FeatureValue = {
      description = "Representative value of a single feature within the cluster.",
      id = "FeatureValue",
      properties = {
        categoricalValue = {
          ["$ref"] = "CategoricalValue",
          description = "The categorical feature value.",
        },
        featureColumn = {
          description = "The feature column name.",
          type = "string",
        },
        numericalValue = {
          description = "The numerical feature value. This is the centroid value for this feature.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GetIamPolicyRequest = {
      description = "Request message for `GetIamPolicy` method.",
      id = "GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GetPolicyOptions",
          description = "OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.",
        },
      },
      type = "object",
    },
    GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GetQueryResultsResponse = {
      id = "GetQueryResultsResponse",
      properties = {
        cacheHit = {
          description = "Whether the query result was fetched from the query cache.",
          type = "boolean",
        },
        errors = {
          description = "[Output-only] The first errors or warnings encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.",
          items = {
            ["$ref"] = "ErrorProto",
          },
          type = "array",
        },
        etag = {
          description = "A hash of this response.",
          type = "string",
        },
        jobComplete = {
          description = "Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available.",
          type = "boolean",
        },
        jobReference = {
          ["$ref"] = "JobReference",
          description = "Reference to the BigQuery Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults).",
        },
        kind = {
          default = "bigquery#getQueryResultsResponse",
          description = "The resource type of the response.",
          type = "string",
        },
        numDmlAffectedRows = {
          description = "[Output-only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.",
          format = "int64",
          type = "string",
        },
        pageToken = {
          description = "A token used for paging results.",
          type = "string",
        },
        rows = {
          description = "An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above. Present only when the query completes successfully.",
          items = {
            ["$ref"] = "TableRow",
          },
          type = "array",
        },
        schema = {
          ["$ref"] = "TableSchema",
          description = "The schema of the results. Present only when the query completes successfully.",
        },
        totalBytesProcessed = {
          description = "The total number of bytes processed for this query.",
          format = "int64",
          type = "string",
        },
        totalRows = {
          description = "The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results. Present only when the query completes successfully.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    GetServiceAccountResponse = {
      id = "GetServiceAccountResponse",
      properties = {
        email = {
          description = "The service account email address.",
          type = "string",
        },
        kind = {
          default = "bigquery#getServiceAccountResponse",
          description = "The resource type of the response.",
          type = "string",
        },
      },
      type = "object",
    },
    GlobalExplanation = {
      description = "Global explanations containing the top most important features after training.",
      id = "GlobalExplanation",
      properties = {
        classLabel = {
          description = "Class label for this set of global explanations. Will be empty/null for binary logistic and linear regression models. Sorted alphabetically in descending order.",
          type = "string",
        },
        explanations = {
          description = "A list of the top global explanations. Sorted by absolute value of attribution in descending order.",
          items = {
            ["$ref"] = "Explanation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleSheetsOptions = {
      id = "GoogleSheetsOptions",
      properties = {
        range = {
          description = "[Optional] Range of a sheet to query from. Only used when non-empty. Typical format: sheet_name!top_left_cell_id:bottom_right_cell_id For example: sheet1!A1:B20",
          type = "string",
        },
        skipLeadingRows = {
          description = "[Optional] The number of rows at the top of a sheet that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows that should be skipped. When autodetect is on, behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    HivePartitioningOptions = {
      id = "HivePartitioningOptions",
      properties = {
        mode = {
          description = "[Optional] When set, what mode of hive partitioning to use when reading data. The following modes are supported. (1) AUTO: automatically infer partition key name(s) and type(s). (2) STRINGS: automatically infer partition key name(s). All types are interpreted as strings. (3) CUSTOM: partition key schema is encoded in the source URI prefix. Not all storage formats support hive partitioning. Requesting hive partitioning on an unsupported format will lead to an error. Currently supported types include: AVRO, CSV, JSON, ORC and Parquet.",
          type = "string",
        },
        requirePartitionFilter = {
          description = "[Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified. Note that this field should only be true when creating a permanent external table or querying a temporary external table. Hive-partitioned loads with requirePartitionFilter explicitly set to true will fail.",
          type = "boolean",
        },
        sourceUriPrefix = {
          description = "[Optional] When hive partition detection is requested, a common prefix for all source uris should be supplied. The prefix must end immediately before the partition key encoding begins. For example, consider files following this data layout. gs://bucket/path_to_table/dt=2019-01-01/country=BR/id=7/file.avro gs://bucket/path_to_table/dt=2018-12-31/country=CA/id=3/file.avro When hive partitioning is requested with either AUTO or STRINGS detection, the common prefix can be either of gs://bucket/path_to_table or gs://bucket/path_to_table/ (trailing slash does not matter).",
          type = "string",
        },
      },
      type = "object",
    },
    HparamSearchSpaces = {
      description = "Hyperparameter search spaces. These should be a subset of training_options.",
      id = "HparamSearchSpaces",
      properties = {
        activationFn = {
          ["$ref"] = "StringHparamSearchSpace",
          description = "Activation functions of neural network models.",
        },
        batchSize = {
          ["$ref"] = "IntHparamSearchSpace",
          description = "Mini batch sample size.",
        },
        boosterType = {
          ["$ref"] = "StringHparamSearchSpace",
          description = "Booster type for boosted tree models.",
        },
        colsampleBylevel = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "Subsample ratio of columns for each level for boosted tree models.",
        },
        colsampleBynode = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "Subsample ratio of columns for each node(split) for boosted tree models.",
        },
        colsampleBytree = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "Subsample ratio of columns when constructing each tree for boosted tree models.",
        },
        dartNormalizeType = {
          ["$ref"] = "StringHparamSearchSpace",
          description = "Dart normalization type for boosted tree models.",
        },
        dropout = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "Dropout probability for dnn model training and boosted tree models using dart booster.",
        },
        hiddenUnits = {
          ["$ref"] = "IntArrayHparamSearchSpace",
          description = "Hidden units for neural network models.",
        },
        l1Reg = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "L1 regularization coefficient.",
        },
        l2Reg = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "L2 regularization coefficient.",
        },
        learnRate = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "Learning rate of training jobs.",
        },
        maxTreeDepth = {
          ["$ref"] = "IntHparamSearchSpace",
          description = "Maximum depth of a tree for boosted tree models.",
        },
        minSplitLoss = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "Minimum split loss for boosted tree models.",
        },
        minTreeChildWeight = {
          ["$ref"] = "IntHparamSearchSpace",
          description = "Minimum sum of instance weight needed in a child for boosted tree models.",
        },
        numClusters = {
          ["$ref"] = "IntHparamSearchSpace",
          description = "Number of clusters for k-means.",
        },
        numFactors = {
          ["$ref"] = "IntHparamSearchSpace",
          description = "Number of latent factors to train on.",
        },
        numParallelTree = {
          ["$ref"] = "IntHparamSearchSpace",
          description = "Number of parallel trees for boosted tree models.",
        },
        optimizer = {
          ["$ref"] = "StringHparamSearchSpace",
          description = "Optimizer of TF models.",
        },
        subsample = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "Subsample the training data to grow tree to prevent overfitting for boosted tree models.",
        },
        treeMethod = {
          ["$ref"] = "StringHparamSearchSpace",
          description = "Tree construction algorithm for boosted tree models.",
        },
        walsAlpha = {
          ["$ref"] = "DoubleHparamSearchSpace",
          description = "Hyperparameter for matrix factoration when implicit feedback type is specified.",
        },
      },
      type = "object",
    },
    HparamTuningTrial = {
      description = "Training info of a trial in [hyperparameter tuning](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models.",
      id = "HparamTuningTrial",
      properties = {
        endTimeMs = {
          description = "Ending time of the trial.",
          format = "int64",
          type = "string",
        },
        errorMessage = {
          description = "Error message for FAILED and INFEASIBLE trial.",
          type = "string",
        },
        evalLoss = {
          description = "Loss computed on the eval data at the end of trial.",
          format = "double",
          type = "number",
        },
        evaluationMetrics = {
          ["$ref"] = "EvaluationMetrics",
          description = "Evaluation metrics of this trial calculated on the test data. Empty in Job API.",
        },
        hparamTuningEvaluationMetrics = {
          ["$ref"] = "EvaluationMetrics",
          description = "Hyperparameter tuning evaluation metrics of this trial calculated on the eval data. Unlike evaluation_metrics, only the fields corresponding to the hparam_tuning_objectives are set.",
        },
        hparams = {
          ["$ref"] = "TrainingOptions",
          description = "The hyperprameters selected for this trial.",
        },
        startTimeMs = {
          description = "Starting time of the trial.",
          format = "int64",
          type = "string",
        },
        status = {
          description = "The status of the trial.",
          enum = {
            "TRIAL_STATUS_UNSPECIFIED",
            "NOT_STARTED",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
            "INFEASIBLE",
            "STOPPED_EARLY",
          },
          enumDescriptions = {
            "",
            "Scheduled but not started.",
            "Running state.",
            "The trial succeeded.",
            "The trial failed.",
            "The trial is infeasible due to the invalid params.",
            "Trial stopped early because it's not promising.",
          },
          type = "string",
        },
        trainingLoss = {
          description = "Loss computed on the training data at the end of trial.",
          format = "double",
          type = "number",
        },
        trialId = {
          description = "1-based index of the trial.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    IndexUnusedReason = {
      id = "IndexUnusedReason",
      properties = {
        base_table = {
          ["$ref"] = "TableReference",
          description = "[Output-only] Specifies the base table involved in the reason that no search index was used.",
        },
        code = {
          default = "$(reason.code)",
          description = "[Output-only] Specifies the high-level reason for the scenario when no search index was used.",
          type = "string",
        },
        index_name = {
          default = "$(reason.index_name)",
          description = "[Output-only] Specifies the name of the unused search index, if available.",
          type = "string",
        },
        message = {
          default = "$(reason.message)",
          description = "[Output-only] Free form human-readable reason for the scenario when no search index was used.",
          type = "string",
        },
      },
      type = "object",
    },
    IntArray = {
      description = "An array of int.",
      id = "IntArray",
      properties = {
        elements = {
          description = "Elements in the int array.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IntArrayHparamSearchSpace = {
      description = "Search space for int array.",
      id = "IntArrayHparamSearchSpace",
      properties = {
        candidates = {
          description = "Candidates for the int array parameter.",
          items = {
            ["$ref"] = "IntArray",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IntCandidates = {
      description = "Discrete candidates of an int hyperparameter.",
      id = "IntCandidates",
      properties = {
        candidates = {
          description = "Candidates for the int parameter in increasing order.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IntHparamSearchSpace = {
      description = "Search space for an int hyperparameter.",
      id = "IntHparamSearchSpace",
      properties = {
        candidates = {
          ["$ref"] = "IntCandidates",
          description = "Candidates of the int hyperparameter.",
        },
        range = {
          ["$ref"] = "IntRange",
          description = "Range of the int hyperparameter.",
        },
      },
      type = "object",
    },
    IntRange = {
      description = "Range of an int hyperparameter.",
      id = "IntRange",
      properties = {
        max = {
          description = "Max value of the int parameter.",
          format = "int64",
          type = "string",
        },
        min = {
          description = "Min value of the int parameter.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    IterationResult = {
      id = "IterationResult",
      properties = {
        durationMs = {
          description = "Time taken to run the iteration in milliseconds.",
          format = "int64",
          type = "string",
        },
        evalLoss = {
          description = "Loss computed on the eval data at the end of iteration.",
          format = "double",
          type = "number",
        },
        index = {
          description = "Index of the iteration, 0 based.",
          format = "int32",
          type = "integer",
        },
        learnRate = {
          description = "Learn rate used for this iteration.",
          format = "double",
          type = "number",
        },
        trainingLoss = {
          description = "Loss computed on the training data at the end of iteration.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Job = {
      id = "Job",
      properties = {
        configuration = {
          ["$ref"] = "JobConfiguration",
          description = "[Required] Describes the job configuration.",
        },
        etag = {
          description = "[Output-only] A hash of this resource.",
          type = "string",
        },
        id = {
          description = "[Output-only] Opaque ID field of the job",
          type = "string",
        },
        jobReference = {
          ["$ref"] = "JobReference",
          description = "[Optional] Reference describing the unique-per-user name of the job.",
        },
        kind = {
          default = "bigquery#job",
          description = "[Output-only] The type of the resource.",
          type = "string",
        },
        selfLink = {
          description = "[Output-only] A URL that can be used to access this resource again.",
          type = "string",
        },
        statistics = {
          ["$ref"] = "JobStatistics",
          description = "[Output-only] Information about the job, including starting time and ending time of the job.",
        },
        status = {
          ["$ref"] = "JobStatus",
          description = "[Output-only] The status of this job. Examine this value when polling an asynchronous job to see if the job is complete.",
        },
        user_email = {
          description = "[Output-only] Email address of the user who ran the job.",
          type = "string",
        },
      },
      type = "object",
    },
    JobCancelResponse = {
      id = "JobCancelResponse",
      properties = {
        job = {
          ["$ref"] = "Job",
          description = "The final state of the job.",
        },
        kind = {
          default = "bigquery#jobCancelResponse",
          description = "The resource type of the response.",
          type = "string",
        },
      },
      type = "object",
    },
    JobConfiguration = {
      id = "JobConfiguration",
      properties = {
        copy = {
          ["$ref"] = "JobConfigurationTableCopy",
          description = "[Pick one] Copies a table.",
        },
        dryRun = {
          description = "[Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined.",
          type = "boolean",
        },
        extract = {
          ["$ref"] = "JobConfigurationExtract",
          description = "[Pick one] Configures an extract job.",
        },
        jobTimeoutMs = {
          description = "[Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.",
          format = "int64",
          type = "string",
        },
        jobType = {
          description = "[Output-only] The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.",
          type = "object",
        },
        load = {
          ["$ref"] = "JobConfigurationLoad",
          description = "[Pick one] Configures a load job.",
        },
        query = {
          ["$ref"] = "JobConfigurationQuery",
          description = "[Pick one] Configures a query job.",
        },
      },
      type = "object",
    },
    JobConfigurationExtract = {
      id = "JobConfigurationExtract",
      properties = {
        compression = {
          description = "[Optional] The compression type to use for exported files. Possible values include GZIP, DEFLATE, SNAPPY, and NONE. The default value is NONE. DEFLATE and SNAPPY are only supported for Avro. Not applicable when extracting models.",
          type = "string",
        },
        destinationFormat = {
          description = "[Optional] The exported file format. Possible values include CSV, NEWLINE_DELIMITED_JSON, PARQUET or AVRO for tables and ML_TF_SAVED_MODEL or ML_XGBOOST_BOOSTER for models. The default value for tables is CSV. Tables with nested or repeated fields cannot be exported as CSV. The default value for models is ML_TF_SAVED_MODEL.",
          type = "string",
        },
        destinationUri = {
          description = "[Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as necessary. The fully-qualified Google Cloud Storage URI where the extracted table should be written.",
          type = "string",
        },
        destinationUris = {
          description = "[Pick one] A list of fully-qualified Google Cloud Storage URIs where the extracted table should be written.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fieldDelimiter = {
          description = "[Optional] Delimiter to use between fields in the exported data. Default is ','. Not applicable when extracting models.",
          type = "string",
        },
        printHeader = {
          default = "true",
          description = "[Optional] Whether to print out a header row in the results. Default is true. Not applicable when extracting models.",
          type = "boolean",
        },
        sourceModel = {
          ["$ref"] = "ModelReference",
          description = "A reference to the model being exported.",
        },
        sourceTable = {
          ["$ref"] = "TableReference",
          description = "A reference to the table being exported.",
        },
        useAvroLogicalTypes = {
          description = "[Optional] If destinationFormat is set to \"AVRO\", this flag indicates whether to enable extracting applicable column types (such as TIMESTAMP) to their corresponding AVRO logical types (timestamp-micros), instead of only using their raw types (avro-long). Not applicable when extracting models.",
          type = "boolean",
        },
      },
      type = "object",
    },
    JobConfigurationLoad = {
      id = "JobConfigurationLoad",
      properties = {
        allowJaggedRows = {
          description = "[Optional] Accept rows that are missing trailing optional columns. The missing values are treated as nulls. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. Only applicable to CSV, ignored for other formats.",
          type = "boolean",
        },
        allowQuotedNewlines = {
          description = "Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.",
          type = "boolean",
        },
        autodetect = {
          description = "[Optional] Indicates if we should automatically infer the options and schema for CSV and JSON sources.",
          type = "boolean",
        },
        clustering = {
          ["$ref"] = "Clustering",
          description = "[Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.",
        },
        connectionProperties = {
          description = "Connection properties.",
          items = {
            ["$ref"] = "ConnectionProperty",
          },
          type = "array",
        },
        createDisposition = {
          description = "[Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.",
          type = "string",
        },
        createSession = {
          description = "If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs the load job in non-session mode.",
          type = "boolean",
        },
        decimalTargetTypes = {
          description = "[Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is [\"NUMERIC\", \"BIGNUMERIC\"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, [\"BIGNUMERIC\", \"NUMERIC\"] is the same as [\"NUMERIC\", \"BIGNUMERIC\"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to [\"NUMERIC\", \"STRING\"] for ORC and [\"NUMERIC\"] for the other file formats.",
          items = {
            type = "string",
          },
          type = "array",
        },
        destinationEncryptionConfiguration = {
          ["$ref"] = "EncryptionConfiguration",
          description = "Custom encryption configuration (e.g., Cloud KMS keys).",
        },
        destinationTable = {
          ["$ref"] = "TableReference",
          description = "[Required] The destination table to load the data into.",
        },
        destinationTableProperties = {
          ["$ref"] = "DestinationTableProperties",
          description = "[Beta] [Optional] Properties with which to create the destination table if it is new.",
        },
        encoding = {
          description = "[Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.",
          type = "string",
        },
        fieldDelimiter = {
          description = "[Optional] The separator for fields in a CSV file. The separator can be any ISO-8859-1 single-byte character. To use a character in the range 128-255, you must encode the character as UTF8. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence \"\\t\" to specify a tab separator. The default value is a comma (',').",
          type = "string",
        },
        hivePartitioningOptions = {
          ["$ref"] = "HivePartitioningOptions",
          description = "[Optional] Options to configure hive partitioning support.",
        },
        ignoreUnknownValues = {
          description = "[Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names",
          type = "boolean",
        },
        jsonExtension = {
          description = "[Optional] If sourceFormat is set to newline-delimited JSON, indicates whether it should be processed as a JSON variant such as GeoJSON. For a sourceFormat other than JSON, omit this field. If the sourceFormat is newline-delimited JSON: - for newline-delimited GeoJSON: set to GEOJSON.",
          type = "string",
        },
        maxBadRecords = {
          description = "[Optional] The maximum number of bad records that BigQuery can ignore when running the job. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV and JSON. The default value is 0, which requires that all records are valid.",
          format = "int32",
          type = "integer",
        },
        nullMarker = {
          description = "[Optional] Specifies a string that represents a null value in a CSV file. For example, if you specify \"\\N\", BigQuery interprets \"\\N\" as a null value when loading a CSV file. The default value is the empty string. If you set this property to a custom value, BigQuery throws an error if an empty string is present for all data types except for STRING and BYTE. For STRING and BYTE columns, BigQuery interprets the empty string as an empty value.",
          type = "string",
        },
        parquetOptions = {
          ["$ref"] = "ParquetOptions",
          description = "[Optional] Options to configure parquet support.",
        },
        preserveAsciiControlCharacters = {
          description = "[Optional] Preserves the embedded ASCII control characters (the first 32 characters in the ASCII-table, from '\\x00' to '\\x1F') when loading from CSV. Only applicable to CSV, ignored for other formats.",
          type = "boolean",
        },
        projectionFields = {
          description = "If sourceFormat is set to \"DATASTORE_BACKUP\", indicates which entity properties to load into BigQuery from a Cloud Datastore backup. Property names are case sensitive and must be top-level properties. If no properties are specified, BigQuery loads all properties. If any named property isn't found in the Cloud Datastore backup, an invalid error is returned in the job result.",
          items = {
            type = "string",
          },
          type = "array",
        },
        quote = {
          default = "\"",
          description = "[Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('\"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.",
          pattern = ".?",
          type = "string",
        },
        rangePartitioning = {
          ["$ref"] = "RangePartitioning",
          description = "[TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.",
        },
        referenceFileSchemaUri = {
          description = "User provided referencing file with the expected reader schema, Available for the format: AVRO, PARQUET, ORC.",
          type = "string",
        },
        schema = {
          ["$ref"] = "TableSchema",
          description = "[Optional] The schema for the destination table. The schema can be omitted if the destination table already exists, or if you're loading data from Google Cloud Datastore.",
        },
        schemaInline = {
          description = "[Deprecated] The inline schema. For CSV schemas, specify as \"Field1:Type1[,Field2:Type2]*\". For example, \"foo:STRING, bar:INTEGER, baz:FLOAT\".",
          type = "string",
        },
        schemaInlineFormat = {
          description = "[Deprecated] The format of the schemaInline property.",
          type = "string",
        },
        schemaUpdateOptions = {
          description = "Allows the schema of the destination table to be updated as a side effect of the load job if a schema is autodetected or supplied in the job configuration. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.",
          items = {
            type = "string",
          },
          type = "array",
        },
        skipLeadingRows = {
          description = "[Optional] The number of rows at the top of a CSV file that BigQuery will skip when loading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped.",
          format = "int32",
          type = "integer",
        },
        sourceFormat = {
          description = "[Optional] The format of the data files. For CSV files, specify \"CSV\". For datastore backups, specify \"DATASTORE_BACKUP\". For newline-delimited JSON, specify \"NEWLINE_DELIMITED_JSON\". For Avro, specify \"AVRO\". For parquet, specify \"PARQUET\". For orc, specify \"ORC\". The default value is CSV.",
          type = "string",
        },
        sourceUris = {
          description = "[Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups: Exactly one URI can be specified. Also, the '*' wildcard character is not allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        timePartitioning = {
          ["$ref"] = "TimePartitioning",
          description = "Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.",
        },
        useAvroLogicalTypes = {
          description = "[Optional] If sourceFormat is set to \"AVRO\", indicates whether to interpret logical types as the corresponding BigQuery data type (for example, TIMESTAMP), instead of using the raw type (for example, INTEGER).",
          type = "boolean",
        },
        writeDisposition = {
          description = "[Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.",
          type = "string",
        },
      },
      type = "object",
    },
    JobConfigurationQuery = {
      id = "JobConfigurationQuery",
      properties = {
        allowLargeResults = {
          default = "false",
          description = "[Optional] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size.",
          type = "boolean",
        },
        clustering = {
          ["$ref"] = "Clustering",
          description = "[Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.",
        },
        connectionProperties = {
          description = "Connection properties.",
          items = {
            ["$ref"] = "ConnectionProperty",
          },
          type = "array",
        },
        createDisposition = {
          description = "[Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.",
          type = "string",
        },
        createSession = {
          description = "If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode.",
          type = "boolean",
        },
        defaultDataset = {
          ["$ref"] = "DatasetReference",
          description = "[Optional] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.",
        },
        destinationEncryptionConfiguration = {
          ["$ref"] = "EncryptionConfiguration",
          description = "Custom encryption configuration (e.g., Cloud KMS keys).",
        },
        destinationTable = {
          ["$ref"] = "TableReference",
          description = "[Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. This property must be set for large results that exceed the maximum response size.",
        },
        flattenResults = {
          default = "true",
          description = "[Optional] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened.",
          type = "boolean",
        },
        maximumBillingTier = {
          default = "1",
          description = "[Optional] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge). If unspecified, this will be set to your project default.",
          format = "int32",
          type = "integer",
        },
        maximumBytesBilled = {
          description = "[Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.",
          format = "int64",
          type = "string",
        },
        parameterMode = {
          description = "Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.",
          type = "string",
        },
        preserveNulls = {
          description = "[Deprecated] This property is deprecated.",
          type = "boolean",
        },
        priority = {
          description = "[Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE.",
          type = "string",
        },
        query = {
          description = "[Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.",
          type = "string",
        },
        queryParameters = {
          description = "Query parameters for standard SQL queries.",
          items = {
            ["$ref"] = "QueryParameter",
          },
          type = "array",
        },
        rangePartitioning = {
          ["$ref"] = "RangePartitioning",
          description = "[TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.",
        },
        schemaUpdateOptions = {
          description = "Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tableDefinitions = {
          additionalProperties = {
            ["$ref"] = "ExternalDataConfiguration",
          },
          description = "[Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.",
          type = "object",
        },
        timePartitioning = {
          ["$ref"] = "TimePartitioning",
          description = "Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.",
        },
        useLegacySql = {
          default = "true",
          description = "Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.",
          type = "boolean",
        },
        useQueryCache = {
          default = "true",
          description = "[Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true.",
          type = "boolean",
        },
        userDefinedFunctionResources = {
          description = "Describes user-defined function resources used in the query.",
          items = {
            ["$ref"] = "UserDefinedFunctionResource",
          },
          type = "array",
        },
        writeDisposition = {
          description = "[Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.",
          type = "string",
        },
      },
      type = "object",
    },
    JobConfigurationTableCopy = {
      id = "JobConfigurationTableCopy",
      properties = {
        createDisposition = {
          description = "[Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.",
          type = "string",
        },
        destinationEncryptionConfiguration = {
          ["$ref"] = "EncryptionConfiguration",
          description = "Custom encryption configuration (e.g., Cloud KMS keys).",
        },
        destinationExpirationTime = {
          description = "[Optional] The time when the destination table expires. Expired tables will be deleted and their storage reclaimed.",
          type = "any",
        },
        destinationTable = {
          ["$ref"] = "TableReference",
          description = "[Required] The destination table",
        },
        operationType = {
          description = "[Optional] Supported operation types in table copy job.",
          type = "string",
        },
        sourceTable = {
          ["$ref"] = "TableReference",
          description = "[Pick one] Source table to copy.",
        },
        sourceTables = {
          description = "[Pick one] Source tables to copy.",
          items = {
            ["$ref"] = "TableReference",
          },
          type = "array",
        },
        writeDisposition = {
          description = "[Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.",
          type = "string",
        },
      },
      type = "object",
    },
    JobList = {
      id = "JobList",
      properties = {
        etag = {
          description = "A hash of this page of results.",
          type = "string",
        },
        jobs = {
          description = "List of jobs that were requested.",
          items = {
            properties = {
              configuration = {
                ["$ref"] = "JobConfiguration",
                description = "[Full-projection-only] Specifies the job configuration.",
              },
              errorResult = {
                ["$ref"] = "ErrorProto",
                description = "A result object that will be present only if the job has failed.",
              },
              id = {
                description = "Unique opaque ID of the job.",
                type = "string",
              },
              jobReference = {
                ["$ref"] = "JobReference",
                description = "Job reference uniquely identifying the job.",
              },
              kind = {
                default = "bigquery#job",
                description = "The resource type.",
                type = "string",
              },
              state = {
                description = "Running state of the job. When the state is DONE, errorResult can be checked to determine whether the job succeeded or failed.",
                type = "string",
              },
              statistics = {
                ["$ref"] = "JobStatistics",
                description = "[Output-only] Information about the job, including starting time and ending time of the job.",
              },
              status = {
                ["$ref"] = "JobStatus",
                description = "[Full-projection-only] Describes the state of the job.",
              },
              user_email = {
                description = "[Full-projection-only] Email address of the user who ran the job.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          default = "bigquery#jobList",
          description = "The resource type of the response.",
          type = "string",
        },
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    JobReference = {
      id = "JobReference",
      properties = {
        jobId = {
          annotations = {
            required = {
              "bigquery.jobs.getQueryResults",
            },
          },
          description = "[Required] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.",
          type = "string",
        },
        location = {
          description = "The geographic location of the job. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.",
          type = "string",
        },
        projectId = {
          annotations = {
            required = {
              "bigquery.jobs.getQueryResults",
            },
          },
          description = "[Required] The ID of the project containing this job.",
          type = "string",
        },
      },
      type = "object",
    },
    JobStatistics = {
      id = "JobStatistics",
      properties = {
        completionRatio = {
          description = "[TrustedTester] [Output-only] Job progress (0.0 -> 1.0) for LOAD and EXTRACT jobs.",
          format = "double",
          type = "number",
        },
        copy = {
          ["$ref"] = "JobStatistics5",
          description = "[Output-only] Statistics for a copy job.",
        },
        creationTime = {
          description = "[Output-only] Creation time of this job, in milliseconds since the epoch. This field will be present on all jobs.",
          format = "int64",
          type = "string",
        },
        dataMaskingStatistics = {
          ["$ref"] = "DataMaskingStatistics",
          description = "[Output-only] Statistics for data masking. Present only for query and extract jobs.",
        },
        endTime = {
          description = "[Output-only] End time of this job, in milliseconds since the epoch. This field will be present whenever a job is in the DONE state.",
          format = "int64",
          type = "string",
        },
        extract = {
          ["$ref"] = "JobStatistics4",
          description = "[Output-only] Statistics for an extract job.",
        },
        load = {
          ["$ref"] = "JobStatistics3",
          description = "[Output-only] Statistics for a load job.",
        },
        numChildJobs = {
          description = "[Output-only] Number of child jobs executed.",
          format = "int64",
          type = "string",
        },
        parentJobId = {
          description = "[Output-only] If this is a child job, the id of the parent.",
          type = "string",
        },
        query = {
          ["$ref"] = "JobStatistics2",
          description = "[Output-only] Statistics for a query job.",
        },
        quotaDeferments = {
          description = "[Output-only] Quotas which delayed this job's start time.",
          items = {
            type = "string",
          },
          type = "array",
        },
        reservationUsage = {
          description = "[Output-only] Job resource usage breakdown by reservation.",
          items = {
            properties = {
              name = {
                description = "[Output-only] Reservation name or \"unreserved\" for on-demand resources usage.",
                type = "string",
              },
              slotMs = {
                description = "[Output-only] Slot-milliseconds the job spent in the given reservation.",
                format = "int64",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        reservation_id = {
          description = "[Output-only] Name of the primary reservation assigned to this job. Note that this could be different than reservations reported in the reservation usage field if parent reservations were used to execute this job.",
          type = "string",
        },
        rowLevelSecurityStatistics = {
          ["$ref"] = "RowLevelSecurityStatistics",
          description = "[Output-only] [Preview] Statistics for row-level security. Present only for query and extract jobs.",
        },
        scriptStatistics = {
          ["$ref"] = "ScriptStatistics",
          description = "[Output-only] Statistics for a child job of a script.",
        },
        sessionInfo = {
          ["$ref"] = "SessionInfo",
          description = "[Output-only] [Preview] Information of the session if this job is part of one.",
        },
        startTime = {
          description = "[Output-only] Start time of this job, in milliseconds since the epoch. This field will be present when the job transitions from the PENDING state to either RUNNING or DONE.",
          format = "int64",
          type = "string",
        },
        totalBytesProcessed = {
          description = "[Output-only] [Deprecated] Use the bytes processed in the query statistics instead.",
          format = "int64",
          type = "string",
        },
        totalSlotMs = {
          description = "[Output-only] Slot-milliseconds for the job.",
          format = "int64",
          type = "string",
        },
        transactionInfo = {
          ["$ref"] = "TransactionInfo",
          description = "[Output-only] [Alpha] Information of the multi-statement transaction if this job is part of one.",
        },
      },
      type = "object",
    },
    JobStatistics2 = {
      id = "JobStatistics2",
      properties = {
        biEngineStatistics = {
          ["$ref"] = "BiEngineStatistics",
          description = "BI Engine specific Statistics. [Output only] BI Engine specific Statistics.",
        },
        billingTier = {
          description = "[Output only] Billing tier for the job.",
          format = "int32",
          type = "integer",
        },
        cacheHit = {
          description = "[Output only] Whether the query result was fetched from the query cache.",
          type = "boolean",
        },
        ddlAffectedRowAccessPolicyCount = {
          description = "[Output only] [Preview] The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.",
          format = "int64",
          type = "string",
        },
        ddlDestinationTable = {
          ["$ref"] = "TableReference",
          description = "[Output only] The DDL destination table. Present only for ALTER TABLE RENAME TO queries. Note that ddl_target_table is used just for its type information.",
        },
        ddlOperationPerformed = {
          description = "The DDL operation performed, possibly dependent on the pre-existence of the DDL target. Possible values (new values might be added in the future): \"CREATE\": The query created the DDL target. \"SKIP\": No-op. Example cases: the query is CREATE TABLE IF NOT EXISTS while the table already exists, or the query is DROP TABLE IF EXISTS while the table does not exist. \"REPLACE\": The query replaced the DDL target. Example case: the query is CREATE OR REPLACE TABLE, and the table already exists. \"DROP\": The query deleted the DDL target.",
          type = "string",
        },
        ddlTargetDataset = {
          ["$ref"] = "DatasetReference",
          description = "[Output only] The DDL target dataset. Present only for CREATE/ALTER/DROP SCHEMA queries.",
        },
        ddlTargetRoutine = {
          ["$ref"] = "RoutineReference",
          description = "The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries.",
        },
        ddlTargetRowAccessPolicy = {
          ["$ref"] = "RowAccessPolicyReference",
          description = "[Output only] [Preview] The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY queries.",
        },
        ddlTargetTable = {
          ["$ref"] = "TableReference",
          description = "[Output only] The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES queries.",
        },
        dmlStats = {
          ["$ref"] = "DmlStatistics",
          description = "[Output only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.",
        },
        estimatedBytesProcessed = {
          description = "[Output only] The original estimate of bytes processed for the job.",
          format = "int64",
          type = "string",
        },
        mlStatistics = {
          ["$ref"] = "MlStatistics",
          description = "[Output only] Statistics of a BigQuery ML training job.",
        },
        modelTraining = {
          ["$ref"] = "BigQueryModelTraining",
          description = "[Output only, Beta] Information about create model query job progress.",
        },
        modelTrainingCurrentIteration = {
          description = "[Output only, Beta] Deprecated; do not use.",
          format = "int32",
          type = "integer",
        },
        modelTrainingExpectedTotalIteration = {
          description = "[Output only, Beta] Deprecated; do not use.",
          format = "int64",
          type = "string",
        },
        numDmlAffectedRows = {
          description = "[Output only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.",
          format = "int64",
          type = "string",
        },
        queryPlan = {
          description = "[Output only] Describes execution plan for the query.",
          items = {
            ["$ref"] = "ExplainQueryStage",
          },
          type = "array",
        },
        referencedRoutines = {
          description = "[Output only] Referenced routines (persistent user-defined functions and stored procedures) for the job.",
          items = {
            ["$ref"] = "RoutineReference",
          },
          type = "array",
        },
        referencedTables = {
          description = "[Output only] Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list.",
          items = {
            ["$ref"] = "TableReference",
          },
          type = "array",
        },
        reservationUsage = {
          description = "[Output only] Job resource usage breakdown by reservation.",
          items = {
            properties = {
              name = {
                description = "[Output only] Reservation name or \"unreserved\" for on-demand resources usage.",
                type = "string",
              },
              slotMs = {
                description = "[Output only] Slot-milliseconds the job spent in the given reservation.",
                format = "int64",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        schema = {
          ["$ref"] = "TableSchema",
          description = "[Output only] The schema of the results. Present only for successful dry run of non-legacy SQL queries.",
        },
        searchStatistics = {
          ["$ref"] = "SearchStatistics",
          description = "[Output only] Search query specific statistics.",
        },
        sparkStatistics = {
          ["$ref"] = "SparkStatistics",
          description = "[Output only] Statistics of a Spark procedure job.",
        },
        statementType = {
          description = "The type of query statement, if valid. Possible values (new values might be added in the future): \"SELECT\": SELECT query. \"INSERT\": INSERT query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. \"UPDATE\": UPDATE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. \"DELETE\": DELETE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. \"MERGE\": MERGE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. \"ALTER_TABLE\": ALTER TABLE query. \"ALTER_VIEW\": ALTER VIEW query. \"ASSERT\": ASSERT condition AS 'description'. \"CREATE_FUNCTION\": CREATE FUNCTION query. \"CREATE_MODEL\": CREATE [OR REPLACE] MODEL ... AS SELECT ... . \"CREATE_PROCEDURE\": CREATE PROCEDURE query. \"CREATE_TABLE\": CREATE [OR REPLACE] TABLE without AS SELECT. \"CREATE_TABLE_AS_SELECT\": CREATE [OR REPLACE] TABLE ... AS SELECT ... . \"CREATE_VIEW\": CREATE [OR REPLACE] VIEW ... AS SELECT ... . \"DROP_FUNCTION\" : DROP FUNCTION query. \"DROP_PROCEDURE\": DROP PROCEDURE query. \"DROP_TABLE\": DROP TABLE query. \"DROP_VIEW\": DROP VIEW query.",
          type = "string",
        },
        timeline = {
          description = "[Output only] [Beta] Describes a timeline of job execution.",
          items = {
            ["$ref"] = "QueryTimelineSample",
          },
          type = "array",
        },
        totalBytesBilled = {
          description = "[Output only] Total bytes billed for the job.",
          format = "int64",
          type = "string",
        },
        totalBytesProcessed = {
          description = "[Output only] Total bytes processed for the job.",
          format = "int64",
          type = "string",
        },
        totalBytesProcessedAccuracy = {
          description = "[Output only] For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost.",
          type = "string",
        },
        totalPartitionsProcessed = {
          description = "[Output only] Total number of partitions processed from all partitioned tables referenced in the job.",
          format = "int64",
          type = "string",
        },
        totalSlotMs = {
          description = "[Output only] Slot-milliseconds for the job.",
          format = "int64",
          type = "string",
        },
        transferredBytes = {
          description = "[Output-only] Total bytes transferred for cross-cloud queries such as Cross Cloud Transfer and CREATE TABLE AS SELECT (CTAS).",
          format = "int64",
          type = "string",
        },
        undeclaredQueryParameters = {
          description = "Standard SQL only: list of undeclared query parameters detected during a dry run validation.",
          items = {
            ["$ref"] = "QueryParameter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    JobStatistics3 = {
      id = "JobStatistics3",
      properties = {
        badRecords = {
          description = "[Output-only] The number of bad records encountered. Note that if the job has failed because of more bad records encountered than the maximum allowed in the load job configuration, then this number can be less than the total number of bad records present in the input data.",
          format = "int64",
          type = "string",
        },
        inputFileBytes = {
          description = "[Output-only] Number of bytes of source data in a load job.",
          format = "int64",
          type = "string",
        },
        inputFiles = {
          description = "[Output-only] Number of source files in a load job.",
          format = "int64",
          type = "string",
        },
        outputBytes = {
          description = "[Output-only] Size of the loaded data in bytes. Note that while a load job is in the running state, this value may change.",
          format = "int64",
          type = "string",
        },
        outputRows = {
          description = "[Output-only] Number of rows imported in a load job. Note that while an import job is in the running state, this value may change.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    JobStatistics4 = {
      id = "JobStatistics4",
      properties = {
        destinationUriFileCounts = {
          description = "[Output-only] Number of files per destination URI or URI pattern specified in the extract configuration. These values will be in the same order as the URIs specified in the 'destinationUris' field.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        inputBytes = {
          description = "[Output-only] Number of user bytes extracted into the result. This is the byte count as computed by BigQuery for billing purposes.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    JobStatistics5 = {
      id = "JobStatistics5",
      properties = {
        copied_logical_bytes = {
          description = "[Output-only] Number of logical bytes copied to the destination table.",
          format = "int64",
          type = "string",
        },
        copied_rows = {
          description = "[Output-only] Number of rows copied to the destination table.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    JobStatus = {
      id = "JobStatus",
      properties = {
        errorResult = {
          ["$ref"] = "ErrorProto",
          description = "[Output-only] Final error result of the job. If present, indicates that the job has completed and was unsuccessful.",
        },
        errors = {
          description = "[Output-only] The first errors encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.",
          items = {
            ["$ref"] = "ErrorProto",
          },
          type = "array",
        },
        state = {
          description = "[Output-only] Running state of the job.",
          type = "string",
        },
      },
      type = "object",
    },
    JsonObject = {
      additionalProperties = {
        ["$ref"] = "JsonValue",
      },
      description = "Represents a single JSON object.",
      id = "JsonObject",
      type = "object",
    },
    JsonValue = {
      id = "JsonValue",
      type = "any",
    },
    ListModelsResponse = {
      id = "ListModelsResponse",
      properties = {
        models = {
          description = "Models in the requested dataset. Only the following fields are populated: model_reference, model_type, creation_time, last_modified_time and labels.",
          items = {
            ["$ref"] = "Model",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListRoutinesResponse = {
      id = "ListRoutinesResponse",
      properties = {
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
        routines = {
          description = "Routines in the requested dataset. Unless read_mask is set in the request, only the following fields are populated: etag, project_id, dataset_id, routine_id, routine_type, creation_time, last_modified_time, language, and remote_function_options.",
          items = {
            ["$ref"] = "Routine",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListRowAccessPoliciesResponse = {
      description = "Response message for the ListRowAccessPolicies method.",
      id = "ListRowAccessPoliciesResponse",
      properties = {
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
        rowAccessPolicies = {
          description = "Row access policies on the requested table.",
          items = {
            ["$ref"] = "RowAccessPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocationMetadata = {
      description = "BigQuery-specific metadata about a location. This will be set on google.cloud.location.Location.metadata in Cloud Location API responses.",
      id = "LocationMetadata",
      properties = {
        legacyLocationId = {
          description = "The legacy BigQuery location ID, e.g. “EU” for the “europe” location. This is for any API consumers that need the legacy “US” and “EU” locations.",
          type = "string",
        },
      },
      type = "object",
    },
    MaterializedViewDefinition = {
      id = "MaterializedViewDefinition",
      properties = {
        allow_non_incremental_definition = {
          description = "[Optional] Allow non incremental materialized view definition. The default value is \"false\".",
          type = "boolean",
        },
        enableRefresh = {
          description = "[Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is \"true\".",
          type = "boolean",
        },
        lastRefreshTime = {
          description = "[Output-only] [TrustedTester] The time when this materialized view was last modified, in milliseconds since the epoch.",
          format = "int64",
          type = "string",
        },
        maxStaleness = {
          description = "[Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).",
          format = "byte",
          type = "string",
        },
        query = {
          description = "[Required] A query whose result is persisted.",
          type = "string",
        },
        refreshIntervalMs = {
          description = "[Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is \"1800000\" (30 minutes).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MlStatistics = {
      id = "MlStatistics",
      properties = {
        iterationResults = {
          description = "Results for all completed iterations.",
          items = {
            ["$ref"] = "IterationResult",
          },
          type = "array",
        },
        maxIterations = {
          description = "Maximum number of iterations specified as max_iterations in the 'CREATE MODEL' query. The actual number of iterations may be less than this number due to early stop.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Model = {
      id = "Model",
      properties = {
        bestTrialId = {
          description = "The best trial_id across all training runs.",
          format = "int64",
          type = "string",
        },
        creationTime = {
          description = "Output only. The time when this model was created, in millisecs since the epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        defaultTrialId = {
          description = "Output only. The default trial_id to use in TVFs when the trial_id is not passed in. For single-objective [hyperparameter tuning](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, this is the best trial ID. For multi-objective [hyperparameter tuning](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, this is the smallest trial ID among all Pareto optimal trials.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. A user-friendly description of this model.",
          type = "string",
        },
        encryptionConfiguration = {
          ["$ref"] = "EncryptionConfiguration",
          description = "Custom encryption configuration (e.g., Cloud KMS keys). This shows the encryption configuration of the model data while stored in BigQuery storage. This field can be used with PatchModel to update encryption key for an already encrypted model.",
        },
        etag = {
          description = "Output only. A hash of this resource.",
          readOnly = true,
          type = "string",
        },
        expirationTime = {
          description = "Optional. The time when this model expires, in milliseconds since the epoch. If not present, the model will persist indefinitely. Expired models will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created models.",
          format = "int64",
          type = "string",
        },
        featureColumns = {
          description = "Output only. Input feature columns that were used to train this model.",
          items = {
            ["$ref"] = "StandardSqlField",
          },
          readOnly = true,
          type = "array",
        },
        friendlyName = {
          description = "Optional. A descriptive name for this model.",
          type = "string",
        },
        hparamSearchSpaces = {
          ["$ref"] = "HparamSearchSpaces",
          description = "Output only. All hyperparameter search spaces in this model.",
          readOnly = true,
        },
        hparamTrials = {
          description = "Output only. Trials of a [hyperparameter tuning](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) model sorted by trial_id.",
          items = {
            ["$ref"] = "HparamTuningTrial",
          },
          readOnly = true,
          type = "array",
        },
        labelColumns = {
          description = "Output only. Label columns that were used to train this model. The output of the model will have a \"predicted_\" prefix to these columns.",
          items = {
            ["$ref"] = "StandardSqlField",
          },
          readOnly = true,
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this model. You can use these to organize and group your models. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.",
          type = "object",
        },
        lastModifiedTime = {
          description = "Output only. The time when this model was last modified, in millisecs since the epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        location = {
          description = "Output only. The geographic location where the model resides. This value is inherited from the dataset.",
          readOnly = true,
          type = "string",
        },
        modelReference = {
          ["$ref"] = "ModelReference",
          description = "Required. Unique identifier for this model.",
        },
        modelType = {
          description = "Output only. Type of the model resource.",
          enum = {
            "MODEL_TYPE_UNSPECIFIED",
            "LINEAR_REGRESSION",
            "LOGISTIC_REGRESSION",
            "KMEANS",
            "MATRIX_FACTORIZATION",
            "DNN_CLASSIFIER",
            "TENSORFLOW",
            "DNN_REGRESSOR",
            "BOOSTED_TREE_REGRESSOR",
            "BOOSTED_TREE_CLASSIFIER",
            "ARIMA",
            "AUTOML_REGRESSOR",
            "AUTOML_CLASSIFIER",
            "PCA",
            "DNN_LINEAR_COMBINED_CLASSIFIER",
            "DNN_LINEAR_COMBINED_REGRESSOR",
            "AUTOENCODER",
            "ARIMA_PLUS",
            "RANDOM_FOREST_REGRESSOR",
            "RANDOM_FOREST_CLASSIFIER",
          },
          enumDescriptions = {
            "",
            "Linear regression model.",
            "Logistic regression based classification model.",
            "K-means clustering model.",
            "Matrix factorization model.",
            "DNN classifier model.",
            "An imported TensorFlow model.",
            "DNN regressor model.",
            "Boosted tree regressor model.",
            "Boosted tree classifier model.",
            "ARIMA model.",
            "AutoML Tables regression model.",
            "AutoML Tables classification model.",
            "Prinpical Component Analysis model.",
            "Wide-and-deep classifier model.",
            "Wide-and-deep regressor model.",
            "Autoencoder model.",
            "New name for the ARIMA model.",
            "Random Forest regressor model.",
            "Random Forest classifier model.",
          },
          readOnly = true,
          type = "string",
        },
        optimalTrialIds = {
          description = "Output only. For single-objective [hyperparameter tuning](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, it only contains the best trial. For multi-objective [hyperparameter tuning](/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-hp-tuning-overview) models, it contains all Pareto optimal trials sorted by trial_id.",
          items = {
            format = "int64",
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        trainingRuns = {
          description = "Information for all training runs in increasing order of start_time.",
          items = {
            ["$ref"] = "TrainingRun",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModelDefinition = {
      id = "ModelDefinition",
      properties = {
        modelOptions = {
          description = "[Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.",
          properties = {
            labels = {
              items = {
                type = "string",
              },
              type = "array",
            },
            lossType = {
              type = "string",
            },
            modelType = {
              type = "string",
            },
          },
          type = "object",
        },
        trainingRuns = {
          description = "[Output-only, Beta] Information about ml training runs, each training run comprises of multiple iterations and there may be multiple training runs for the model if warm start is used or if a user decides to continue a previously cancelled query.",
          items = {
            ["$ref"] = "BqmlTrainingRun",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModelReference = {
      id = "ModelReference",
      properties = {
        datasetId = {
          description = "[Required] The ID of the dataset containing this model.",
          type = "string",
        },
        modelId = {
          description = "[Required] The ID of the model. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.",
          type = "string",
        },
        projectId = {
          description = "[Required] The ID of the project containing this model.",
          type = "string",
        },
      },
      type = "object",
    },
    MultiClassClassificationMetrics = {
      description = "Evaluation metrics for multi-class classification/classifier models.",
      id = "MultiClassClassificationMetrics",
      properties = {
        aggregateClassificationMetrics = {
          ["$ref"] = "AggregateClassificationMetrics",
          description = "Aggregate classification metrics.",
        },
        confusionMatrixList = {
          description = "Confusion matrix at different thresholds.",
          items = {
            ["$ref"] = "ConfusionMatrix",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ParquetOptions = {
      id = "ParquetOptions",
      properties = {
        enableListInference = {
          description = "[Optional] Indicates whether to use schema inference specifically for Parquet LIST logical type.",
          type = "boolean",
        },
        enumAsString = {
          description = "[Optional] Indicates whether to infer Parquet ENUM logical type as STRING instead of BYTES by default.",
          type = "boolean",
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
    PrincipalComponentInfo = {
      description = "Principal component infos, used only for eigen decomposition based models, e.g., PCA. Ordered by explained_variance in the descending order.",
      id = "PrincipalComponentInfo",
      properties = {
        cumulativeExplainedVarianceRatio = {
          description = "The explained_variance is pre-ordered in the descending order to compute the cumulative explained variance ratio.",
          format = "double",
          type = "number",
        },
        explainedVariance = {
          description = "Explained variance by this principal component, which is simply the eigenvalue.",
          format = "double",
          type = "number",
        },
        explainedVarianceRatio = {
          description = "Explained_variance over the total explained variance.",
          format = "double",
          type = "number",
        },
        principalComponentId = {
          description = "Id of the principal component.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ProjectList = {
      id = "ProjectList",
      properties = {
        etag = {
          description = "A hash of the page of results",
          type = "string",
        },
        kind = {
          default = "bigquery#projectList",
          description = "The type of list.",
          type = "string",
        },
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
        projects = {
          description = "Projects to which you have at least READ access.",
          items = {
            properties = {
              friendlyName = {
                description = "A descriptive name for this project.",
                type = "string",
              },
              id = {
                description = "An opaque ID of this project.",
                type = "string",
              },
              kind = {
                default = "bigquery#project",
                description = "The resource type.",
                type = "string",
              },
              numericId = {
                description = "The numeric ID of this project.",
                format = "uint64",
                type = "string",
              },
              projectReference = {
                ["$ref"] = "ProjectReference",
                description = "A unique reference to this project.",
              },
            },
            type = "object",
          },
          type = "array",
        },
        totalItems = {
          description = "The total number of projects in the list.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ProjectReference = {
      id = "ProjectReference",
      properties = {
        projectId = {
          description = "[Required] ID of the project. Can be either the numeric ID or the assigned ID of the project.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryParameter = {
      id = "QueryParameter",
      properties = {
        name = {
          description = "[Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.",
          type = "string",
        },
        parameterType = {
          ["$ref"] = "QueryParameterType",
          description = "[Required] The type of this parameter.",
        },
        parameterValue = {
          ["$ref"] = "QueryParameterValue",
          description = "[Required] The value of this parameter.",
        },
      },
      type = "object",
    },
    QueryParameterType = {
      id = "QueryParameterType",
      properties = {
        arrayType = {
          ["$ref"] = "QueryParameterType",
          description = "[Optional] The type of the array's elements, if this is an array.",
        },
        structTypes = {
          description = "[Optional] The types of the fields of this struct, in order, if this is a struct.",
          items = {
            properties = {
              description = {
                description = "[Optional] Human-oriented description of the field.",
                type = "string",
              },
              name = {
                description = "[Optional] The name of this field.",
                type = "string",
              },
              type = {
                ["$ref"] = "QueryParameterType",
                description = "[Required] The type of this field.",
              },
            },
            type = "object",
          },
          type = "array",
        },
        type = {
          description = "[Required] The top level type of this field.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryParameterValue = {
      id = "QueryParameterValue",
      properties = {
        arrayValues = {
          description = "[Optional] The array values, if this is an array type.",
          items = {
            ["$ref"] = "QueryParameterValue",
          },
          type = "array",
        },
        structValues = {
          additionalProperties = {
            ["$ref"] = "QueryParameterValue",
          },
          description = "[Optional] The struct field values, in order of the struct type's declaration.",
          type = "object",
        },
        value = {
          description = "[Optional] The value of this value, if a simple scalar type.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryRequest = {
      id = "QueryRequest",
      properties = {
        connectionProperties = {
          description = "Connection properties.",
          items = {
            ["$ref"] = "ConnectionProperty",
          },
          type = "array",
        },
        createSession = {
          description = "If true, creates a new session, where session id will be a server generated random id. If false, runs query with an existing session_id passed in ConnectionProperty, otherwise runs query in non-session mode.",
          type = "boolean",
        },
        defaultDataset = {
          ["$ref"] = "DatasetReference",
          description = "[Optional] Specifies the default datasetId and projectId to assume for any unqualified table names in the query. If not set, all table names in the query string must be qualified in the format 'datasetId.tableId'.",
        },
        dryRun = {
          description = "[Optional] If set to true, BigQuery doesn't run the job. Instead, if the query is valid, BigQuery returns statistics about the job such as how many bytes would be processed. If the query is invalid, an error returns. The default value is false.",
          type = "boolean",
        },
        kind = {
          default = "bigquery#queryRequest",
          description = "The resource type of the request.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.",
          type = "object",
        },
        location = {
          description = "The geographic location where the job should run. See details at https://cloud.google.com/bigquery/docs/locations#specifying_your_location.",
          type = "string",
        },
        maxResults = {
          description = "[Optional] The maximum number of rows of data to return per page of results. Setting this flag to a small value such as 1000 and then paging through results might improve reliability when the query result set is large. In addition to this limit, responses are also limited to 10 MB. By default, there is no maximum row count, and only the byte limit applies.",
          format = "uint32",
          type = "integer",
        },
        maximumBytesBilled = {
          description = "[Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.",
          format = "int64",
          type = "string",
        },
        parameterMode = {
          description = "Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.",
          type = "string",
        },
        preserveNulls = {
          description = "[Deprecated] This property is deprecated.",
          type = "boolean",
        },
        query = {
          annotations = {
            required = {
              "bigquery.jobs.query",
            },
          },
          description = "[Required] A query string, following the BigQuery query syntax, of the query to execute. Example: \"SELECT count(f1) FROM [myProjectId:myDatasetId.myTableId]\".",
          type = "string",
        },
        queryParameters = {
          description = "Query parameters for Standard SQL queries.",
          items = {
            ["$ref"] = "QueryParameter",
          },
          type = "array",
        },
        requestId = {
          description = "A unique user provided identifier to ensure idempotent behavior for queries. Note that this is different from the job_id. It has the following properties: 1. It is case-sensitive, limited to up to 36 ASCII characters. A UUID is recommended. 2. Read only queries can ignore this token since they are nullipotent by definition. 3. For the purposes of idempotency ensured by the request_id, a request is considered duplicate of another only if they have the same request_id and are actually duplicates. When determining whether a request is a duplicate of the previous request, all parameters in the request that may affect the behavior are considered. For example, query, connection_properties, query_parameters, use_legacy_sql are parameters that affect the result and are considered when determining whether a request is a duplicate, but properties like timeout_ms don't affect the result and are thus not considered. Dry run query requests are never considered duplicate of another request. 4. When a duplicate mutating query request is detected, it returns: a. the results of the mutation if it completes successfully within the timeout. b. the running operation if it is still in progress at the end of the timeout. 5. Its lifetime is limited to 15 minutes. In other words, if two requests are sent with the same request_id, but more than 15 minutes apart, idempotency is not guaranteed.",
          type = "string",
        },
        timeoutMs = {
          description = "[Optional] How long to wait for the query to complete, in milliseconds, before the request times out and returns. Note that this is only a timeout for the request, not the query. If the query takes longer to run than the timeout value, the call returns without any results and with the 'jobComplete' flag set to false. You can call GetQueryResults() to wait for the query to complete and read the results. The default value is 10000 milliseconds (10 seconds).",
          format = "uint32",
          type = "integer",
        },
        useLegacySql = {
          default = "true",
          description = "Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.",
          type = "boolean",
        },
        useQueryCache = {
          default = "true",
          description = "[Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. The default value is true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    QueryResponse = {
      id = "QueryResponse",
      properties = {
        cacheHit = {
          description = "Whether the query result was fetched from the query cache.",
          type = "boolean",
        },
        dmlStats = {
          ["$ref"] = "DmlStatistics",
          description = "[Output-only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.",
        },
        errors = {
          description = "[Output-only] The first errors or warnings encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.",
          items = {
            ["$ref"] = "ErrorProto",
          },
          type = "array",
        },
        jobComplete = {
          description = "Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available.",
          type = "boolean",
        },
        jobReference = {
          ["$ref"] = "JobReference",
          description = "Reference to the Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults).",
        },
        kind = {
          default = "bigquery#queryResponse",
          description = "The resource type.",
          type = "string",
        },
        numDmlAffectedRows = {
          description = "[Output-only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.",
          format = "int64",
          type = "string",
        },
        pageToken = {
          description = "A token used for paging results.",
          type = "string",
        },
        rows = {
          description = "An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above.",
          items = {
            ["$ref"] = "TableRow",
          },
          type = "array",
        },
        schema = {
          ["$ref"] = "TableSchema",
          description = "The schema of the results. Present only when the query completes successfully.",
        },
        sessionInfo = {
          ["$ref"] = "SessionInfo",
          description = "[Output-only] [Preview] Information of the session if this job is part of one.",
        },
        totalBytesProcessed = {
          description = "The total number of bytes processed for this query. If this query was a dry run, this is the number of bytes that would be processed if the query were run.",
          format = "int64",
          type = "string",
        },
        totalRows = {
          description = "The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    QueryTimelineSample = {
      id = "QueryTimelineSample",
      properties = {
        activeUnits = {
          description = "Total number of units currently being processed by workers. This does not correspond directly to slot usage. This is the largest value observed since the last sample.",
          format = "int64",
          type = "string",
        },
        completedUnits = {
          description = "Total parallel units of work completed by this query.",
          format = "int64",
          type = "string",
        },
        elapsedMs = {
          description = "Milliseconds elapsed since the start of query execution.",
          format = "int64",
          type = "string",
        },
        estimatedRunnableUnits = {
          description = "Units of work that can be scheduled immediately. Providing additional slots for these units of work will speed up the query, provided no other query in the reservation needs additional slots.",
          format = "int64",
          type = "string",
        },
        pendingUnits = {
          description = "Total units of work remaining for the query. This number can be revised (increased or decreased) while the query is running.",
          format = "int64",
          type = "string",
        },
        totalSlotMs = {
          description = "Cumulative slot-ms consumed by the query.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    RangePartitioning = {
      id = "RangePartitioning",
      properties = {
        field = {
          description = "[TrustedTester] [Required] The table is partitioned by this field. The field must be a top-level NULLABLE/REQUIRED field. The only supported type is INTEGER/INT64.",
          type = "string",
        },
        range = {
          description = "[TrustedTester] [Required] Defines the ranges for range partitioning.",
          properties = {
            ["end"] = {
              description = "[TrustedTester] [Required] The end of range partitioning, exclusive.",
              format = "int64",
              type = "string",
            },
            interval = {
              description = "[TrustedTester] [Required] The width of each interval.",
              format = "int64",
              type = "string",
            },
            start = {
              description = "[TrustedTester] [Required] The start of range partitioning, inclusive.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    RankingMetrics = {
      description = "Evaluation metrics used by weighted-ALS models specified by feedback_type=implicit.",
      id = "RankingMetrics",
      properties = {
        averageRank = {
          description = "Determines the goodness of a ranking by computing the percentile rank from the predicted confidence and dividing it by the original rank.",
          format = "double",
          type = "number",
        },
        meanAveragePrecision = {
          description = "Calculates a precision per user for all the items by ranking them and then averages all the precisions across all the users.",
          format = "double",
          type = "number",
        },
        meanSquaredError = {
          description = "Similar to the mean squared error computed in regression and explicit recommendation models except instead of computing the rating directly, the output from evaluate is computed against a preference which is 1 or 0 depending on if the rating exists or not.",
          format = "double",
          type = "number",
        },
        normalizedDiscountedCumulativeGain = {
          description = "A metric to determine the goodness of a ranking calculated from the predicted confidence by comparing it to an ideal rank measured by the original ratings.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    RegressionMetrics = {
      description = "Evaluation metrics for regression and explicit feedback type matrix factorization models.",
      id = "RegressionMetrics",
      properties = {
        meanAbsoluteError = {
          description = "Mean absolute error.",
          format = "double",
          type = "number",
        },
        meanSquaredError = {
          description = "Mean squared error.",
          format = "double",
          type = "number",
        },
        meanSquaredLogError = {
          description = "Mean squared log error.",
          format = "double",
          type = "number",
        },
        medianAbsoluteError = {
          description = "Median absolute error.",
          format = "double",
          type = "number",
        },
        rSquared = {
          description = "R^2 score. This corresponds to r2_score in ML.EVALUATE.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    RemoteFunctionOptions = {
      description = "Options for a remote user-defined function.",
      id = "RemoteFunctionOptions",
      properties = {
        connection = {
          description = "Fully qualified name of the user-provided connection object which holds the authentication information to send requests to the remote service. Format: ```\"projects/{projectId}/locations/{locationId}/connections/{connectionId}\"```",
          type = "string",
        },
        endpoint = {
          description = "Endpoint of the user-provided remote service, e.g. ```https://us-east1-my_gcf_project.cloudfunctions.net/remote_add```",
          type = "string",
        },
        maxBatchingRows = {
          description = "Max number of rows in each batch sent to the remote service. If absent or if 0, BigQuery dynamically decides the number of rows in a batch.",
          format = "int64",
          type = "string",
        },
        userDefinedContext = {
          additionalProperties = {
            type = "string",
          },
          description = "User-defined context as a set of key/value pairs, which will be sent as function invocation context together with batched arguments in the requests to the remote service. The total number of bytes of keys and values must be less than 8KB.",
          type = "object",
        },
      },
      type = "object",
    },
    Routine = {
      description = "A user-defined function or a stored procedure.",
      id = "Routine",
      properties = {
        arguments = {
          description = "Optional.",
          items = {
            ["$ref"] = "Argument",
          },
          type = "array",
        },
        creationTime = {
          description = "Output only. The time when this routine was created, in milliseconds since the epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        definitionBody = {
          description = "Required. The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, \"\\n\", y))` The definition_body is `concat(x, \"\\n\", y)` (\\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return \"\\n\";\\n'` The definition_body is `return \"\\n\";\\n` Note that both \\n are replaced with linebreaks.",
          type = "string",
        },
        description = {
          description = "Optional. The description of the routine, if defined.",
          type = "string",
        },
        determinismLevel = {
          description = "Optional. The determinism level of the JavaScript UDF, if defined.",
          enum = {
            "DETERMINISM_LEVEL_UNSPECIFIED",
            "DETERMINISTIC",
            "NOT_DETERMINISTIC",
          },
          enumDescriptions = {
            "The determinism of the UDF is unspecified.",
            "The UDF is deterministic, meaning that 2 function calls with the same inputs always produce the same result, even across 2 query runs.",
            "The UDF is not deterministic.",
          },
          type = "string",
        },
        etag = {
          description = "Output only. A hash of this resource.",
          readOnly = true,
          type = "string",
        },
        importedLibraries = {
          description = "Optional. If language = \"JAVASCRIPT\", this field stores the path of the imported JAVASCRIPT libraries.",
          items = {
            type = "string",
          },
          type = "array",
        },
        language = {
          description = "Optional. Defaults to \"SQL\" if remote_function_options field is absent, not set otherwise.",
          enum = {
            "LANGUAGE_UNSPECIFIED",
            "SQL",
            "JAVASCRIPT",
            "PYTHON",
          },
          enumDescriptions = {
            "",
            "SQL language.",
            "JavaScript language.",
            "Python language.",
          },
          type = "string",
        },
        lastModifiedTime = {
          description = "Output only. The time when this routine was last modified, in milliseconds since the epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        remoteFunctionOptions = {
          ["$ref"] = "RemoteFunctionOptions",
          description = "Optional. Remote function specific options.",
        },
        returnTableType = {
          ["$ref"] = "StandardSqlTableType",
          description = "Optional. Can be set only if routine_type = \"TABLE_VALUED_FUNCTION\". If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time.",
        },
        returnType = {
          ["$ref"] = "StandardSqlDataType",
          description = "Optional if language = \"SQL\"; required otherwise. Cannot be set if routine_type = \"TABLE_VALUED_FUNCTION\". If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: \"FLOAT64\"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.",
        },
        routineReference = {
          ["$ref"] = "RoutineReference",
          description = "Required. Reference describing the ID of this routine.",
        },
        routineType = {
          description = "Required. The type of routine.",
          enum = {
            "ROUTINE_TYPE_UNSPECIFIED",
            "SCALAR_FUNCTION",
            "PROCEDURE",
            "TABLE_VALUED_FUNCTION",
          },
          enumDescriptions = {
            "",
            "Non-builtin permanent scalar function.",
            "Stored procedure.",
            "Non-builtin permanent TVF.",
          },
          type = "string",
        },
        sparkOptions = {
          ["$ref"] = "SparkOptions",
          description = "Optional. Spark specific options.",
        },
        strictMode = {
          description = "Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation/update time, and thus this field must be set to false explicitly.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RoutineReference = {
      id = "RoutineReference",
      properties = {
        datasetId = {
          description = "[Required] The ID of the dataset containing this routine.",
          type = "string",
        },
        projectId = {
          description = "[Required] The ID of the project containing this routine.",
          type = "string",
        },
        routineId = {
          description = "[Required] The ID of the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    Row = {
      description = "A single row in the confusion matrix.",
      id = "Row",
      properties = {
        actualLabel = {
          description = "The original label of this row.",
          type = "string",
        },
        entries = {
          description = "Info describing predicted label distribution.",
          items = {
            ["$ref"] = "Entry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RowAccessPolicy = {
      description = "Represents access on a subset of rows on the specified table, defined by its filter predicate. Access to the subset of rows is controlled by its IAM policy.",
      id = "RowAccessPolicy",
      properties = {
        creationTime = {
          description = "Output only. The time when this row access policy was created, in milliseconds since the epoch.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. A hash of this resource.",
          readOnly = true,
          type = "string",
        },
        filterPredicate = {
          description = "Required. A SQL boolean expression that represents the rows defined by this row access policy, similar to the boolean expression in a WHERE clause of a SELECT query on a table. References to other tables, routines, and temporary functions are not supported. Examples: region=\"EU\" date_field = CAST('2019-9-27' as DATE) nullable_field is not NULL numeric_field BETWEEN 1.0 AND 5.0",
          type = "string",
        },
        lastModifiedTime = {
          description = "Output only. The time when this row access policy was last modified, in milliseconds since the epoch.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        rowAccessPolicyReference = {
          ["$ref"] = "RowAccessPolicyReference",
          description = "Required. Reference describing the ID of this row access policy.",
        },
      },
      type = "object",
    },
    RowAccessPolicyReference = {
      id = "RowAccessPolicyReference",
      properties = {
        datasetId = {
          description = "[Required] The ID of the dataset containing this row access policy.",
          type = "string",
        },
        policyId = {
          description = "[Required] The ID of the row access policy. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.",
          type = "string",
        },
        projectId = {
          description = "[Required] The ID of the project containing this row access policy.",
          type = "string",
        },
        tableId = {
          description = "[Required] The ID of the table containing this row access policy.",
          type = "string",
        },
      },
      type = "object",
    },
    RowLevelSecurityStatistics = {
      id = "RowLevelSecurityStatistics",
      properties = {
        rowLevelSecurityApplied = {
          description = "[Output-only] [Preview] Whether any accessed data was protected by row access policies.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ScriptStackFrame = {
      id = "ScriptStackFrame",
      properties = {
        endColumn = {
          description = "[Output-only] One-based end column.",
          format = "int32",
          type = "integer",
        },
        endLine = {
          description = "[Output-only] One-based end line.",
          format = "int32",
          type = "integer",
        },
        procedureId = {
          description = "[Output-only] Name of the active procedure, empty if in a top-level script.",
          type = "string",
        },
        startColumn = {
          description = "[Output-only] One-based start column.",
          format = "int32",
          type = "integer",
        },
        startLine = {
          description = "[Output-only] One-based start line.",
          format = "int32",
          type = "integer",
        },
        text = {
          description = "[Output-only] Text of the current statement/expression.",
          type = "string",
        },
      },
      type = "object",
    },
    ScriptStatistics = {
      id = "ScriptStatistics",
      properties = {
        evaluationKind = {
          description = "[Output-only] Whether this child job was a statement or expression.",
          type = "string",
        },
        stackFrames = {
          description = "Stack trace showing the line/column/procedure name of each frame on the stack at the point where the current evaluation happened. The leaf frame is first, the primary script is last. Never empty.",
          items = {
            ["$ref"] = "ScriptStackFrame",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchStatistics = {
      id = "SearchStatistics",
      properties = {
        indexUnusedReason = {
          description = "When index_usage_mode is UNUSED or PARTIALLY_USED, this field explains why index was not used in all or part of the search query. If index_usage_mode is FULLLY_USED, this field is not populated.",
          items = {
            ["$ref"] = "IndexUnusedReason",
          },
          type = "array",
        },
        indexUsageMode = {
          description = "Specifies index usage mode for the query.",
          type = "string",
        },
      },
      type = "object",
    },
    SessionInfo = {
      id = "SessionInfo",
      properties = {
        sessionId = {
          description = "[Output-only] // [Preview] Id of the session.",
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
    SnapshotDefinition = {
      id = "SnapshotDefinition",
      properties = {
        baseTableReference = {
          ["$ref"] = "TableReference",
          description = "[Required] Reference describing the ID of the table that was snapshot.",
        },
        snapshotTime = {
          description = "[Required] The time at which the base table was snapshot. This value is reported in the JSON response using RFC3339 format.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    SparkLoggingInfo = {
      id = "SparkLoggingInfo",
      properties = {
        project_id = {
          description = "[Output-only] Project ID used for logging",
          type = "string",
        },
        resource_type = {
          description = "[Output-only] Resource type used for logging",
          type = "string",
        },
      },
      type = "object",
    },
    SparkOptions = {
      description = "Options for a user-defined Spark routine.",
      id = "SparkOptions",
      properties = {
        archiveUris = {
          description = "Archive files to be extracted into the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).",
          items = {
            type = "string",
          },
          type = "array",
        },
        connection = {
          description = "Fully qualified name of the user-provided Spark connection object. Format: ```\"projects/{project_id}/locations/{location_id}/connections/{connection_id}\"```",
          type = "string",
        },
        containerImage = {
          description = "Custom container image for the runtime environment.",
          type = "string",
        },
        fileUris = {
          description = "Files to be placed in the working directory of each executor. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).",
          items = {
            type = "string",
          },
          type = "array",
        },
        jarUris = {
          description = "JARs to include on the driver and executor CLASSPATH. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).",
          items = {
            type = "string",
          },
          type = "array",
        },
        mainFileUri = {
          description = "The main file/jar URI of the Spark application. Exactly one of the definition_body field and the main_file_uri field must be set for Python. Exactly one of main_class and main_file_uri field should be set for Java/Scala language type.",
          type = "string",
        },
        properties = {
          additionalProperties = {
            type = "string",
          },
          description = "Configuration properties as a set of key/value pairs, which will be passed on to the Spark application. For more information, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).",
          type = "object",
        },
        pyFileUris = {
          description = "Python files to be placed on the PYTHONPATH for PySpark application. Supported file types: `.py`, `.egg`, and `.zip`. For more information about Apache Spark, see [Apache Spark](https://spark.apache.org/docs/latest/index.html).",
          items = {
            type = "string",
          },
          type = "array",
        },
        runtimeVersion = {
          description = "Runtime version. If not specified, the default runtime version is used.",
          type = "string",
        },
      },
      type = "object",
    },
    SparkStatistics = {
      id = "SparkStatistics",
      properties = {
        endpoints = {
          additionalProperties = {
            type = "string",
          },
          description = "[Output-only] Endpoints generated for the Spark job.",
          type = "object",
        },
        logging_info = {
          ["$ref"] = "SparkLoggingInfo",
          description = "[Output-only] Logging info is used to generate a link to Cloud Logging.",
        },
        spark_job_id = {
          description = "[Output-only] Spark job id if a Spark job is created successfully.",
          type = "string",
        },
        spark_job_location = {
          description = "[Output-only] Location where the Spark job is executed.",
          type = "string",
        },
      },
      type = "object",
    },
    StandardSqlDataType = {
      description = "The data type of a variable such as a function argument. Examples include: * INT64: `{\"typeKind\": \"INT64\"}` * ARRAY: { \"typeKind\": \"ARRAY\", \"arrayElementType\": {\"typeKind\": \"STRING\"} } * STRUCT>: { \"typeKind\": \"STRUCT\", \"structType\": { \"fields\": [ { \"name\": \"x\", \"type\": {\"typeKind\": \"STRING\"} }, { \"name\": \"y\", \"type\": { \"typeKind\": \"ARRAY\", \"arrayElementType\": {\"typeKind\": \"DATE\"} } } ] } }",
      id = "StandardSqlDataType",
      properties = {
        arrayElementType = {
          ["$ref"] = "StandardSqlDataType",
          description = "The type of the array's elements, if type_kind = \"ARRAY\".",
        },
        structType = {
          ["$ref"] = "StandardSqlStructType",
          description = "The fields of this struct, in order, if type_kind = \"STRUCT\".",
        },
        typeKind = {
          description = "Required. The top level type of this field. Can be any standard SQL data type (e.g., \"INT64\", \"DATE\", \"ARRAY\").",
          enum = {
            "TYPE_KIND_UNSPECIFIED",
            "INT64",
            "BOOL",
            "FLOAT64",
            "STRING",
            "BYTES",
            "TIMESTAMP",
            "DATE",
            "TIME",
            "DATETIME",
            "INTERVAL",
            "GEOGRAPHY",
            "NUMERIC",
            "BIGNUMERIC",
            "JSON",
            "ARRAY",
            "STRUCT",
          },
          enumDescriptions = {
            "Invalid type.",
            "Encoded as a string in decimal format.",
            "Encoded as a boolean \"false\" or \"true\".",
            "Encoded as a number, or string \"NaN\", \"Infinity\" or \"-Infinity\".",
            "Encoded as a string value.",
            "Encoded as a base64 string per RFC 4648, section 4.",
            "Encoded as an RFC 3339 timestamp with mandatory \"Z\" time zone string: 1985-04-12T23:20:50.52Z",
            "Encoded as RFC 3339 full-date format string: 1985-04-12",
            "Encoded as RFC 3339 partial-time format string: 23:20:50.52",
            "Encoded as RFC 3339 full-date \"T\" partial-time: 1985-04-12T23:20:50.52",
            "Encoded as fully qualified 3 part: 0-5 15 2:30:45.6",
            "Encoded as WKT",
            "Encoded as a decimal string.",
            "Encoded as a decimal string.",
            "Encoded as a string.",
            "Encoded as a list with types matching Type.array_type.",
            "Encoded as a list with fields of type Type.struct_type[i]. List is used because a JSON object cannot have duplicate field names.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    StandardSqlField = {
      description = "A field or a column.",
      id = "StandardSqlField",
      properties = {
        name = {
          description = "Optional. The name of this field. Can be absent for struct fields.",
          type = "string",
        },
        type = {
          ["$ref"] = "StandardSqlDataType",
          description = "Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this \"type\" field).",
        },
      },
      type = "object",
    },
    StandardSqlStructType = {
      id = "StandardSqlStructType",
      properties = {
        fields = {
          items = {
            ["$ref"] = "StandardSqlField",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StandardSqlTableType = {
      description = "A table type",
      id = "StandardSqlTableType",
      properties = {
        columns = {
          description = "The columns in this table type",
          items = {
            ["$ref"] = "StandardSqlField",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Streamingbuffer = {
      id = "Streamingbuffer",
      properties = {
        estimatedBytes = {
          description = "[Output-only] A lower-bound estimate of the number of bytes currently in the streaming buffer.",
          format = "uint64",
          type = "string",
        },
        estimatedRows = {
          description = "[Output-only] A lower-bound estimate of the number of rows currently in the streaming buffer.",
          format = "uint64",
          type = "string",
        },
        oldestEntryTime = {
          description = "[Output-only] Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds since the epoch, if the streaming buffer is available.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    StringHparamSearchSpace = {
      description = "Search space for string and enum.",
      id = "StringHparamSearchSpace",
      properties = {
        candidates = {
          description = "Canididates for the string or enum parameter in lower case.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Table = {
      id = "Table",
      properties = {
        cloneDefinition = {
          ["$ref"] = "CloneDefinition",
          description = "[Output-only] Clone definition.",
        },
        clustering = {
          ["$ref"] = "Clustering",
          description = "[Beta] Clustering specification for the table. Must be specified with partitioning, data in the table will be first partitioned and subsequently clustered.",
        },
        creationTime = {
          description = "[Output-only] The time when this table was created, in milliseconds since the epoch.",
          format = "int64",
          type = "string",
        },
        defaultCollation = {
          description = "[Output-only] The default collation of the table.",
          type = "string",
        },
        description = {
          description = "[Optional] A user-friendly description of this table.",
          type = "string",
        },
        encryptionConfiguration = {
          ["$ref"] = "EncryptionConfiguration",
          description = "Custom encryption configuration (e.g., Cloud KMS keys).",
        },
        etag = {
          description = "[Output-only] A hash of the table metadata. Used to ensure there were no concurrent modifications to the resource when attempting an update. Not guaranteed to change when the table contents or the fields numRows, numBytes, numLongTermBytes or lastModifiedTime change.",
          type = "string",
        },
        expirationTime = {
          description = "[Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed. The defaultTableExpirationMs property of the encapsulating dataset can be used to set a default expirationTime on newly created tables.",
          format = "int64",
          type = "string",
        },
        externalDataConfiguration = {
          ["$ref"] = "ExternalDataConfiguration",
          description = "[Optional] Describes the data format, location, and other properties of a table stored outside of BigQuery. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.",
        },
        friendlyName = {
          description = "[Optional] A descriptive name for this table.",
          type = "string",
        },
        id = {
          description = "[Output-only] An opaque ID uniquely identifying the table.",
          type = "string",
        },
        kind = {
          default = "bigquery#table",
          description = "[Output-only] The type of the resource.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this table. You can use these to organize and group your tables. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.",
          type = "object",
        },
        lastModifiedTime = {
          description = "[Output-only] The time when this table was last modified, in milliseconds since the epoch.",
          format = "uint64",
          type = "string",
        },
        location = {
          description = "[Output-only] The geographic location where the table resides. This value is inherited from the dataset.",
          type = "string",
        },
        materializedView = {
          ["$ref"] = "MaterializedViewDefinition",
          description = "[Optional] Materialized view definition.",
        },
        maxStaleness = {
          description = "[Optional] Max staleness of data that could be returned when table or materialized view is queried (formatted as Google SQL Interval type).",
          format = "byte",
          type = "string",
        },
        model = {
          ["$ref"] = "ModelDefinition",
          description = "[Output-only, Beta] Present iff this table represents a ML model. Describes the training information for the model, and it is required to run 'PREDICT' queries.",
        },
        numBytes = {
          description = "[Output-only] The size of this table in bytes, excluding any data in the streaming buffer.",
          format = "int64",
          type = "string",
        },
        numLongTermBytes = {
          description = "[Output-only] The number of bytes in the table that are considered \"long-term storage\".",
          format = "int64",
          type = "string",
        },
        numPhysicalBytes = {
          description = "[Output-only] [TrustedTester] The physical size of this table in bytes, excluding any data in the streaming buffer. This includes compression and storage used for time travel.",
          format = "int64",
          type = "string",
        },
        numRows = {
          description = "[Output-only] The number of rows of data in this table, excluding any data in the streaming buffer.",
          format = "uint64",
          type = "string",
        },
        num_active_logical_bytes = {
          description = "[Output-only] Number of logical bytes that are less than 90 days old.",
          format = "int64",
          type = "string",
        },
        num_active_physical_bytes = {
          description = "[Output-only] Number of physical bytes less than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.",
          format = "int64",
          type = "string",
        },
        num_long_term_logical_bytes = {
          description = "[Output-only] Number of logical bytes that are more than 90 days old.",
          format = "int64",
          type = "string",
        },
        num_long_term_physical_bytes = {
          description = "[Output-only] Number of physical bytes more than 90 days old. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.",
          format = "int64",
          type = "string",
        },
        num_partitions = {
          description = "[Output-only] The number of partitions present in the table or materialized view. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.",
          format = "int64",
          type = "string",
        },
        num_time_travel_physical_bytes = {
          description = "[Output-only] Number of physical bytes used by time travel storage (deleted or changed data). This data is not kept in real time, and might be delayed by a few seconds to a few minutes.",
          format = "int64",
          type = "string",
        },
        num_total_logical_bytes = {
          description = "[Output-only] Total number of logical bytes in the table or materialized view.",
          format = "int64",
          type = "string",
        },
        num_total_physical_bytes = {
          description = "[Output-only] The physical size of this table in bytes. This also includes storage used for time travel. This data is not kept in real time, and might be delayed by a few seconds to a few minutes.",
          format = "int64",
          type = "string",
        },
        rangePartitioning = {
          ["$ref"] = "RangePartitioning",
          description = "[TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.",
        },
        requirePartitionFilter = {
          default = "false",
          description = "[Optional] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.",
          type = "boolean",
        },
        schema = {
          ["$ref"] = "TableSchema",
          description = "[Optional] Describes the schema of this table.",
        },
        selfLink = {
          description = "[Output-only] A URL that can be used to access this resource again.",
          type = "string",
        },
        snapshotDefinition = {
          ["$ref"] = "SnapshotDefinition",
          description = "[Output-only] Snapshot definition.",
        },
        streamingBuffer = {
          ["$ref"] = "Streamingbuffer",
          description = "[Output-only] Contains information regarding this table's streaming buffer, if one is present. This field will be absent if the table is not being streamed to or if there is no data in the streaming buffer.",
        },
        tableReference = {
          ["$ref"] = "TableReference",
          description = "[Required] Reference describing the ID of this table.",
        },
        timePartitioning = {
          ["$ref"] = "TimePartitioning",
          description = "Time-based partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.",
        },
        type = {
          description = "[Output-only] Describes the table type. The following values are supported: TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query. SNAPSHOT: An immutable, read-only table that is a copy of another table. [TrustedTester] MATERIALIZED_VIEW: SQL query whose result is persisted. EXTERNAL: A table that references data stored in an external storage system, such as Google Cloud Storage. The default value is TABLE.",
          type = "string",
        },
        view = {
          ["$ref"] = "ViewDefinition",
          description = "[Optional] The view definition.",
        },
      },
      type = "object",
    },
    TableCell = {
      id = "TableCell",
      properties = {
        v = {
          type = "any",
        },
      },
      type = "object",
    },
    TableDataInsertAllRequest = {
      id = "TableDataInsertAllRequest",
      properties = {
        ignoreUnknownValues = {
          description = "[Optional] Accept rows that contain values that do not match the schema. The unknown values are ignored. Default is false, which treats unknown values as errors.",
          type = "boolean",
        },
        kind = {
          default = "bigquery#tableDataInsertAllRequest",
          description = "The resource type of the response.",
          type = "string",
        },
        rows = {
          description = "The rows to insert.",
          items = {
            properties = {
              insertId = {
                description = "[Optional] A unique ID for each row. BigQuery uses this property to detect duplicate insertion requests on a best-effort basis.",
                type = "string",
              },
              json = {
                ["$ref"] = "JsonObject",
                description = "[Required] A JSON object that contains a row of data. The object's properties and values must match the destination table's schema.",
              },
            },
            type = "object",
          },
          type = "array",
        },
        skipInvalidRows = {
          description = "[Optional] Insert all valid rows of a request, even if invalid rows exist. The default value is false, which causes the entire request to fail if any invalid rows exist.",
          type = "boolean",
        },
        templateSuffix = {
          description = "If specified, treats the destination table as a base template, and inserts the rows into an instance table named \"{destination}{templateSuffix}\". BigQuery will manage creation of the instance table, using the schema of the base template table. See https://cloud.google.com/bigquery/streaming-data-into-bigquery#template-tables for considerations when working with templates tables.",
          type = "string",
        },
      },
      type = "object",
    },
    TableDataInsertAllResponse = {
      id = "TableDataInsertAllResponse",
      properties = {
        insertErrors = {
          description = "An array of errors for rows that were not inserted.",
          items = {
            properties = {
              errors = {
                description = "Error information for the row indicated by the index property.",
                items = {
                  ["$ref"] = "ErrorProto",
                },
                type = "array",
              },
              index = {
                description = "The index of the row that error applies to.",
                format = "uint32",
                type = "integer",
              },
            },
            type = "object",
          },
          type = "array",
        },
        kind = {
          default = "bigquery#tableDataInsertAllResponse",
          description = "The resource type of the response.",
          type = "string",
        },
      },
      type = "object",
    },
    TableDataList = {
      id = "TableDataList",
      properties = {
        etag = {
          description = "A hash of this page of results.",
          type = "string",
        },
        kind = {
          default = "bigquery#tableDataList",
          description = "The resource type of the response.",
          type = "string",
        },
        pageToken = {
          description = "A token used for paging results. Providing this token instead of the startIndex parameter can help you retrieve stable results when an underlying table is changing.",
          type = "string",
        },
        rows = {
          description = "Rows of results.",
          items = {
            ["$ref"] = "TableRow",
          },
          type = "array",
        },
        totalRows = {
          description = "The total number of rows in the complete table.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    TableFieldSchema = {
      id = "TableFieldSchema",
      properties = {
        categories = {
          description = "[Optional] The categories attached to this field, used for field-level access control.",
          properties = {
            names = {
              description = "A list of category resource names. For example, \"projects/1/taxonomies/2/categories/3\". At most 5 categories are allowed.",
              items = {
                type = "string",
              },
              type = "array",
            },
          },
          type = "object",
        },
        collation = {
          description = "Optional. Collation specification of the field. It only can be set on string type field.",
          type = "string",
        },
        defaultValueExpression = {
          description = "Optional. A SQL expression to specify the default value for this field. It can only be set for top level fields (columns). You can use struct or array expression to specify default value for the entire struct or array. The valid SQL expressions are: - Literals for all data types, including STRUCT and ARRAY. - Following functions: - CURRENT_TIMESTAMP - CURRENT_TIME - CURRENT_DATE - CURRENT_DATETIME - GENERATE_UUID - RAND - SESSION_USER - ST_GEOGPOINT - Struct or array composed with the above allowed functions, for example, [CURRENT_DATE(), DATE '2020-01-01']",
          type = "string",
        },
        description = {
          description = "[Optional] The field description. The maximum length is 1,024 characters.",
          type = "string",
        },
        fields = {
          description = "[Optional] Describes the nested schema fields if the type property is set to RECORD.",
          items = {
            ["$ref"] = "TableFieldSchema",
          },
          type = "array",
        },
        maxLength = {
          description = "[Optional] Maximum length of values of this field for STRINGS or BYTES. If max_length is not specified, no maximum length constraint is imposed on this field. If type = \"STRING\", then max_length represents the maximum UTF-8 length of strings in this field. If type = \"BYTES\", then max_length represents the maximum number of bytes in this field. It is invalid to set this field if type ≠ \"STRING\" and ≠ \"BYTES\".",
          format = "int64",
          type = "string",
        },
        mode = {
          description = "[Optional] The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE.",
          type = "string",
        },
        name = {
          description = "[Required] The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 300 characters.",
          type = "string",
        },
        policyTags = {
          properties = {
            names = {
              description = "A list of category resource names. For example, \"projects/1/location/eu/taxonomies/2/policyTags/3\". At most 1 policy tag is allowed.",
              items = {
                type = "string",
              },
              type = "array",
            },
          },
          type = "object",
        },
        precision = {
          description = "[Optional] Precision (maximum number of total digits in base 10) and scale (maximum number of digits in the fractional part in base 10) constraints for values of this field for NUMERIC or BIGNUMERIC. It is invalid to set precision or scale if type ≠ \"NUMERIC\" and ≠ \"BIGNUMERIC\". If precision and scale are not specified, no value range constraint is imposed on this field insofar as values are permitted by the type. Values of this NUMERIC or BIGNUMERIC field must be in this range when: - Precision (P) and scale (S) are specified: [-10P-S + 10-S, 10P-S - 10-S] - Precision (P) is specified but not scale (and thus scale is interpreted to be equal to zero): [-10P + 1, 10P - 1]. Acceptable values for precision and scale if both are specified: - If type = \"NUMERIC\": 1 ≤ precision - scale ≤ 29 and 0 ≤ scale ≤ 9. - If type = \"BIGNUMERIC\": 1 ≤ precision - scale ≤ 38 and 0 ≤ scale ≤ 38. Acceptable values for precision if only precision is specified but not scale (and thus scale is interpreted to be equal to zero): - If type = \"NUMERIC\": 1 ≤ precision ≤ 29. - If type = \"BIGNUMERIC\": 1 ≤ precision ≤ 38. If scale is specified but not precision, then it is invalid.",
          format = "int64",
          type = "string",
        },
        scale = {
          description = "[Optional] See documentation for precision.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "[Required] The field data type. Possible values include STRING, BYTES, INTEGER, INT64 (same as INTEGER), FLOAT, FLOAT64 (same as FLOAT), NUMERIC, BIGNUMERIC, BOOLEAN, BOOL (same as BOOLEAN), TIMESTAMP, DATE, TIME, DATETIME, INTERVAL, RECORD (where RECORD indicates that the field contains a nested schema) or STRUCT (same as RECORD).",
          type = "string",
        },
      },
      type = "object",
    },
    TableList = {
      id = "TableList",
      properties = {
        etag = {
          description = "A hash of this page of results.",
          type = "string",
        },
        kind = {
          default = "bigquery#tableList",
          description = "The type of list.",
          type = "string",
        },
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
        tables = {
          description = "Tables in the requested dataset.",
          items = {
            properties = {
              clustering = {
                ["$ref"] = "Clustering",
                description = "[Beta] Clustering specification for this table, if configured.",
              },
              creationTime = {
                description = "The time when this table was created, in milliseconds since the epoch.",
                format = "int64",
                type = "string",
              },
              expirationTime = {
                description = "[Optional] The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed.",
                format = "int64",
                type = "string",
              },
              friendlyName = {
                description = "The user-friendly name for this table.",
                type = "string",
              },
              id = {
                description = "An opaque ID of the table",
                type = "string",
              },
              kind = {
                default = "bigquery#table",
                description = "The resource type.",
                type = "string",
              },
              labels = {
                additionalProperties = {
                  type = "string",
                },
                description = "The labels associated with this table. You can use these to organize and group your tables.",
                type = "object",
              },
              rangePartitioning = {
                ["$ref"] = "RangePartitioning",
                description = "The range partitioning specification for this table, if configured.",
              },
              tableReference = {
                ["$ref"] = "TableReference",
                description = "A reference uniquely identifying the table.",
              },
              timePartitioning = {
                ["$ref"] = "TimePartitioning",
                description = "The time-based partitioning specification for this table, if configured.",
              },
              type = {
                description = "The type of table. Possible values are: TABLE, VIEW.",
                type = "string",
              },
              view = {
                description = "Additional details for a view.",
                properties = {
                  useLegacySql = {
                    description = "True if view is defined in legacy SQL dialect, false if in standard SQL.",
                    type = "boolean",
                  },
                },
                type = "object",
              },
            },
            type = "object",
          },
          type = "array",
        },
        totalItems = {
          description = "The total number of tables in the dataset.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TableReference = {
      id = "TableReference",
      properties = {
        datasetId = {
          annotations = {
            required = {
              "bigquery.tables.update",
            },
          },
          description = "[Required] The ID of the dataset containing this table.",
          type = "string",
        },
        projectId = {
          annotations = {
            required = {
              "bigquery.tables.update",
            },
          },
          description = "[Required] The ID of the project containing this table.",
          type = "string",
        },
        tableId = {
          annotations = {
            required = {
              "bigquery.tables.update",
            },
          },
          description = "[Required] The ID of the table. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    TableRow = {
      id = "TableRow",
      properties = {
        f = {
          description = "Represents a single row in the result set, consisting of one or more fields.",
          items = {
            ["$ref"] = "TableCell",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TableSchema = {
      id = "TableSchema",
      properties = {
        fields = {
          description = "Describes the fields in a table.",
          items = {
            ["$ref"] = "TableFieldSchema",
          },
          type = "array",
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
    TimePartitioning = {
      id = "TimePartitioning",
      properties = {
        expirationMs = {
          description = "[Optional] Number of milliseconds for which to keep the storage for partitions in the table. The storage in a partition will have an expiration time of its partition time plus this value.",
          format = "int64",
          type = "string",
        },
        field = {
          description = "[Beta] [Optional] If not set, the table is partitioned by pseudo column, referenced via either '_PARTITIONTIME' as TIMESTAMP type, or '_PARTITIONDATE' as DATE type. If field is specified, the table is instead partitioned by this field. The field must be a top-level TIMESTAMP or DATE field. Its mode must be NULLABLE or REQUIRED.",
          type = "string",
        },
        requirePartitionFilter = {
          type = "boolean",
        },
        type = {
          description = "[Required] The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively. When the type is not specified, the default behavior is DAY.",
          type = "string",
        },
      },
      type = "object",
    },
    TrainingOptions = {
      description = "Options used in model training.",
      id = "TrainingOptions",
      properties = {
        adjustStepChanges = {
          description = "If true, detect step changes and make data adjustment in the input time series.",
          type = "boolean",
        },
        autoArima = {
          description = "Whether to enable auto ARIMA or not.",
          type = "boolean",
        },
        autoArimaMaxOrder = {
          description = "The max value of non-seasonal p and q.",
          format = "int64",
          type = "string",
        },
        batchSize = {
          description = "Batch size for dnn models.",
          format = "int64",
          type = "string",
        },
        boosterType = {
          description = "Booster type for boosted tree models.",
          enum = {
            "BOOSTER_TYPE_UNSPECIFIED",
            "GBTREE",
            "DART",
          },
          enumDescriptions = {
            "Unspecified booster type.",
            "Gbtree booster.",
            "Dart booster.",
          },
          type = "string",
        },
        calculatePValues = {
          description = "Whether or not p-value test should be computed for this model. Only available for linear and logistic regression models.",
          type = "boolean",
        },
        cleanSpikesAndDips = {
          description = "If true, clean spikes and dips in the input time series.",
          type = "boolean",
        },
        colorSpace = {
          description = "Enums for color space, used for processing images in Object Table. See more details at https://www.tensorflow.org/io/tutorials/colorspace.",
          enum = {
            "COLOR_SPACE_UNSPECIFIED",
            "RGB",
            "HSV",
            "YIQ",
            "YUV",
            "GRAYSCALE",
          },
          enumDescriptions = {
            "Unspecified color space",
            "RGB",
            "HSV",
            "YIQ",
            "YUV",
            "GRAYSCALE",
          },
          type = "string",
        },
        colsampleBylevel = {
          description = "Subsample ratio of columns for each level for boosted tree models.",
          format = "double",
          type = "number",
        },
        colsampleBynode = {
          description = "Subsample ratio of columns for each node(split) for boosted tree models.",
          format = "double",
          type = "number",
        },
        colsampleBytree = {
          description = "Subsample ratio of columns when constructing each tree for boosted tree models.",
          format = "double",
          type = "number",
        },
        dartNormalizeType = {
          description = "Type of normalization algorithm for boosted tree models using dart booster.",
          enum = {
            "DART_NORMALIZE_TYPE_UNSPECIFIED",
            "TREE",
            "FOREST",
          },
          enumDescriptions = {
            "Unspecified dart normalize type.",
            "New trees have the same weight of each of dropped trees.",
            "New trees have the same weight of sum of dropped trees.",
          },
          type = "string",
        },
        dataFrequency = {
          description = "The data frequency of a time series.",
          enum = {
            "DATA_FREQUENCY_UNSPECIFIED",
            "AUTO_FREQUENCY",
            "YEARLY",
            "QUARTERLY",
            "MONTHLY",
            "WEEKLY",
            "DAILY",
            "HOURLY",
            "PER_MINUTE",
          },
          enumDescriptions = {
            "",
            "Automatically inferred from timestamps.",
            "Yearly data.",
            "Quarterly data.",
            "Monthly data.",
            "Weekly data.",
            "Daily data.",
            "Hourly data.",
            "Per-minute data.",
          },
          type = "string",
        },
        dataSplitColumn = {
          description = "The column to split data with. This column won't be used as a feature. 1. When data_split_method is CUSTOM, the corresponding column should be boolean. The rows with true value tag are eval data, and the false are training data. 2. When data_split_method is SEQ, the first DATA_SPLIT_EVAL_FRACTION rows (from smallest to largest) in the corresponding column are used as training data, and the rest are eval data. It respects the order in Orderable data types: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types#data-type-properties",
          type = "string",
        },
        dataSplitEvalFraction = {
          description = "The fraction of evaluation data over the whole input data. The rest of data will be used as training data. The format should be double. Accurate to two decimal places. Default value is 0.2.",
          format = "double",
          type = "number",
        },
        dataSplitMethod = {
          description = "The data split type for training and evaluation, e.g. RANDOM.",
          enum = {
            "DATA_SPLIT_METHOD_UNSPECIFIED",
            "RANDOM",
            "CUSTOM",
            "SEQUENTIAL",
            "NO_SPLIT",
            "AUTO_SPLIT",
          },
          enumDescriptions = {
            "",
            "Splits data randomly.",
            "Splits data with the user provided tags.",
            "Splits data sequentially.",
            "Data split will be skipped.",
            "Splits data automatically: Uses NO_SPLIT if the data size is small. Otherwise uses RANDOM.",
          },
          type = "string",
        },
        decomposeTimeSeries = {
          description = "If true, perform decompose time series and save the results.",
          type = "boolean",
        },
        distanceType = {
          description = "Distance type for clustering models.",
          enum = {
            "DISTANCE_TYPE_UNSPECIFIED",
            "EUCLIDEAN",
            "COSINE",
          },
          enumDescriptions = {
            "",
            "Eculidean distance.",
            "Cosine distance.",
          },
          type = "string",
        },
        dropout = {
          description = "Dropout probability for dnn models.",
          format = "double",
          type = "number",
        },
        earlyStop = {
          description = "Whether to stop early when the loss doesn't improve significantly any more (compared to min_relative_progress). Used only for iterative training algorithms.",
          type = "boolean",
        },
        enableGlobalExplain = {
          description = "If true, enable global explanation during training.",
          type = "boolean",
        },
        feedbackType = {
          description = "Feedback type that specifies which algorithm to run for matrix factorization.",
          enum = {
            "FEEDBACK_TYPE_UNSPECIFIED",
            "IMPLICIT",
            "EXPLICIT",
          },
          enumDescriptions = {
            "",
            "Use weighted-als for implicit feedback problems.",
            "Use nonweighted-als for explicit feedback problems.",
          },
          type = "string",
        },
        hiddenUnits = {
          description = "Hidden units for dnn models.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        holidayRegion = {
          description = "The geographical region based on which the holidays are considered in time series modeling. If a valid value is specified, then holiday effects modeling is enabled.",
          enum = {
            "HOLIDAY_REGION_UNSPECIFIED",
            "GLOBAL",
            "NA",
            "JAPAC",
            "EMEA",
            "LAC",
            "AE",
            "AR",
            "AT",
            "AU",
            "BE",
            "BR",
            "CA",
            "CH",
            "CL",
            "CN",
            "CO",
            "CS",
            "CZ",
            "DE",
            "DK",
            "DZ",
            "EC",
            "EE",
            "EG",
            "ES",
            "FI",
            "FR",
            "GB",
            "GR",
            "HK",
            "HU",
            "ID",
            "IE",
            "IL",
            "IN",
            "IR",
            "IT",
            "JP",
            "KR",
            "LV",
            "MA",
            "MX",
            "MY",
            "NG",
            "NL",
            "NO",
            "NZ",
            "PE",
            "PH",
            "PK",
            "PL",
            "PT",
            "RO",
            "RS",
            "RU",
            "SA",
            "SE",
            "SG",
            "SI",
            "SK",
            "TH",
            "TR",
            "TW",
            "UA",
            "US",
            "VE",
            "VN",
            "ZA",
          },
          enumDescriptions = {
            "Holiday region unspecified.",
            "Global.",
            "North America.",
            "Japan and Asia Pacific: Korea, Greater China, India, Australia, and New Zealand.",
            "Europe, the Middle East and Africa.",
            "Latin America and the Caribbean.",
            "United Arab Emirates",
            "Argentina",
            "Austria",
            "Australia",
            "Belgium",
            "Brazil",
            "Canada",
            "Switzerland",
            "Chile",
            "China",
            "Colombia",
            "Czechoslovakia",
            "Czech Republic",
            "Germany",
            "Denmark",
            "Algeria",
            "Ecuador",
            "Estonia",
            "Egypt",
            "Spain",
            "Finland",
            "France",
            "Great Britain (United Kingdom)",
            "Greece",
            "Hong Kong",
            "Hungary",
            "Indonesia",
            "Ireland",
            "Israel",
            "India",
            "Iran",
            "Italy",
            "Japan",
            "Korea (South)",
            "Latvia",
            "Morocco",
            "Mexico",
            "Malaysia",
            "Nigeria",
            "Netherlands",
            "Norway",
            "New Zealand",
            "Peru",
            "Philippines",
            "Pakistan",
            "Poland",
            "Portugal",
            "Romania",
            "Serbia",
            "Russian Federation",
            "Saudi Arabia",
            "Sweden",
            "Singapore",
            "Slovenia",
            "Slovakia",
            "Thailand",
            "Turkey",
            "Taiwan",
            "Ukraine",
            "United States",
            "Venezuela",
            "Viet Nam",
            "South Africa",
          },
          type = "string",
        },
        horizon = {
          description = "The number of periods ahead that need to be forecasted.",
          format = "int64",
          type = "string",
        },
        hparamTuningObjectives = {
          description = "The target evaluation metrics to optimize the hyperparameters for.",
          items = {
            enum = {
              "HPARAM_TUNING_OBJECTIVE_UNSPECIFIED",
              "MEAN_ABSOLUTE_ERROR",
              "MEAN_SQUARED_ERROR",
              "MEAN_SQUARED_LOG_ERROR",
              "MEDIAN_ABSOLUTE_ERROR",
              "R_SQUARED",
              "EXPLAINED_VARIANCE",
              "PRECISION",
              "RECALL",
              "ACCURACY",
              "F1_SCORE",
              "LOG_LOSS",
              "ROC_AUC",
              "DAVIES_BOULDIN_INDEX",
              "MEAN_AVERAGE_PRECISION",
              "NORMALIZED_DISCOUNTED_CUMULATIVE_GAIN",
              "AVERAGE_RANK",
            },
            enumDescriptions = {
              "Unspecified evaluation metric.",
              "Mean absolute error. mean_absolute_error = AVG(ABS(label - predicted))",
              "Mean squared error. mean_squared_error = AVG(POW(label - predicted, 2))",
              "Mean squared log error. mean_squared_log_error = AVG(POW(LN(1 + label) - LN(1 + predicted), 2))",
              "Mean absolute error. median_absolute_error = APPROX_QUANTILES(absolute_error, 2)[OFFSET(1)]",
              "R^2 score. This corresponds to r2_score in ML.EVALUATE. r_squared = 1 - SUM(squared_error)/(COUNT(label)*VAR_POP(label))",
              "Explained variance. explained_variance = 1 - VAR_POP(label_error)/VAR_POP(label)",
              "Precision is the fraction of actual positive predictions that had positive actual labels. For multiclass this is a macro-averaged metric treating each class as a binary classifier.",
              "Recall is the fraction of actual positive labels that were given a positive prediction. For multiclass this is a macro-averaged metric.",
              "Accuracy is the fraction of predictions given the correct label. For multiclass this is a globally micro-averaged metric.",
              "The F1 score is an average of recall and precision. For multiclass this is a macro-averaged metric.",
              "Logorithmic Loss. For multiclass this is a macro-averaged metric.",
              "Area Under an ROC Curve. For multiclass this is a macro-averaged metric.",
              "Davies-Bouldin Index.",
              "Mean Average Precision.",
              "Normalized Discounted Cumulative Gain.",
              "Average Rank.",
            },
            type = "string",
          },
          type = "array",
        },
        includeDrift = {
          description = "Include drift when fitting an ARIMA model.",
          type = "boolean",
        },
        initialLearnRate = {
          description = "Specifies the initial learning rate for the line search learn rate strategy.",
          format = "double",
          type = "number",
        },
        inputLabelColumns = {
          description = "Name of input label columns in training data.",
          items = {
            type = "string",
          },
          type = "array",
        },
        integratedGradientsNumSteps = {
          description = "Number of integral steps for the integrated gradients explain method.",
          format = "int64",
          type = "string",
        },
        itemColumn = {
          description = "Item column specified for matrix factorization models.",
          type = "string",
        },
        kmeansInitializationColumn = {
          description = "The column used to provide the initial centroids for kmeans algorithm when kmeans_initialization_method is CUSTOM.",
          type = "string",
        },
        kmeansInitializationMethod = {
          description = "The method used to initialize the centroids for kmeans algorithm.",
          enum = {
            "KMEANS_INITIALIZATION_METHOD_UNSPECIFIED",
            "RANDOM",
            "CUSTOM",
            "KMEANS_PLUS_PLUS",
          },
          enumDescriptions = {
            "Unspecified initialization method.",
            "Initializes the centroids randomly.",
            "Initializes the centroids using data specified in kmeans_initialization_column.",
            "Initializes with kmeans++.",
          },
          type = "string",
        },
        l1Regularization = {
          description = "L1 regularization coefficient.",
          format = "double",
          type = "number",
        },
        l2Regularization = {
          description = "L2 regularization coefficient.",
          format = "double",
          type = "number",
        },
        labelClassWeights = {
          additionalProperties = {
            format = "double",
            type = "number",
          },
          description = "Weights associated with each label class, for rebalancing the training data. Only applicable for classification models.",
          type = "object",
        },
        learnRate = {
          description = "Learning rate in training. Used only for iterative training algorithms.",
          format = "double",
          type = "number",
        },
        learnRateStrategy = {
          description = "The strategy to determine learn rate for the current iteration.",
          enum = {
            "LEARN_RATE_STRATEGY_UNSPECIFIED",
            "LINE_SEARCH",
            "CONSTANT",
          },
          enumDescriptions = {
            "",
            "Use line search to determine learning rate.",
            "Use a constant learning rate.",
          },
          type = "string",
        },
        lossType = {
          description = "Type of loss function used during training run.",
          enum = {
            "LOSS_TYPE_UNSPECIFIED",
            "MEAN_SQUARED_LOSS",
            "MEAN_LOG_LOSS",
          },
          enumDescriptions = {
            "",
            "Mean squared loss, used for linear regression.",
            "Mean log loss, used for logistic regression.",
          },
          type = "string",
        },
        maxIterations = {
          description = "The maximum number of iterations in training. Used only for iterative training algorithms.",
          format = "int64",
          type = "string",
        },
        maxParallelTrials = {
          description = "Maximum number of trials to run in parallel.",
          format = "int64",
          type = "string",
        },
        maxTimeSeriesLength = {
          description = "Get truncated length by last n points in time series. Use separately from time_series_length_fraction and min_time_series_length.",
          format = "int64",
          type = "string",
        },
        maxTreeDepth = {
          description = "Maximum depth of a tree for boosted tree models.",
          format = "int64",
          type = "string",
        },
        minRelativeProgress = {
          description = "When early_stop is true, stops training when accuracy improvement is less than 'min_relative_progress'. Used only for iterative training algorithms.",
          format = "double",
          type = "number",
        },
        minSplitLoss = {
          description = "Minimum split loss for boosted tree models.",
          format = "double",
          type = "number",
        },
        minTimeSeriesLength = {
          description = "Set fast trend ARIMA_PLUS model minimum training length. Use in pair with time_series_length_fraction.",
          format = "int64",
          type = "string",
        },
        minTreeChildWeight = {
          description = "Minimum sum of instance weight needed in a child for boosted tree models.",
          format = "int64",
          type = "string",
        },
        modelUri = {
          description = "Google Cloud Storage URI from which the model was imported. Only applicable for imported models.",
          type = "string",
        },
        nonSeasonalOrder = {
          ["$ref"] = "ArimaOrder",
          description = "A specification of the non-seasonal part of the ARIMA model: the three components (p, d, q) are the AR order, the degree of differencing, and the MA order.",
        },
        numClusters = {
          description = "Number of clusters for clustering models.",
          format = "int64",
          type = "string",
        },
        numFactors = {
          description = "Num factors specified for matrix factorization models.",
          format = "int64",
          type = "string",
        },
        numParallelTree = {
          description = "Number of parallel trees constructed during each iteration for boosted tree models.",
          format = "int64",
          type = "string",
        },
        numTrials = {
          description = "Number of trials to run this hyperparameter tuning job.",
          format = "int64",
          type = "string",
        },
        optimizationStrategy = {
          description = "Optimization strategy for training linear regression models.",
          enum = {
            "OPTIMIZATION_STRATEGY_UNSPECIFIED",
            "BATCH_GRADIENT_DESCENT",
            "NORMAL_EQUATION",
          },
          enumDescriptions = {
            "",
            "Uses an iterative batch gradient descent algorithm.",
            "Uses a normal equation to solve linear regression problem.",
          },
          type = "string",
        },
        preserveInputStructs = {
          description = "Whether to preserve the input structs in output feature names. Suppose there is a struct A with field b. When false (default), the output feature name is A_b. When true, the output feature name is A.b.",
          type = "boolean",
        },
        sampledShapleyNumPaths = {
          description = "Number of paths for the sampled Shapley explain method.",
          format = "int64",
          type = "string",
        },
        subsample = {
          description = "Subsample fraction of the training data to grow tree to prevent overfitting for boosted tree models.",
          format = "double",
          type = "number",
        },
        timeSeriesDataColumn = {
          description = "Column to be designated as time series data for ARIMA model.",
          type = "string",
        },
        timeSeriesIdColumn = {
          description = "The time series id column that was used during ARIMA model training.",
          type = "string",
        },
        timeSeriesIdColumns = {
          description = "The time series id columns that were used during ARIMA model training.",
          items = {
            type = "string",
          },
          type = "array",
        },
        timeSeriesLengthFraction = {
          description = "Get truncated length by fraction in time series.",
          format = "double",
          type = "number",
        },
        timeSeriesTimestampColumn = {
          description = "Column to be designated as time series timestamp for ARIMA model.",
          type = "string",
        },
        treeMethod = {
          description = "Tree construction algorithm for boosted tree models.",
          enum = {
            "TREE_METHOD_UNSPECIFIED",
            "AUTO",
            "EXACT",
            "APPROX",
            "HIST",
          },
          enumDescriptions = {
            "Unspecified tree method.",
            "Use heuristic to choose the fastest method.",
            "Exact greedy algorithm.",
            "Approximate greedy algorithm using quantile sketch and gradient histogram.",
            "Fast histogram optimized approximate greedy algorithm.",
          },
          type = "string",
        },
        trendSmoothingWindowSize = {
          description = "The smoothing window size for the trend component of the time series.",
          format = "int64",
          type = "string",
        },
        userColumn = {
          description = "User column specified for matrix factorization models.",
          type = "string",
        },
        walsAlpha = {
          description = "Hyperparameter for matrix factoration when implicit feedback type is specified.",
          format = "double",
          type = "number",
        },
        warmStart = {
          description = "Whether to train a model from the last checkpoint.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TrainingRun = {
      description = "Information about a single training query run for the model.",
      id = "TrainingRun",
      properties = {
        classLevelGlobalExplanations = {
          description = "Output only. Global explanation contains the explanation of top features on the class level. Applies to classification models only.",
          items = {
            ["$ref"] = "GlobalExplanation",
          },
          readOnly = true,
          type = "array",
        },
        dataSplitResult = {
          ["$ref"] = "DataSplitResult",
          description = "Output only. Data split result of the training run. Only set when the input data is actually split.",
          readOnly = true,
        },
        evaluationMetrics = {
          ["$ref"] = "EvaluationMetrics",
          description = "Output only. The evaluation metrics over training/eval data that were computed at the end of training.",
          readOnly = true,
        },
        modelLevelGlobalExplanation = {
          ["$ref"] = "GlobalExplanation",
          description = "Output only. Global explanation contains the explanation of top features on the model level. Applies to both regression and classification models.",
          readOnly = true,
        },
        results = {
          description = "Output only. Output of each iteration run, results.size() <= max_iterations.",
          items = {
            ["$ref"] = "IterationResult",
          },
          readOnly = true,
          type = "array",
        },
        startTime = {
          description = "Output only. The start time of this training run.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        trainingOptions = {
          ["$ref"] = "TrainingOptions",
          description = "Output only. Options that were used for this training run, includes user specified and default options that were used.",
          readOnly = true,
        },
        trainingStartTime = {
          description = "Output only. The start time of this training run, in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        vertexAiModelId = {
          description = "The model id in the [Vertex AI Model Registry](https://cloud.google.com/vertex-ai/docs/model-registry/introduction) for this training run.",
          type = "string",
        },
        vertexAiModelVersion = {
          description = "Output only. The model version in the [Vertex AI Model Registry](https://cloud.google.com/vertex-ai/docs/model-registry/introduction) for this training run.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    TransactionInfo = {
      id = "TransactionInfo",
      properties = {
        transactionId = {
          description = "[Output-only] // [Alpha] Id of the transaction.",
          type = "string",
        },
      },
      type = "object",
    },
    UserDefinedFunctionResource = {
      description = "This is used for defining User Defined Function (UDF) resources only when using legacy SQL. Users of Standard SQL should leverage either DDL (e.g. CREATE [TEMPORARY] FUNCTION ... ) or the Routines API to define UDF resources. For additional information on migrating, see: https://cloud.google.com/bigquery/docs/reference/standard-sql/migrating-from-legacy-sql#differences_in_user-defined_javascript_functions",
      id = "UserDefinedFunctionResource",
      properties = {
        inlineCode = {
          description = "[Pick one] An inline resource that contains code for a user-defined function (UDF). Providing a inline code resource is equivalent to providing a URI for a file containing the same code.",
          type = "string",
        },
        resourceUri = {
          description = "[Pick one] A code resource to load from a Google Cloud Storage URI (gs://bucket/path).",
          type = "string",
        },
      },
      type = "object",
    },
    ViewDefinition = {
      id = "ViewDefinition",
      properties = {
        query = {
          description = "[Required] A query that BigQuery executes when the view is referenced.",
          type = "string",
        },
        useExplicitColumnNames = {
          description = "True if the column names are explicitly specified. For example by using the 'CREATE VIEW v(c1, c2) AS ...' syntax. Can only be set using BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/",
          type = "boolean",
        },
        useLegacySql = {
          description = "Specifies whether to use BigQuery's legacy SQL for this view. The default value is true. If set to false, the view will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ Queries and views that reference this view must use the same flag value.",
          type = "boolean",
        },
        userDefinedFunctionResources = {
          description = "Describes user-defined function resources used in the query.",
          items = {
            ["$ref"] = "UserDefinedFunctionResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "bigquery/v2/",
  title = "BigQuery API",
  version = "v2",
}
