return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/fitness.activity.read"] = {
          description = "Use Google Fit to see and store your physical activity data",
        },
        ["https://www.googleapis.com/auth/fitness.activity.write"] = {
          description = "Add to your Google Fit physical activity data",
        },
        ["https://www.googleapis.com/auth/fitness.blood_glucose.read"] = {
          description = "See info about your blood glucose in Google Fit. I consent to Google sharing my blood glucose information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.blood_glucose.write"] = {
          description = "Add info about your blood glucose to Google Fit. I consent to Google using my blood glucose information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.blood_pressure.read"] = {
          description = "See info about your blood pressure in Google Fit. I consent to Google sharing my blood pressure information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.blood_pressure.write"] = {
          description = "Add info about your blood pressure in Google Fit. I consent to Google using my blood pressure information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.body.read"] = {
          description = "See info about your body measurements in Google Fit",
        },
        ["https://www.googleapis.com/auth/fitness.body.write"] = {
          description = "Add info about your body measurements to Google Fit",
        },
        ["https://www.googleapis.com/auth/fitness.body_temperature.read"] = {
          description = "See info about your body temperature in Google Fit. I consent to Google sharing my body temperature information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.body_temperature.write"] = {
          description = "Add to info about your body temperature in Google Fit. I consent to Google using my body temperature information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.heart_rate.read"] = {
          description = "See your heart rate data in Google Fit. I consent to Google sharing my heart rate information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.heart_rate.write"] = {
          description = "Add to your heart rate data in Google Fit. I consent to Google using my heart rate information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.location.read"] = {
          description = "See your Google Fit speed and distance data",
        },
        ["https://www.googleapis.com/auth/fitness.location.write"] = {
          description = "Add to your Google Fit location data",
        },
        ["https://www.googleapis.com/auth/fitness.nutrition.read"] = {
          description = "See info about your nutrition in Google Fit",
        },
        ["https://www.googleapis.com/auth/fitness.nutrition.write"] = {
          description = "Add to info about your nutrition in Google Fit",
        },
        ["https://www.googleapis.com/auth/fitness.oxygen_saturation.read"] = {
          description = "See info about your oxygen saturation in Google Fit. I consent to Google sharing my oxygen saturation information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.oxygen_saturation.write"] = {
          description = "Add info about your oxygen saturation in Google Fit. I consent to Google using my oxygen saturation information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.reproductive_health.read"] = {
          description = "See info about your reproductive health in Google Fit. I consent to Google sharing my reproductive health information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.reproductive_health.write"] = {
          description = "Add info about your reproductive health in Google Fit. I consent to Google using my reproductive health information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.sleep.read"] = {
          description = "See your sleep data in Google Fit. I consent to Google sharing my sleep information with this app.",
        },
        ["https://www.googleapis.com/auth/fitness.sleep.write"] = {
          description = "Add to your sleep data in Google Fit. I consent to Google using my sleep information with this app.",
        },
      },
    },
  },
  basePath = "/fitness/v1/users/",
  baseUrl = "https://fitness.googleapis.com/fitness/v1/users/",
  batchPath = "batch",
  description = "The Fitness API for managing users' fitness tracking data.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/fit/rest/v1/get-started",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "fitness:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://fitness.mtls.googleapis.com/",
  name = "fitness",
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
    users = {
      resources = {
        dataSources = {
          methods = {
            create = {
              description = "Creates a new data source that is unique across all data sources belonging to this user. A data source is a unique source of sensor data. Data sources can expose raw data coming from hardware sensors on local or companion devices. They can also expose derived data, created by transforming or merging other data sources. Multiple data sources can exist for the same data type. Every data point in every dataset inserted into or read from the Fitness API has an associated data source. Each data source produces a unique stream of dataset updates, with a unique data source identifier. Not all changes to data source affect the data stream ID, so that data collected by updated versions of the same application/device can still be considered to belong to the same data source. Data sources are identified using a string generated by the server, based on the contents of the source being created. The dataStreamId field should not be set when invoking this method. It will be automatically generated by the server with the correct format. If a dataStreamId is set, it must match the format that the server would generate. This format is a combination of some fields from the data source, and has a specific order. If it doesn't match, the request will fail with an error. Specifying a DataType which is not a known type (beginning with \"com.google.\") will create a DataSource with a *custom data type*. Custom data types are only readable by the application that created them. Custom data types are *deprecated*; use standard data types instead. In addition to the data source fields included in the data source ID, the developer project number that is authenticated when creating the data source is included. This developer project number is obfuscated when read by any other developer reading public data types.",
              flatPath = "{userId}/dataSources",
              httpMethod = "POST",
              id = "fitness.users.dataSources.create",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  description = "Create the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/dataSources",
              request = {
                ["$ref"] = "DataSource",
              },
              response = {
                ["$ref"] = "DataSource",
              },
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                "https://www.googleapis.com/auth/fitness.body.write",
                "https://www.googleapis.com/auth/fitness.body_temperature.write",
                "https://www.googleapis.com/auth/fitness.heart_rate.write",
                "https://www.googleapis.com/auth/fitness.location.write",
                "https://www.googleapis.com/auth/fitness.nutrition.write",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
            delete = {
              description = "Deletes the specified data source. The request will fail if the data source contains any data points.",
              flatPath = "{userId}/dataSources/{dataSourceId}",
              httpMethod = "DELETE",
              id = "fitness.users.dataSources.delete",
              parameterOrder = {
                "userId",
                "dataSourceId",
              },
              parameters = {
                dataSourceId = {
                  description = "The data stream ID of the data source to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Retrieve a data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/dataSources/{dataSourceId}",
              response = {
                ["$ref"] = "DataSource",
              },
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                "https://www.googleapis.com/auth/fitness.body.write",
                "https://www.googleapis.com/auth/fitness.body_temperature.write",
                "https://www.googleapis.com/auth/fitness.heart_rate.write",
                "https://www.googleapis.com/auth/fitness.location.write",
                "https://www.googleapis.com/auth/fitness.nutrition.write",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
            get = {
              description = "Returns the specified data source.",
              flatPath = "{userId}/dataSources/{dataSourceId}",
              httpMethod = "GET",
              id = "fitness.users.dataSources.get",
              parameterOrder = {
                "userId",
                "dataSourceId",
              },
              parameters = {
                dataSourceId = {
                  description = "The data stream ID of the data source to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Retrieve a data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/dataSources/{dataSourceId}",
              response = {
                ["$ref"] = "DataSource",
              },
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.read",
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.blood_glucose.read",
                "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                "https://www.googleapis.com/auth/fitness.blood_pressure.read",
                "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                "https://www.googleapis.com/auth/fitness.body.read",
                "https://www.googleapis.com/auth/fitness.body.write",
                "https://www.googleapis.com/auth/fitness.body_temperature.read",
                "https://www.googleapis.com/auth/fitness.body_temperature.write",
                "https://www.googleapis.com/auth/fitness.heart_rate.read",
                "https://www.googleapis.com/auth/fitness.heart_rate.write",
                "https://www.googleapis.com/auth/fitness.location.read",
                "https://www.googleapis.com/auth/fitness.location.write",
                "https://www.googleapis.com/auth/fitness.nutrition.read",
                "https://www.googleapis.com/auth/fitness.nutrition.write",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                "https://www.googleapis.com/auth/fitness.reproductive_health.read",
                "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                "https://www.googleapis.com/auth/fitness.sleep.read",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
            list = {
              description = "Lists all data sources that are visible to the developer, using the OAuth scopes provided. The list is not exhaustive; the user may have private data sources that are only visible to other developers, or calls using other scopes.",
              flatPath = "{userId}/dataSources",
              httpMethod = "GET",
              id = "fitness.users.dataSources.list",
              parameterOrder = {
                "userId",
              },
              parameters = {
                dataTypeName = {
                  description = "The names of data types to include in the list. If not specified, all data sources will be returned.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                userId = {
                  description = "List data sources for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/dataSources",
              response = {
                ["$ref"] = "ListDataSourcesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.read",
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.blood_glucose.read",
                "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                "https://www.googleapis.com/auth/fitness.blood_pressure.read",
                "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                "https://www.googleapis.com/auth/fitness.body.read",
                "https://www.googleapis.com/auth/fitness.body.write",
                "https://www.googleapis.com/auth/fitness.body_temperature.read",
                "https://www.googleapis.com/auth/fitness.body_temperature.write",
                "https://www.googleapis.com/auth/fitness.heart_rate.read",
                "https://www.googleapis.com/auth/fitness.heart_rate.write",
                "https://www.googleapis.com/auth/fitness.location.read",
                "https://www.googleapis.com/auth/fitness.location.write",
                "https://www.googleapis.com/auth/fitness.nutrition.read",
                "https://www.googleapis.com/auth/fitness.nutrition.write",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                "https://www.googleapis.com/auth/fitness.reproductive_health.read",
                "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                "https://www.googleapis.com/auth/fitness.sleep.read",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
            update = {
              description = "Updates the specified data source. The dataStreamId, dataType, type, dataStreamName, and device properties with the exception of version, cannot be modified. Data sources are identified by their dataStreamId.",
              flatPath = "{userId}/dataSources/{dataSourceId}",
              httpMethod = "PUT",
              id = "fitness.users.dataSources.update",
              parameterOrder = {
                "userId",
                "dataSourceId",
              },
              parameters = {
                dataSourceId = {
                  description = "The data stream ID of the data source to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Update the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/dataSources/{dataSourceId}",
              request = {
                ["$ref"] = "DataSource",
              },
              response = {
                ["$ref"] = "DataSource",
              },
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                "https://www.googleapis.com/auth/fitness.body.write",
                "https://www.googleapis.com/auth/fitness.body_temperature.write",
                "https://www.googleapis.com/auth/fitness.heart_rate.write",
                "https://www.googleapis.com/auth/fitness.location.write",
                "https://www.googleapis.com/auth/fitness.nutrition.write",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
          },
          resources = {
            dataPointChanges = {
              methods = {
                list = {
                  description = "Queries for user's data point changes for a particular data source.",
                  flatPath = "{userId}/dataSources/{dataSourceId}/dataPointChanges",
                  httpMethod = "GET",
                  id = "fitness.users.dataSources.dataPointChanges.list",
                  parameterOrder = {
                    "userId",
                    "dataSourceId",
                  },
                  parameters = {
                    dataSourceId = {
                      description = "The data stream ID of the data source that created the dataset.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    limit = {
                      description = "If specified, no more than this many data point changes will be included in the response.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.",
                      location = "query",
                      type = "string",
                    },
                    userId = {
                      description = "List data points for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "{userId}/dataSources/{dataSourceId}/dataPointChanges",
                  response = {
                    ["$ref"] = "ListDataPointChangesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/fitness.activity.read",
                    "https://www.googleapis.com/auth/fitness.activity.write",
                    "https://www.googleapis.com/auth/fitness.blood_glucose.read",
                    "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                    "https://www.googleapis.com/auth/fitness.blood_pressure.read",
                    "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                    "https://www.googleapis.com/auth/fitness.body.read",
                    "https://www.googleapis.com/auth/fitness.body.write",
                    "https://www.googleapis.com/auth/fitness.body_temperature.read",
                    "https://www.googleapis.com/auth/fitness.body_temperature.write",
                    "https://www.googleapis.com/auth/fitness.heart_rate.read",
                    "https://www.googleapis.com/auth/fitness.heart_rate.write",
                    "https://www.googleapis.com/auth/fitness.location.read",
                    "https://www.googleapis.com/auth/fitness.location.write",
                    "https://www.googleapis.com/auth/fitness.nutrition.read",
                    "https://www.googleapis.com/auth/fitness.nutrition.write",
                    "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
                    "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                    "https://www.googleapis.com/auth/fitness.reproductive_health.read",
                    "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                    "https://www.googleapis.com/auth/fitness.sleep.read",
                    "https://www.googleapis.com/auth/fitness.sleep.write",
                  },
                },
              },
            },
            datasets = {
              methods = {
                delete = {
                  description = "Performs an inclusive delete of all data points whose start and end times have any overlap with the time range specified by the dataset ID. For most data types, the entire data point will be deleted. For data types where the time span represents a consistent value (such as com.google.activity.segment), and a data point straddles either end point of the dataset, only the overlapping portion of the data point will be deleted.",
                  flatPath = "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}",
                  httpMethod = "DELETE",
                  id = "fitness.users.dataSources.datasets.delete",
                  parameterOrder = {
                    "userId",
                    "dataSourceId",
                    "datasetId",
                  },
                  parameters = {
                    dataSourceId = {
                      description = "The data stream ID of the data source that created the dataset.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    datasetId = {
                      description = "Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \"startTime-endTime\" where startTime and endTime are 64 bit integers.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      description = "Delete a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}",
                  scopes = {
                    "https://www.googleapis.com/auth/fitness.activity.write",
                    "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                    "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                    "https://www.googleapis.com/auth/fitness.body.write",
                    "https://www.googleapis.com/auth/fitness.body_temperature.write",
                    "https://www.googleapis.com/auth/fitness.heart_rate.write",
                    "https://www.googleapis.com/auth/fitness.location.write",
                    "https://www.googleapis.com/auth/fitness.nutrition.write",
                    "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                    "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                    "https://www.googleapis.com/auth/fitness.sleep.write",
                  },
                },
                get = {
                  description = "Returns a dataset containing all data points whose start and end times overlap with the specified range of the dataset minimum start time and maximum end time. Specifically, any data point whose start time is less than or equal to the dataset end time and whose end time is greater than or equal to the dataset start time.",
                  flatPath = "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}",
                  httpMethod = "GET",
                  id = "fitness.users.dataSources.datasets.get",
                  parameterOrder = {
                    "userId",
                    "dataSourceId",
                    "datasetId",
                  },
                  parameters = {
                    dataSourceId = {
                      description = "The data stream ID of the data source that created the dataset.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    datasetId = {
                      description = "Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \"startTime-endTime\" where startTime and endTime are 64 bit integers.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    limit = {
                      description = "If specified, no more than this many data points will be included in the dataset. If there are more data points in the dataset, nextPageToken will be set in the dataset response. The limit is applied from the end of the time range. That is, if pageToken is absent, the limit most recent data points will be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The continuation token, which is used to page through large datasets. To get the next page of a dataset, set this parameter to the value of nextPageToken from the previous response. Each subsequent call will yield a partial dataset with data point end timestamps that are strictly smaller than those in the previous partial response.",
                      location = "query",
                      type = "string",
                    },
                    userId = {
                      description = "Retrieve a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}",
                  response = {
                    ["$ref"] = "Dataset",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/fitness.activity.read",
                    "https://www.googleapis.com/auth/fitness.activity.write",
                    "https://www.googleapis.com/auth/fitness.blood_glucose.read",
                    "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                    "https://www.googleapis.com/auth/fitness.blood_pressure.read",
                    "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                    "https://www.googleapis.com/auth/fitness.body.read",
                    "https://www.googleapis.com/auth/fitness.body.write",
                    "https://www.googleapis.com/auth/fitness.body_temperature.read",
                    "https://www.googleapis.com/auth/fitness.body_temperature.write",
                    "https://www.googleapis.com/auth/fitness.heart_rate.read",
                    "https://www.googleapis.com/auth/fitness.heart_rate.write",
                    "https://www.googleapis.com/auth/fitness.location.read",
                    "https://www.googleapis.com/auth/fitness.location.write",
                    "https://www.googleapis.com/auth/fitness.nutrition.read",
                    "https://www.googleapis.com/auth/fitness.nutrition.write",
                    "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
                    "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                    "https://www.googleapis.com/auth/fitness.reproductive_health.read",
                    "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                    "https://www.googleapis.com/auth/fitness.sleep.read",
                    "https://www.googleapis.com/auth/fitness.sleep.write",
                  },
                },
                patch = {
                  description = "Adds data points to a dataset. The dataset need not be previously created. All points within the given dataset will be returned with subsquent calls to retrieve this dataset. Data points can belong to more than one dataset. This method does not use patch semantics: the data points provided are merely inserted, with no existing data replaced.",
                  flatPath = "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}",
                  httpMethod = "PATCH",
                  id = "fitness.users.dataSources.datasets.patch",
                  parameterOrder = {
                    "userId",
                    "dataSourceId",
                    "datasetId",
                  },
                  parameters = {
                    dataSourceId = {
                      description = "The data stream ID of the data source that created the dataset.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    datasetId = {
                      description = "This field is not used, and can be safely omitted.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      description = "Patch a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "{userId}/dataSources/{dataSourceId}/datasets/{datasetId}",
                  request = {
                    ["$ref"] = "Dataset",
                  },
                  response = {
                    ["$ref"] = "Dataset",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/fitness.activity.write",
                    "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                    "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                    "https://www.googleapis.com/auth/fitness.body.write",
                    "https://www.googleapis.com/auth/fitness.body_temperature.write",
                    "https://www.googleapis.com/auth/fitness.heart_rate.write",
                    "https://www.googleapis.com/auth/fitness.location.write",
                    "https://www.googleapis.com/auth/fitness.nutrition.write",
                    "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                    "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                    "https://www.googleapis.com/auth/fitness.sleep.write",
                  },
                },
              },
            },
          },
        },
        dataset = {
          methods = {
            aggregate = {
              description = "Aggregates data of a certain type or stream into buckets divided by a given type of boundary. Multiple data sets of multiple types and from multiple sources can be aggregated into exactly one bucket type per request.",
              flatPath = "{userId}/dataset:aggregate",
              httpMethod = "POST",
              id = "fitness.users.dataset.aggregate",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  description = "Aggregate data for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/dataset:aggregate",
              request = {
                ["$ref"] = "AggregateRequest",
              },
              response = {
                ["$ref"] = "AggregateResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.read",
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.blood_glucose.read",
                "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                "https://www.googleapis.com/auth/fitness.blood_pressure.read",
                "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                "https://www.googleapis.com/auth/fitness.body.read",
                "https://www.googleapis.com/auth/fitness.body.write",
                "https://www.googleapis.com/auth/fitness.body_temperature.read",
                "https://www.googleapis.com/auth/fitness.body_temperature.write",
                "https://www.googleapis.com/auth/fitness.heart_rate.read",
                "https://www.googleapis.com/auth/fitness.heart_rate.write",
                "https://www.googleapis.com/auth/fitness.location.read",
                "https://www.googleapis.com/auth/fitness.location.write",
                "https://www.googleapis.com/auth/fitness.nutrition.read",
                "https://www.googleapis.com/auth/fitness.nutrition.write",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                "https://www.googleapis.com/auth/fitness.reproductive_health.read",
                "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                "https://www.googleapis.com/auth/fitness.sleep.read",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
          },
        },
        sessions = {
          methods = {
            delete = {
              description = "Deletes a session specified by the given session ID.",
              flatPath = "{userId}/sessions/{sessionId}",
              httpMethod = "DELETE",
              id = "fitness.users.sessions.delete",
              parameterOrder = {
                "userId",
                "sessionId",
              },
              parameters = {
                sessionId = {
                  description = "The ID of the session to be deleted.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Delete a session for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/sessions/{sessionId}",
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
            list = {
              description = "Lists sessions previously created.",
              flatPath = "{userId}/sessions",
              httpMethod = "GET",
              id = "fitness.users.sessions.list",
              parameterOrder = {
                "userId",
              },
              parameters = {
                activityType = {
                  description = "If non-empty, only sessions with these activity types should be returned.",
                  format = "int32",
                  location = "query",
                  repeated = true,
                  type = "integer",
                },
                endTime = {
                  description = "An RFC3339 timestamp. Only sessions ending between the start and end times will be included in the response. If this time is omitted but startTime is specified, all sessions from startTime to the end of time will be returned.",
                  location = "query",
                  type = "string",
                },
                includeDeleted = {
                  description = "If true, and if both startTime and endTime are omitted, session deletions will be returned.",
                  location = "query",
                  type = "boolean",
                },
                pageToken = {
                  description = "The continuation token, which is used for incremental syncing. To get the next batch of changes, set this parameter to the value of nextPageToken from the previous response. The page token is ignored if either start or end time is specified. If none of start time, end time, and the page token is specified, sessions modified in the last 30 days are returned.",
                  location = "query",
                  type = "string",
                },
                startTime = {
                  description = "An RFC3339 timestamp. Only sessions ending between the start and end times will be included in the response. If this time is omitted but endTime is specified, all sessions from the start of time up to endTime will be returned.",
                  location = "query",
                  type = "string",
                },
                userId = {
                  description = "List sessions for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/sessions",
              response = {
                ["$ref"] = "ListSessionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.read",
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.blood_glucose.read",
                "https://www.googleapis.com/auth/fitness.blood_glucose.write",
                "https://www.googleapis.com/auth/fitness.blood_pressure.read",
                "https://www.googleapis.com/auth/fitness.blood_pressure.write",
                "https://www.googleapis.com/auth/fitness.body.read",
                "https://www.googleapis.com/auth/fitness.body.write",
                "https://www.googleapis.com/auth/fitness.body_temperature.read",
                "https://www.googleapis.com/auth/fitness.body_temperature.write",
                "https://www.googleapis.com/auth/fitness.heart_rate.read",
                "https://www.googleapis.com/auth/fitness.heart_rate.write",
                "https://www.googleapis.com/auth/fitness.location.read",
                "https://www.googleapis.com/auth/fitness.location.write",
                "https://www.googleapis.com/auth/fitness.nutrition.read",
                "https://www.googleapis.com/auth/fitness.nutrition.write",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
                "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
                "https://www.googleapis.com/auth/fitness.reproductive_health.read",
                "https://www.googleapis.com/auth/fitness.reproductive_health.write",
                "https://www.googleapis.com/auth/fitness.sleep.read",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
            update = {
              description = "Updates or insert a given session.",
              flatPath = "{userId}/sessions/{sessionId}",
              httpMethod = "PUT",
              id = "fitness.users.sessions.update",
              parameterOrder = {
                "userId",
                "sessionId",
              },
              parameters = {
                sessionId = {
                  description = "The ID of the session to be created.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  description = "Create sessions for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{userId}/sessions/{sessionId}",
              request = {
                ["$ref"] = "Session",
              },
              response = {
                ["$ref"] = "Session",
              },
              scopes = {
                "https://www.googleapis.com/auth/fitness.activity.write",
                "https://www.googleapis.com/auth/fitness.sleep.write",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230113",
  rootUrl = "https://fitness.googleapis.com/",
  schemas = {
    AggregateBucket = {
      id = "AggregateBucket",
      properties = {
        activity = {
          description = "Available for Bucket.Type.ACTIVITY_TYPE, Bucket.Type.ACTIVITY_SEGMENT",
          format = "int32",
          type = "integer",
        },
        dataset = {
          description = "There will be one dataset per AggregateBy in the request.",
          items = {
            ["$ref"] = "Dataset",
          },
          type = "array",
        },
        endTimeMillis = {
          description = "The end time for the aggregated data, in milliseconds since epoch, inclusive.",
          format = "int64",
          type = "string",
        },
        session = {
          ["$ref"] = "Session",
          description = "Available for Bucket.Type.SESSION",
        },
        startTimeMillis = {
          description = "The start time for the aggregated data, in milliseconds since epoch, inclusive.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "The type of a bucket signifies how the data aggregation is performed in the bucket.",
          enum = {
            "unknown",
            "time",
            "session",
            "activityType",
            "activitySegment",
          },
          enumDescriptions = {
            "",
            "Denotes that bucketing by time is requested. When this is specified, the timeBucketDurationMillis field is used to determine how many buckets will be returned.",
            "Denotes that bucketing by session is requested. When this is specified, only data that occurs within sessions that begin and end within the dataset time frame, is included in the results.",
            "Denotes that bucketing by activity type is requested. When this is specified, there will be one bucket for each unique activity type that a user participated in, during the dataset time frame of interest.",
            "Denotes that bucketing by individual activity segment is requested. This will aggregate data by the time boundaries specified by each activity segment occurring within the dataset time frame of interest.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AggregateBy = {
      description = "The specification of which data to aggregate.",
      id = "AggregateBy",
      properties = {
        dataSourceId = {
          description = "A data source ID to aggregate. Only data from the specified data source ID will be included in the aggregation. If specified, this data source must exist; the OAuth scopes in the supplied credentials must grant read access to this data type. The dataset in the response will have the same data source ID. Note: Data can be aggregated by either the dataTypeName or the dataSourceId, not both.",
          type = "string",
        },
        dataTypeName = {
          description = "The data type to aggregate. All data sources providing this data type will contribute data to the aggregation. The response will contain a single dataset for this data type name. The dataset will have a data source ID of derived::com.google.android.gms:aggregated. If the user has no data for this data type, an empty data set will be returned. Note: Data can be aggregated by either the dataTypeName or the dataSourceId, not both.",
          type = "string",
        },
      },
      type = "object",
    },
    AggregateRequest = {
      description = "Next id: 10",
      id = "AggregateRequest",
      properties = {
        aggregateBy = {
          annotations = {
            required = {
              "fitness.users.dataset.aggregate",
            },
          },
          description = "The specification of data to be aggregated. At least one aggregateBy spec must be provided. All data that is specified will be aggregated using the same bucketing criteria. There will be one dataset in the response for every aggregateBy spec.",
          items = {
            ["$ref"] = "AggregateBy",
          },
          type = "array",
        },
        bucketByActivitySegment = {
          ["$ref"] = "BucketByActivity",
          description = "Specifies that data be aggregated each activity segment recorded for a user. Similar to bucketByActivitySegment, but bucketing is done for each activity segment rather than all segments of the same type. Mutually exclusive of other bucketing specifications.",
        },
        bucketByActivityType = {
          ["$ref"] = "BucketByActivity",
          description = "Specifies that data be aggregated by the type of activity being performed when the data was recorded. All data that was recorded during a certain activity type (.for the given time range) will be aggregated into the same bucket. Data that was recorded while the user was not active will not be included in the response. Mutually exclusive of other bucketing specifications.",
        },
        bucketBySession = {
          ["$ref"] = "BucketBySession",
          description = "Specifies that data be aggregated by user sessions. Data that does not fall within the time range of a session will not be included in the response. Mutually exclusive of other bucketing specifications.",
        },
        bucketByTime = {
          ["$ref"] = "BucketByTime",
          description = "Specifies that data be aggregated by a single time interval. Mutually exclusive of other bucketing specifications.",
        },
        endTimeMillis = {
          annotations = {
            required = {
              "fitness.users.dataset.aggregate",
            },
          },
          description = "The end of a window of time. Data that intersects with this time window will be aggregated. The time is in milliseconds since epoch, inclusive. The maximum allowed difference between start_time_millis // and end_time_millis is 7776000000 (roughly 90 days).",
          format = "int64",
          type = "string",
        },
        filteredDataQualityStandard = {
          description = "DO NOT POPULATE THIS FIELD. It is ignored.",
          items = {
            enum = {
              "dataQualityUnknown",
              "dataQualityBloodPressureEsh2002",
              "dataQualityBloodPressureEsh2010",
              "dataQualityBloodPressureAami",
              "dataQualityBloodPressureBhsAA",
              "dataQualityBloodPressureBhsAB",
              "dataQualityBloodPressureBhsBA",
              "dataQualityBloodPressureBhsBB",
              "dataQualityBloodGlucoseIso151972003",
              "dataQualityBloodGlucoseIso151972013",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        startTimeMillis = {
          annotations = {
            required = {
              "fitness.users.dataset.aggregate",
            },
          },
          description = "The start of a window of time. Data that intersects with this time window will be aggregated. The time is in milliseconds since epoch, inclusive.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AggregateResponse = {
      id = "AggregateResponse",
      properties = {
        bucket = {
          description = "A list of buckets containing the aggregated data.",
          items = {
            ["$ref"] = "AggregateBucket",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Application = {
      id = "Application",
      properties = {
        detailsUrl = {
          description = "An optional URI that can be used to link back to the application.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
              "fitness.users.sessions.update",
            },
          },
          description = "The name of this application. This is required for REST clients, but we do not enforce uniqueness of this name. It is provided as a matter of convenience for other developers who would like to identify which REST created an Application or Data Source.",
          type = "string",
        },
        packageName = {
          description = "Package name for this application. This is used as a unique identifier when created by Android applications, but cannot be specified by REST clients. REST clients will have their developer project number reflected into the Data Source data stream IDs, instead of the packageName.",
          type = "string",
        },
        version = {
          description = "Version of the application. You should update this field whenever the application changes in a way that affects the computation of the data.",
          type = "string",
        },
      },
      type = "object",
    },
    BucketByActivity = {
      id = "BucketByActivity",
      properties = {
        activityDataSourceId = {
          description = "The default activity stream will be used if a specific activityDataSourceId is not specified.",
          type = "string",
        },
        minDurationMillis = {
          description = "Specifies that only activity segments of duration longer than minDurationMillis are considered and used as a container for aggregated data.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    BucketBySession = {
      id = "BucketBySession",
      properties = {
        minDurationMillis = {
          description = "Specifies that only sessions of duration longer than minDurationMillis are considered and used as a container for aggregated data.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    BucketByTime = {
      id = "BucketByTime",
      properties = {
        durationMillis = {
          description = "Specifies that result buckets aggregate data by exactly durationMillis time frames. Time frames that contain no data will be included in the response with an empty dataset.",
          format = "int64",
          type = "string",
        },
        period = {
          ["$ref"] = "BucketByTimePeriod",
        },
      },
      type = "object",
    },
    BucketByTimePeriod = {
      id = "BucketByTimePeriod",
      properties = {
        timeZoneId = {
          description = "org.joda.timezone.DateTimeZone",
          type = "string",
        },
        type = {
          enum = {
            "day",
            "week",
            "month",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        value = {
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DataPoint = {
      description = "Represents a single data point, generated by a particular data source. A data point holds a value for each field, an end timestamp and an optional start time. The exact semantics of each of these attributes are specified in the documentation for the particular data type. A data point can represent an instantaneous measurement, reading or input observation, as well as averages or aggregates over a time interval. Check the data type documentation to determine which is the case for a particular data type. Data points always contain one value for each field of the data type.",
      id = "DataPoint",
      properties = {
        computationTimeMillis = {
          description = "DO NOT USE THIS FIELD. It is ignored, and not stored.",
          format = "int64",
          type = "string",
        },
        dataTypeName = {
          annotations = {
            required = {
              "fitness.users.dataSources.datasets.patch",
            },
          },
          description = "The data type defining the format of the values in this data point.",
          type = "string",
        },
        endTimeNanos = {
          annotations = {
            required = {
              "fitness.users.dataSources.datasets.patch",
            },
          },
          description = "The end time of the interval represented by this data point, in nanoseconds since epoch.",
          format = "int64",
          type = "string",
        },
        modifiedTimeMillis = {
          description = "Indicates the last time this data point was modified. Useful only in contexts where we are listing the data changes, rather than representing the current state of the data.",
          format = "int64",
          type = "string",
        },
        originDataSourceId = {
          description = "If the data point is contained in a dataset for a derived data source, this field will be populated with the data source stream ID that created the data point originally. WARNING: do not rely on this field for anything other than debugging. The value of this field, if it is set at all, is an implementation detail and is not guaranteed to remain consistent.",
          type = "string",
        },
        rawTimestampNanos = {
          description = "The raw timestamp from the original SensorEvent.",
          format = "int64",
          type = "string",
        },
        startTimeNanos = {
          annotations = {
            required = {
              "fitness.users.dataSources.datasets.patch",
            },
          },
          description = "The start time of the interval represented by this data point, in nanoseconds since epoch.",
          format = "int64",
          type = "string",
        },
        value = {
          annotations = {
            required = {
              "fitness.users.dataSources.datasets.patch",
            },
          },
          description = "Values of each data type field for the data point. It is expected that each value corresponding to a data type field will occur in the same order that the field is listed with in the data type specified in a data source. Only one of integer and floating point fields will be populated, depending on the format enum value within data source's type field.",
          items = {
            ["$ref"] = "Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DataSource = {
      description = "Definition of a unique source of sensor data. Data sources can expose raw data coming from hardware sensors on local or companion devices. They can also expose derived data, created by transforming or merging other data sources. Multiple data sources can exist for the same data type. Every data point inserted into or read from this service has an associated data source. The data source contains enough information to uniquely identify its data, including the hardware device and the application that collected and/or transformed the data. It also holds useful metadata, such as the hardware and application versions, and the device type. Each data source produces a unique stream of data, with a unique identifier. Not all changes to data source affect the stream identifier, so that data collected by updated versions of the same application/device can still be considered to belong to the same data stream.",
      id = "DataSource",
      properties = {
        application = {
          ["$ref"] = "Application",
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "Information about an application which feeds sensor data into the platform.",
        },
        dataQualityStandard = {
          description = "DO NOT POPULATE THIS FIELD. It is never populated in responses from the platform, and is ignored in queries. It will be removed in a future version entirely.",
          items = {
            enum = {
              "dataQualityUnknown",
              "dataQualityBloodPressureEsh2002",
              "dataQualityBloodPressureEsh2010",
              "dataQualityBloodPressureAami",
              "dataQualityBloodPressureBhsAA",
              "dataQualityBloodPressureBhsAB",
              "dataQualityBloodPressureBhsBA",
              "dataQualityBloodPressureBhsBB",
              "dataQualityBloodGlucoseIso151972003",
              "dataQualityBloodGlucoseIso151972013",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        dataStreamId = {
          annotations = {
            required = {
              "fitness.users.dataSources.update",
            },
          },
          description = "A unique identifier for the data stream produced by this data source. The identifier includes: - The physical device's manufacturer, model, and serial number (UID). - The application's package name or name. Package name is used when the data source was created by an Android application. The developer project number is used when the data source was created by a REST client. - The data source's type. - The data source's stream name. Note that not all attributes of the data source are used as part of the stream identifier. In particular, the version of the hardware/the application isn't used. This allows us to preserve the same stream through version updates. This also means that two DataSource objects may represent the same data stream even if they're not equal. The exact format of the data stream ID created by an Android application is: type:dataType.name:application.packageName:device.manufacturer:device.model:device.uid:dataStreamName The exact format of the data stream ID created by a REST client is: type:dataType.name:developer project number:device.manufacturer:device.model:device.uid:dataStreamName When any of the optional fields that make up the data stream ID are absent, they will be omitted from the data stream ID. The minimum viable data stream ID would be: type:dataType.name:developer project number Finally, the developer project number and device UID are obfuscated when read by any REST or Android client that did not create the data source. Only the data source creator will see the developer project number in clear and normal form. This means a client will see a different set of data_stream_ids than another client with different credentials.",
          type = "string",
        },
        dataStreamName = {
          description = "The stream name uniquely identifies this particular data source among other data sources of the same type from the same underlying producer. Setting the stream name is optional, but should be done whenever an application exposes two streams for the same data type, or when a device has two equivalent sensors.",
          type = "string",
        },
        dataType = {
          ["$ref"] = "DataType",
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "The data type defines the schema for a stream of data being collected by, inserted into, or queried from the Fitness API.",
        },
        device = {
          ["$ref"] = "Device",
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "Representation of an integrated device (such as a phone or a wearable) that can hold sensors.",
        },
        name = {
          description = "An end-user visible name for this data source.",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "A constant describing the type of this data source. Indicates whether this data source produces raw or derived data.",
          enum = {
            "raw",
            "derived",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DataType = {
      id = "DataType",
      properties = {
        field = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "A field represents one dimension of a data type.",
          items = {
            ["$ref"] = "DataTypeField",
          },
          type = "array",
        },
        name = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "Each data type has a unique, namespaced, name. All data types in the com.google namespace are shared as part of the platform.",
          type = "string",
        },
      },
      type = "object",
    },
    DataTypeField = {
      description = "In case of multi-dimensional data (such as an accelerometer with x, y, and z axes) each field represents one dimension. Each data type field has a unique name which identifies it. The field also defines the format of the data (int, float, etc.). This message is only instantiated in code and not used for wire comms or stored in any way.",
      id = "DataTypeField",
      properties = {
        format = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "The different supported formats for each field in a data type.",
          enum = {
            "integer",
            "floatPoint",
            "string",
            "map",
            "integerList",
            "floatList",
            "blob",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "Defines the name and format of data. Unlike data type names, field names are not namespaced, and only need to be unique within the data type.",
          type = "string",
        },
        optional = {
          type = "boolean",
        },
      },
      type = "object",
    },
    Dataset = {
      description = "A dataset represents a projection container for data points. They do not carry any info of their own. Datasets represent a set of data points from a particular data source. A data point can be found in more than one dataset.",
      id = "Dataset",
      properties = {
        dataSourceId = {
          annotations = {
            required = {
              "fitness.users.dataSources.datasets.patch",
            },
          },
          description = "The data stream ID of the data source that created the points in this dataset.",
          type = "string",
        },
        maxEndTimeNs = {
          annotations = {
            required = {
              "fitness.users.dataSources.datasets.patch",
            },
          },
          description = "The largest end time of all data points in this possibly partial representation of the dataset. Time is in nanoseconds from epoch. This should also match the second part of the dataset identifier.",
          format = "int64",
          type = "string",
        },
        minStartTimeNs = {
          annotations = {
            required = {
              "fitness.users.dataSources.datasets.patch",
            },
          },
          description = "The smallest start time of all data points in this possibly partial representation of the dataset. Time is in nanoseconds from epoch. This should also match the first part of the dataset identifier.",
          format = "int64",
          type = "string",
        },
        nextPageToken = {
          description = "This token will be set when a dataset is received in response to a GET request and the dataset is too large to be included in a single response. Provide this value in a subsequent GET request to return the next page of data points within this dataset.",
          type = "string",
        },
        point = {
          annotations = {
            required = {
              "fitness.users.dataSources.datasets.patch",
            },
          },
          description = "A partial list of data points contained in the dataset, ordered by endTimeNanos. This list is considered complete when retrieving a small dataset and partial when patching a dataset or retrieving a dataset that is too large to include in a single response.",
          items = {
            ["$ref"] = "DataPoint",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Device = {
      description = "Representation of an integrated device (such as a phone or a wearable) that can hold sensors. Each sensor is exposed as a data source. The main purpose of the device information contained in this class is to identify the hardware of a particular data source. This can be useful in different ways, including: - Distinguishing two similar sensors on different devices (the step counter on two nexus 5 phones, for instance) - Display the source of data to the user (by using the device make / model) - Treat data differently depending on sensor type (accelerometers on a watch may give different patterns than those on a phone) - Build different analysis models for each device/version. ",
      id = "Device",
      properties = {
        manufacturer = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "Manufacturer of the product/hardware.",
          type = "string",
        },
        model = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "End-user visible model name for the device.",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "A constant representing the type of the device.",
          enum = {
            "unknown",
            "phone",
            "tablet",
            "watch",
            "chestStrap",
            "scale",
            "headMounted",
            "smartDisplay",
          },
          enumDescriptions = {
            "Device type is not known.",
            "An Android phone.",
            "An Android tablet.",
            "A watch or other wrist-mounted band.",
            "A chest strap.",
            "A scale.",
            "Glass or other head-mounted device.",
            "A smart display e.g. Nest device.",
          },
          type = "string",
        },
        uid = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "The serial number or other unique ID for the hardware. This field is obfuscated when read by any REST or Android client that did not create the data source. Only the data source creator will see the uid field in clear and normal form. The obfuscation preserves equality; that is, given two IDs, if id1 == id2, obfuscated(id1) == obfuscated(id2).",
          type = "string",
        },
        version = {
          annotations = {
            required = {
              "fitness.users.dataSources.create",
              "fitness.users.dataSources.update",
            },
          },
          description = "Version string for the device hardware/software.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDataPointChangesResponse = {
      id = "ListDataPointChangesResponse",
      properties = {
        dataSourceId = {
          description = "The data stream ID of the data source with data point changes.",
          type = "string",
        },
        deletedDataPoint = {
          description = "Deleted data points for the user. Note, for modifications this should be parsed before handling insertions.",
          items = {
            ["$ref"] = "DataPoint",
          },
          type = "array",
        },
        insertedDataPoint = {
          description = "Inserted data points for the user.",
          items = {
            ["$ref"] = "DataPoint",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDataSourcesResponse = {
      id = "ListDataSourcesResponse",
      properties = {
        dataSource = {
          description = "A previously created data source.",
          items = {
            ["$ref"] = "DataSource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSessionsResponse = {
      id = "ListSessionsResponse",
      properties = {
        deletedSession = {
          description = "If includeDeleted is set to true in the request, and startTime and endTime are omitted, this will include sessions which were deleted since the last sync.",
          items = {
            ["$ref"] = "Session",
          },
          type = "array",
        },
        hasMoreData = {
          description = "Flag to indicate server has more data to transfer. DO NOT USE THIS FIELD. It is never populated in responses from the server.",
          type = "boolean",
        },
        nextPageToken = {
          description = "The sync token which is used to sync further changes. This will only be provided if both startTime and endTime are omitted from the request.",
          type = "string",
        },
        session = {
          description = "Sessions with an end time that is between startTime and endTime of the request.",
          items = {
            ["$ref"] = "Session",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MapValue = {
      description = "Holder object for the value of an entry in a map field of a data point. A map value supports a subset of the formats that the regular Value supports.",
      id = "MapValue",
      properties = {
        fpVal = {
          description = "Floating point value.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Session = {
      description = "Sessions contain metadata, such as a user-friendly name and time interval information.",
      id = "Session",
      properties = {
        activeTimeMillis = {
          description = "Session active time. While start_time_millis and end_time_millis define the full session time, the active time can be shorter and specified by active_time_millis. If the inactive time during the session is known, it should also be inserted via a com.google.activity.segment data point with a STILL activity value",
          format = "int64",
          type = "string",
        },
        activityType = {
          annotations = {
            required = {
              "fitness.users.sessions.update",
            },
          },
          description = "The type of activity this session represents.",
          format = "int32",
          type = "integer",
        },
        application = {
          ["$ref"] = "Application",
          annotations = {
            required = {
              "fitness.users.sessions.update",
            },
          },
          description = "The application that created the session.",
        },
        description = {
          description = "A description for this session.",
          type = "string",
        },
        endTimeMillis = {
          annotations = {
            required = {
              "fitness.users.sessions.update",
            },
          },
          description = "An end time, in milliseconds since epoch, inclusive.",
          format = "int64",
          type = "string",
        },
        id = {
          annotations = {
            required = {
              "fitness.users.sessions.update",
            },
          },
          description = "A client-generated identifier that is unique across all sessions owned by this particular user.",
          type = "string",
        },
        modifiedTimeMillis = {
          description = "A timestamp that indicates when the session was last modified.",
          format = "int64",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "fitness.users.sessions.update",
            },
          },
          description = "A human readable name of the session.",
          type = "string",
        },
        startTimeMillis = {
          annotations = {
            required = {
              "fitness.users.sessions.update",
            },
          },
          description = "A start time, in milliseconds since epoch, inclusive.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Value = {
      description = "Holder object for the value of a single field in a data point. A field value has a particular format and is only ever set to one of an integer or a floating point value.",
      id = "Value",
      properties = {
        fpVal = {
          description = "Floating point value. When this is set, other values must not be set.",
          format = "double",
          type = "number",
        },
        intVal = {
          description = "Integer value. When this is set, other values must not be set.",
          format = "int32",
          type = "integer",
        },
        mapVal = {
          description = "Map value. The valid key space and units for the corresponding value of each entry should be documented as part of the data type definition. Keys should be kept small whenever possible. Data streams with large keys and high data frequency may be down sampled.",
          items = {
            ["$ref"] = "ValueMapValEntry",
          },
          type = "array",
        },
        stringVal = {
          description = "String value. When this is set, other values must not be set. Strings should be kept small whenever possible. Data streams with large string values and high data frequency may be down sampled.",
          type = "string",
        },
      },
      type = "object",
    },
    ValueMapValEntry = {
      id = "ValueMapValEntry",
      properties = {
        key = {
          type = "string",
        },
        value = {
          ["$ref"] = "MapValue",
        },
      },
      type = "object",
    },
  },
  servicePath = "fitness/v1/users/",
  title = "Fitness API",
  version = "v1",
}