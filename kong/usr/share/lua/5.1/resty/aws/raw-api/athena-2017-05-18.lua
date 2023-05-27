local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-05-18",
    "endpointPrefix": "athena",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon Athena",
    "serviceId": "Athena",
    "signatureVersion": "v4",
    "targetPrefix": "AmazonAthena",
    "uid": "athena-2017-05-18"
  },
  "operations": {
    "BatchGetNamedQuery": {
      "name": "BatchGetNamedQuery",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetNamedQueryInput"
      },
      "output": {
        "shape": "BatchGetNamedQueryOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings. Requires you to have access to the workgroup in which the queries were saved. Use <a>ListNamedQueriesInput</a> to get the list of named query IDs in the specified workgroup. If information could not be retrieved for a submitted query ID, information about the query ID submitted is listed under <a>UnprocessedNamedQueryId</a>. Named queries differ from executed queries. Use <a>BatchGetQueryExecutionInput</a> to get details about each unique query execution, and <a>ListQueryExecutionsInput</a> to get a list of query execution IDs.</p>"
    },
    "BatchGetQueryExecution": {
      "name": "BatchGetQueryExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetQueryExecutionInput"
      },
      "output": {
        "shape": "BatchGetQueryExecutionOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings. Requires you to have access to the workgroup in which the queries ran. To get a list of query execution IDs, use <a>ListQueryExecutionsInput$WorkGroup</a>. Query executions differ from named (saved) queries. Use <a>BatchGetNamedQueryInput</a> to get details about named queries.</p>"
    },
    "CreateDataCatalog": {
      "name": "CreateDataCatalog",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDataCatalogInput"
      },
      "output": {
        "shape": "CreateDataCatalogOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Creates (registers) a data catalog with the specified name and properties. Catalogs created are visible to all users of the same AWS account.</p>"
    },
    "CreateNamedQuery": {
      "name": "CreateNamedQuery",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateNamedQueryInput"
      },
      "output": {
        "shape": "CreateNamedQueryOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Creates a named query in the specified workgroup. Requires that you have access to the workgroup.</p> <p>For code samples using the AWS SDK for Java, see <a href=\"http://docs.aws.amazon.com/athena/latest/ug/code-samples.html\">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>",
      "idempotent": true
    },
    "CreateWorkGroup": {
      "name": "CreateWorkGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateWorkGroupInput"
      },
      "output": {
        "shape": "CreateWorkGroupOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Creates a workgroup with the specified name.</p>"
    },
    "DeleteDataCatalog": {
      "name": "DeleteDataCatalog",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDataCatalogInput"
      },
      "output": {
        "shape": "DeleteDataCatalogOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Deletes a data catalog.</p>"
    },
    "DeleteNamedQuery": {
      "name": "DeleteNamedQuery",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteNamedQueryInput"
      },
      "output": {
        "shape": "DeleteNamedQueryOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Deletes the named query if you have access to the workgroup in which the query was saved.</p> <p>For code samples using the AWS SDK for Java, see <a href=\"http://docs.aws.amazon.com/athena/latest/ug/code-samples.html\">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>",
      "idempotent": true
    },
    "DeleteWorkGroup": {
      "name": "DeleteWorkGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteWorkGroupInput"
      },
      "output": {
        "shape": "DeleteWorkGroupOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Deletes the workgroup with the specified name. The primary workgroup cannot be deleted.</p>",
      "idempotent": true
    },
    "GetDataCatalog": {
      "name": "GetDataCatalog",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDataCatalogInput"
      },
      "output": {
        "shape": "GetDataCatalogOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Returns the specified data catalog.</p>"
    },
    "GetDatabase": {
      "name": "GetDatabase",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDatabaseInput"
      },
      "output": {
        "shape": "GetDatabaseOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "MetadataException"
        }
      ],
      "documentation": "<p>Returns a database object for the specfied database and data catalog.</p>"
    },
    "GetNamedQuery": {
      "name": "GetNamedQuery",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetNamedQueryInput"
      },
      "output": {
        "shape": "GetNamedQueryOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Returns information about a single query. Requires that you have access to the workgroup in which the query was saved.</p>"
    },
    "GetQueryExecution": {
      "name": "GetQueryExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetQueryExecutionInput"
      },
      "output": {
        "shape": "GetQueryExecutionOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Returns information about a single execution of a query if you have access to the workgroup in which the query ran. Each time a query executes, information about the query execution is saved with a unique ID.</p>"
    },
    "GetQueryResults": {
      "name": "GetQueryResults",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetQueryResultsInput"
      },
      "output": {
        "shape": "GetQueryResultsOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Streams the results of a single query execution specified by <code>QueryExecutionId</code> from the Athena query results location in Amazon S3. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Query Results</a> in the <i>Amazon Athena User Guide</i>. This request does not execute the query but returns results. Use <a>StartQueryExecution</a> to run a query.</p> <p>To stream query results successfully, the IAM principal with permission to call <code>GetQueryResults</code> also must have permissions to the Amazon S3 <code>GetObject</code> action for the Athena query results location.</p> <important> <p>IAM principals with permission to the Amazon S3 <code>GetObject</code> action for the query results location are able to retrieve query results from Amazon S3 even if permission to the <code>GetQueryResults</code> action is denied. To restrict user or role access, ensure that Amazon S3 permissions to the Athena query location are denied.</p> </important>"
    },
    "GetTableMetadata": {
      "name": "GetTableMetadata",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTableMetadataInput"
      },
      "output": {
        "shape": "GetTableMetadataOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "MetadataException"
        }
      ],
      "documentation": "<p>Returns table metadata for the specified catalog, database, and table.</p>"
    },
    "GetWorkGroup": {
      "name": "GetWorkGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetWorkGroupInput"
      },
      "output": {
        "shape": "GetWorkGroupOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Returns information about the workgroup with the specified name.</p>"
    },
    "ListDataCatalogs": {
      "name": "ListDataCatalogs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDataCatalogsInput"
      },
      "output": {
        "shape": "ListDataCatalogsOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Lists the data catalogs in the current AWS account.</p>"
    },
    "ListDatabases": {
      "name": "ListDatabases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDatabasesInput"
      },
      "output": {
        "shape": "ListDatabasesOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "MetadataException"
        }
      ],
      "documentation": "<p>Lists the databases in the specified data catalog.</p>"
    },
    "ListNamedQueries": {
      "name": "ListNamedQueries",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListNamedQueriesInput"
      },
      "output": {
        "shape": "ListNamedQueriesOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Provides a list of available query IDs only for queries saved in the specified workgroup. Requires that you have access to the specified workgroup. If a workgroup is not specified, lists the saved queries for the primary workgroup.</p> <p>For code samples using the AWS SDK for Java, see <a href=\"http://docs.aws.amazon.com/athena/latest/ug/code-samples.html\">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>"
    },
    "ListQueryExecutions": {
      "name": "ListQueryExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListQueryExecutionsInput"
      },
      "output": {
        "shape": "ListQueryExecutionsOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Provides a list of available query execution IDs for the queries in the specified workgroup. If a workgroup is not specified, returns a list of query execution IDs for the primary workgroup. Requires you to have access to the workgroup in which the queries ran.</p> <p>For code samples using the AWS SDK for Java, see <a href=\"http://docs.aws.amazon.com/athena/latest/ug/code-samples.html\">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>"
    },
    "ListTableMetadata": {
      "name": "ListTableMetadata",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTableMetadataInput"
      },
      "output": {
        "shape": "ListTableMetadataOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "MetadataException"
        }
      ],
      "documentation": "<p>Lists the metadata for the tables in the specified data catalog database.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceInput"
      },
      "output": {
        "shape": "ListTagsForResourceOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the tags associated with an Athena workgroup or data catalog resource.</p>"
    },
    "ListWorkGroups": {
      "name": "ListWorkGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListWorkGroupsInput"
      },
      "output": {
        "shape": "ListWorkGroupsOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Lists available workgroups for the account.</p>"
    },
    "StartQueryExecution": {
      "name": "StartQueryExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartQueryExecutionInput"
      },
      "output": {
        "shape": "StartQueryExecutionOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Runs the SQL query statements contained in the <code>Query</code>. Requires you to have access to the workgroup in which the query ran. Running queries against an external catalog requires <a>GetDataCatalog</a> permission to the catalog. For code samples using the AWS SDK for Java, see <a href=\"http://docs.aws.amazon.com/athena/latest/ug/code-samples.html\">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>",
      "idempotent": true
    },
    "StopQueryExecution": {
      "name": "StopQueryExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopQueryExecutionInput"
      },
      "output": {
        "shape": "StopQueryExecutionOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Stops a query execution. Requires you to have access to the workgroup in which the query ran.</p> <p>For code samples using the AWS SDK for Java, see <a href=\"http://docs.aws.amazon.com/athena/latest/ug/code-samples.html\">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>",
      "idempotent": true
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceInput"
      },
      "output": {
        "shape": "TagResourceOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Adds one or more tags to an Athena resource. A tag is a label that you assign to a resource. In Athena, a resource can be a workgroup or data catalog. Each tag consists of a key and an optional value, both of which you define. For example, you can use tags to categorize Athena workgroups or data catalogs by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to search and filter workgroups or data catalogs in your account. For best practices, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">Tagging Best Practices</a>. Tag keys can be from 1 to 128 UTF-8 Unicode characters, and tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you specify more than one tag, separate them by commas.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceInput"
      },
      "output": {
        "shape": "UntagResourceOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes one or more tags from a data catalog or workgroup resource.</p>"
    },
    "UpdateDataCatalog": {
      "name": "UpdateDataCatalog",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDataCatalogInput"
      },
      "output": {
        "shape": "UpdateDataCatalogOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Updates the data catalog that has the specified name.</p>"
    },
    "UpdateWorkGroup": {
      "name": "UpdateWorkGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateWorkGroupInput"
      },
      "output": {
        "shape": "UpdateWorkGroupOutput"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Updates the workgroup with the specified name. The workgroup's name cannot be changed.</p>"
    }
  },
  "shapes": {
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "BatchGetNamedQueryInput": {
      "type": "structure",
      "required": [
        "NamedQueryIds"
      ],
      "members": {
        "NamedQueryIds": {
          "shape": "NamedQueryIdList",
          "documentation": "<p>An array of query IDs.</p>"
        }
      }
    },
    "BatchGetNamedQueryOutput": {
      "type": "structure",
      "members": {
        "NamedQueries": {
          "shape": "NamedQueryList",
          "documentation": "<p>Information about the named query IDs submitted.</p>"
        },
        "UnprocessedNamedQueryIds": {
          "shape": "UnprocessedNamedQueryIdList",
          "documentation": "<p>Information about provided query IDs.</p>"
        }
      }
    },
    "BatchGetQueryExecutionInput": {
      "type": "structure",
      "required": [
        "QueryExecutionIds"
      ],
      "members": {
        "QueryExecutionIds": {
          "shape": "QueryExecutionIdList",
          "documentation": "<p>An array of query execution IDs.</p>"
        }
      }
    },
    "BatchGetQueryExecutionOutput": {
      "type": "structure",
      "members": {
        "QueryExecutions": {
          "shape": "QueryExecutionList",
          "documentation": "<p>Information about a query execution.</p>"
        },
        "UnprocessedQueryExecutionIds": {
          "shape": "UnprocessedQueryExecutionIdList",
          "documentation": "<p>Information about the query executions that failed to run.</p>"
        }
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BoxedBoolean": {
      "type": "boolean"
    },
    "BytesScannedCutoffValue": {
      "type": "long",
      "min": 10000000
    },
    "CatalogNameString": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "Column": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the column.</p>"
        },
        "Type": {
          "shape": "TypeString",
          "documentation": "<p>The data type of the column.</p>"
        },
        "Comment": {
          "shape": "CommentString",
          "documentation": "<p>Optional information about the column.</p>"
        }
      },
      "documentation": "<p>Contains metadata for a column in a table.</p>"
    },
    "ColumnInfo": {
      "type": "structure",
      "required": [
        "Name",
        "Type"
      ],
      "members": {
        "CatalogName": {
          "shape": "String",
          "documentation": "<p>The catalog to which the query results belong.</p>"
        },
        "SchemaName": {
          "shape": "String",
          "documentation": "<p>The schema name (database name) to which the query results belong.</p>"
        },
        "TableName": {
          "shape": "String",
          "documentation": "<p>The table name for the query results.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the column.</p>"
        },
        "Label": {
          "shape": "String",
          "documentation": "<p>A column label.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The data type of the column.</p>"
        },
        "Precision": {
          "shape": "Integer",
          "documentation": "<p>For <code>DECIMAL</code> data types, specifies the total number of digits, up to 38. For performance reasons, we recommend up to 18 digits.</p>"
        },
        "Scale": {
          "shape": "Integer",
          "documentation": "<p>For <code>DECIMAL</code> data types, specifies the total number of digits in the fractional part of the value. Defaults to 0.</p>"
        },
        "Nullable": {
          "shape": "ColumnNullable",
          "documentation": "<p>Indicates the column's nullable status.</p>"
        },
        "CaseSensitive": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether values in the column are case-sensitive.</p>"
        }
      },
      "documentation": "<p>Information about the columns in a query execution result.</p>"
    },
    "ColumnInfoList": {
      "type": "list",
      "member": {
        "shape": "ColumnInfo"
      }
    },
    "ColumnList": {
      "type": "list",
      "member": {
        "shape": "Column"
      }
    },
    "ColumnNullable": {
      "type": "string",
      "enum": [
        "NOT_NULL",
        "NULLABLE",
        "UNKNOWN"
      ]
    },
    "CommentString": {
      "type": "string",
      "max": 255,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "CreateDataCatalogInput": {
      "type": "structure",
      "required": [
        "Name",
        "Type"
      ],
      "members": {
        "Name": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog to create. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.</p>"
        },
        "Type": {
          "shape": "DataCatalogType",
          "documentation": "<p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog, <code>GLUE</code> for AWS Glue Catalog, or <code>HIVE</code> for an external hive metastore.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the data catalog to be created.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>Specifies the Lambda function or functions to use for creating the data catalog. This is a mapping whose values depend on the catalog type. </p> <ul> <li> <p>For the <code>HIVE</code> data catalog type, use the following syntax. The <code>metadata-function</code> parameter is required. <code>The sdk-version</code> parameter is optional and defaults to the currently supported version.</p> <p> <code>metadata-function=<i>lambda_arn</i>, sdk-version=<i>version_number</i> </code> </p> </li> <li> <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets of required parameters, but not both.</p> <ul> <li> <p>If you have one Lambda function that processes metadata and another for reading the actual data, use the following syntax. Both parameters are required.</p> <p> <code>metadata-function=<i>lambda_arn</i>, record-function=<i>lambda_arn</i> </code> </p> </li> <li> <p> If you have a composite Lambda function that processes both metadata and data, use the following syntax to specify your Lambda function.</p> <p> <code>function=<i>lambda_arn</i> </code> </p> </li> </ul> </li> <li> <p>The <code>GLUE</code> type has no parameters.</p> </li> </ul>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of comma separated tags to add to the data catalog that is created.</p>"
        }
      }
    },
    "CreateDataCatalogOutput": {
      "type": "structure",
      "members": {}
    },
    "CreateNamedQueryInput": {
      "type": "structure",
      "required": [
        "Name",
        "Database",
        "QueryString"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The query name.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>The query description.</p>"
        },
        "Database": {
          "shape": "DatabaseString",
          "documentation": "<p>The database to which the query belongs.</p>"
        },
        "QueryString": {
          "shape": "QueryString",
          "documentation": "<p>The contents of the query with all query statements.</p>"
        },
        "ClientRequestToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another <code>CreateNamedQuery</code> request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the <code>QueryString</code>, an error is returned.</p> <important> <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.</p> </important>",
          "idempotencyToken": true
        },
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The name of the workgroup in which the named query is being created.</p>"
        }
      }
    },
    "CreateNamedQueryOutput": {
      "type": "structure",
      "members": {
        "NamedQueryId": {
          "shape": "NamedQueryId",
          "documentation": "<p>The unique ID of the query.</p>"
        }
      }
    },
    "CreateWorkGroupInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "WorkGroupName",
          "documentation": "<p>The workgroup name.</p>"
        },
        "Configuration": {
          "shape": "WorkGroupConfiguration",
          "documentation": "<p>The configuration for the workgroup, which includes the location in Amazon S3 where query results are stored, the encryption configuration, if any, used for encrypting query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, the limit for the amount of bytes scanned (cutoff) per query, if it is specified, and whether workgroup's settings (specified with EnforceWorkGroupConfiguration) in the WorkGroupConfiguration override client-side settings. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"
        },
        "Description": {
          "shape": "WorkGroupDescriptionString",
          "documentation": "<p>The workgroup description.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of comma separated tags to add to the workgroup that is created.</p>"
        }
      }
    },
    "CreateWorkGroupOutput": {
      "type": "structure",
      "members": {}
    },
    "DataCatalog": {
      "type": "structure",
      "required": [
        "Name",
        "Type"
      ],
      "members": {
        "Name": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>An optional description of the data catalog.</p>"
        },
        "Type": {
          "shape": "DataCatalogType",
          "documentation": "<p>The type of data catalog: <code>LAMBDA</code> for a federated catalog, <code>GLUE</code> for AWS Glue Catalog, or <code>HIVE</code> for an external hive metastore.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>Specifies the Lambda function or functions to use for the data catalog. This is a mapping whose values depend on the catalog type. </p> <ul> <li> <p>For the <code>HIVE</code> data catalog type, use the following syntax. The <code>metadata-function</code> parameter is required. <code>The sdk-version</code> parameter is optional and defaults to the currently supported version.</p> <p> <code>metadata-function=<i>lambda_arn</i>, sdk-version=<i>version_number</i> </code> </p> </li> <li> <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets of required parameters, but not both.</p> <ul> <li> <p>If you have one Lambda function that processes metadata and another for reading the actual data, use the following syntax. Both parameters are required.</p> <p> <code>metadata-function=<i>lambda_arn</i>, record-function=<i>lambda_arn</i> </code> </p> </li> <li> <p> If you have a composite Lambda function that processes both metadata and data, use the following syntax to specify your Lambda function.</p> <p> <code>function=<i>lambda_arn</i> </code> </p> </li> </ul> </li> <li> <p>The <code>GLUE</code> type has no parameters.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Contains information about a data catalog in an AWS account.</p>"
    },
    "DataCatalogSummary": {
      "type": "structure",
      "members": {
        "CatalogName": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog.</p>"
        },
        "Type": {
          "shape": "DataCatalogType",
          "documentation": "<p>The data catalog type.</p>"
        }
      },
      "documentation": "<p>The summary information for the data catalog, which includes its name and type.</p>"
    },
    "DataCatalogSummaryList": {
      "type": "list",
      "member": {
        "shape": "DataCatalogSummary"
      }
    },
    "DataCatalogType": {
      "type": "string",
      "enum": [
        "LAMBDA",
        "GLUE",
        "HIVE"
      ]
    },
    "Database": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the database.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>An optional description of the database.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>A set of custom key/value pairs.</p>"
        }
      },
      "documentation": "<p>Contains metadata information for a database in a data catalog.</p>"
    },
    "DatabaseList": {
      "type": "list",
      "member": {
        "shape": "Database"
      }
    },
    "DatabaseString": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "Date": {
      "type": "timestamp"
    },
    "Datum": {
      "type": "structure",
      "members": {
        "VarCharValue": {
          "shape": "datumString",
          "documentation": "<p>The value of the datum.</p>"
        }
      },
      "documentation": "<p>A piece of data (a field in the table).</p>"
    },
    "DeleteDataCatalogInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog to delete.</p>"
        }
      }
    },
    "DeleteDataCatalogOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteNamedQueryInput": {
      "type": "structure",
      "required": [
        "NamedQueryId"
      ],
      "members": {
        "NamedQueryId": {
          "shape": "NamedQueryId",
          "documentation": "<p>The unique ID of the query to delete.</p>",
          "idempotencyToken": true
        }
      }
    },
    "DeleteNamedQueryOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteWorkGroupInput": {
      "type": "structure",
      "required": [
        "WorkGroup"
      ],
      "members": {
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The unique name of the workgroup to delete.</p>"
        },
        "RecursiveDeleteOption": {
          "shape": "BoxedBoolean",
          "documentation": "<p>The option to delete the workgroup and its contents even if the workgroup contains any named queries.</p>"
        }
      }
    },
    "DeleteWorkGroupOutput": {
      "type": "structure",
      "members": {}
    },
    "DescriptionString": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "EncryptionConfiguration": {
      "type": "structure",
      "required": [
        "EncryptionOption"
      ],
      "members": {
        "EncryptionOption": {
          "shape": "EncryptionOption",
          "documentation": "<p>Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys (<code>SSE-S3</code>), server-side encryption with KMS-managed keys (<code>SSE-KMS</code>), or client-side encryption with KMS-managed keys (CSE-KMS) is used.</p> <p>If a query runs in a workgroup and the workgroup overrides client-side settings, then the workgroup's setting for encryption is used. It specifies whether query results must be encrypted, for all queries that run in this workgroup. </p>"
        },
        "KmsKey": {
          "shape": "String",
          "documentation": "<p>For <code>SSE-KMS</code> and <code>CSE-KMS</code>, this is the KMS key ARN or ID.</p>"
        }
      },
      "documentation": "<p>If query results are encrypted in Amazon S3, indicates the encryption option used (for example, <code>SSE-KMS</code> or <code>CSE-KMS</code>) and key information.</p>"
    },
    "EncryptionOption": {
      "type": "string",
      "enum": [
        "SSE_S3",
        "SSE_KMS",
        "CSE_KMS"
      ]
    },
    "ErrorCode": {
      "type": "string",
      "documentation": "<p>The error code returned when the query execution failed to process, or when the processing request for the named query failed.</p>",
      "max": 256,
      "min": 1
    },
    "ErrorMessage": {
      "type": "string"
    },
    "ExpressionString": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "GetDataCatalogInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog to return.</p>"
        }
      }
    },
    "GetDataCatalogOutput": {
      "type": "structure",
      "members": {
        "DataCatalog": {
          "shape": "DataCatalog",
          "documentation": "<p>The data catalog returned.</p>"
        }
      }
    },
    "GetDatabaseInput": {
      "type": "structure",
      "required": [
        "CatalogName",
        "DatabaseName"
      ],
      "members": {
        "CatalogName": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog that contains the database to return.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database to return.</p>"
        }
      }
    },
    "GetDatabaseOutput": {
      "type": "structure",
      "members": {
        "Database": {
          "shape": "Database",
          "documentation": "<p>The database returned.</p>"
        }
      }
    },
    "GetNamedQueryInput": {
      "type": "structure",
      "required": [
        "NamedQueryId"
      ],
      "members": {
        "NamedQueryId": {
          "shape": "NamedQueryId",
          "documentation": "<p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query IDs.</p>"
        }
      }
    },
    "GetNamedQueryOutput": {
      "type": "structure",
      "members": {
        "NamedQuery": {
          "shape": "NamedQuery",
          "documentation": "<p>Information about the query.</p>"
        }
      }
    },
    "GetQueryExecutionInput": {
      "type": "structure",
      "required": [
        "QueryExecutionId"
      ],
      "members": {
        "QueryExecutionId": {
          "shape": "QueryExecutionId",
          "documentation": "<p>The unique ID of the query execution.</p>"
        }
      }
    },
    "GetQueryExecutionOutput": {
      "type": "structure",
      "members": {
        "QueryExecution": {
          "shape": "QueryExecution",
          "documentation": "<p>Information about the query execution.</p>"
        }
      }
    },
    "GetQueryResultsInput": {
      "type": "structure",
      "required": [
        "QueryExecutionId"
      ],
      "members": {
        "QueryExecutionId": {
          "shape": "QueryExecutionId",
          "documentation": "<p>The unique ID of the query execution.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the <code>NextToken</code> from the response object of the previous page call.</p>"
        },
        "MaxResults": {
          "shape": "MaxQueryResults",
          "documentation": "<p>The maximum number of results (rows) to return in this request.</p>"
        }
      }
    },
    "GetQueryResultsOutput": {
      "type": "structure",
      "members": {
        "UpdateCount": {
          "shape": "Long",
          "documentation": "<p>The number of rows inserted with a CREATE TABLE AS SELECT statement. </p>"
        },
        "ResultSet": {
          "shape": "ResultSet",
          "documentation": "<p>The results of the query execution.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the <code>NextToken</code> from the response object of the previous page call.</p>"
        }
      }
    },
    "GetTableMetadataInput": {
      "type": "structure",
      "required": [
        "CatalogName",
        "DatabaseName",
        "TableName"
      ],
      "members": {
        "CatalogName": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog that contains the database and table metadata to return.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database that contains the table metadata to return.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table for which metadata is returned.</p>"
        }
      }
    },
    "GetTableMetadataOutput": {
      "type": "structure",
      "members": {
        "TableMetadata": {
          "shape": "TableMetadata",
          "documentation": "<p>An object that contains table metadata.</p>"
        }
      }
    },
    "GetWorkGroupInput": {
      "type": "structure",
      "required": [
        "WorkGroup"
      ],
      "members": {
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The name of the workgroup.</p>"
        }
      }
    },
    "GetWorkGroupOutput": {
      "type": "structure",
      "members": {
        "WorkGroup": {
          "shape": "WorkGroup",
          "documentation": "<p>Information about the workgroup.</p>"
        }
      }
    },
    "IdempotencyToken": {
      "type": "string",
      "max": 128,
      "min": 32
    },
    "Integer": {
      "type": "integer"
    },
    "KeyString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "ListDataCatalogsInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.</p>"
        },
        "MaxResults": {
          "shape": "MaxDataCatalogsCount",
          "documentation": "<p>Specifies the maximum number of data catalogs to return.</p>"
        }
      }
    },
    "ListDataCatalogsOutput": {
      "type": "structure",
      "members": {
        "DataCatalogsSummary": {
          "shape": "DataCatalogSummaryList",
          "documentation": "<p>A summary list of data catalogs.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.</p>"
        }
      }
    },
    "ListDatabasesInput": {
      "type": "structure",
      "required": [
        "CatalogName"
      ],
      "members": {
        "CatalogName": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog that contains the databases to return.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the <code>NextToken</code> from the response object of the previous page call.</p>"
        },
        "MaxResults": {
          "shape": "MaxDatabasesCount",
          "documentation": "<p>Specifies the maximum number of results to return.</p>"
        }
      }
    },
    "ListDatabasesOutput": {
      "type": "structure",
      "members": {
        "DatabaseList": {
          "shape": "DatabaseList",
          "documentation": "<p>A list of databases from a data catalog.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.</p>"
        }
      }
    },
    "ListNamedQueriesInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the <code>NextToken</code> from the response object of the previous page call.</p>"
        },
        "MaxResults": {
          "shape": "MaxNamedQueriesCount",
          "documentation": "<p>The maximum number of queries to return in this request.</p>"
        },
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The name of the workgroup from which the named queries are being returned. If a workgroup is not specified, the saved queries for the primary workgroup are returned.</p>"
        }
      }
    },
    "ListNamedQueriesOutput": {
      "type": "structure",
      "members": {
        "NamedQueryIds": {
          "shape": "NamedQueryIdList",
          "documentation": "<p>The list of unique query IDs.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the <code>NextToken</code> from the response object of the previous page call.</p>"
        }
      }
    },
    "ListQueryExecutionsInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the <code>NextToken</code> from the response object of the previous page call.</p>"
        },
        "MaxResults": {
          "shape": "MaxQueryExecutionsCount",
          "documentation": "<p>The maximum number of query executions to return in this request.</p>"
        },
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The name of the workgroup from which queries are being returned. If a workgroup is not specified, a list of available query execution IDs for the queries in the primary workgroup is returned.</p>"
        }
      }
    },
    "ListQueryExecutionsOutput": {
      "type": "structure",
      "members": {
        "QueryExecutionIds": {
          "shape": "QueryExecutionIdList",
          "documentation": "<p>The unique IDs of each query execution as an array of strings.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token to be used by the next request if this request is truncated.</p>"
        }
      }
    },
    "ListTableMetadataInput": {
      "type": "structure",
      "required": [
        "CatalogName",
        "DatabaseName"
      ],
      "members": {
        "CatalogName": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog for which table metadata should be returned.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database for which table metadata should be returned.</p>"
        },
        "Expression": {
          "shape": "ExpressionString",
          "documentation": "<p>A regex filter that pattern-matches table names. If no expression is supplied, metadata for all tables are listed.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.</p>"
        },
        "MaxResults": {
          "shape": "MaxTableMetadataCount",
          "documentation": "<p>Specifies the maximum number of results to return.</p>"
        }
      }
    },
    "ListTableMetadataOutput": {
      "type": "structure",
      "members": {
        "TableMetadataList": {
          "shape": "TableMetadataList",
          "documentation": "<p>A list of table metadata.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the NextToken from the response object of the previous page call.</p>"
        }
      }
    },
    "ListTagsForResourceInput": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>Lists the tags for the resource with the specified ARN.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results for this request, where the request lists the tags for the resource with the specified ARN.</p>"
        },
        "MaxResults": {
          "shape": "MaxTagsCount",
          "documentation": "<p>The maximum number of results to be returned per request that lists the tags for the resource.</p>"
        }
      }
    },
    "ListTagsForResourceOutput": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags associated with the specified resource.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token to be used by the next request if this request is truncated.</p>"
        }
      }
    },
    "ListWorkGroupsInput": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the <code>NextToken</code> from the response object of the previous page call.</p>"
        },
        "MaxResults": {
          "shape": "MaxWorkGroupsCount",
          "documentation": "<p>The maximum number of workgroups to return in this request.</p>"
        }
      }
    },
    "ListWorkGroupsOutput": {
      "type": "structure",
      "members": {
        "WorkGroups": {
          "shape": "WorkGroupsList",
          "documentation": "<p>The list of workgroups, including their names, descriptions, creation times, and states.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A token generated by the Athena service that specifies where to continue pagination if a previous request was truncated. To obtain the next set of pages, pass in the <code>NextToken</code> from the response object of the previous page call.</p>"
        }
      }
    },
    "Long": {
      "type": "long"
    },
    "MaxDataCatalogsCount": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 2
    },
    "MaxDatabasesCount": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 1
    },
    "MaxNamedQueriesCount": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 0
    },
    "MaxQueryExecutionsCount": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 0
    },
    "MaxQueryResults": {
      "type": "integer",
      "box": true,
      "max": 1000,
      "min": 1
    },
    "MaxTableMetadataCount": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 1
    },
    "MaxTagsCount": {
      "type": "integer",
      "box": true,
      "min": 75
    },
    "MaxWorkGroupsCount": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 1
    },
    "NameString": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "NamedQuery": {
      "type": "structure",
      "required": [
        "Name",
        "Database",
        "QueryString"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The query name.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>The query description.</p>"
        },
        "Database": {
          "shape": "DatabaseString",
          "documentation": "<p>The database to which the query belongs.</p>"
        },
        "QueryString": {
          "shape": "QueryString",
          "documentation": "<p>The SQL query statements that comprise the query.</p>"
        },
        "NamedQueryId": {
          "shape": "NamedQueryId",
          "documentation": "<p>The unique identifier of the query.</p>"
        },
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The name of the workgroup that contains the named query.</p>"
        }
      },
      "documentation": "<p>A query, where <code>QueryString</code> is the list of SQL query statements that comprise the query.</p>"
    },
    "NamedQueryId": {
      "type": "string"
    },
    "NamedQueryIdList": {
      "type": "list",
      "member": {
        "shape": "NamedQueryId"
      },
      "max": 50,
      "min": 1
    },
    "NamedQueryList": {
      "type": "list",
      "member": {
        "shape": "NamedQuery"
      }
    },
    "ParametersMap": {
      "type": "map",
      "key": {
        "shape": "KeyString"
      },
      "value": {
        "shape": "ParametersMapValue"
      }
    },
    "ParametersMapValue": {
      "type": "string",
      "max": 51200
    },
    "QueryExecution": {
      "type": "structure",
      "members": {
        "QueryExecutionId": {
          "shape": "QueryExecutionId",
          "documentation": "<p>The unique identifier for each query execution.</p>"
        },
        "Query": {
          "shape": "QueryString",
          "documentation": "<p>The SQL query statements which the query execution ran.</p>"
        },
        "StatementType": {
          "shape": "StatementType",
          "documentation": "<p>The type of query statement that was run. <code>DDL</code> indicates DDL query statements. <code>DML</code> indicates DML (Data Manipulation Language) query statements, such as <code>CREATE TABLE AS SELECT</code>. <code>UTILITY</code> indicates query statements other than DDL and DML, such as <code>SHOW CREATE TABLE</code>, or <code>DESCRIBE &lt;table&gt;</code>.</p>"
        },
        "ResultConfiguration": {
          "shape": "ResultConfiguration",
          "documentation": "<p>The location in Amazon S3 where query results were stored and the encryption option, if any, used for query results. These are known as \"client-side settings\". If workgroup settings override client-side settings, then the query uses the location for the query results and the encryption configuration that are specified for the workgroup.</p>"
        },
        "QueryExecutionContext": {
          "shape": "QueryExecutionContext",
          "documentation": "<p>The database in which the query execution occurred.</p>"
        },
        "Status": {
          "shape": "QueryExecutionStatus",
          "documentation": "<p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>"
        },
        "Statistics": {
          "shape": "QueryExecutionStatistics",
          "documentation": "<p>Query execution statistics, such as the amount of data scanned, the amount of time that the query took to process, and the type of statement that was run.</p>"
        },
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The name of the workgroup in which the query ran.</p>"
        }
      },
      "documentation": "<p>Information about a single instance of a query execution.</p>"
    },
    "QueryExecutionContext": {
      "type": "structure",
      "members": {
        "Database": {
          "shape": "DatabaseString",
          "documentation": "<p>The name of the database used in the query execution.</p>"
        },
        "Catalog": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog used in the query execution.</p>"
        }
      },
      "documentation": "<p>The database and data catalog context in which the query execution occurs.</p>"
    },
    "QueryExecutionId": {
      "type": "string"
    },
    "QueryExecutionIdList": {
      "type": "list",
      "member": {
        "shape": "QueryExecutionId"
      },
      "max": 50,
      "min": 1
    },
    "QueryExecutionList": {
      "type": "list",
      "member": {
        "shape": "QueryExecution"
      }
    },
    "QueryExecutionState": {
      "type": "string",
      "enum": [
        "QUEUED",
        "RUNNING",
        "SUCCEEDED",
        "FAILED",
        "CANCELLED"
      ]
    },
    "QueryExecutionStatistics": {
      "type": "structure",
      "members": {
        "EngineExecutionTimeInMillis": {
          "shape": "Long",
          "documentation": "<p>The number of milliseconds that the query took to execute.</p>"
        },
        "DataScannedInBytes": {
          "shape": "Long",
          "documentation": "<p>The number of bytes in the data that was queried.</p>"
        },
        "DataManifestLocation": {
          "shape": "String",
          "documentation": "<p>The location and file name of a data manifest file. The manifest file is saved to the Athena query results location in Amazon S3. The manifest file tracks files that the query wrote to Amazon S3. If the query fails, the manifest file also tracks files that the query intended to write. The manifest is useful for identifying orphaned files resulting from a failed query. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Working with Query Results, Output Files, and Query History</a> in the <i>Amazon Athena User Guide</i>.</p>"
        },
        "TotalExecutionTimeInMillis": {
          "shape": "Long",
          "documentation": "<p>The number of milliseconds that Athena took to run the query.</p>"
        },
        "QueryQueueTimeInMillis": {
          "shape": "Long",
          "documentation": "<p>The number of milliseconds that the query was in your query queue waiting for resources. Note that if transient errors occur, Athena might automatically add the query back to the queue.</p>"
        },
        "QueryPlanningTimeInMillis": {
          "shape": "Long",
          "documentation": "<p>The number of milliseconds that Athena took to plan the query processing flow. This includes the time spent retrieving table partitions from the data source. Note that because the query engine performs the query planning, query planning time is a subset of engine processing time.</p>"
        },
        "ServiceProcessingTimeInMillis": {
          "shape": "Long",
          "documentation": "<p>The number of milliseconds that Athena took to finalize and publish the query results after the query engine finished running the query.</p>"
        }
      },
      "documentation": "<p>The amount of data scanned during the query execution and the amount of time that it took to execute, and the type of statement that was run.</p>"
    },
    "QueryExecutionStatus": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "QueryExecutionState",
          "documentation": "<p>The state of query execution. <code>QUEUED</code> indicates that the query has been submitted to the service, and Athena will execute the query as soon as resources are available. <code>RUNNING</code> indicates that the query is in execution phase. <code>SUCCEEDED</code> indicates that the query completed without errors. <code>FAILED</code> indicates that the query experienced an error and did not complete processing. <code>CANCELLED</code> indicates that a user input interrupted query execution.</p> <note> <p>Athena automatically retries your queries in cases of certain transient errors. As a result, you may see the query state transition from <code>RUNNING</code> or <code>FAILED</code> to <code>QUEUED</code>. </p> </note>"
        },
        "StateChangeReason": {
          "shape": "String",
          "documentation": "<p>Further detail about the status of the query.</p>"
        },
        "SubmissionDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time that the query was submitted.</p>"
        },
        "CompletionDateTime": {
          "shape": "Date",
          "documentation": "<p>The date and time that the query completed.</p>"
        }
      },
      "documentation": "<p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>"
    },
    "QueryString": {
      "type": "string",
      "max": 262144,
      "min": 1
    },
    "ResultConfiguration": {
      "type": "structure",
      "members": {
        "OutputLocation": {
          "shape": "String",
          "documentation": "<p>The location in Amazon S3 where your query results are stored, such as <code>s3://path/to/query/bucket/</code>. To run the query, you must specify the query results location using one of the ways: either for individual queries using either this setting (client-side), or in the workgroup, using <a>WorkGroupConfiguration</a>. If none of them is set, Athena issues an error that no output location is provided. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Query Results</a>. If workgroup settings override client-side settings, then the query uses the settings specified for the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"
        },
        "EncryptionConfiguration": {
          "shape": "EncryptionConfiguration",
          "documentation": "<p>If query results are encrypted in Amazon S3, indicates the encryption option used (for example, <code>SSE-KMS</code> or <code>CSE-KMS</code>) and key information. This is a client-side setting. If workgroup settings override client-side settings, then the query uses the encryption configuration that is specified for the workgroup, and also uses the location for storing query results specified in the workgroup. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a> and <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"
        }
      },
      "documentation": "<p>The location in Amazon S3 where query results are stored and the encryption option, if any, used for query results. These are known as \"client-side settings\". If workgroup settings override client-side settings, then the query uses the workgroup settings.</p>"
    },
    "ResultConfigurationUpdates": {
      "type": "structure",
      "members": {
        "OutputLocation": {
          "shape": "String",
          "documentation": "<p>The location in Amazon S3 where your query results are stored, such as <code>s3://path/to/query/bucket/</code>. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Query Results</a> If workgroup settings override client-side settings, then the query uses the location for the query results and the encryption configuration that are specified for the workgroup. The \"workgroup settings override\" is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"
        },
        "RemoveOutputLocation": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If set to \"true\", indicates that the previously-specified query results location (also known as a client-side setting) for queries in this workgroup should be ignored and set to null. If set to \"false\" or not set, and a value is present in the OutputLocation in ResultConfigurationUpdates (the client-side setting), the OutputLocation in the workgroup's ResultConfiguration will be updated with the new value. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"
        },
        "EncryptionConfiguration": {
          "shape": "EncryptionConfiguration",
          "documentation": "<p>The encryption configuration for the query results.</p>"
        },
        "RemoveEncryptionConfiguration": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If set to \"true\", indicates that the previously-specified encryption configuration (also known as the client-side setting) for queries in this workgroup should be ignored and set to null. If set to \"false\" or not set, and a value is present in the EncryptionConfiguration in ResultConfigurationUpdates (the client-side setting), the EncryptionConfiguration in the workgroup's ResultConfiguration will be updated with the new value. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"
        }
      },
      "documentation": "<p>The information about the updates in the query results, such as output location and encryption configuration for the query results.</p>"
    },
    "ResultSet": {
      "type": "structure",
      "members": {
        "Rows": {
          "shape": "RowList",
          "documentation": "<p>The rows in the table.</p>"
        },
        "ResultSetMetadata": {
          "shape": "ResultSetMetadata",
          "documentation": "<p>The metadata that describes the column structure and data types of a table of query results.</p>"
        }
      },
      "documentation": "<p>The metadata and rows that comprise a query result set. The metadata describes the column structure and data types. To return a <code>ResultSet</code> object, use <a>GetQueryResults</a>.</p>"
    },
    "ResultSetMetadata": {
      "type": "structure",
      "members": {
        "ColumnInfo": {
          "shape": "ColumnInfoList",
          "documentation": "<p>Information about the columns returned in a query result metadata.</p>"
        }
      },
      "documentation": "<p>The metadata that describes the column structure and data types of a table of query results. To return a <code>ResultSetMetadata</code> object, use <a>GetQueryResults</a>.</p>"
    },
    "Row": {
      "type": "structure",
      "members": {
        "Data": {
          "shape": "datumList",
          "documentation": "<p>The data that populates a row in a query result table.</p>"
        }
      },
      "documentation": "<p>The rows that comprise a query result table.</p>"
    },
    "RowList": {
      "type": "list",
      "member": {
        "shape": "Row"
      }
    },
    "StartQueryExecutionInput": {
      "type": "structure",
      "required": [
        "QueryString"
      ],
      "members": {
        "QueryString": {
          "shape": "QueryString",
          "documentation": "<p>The SQL query statements to be executed.</p>"
        },
        "ClientRequestToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another <code>StartQueryExecution</code> request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the <code>QueryString</code>, an error is returned.</p> <important> <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.</p> </important>",
          "idempotencyToken": true
        },
        "QueryExecutionContext": {
          "shape": "QueryExecutionContext",
          "documentation": "<p>The database within which the query executes.</p>"
        },
        "ResultConfiguration": {
          "shape": "ResultConfiguration",
          "documentation": "<p>Specifies information about where and how to save the results of the query execution. If the query runs in a workgroup, then workgroup's settings may override query settings. This affects the query results location. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"
        },
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The name of the workgroup in which the query is being started.</p>"
        }
      }
    },
    "StartQueryExecutionOutput": {
      "type": "structure",
      "members": {
        "QueryExecutionId": {
          "shape": "QueryExecutionId",
          "documentation": "<p>The unique ID of the query that ran as a result of this request.</p>"
        }
      }
    },
    "StatementType": {
      "type": "string",
      "enum": [
        "DDL",
        "DML",
        "UTILITY"
      ]
    },
    "StopQueryExecutionInput": {
      "type": "structure",
      "required": [
        "QueryExecutionId"
      ],
      "members": {
        "QueryExecutionId": {
          "shape": "QueryExecutionId",
          "documentation": "<p>The unique ID of the query execution to stop.</p>",
          "idempotencyToken": true
        }
      }
    },
    "StopQueryExecutionOutput": {
      "type": "structure",
      "members": {}
    },
    "String": {
      "type": "string"
    },
    "TableMetadata": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the table.</p>"
        },
        "CreateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the table was created.</p>"
        },
        "LastAccessTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time the table was accessed.</p>"
        },
        "TableType": {
          "shape": "TableTypeString",
          "documentation": "<p>The type of table. In Athena, only <code>EXTERNAL_TABLE</code> is supported.</p>"
        },
        "Columns": {
          "shape": "ColumnList",
          "documentation": "<p>A list of the columns in the table.</p>"
        },
        "PartitionKeys": {
          "shape": "ColumnList",
          "documentation": "<p>A list of the partition keys in the table.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>A set of custom key/value pairs for table properties.</p>"
        }
      },
      "documentation": "<p>Contains metadata for a table.</p>"
    },
    "TableMetadataList": {
      "type": "list",
      "member": {
        "shape": "TableMetadata"
      }
    },
    "TableTypeString": {
      "type": "string",
      "max": 255
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>A tag key. The tag key length is from 1 to 128 Unicode characters in UTF-8. You can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys are case-sensitive and must be unique per resource. </p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>A tag value. The tag value length is from 0 to 256 Unicode characters in UTF-8. You can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag values are case-sensitive. </p>"
        }
      },
      "documentation": "<p>A label that you assign to a resource. In Athena, a resource can be a workgroup or data catalog. Each tag consists of a key and an optional value, both of which you define. For example, you can use tags to categorize Athena workgroups or data catalogs by purpose, owner, or environment. Use a consistent set of tag keys to make it easier to search and filter workgroups or data catalogs in your account. For best practices, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">Tagging Best Practices</a>. Tag keys can be from 1 to 128 UTF-8 Unicode characters, and tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters and numbers representable in UTF-8, and the following characters: + - = . _ : / @. Tag keys and values are case-sensitive. Tag keys must be unique per resource. If you specify more than one tag, separate them by commas. </p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagResourceInput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>Specifies the ARN of the Athena resource (workgroup or data catalog) to which tags are to be added.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A collection of one or more tags, separated by commas, to be added to an Athena workgroup or data catalog resource.</p>"
        }
      }
    },
    "TagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Token": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "TypeString": {
      "type": "string",
      "max": 4096,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "UnprocessedNamedQueryId": {
      "type": "structure",
      "members": {
        "NamedQueryId": {
          "shape": "NamedQueryId",
          "documentation": "<p>The unique identifier of the named query.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code returned when the processing request for the named query failed, if applicable.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message returned when the processing request for the named query failed, if applicable.</p>"
        }
      },
      "documentation": "<p>Information about a named query ID that could not be processed.</p>"
    },
    "UnprocessedNamedQueryIdList": {
      "type": "list",
      "member": {
        "shape": "UnprocessedNamedQueryId"
      }
    },
    "UnprocessedQueryExecutionId": {
      "type": "structure",
      "members": {
        "QueryExecutionId": {
          "shape": "QueryExecutionId",
          "documentation": "<p>The unique identifier of the query execution.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code returned when the query execution failed to process, if applicable.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message returned when the query execution failed to process, if applicable.</p>"
        }
      },
      "documentation": "<p>Describes a query execution that failed to process.</p>"
    },
    "UnprocessedQueryExecutionIdList": {
      "type": "list",
      "member": {
        "shape": "UnprocessedQueryExecutionId"
      }
    },
    "UntagResourceInput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>Specifies the ARN of the resource from which tags are to be removed.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A comma-separated list of one or more tag keys whose tags are to be removed from the specified resource.</p>"
        }
      }
    },
    "UntagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "UpdateDataCatalogInput": {
      "type": "structure",
      "required": [
        "Name",
        "Type"
      ],
      "members": {
        "Name": {
          "shape": "CatalogNameString",
          "documentation": "<p>The name of the data catalog to update. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.</p>"
        },
        "Type": {
          "shape": "DataCatalogType",
          "documentation": "<p>Specifies the type of data catalog to update. Specify <code>LAMBDA</code> for a federated catalog, <code>GLUE</code> for AWS Glue Catalog, or <code>HIVE</code> for an external hive metastore.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>New or modified text that describes the data catalog.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>Specifies the Lambda function or functions to use for updating the data catalog. This is a mapping whose values depend on the catalog type. </p> <ul> <li> <p>For the <code>HIVE</code> data catalog type, use the following syntax. The <code>metadata-function</code> parameter is required. <code>The sdk-version</code> parameter is optional and defaults to the currently supported version.</p> <p> <code>metadata-function=<i>lambda_arn</i>, sdk-version=<i>version_number</i> </code> </p> </li> <li> <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets of required parameters, but not both.</p> <ul> <li> <p>If you have one Lambda function that processes metadata and another for reading the actual data, use the following syntax. Both parameters are required.</p> <p> <code>metadata-function=<i>lambda_arn</i>, record-function=<i>lambda_arn</i> </code> </p> </li> <li> <p> If you have a composite Lambda function that processes both metadata and data, use the following syntax to specify your Lambda function.</p> <p> <code>function=<i>lambda_arn</i> </code> </p> </li> </ul> </li> <li> <p>The <code>GLUE</code> type has no parameters.</p> </li> </ul>"
        }
      }
    },
    "UpdateDataCatalogOutput": {
      "type": "structure",
      "members": {}
    },
    "UpdateWorkGroupInput": {
      "type": "structure",
      "required": [
        "WorkGroup"
      ],
      "members": {
        "WorkGroup": {
          "shape": "WorkGroupName",
          "documentation": "<p>The specified workgroup that will be updated.</p>"
        },
        "Description": {
          "shape": "WorkGroupDescriptionString",
          "documentation": "<p>The workgroup description.</p>"
        },
        "ConfigurationUpdates": {
          "shape": "WorkGroupConfigurationUpdates",
          "documentation": "<p>The workgroup configuration that will be updated for the given workgroup.</p>"
        },
        "State": {
          "shape": "WorkGroupState",
          "documentation": "<p>The workgroup state that will be updated for the given workgroup.</p>"
        }
      }
    },
    "UpdateWorkGroupOutput": {
      "type": "structure",
      "members": {}
    },
    "WorkGroup": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "WorkGroupName",
          "documentation": "<p>The workgroup name.</p>"
        },
        "State": {
          "shape": "WorkGroupState",
          "documentation": "<p>The state of the workgroup: ENABLED or DISABLED.</p>"
        },
        "Configuration": {
          "shape": "WorkGroupConfiguration",
          "documentation": "<p>The configuration of the workgroup, which includes the location in Amazon S3 where query results are stored, the encryption configuration, if any, used for query results; whether the Amazon CloudWatch Metrics are enabled for the workgroup; whether workgroup settings override client-side settings; and the data usage limits for the amount of data scanned per query or per workgroup. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"
        },
        "Description": {
          "shape": "WorkGroupDescriptionString",
          "documentation": "<p>The workgroup description.</p>"
        },
        "CreationTime": {
          "shape": "Date",
          "documentation": "<p>The date and time the workgroup was created.</p>"
        }
      },
      "documentation": "<p>A workgroup, which contains a name, description, creation time, state, and other configuration, listed under <a>WorkGroup$Configuration</a>. Each workgroup enables you to isolate queries for you or your group of users from other queries in the same account, to configure the query results location and the encryption configuration (known as workgroup settings), to enable sending query metrics to Amazon CloudWatch, and to establish per-query data usage control limits for all queries in a workgroup. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>.</p>"
    },
    "WorkGroupConfiguration": {
      "type": "structure",
      "members": {
        "ResultConfiguration": {
          "shape": "ResultConfiguration",
          "documentation": "<p>The configuration for the workgroup, which includes the location in Amazon S3 where query results are stored and the encryption option, if any, used for query results. To run the query, you must specify the query results location using one of the ways: either in the workgroup using this setting, or for individual queries (client-side), using <a>ResultConfiguration$OutputLocation</a>. If none of them is set, Athena issues an error that no output location is provided. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/querying.html\">Query Results</a>.</p>"
        },
        "EnforceWorkGroupConfiguration": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If set to \"true\", the settings for the workgroup override client-side settings. If set to \"false\", client-side settings are used. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"
        },
        "PublishCloudWatchMetricsEnabled": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Indicates that the Amazon CloudWatch metrics are enabled for the workgroup.</p>"
        },
        "BytesScannedCutoffPerQuery": {
          "shape": "BytesScannedCutoffValue",
          "documentation": "<p>The upper data usage limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan.</p>"
        },
        "RequesterPaysEnabled": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If set to <code>true</code>, allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>, workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is <code>false</code>. For more information about Requester Pays buckets, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html\">Requester Pays Buckets</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The configuration of the workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup and whether workgroup settings override query settings, and the data usage limits for the amount of data scanned per query or per workgroup. The workgroup settings override is specified in EnforceWorkGroupConfiguration (true/false) in the WorkGroupConfiguration. See <a>WorkGroupConfiguration$EnforceWorkGroupConfiguration</a>. </p>"
    },
    "WorkGroupConfigurationUpdates": {
      "type": "structure",
      "members": {
        "EnforceWorkGroupConfiguration": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If set to \"true\", the settings for the workgroup override client-side settings. If set to \"false\" client-side settings are used. For more information, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html\">Workgroup Settings Override Client-Side Settings</a>.</p>"
        },
        "ResultConfigurationUpdates": {
          "shape": "ResultConfigurationUpdates",
          "documentation": "<p>The result configuration information about the queries in this workgroup that will be updated. Includes the updated results location and an updated option for encrypting query results.</p>"
        },
        "PublishCloudWatchMetricsEnabled": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Indicates whether this workgroup enables publishing metrics to Amazon CloudWatch.</p>"
        },
        "BytesScannedCutoffPerQuery": {
          "shape": "BytesScannedCutoffValue",
          "documentation": "<p>The upper limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan.</p>"
        },
        "RemoveBytesScannedCutoffPerQuery": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Indicates that the data usage control limit per query is removed. <a>WorkGroupConfiguration$BytesScannedCutoffPerQuery</a> </p>"
        },
        "RequesterPaysEnabled": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If set to <code>true</code>, allows members assigned to a workgroup to specify Amazon S3 Requester Pays buckets in queries. If set to <code>false</code>, workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is <code>false</code>. For more information about Requester Pays buckets, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html\">Requester Pays Buckets</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The configuration information that will be updated for this workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, whether the workgroup settings override the client-side settings, and the data usage limit for the amount of bytes scanned per query, if it is specified.</p>"
    },
    "WorkGroupDescriptionString": {
      "type": "string",
      "max": 1024,
      "min": 0
    },
    "WorkGroupName": {
      "type": "string",
      "pattern": "[a-zA-Z0-9._-]{1,128}"
    },
    "WorkGroupState": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "WorkGroupSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "WorkGroupName",
          "documentation": "<p>The name of the workgroup.</p>"
        },
        "State": {
          "shape": "WorkGroupState",
          "documentation": "<p>The state of the workgroup.</p>"
        },
        "Description": {
          "shape": "WorkGroupDescriptionString",
          "documentation": "<p>The workgroup description.</p>"
        },
        "CreationTime": {
          "shape": "Date",
          "documentation": "<p>The workgroup creation date and time.</p>"
        }
      },
      "documentation": "<p>The summary information for the workgroup, which includes its name, state, description, and the date and time it was created.</p>"
    },
    "WorkGroupsList": {
      "type": "list",
      "member": {
        "shape": "WorkGroupSummary"
      },
      "max": 50,
      "min": 0
    },
    "datumList": {
      "type": "list",
      "member": {
        "shape": "Datum"
      }
    },
    "datumString": {
      "type": "string"
    }
  },
  "documentation": "<p>Amazon Athena is an interactive query service that lets you use standard SQL to analyze data directly in Amazon S3. You can point Athena at your data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is serverless, so there is no infrastructure to set up or manage. You pay only for the queries you run. Athena scales automatically—executing queries in parallel—so results are fast, even with large datasets and complex queries. For more information, see <a href=\"http://docs.aws.amazon.com/athena/latest/ug/what-is.html\">What is Amazon Athena</a> in the <i>Amazon Athena User Guide</i>.</p> <p>If you connect to Athena using the JDBC driver, use version 1.1.0 of the driver or later with the Amazon Athena API. Earlier version drivers do not support the API. For more information and to download the driver, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html\">Accessing Amazon Athena with JDBC</a>.</p> <p>For code samples using the AWS SDK for Java, see <a href=\"https://docs.aws.amazon.com/athena/latest/ug/code-samples.html\">Examples and Code Samples</a> in the <i>Amazon Athena User Guide</i>.</p>"
}
]===]))