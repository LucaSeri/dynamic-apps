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
  baseUrl = "https://storagetransfer.googleapis.com/",
  batchPath = "batch",
  description = "Transfers data from external data sources to a Google Cloud Storage bucket or between Google Cloud Storage buckets. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/storage-transfer/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "storagetransfer:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://storagetransfer.mtls.googleapis.com/",
  name = "storagetransfer",
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
    googleServiceAccounts = {
      methods = {
        get = {
          description = "Returns the Google service account that is used by Storage Transfer Service to access buckets in the project where transfers run or in other projects. Each Google service account is associated with one Google Cloud project. Users should add this service account to the Google Cloud Storage bucket ACLs to grant access to Storage Transfer Service. This service account is created and owned by Storage Transfer Service and can only be used by Storage Transfer Service.",
          flatPath = "v1/googleServiceAccounts/{projectId}",
          httpMethod = "GET",
          id = "storagetransfer.googleServiceAccounts.get",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the Google Cloud project that the Google service account is associated with.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/googleServiceAccounts/{projectId}",
          response = {
            ["$ref"] = "GoogleServiceAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    projects = {
      resources = {
        agentPools = {
          methods = {
            create = {
              description = "Creates an agent pool resource.",
              flatPath = "v1/projects/{projectsId}/agentPools",
              httpMethod = "POST",
              id = "storagetransfer.projects.agentPools.create",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                agentPoolId = {
                  description = "Required. The ID of the agent pool to create. The `agent_pool_id` must meet the following requirements: * Length of 128 characters or less. * Not start with the string `goog`. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. The ID of the Google Cloud project that owns the agent pool.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+projectId}/agentPools",
              request = {
                ["$ref"] = "AgentPool",
              },
              response = {
                ["$ref"] = "AgentPool",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an agent pool.",
              flatPath = "v1/projects/{projectsId}/agentPools/{agentPoolsId}",
              httpMethod = "DELETE",
              id = "storagetransfer.projects.agentPools.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the agent pool to delete.",
                  location = "path",
                  pattern = "^projects/[^/]+/agentPools/[^/]+$",
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
              description = "Gets an agent pool.",
              flatPath = "v1/projects/{projectsId}/agentPools/{agentPoolsId}",
              httpMethod = "GET",
              id = "storagetransfer.projects.agentPools.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the agent pool to get.",
                  location = "path",
                  pattern = "^projects/[^/]+/agentPools/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "AgentPool",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists agent pools.",
              flatPath = "v1/projects/{projectsId}/agentPools",
              httpMethod = "GET",
              id = "storagetransfer.projects.agentPools.list",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                filter = {
                  description = "An optional list of query parameters specified as JSON text in the form of: `{\"agentPoolNames\":[\"agentpool1\",\"agentpool2\",...]}` Since `agentPoolNames` support multiple values, its values must be specified with array notation. When the filter is either empty or not provided, the list returns all agent pools for the project.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The list page size. The max allowed value is `256`.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The list page token.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Required. The ID of the Google Cloud project that owns the job.",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{+projectId}/agentPools",
              response = {
                ["$ref"] = "ListAgentPoolsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates an existing agent pool resource.",
              flatPath = "v1/projects/{projectsId}/agentPools/{agentPoolsId}",
              httpMethod = "PATCH",
              id = "storagetransfer.projects.agentPools.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+/agentPools/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The [field mask] (https://developers.google.com/protocol-buffers/docs/reference/google.protobuf) of the fields in `agentPool` to update in this request. The following `agentPool` fields can be updated: * display_name * bandwidth_limit",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "AgentPool",
              },
              response = {
                ["$ref"] = "AgentPool",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    transferJobs = {
      methods = {
        create = {
          description = "Creates a transfer job that runs periodically.",
          flatPath = "v1/transferJobs",
          httpMethod = "POST",
          id = "storagetransfer.transferJobs.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/transferJobs",
          request = {
            ["$ref"] = "TransferJob",
          },
          response = {
            ["$ref"] = "TransferJob",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a transfer job. Deleting a transfer job sets its status to DELETED.",
          flatPath = "v1/transferJobs/{transferJobsId}",
          httpMethod = "DELETE",
          id = "storagetransfer.transferJobs.delete",
          parameterOrder = {
            "jobName",
            "projectId",
          },
          parameters = {
            jobName = {
              description = "Required. The job to delete.",
              location = "path",
              pattern = "^transferJobs/.*$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. The ID of the Google Cloud project that owns the job.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+jobName}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets a transfer job.",
          flatPath = "v1/transferJobs/{transferJobsId}",
          httpMethod = "GET",
          id = "storagetransfer.transferJobs.get",
          parameterOrder = {
            "jobName",
            "projectId",
          },
          parameters = {
            jobName = {
              description = "Required. The job to get.",
              location = "path",
              pattern = "^transferJobs/.*$",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Required. The ID of the Google Cloud project that owns the job.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+jobName}",
          response = {
            ["$ref"] = "TransferJob",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists transfer jobs.",
          flatPath = "v1/transferJobs",
          httpMethod = "GET",
          id = "storagetransfer.transferJobs.list",
          parameterOrder = {
            "filter",
          },
          parameters = {
            filter = {
              description = "Required. A list of query parameters specified as JSON text in the form of: `{\"projectId\":\"my_project_id\", \"jobNames\":[\"jobid1\",\"jobid2\",...], \"jobStatuses\":[\"status1\",\"status2\",...]}` Since `jobNames` and `jobStatuses` support multiple values, their values must be specified with array notation. `projectId` is required. `jobNames` and `jobStatuses` are optional. The valid values for `jobStatuses` are case-insensitive: ENABLED, DISABLED, and DELETED.",
              location = "query",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The list page size. The max allowed value is 256.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The list page token.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/transferJobs",
          response = {
            ["$ref"] = "ListTransferJobsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        patch = {
          description = "Updates a transfer job. Updating a job's transfer spec does not affect transfer operations that are running already. **Note:** The job's status field can be modified using this RPC (for example, to set a job's status to DELETED, DISABLED, or ENABLED).",
          flatPath = "v1/transferJobs/{transferJobsId}",
          httpMethod = "PATCH",
          id = "storagetransfer.transferJobs.patch",
          parameterOrder = {
            "jobName",
          },
          parameters = {
            jobName = {
              description = "Required. The name of job to update.",
              location = "path",
              pattern = "^transferJobs/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+jobName}",
          request = {
            ["$ref"] = "UpdateTransferJobRequest",
          },
          response = {
            ["$ref"] = "TransferJob",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        run = {
          description = "Starts a new operation for the specified transfer job. A `TransferJob` has a maximum of one active `TransferOperation`. If this method is called while a `TransferOperation` is active, an error is returned.",
          flatPath = "v1/transferJobs/{transferJobsId}:run",
          httpMethod = "POST",
          id = "storagetransfer.transferJobs.run",
          parameterOrder = {
            "jobName",
          },
          parameters = {
            jobName = {
              description = "Required. The name of the transfer job.",
              location = "path",
              pattern = "^transferJobs/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+jobName}:run",
          request = {
            ["$ref"] = "RunTransferJobRequest",
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
    transferOperations = {
      methods = {
        cancel = {
          description = "Cancels a transfer. Use the transferOperations.get method to check if the cancellation succeeded or if the operation completed despite the `cancel` request. When you cancel an operation, the currently running transfer is interrupted. For recurring transfer jobs, the next instance of the transfer job will still run. For example, if your job is configured to run every day at 1pm and you cancel Monday's operation at 1:05pm, Monday's transfer will stop. However, a transfer job will still be attempted on Tuesday. This applies only to currently running operations. If an operation is not currently running, `cancel` does nothing. *Caution:* Canceling a transfer job can leave your data in an unknown state. We recommend that you restore the state at both the destination and the source after the `cancel` request completes so that your data is in a consistent state. When you cancel a job, the next job computes a delta of files and may repair any inconsistent state. For instance, if you run a job every day, and today's job found 10 new files and transferred five files before you canceled the job, tomorrow's transfer operation will compute a new delta with the five files that were not copied today plus any new files discovered tomorrow.",
          flatPath = "v1/transferOperations/{transferOperationsId}:cancel",
          httpMethod = "POST",
          id = "storagetransfer.transferOperations.cancel",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be cancelled.",
              location = "path",
              pattern = "^transferOperations/.*$",
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
          flatPath = "v1/transferOperations/{transferOperationsId}",
          httpMethod = "GET",
          id = "storagetransfer.transferOperations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^transferOperations/.*$",
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
          description = "Lists transfer operations. Operations are ordered by their creation time in reverse chronological order.",
          flatPath = "v1/transferOperations",
          httpMethod = "GET",
          id = "storagetransfer.transferOperations.list",
          parameterOrder = {
            "name",
            "filter",
          },
          parameters = {
            filter = {
              description = "Required. A list of query parameters specified as JSON text in the form of: `{\"projectId\":\"my_project_id\", \"jobNames\":[\"jobid1\",\"jobid2\",...], \"operationNames\":[\"opid1\",\"opid2\",...], \"transferStatuses\":[\"status1\",\"status2\",...]}` Since `jobNames`, `operationNames`, and `transferStatuses` support multiple values, they must be specified with array notation. `projectId` is required. `jobNames`, `operationNames`, and `transferStatuses` are optional. The valid values for `transferStatuses` are case-insensitive: IN_PROGRESS, PAUSED, SUCCESS, FAILED, and ABORTED.",
              location = "query",
              required = true,
              type = "string",
            },
            name = {
              description = "Required. The name of the type being listed; must be `transferOperations`.",
              location = "path",
              pattern = "^transferOperations$",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The list page size. The max allowed value is 256.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The list page token.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "ListOperationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        pause = {
          description = "Pauses a transfer operation.",
          flatPath = "v1/transferOperations/{transferOperationsId}:pause",
          httpMethod = "POST",
          id = "storagetransfer.transferOperations.pause",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the transfer operation.",
              location = "path",
              pattern = "^transferOperations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:pause",
          request = {
            ["$ref"] = "PauseTransferOperationRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        resume = {
          description = "Resumes a transfer operation that is paused.",
          flatPath = "v1/transferOperations/{transferOperationsId}:resume",
          httpMethod = "POST",
          id = "storagetransfer.transferOperations.resume",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the transfer operation.",
              location = "path",
              pattern = "^transferOperations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:resume",
          request = {
            ["$ref"] = "ResumeTransferOperationRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://storagetransfer.googleapis.com/",
  schemas = {
    AgentPool = {
      description = "Represents an On-Premises Agent pool.",
      id = "AgentPool",
      properties = {
        bandwidthLimit = {
          ["$ref"] = "BandwidthLimit",
          description = "Specifies the bandwidth limit details. If this field is unspecified, the default value is set as 'No Limit'.",
        },
        displayName = {
          description = "Specifies the client-specified AgentPool description.",
          type = "string",
        },
        name = {
          description = "Required. Specifies a unique string that identifies the agent pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`",
          type = "string",
        },
        state = {
          description = "Output only. Specifies the state of the AgentPool.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "CREATED",
            "DELETING",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "This is an initialization state. During this stage, the resources such as Pub/Sub topics are allocated for the AgentPool.",
            "Determines that the AgentPool is created for use. At this state, Agents can join the AgentPool and participate in the transfer jobs in that pool.",
            "Determines that the AgentPool deletion has been initiated, and all the resources are scheduled to be cleaned up and freed.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    AwsAccessKey = {
      description = "AWS access key (see [AWS Security Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)). For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).",
      id = "AwsAccessKey",
      properties = {
        accessKeyId = {
          description = "Required. AWS access key ID.",
          type = "string",
        },
        secretAccessKey = {
          description = "Required. AWS secret access key. This field is not returned in RPC responses.",
          type = "string",
        },
      },
      type = "object",
    },
    AwsS3CompatibleData = {
      description = "An AwsS3CompatibleData resource.",
      id = "AwsS3CompatibleData",
      properties = {
        bucketName = {
          description = "Required. Specifies the name of the bucket.",
          type = "string",
        },
        endpoint = {
          description = "Required. Specifies the endpoint of the storage service.",
          type = "string",
        },
        path = {
          description = "Specifies the root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.",
          type = "string",
        },
        region = {
          description = "Specifies the region to sign requests with. This can be left blank if requests should be signed with an empty region.",
          type = "string",
        },
        s3Metadata = {
          ["$ref"] = "S3CompatibleMetadata",
          description = "A S3 compatible metadata.",
        },
      },
      type = "object",
    },
    AwsS3Data = {
      description = "An AwsS3Data resource can be a data source, but not a data sink. In an AwsS3Data resource, an object's name is the S3 object's key name.",
      id = "AwsS3Data",
      properties = {
        awsAccessKey = {
          ["$ref"] = "AwsAccessKey",
          description = "Input only. AWS access key used to sign the API requests to the AWS S3 bucket. Permissions on the bucket must be granted to the access ID of the AWS access key. For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).",
        },
        bucketName = {
          description = "Required. S3 Bucket name (see [Creating a bucket](https://docs.aws.amazon.com/AmazonS3/latest/dev/create-bucket-get-location-example.html)).",
          type = "string",
        },
        path = {
          description = "Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.",
          type = "string",
        },
        roleArn = {
          description = "The Amazon Resource Name (ARN) of the role to support temporary credentials via `AssumeRoleWithWebIdentity`. For more information about ARNs, see [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns). When a role ARN is provided, Transfer Service fetches temporary credentials for the session using a `AssumeRoleWithWebIdentity` call for the provided role using the GoogleServiceAccount for this project.",
          type = "string",
        },
      },
      type = "object",
    },
    AzureBlobStorageData = {
      description = "An AzureBlobStorageData resource can be a data source, but not a data sink. An AzureBlobStorageData resource represents one Azure container. The storage account determines the [Azure endpoint](https://docs.microsoft.com/en-us/azure/storage/common/storage-create-storage-account#storage-account-endpoints). In an AzureBlobStorageData resource, a blobs's name is the [Azure Blob Storage blob's key name](https://docs.microsoft.com/en-us/rest/api/storageservices/naming-and-referencing-containers--blobs--and-metadata#blob-names).",
      id = "AzureBlobStorageData",
      properties = {
        azureCredentials = {
          ["$ref"] = "AzureCredentials",
          description = "Required. Input only. Credentials used to authenticate API requests to Azure. For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).",
        },
        container = {
          description = "Required. The container to transfer from the Azure Storage account.",
          type = "string",
        },
        path = {
          description = "Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.",
          type = "string",
        },
        storageAccount = {
          description = "Required. The name of the Azure Storage account.",
          type = "string",
        },
      },
      type = "object",
    },
    AzureCredentials = {
      description = "Azure credentials For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).",
      id = "AzureCredentials",
      properties = {
        sasToken = {
          description = "Required. Azure shared access signature (SAS). For more information about SAS, see [Grant limited access to Azure Storage resources using shared access signatures (SAS)](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).",
          type = "string",
        },
      },
      type = "object",
    },
    BandwidthLimit = {
      description = "Specifies a bandwidth limit for an agent pool.",
      id = "BandwidthLimit",
      properties = {
        limitMbps = {
          description = "Bandwidth rate in megabytes per second, distributed across all the agents in the pool.",
          format = "int64",
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
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    ErrorLogEntry = {
      description = "An entry describing an error that has occurred.",
      id = "ErrorLogEntry",
      properties = {
        errorDetails = {
          description = "A list of messages that carry the error details.",
          items = {
            type = "string",
          },
          type = "array",
        },
        url = {
          description = "Required. A URL that refers to the target (a data source, a data sink, or an object) with which the error is associated.",
          type = "string",
        },
      },
      type = "object",
    },
    ErrorSummary = {
      description = "A summary of errors by error code, plus a count and sample error log entries.",
      id = "ErrorSummary",
      properties = {
        errorCode = {
          description = "Required.",
          enum = {
            "OK",
            "CANCELLED",
            "UNKNOWN",
            "INVALID_ARGUMENT",
            "DEADLINE_EXCEEDED",
            "NOT_FOUND",
            "ALREADY_EXISTS",
            "PERMISSION_DENIED",
            "UNAUTHENTICATED",
            "RESOURCE_EXHAUSTED",
            "FAILED_PRECONDITION",
            "ABORTED",
            "OUT_OF_RANGE",
            "UNIMPLEMENTED",
            "INTERNAL",
            "UNAVAILABLE",
            "DATA_LOSS",
          },
          enumDescriptions = {
            "Not an error; returned on success. HTTP Mapping: 200 OK",
            "The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request",
            "Unknown error. For example, this error may be returned when a `Status` value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error",
            "The client specified an invalid argument. Note that this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request",
            "The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout",
            "Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, `NOT_FOUND` may be used. If a request is denied for some users within a class of users, such as user-based access control, `PERMISSION_DENIED` must be used. HTTP Mapping: 404 Not Found",
            "The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict",
            "The caller does not have permission to execute the specified operation. `PERMISSION_DENIED` must not be used for rejections caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for those errors). `PERMISSION_DENIED` must not be used if the caller can not be identified (use `UNAUTHENTICATED` instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden",
            "The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized",
            "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests",
            "The operation was rejected because the system is not in a state required for the operation's execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a) Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use `ABORTED` if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, `FAILED_PRECONDITION` should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request",
            "The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 409 Conflict",
            "The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to read at an offset that is not in the range [0,2^32-1], but it will generate `OUT_OF_RANGE` if asked to read from an offset past the current file size. There is a fair bit of overlap between `FAILED_PRECONDITION` and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific error) when it applies so that callers who are iterating through a space can easily look for an `OUT_OF_RANGE` error to detect when they are done. HTTP Mapping: 400 Bad Request",
            "The operation is not implemented or is not supported/enabled in this service. HTTP Mapping: 501 Not Implemented",
            "Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error",
            "The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503 Service Unavailable",
            "Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error",
          },
          type = "string",
        },
        errorCount = {
          description = "Required. Count of this type of error.",
          format = "int64",
          type = "string",
        },
        errorLogEntries = {
          description = "Error samples. At most 5 error log entries are recorded for a given error code for a single transfer operation.",
          items = {
            ["$ref"] = "ErrorLogEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EventStream = {
      description = "Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files.",
      id = "EventStream",
      properties = {
        eventStreamExpirationTime = {
          description = "Specifies the data and time at which Storage Transfer Service stops listening for events from this stream. After this time, any transfers in progress will complete, but no new transfers are initiated.",
          format = "google-datetime",
          type = "string",
        },
        eventStreamStartTime = {
          description = "Specifies the date and time that Storage Transfer Service starts listening for events from this stream. If no start time is specified or start time is in the past, Storage Transfer Service starts listening immediately.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "Required. Specifies a unique name of the resource such as AWS SQS ARN in the form 'arn:aws:sqs:region:account_id:queue_name', or Pub/Sub subscription resource name in the form 'projects/{project}/subscriptions/{sub}'.",
          type = "string",
        },
      },
      type = "object",
    },
    GcsData = {
      description = "In a GcsData resource, an object's name is the Cloud Storage object's name and its \"last modification time\" refers to the object's `updated` property of Cloud Storage objects, which changes when the content or the metadata of the object is updated.",
      id = "GcsData",
      properties = {
        bucketName = {
          description = "Required. Cloud Storage bucket name. Must meet [Bucket Name Requirements](/storage/docs/naming#requirements).",
          type = "string",
        },
        path = {
          description = "Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'. The root path value must meet [Object Name Requirements](/storage/docs/naming#objectnames).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleServiceAccount = {
      description = "Google service account",
      id = "GoogleServiceAccount",
      properties = {
        accountEmail = {
          description = "Email address of the service account.",
          type = "string",
        },
        subjectId = {
          description = "Unique identifier for the service account.",
          type = "string",
        },
      },
      type = "object",
    },
    HttpData = {
      description = "An HttpData resource specifies a list of objects on the web to be transferred over HTTP. The information of the objects to be transferred is contained in a file referenced by a URL. The first line in the file must be `\"TsvHttpData-1.0\"`, which specifies the format of the file. Subsequent lines specify the information of the list of objects, one object per list entry. Each entry has the following tab-delimited fields: * **HTTP URL** — The location of the object. * **Length** — The size of the object in bytes. * **MD5** — The base64-encoded MD5 hash of the object. For an example of a valid TSV file, see [Transferring data from URLs](https://cloud.google.com/storage-transfer/docs/create-url-list). When transferring data based on a URL list, keep the following in mind: * When an object located at `http(s)://hostname:port/` is transferred to a data sink, the name of the object at the data sink is `/`. * If the specified size of an object does not match the actual size of the object fetched, the object is not transferred. * If the specified MD5 does not match the MD5 computed from the transferred bytes, the object transfer fails. * Ensure that each URL you specify is publicly accessible. For example, in Cloud Storage you can [share an object publicly] (/storage/docs/cloud-console#_sharingdata) and get a link to it. * Storage Transfer Service obeys `robots.txt` rules and requires the source HTTP server to support `Range` requests and to return a `Content-Length` header in each response. * ObjectConditions have no effect when filtering objects to transfer.",
      id = "HttpData",
      properties = {
        listUrl = {
          description = "Required. The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAgentPoolsResponse = {
      description = "Response from ListAgentPools.",
      id = "ListAgentPoolsResponse",
      properties = {
        agentPools = {
          description = "A list of agent pools.",
          items = {
            ["$ref"] = "AgentPool",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The list next page token.",
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
    ListTransferJobsResponse = {
      description = "Response from ListTransferJobs.",
      id = "ListTransferJobsResponse",
      properties = {
        nextPageToken = {
          description = "The list next page token.",
          type = "string",
        },
        transferJobs = {
          description = "A list of transfer jobs.",
          items = {
            ["$ref"] = "TransferJob",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LoggingConfig = {
      description = "Specifies the logging behavior for transfer operations. For cloud-to-cloud transfers, logs are sent to Cloud Logging. See [Read transfer logs](https://cloud.google.com/storage-transfer/docs/read-transfer-logs) for details. For transfers to or from a POSIX file system, logs are stored in the Cloud Storage bucket that is the source or sink of the transfer. See [Managing Transfer for on-premises jobs] (https://cloud.google.com/storage-transfer/docs/managing-on-prem-jobs#viewing-logs) for details.",
      id = "LoggingConfig",
      properties = {
        enableOnpremGcsTransferLogs = {
          description = "For transfers with a PosixFilesystem source, this option enables the Cloud Storage transfer logs for this transfer.",
          type = "boolean",
        },
        logActionStates = {
          description = "States in which `log_actions` are logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.",
          items = {
            enum = {
              "LOGGABLE_ACTION_STATE_UNSPECIFIED",
              "SUCCEEDED",
              "FAILED",
            },
            enumDescriptions = {
              "Default value. This value is unused.",
              "`LoggableAction` completed successfully. `SUCCEEDED` actions are logged as INFO.",
              "`LoggableAction` terminated in an error state. `FAILED` actions are logged as ERROR.",
            },
            type = "string",
          },
          type = "array",
        },
        logActions = {
          description = "Specifies the actions to be logged. If empty, no logs are generated. Not supported for transfers with PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.",
          items = {
            enum = {
              "LOGGABLE_ACTION_UNSPECIFIED",
              "FIND",
              "DELETE",
              "COPY",
            },
            enumDescriptions = {
              "Default value. This value is unused.",
              "Listing objects in a bucket.",
              "Deleting objects at the source or the destination.",
              "Copying objects to Google Cloud Storage.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MetadataOptions = {
      description = "Specifies the metadata options for running a transfer.",
      id = "MetadataOptions",
      properties = {
        acl = {
          description = "Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL_DESTINATION_BUCKET_DEFAULT.",
          enum = {
            "ACL_UNSPECIFIED",
            "ACL_DESTINATION_BUCKET_DEFAULT",
            "ACL_PRESERVE",
          },
          enumDescriptions = {
            "ACL behavior is unspecified.",
            "Use the destination bucket's default object ACLS, if applicable.",
            "Preserve the object's original ACLs. This requires the service account to have `storage.objects.getIamPolicy` permission for the source object. [Uniform bucket-level access](https://cloud.google.com/storage/docs/uniform-bucket-level-access) must not be enabled on either the source or destination buckets.",
          },
          type = "string",
        },
        gid = {
          description = "Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.",
          enum = {
            "GID_UNSPECIFIED",
            "GID_SKIP",
            "GID_NUMBER",
          },
          enumDescriptions = {
            "GID behavior is unspecified.",
            "Do not preserve GID during a transfer job.",
            "Preserve GID during a transfer job.",
          },
          type = "string",
        },
        kmsKey = {
          description = "Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS_KEY_DESTINATION_BUCKET_DEFAULT.",
          enum = {
            "KMS_KEY_UNSPECIFIED",
            "KMS_KEY_DESTINATION_BUCKET_DEFAULT",
            "KMS_KEY_PRESERVE",
          },
          enumDescriptions = {
            "KmsKey behavior is unspecified.",
            "Use the destination bucket's default encryption settings.",
            "Preserve the object's original Cloud KMS customer-managed encryption key (CMEK) if present. Objects that do not use a Cloud KMS encryption key will be encrypted using the destination bucket's encryption settings.",
          },
          type = "string",
        },
        mode = {
          description = "Specifies how each file's mode attribute should be handled by the transfer. By default, mode is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.",
          enum = {
            "MODE_UNSPECIFIED",
            "MODE_SKIP",
            "MODE_PRESERVE",
          },
          enumDescriptions = {
            "Mode behavior is unspecified.",
            "Do not preserve mode during a transfer job.",
            "Preserve mode during a transfer job.",
          },
          type = "string",
        },
        storageClass = {
          description = "Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.",
          enum = {
            "STORAGE_CLASS_UNSPECIFIED",
            "STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT",
            "STORAGE_CLASS_PRESERVE",
            "STORAGE_CLASS_STANDARD",
            "STORAGE_CLASS_NEARLINE",
            "STORAGE_CLASS_COLDLINE",
            "STORAGE_CLASS_ARCHIVE",
          },
          enumDescriptions = {
            "Storage class behavior is unspecified.",
            "Use the destination bucket's default storage class.",
            "Preserve the object's original storage class. This is only supported for transfers from Google Cloud Storage buckets.",
            "Set the storage class to STANDARD.",
            "Set the storage class to NEARLINE.",
            "Set the storage class to COLDLINE.",
            "Set the storage class to ARCHIVE.",
          },
          type = "string",
        },
        symlink = {
          description = "Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.",
          enum = {
            "SYMLINK_UNSPECIFIED",
            "SYMLINK_SKIP",
            "SYMLINK_PRESERVE",
          },
          enumDescriptions = {
            "Symlink behavior is unspecified.",
            "Do not preserve symlinks during a transfer job.",
            "Preserve symlinks during a transfer job.",
          },
          type = "string",
        },
        temporaryHold = {
          description = "Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY_HOLD_PRESERVE.",
          enum = {
            "TEMPORARY_HOLD_UNSPECIFIED",
            "TEMPORARY_HOLD_SKIP",
            "TEMPORARY_HOLD_PRESERVE",
          },
          enumDescriptions = {
            "Temporary hold behavior is unspecified.",
            "Do not set a temporary hold on the destination object.",
            "Preserve the object's original temporary hold status.",
          },
          type = "string",
        },
        timeCreated = {
          description = "Specifies how each object's `timeCreated` metadata is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TIME_CREATED_SKIP.",
          enum = {
            "TIME_CREATED_UNSPECIFIED",
            "TIME_CREATED_SKIP",
            "TIME_CREATED_PRESERVE_AS_CUSTOM_TIME",
          },
          enumDescriptions = {
            "TimeCreated behavior is unspecified.",
            "Do not preserve the `timeCreated` metadata from the source object.",
            "Preserves the source object's `timeCreated` metadata in the `customTime` field in the destination object. Note that any value stored in the source object's `customTime` field will not be propagated to the destination object.",
          },
          type = "string",
        },
        uid = {
          description = "Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.",
          enum = {
            "UID_UNSPECIFIED",
            "UID_SKIP",
            "UID_NUMBER",
          },
          enumDescriptions = {
            "UID behavior is unspecified.",
            "Do not preserve UID during a transfer job.",
            "Preserve UID during a transfer job.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NotificationConfig = {
      description = "Specification to configure notifications published to Pub/Sub. Notifications are published to the customer-provided topic using the following `PubsubMessage.attributes`: * `\"eventType\"`: one of the EventType values * `\"payloadFormat\"`: one of the PayloadFormat values * `\"projectId\"`: the project_id of the `TransferOperation` * `\"transferJobName\"`: the transfer_job_name of the `TransferOperation` * `\"transferOperationName\"`: the name of the `TransferOperation` The `PubsubMessage.data` contains a TransferOperation resource formatted according to the specified `PayloadFormat`.",
      id = "NotificationConfig",
      properties = {
        eventTypes = {
          description = "Event types for which a notification is desired. If empty, send notifications for all event types.",
          items = {
            enum = {
              "EVENT_TYPE_UNSPECIFIED",
              "TRANSFER_OPERATION_SUCCESS",
              "TRANSFER_OPERATION_FAILED",
              "TRANSFER_OPERATION_ABORTED",
            },
            enumDescriptions = {
              "Illegal value, to avoid allowing a default.",
              "`TransferOperation` completed with status SUCCESS.",
              "`TransferOperation` completed with status FAILED.",
              "`TransferOperation` completed with status ABORTED.",
            },
            type = "string",
          },
          type = "array",
        },
        payloadFormat = {
          description = "Required. The desired format of the notification message payloads.",
          enum = {
            "PAYLOAD_FORMAT_UNSPECIFIED",
            "NONE",
            "JSON",
          },
          enumDescriptions = {
            "Illegal value, to avoid allowing a default.",
            "No payload is included with the notification.",
            "`TransferOperation` is [formatted as a JSON response](https://developers.google.com/protocol-buffers/docs/proto3#json), in application/json.",
          },
          type = "string",
        },
        pubsubTopic = {
          description = "Required. The `Topic.name` of the Pub/Sub topic to which to publish notifications. Must be of the format: `projects/{project}/topics/{topic}`. Not matching this format results in an INVALID_ARGUMENT error.",
          type = "string",
        },
      },
      type = "object",
    },
    ObjectConditions = {
      description = "Conditions that determine which objects are transferred. Applies only to Cloud Data Sources such as S3, Azure, and Cloud Storage. The \"last modification time\" refers to the time of the last change to the object's content or metadata — specifically, this is the `updated` property of Cloud Storage objects, the `LastModified` field of S3 objects, and the `Last-Modified` header of Azure blobs. Transfers with a PosixFilesystem source or destination don't support `ObjectConditions`.",
      id = "ObjectConditions",
      properties = {
        excludePrefixes = {
          description = "If you specify `exclude_prefixes`, Storage Transfer Service uses the items in the `exclude_prefixes` array to determine which objects to exclude from a transfer. Objects must not start with one of the matching `exclude_prefixes` for inclusion in a transfer. The following are requirements of `exclude_prefixes`: * Each exclude-prefix can contain any sequence of Unicode characters, to a max length of 1024 bytes when UTF8-encoded, and must not contain Carriage Return or Line Feed characters. Wildcard matching and regular expression matching are not supported. * Each exclude-prefix must omit the leading slash. For example, to exclude the object `s3://my-aws-bucket/logs/y=2015/requests.gz`, specify the exclude-prefix as `logs/y=2015/requests.gz`. * None of the exclude-prefix values can be empty, if specified. * Each exclude-prefix must exclude a distinct portion of the object namespace. No exclude-prefix may be a prefix of another exclude-prefix. * If include_prefixes is specified, then each exclude-prefix must start with the value of a path explicitly included by `include_prefixes`. The max size of `exclude_prefixes` is 1000. For more information, see [Filtering objects from transfers](/storage-transfer/docs/filtering-objects-from-transfers).",
          items = {
            type = "string",
          },
          type = "array",
        },
        includePrefixes = {
          description = "If you specify `include_prefixes`, Storage Transfer Service uses the items in the `include_prefixes` array to determine which objects to include in a transfer. Objects must start with one of the matching `include_prefixes` for inclusion in the transfer. If exclude_prefixes is specified, objects must not start with any of the `exclude_prefixes` specified for inclusion in the transfer. The following are requirements of `include_prefixes`: * Each include-prefix can contain any sequence of Unicode characters, to a max length of 1024 bytes when UTF8-encoded, and must not contain Carriage Return or Line Feed characters. Wildcard matching and regular expression matching are not supported. * Each include-prefix must omit the leading slash. For example, to include the object `s3://my-aws-bucket/logs/y=2015/requests.gz`, specify the include-prefix as `logs/y=2015/requests.gz`. * None of the include-prefix values can be empty, if specified. * Each include-prefix must include a distinct portion of the object namespace. No include-prefix may be a prefix of another include-prefix. The max size of `include_prefixes` is 1000. For more information, see [Filtering objects from transfers](/storage-transfer/docs/filtering-objects-from-transfers).",
          items = {
            type = "string",
          },
          type = "array",
        },
        lastModifiedBefore = {
          description = "If specified, only objects with a \"last modification time\" before this timestamp and objects that don't have a \"last modification time\" are transferred.",
          format = "google-datetime",
          type = "string",
        },
        lastModifiedSince = {
          description = "If specified, only objects with a \"last modification time\" on or after this timestamp and objects that don't have a \"last modification time\" are transferred. The `last_modified_since` and `last_modified_before` fields can be used together for chunked data processing. For example, consider a script that processes each day's worth of data at a time. For that you'd set each of the fields as follows: * `last_modified_since` to the start of the day * `last_modified_before` to the end of the day",
          format = "google-datetime",
          type = "string",
        },
        maxTimeElapsedSinceLastModification = {
          description = "Ensures that objects are not transferred if a specific maximum time has elapsed since the \"last modification time\". When a TransferOperation begins, objects with a \"last modification time\" are transferred only if the elapsed time between the start_time of the `TransferOperation`and the \"last modification time\" of the object is less than the value of max_time_elapsed_since_last_modification`. Objects that do not have a \"last modification time\" are also transferred.",
          format = "google-duration",
          type = "string",
        },
        minTimeElapsedSinceLastModification = {
          description = "Ensures that objects are not transferred until a specific minimum time has elapsed after the \"last modification time\". When a TransferOperation begins, objects with a \"last modification time\" are transferred only if the elapsed time between the start_time of the `TransferOperation` and the \"last modification time\" of the object is equal to or greater than the value of min_time_elapsed_since_last_modification`. Objects that do not have a \"last modification time\" are also transferred.",
          format = "google-duration",
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
          description = "Represents the transfer operation object. To request a TransferOperation object, use transferOperations.get.",
          type = "object",
        },
        name = {
          description = "The server-assigned unique name. The format of `name` is `transferOperations/some/unique/name`.",
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
    PauseTransferOperationRequest = {
      description = "Request passed to PauseTransferOperation.",
      id = "PauseTransferOperationRequest",
      properties = {},
      type = "object",
    },
    PosixFilesystem = {
      description = "A POSIX filesystem resource.",
      id = "PosixFilesystem",
      properties = {
        rootDirectory = {
          description = "Root directory path to the filesystem.",
          type = "string",
        },
      },
      type = "object",
    },
    ResumeTransferOperationRequest = {
      description = "Request passed to ResumeTransferOperation.",
      id = "ResumeTransferOperationRequest",
      properties = {},
      type = "object",
    },
    RunTransferJobRequest = {
      description = "Request passed to RunTransferJob.",
      id = "RunTransferJobRequest",
      properties = {
        projectId = {
          description = "Required. The ID of the Google Cloud project that owns the transfer job.",
          type = "string",
        },
      },
      type = "object",
    },
    S3CompatibleMetadata = {
      description = "S3CompatibleMetadata contains the metadata fields that apply to the basic types of S3-compatible data providers.",
      id = "S3CompatibleMetadata",
      properties = {
        authMethod = {
          description = "Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.",
          enum = {
            "AUTH_METHOD_UNSPECIFIED",
            "AUTH_METHOD_AWS_SIGNATURE_V4",
            "AUTH_METHOD_AWS_SIGNATURE_V2",
          },
          enumDescriptions = {
            "AuthMethod is not specified.",
            "Auth requests with AWS SigV4.",
            "Auth requests with AWS SigV2.",
          },
          type = "string",
        },
        listApi = {
          description = "The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.",
          enum = {
            "LIST_API_UNSPECIFIED",
            "LIST_OBJECTS_V2",
            "LIST_OBJECTS",
          },
          enumDescriptions = {
            "ListApi is not specified.",
            "Perform listing using ListObjectsV2 API.",
            "Legacy ListObjects API.",
          },
          type = "string",
        },
        protocol = {
          description = "Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.",
          enum = {
            "NETWORK_PROTOCOL_UNSPECIFIED",
            "NETWORK_PROTOCOL_HTTPS",
            "NETWORK_PROTOCOL_HTTP",
          },
          enumDescriptions = {
            "NetworkProtocol is not specified.",
            "Perform requests using HTTPS.",
            "Not recommended: This sends data in clear-text. This is only appropriate within a closed network or for publicly available data. Perform requests using HTTP.",
          },
          type = "string",
        },
        requestModel = {
          description = "Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.",
          enum = {
            "REQUEST_MODEL_UNSPECIFIED",
            "REQUEST_MODEL_VIRTUAL_HOSTED_STYLE",
            "REQUEST_MODEL_PATH_STYLE",
          },
          enumDescriptions = {
            "RequestModel is not specified.",
            "Perform requests using Virtual Hosted Style. Example: https://bucket-name.s3.region.amazonaws.com/key-name",
            "Perform requests using Path Style. Example: https://s3.region.amazonaws.com/bucket-name/key-name",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Schedule = {
      description = "Transfers can be scheduled to recur or to run just once.",
      id = "Schedule",
      properties = {
        endTimeOfDay = {
          ["$ref"] = "TimeOfDay",
          description = "The time in UTC that no further transfer operations are scheduled. Combined with schedule_end_date, `end_time_of_day` specifies the end date and time for starting new transfer operations. This field must be greater than or equal to the timestamp corresponding to the combintation of schedule_start_date and start_time_of_day, and is subject to the following: * If `end_time_of_day` is not set and `schedule_end_date` is set, then a default value of `23:59:59` is used for `end_time_of_day`. * If `end_time_of_day` is set and `schedule_end_date` is not set, then INVALID_ARGUMENT is returned.",
        },
        repeatInterval = {
          description = "Interval between the start of each scheduled TransferOperation. If unspecified, the default value is 24 hours. This value may not be less than 1 hour.",
          format = "google-duration",
          type = "string",
        },
        scheduleEndDate = {
          ["$ref"] = "Date",
          description = "The last day a transfer runs. Date boundaries are determined relative to UTC time. A job runs once per 24 hours within the following guidelines: * If `schedule_end_date` and schedule_start_date are the same and in the future relative to UTC, the transfer is executed only one time. * If `schedule_end_date` is later than `schedule_start_date` and `schedule_end_date` is in the future relative to UTC, the job runs each day at start_time_of_day through `schedule_end_date`.",
        },
        scheduleStartDate = {
          ["$ref"] = "Date",
          description = "Required. The start date of a transfer. Date boundaries are determined relative to UTC time. If `schedule_start_date` and start_time_of_day are in the past relative to the job's creation time, the transfer starts the day after you schedule the transfer request. **Note:** When starting jobs at or near midnight UTC it is possible that a job starts later than expected. For example, if you send an outbound request on June 1 one millisecond prior to midnight UTC and the Storage Transfer Service server receives the request on June 2, then it creates a TransferJob with `schedule_start_date` set to June 2 and a `start_time_of_day` set to midnight UTC. The first scheduled TransferOperation takes place on June 3 at midnight UTC.",
        },
        startTimeOfDay = {
          ["$ref"] = "TimeOfDay",
          description = "The time in UTC that a transfer job is scheduled to run. Transfers may start later than this time. If `start_time_of_day` is not specified: * One-time transfers run immediately. * Recurring transfers run immediately, and each day at midnight UTC, through schedule_end_date. If `start_time_of_day` is specified: * One-time transfers run at the specified time. * Recurring transfers run at the specified time each day, through `schedule_end_date`.",
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
    TimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "TimeOfDay",
      properties = {
        hours = {
          description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Minutes of hour of day. Must be from 0 to 59.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TransferCounters = {
      description = "A collection of counters that report the progress of a transfer operation.",
      id = "TransferCounters",
      properties = {
        bytesCopiedToSink = {
          description = "Bytes that are copied to the data sink.",
          format = "int64",
          type = "string",
        },
        bytesDeletedFromSink = {
          description = "Bytes that are deleted from the data sink.",
          format = "int64",
          type = "string",
        },
        bytesDeletedFromSource = {
          description = "Bytes that are deleted from the data source.",
          format = "int64",
          type = "string",
        },
        bytesFailedToDeleteFromSink = {
          description = "Bytes that failed to be deleted from the data sink.",
          format = "int64",
          type = "string",
        },
        bytesFoundFromSource = {
          description = "Bytes found in the data source that are scheduled to be transferred, excluding any that are filtered based on object conditions or skipped due to sync.",
          format = "int64",
          type = "string",
        },
        bytesFoundOnlyFromSink = {
          description = "Bytes found only in the data sink that are scheduled to be deleted.",
          format = "int64",
          type = "string",
        },
        bytesFromSourceFailed = {
          description = "Bytes in the data source that failed to be transferred or that failed to be deleted after being transferred.",
          format = "int64",
          type = "string",
        },
        bytesFromSourceSkippedBySync = {
          description = "Bytes in the data source that are not transferred because they already exist in the data sink.",
          format = "int64",
          type = "string",
        },
        directoriesFailedToListFromSource = {
          description = "For transfers involving PosixFilesystem only. Number of listing failures for each directory found at the source. Potential failures when listing a directory include permission failure or block failure. If listing a directory fails, no files in the directory are transferred.",
          format = "int64",
          type = "string",
        },
        directoriesFoundFromSource = {
          description = "For transfers involving PosixFilesystem only. Number of directories found while listing. For example, if the root directory of the transfer is `base/` and there are two other directories, `a/` and `b/` under this directory, the count after listing `base/`, `base/a/` and `base/b/` is 3.",
          format = "int64",
          type = "string",
        },
        directoriesSuccessfullyListedFromSource = {
          description = "For transfers involving PosixFilesystem only. Number of successful listings for each directory found at the source.",
          format = "int64",
          type = "string",
        },
        intermediateObjectsCleanedUp = {
          description = "Number of successfully cleaned up intermediate objects.",
          format = "int64",
          type = "string",
        },
        intermediateObjectsFailedCleanedUp = {
          description = "Number of intermediate objects failed cleaned up.",
          format = "int64",
          type = "string",
        },
        objectsCopiedToSink = {
          description = "Objects that are copied to the data sink.",
          format = "int64",
          type = "string",
        },
        objectsDeletedFromSink = {
          description = "Objects that are deleted from the data sink.",
          format = "int64",
          type = "string",
        },
        objectsDeletedFromSource = {
          description = "Objects that are deleted from the data source.",
          format = "int64",
          type = "string",
        },
        objectsFailedToDeleteFromSink = {
          description = "Objects that failed to be deleted from the data sink.",
          format = "int64",
          type = "string",
        },
        objectsFoundFromSource = {
          description = "Objects found in the data source that are scheduled to be transferred, excluding any that are filtered based on object conditions or skipped due to sync.",
          format = "int64",
          type = "string",
        },
        objectsFoundOnlyFromSink = {
          description = "Objects found only in the data sink that are scheduled to be deleted.",
          format = "int64",
          type = "string",
        },
        objectsFromSourceFailed = {
          description = "Objects in the data source that failed to be transferred or that failed to be deleted after being transferred.",
          format = "int64",
          type = "string",
        },
        objectsFromSourceSkippedBySync = {
          description = "Objects in the data source that are not transferred because they already exist in the data sink.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    TransferJob = {
      description = "This resource represents the configuration of a transfer job that runs periodically.",
      id = "TransferJob",
      properties = {
        creationTime = {
          description = "Output only. The time that the transfer job was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deletionTime = {
          description = "Output only. The time that the transfer job was deleted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.",
          type = "string",
        },
        eventStream = {
          ["$ref"] = "EventStream",
          description = "Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.",
        },
        lastModificationTime = {
          description = "Output only. The time that the transfer job was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        latestOperationName = {
          description = "The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.",
          type = "string",
        },
        loggingConfig = {
          ["$ref"] = "LoggingConfig",
          description = "Logging configuration.",
        },
        name = {
          description = "A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `\"transferJobs/\"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `\"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$\"` PosixFilesystem example: `\"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$\"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.",
          type = "string",
        },
        notificationConfig = {
          ["$ref"] = "NotificationConfig",
          description = "Notification configuration. This is not supported for transfers involving PosixFilesystem.",
        },
        projectId = {
          description = "The ID of the Google Cloud project that owns the job.",
          type = "string",
        },
        schedule = {
          ["$ref"] = "Schedule",
          description = "Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.",
        },
        status = {
          description = "Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.",
          enum = {
            "STATUS_UNSPECIFIED",
            "ENABLED",
            "DISABLED",
            "DELETED",
          },
          enumDescriptions = {
            "Zero is an illegal value.",
            "New transfers are performed based on the schedule.",
            "New transfers are not scheduled.",
            "This is a soft delete state. After a transfer job is set to this state, the job and all the transfer executions are subject to garbage collection. Transfer jobs become eligible for garbage collection 30 days after their status is set to `DELETED`.",
          },
          type = "string",
        },
        transferSpec = {
          ["$ref"] = "TransferSpec",
          description = "Transfer specification.",
        },
      },
      type = "object",
    },
    TransferManifest = {
      description = "Specifies where the manifest is located.",
      id = "TransferManifest",
      properties = {
        location = {
          description = "Specifies the path to the manifest in Cloud Storage. The Google-managed service account for the transfer must have `storage.objects.get` permission for this object. An example path is `gs://bucket_name/path/manifest.csv`.",
          type = "string",
        },
      },
      type = "object",
    },
    TransferOperation = {
      description = "A description of the execution of a transfer.",
      id = "TransferOperation",
      properties = {
        counters = {
          ["$ref"] = "TransferCounters",
          description = "Information about the progress of the transfer operation.",
        },
        endTime = {
          description = "End time of this transfer execution.",
          format = "google-datetime",
          type = "string",
        },
        errorBreakdowns = {
          description = "Summarizes errors encountered with sample error log entries.",
          items = {
            ["$ref"] = "ErrorSummary",
          },
          type = "array",
        },
        name = {
          description = "A globally unique ID assigned by the system.",
          type = "string",
        },
        notificationConfig = {
          ["$ref"] = "NotificationConfig",
          description = "Notification configuration.",
        },
        projectId = {
          description = "The ID of the Google Cloud project that owns the operation.",
          type = "string",
        },
        startTime = {
          description = "Start time of this transfer execution.",
          format = "google-datetime",
          type = "string",
        },
        status = {
          description = "Status of the transfer operation.",
          enum = {
            "STATUS_UNSPECIFIED",
            "IN_PROGRESS",
            "PAUSED",
            "SUCCESS",
            "FAILED",
            "ABORTED",
            "QUEUED",
            "SUSPENDING",
          },
          enumDescriptions = {
            "Zero is an illegal value.",
            "In progress.",
            "Paused.",
            "Completed successfully.",
            "Terminated due to an unrecoverable failure.",
            "Aborted by the user.",
            "Temporarily delayed by the system. No user action is required.",
            "The operation is suspending and draining the ongoing work to completion.",
          },
          type = "string",
        },
        transferJobName = {
          description = "The name of the transfer job that triggers this transfer operation.",
          type = "string",
        },
        transferSpec = {
          ["$ref"] = "TransferSpec",
          description = "Transfer specification.",
        },
      },
      type = "object",
    },
    TransferOptions = {
      description = "TransferOptions define the actions to be performed on objects in a transfer.",
      id = "TransferOptions",
      properties = {
        deleteObjectsFromSourceAfterTransfer = {
          description = "Whether objects should be deleted from the source after they are transferred to the sink. **Note:** This option and delete_objects_unique_in_sink are mutually exclusive.",
          type = "boolean",
        },
        deleteObjectsUniqueInSink = {
          description = "Whether objects that exist only in the sink should be deleted. **Note:** This option and delete_objects_from_source_after_transfer are mutually exclusive.",
          type = "boolean",
        },
        metadataOptions = {
          ["$ref"] = "MetadataOptions",
          description = "Represents the selected metadata options for a transfer job.",
        },
        overwriteObjectsAlreadyExistingInSink = {
          description = "When to overwrite objects that already exist in the sink. The default is that only objects that are different from the source are ovewritten. If true, all objects in the sink whose name matches an object in the source are overwritten with the source object.",
          type = "boolean",
        },
        overwriteWhen = {
          description = "When to overwrite objects that already exist in the sink. If not set, overwrite behavior is determined by overwrite_objects_already_existing_in_sink.",
          enum = {
            "OVERWRITE_WHEN_UNSPECIFIED",
            "DIFFERENT",
            "NEVER",
            "ALWAYS",
          },
          enumDescriptions = {
            "Overwrite behavior is unspecified.",
            "Overwrites destination objects with the source objects, only if the objects have the same name but different HTTP ETags or checksum values.",
            "Never overwrites a destination object if a source object has the same name. In this case, the source object is not transferred.",
            "Always overwrite the destination object with the source object, even if the HTTP Etags or checksum values are the same.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TransferSpec = {
      description = "Configuration for running a transfer.",
      id = "TransferSpec",
      properties = {
        awsS3CompatibleDataSource = {
          ["$ref"] = "AwsS3CompatibleData",
          description = "An AWS S3 compatible data source.",
        },
        awsS3DataSource = {
          ["$ref"] = "AwsS3Data",
          description = "An AWS S3 data source.",
        },
        azureBlobStorageDataSource = {
          ["$ref"] = "AzureBlobStorageData",
          description = "An Azure Blob Storage data source.",
        },
        gcsDataSink = {
          ["$ref"] = "GcsData",
          description = "A Cloud Storage data sink.",
        },
        gcsDataSource = {
          ["$ref"] = "GcsData",
          description = "A Cloud Storage data source.",
        },
        gcsIntermediateDataLocation = {
          ["$ref"] = "GcsData",
          description = "Cloud Storage intermediate data location.",
        },
        httpDataSource = {
          ["$ref"] = "HttpData",
          description = "An HTTP URL data source.",
        },
        objectConditions = {
          ["$ref"] = "ObjectConditions",
          description = "Only objects that satisfy these object conditions are included in the set of data source and data sink objects. Object conditions based on objects' \"last modification time\" do not exclude objects in a data sink.",
        },
        posixDataSink = {
          ["$ref"] = "PosixFilesystem",
          description = "A POSIX Filesystem data sink.",
        },
        posixDataSource = {
          ["$ref"] = "PosixFilesystem",
          description = "A POSIX Filesystem data source.",
        },
        sinkAgentPoolName = {
          description = "Specifies the agent pool name associated with the posix data sink. When unspecified, the default name is used.",
          type = "string",
        },
        sourceAgentPoolName = {
          description = "Specifies the agent pool name associated with the posix data source. When unspecified, the default name is used.",
          type = "string",
        },
        transferManifest = {
          ["$ref"] = "TransferManifest",
          description = "A manifest file provides a list of objects to be transferred from the data source. This field points to the location of the manifest file. Otherwise, the entire source bucket is used. ObjectConditions still apply.",
        },
        transferOptions = {
          ["$ref"] = "TransferOptions",
          description = "If the option delete_objects_unique_in_sink is `true` and time-based object conditions such as 'last modification time' are specified, the request fails with an INVALID_ARGUMENT error.",
        },
      },
      type = "object",
    },
    UpdateTransferJobRequest = {
      description = "Request passed to UpdateTransferJob.",
      id = "UpdateTransferJobRequest",
      properties = {
        projectId = {
          description = "Required. The ID of the Google Cloud project that owns the job.",
          type = "string",
        },
        transferJob = {
          ["$ref"] = "TransferJob",
          description = "Required. The job to update. `transferJob` is expected to specify one or more of five fields: description, transfer_spec, notification_config, logging_config, and status. An `UpdateTransferJobRequest` that specifies other fields are rejected with the error INVALID_ARGUMENT. Updating a job status to DELETED requires `storagetransfer.jobs.delete` permission.",
        },
        updateTransferJobFieldMask = {
          description = "The field mask of the fields in `transferJob` that are to be updated in this request. Fields in `transferJob` that can be updated are: description, transfer_spec, notification_config, logging_config, and status. To update the `transfer_spec` of the job, a complete transfer specification must be provided. An incomplete specification missing any required fields is rejected with the error INVALID_ARGUMENT.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Storage Transfer API",
  version = "v1",
  version_module = true,
}