return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/yt-analytics-monetary.readonly"] = {
          description = "View monetary and non-monetary YouTube Analytics reports for your YouTube content",
        },
        ["https://www.googleapis.com/auth/yt-analytics.readonly"] = {
          description = "View YouTube Analytics reports for your YouTube content",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://youtubereporting.googleapis.com/",
  batchPath = "batch",
  canonicalName = "YouTube Reporting",
  description = "Schedules reporting jobs containing your YouTube Analytics data and downloads the resulting bulk data reports in the form of CSV files.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/youtube/reporting/v1/reports/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "youtubereporting:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://youtubereporting.mtls.googleapis.com/",
  name = "youtubereporting",
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
    jobs = {
      methods = {
        create = {
          description = "Creates a job and returns it.",
          flatPath = "v1/jobs",
          httpMethod = "POST",
          id = "youtubereporting.jobs.create",
          parameterOrder = {},
          parameters = {
            onBehalfOfContentOwner = {
              description = "The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).",
              location = "query",
              type = "string",
            },
          },
          path = "v1/jobs",
          request = {
            ["$ref"] = "Job",
          },
          response = {
            ["$ref"] = "Job",
          },
          scopes = {
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
        delete = {
          description = "Deletes a job.",
          flatPath = "v1/jobs/{jobId}",
          httpMethod = "DELETE",
          id = "youtubereporting.jobs.delete",
          parameterOrder = {
            "jobId",
          },
          parameters = {
            jobId = {
              description = "The ID of the job to delete.",
              location = "path",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).",
              location = "query",
              type = "string",
            },
          },
          path = "v1/jobs/{jobId}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
        get = {
          description = "Gets a job.",
          flatPath = "v1/jobs/{jobId}",
          httpMethod = "GET",
          id = "youtubereporting.jobs.get",
          parameterOrder = {
            "jobId",
          },
          parameters = {
            jobId = {
              description = "The ID of the job to retrieve.",
              location = "path",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).",
              location = "query",
              type = "string",
            },
          },
          path = "v1/jobs/{jobId}",
          response = {
            ["$ref"] = "Job",
          },
          scopes = {
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
        list = {
          description = "Lists jobs.",
          flatPath = "v1/jobs",
          httpMethod = "GET",
          id = "youtubereporting.jobs.list",
          parameterOrder = {},
          parameters = {
            includeSystemManaged = {
              description = "If set to true, also system-managed jobs will be returned; otherwise only user-created jobs will be returned. System-managed jobs can neither be modified nor deleted.",
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Requested page size. Server may return fewer jobs than requested. If unspecified, server will pick an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token identifying a page of results the server should return. Typically, this is the value of ListReportTypesResponse.next_page_token returned in response to the previous call to the `ListJobs` method.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/jobs",
          response = {
            ["$ref"] = "ListJobsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
      },
      resources = {
        reports = {
          methods = {
            get = {
              description = "Gets the metadata of a specific report.",
              flatPath = "v1/jobs/{jobId}/reports/{reportId}",
              httpMethod = "GET",
              id = "youtubereporting.jobs.reports.get",
              parameterOrder = {
                "jobId",
                "reportId",
              },
              parameters = {
                jobId = {
                  description = "The ID of the job.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                onBehalfOfContentOwner = {
                  description = "The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).",
                  location = "query",
                  type = "string",
                },
                reportId = {
                  description = "The ID of the report to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/jobs/{jobId}/reports/{reportId}",
              response = {
                ["$ref"] = "Report",
              },
              scopes = {
                "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
                "https://www.googleapis.com/auth/yt-analytics.readonly",
              },
            },
            list = {
              description = "Lists reports created by a specific job. Returns NOT_FOUND if the job does not exist.",
              flatPath = "v1/jobs/{jobId}/reports",
              httpMethod = "GET",
              id = "youtubereporting.jobs.reports.list",
              parameterOrder = {
                "jobId",
              },
              parameters = {
                createdAfter = {
                  description = "If set, only reports created after the specified date/time are returned.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                jobId = {
                  description = "The ID of the job.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                onBehalfOfContentOwner = {
                  description = "The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. Server may return fewer report types than requested. If unspecified, server will pick an appropriate default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results the server should return. Typically, this is the value of ListReportsResponse.next_page_token returned in response to the previous call to the `ListReports` method.",
                  location = "query",
                  type = "string",
                },
                startTimeAtOrAfter = {
                  description = "If set, only reports whose start time is greater than or equal the specified date/time are returned.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                startTimeBefore = {
                  description = "If set, only reports whose start time is smaller than the specified date/time are returned.",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/jobs/{jobId}/reports",
              response = {
                ["$ref"] = "ListReportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
                "https://www.googleapis.com/auth/yt-analytics.readonly",
              },
            },
          },
        },
      },
    },
    media = {
      methods = {
        download = {
          description = "Method for media download. Download is supported on the URI `/v1/media/{+name}?alt=media`.",
          flatPath = "v1/media/{mediaId}",
          httpMethod = "GET",
          id = "youtubereporting.media.download",
          parameterOrder = {
            "resourceName",
          },
          parameters = {
            resourceName = {
              description = "Name of the media that is being downloaded.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/media/{+resourceName}",
          response = {
            ["$ref"] = "GdataMedia",
          },
          scopes = {
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
          supportsMediaDownload = true,
          useMediaDownloadService = true,
        },
      },
    },
    reportTypes = {
      methods = {
        list = {
          description = "Lists report types.",
          flatPath = "v1/reportTypes",
          httpMethod = "GET",
          id = "youtubereporting.reportTypes.list",
          parameterOrder = {},
          parameters = {
            includeSystemManaged = {
              description = "If set to true, also system-managed report types will be returned; otherwise only the report types that can be used to create new reporting jobs will be returned.",
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "The content owner's external ID on which behalf the user is acting on. If not set, the user is acting for himself (his own channel).",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Requested page size. Server may return fewer report types than requested. If unspecified, server will pick an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token identifying a page of results the server should return. Typically, this is the value of ListReportTypesResponse.next_page_token returned in response to the previous call to the `ListReportTypes` method.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/reportTypes",
          response = {
            ["$ref"] = "ListReportTypesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/yt-analytics-monetary.readonly",
            "https://www.googleapis.com/auth/yt-analytics.readonly",
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://youtubereporting.googleapis.com/",
  schemas = {
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    GdataBlobstore2Info = {
      description = "gdata",
      id = "GdataBlobstore2Info",
      properties = {
        blobGeneration = {
          description = "gdata",
          format = "int64",
          type = "string",
        },
        blobId = {
          description = "gdata",
          type = "string",
        },
        downloadReadHandle = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        readToken = {
          description = "gdata",
          type = "string",
        },
        uploadMetadataContainer = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GdataCompositeMedia = {
      description = "gdata",
      id = "GdataCompositeMedia",
      properties = {
        blobRef = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        blobstore2Info = {
          ["$ref"] = "GdataBlobstore2Info",
          description = "gdata",
        },
        cosmoBinaryReference = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        crc32cHash = {
          description = "gdata",
          format = "uint32",
          type = "integer",
        },
        inline = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        length = {
          description = "gdata",
          format = "int64",
          type = "string",
        },
        md5Hash = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        objectId = {
          ["$ref"] = "GdataObjectId",
          description = "gdata",
        },
        path = {
          description = "gdata",
          type = "string",
        },
        referenceType = {
          description = "gdata",
          enum = {
            "PATH",
            "BLOB_REF",
            "INLINE",
            "BIGSTORE_REF",
            "COSMO_BINARY_REFERENCE",
          },
          enumDescriptions = {
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
          },
          type = "string",
        },
        sha1Hash = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GdataContentTypeInfo = {
      description = "gdata",
      id = "GdataContentTypeInfo",
      properties = {
        bestGuess = {
          description = "gdata",
          type = "string",
        },
        fromBytes = {
          description = "gdata",
          type = "string",
        },
        fromFileName = {
          description = "gdata",
          type = "string",
        },
        fromHeader = {
          description = "gdata",
          type = "string",
        },
        fromUrlPath = {
          description = "gdata",
          type = "string",
        },
      },
      type = "object",
    },
    GdataDiffChecksumsResponse = {
      description = "gdata",
      id = "GdataDiffChecksumsResponse",
      properties = {
        checksumsLocation = {
          ["$ref"] = "GdataCompositeMedia",
          description = "gdata",
        },
        chunkSizeBytes = {
          description = "gdata",
          format = "int64",
          type = "string",
        },
        objectLocation = {
          ["$ref"] = "GdataCompositeMedia",
          description = "gdata",
        },
        objectSizeBytes = {
          description = "gdata",
          format = "int64",
          type = "string",
        },
        objectVersion = {
          description = "gdata",
          type = "string",
        },
      },
      type = "object",
    },
    GdataDiffDownloadResponse = {
      description = "gdata",
      id = "GdataDiffDownloadResponse",
      properties = {
        objectLocation = {
          ["$ref"] = "GdataCompositeMedia",
          description = "gdata",
        },
      },
      type = "object",
    },
    GdataDiffUploadRequest = {
      description = "gdata",
      id = "GdataDiffUploadRequest",
      properties = {
        checksumsInfo = {
          ["$ref"] = "GdataCompositeMedia",
          description = "gdata",
        },
        objectInfo = {
          ["$ref"] = "GdataCompositeMedia",
          description = "gdata",
        },
        objectVersion = {
          description = "gdata",
          type = "string",
        },
      },
      type = "object",
    },
    GdataDiffUploadResponse = {
      description = "gdata",
      id = "GdataDiffUploadResponse",
      properties = {
        objectVersion = {
          description = "gdata",
          type = "string",
        },
        originalObject = {
          ["$ref"] = "GdataCompositeMedia",
          description = "gdata",
        },
      },
      type = "object",
    },
    GdataDiffVersionResponse = {
      description = "gdata",
      id = "GdataDiffVersionResponse",
      properties = {
        objectSizeBytes = {
          description = "gdata",
          format = "int64",
          type = "string",
        },
        objectVersion = {
          description = "gdata",
          type = "string",
        },
      },
      type = "object",
    },
    GdataDownloadParameters = {
      description = "gdata",
      id = "GdataDownloadParameters",
      properties = {
        allowGzipCompression = {
          description = "gdata",
          type = "boolean",
        },
        ignoreRange = {
          description = "gdata",
          type = "boolean",
        },
      },
      type = "object",
    },
    GdataMedia = {
      description = "gdata",
      id = "GdataMedia",
      properties = {
        algorithm = {
          description = "gdata",
          type = "string",
        },
        bigstoreObjectRef = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        blobRef = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        blobstore2Info = {
          ["$ref"] = "GdataBlobstore2Info",
          description = "gdata",
        },
        compositeMedia = {
          description = "gdata",
          items = {
            ["$ref"] = "GdataCompositeMedia",
          },
          type = "array",
        },
        contentType = {
          description = "gdata",
          type = "string",
        },
        contentTypeInfo = {
          ["$ref"] = "GdataContentTypeInfo",
          description = "gdata",
        },
        cosmoBinaryReference = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        crc32cHash = {
          description = "gdata",
          format = "uint32",
          type = "integer",
        },
        diffChecksumsResponse = {
          ["$ref"] = "GdataDiffChecksumsResponse",
          description = "gdata",
        },
        diffDownloadResponse = {
          ["$ref"] = "GdataDiffDownloadResponse",
          description = "gdata",
        },
        diffUploadRequest = {
          ["$ref"] = "GdataDiffUploadRequest",
          description = "gdata",
        },
        diffUploadResponse = {
          ["$ref"] = "GdataDiffUploadResponse",
          description = "gdata",
        },
        diffVersionResponse = {
          ["$ref"] = "GdataDiffVersionResponse",
          description = "gdata",
        },
        downloadParameters = {
          ["$ref"] = "GdataDownloadParameters",
          description = "gdata",
        },
        filename = {
          description = "gdata",
          type = "string",
        },
        hash = {
          description = "gdata",
          type = "string",
        },
        hashVerified = {
          description = "gdata",
          type = "boolean",
        },
        inline = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        isPotentialRetry = {
          description = "gdata",
          type = "boolean",
        },
        length = {
          description = "gdata",
          format = "int64",
          type = "string",
        },
        md5Hash = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        mediaId = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        objectId = {
          ["$ref"] = "GdataObjectId",
          description = "gdata",
        },
        path = {
          description = "gdata",
          type = "string",
        },
        referenceType = {
          description = "gdata",
          enum = {
            "PATH",
            "BLOB_REF",
            "INLINE",
            "GET_MEDIA",
            "COMPOSITE_MEDIA",
            "BIGSTORE_REF",
            "DIFF_VERSION_RESPONSE",
            "DIFF_CHECKSUMS_RESPONSE",
            "DIFF_DOWNLOAD_RESPONSE",
            "DIFF_UPLOAD_REQUEST",
            "DIFF_UPLOAD_RESPONSE",
            "COSMO_BINARY_REFERENCE",
            "ARBITRARY_BYTES",
          },
          enumDescriptions = {
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
            "gdata",
          },
          type = "string",
        },
        sha1Hash = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        sha256Hash = {
          description = "gdata",
          format = "byte",
          type = "string",
        },
        timestamp = {
          description = "gdata",
          format = "uint64",
          type = "string",
        },
        token = {
          description = "gdata",
          type = "string",
        },
      },
      type = "object",
    },
    GdataObjectId = {
      description = "gdata",
      id = "GdataObjectId",
      properties = {
        bucketName = {
          description = "gdata",
          type = "string",
        },
        generation = {
          description = "gdata",
          format = "int64",
          type = "string",
        },
        objectName = {
          description = "gdata",
          type = "string",
        },
      },
      type = "object",
    },
    Job = {
      description = "A job creating reports of a specific type.",
      id = "Job",
      properties = {
        createTime = {
          description = "The creation date/time of the job.",
          format = "google-datetime",
          type = "string",
        },
        expireTime = {
          description = "The date/time when this job will expire/expired. After a job expired, no new reports are generated.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "The server-generated ID of the job (max. 40 characters).",
          type = "string",
        },
        name = {
          description = "The name of the job (max. 100 characters).",
          type = "string",
        },
        reportTypeId = {
          description = "The type of reports this job creates. Corresponds to the ID of a ReportType.",
          type = "string",
        },
        systemManaged = {
          description = "True if this a system-managed job that cannot be modified by the user; otherwise false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ListJobsResponse = {
      description = "Response message for ReportingService.ListJobs.",
      id = "ListJobsResponse",
      properties = {
        jobs = {
          description = "The list of jobs.",
          items = {
            ["$ref"] = "Job",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in the ListJobsRequest.page_token field in the subsequent call to `ListJobs` method to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListReportTypesResponse = {
      description = "Response message for ReportingService.ListReportTypes.",
      id = "ListReportTypesResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in the ListReportTypesRequest.page_token field in the subsequent call to `ListReportTypes` method to retrieve the next page of results.",
          type = "string",
        },
        reportTypes = {
          description = "The list of report types.",
          items = {
            ["$ref"] = "ReportType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListReportsResponse = {
      description = "Response message for ReportingService.ListReports.",
      id = "ListReportsResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve next page of results. Pass this value in the ListReportsRequest.page_token field in the subsequent call to `ListReports` method to retrieve the next page of results.",
          type = "string",
        },
        reports = {
          description = "The list of report types.",
          items = {
            ["$ref"] = "Report",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Report = {
      description = "A report's metadata including the URL from which the report itself can be downloaded.",
      id = "Report",
      properties = {
        createTime = {
          description = "The date/time when this report was created.",
          format = "google-datetime",
          type = "string",
        },
        downloadUrl = {
          description = "The URL from which the report can be downloaded (max. 1000 characters).",
          type = "string",
        },
        endTime = {
          description = "The end of the time period that the report instance covers. The value is exclusive.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "The server-generated ID of the report.",
          type = "string",
        },
        jobExpireTime = {
          description = "The date/time when the job this report belongs to will expire/expired.",
          format = "google-datetime",
          type = "string",
        },
        jobId = {
          description = "The ID of the job that created this report.",
          type = "string",
        },
        startTime = {
          description = "The start of the time period that the report instance covers. The value is inclusive.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ReportType = {
      description = "A report type.",
      id = "ReportType",
      properties = {
        deprecateTime = {
          description = "The date/time when this report type was/will be deprecated.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "The ID of the report type (max. 100 characters).",
          type = "string",
        },
        name = {
          description = "The name of the report type (max. 100 characters).",
          type = "string",
        },
        systemManaged = {
          description = "True if this a system-managed report type; otherwise false. Reporting jobs for system-managed report types are created automatically and can thus not be used in the `CreateJob` method.",
          type = "boolean",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "YouTube Reporting API",
  version = "v1",
}
