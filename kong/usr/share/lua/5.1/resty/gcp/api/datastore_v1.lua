return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/datastore"] = {
          description = "View and manage your Google Cloud Datastore data",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://datastore.googleapis.com/",
  batchPath = "batch",
  description = "Accesses the schemaless NoSQL database to provide fully managed, robust, scalable storage for your application. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/datastore/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "datastore:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://datastore.mtls.googleapis.com/",
  name = "datastore",
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
        allocateIds = {
          description = "Allocates IDs for the given keys, which is useful for referencing an entity before it is inserted.",
          flatPath = "v1/projects/{projectId}:allocateIds",
          httpMethod = "POST",
          id = "datastore.projects.allocateIds",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the project against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:allocateIds",
          request = {
            ["$ref"] = "AllocateIdsRequest",
          },
          response = {
            ["$ref"] = "AllocateIdsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        beginTransaction = {
          description = "Begins a new transaction.",
          flatPath = "v1/projects/{projectId}:beginTransaction",
          httpMethod = "POST",
          id = "datastore.projects.beginTransaction",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the project against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:beginTransaction",
          request = {
            ["$ref"] = "BeginTransactionRequest",
          },
          response = {
            ["$ref"] = "BeginTransactionResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        commit = {
          description = "Commits a transaction, optionally creating, deleting or modifying some entities.",
          flatPath = "v1/projects/{projectId}:commit",
          httpMethod = "POST",
          id = "datastore.projects.commit",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the project against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:commit",
          request = {
            ["$ref"] = "CommitRequest",
          },
          response = {
            ["$ref"] = "CommitResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        export = {
          description = "Exports a copy of all or a subset of entities from Google Cloud Datastore to another storage system, such as Google Cloud Storage. Recent updates to entities may not be reflected in the export. The export occurs in the background and its progress can be monitored and managed via the Operation resource that is created. The output of an export may only be used once the associated operation is done. If an export operation is cancelled before completion it may leave partial data behind in Google Cloud Storage.",
          flatPath = "v1/projects/{projectId}:export",
          httpMethod = "POST",
          id = "datastore.projects.export",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. Project ID against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:export",
          request = {
            ["$ref"] = "GoogleDatastoreAdminV1ExportEntitiesRequest",
          },
          response = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        import = {
          description = "Imports entities into Google Cloud Datastore. Existing entities with the same key are overwritten. The import occurs in the background and its progress can be monitored and managed via the Operation resource that is created. If an ImportEntities operation is cancelled, it is possible that a subset of the data has already been imported to Cloud Datastore.",
          flatPath = "v1/projects/{projectId}:import",
          httpMethod = "POST",
          id = "datastore.projects.import",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. Project ID against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:import",
          request = {
            ["$ref"] = "GoogleDatastoreAdminV1ImportEntitiesRequest",
          },
          response = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        lookup = {
          description = "Looks up entities by key.",
          flatPath = "v1/projects/{projectId}:lookup",
          httpMethod = "POST",
          id = "datastore.projects.lookup",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the project against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:lookup",
          request = {
            ["$ref"] = "LookupRequest",
          },
          response = {
            ["$ref"] = "LookupResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        reserveIds = {
          description = "Prevents the supplied keys' IDs from being auto-allocated by Cloud Datastore.",
          flatPath = "v1/projects/{projectId}:reserveIds",
          httpMethod = "POST",
          id = "datastore.projects.reserveIds",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the project against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:reserveIds",
          request = {
            ["$ref"] = "ReserveIdsRequest",
          },
          response = {
            ["$ref"] = "ReserveIdsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        rollback = {
          description = "Rolls back a transaction.",
          flatPath = "v1/projects/{projectId}:rollback",
          httpMethod = "POST",
          id = "datastore.projects.rollback",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the project against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:rollback",
          request = {
            ["$ref"] = "RollbackRequest",
          },
          response = {
            ["$ref"] = "RollbackResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        runAggregationQuery = {
          description = "Runs an aggregation query.",
          flatPath = "v1/projects/{projectId}:runAggregationQuery",
          httpMethod = "POST",
          id = "datastore.projects.runAggregationQuery",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the project against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:runAggregationQuery",
          request = {
            ["$ref"] = "RunAggregationQueryRequest",
          },
          response = {
            ["$ref"] = "RunAggregationQueryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
        runQuery = {
          description = "Queries for entities.",
          flatPath = "v1/projects/{projectId}:runQuery",
          httpMethod = "POST",
          id = "datastore.projects.runQuery",
          parameterOrder = {
            "projectId",
          },
          parameters = {
            projectId = {
              description = "Required. The ID of the project against which to make the request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/projects/{projectId}:runQuery",
          request = {
            ["$ref"] = "RunQueryRequest",
          },
          response = {
            ["$ref"] = "RunQueryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/datastore",
          },
        },
      },
      resources = {
        indexes = {
          methods = {
            create = {
              description = "Creates the specified index. A newly created index's initial state is `CREATING`. On completion of the returned google.longrunning.Operation, the state will be `READY`. If the index already exists, the call will return an `ALREADY_EXISTS` status. During index creation, the process could result in an error, in which case the index will move to the `ERROR` state. The process can be recovered by fixing the data that caused the error, removing the index with delete, then re-creating the index with create. Indexes with a single property cannot be created.",
              flatPath = "v1/projects/{projectId}/indexes",
              httpMethod = "POST",
              id = "datastore.projects.indexes.create",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                projectId = {
                  description = "Project ID against which to make the request.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/indexes",
              request = {
                ["$ref"] = "GoogleDatastoreAdminV1Index",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            delete = {
              description = "Deletes an existing index. An index can only be deleted if it is in a `READY` or `ERROR` state. On successful execution of the request, the index will be in a `DELETING` state. And on completion of the returned google.longrunning.Operation, the index will be removed. During index deletion, the process could result in an error, in which case the index will move to the `ERROR` state. The process can be recovered by fixing the data that caused the error, followed by calling delete again.",
              flatPath = "v1/projects/{projectId}/indexes/{indexId}",
              httpMethod = "DELETE",
              id = "datastore.projects.indexes.delete",
              parameterOrder = {
                "projectId",
                "indexId",
              },
              parameters = {
                indexId = {
                  description = "The resource ID of the index to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "Project ID against which to make the request.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/indexes/{indexId}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            get = {
              description = "Gets an index.",
              flatPath = "v1/projects/{projectId}/indexes/{indexId}",
              httpMethod = "GET",
              id = "datastore.projects.indexes.get",
              parameterOrder = {
                "projectId",
                "indexId",
              },
              parameters = {
                indexId = {
                  description = "The resource ID of the index to get.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                projectId = {
                  description = "Project ID against which to make the request.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/indexes/{indexId}",
              response = {
                ["$ref"] = "GoogleDatastoreAdminV1Index",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            list = {
              description = "Lists the indexes that match the specified filters. Datastore uses an eventually consistent query to fetch the list of indexes and may occasionally return stale results.",
              flatPath = "v1/projects/{projectId}/indexes",
              httpMethod = "GET",
              id = "datastore.projects.indexes.list",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                filter = {
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of items to return. If zero, then all results will be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The next_page_token value returned from a previous List request, if any.",
                  location = "query",
                  type = "string",
                },
                projectId = {
                  description = "Project ID against which to make the request.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/indexes",
              response = {
                ["$ref"] = "GoogleDatastoreAdminV1ListIndexesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
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
              id = "datastore.projects.operations.cancel",
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
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            delete = {
              description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}",
              httpMethod = "DELETE",
              id = "datastore.projects.operations.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource to be deleted.",
                  location = "path",
                  pattern = "^projects/[^/]+/operations/[^/]+$",
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
                "https://www.googleapis.com/auth/datastore",
              },
            },
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v1/projects/{projectsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "datastore.projects.operations.get",
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
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
            list = {
              description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
              flatPath = "v1/projects/{projectsId}/operations",
              httpMethod = "GET",
              id = "datastore.projects.operations.list",
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
                ["$ref"] = "GoogleLongrunningListOperationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/datastore",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://datastore.googleapis.com/",
  schemas = {
    Aggregation = {
      description = "Defines a aggregation that produces a single result.",
      id = "Aggregation",
      properties = {
        alias = {
          description = "Optional. Optional name of the property to store the result of the aggregation. If not provided, Datastore will pick a default name following the format `property_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT_UP_TO(4) OVER ( ... ); ``` becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2) AS property_1, COUNT_UP_TO(3) AS count_up_to_3, COUNT_UP_TO(4) AS property_2 OVER ( ... ); ``` Requires: * Must be unique across all aggregation aliases. * Conform to entity property name limitations.",
          type = "string",
        },
        count = {
          ["$ref"] = "Count",
          description = "Count aggregator.",
        },
      },
      type = "object",
    },
    AggregationQuery = {
      description = "Datastore query for running an aggregation over a Query.",
      id = "AggregationQuery",
      properties = {
        aggregations = {
          description = "Optional. Series of aggregations to apply over the results of the `nested_query`. Requires: * A minimum of one and maximum of five aggregations per query.",
          items = {
            ["$ref"] = "Aggregation",
          },
          type = "array",
        },
        nestedQuery = {
          ["$ref"] = "Query",
          description = "Nested query for aggregation",
        },
      },
      type = "object",
    },
    AggregationResult = {
      description = "The result of a single bucket from a Datastore aggregation query. The keys of `aggregate_properties` are the same for all results in an aggregation query, unlike entity queries which can have different fields present for each result.",
      id = "AggregationResult",
      properties = {
        aggregateProperties = {
          additionalProperties = {
            ["$ref"] = "Value",
          },
          description = "The result of the aggregation functions, ex: `COUNT(*) AS total_entities`. The key is the alias assigned to the aggregation function on input and the size of this map equals the number of aggregation functions in the query.",
          type = "object",
        },
      },
      type = "object",
    },
    AggregationResultBatch = {
      description = "A batch of aggregation results produced by an aggregation query.",
      id = "AggregationResultBatch",
      properties = {
        aggregationResults = {
          description = "The aggregation results for this batch.",
          items = {
            ["$ref"] = "AggregationResult",
          },
          type = "array",
        },
        moreResults = {
          description = "The state of the query after the current batch. Only COUNT(*) aggregations are supported in the initial launch. Therefore, expected result type is limited to `NO_MORE_RESULTS`.",
          enum = {
            "MORE_RESULTS_TYPE_UNSPECIFIED",
            "NOT_FINISHED",
            "MORE_RESULTS_AFTER_LIMIT",
            "MORE_RESULTS_AFTER_CURSOR",
            "NO_MORE_RESULTS",
          },
          enumDescriptions = {
            "Unspecified. This value is never used.",
            "There may be additional batches to fetch from this query.",
            "The query is finished, but there may be more results after the limit.",
            "The query is finished, but there may be more results after the end cursor.",
            "The query is finished, and there are no more results.",
          },
          type = "string",
        },
        readTime = {
          description = "Read timestamp this batch was returned from. In a single transaction, subsequent query result batches for the same query can have a greater timestamp. Each batch's read timestamp is valid for all preceding batches.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    AllocateIdsRequest = {
      description = "The request for Datastore.AllocateIds.",
      id = "AllocateIdsRequest",
      properties = {
        databaseId = {
          description = "The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.",
          type = "string",
        },
        keys = {
          description = "Required. A list of keys with incomplete key paths for which to allocate IDs. No key may be reserved/read-only.",
          items = {
            ["$ref"] = "Key",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AllocateIdsResponse = {
      description = "The response for Datastore.AllocateIds.",
      id = "AllocateIdsResponse",
      properties = {
        keys = {
          description = "The keys specified in the request (in the same order), each with its key path completed with a newly allocated ID.",
          items = {
            ["$ref"] = "Key",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ArrayValue = {
      description = "An array value.",
      id = "ArrayValue",
      properties = {
        values = {
          description = "Values in the array. The order of values in an array is preserved as long as all values have identical settings for 'exclude_from_indexes'.",
          items = {
            ["$ref"] = "Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BeginTransactionRequest = {
      description = "The request for Datastore.BeginTransaction.",
      id = "BeginTransactionRequest",
      properties = {
        databaseId = {
          description = "The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.",
          type = "string",
        },
        transactionOptions = {
          ["$ref"] = "TransactionOptions",
          description = "Options for a new transaction.",
        },
      },
      type = "object",
    },
    BeginTransactionResponse = {
      description = "The response for Datastore.BeginTransaction.",
      id = "BeginTransactionResponse",
      properties = {
        transaction = {
          description = "The transaction identifier (always present).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    CommitRequest = {
      description = "The request for Datastore.Commit.",
      id = "CommitRequest",
      properties = {
        databaseId = {
          description = "The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.",
          type = "string",
        },
        mode = {
          description = "The type of commit to perform. Defaults to `TRANSACTIONAL`.",
          enum = {
            "MODE_UNSPECIFIED",
            "TRANSACTIONAL",
            "NON_TRANSACTIONAL",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "Transactional: The mutations are either all applied, or none are applied. Learn about transactions [here](https://cloud.google.com/datastore/docs/concepts/transactions).",
            "Non-transactional: The mutations may not apply as all or none.",
          },
          type = "string",
        },
        mutations = {
          description = "The mutations to perform. When mode is `TRANSACTIONAL`, mutations affecting a single entity are applied in order. The following sequences of mutations affecting a single entity are not permitted in a single `Commit` request: - `insert` followed by `insert` - `update` followed by `insert` - `upsert` followed by `insert` - `delete` followed by `update` When mode is `NON_TRANSACTIONAL`, no two mutations may affect a single entity.",
          items = {
            ["$ref"] = "Mutation",
          },
          type = "array",
        },
        transaction = {
          description = "The identifier of the transaction associated with the commit. A transaction identifier is returned by a call to Datastore.BeginTransaction.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    CommitResponse = {
      description = "The response for Datastore.Commit.",
      id = "CommitResponse",
      properties = {
        commitTime = {
          description = "The transaction commit timestamp. Not set for non-transactional commits.",
          format = "google-datetime",
          type = "string",
        },
        indexUpdates = {
          description = "The number of index entries updated during the commit, or zero if none were updated.",
          format = "int32",
          type = "integer",
        },
        mutationResults = {
          description = "The result of performing the mutations. The i-th mutation result corresponds to the i-th mutation in the request.",
          items = {
            ["$ref"] = "MutationResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CompositeFilter = {
      description = "A filter that merges multiple other filters using the given operator.",
      id = "CompositeFilter",
      properties = {
        filters = {
          description = "The list of filters to combine. Requires: * At least one filter is present.",
          items = {
            ["$ref"] = "Filter",
          },
          type = "array",
        },
        op = {
          description = "The operator for combining multiple filters.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "AND",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "The results are required to satisfy each of the combined filters.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Count = {
      description = "Count of entities that match the query. The `COUNT(*)` aggregation function operates on the entire entity so it does not require a field reference.",
      id = "Count",
      properties = {
        upTo = {
          description = "Optional. Optional constraint on the maximum number of entities to count. This provides a way to set an upper bound on the number of entities to scan, limiting latency and cost. Unspecified is interpreted as no bound. If a zero value is provided, a count result of zero should always be expected. High-Level Example: ``` AGGREGATE COUNT_UP_TO(1000) OVER ( SELECT * FROM k ); ``` Requires: * Must be non-negative when present.",
          format = "int64",
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
    Entity = {
      description = "A Datastore data object. An entity is limited to 1 megabyte when stored. That _roughly_ corresponds to a limit of 1 megabyte for the serialized form of this message.",
      id = "Entity",
      properties = {
        key = {
          ["$ref"] = "Key",
          description = "The entity's key. An entity must have a key, unless otherwise documented (for example, an entity in `Value.entity_value` may have no key). An entity's kind is its key path's last element's kind, or null if it has no key.",
        },
        properties = {
          additionalProperties = {
            ["$ref"] = "Value",
          },
          description = "The entity's properties. The map's keys are property names. A property name matching regex `__.*__` is reserved. A reserved property name is forbidden in certain documented contexts. The name must not contain more than 500 characters. The name cannot be `\"\"`.",
          type = "object",
        },
      },
      type = "object",
    },
    EntityResult = {
      description = "The result of fetching an entity from Datastore.",
      id = "EntityResult",
      properties = {
        createTime = {
          description = "The time at which the entity was created. This field is set for `FULL` entity results. If this entity is missing, this field will not be set.",
          format = "google-datetime",
          type = "string",
        },
        cursor = {
          description = "A cursor that points to the position after the result entity. Set only when the `EntityResult` is part of a `QueryResultBatch` message.",
          format = "byte",
          type = "string",
        },
        entity = {
          ["$ref"] = "Entity",
          description = "The resulting entity.",
        },
        updateTime = {
          description = "The time at which the entity was last changed. This field is set for `FULL` entity results. If this entity is missing, this field will not be set.",
          format = "google-datetime",
          type = "string",
        },
        version = {
          description = "The version of the entity, a strictly positive number that monotonically increases with changes to the entity. This field is set for `FULL` entity results. For missing entities in `LookupResponse`, this is the version of the snapshot that was used to look up the entity, and it is always set except for eventually consistent reads.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Filter = {
      description = "A holder for any type of filter.",
      id = "Filter",
      properties = {
        compositeFilter = {
          ["$ref"] = "CompositeFilter",
          description = "A composite filter.",
        },
        propertyFilter = {
          ["$ref"] = "PropertyFilter",
          description = "A filter on a property.",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1CommonMetadata = {
      description = "Metadata common to all Datastore Admin operations.",
      id = "GoogleDatastoreAdminV1CommonMetadata",
      properties = {
        endTime = {
          description = "The time the operation ended, either successfully or otherwise.",
          format = "google-datetime",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The client-assigned labels which were provided when the operation was created. May also include additional labels.",
          type = "object",
        },
        operationType = {
          description = "The type of the operation. Can be used as a filter in ListOperationsRequest.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "EXPORT_ENTITIES",
            "IMPORT_ENTITIES",
            "CREATE_INDEX",
            "DELETE_INDEX",
          },
          enumDescriptions = {
            "Unspecified.",
            "ExportEntities.",
            "ImportEntities.",
            "CreateIndex.",
            "DeleteIndex.",
          },
          type = "string",
        },
        startTime = {
          description = "The time that work began on the operation.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the Operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "INITIALIZING",
            "PROCESSING",
            "CANCELLING",
            "FINALIZING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Request is being prepared for processing.",
            "Request is actively being processed.",
            "Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.",
            "Request has been processed and is in its finalization stage.",
            "Request has completed successfully.",
            "Request has finished being processed, but encountered an error.",
            "Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata = {
      description = "Metadata for Datastore to Firestore migration operations. The DatastoreFirestoreMigration operation is not started by the end-user via an explicit \"creation\" method. This is an intentional deviation from the LRO design pattern. This singleton resource can be accessed at: \"projects/{project_id}/operations/datastore-firestore-migration\"",
      id = "GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata",
      properties = {
        migrationState = {
          description = "The current state of migration from Cloud Datastore to Cloud Firestore in Datastore mode.",
          enum = {
            "MIGRATION_STATE_UNSPECIFIED",
            "RUNNING",
            "PAUSED",
            "COMPLETE",
          },
          enumDescriptions = {
            "Unspecified.",
            "The migration is running.",
            "The migration is paused.",
            "The migration is complete.",
          },
          type = "string",
        },
        migrationStep = {
          description = "The current step of migration from Cloud Datastore to Cloud Firestore in Datastore mode.",
          enum = {
            "MIGRATION_STEP_UNSPECIFIED",
            "PREPARE",
            "START",
            "APPLY_WRITES_SYNCHRONOUSLY",
            "COPY_AND_VERIFY",
            "REDIRECT_EVENTUALLY_CONSISTENT_READS",
            "REDIRECT_STRONGLY_CONSISTENT_READS",
            "REDIRECT_WRITES",
          },
          enumDescriptions = {
            "Unspecified.",
            "Pre-migration: the database is prepared for migration.",
            "Start of migration.",
            "Writes are applied synchronously to at least one replica.",
            "Data is copied to Cloud Firestore and then verified to match the data in Cloud Datastore.",
            "Eventually-consistent reads are redirected to Cloud Firestore.",
            "Strongly-consistent reads are redirected to Cloud Firestore.",
            "Writes are redirected to Cloud Firestore.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1EntityFilter = {
      description = "Identifies a subset of entities in a project. This is specified as combinations of kinds and namespaces (either or both of which may be all, as described in the following examples). Example usage: Entire project: kinds=[], namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'], namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo', 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz namespace: kinds=[], namespace_ids=['Baz']",
      id = "GoogleDatastoreAdminV1EntityFilter",
      properties = {
        kinds = {
          description = "If empty, then this represents all kinds.",
          items = {
            type = "string",
          },
          type = "array",
        },
        namespaceIds = {
          description = "An empty list represents all namespaces. This is the preferred usage for projects that don't use namespaces. An empty string element represents the default namespace. This should be used if the project has data in non-default namespaces, but doesn't want to include them. Each namespace in this list must be unique.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1ExportEntitiesMetadata = {
      description = "Metadata for ExportEntities operations.",
      id = "GoogleDatastoreAdminV1ExportEntitiesMetadata",
      properties = {
        common = {
          ["$ref"] = "GoogleDatastoreAdminV1CommonMetadata",
          description = "Metadata common to all Datastore Admin operations.",
        },
        entityFilter = {
          ["$ref"] = "GoogleDatastoreAdminV1EntityFilter",
          description = "Description of which entities are being exported.",
        },
        outputUrlPrefix = {
          description = "Location for the export metadata and data files. This will be the same value as the google.datastore.admin.v1.ExportEntitiesRequest.output_url_prefix field. The final output location is provided in google.datastore.admin.v1.ExportEntitiesResponse.output_url.",
          type = "string",
        },
        progressBytes = {
          ["$ref"] = "GoogleDatastoreAdminV1Progress",
          description = "An estimate of the number of bytes processed.",
        },
        progressEntities = {
          ["$ref"] = "GoogleDatastoreAdminV1Progress",
          description = "An estimate of the number of entities processed.",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1ExportEntitiesRequest = {
      description = "The request for google.datastore.admin.v1.DatastoreAdmin.ExportEntities.",
      id = "GoogleDatastoreAdminV1ExportEntitiesRequest",
      properties = {
        entityFilter = {
          ["$ref"] = "GoogleDatastoreAdminV1EntityFilter",
          description = "Description of what data from the project is included in the export.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Client-assigned labels.",
          type = "object",
        },
        outputUrlPrefix = {
          description = "Required. Location for the export metadata and data files. The full resource URL of the external storage location. Currently, only Google Cloud Storage is supported. So output_url_prefix should be of the form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name of the Cloud Storage bucket and `NAMESPACE_PATH` is an optional Cloud Storage namespace path (this is not a Cloud Datastore namespace). For more information about Cloud Storage namespace paths, see [Object name considerations](https://cloud.google.com/storage/docs/naming#object-considerations). The resulting files will be nested deeper than the specified URL prefix. The final output URL will be provided in the google.datastore.admin.v1.ExportEntitiesResponse.output_url field. That value should be used for subsequent ImportEntities operations. By nesting the data files deeper, the same Cloud Storage bucket can be used in multiple ExportEntities operations without conflict.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1ExportEntitiesResponse = {
      description = "The response for google.datastore.admin.v1.DatastoreAdmin.ExportEntities.",
      id = "GoogleDatastoreAdminV1ExportEntitiesResponse",
      properties = {
        outputUrl = {
          description = "Location of the output metadata file. This can be used to begin an import into Cloud Datastore (this project or another project). See google.datastore.admin.v1.ImportEntitiesRequest.input_url. Only present if the operation completed successfully.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1ImportEntitiesMetadata = {
      description = "Metadata for ImportEntities operations.",
      id = "GoogleDatastoreAdminV1ImportEntitiesMetadata",
      properties = {
        common = {
          ["$ref"] = "GoogleDatastoreAdminV1CommonMetadata",
          description = "Metadata common to all Datastore Admin operations.",
        },
        entityFilter = {
          ["$ref"] = "GoogleDatastoreAdminV1EntityFilter",
          description = "Description of which entities are being imported.",
        },
        inputUrl = {
          description = "The location of the import metadata file. This will be the same value as the google.datastore.admin.v1.ExportEntitiesResponse.output_url field.",
          type = "string",
        },
        progressBytes = {
          ["$ref"] = "GoogleDatastoreAdminV1Progress",
          description = "An estimate of the number of bytes processed.",
        },
        progressEntities = {
          ["$ref"] = "GoogleDatastoreAdminV1Progress",
          description = "An estimate of the number of entities processed.",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1ImportEntitiesRequest = {
      description = "The request for google.datastore.admin.v1.DatastoreAdmin.ImportEntities.",
      id = "GoogleDatastoreAdminV1ImportEntitiesRequest",
      properties = {
        entityFilter = {
          ["$ref"] = "GoogleDatastoreAdminV1EntityFilter",
          description = "Optionally specify which kinds/namespaces are to be imported. If provided, the list must be a subset of the EntityFilter used in creating the export, otherwise a FAILED_PRECONDITION error will be returned. If no filter is specified then all entities from the export are imported.",
        },
        inputUrl = {
          description = "Required. The full resource URL of the external storage location. Currently, only Google Cloud Storage is supported. So input_url should be of the form: `gs://BUCKET_NAME[/NAMESPACE_PATH]/OVERALL_EXPORT_METADATA_FILE`, where `BUCKET_NAME` is the name of the Cloud Storage bucket, `NAMESPACE_PATH` is an optional Cloud Storage namespace path (this is not a Cloud Datastore namespace), and `OVERALL_EXPORT_METADATA_FILE` is the metadata file written by the ExportEntities operation. For more information about Cloud Storage namespace paths, see [Object name considerations](https://cloud.google.com/storage/docs/naming#object-considerations). For more information, see google.datastore.admin.v1.ExportEntitiesResponse.output_url.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Client-assigned labels.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1Index = {
      description = "Datastore composite index definition.",
      id = "GoogleDatastoreAdminV1Index",
      properties = {
        ancestor = {
          description = "Required. The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.",
          enum = {
            "ANCESTOR_MODE_UNSPECIFIED",
            "NONE",
            "ALL_ANCESTORS",
          },
          enumDescriptions = {
            "The ancestor mode is unspecified.",
            "Do not include the entity's ancestors in the index.",
            "Include all the entity's ancestors in the index.",
          },
          type = "string",
        },
        indexId = {
          description = "Output only. The resource ID of the index.",
          readOnly = true,
          type = "string",
        },
        kind = {
          description = "Required. The entity kind to which this index applies.",
          type = "string",
        },
        projectId = {
          description = "Output only. Project ID.",
          readOnly = true,
          type = "string",
        },
        properties = {
          description = "Required. An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.",
          items = {
            ["$ref"] = "GoogleDatastoreAdminV1IndexedProperty",
          },
          type = "array",
        },
        state = {
          description = "Output only. The state of the index.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "DELETING",
            "ERROR",
          },
          enumDescriptions = {
            "The state is unspecified.",
            "The index is being created, and cannot be used by queries. There is an active long-running operation for the index. The index is updated when writing an entity. Some index data may exist.",
            "The index is ready to be used. The index is updated when writing an entity. The index is fully populated from all stored entities it applies to.",
            "The index is being deleted, and cannot be used by queries. There is an active long-running operation for the index. The index is not updated when writing an entity. Some index data may exist.",
            "The index was being created or deleted, but something went wrong. The index cannot by used by queries. There is no active long-running operation for the index, and the most recently finished long-running operation failed. The index is not updated when writing an entity. Some index data may exist.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1IndexOperationMetadata = {
      description = "Metadata for Index operations.",
      id = "GoogleDatastoreAdminV1IndexOperationMetadata",
      properties = {
        common = {
          ["$ref"] = "GoogleDatastoreAdminV1CommonMetadata",
          description = "Metadata common to all Datastore Admin operations.",
        },
        indexId = {
          description = "The index resource ID that this operation is acting on.",
          type = "string",
        },
        progressEntities = {
          ["$ref"] = "GoogleDatastoreAdminV1Progress",
          description = "An estimate of the number of entities processed.",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1IndexedProperty = {
      description = "A property of an index.",
      id = "GoogleDatastoreAdminV1IndexedProperty",
      properties = {
        direction = {
          description = "Required. The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.",
          enum = {
            "DIRECTION_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "The direction is unspecified.",
            "The property's values are indexed so as to support sequencing in ascending order and also query by <, >, <=, >=, and =.",
            "The property's values are indexed so as to support sequencing in descending order and also query by <, >, <=, >=, and =.",
          },
          type = "string",
        },
        name = {
          description = "Required. The property name to index.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1ListIndexesResponse = {
      description = "The response for google.datastore.admin.v1.DatastoreAdmin.ListIndexes.",
      id = "GoogleDatastoreAdminV1ListIndexesResponse",
      properties = {
        indexes = {
          description = "The indexes.",
          items = {
            ["$ref"] = "GoogleDatastoreAdminV1Index",
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
    GoogleDatastoreAdminV1MigrationProgressEvent = {
      description = "An event signifying the start of a new step in a [migration from Cloud Datastore to Cloud Firestore in Datastore mode](https://cloud.google.com/datastore/docs/upgrade-to-firestore).",
      id = "GoogleDatastoreAdminV1MigrationProgressEvent",
      properties = {
        prepareStepDetails = {
          ["$ref"] = "GoogleDatastoreAdminV1PrepareStepDetails",
          description = "Details for the `PREPARE` step.",
        },
        redirectWritesStepDetails = {
          ["$ref"] = "GoogleDatastoreAdminV1RedirectWritesStepDetails",
          description = "Details for the `REDIRECT_WRITES` step.",
        },
        step = {
          description = "The step that is starting. An event with step set to `START` indicates that the migration has been reverted back to the initial pre-migration state.",
          enum = {
            "MIGRATION_STEP_UNSPECIFIED",
            "PREPARE",
            "START",
            "APPLY_WRITES_SYNCHRONOUSLY",
            "COPY_AND_VERIFY",
            "REDIRECT_EVENTUALLY_CONSISTENT_READS",
            "REDIRECT_STRONGLY_CONSISTENT_READS",
            "REDIRECT_WRITES",
          },
          enumDescriptions = {
            "Unspecified.",
            "Pre-migration: the database is prepared for migration.",
            "Start of migration.",
            "Writes are applied synchronously to at least one replica.",
            "Data is copied to Cloud Firestore and then verified to match the data in Cloud Datastore.",
            "Eventually-consistent reads are redirected to Cloud Firestore.",
            "Strongly-consistent reads are redirected to Cloud Firestore.",
            "Writes are redirected to Cloud Firestore.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1MigrationStateEvent = {
      description = "An event signifying a change in state of a [migration from Cloud Datastore to Cloud Firestore in Datastore mode](https://cloud.google.com/datastore/docs/upgrade-to-firestore).",
      id = "GoogleDatastoreAdminV1MigrationStateEvent",
      properties = {
        state = {
          description = "The new state of the migration.",
          enum = {
            "MIGRATION_STATE_UNSPECIFIED",
            "RUNNING",
            "PAUSED",
            "COMPLETE",
          },
          enumDescriptions = {
            "Unspecified.",
            "The migration is running.",
            "The migration is paused.",
            "The migration is complete.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1PrepareStepDetails = {
      description = "Details for the `PREPARE` step.",
      id = "GoogleDatastoreAdminV1PrepareStepDetails",
      properties = {
        concurrencyMode = {
          description = "The concurrency mode this database will use when it reaches the `REDIRECT_WRITES` step.",
          enum = {
            "CONCURRENCY_MODE_UNSPECIFIED",
            "PESSIMISTIC",
            "OPTIMISTIC",
            "OPTIMISTIC_WITH_ENTITY_GROUPS",
          },
          enumDescriptions = {
            "Unspecified.",
            "Pessimistic concurrency.",
            "Optimistic concurrency.",
            "Optimistic concurrency with entity groups.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1Progress = {
      description = "Measures the progress of a particular metric.",
      id = "GoogleDatastoreAdminV1Progress",
      properties = {
        workCompleted = {
          description = "The amount of work that has been completed. Note that this may be greater than work_estimated.",
          format = "int64",
          type = "string",
        },
        workEstimated = {
          description = "An estimate of how much work needs to be performed. May be zero if the work estimate is unavailable.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1RedirectWritesStepDetails = {
      description = "Details for the `REDIRECT_WRITES` step.",
      id = "GoogleDatastoreAdminV1RedirectWritesStepDetails",
      properties = {
        concurrencyMode = {
          description = "Ths concurrency mode for this database.",
          enum = {
            "CONCURRENCY_MODE_UNSPECIFIED",
            "PESSIMISTIC",
            "OPTIMISTIC",
            "OPTIMISTIC_WITH_ENTITY_GROUPS",
          },
          enumDescriptions = {
            "Unspecified.",
            "Pessimistic concurrency.",
            "Optimistic concurrency.",
            "Optimistic concurrency with entity groups.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1beta1CommonMetadata = {
      description = "Metadata common to all Datastore Admin operations.",
      id = "GoogleDatastoreAdminV1beta1CommonMetadata",
      properties = {
        endTime = {
          description = "The time the operation ended, either successfully or otherwise.",
          format = "google-datetime",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The client-assigned labels which were provided when the operation was created. May also include additional labels.",
          type = "object",
        },
        operationType = {
          description = "The type of the operation. Can be used as a filter in ListOperationsRequest.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "EXPORT_ENTITIES",
            "IMPORT_ENTITIES",
          },
          enumDescriptions = {
            "Unspecified.",
            "ExportEntities.",
            "ImportEntities.",
          },
          type = "string",
        },
        startTime = {
          description = "The time that work began on the operation.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the Operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "INITIALIZING",
            "PROCESSING",
            "CANCELLING",
            "FINALIZING",
            "SUCCESSFUL",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unspecified.",
            "Request is being prepared for processing.",
            "Request is actively being processed.",
            "Request is in the process of being cancelled after user called google.longrunning.Operations.CancelOperation on the operation.",
            "Request has been processed and is in its finalization stage.",
            "Request has completed successfully.",
            "Request has finished being processed, but encountered an error.",
            "Request has finished being cancelled after user called google.longrunning.Operations.CancelOperation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1beta1EntityFilter = {
      description = "Identifies a subset of entities in a project. This is specified as combinations of kinds and namespaces (either or both of which may be all, as described in the following examples). Example usage: Entire project: kinds=[], namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'], namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo', 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz namespace: kinds=[], namespace_ids=['Baz']",
      id = "GoogleDatastoreAdminV1beta1EntityFilter",
      properties = {
        kinds = {
          description = "If empty, then this represents all kinds.",
          items = {
            type = "string",
          },
          type = "array",
        },
        namespaceIds = {
          description = "An empty list represents all namespaces. This is the preferred usage for projects that don't use namespaces. An empty string element represents the default namespace. This should be used if the project has data in non-default namespaces, but doesn't want to include them. Each namespace in this list must be unique.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1beta1ExportEntitiesMetadata = {
      description = "Metadata for ExportEntities operations.",
      id = "GoogleDatastoreAdminV1beta1ExportEntitiesMetadata",
      properties = {
        common = {
          ["$ref"] = "GoogleDatastoreAdminV1beta1CommonMetadata",
          description = "Metadata common to all Datastore Admin operations.",
        },
        entityFilter = {
          ["$ref"] = "GoogleDatastoreAdminV1beta1EntityFilter",
          description = "Description of which entities are being exported.",
        },
        outputUrlPrefix = {
          description = "Location for the export metadata and data files. This will be the same value as the google.datastore.admin.v1beta1.ExportEntitiesRequest.output_url_prefix field. The final output location is provided in google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url.",
          type = "string",
        },
        progressBytes = {
          ["$ref"] = "GoogleDatastoreAdminV1beta1Progress",
          description = "An estimate of the number of bytes processed.",
        },
        progressEntities = {
          ["$ref"] = "GoogleDatastoreAdminV1beta1Progress",
          description = "An estimate of the number of entities processed.",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1beta1ExportEntitiesResponse = {
      description = "The response for google.datastore.admin.v1beta1.DatastoreAdmin.ExportEntities.",
      id = "GoogleDatastoreAdminV1beta1ExportEntitiesResponse",
      properties = {
        outputUrl = {
          description = "Location of the output metadata file. This can be used to begin an import into Cloud Datastore (this project or another project). See google.datastore.admin.v1beta1.ImportEntitiesRequest.input_url. Only present if the operation completed successfully.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1beta1ImportEntitiesMetadata = {
      description = "Metadata for ImportEntities operations.",
      id = "GoogleDatastoreAdminV1beta1ImportEntitiesMetadata",
      properties = {
        common = {
          ["$ref"] = "GoogleDatastoreAdminV1beta1CommonMetadata",
          description = "Metadata common to all Datastore Admin operations.",
        },
        entityFilter = {
          ["$ref"] = "GoogleDatastoreAdminV1beta1EntityFilter",
          description = "Description of which entities are being imported.",
        },
        inputUrl = {
          description = "The location of the import metadata file. This will be the same value as the google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url field.",
          type = "string",
        },
        progressBytes = {
          ["$ref"] = "GoogleDatastoreAdminV1beta1Progress",
          description = "An estimate of the number of bytes processed.",
        },
        progressEntities = {
          ["$ref"] = "GoogleDatastoreAdminV1beta1Progress",
          description = "An estimate of the number of entities processed.",
        },
      },
      type = "object",
    },
    GoogleDatastoreAdminV1beta1Progress = {
      description = "Measures the progress of a particular metric.",
      id = "GoogleDatastoreAdminV1beta1Progress",
      properties = {
        workCompleted = {
          description = "The amount of work that has been completed. Note that this may be greater than work_estimated.",
          format = "int64",
          type = "string",
        },
        workEstimated = {
          description = "An estimate of how much work needs to be performed. May be zero if the work estimate is unavailable.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
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
    GqlQuery = {
      description = "A [GQL query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).",
      id = "GqlQuery",
      properties = {
        allowLiterals = {
          description = "When false, the query string must not contain any literals and instead must bind all values. For example, `SELECT * FROM Kind WHERE a = 'string literal'` is not allowed, while `SELECT * FROM Kind WHERE a = @value` is.",
          type = "boolean",
        },
        namedBindings = {
          additionalProperties = {
            ["$ref"] = "GqlQueryParameter",
          },
          description = "For each non-reserved named binding site in the query string, there must be a named parameter with that name, but not necessarily the inverse. Key must match regex `A-Za-z_$*`, must not match regex `__.*__`, and must not be `\"\"`.",
          type = "object",
        },
        positionalBindings = {
          description = "Numbered binding site @1 references the first numbered parameter, effectively using 1-based indexing, rather than the usual 0. For each binding site numbered i in `query_string`, there must be an i-th numbered parameter. The inverse must also be true.",
          items = {
            ["$ref"] = "GqlQueryParameter",
          },
          type = "array",
        },
        queryString = {
          description = "A string of the format described [here](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).",
          type = "string",
        },
      },
      type = "object",
    },
    GqlQueryParameter = {
      description = "A binding parameter for a GQL query.",
      id = "GqlQueryParameter",
      properties = {
        cursor = {
          description = "A query cursor. Query cursors are returned in query result batches.",
          format = "byte",
          type = "string",
        },
        value = {
          ["$ref"] = "Value",
          description = "A value parameter.",
        },
      },
      type = "object",
    },
    Key = {
      description = "A unique identifier for an entity. If a key's partition ID or any of its path kinds or names are reserved/read-only, the key is reserved/read-only. A reserved/read-only key is forbidden in certain documented contexts.",
      id = "Key",
      properties = {
        partitionId = {
          ["$ref"] = "PartitionId",
          description = "Entities are partitioned into subsets, currently identified by a project ID and namespace ID. Queries are scoped to a single partition.",
        },
        path = {
          description = "The entity path. An entity path consists of one or more elements composed of a kind and a string or numerical identifier, which identify entities. The first element identifies a _root entity_, the second element identifies a _child_ of the root entity, the third element identifies a child of the second entity, and so forth. The entities identified by all prefixes of the path are called the element's _ancestors_. An entity path is always fully complete: *all* of the entity's ancestors are required to be in the path along with the entity identifier itself. The only exception is that in some documented cases, the identifier in the last path element (for the entity) itself may be omitted. For example, the last path element of the key of `Mutation.insert` may have no identifier. A path can never be empty, and a path can have at most 100 elements.",
          items = {
            ["$ref"] = "PathElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    KindExpression = {
      description = "A representation of a kind.",
      id = "KindExpression",
      properties = {
        name = {
          description = "The name of the kind.",
          type = "string",
        },
      },
      type = "object",
    },
    LatLng = {
      description = "An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.",
      id = "LatLng",
      properties = {
        latitude = {
          description = "The latitude in degrees. It must be in the range [-90.0, +90.0].",
          format = "double",
          type = "number",
        },
        longitude = {
          description = "The longitude in degrees. It must be in the range [-180.0, +180.0].",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    LookupRequest = {
      description = "The request for Datastore.Lookup.",
      id = "LookupRequest",
      properties = {
        databaseId = {
          description = "The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.",
          type = "string",
        },
        keys = {
          description = "Required. Keys of entities to look up.",
          items = {
            ["$ref"] = "Key",
          },
          type = "array",
        },
        readOptions = {
          ["$ref"] = "ReadOptions",
          description = "The options for this lookup request.",
        },
      },
      type = "object",
    },
    LookupResponse = {
      description = "The response for Datastore.Lookup.",
      id = "LookupResponse",
      properties = {
        deferred = {
          description = "A list of keys that were not looked up due to resource constraints. The order of results in this field is undefined and has no relation to the order of the keys in the input.",
          items = {
            ["$ref"] = "Key",
          },
          type = "array",
        },
        found = {
          description = "Entities found as `ResultType.FULL` entities. The order of results in this field is undefined and has no relation to the order of the keys in the input.",
          items = {
            ["$ref"] = "EntityResult",
          },
          type = "array",
        },
        missing = {
          description = "Entities not found as `ResultType.KEY_ONLY` entities. The order of results in this field is undefined and has no relation to the order of the keys in the input.",
          items = {
            ["$ref"] = "EntityResult",
          },
          type = "array",
        },
        readTime = {
          description = "The time at which these entities were read or found missing.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Mutation = {
      description = "A mutation to apply to an entity.",
      id = "Mutation",
      properties = {
        baseVersion = {
          description = "The version of the entity that this mutation is being applied to. If this does not match the current version on the server, the mutation conflicts.",
          format = "int64",
          type = "string",
        },
        delete = {
          ["$ref"] = "Key",
          description = "The key of the entity to delete. The entity may or may not already exist. Must have a complete key path and must not be reserved/read-only.",
        },
        insert = {
          ["$ref"] = "Entity",
          description = "The entity to insert. The entity must not already exist. The entity key's final path element may be incomplete.",
        },
        update = {
          ["$ref"] = "Entity",
          description = "The entity to update. The entity must already exist. Must have a complete key path.",
        },
        updateTime = {
          description = "The update time of the entity that this mutation is being applied to. If this does not match the current update time on the server, the mutation conflicts.",
          format = "google-datetime",
          type = "string",
        },
        upsert = {
          ["$ref"] = "Entity",
          description = "The entity to upsert. The entity may or may not already exist. The entity key's final path element may be incomplete.",
        },
      },
      type = "object",
    },
    MutationResult = {
      description = "The result of applying a mutation.",
      id = "MutationResult",
      properties = {
        conflictDetected = {
          description = "Whether a conflict was detected for this mutation. Always false when a conflict detection strategy field is not set in the mutation.",
          type = "boolean",
        },
        createTime = {
          description = "The create time of the entity. This field will not be set after a 'delete'.",
          format = "google-datetime",
          type = "string",
        },
        key = {
          ["$ref"] = "Key",
          description = "The automatically allocated key. Set only when the mutation allocated a key.",
        },
        updateTime = {
          description = "The update time of the entity on the server after processing the mutation. If the mutation doesn't change anything on the server, then the timestamp will be the update timestamp of the current entity. This field will not be set after a 'delete'.",
          format = "google-datetime",
          type = "string",
        },
        version = {
          description = "The version of the entity on the server after processing the mutation. If the mutation doesn't change anything on the server, then the version will be the version of the current entity or, if no entity is present, a version that is strictly greater than the version of any previous entity and less than the version of any possible future entity.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PartitionId = {
      description = "A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID. Partition dimensions: - May be `\"\"`. - Must be valid UTF-8 bytes. - Must have values that match regex `[A-Za-z\\d\\.\\-_]{1,100}` If the value of any dimension matches regex `__.*__`, the partition is reserved/read-only. A reserved/read-only partition ID is forbidden in certain documented contexts. Foreign partition IDs (in which the project ID does not match the context project ID ) are discouraged. Reads and writes of foreign partition IDs may fail if the project is not in an active state.",
      id = "PartitionId",
      properties = {
        databaseId = {
          description = "If not empty, the ID of the database to which the entities belong.",
          type = "string",
        },
        namespaceId = {
          description = "If not empty, the ID of the namespace to which the entities belong.",
          type = "string",
        },
        projectId = {
          description = "The ID of the project to which the entities belong.",
          type = "string",
        },
      },
      type = "object",
    },
    PathElement = {
      description = "A (kind, ID/name) pair used to construct a key path. If either name or ID is set, the element is complete. If neither is set, the element is incomplete.",
      id = "PathElement",
      properties = {
        id = {
          description = "The auto-allocated ID of the entity. Never equal to zero. Values less than zero are discouraged and may not be supported in the future.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "The kind of the entity. A kind matching regex `__.*__` is reserved/read-only. A kind must not contain more than 1500 bytes when UTF-8 encoded. Cannot be `\"\"`. Must be valid UTF-8 bytes. Legacy values that are not valid UTF-8 are encoded as `__bytes__` where `` is the base-64 encoding of the bytes.",
          type = "string",
        },
        name = {
          description = "The name of the entity. A name matching regex `__.*__` is reserved/read-only. A name must not be more than 1500 bytes when UTF-8 encoded. Cannot be `\"\"`. Must be valid UTF-8 bytes. Legacy values that are not valid UTF-8 are encoded as `__bytes__` where `` is the base-64 encoding of the bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    Projection = {
      description = "A representation of a property in a projection.",
      id = "Projection",
      properties = {
        property = {
          ["$ref"] = "PropertyReference",
          description = "The property to project.",
        },
      },
      type = "object",
    },
    PropertyFilter = {
      description = "A filter on a specific property.",
      id = "PropertyFilter",
      properties = {
        op = {
          description = "The operator to filter by.",
          enum = {
            "OPERATOR_UNSPECIFIED",
            "LESS_THAN",
            "LESS_THAN_OR_EQUAL",
            "GREATER_THAN",
            "GREATER_THAN_OR_EQUAL",
            "EQUAL",
            "IN",
            "NOT_EQUAL",
            "HAS_ANCESTOR",
            "NOT_IN",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "The given `property` is less than the given `value`. Requires: * That `property` comes first in `order_by`.",
            "The given `property` is less than or equal to the given `value`. Requires: * That `property` comes first in `order_by`.",
            "The given `property` is greater than the given `value`. Requires: * That `property` comes first in `order_by`.",
            "The given `property` is greater than or equal to the given `value`. Requires: * That `property` comes first in `order_by`.",
            "The given `property` is equal to the given `value`.",
            "The given `property` is equal to at least one value in the given array. Requires: * That `value` is a non-empty `ArrayValue` with at most 10 values. * No other `IN` or `NOT_IN` is in the same query.",
            "The given `property` is not equal to the given `value`. Requires: * No other `NOT_EQUAL` or `NOT_IN` is in the same query. * That `property` comes first in the `order_by`.",
            "Limit the result set to the given entity and its descendants. Requires: * That `value` is an entity key.",
            "The value of the `property` is not in the given array. Requires: * That `value` is a non-empty `ArrayValue` with at most 10 values. * No other `IN`, `NOT_IN`, `NOT_EQUAL` is in the same query. * That `field` comes first in the `order_by`.",
          },
          type = "string",
        },
        property = {
          ["$ref"] = "PropertyReference",
          description = "The property to filter by.",
        },
        value = {
          ["$ref"] = "Value",
          description = "The value to compare the property to.",
        },
      },
      type = "object",
    },
    PropertyOrder = {
      description = "The desired order for a specific property.",
      id = "PropertyOrder",
      properties = {
        direction = {
          description = "The direction to order by. Defaults to `ASCENDING`.",
          enum = {
            "DIRECTION_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "Ascending.",
            "Descending.",
          },
          type = "string",
        },
        property = {
          ["$ref"] = "PropertyReference",
          description = "The property to order by.",
        },
      },
      type = "object",
    },
    PropertyReference = {
      description = "A reference to a property relative to the kind expressions.",
      id = "PropertyReference",
      properties = {
        name = {
          description = "The name of the property. If name includes \".\"s, it may be interpreted as a property name path.",
          type = "string",
        },
      },
      type = "object",
    },
    Query = {
      description = "A query for entities.",
      id = "Query",
      properties = {
        distinctOn = {
          description = "The properties to make distinct. The query results will contain the first result for each distinct combination of values for the given properties (if empty, all results are returned).",
          items = {
            ["$ref"] = "PropertyReference",
          },
          type = "array",
        },
        endCursor = {
          description = "An ending point for the query results. Query cursors are returned in query result batches and [can only be used to limit the same query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).",
          format = "byte",
          type = "string",
        },
        filter = {
          ["$ref"] = "Filter",
          description = "The filter to apply.",
        },
        kind = {
          description = "The kinds to query (if empty, returns entities of all kinds). Currently at most 1 kind may be specified.",
          items = {
            ["$ref"] = "KindExpression",
          },
          type = "array",
        },
        limit = {
          description = "The maximum number of results to return. Applies after all other constraints. Optional. Unspecified is interpreted as no limit. Must be >= 0 if specified.",
          format = "int32",
          type = "integer",
        },
        offset = {
          description = "The number of results to skip. Applies before limit, but after all other constraints. Optional. Must be >= 0 if specified.",
          format = "int32",
          type = "integer",
        },
        order = {
          description = "The order to apply to the query results (if empty, order is unspecified).",
          items = {
            ["$ref"] = "PropertyOrder",
          },
          type = "array",
        },
        projection = {
          description = "The projection to return. Defaults to returning all properties.",
          items = {
            ["$ref"] = "Projection",
          },
          type = "array",
        },
        startCursor = {
          description = "A starting point for the query results. Query cursors are returned in query result batches and [can only be used to continue the same query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    QueryResultBatch = {
      description = "A batch of results produced by a query.",
      id = "QueryResultBatch",
      properties = {
        endCursor = {
          description = "A cursor that points to the position after the last result in the batch.",
          format = "byte",
          type = "string",
        },
        entityResultType = {
          description = "The result type for every entity in `entity_results`.",
          enum = {
            "RESULT_TYPE_UNSPECIFIED",
            "FULL",
            "PROJECTION",
            "KEY_ONLY",
          },
          enumDescriptions = {
            "Unspecified. This value is never used.",
            "The key and properties.",
            "A projected subset of properties. The entity may have no key.",
            "Only the key.",
          },
          type = "string",
        },
        entityResults = {
          description = "The results for this batch.",
          items = {
            ["$ref"] = "EntityResult",
          },
          type = "array",
        },
        moreResults = {
          description = "The state of the query after the current batch.",
          enum = {
            "MORE_RESULTS_TYPE_UNSPECIFIED",
            "NOT_FINISHED",
            "MORE_RESULTS_AFTER_LIMIT",
            "MORE_RESULTS_AFTER_CURSOR",
            "NO_MORE_RESULTS",
          },
          enumDescriptions = {
            "Unspecified. This value is never used.",
            "There may be additional batches to fetch from this query.",
            "The query is finished, but there may be more results after the limit.",
            "The query is finished, but there may be more results after the end cursor.",
            "The query is finished, and there are no more results.",
          },
          type = "string",
        },
        readTime = {
          description = "Read timestamp this batch was returned from. This applies to the range of results from the query's `start_cursor` (or the beginning of the query if no cursor was given) to this batch's `end_cursor` (not the query's `end_cursor`). In a single transaction, subsequent query result batches for the same query can have a greater timestamp. Each batch's read timestamp is valid for all preceding batches. This value will not be set for eventually consistent queries in Cloud Datastore.",
          format = "google-datetime",
          type = "string",
        },
        skippedCursor = {
          description = "A cursor that points to the position after the last skipped result. Will be set when `skipped_results` != 0.",
          format = "byte",
          type = "string",
        },
        skippedResults = {
          description = "The number of results skipped, typically because of an offset.",
          format = "int32",
          type = "integer",
        },
        snapshotVersion = {
          description = "The version number of the snapshot this batch was returned from. This applies to the range of results from the query's `start_cursor` (or the beginning of the query if no cursor was given) to this batch's `end_cursor` (not the query's `end_cursor`). In a single transaction, subsequent query result batches for the same query can have a greater snapshot version number. Each batch's snapshot version is valid for all preceding batches. The value will be zero for eventually consistent queries.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ReadOnly = {
      description = "Options specific to read-only transactions.",
      id = "ReadOnly",
      properties = {
        readTime = {
          description = "Reads entities at the given time. This may not be older than 60 seconds.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ReadOptions = {
      description = "The options shared by read requests.",
      id = "ReadOptions",
      properties = {
        readConsistency = {
          description = "The non-transactional read consistency to use.",
          enum = {
            "READ_CONSISTENCY_UNSPECIFIED",
            "STRONG",
            "EVENTUAL",
          },
          enumDescriptions = {
            "Unspecified. This value must not be used.",
            "Strong consistency.",
            "Eventual consistency.",
          },
          type = "string",
        },
        readTime = {
          description = "Reads entities as they were at the given time. This may not be older than 270 seconds. This value is only supported for Cloud Firestore in Datastore mode.",
          format = "google-datetime",
          type = "string",
        },
        transaction = {
          description = "The identifier of the transaction in which to read. A transaction identifier is returned by a call to Datastore.BeginTransaction.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    ReadWrite = {
      description = "Options specific to read / write transactions.",
      id = "ReadWrite",
      properties = {
        previousTransaction = {
          description = "The transaction identifier of the transaction being retried.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    ReserveIdsRequest = {
      description = "The request for Datastore.ReserveIds.",
      id = "ReserveIdsRequest",
      properties = {
        databaseId = {
          description = "The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.",
          type = "string",
        },
        keys = {
          description = "Required. A list of keys with complete key paths whose numeric IDs should not be auto-allocated.",
          items = {
            ["$ref"] = "Key",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReserveIdsResponse = {
      description = "The response for Datastore.ReserveIds.",
      id = "ReserveIdsResponse",
      properties = {},
      type = "object",
    },
    RollbackRequest = {
      description = "The request for Datastore.Rollback.",
      id = "RollbackRequest",
      properties = {
        databaseId = {
          description = "The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.",
          type = "string",
        },
        transaction = {
          description = "Required. The transaction identifier, returned by a call to Datastore.BeginTransaction.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    RollbackResponse = {
      description = "The response for Datastore.Rollback. (an empty message).",
      id = "RollbackResponse",
      properties = {},
      type = "object",
    },
    RunAggregationQueryRequest = {
      description = "The request for Datastore.RunAggregationQuery.",
      id = "RunAggregationQueryRequest",
      properties = {
        aggregationQuery = {
          ["$ref"] = "AggregationQuery",
          description = "The query to run.",
        },
        databaseId = {
          description = "The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.",
          type = "string",
        },
        gqlQuery = {
          ["$ref"] = "GqlQuery",
          description = "The GQL query to run. This query must be an aggregation query.",
        },
        partitionId = {
          ["$ref"] = "PartitionId",
          description = "Entities are partitioned into subsets, identified by a partition ID. Queries are scoped to a single partition. This partition ID is normalized with the standard default context partition ID.",
        },
        readOptions = {
          ["$ref"] = "ReadOptions",
          description = "The options for this query.",
        },
      },
      type = "object",
    },
    RunAggregationQueryResponse = {
      description = "The response for Datastore.RunAggregationQuery.",
      id = "RunAggregationQueryResponse",
      properties = {
        batch = {
          ["$ref"] = "AggregationResultBatch",
          description = "A batch of aggregation results. Always present.",
        },
        query = {
          ["$ref"] = "AggregationQuery",
          description = "The parsed form of the `GqlQuery` from the request, if it was set.",
        },
      },
      type = "object",
    },
    RunQueryRequest = {
      description = "The request for Datastore.RunQuery.",
      id = "RunQueryRequest",
      properties = {
        databaseId = {
          description = "The ID of the database against which to make the request. '(default)' is not allowed; please use empty string '' to refer the default database.",
          type = "string",
        },
        gqlQuery = {
          ["$ref"] = "GqlQuery",
          description = "The GQL query to run. This query must be a non-aggregation query.",
        },
        partitionId = {
          ["$ref"] = "PartitionId",
          description = "Entities are partitioned into subsets, identified by a partition ID. Queries are scoped to a single partition. This partition ID is normalized with the standard default context partition ID.",
        },
        query = {
          ["$ref"] = "Query",
          description = "The query to run.",
        },
        readOptions = {
          ["$ref"] = "ReadOptions",
          description = "The options for this query.",
        },
      },
      type = "object",
    },
    RunQueryResponse = {
      description = "The response for Datastore.RunQuery.",
      id = "RunQueryResponse",
      properties = {
        batch = {
          ["$ref"] = "QueryResultBatch",
          description = "A batch of query results (always present).",
        },
        query = {
          ["$ref"] = "Query",
          description = "The parsed form of the `GqlQuery` from the request, if it was set.",
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
    TransactionOptions = {
      description = "Options for beginning a new transaction. Transactions can be created explicitly with calls to Datastore.BeginTransaction or implicitly by setting ReadOptions.new_transaction in read requests.",
      id = "TransactionOptions",
      properties = {
        readOnly = {
          ["$ref"] = "ReadOnly",
          description = "The transaction should only allow reads.",
        },
        readWrite = {
          ["$ref"] = "ReadWrite",
          description = "The transaction should allow both reads and writes.",
        },
      },
      type = "object",
    },
    Value = {
      description = "A message that can hold any of the supported value types and associated metadata.",
      id = "Value",
      properties = {
        arrayValue = {
          ["$ref"] = "ArrayValue",
          description = "An array value. Cannot contain another array value. A `Value` instance that sets field `array_value` must not set fields `meaning` or `exclude_from_indexes`.",
        },
        blobValue = {
          description = "A blob value. May have at most 1,000,000 bytes. When `exclude_from_indexes` is false, may have at most 1500 bytes. In JSON requests, must be base64-encoded.",
          format = "byte",
          type = "string",
        },
        booleanValue = {
          description = "A boolean value.",
          type = "boolean",
        },
        doubleValue = {
          description = "A double value.",
          format = "double",
          type = "number",
        },
        entityValue = {
          ["$ref"] = "Entity",
          description = "An entity value. - May have no key. - May have a key with an incomplete key path. - May have a reserved/read-only key.",
        },
        excludeFromIndexes = {
          description = "If the value should be excluded from all indexes including those defined explicitly.",
          type = "boolean",
        },
        geoPointValue = {
          ["$ref"] = "LatLng",
          description = "A geo point value representing a point on the surface of Earth.",
        },
        integerValue = {
          description = "An integer value.",
          format = "int64",
          type = "string",
        },
        keyValue = {
          ["$ref"] = "Key",
          description = "A key value.",
        },
        meaning = {
          description = "The `meaning` field should only be populated for backwards compatibility.",
          format = "int32",
          type = "integer",
        },
        nullValue = {
          description = "A null value.",
          enum = {
            "NULL_VALUE",
          },
          enumDescriptions = {
            "Null value.",
          },
          type = "string",
        },
        stringValue = {
          description = "A UTF-8 encoded string value. When `exclude_from_indexes` is false (it is indexed) , may have at most 1500 bytes. Otherwise, may be set to at most 1,000,000 bytes.",
          type = "string",
        },
        timestampValue = {
          description = "A timestamp value. When stored in the Datastore, precise only to microseconds; any additional precision is rounded down.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Datastore API",
  version = "v1",
  version_module = true,
}