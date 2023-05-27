local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-12-20",
    "endpointPrefix": "redshift-data",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Redshift Data API Service",
    "serviceId": "Redshift Data",
    "signatureVersion": "v4",
    "signingName": "redshift-data",
    "targetPrefix": "RedshiftData",
    "uid": "redshift-data-2019-12-20"
  },
  "operations": {
    "CancelStatement": {
      "name": "CancelStatement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelStatementRequest"
      },
      "output": {
        "shape": "CancelStatementResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Cancels a running query. To be canceled, a query must be running. </p>"
    },
    "DescribeStatement": {
      "name": "DescribeStatement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStatementRequest"
      },
      "output": {
        "shape": "DescribeStatementResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes the details about a specific instance when a query was run by the Amazon Redshift Data API. The information includes when the query started, when it finished, the query status, the number of rows returned, and the SQL statement. </p>"
    },
    "DescribeTable": {
      "name": "DescribeTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTableRequest"
      },
      "output": {
        "shape": "DescribeTableResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Describes the detailed information about a table from metadata in the cluster. The information includes its columns. A token is returned to page through the column list. Depending on the authorization method, use one of the following combinations of request parameters: </p> <ul> <li> <p>AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret. </p> </li> <li> <p>Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
    },
    "ExecuteStatement": {
      "name": "ExecuteStatement",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ExecuteStatementInput"
      },
      "output": {
        "shape": "ExecuteStatementOutput"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ExecuteStatementException"
        }
      ],
      "documentation": "<p>Runs an SQL statement, which can be data manipulation language (DML) or data definition language (DDL). This statement must be a single SQL statement. Depending on the authorization method, use one of the following combinations of request parameters: </p> <ul> <li> <p>AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret. </p> </li> <li> <p>Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
    },
    "GetStatementResult": {
      "name": "GetStatementResult",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetStatementResultRequest"
      },
      "output": {
        "shape": "GetStatementResultResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Fetches the temporarily cached result of an SQL statement. A token is returned to page through the statement results. </p>"
    },
    "ListDatabases": {
      "name": "ListDatabases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDatabasesRequest"
      },
      "output": {
        "shape": "ListDatabasesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>List the databases in a cluster. A token is returned to page through the database list. Depending on the authorization method, use one of the following combinations of request parameters: </p> <ul> <li> <p>AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret. </p> </li> <li> <p>Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
    },
    "ListSchemas": {
      "name": "ListSchemas",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSchemasRequest"
      },
      "output": {
        "shape": "ListSchemasResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Lists the schemas in a database. A token is returned to page through the schema list. Depending on the authorization method, use one of the following combinations of request parameters: </p> <ul> <li> <p>AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret. </p> </li> <li> <p>Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
    },
    "ListStatements": {
      "name": "ListStatements",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListStatementsRequest"
      },
      "output": {
        "shape": "ListStatementsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>List of SQL statements. By default, only finished statements are shown. A token is returned to page through the statement list. </p>"
    },
    "ListTables": {
      "name": "ListTables",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTablesRequest"
      },
      "output": {
        "shape": "ListTablesResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>List the tables in a database. If neither <code>SchemaPattern</code> nor <code>TablePattern</code> are specified, then all tables in the database are returned. A token is returned to page through the table list. Depending on the authorization method, use one of the following combinations of request parameters: </p> <ul> <li> <p>AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the secret and the cluster identifier that matches the cluster in the secret. </p> </li> <li> <p>Temporary credentials - specify the cluster identifier, the database name, and the database user name. Permission to call the <code>redshift:GetClusterCredentials</code> operation is required to use this method. </p> </li> </ul>"
    }
  },
  "shapes": {
    "Blob": {
      "type": "blob"
    },
    "Boolean": {
      "type": "boolean",
      "box": true
    },
    "BoxedBoolean": {
      "type": "boolean",
      "box": true
    },
    "BoxedDouble": {
      "type": "double",
      "box": true
    },
    "BoxedLong": {
      "type": "long",
      "box": true
    },
    "CancelStatementRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "UUID",
          "documentation": "<p>The identifier of the SQL statement to cancel. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. This identifier is returned by <code>ExecuteStatment</code> and <code>ListStatements</code>. </p>"
        }
      }
    },
    "CancelStatementResponse": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the cancel statement succeeded (true). </p>"
        }
      }
    },
    "ColumnList": {
      "type": "list",
      "member": {
        "shape": "ColumnMetadata"
      }
    },
    "ColumnMetadata": {
      "type": "structure",
      "members": {
        "columnDefault": {
          "shape": "String",
          "documentation": "<p>The default value of the column. </p>"
        },
        "isCaseSensitive": {
          "shape": "bool",
          "documentation": "<p>A value that indicates whether the column is case-sensitive. </p>"
        },
        "isCurrency": {
          "shape": "bool",
          "documentation": "<p>A value that indicates whether the column contains currency values.</p>"
        },
        "isSigned": {
          "shape": "bool",
          "documentation": "<p>A value that indicates whether an integer column is signed.</p>"
        },
        "label": {
          "shape": "String",
          "documentation": "<p>The label for the column. </p>"
        },
        "length": {
          "shape": "Integer",
          "documentation": "<p>The length of the column.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the column. </p>"
        },
        "nullable": {
          "shape": "Integer",
          "documentation": "<p>A value that indicates whether the column is nullable. </p>"
        },
        "precision": {
          "shape": "Integer",
          "documentation": "<p>The precision value of a decimal number column. </p>"
        },
        "scale": {
          "shape": "Integer",
          "documentation": "<p>The scale value of a decimal number column. </p>"
        },
        "schemaName": {
          "shape": "String",
          "documentation": "<p>The name of the schema that contains the table that includes the column.</p>"
        },
        "tableName": {
          "shape": "String",
          "documentation": "<p>The name of the table that includes the column. </p>"
        },
        "typeName": {
          "shape": "String",
          "documentation": "<p>The database-specific data type of the column. </p>"
        }
      },
      "documentation": "<p>The properties (metadata) of a column. </p>"
    },
    "ColumnMetadataList": {
      "type": "list",
      "member": {
        "shape": "ColumnMetadata"
      }
    },
    "DatabaseList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "DescribeStatementRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "UUID",
          "documentation": "<p>The identifier of the SQL statement to describe. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. This identifier is returned by <code>ExecuteStatment</code> and <code>ListStatements</code>. </p>"
        }
      }
    },
    "DescribeStatementResponse": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The cluster identifier. </p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time (UTC) when the SQL statement was submitted to run. </p>"
        },
        "Database": {
          "shape": "String",
          "documentation": "<p>The name of the database. </p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The database user name. </p>"
        },
        "Duration": {
          "shape": "Long",
          "documentation": "<p>The amount of time in nanoseconds that the statement ran. </p>"
        },
        "Error": {
          "shape": "String",
          "documentation": "<p>The error message from the cluster if the SQL statement encountered an error while running. </p>"
        },
        "Id": {
          "shape": "UUID",
          "documentation": "<p>The identifier of the SQL statement described. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. </p>"
        },
        "QueryString": {
          "shape": "StatementString",
          "documentation": "<p>The SQL statement text. </p>"
        },
        "RedshiftPid": {
          "shape": "Long",
          "documentation": "<p>The process identifier from Amazon Redshift. </p>"
        },
        "RedshiftQueryId": {
          "shape": "Long",
          "documentation": "<p>The identifier of the query generated by Amazon Redshift. These identifiers are also available in the <code>query</code> column of the <code>STL_QUERY</code> system view. </p>"
        },
        "ResultRows": {
          "shape": "Long",
          "documentation": "<p>Either the number of rows returned from the SQL statement or the number of rows affected. If result size is greater than zero, the result rows can be the number of rows affected by SQL statements such as INSERT, UPDATE, DELETE, COPY, and others. </p>"
        },
        "ResultSize": {
          "shape": "Long",
          "documentation": "<p>The size in bytes of the returned results. </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the secret that enables access to the database. </p>"
        },
        "Status": {
          "shape": "StatusString",
          "documentation": "<p>The status of the SQL statement being described. Status values are defined as follows: </p> <ul> <li> <p>ABORTED - The query run was stopped by the user. </p> </li> <li> <p>ALL - A status value that includes all query statuses. This value can be used to filter results. </p> </li> <li> <p>FAILED - The query run failed. </p> </li> <li> <p>FINISHED - The query has finished running. </p> </li> <li> <p>PICKED - The query has been chosen to be run. </p> </li> <li> <p>STARTED - The query run has started. </p> </li> <li> <p>SUBMITTED - The query was submitted, but not yet processed. </p> </li> </ul>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time (UTC) that the metadata for the SQL statement was last updated. An example is the time the status last changed. </p>"
        }
      }
    },
    "DescribeTableRequest": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "Location",
          "documentation": "<p>The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. </p>"
        },
        "Database": {
          "shape": "String",
          "documentation": "<p>The name of the database. This parameter is required when authenticating using temporary credentials.</p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The database user name. This parameter is required when authenticating using temporary credentials. </p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of tables to return in the response. If more tables exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "Schema": {
          "shape": "String",
          "documentation": "<p>The schema that contains the table. If no schema is specified, then matching tables for all schemas are returned. </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. </p>"
        },
        "Table": {
          "shape": "String",
          "documentation": "<p>The table name. If no table is specified, then all tables for all matching schemas are returned. If no table and no schema is specified, then all tables for all schemas in the database are returned</p>"
        }
      }
    },
    "DescribeTableResponse": {
      "type": "structure",
      "members": {
        "ColumnList": {
          "shape": "ColumnList",
          "documentation": "<p>A list of columns in the table. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "TableName": {
          "shape": "String",
          "documentation": "<p>The table name. </p>"
        }
      }
    },
    "ExecuteStatementInput": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "Sql"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "Location",
          "documentation": "<p>The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. </p>"
        },
        "Database": {
          "shape": "String",
          "documentation": "<p>The name of the database. This parameter is required when authenticating using temporary credentials.</p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The database user name. This parameter is required when authenticating using temporary credentials. </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. </p>"
        },
        "Sql": {
          "shape": "StatementString",
          "documentation": "<p>The SQL statement text to run. </p>"
        },
        "StatementName": {
          "shape": "StatementNameString",
          "documentation": "<p>The name of the SQL statement. You can name the SQL statement when you create it to identify the query. </p>"
        },
        "WithEvent": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs. </p>"
        }
      }
    },
    "ExecuteStatementOutput": {
      "type": "structure",
      "members": {
        "ClusterIdentifier": {
          "shape": "Location",
          "documentation": "<p>The cluster identifier. </p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time (UTC) the statement was created. </p>"
        },
        "Database": {
          "shape": "String",
          "documentation": "<p>The name of the database.</p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The database user name.</p>"
        },
        "Id": {
          "shape": "UUID",
          "documentation": "<p>The identifier of the statement to be run. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The name or ARN of the secret that enables access to the database. </p>"
        }
      }
    },
    "Field": {
      "type": "structure",
      "members": {
        "blobValue": {
          "shape": "Blob",
          "documentation": "<p>A value of the BLOB data type. </p>"
        },
        "booleanValue": {
          "shape": "BoxedBoolean",
          "documentation": "<p>A value of the Boolean data type. </p>"
        },
        "doubleValue": {
          "shape": "BoxedDouble",
          "documentation": "<p>A value of the double data type. </p>"
        },
        "isNull": {
          "shape": "BoxedBoolean",
          "documentation": "<p>A value that indicates whether the data is NULL. </p>"
        },
        "longValue": {
          "shape": "BoxedLong",
          "documentation": "<p>A value of the long data type. </p>"
        },
        "stringValue": {
          "shape": "String",
          "documentation": "<p>A value of the string data type. </p>"
        }
      },
      "documentation": "<p>A data value in a column. </p>"
    },
    "FieldList": {
      "type": "list",
      "member": {
        "shape": "Field"
      }
    },
    "GetStatementResultRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "UUID",
          "documentation": "<p>The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. This identifier is returned by <code>ExecuteStatment</code> and <code>ListStatements</code>. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        }
      }
    },
    "GetStatementResultResponse": {
      "type": "structure",
      "required": [
        "Records"
      ],
      "members": {
        "ColumnMetadata": {
          "shape": "ColumnMetadataList",
          "documentation": "<p>The properties (metadata) of a column. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "Records": {
          "shape": "SqlRecords",
          "documentation": "<p>The results of the SQL statement.</p>"
        },
        "TotalNumRows": {
          "shape": "Long",
          "documentation": "<p>The total number of rows in the result set returned from a query. You can use this number to estimate the number of calls to the <code>GetStatementResult</code> operation needed to page through the results. </p>"
        }
      }
    },
    "Integer": {
      "type": "integer"
    },
    "ListDatabasesRequest": {
      "type": "structure",
      "required": [
        "ClusterIdentifier"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "Location",
          "documentation": "<p>The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. </p>"
        },
        "Database": {
          "shape": "String",
          "documentation": "<p>The name of the database. This parameter is required when authenticating using temporary credentials. </p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The database user name. This parameter is required when authenticating using temporary credentials. </p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of databases to return in the response. If more databases exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. </p>"
        }
      }
    },
    "ListDatabasesResponse": {
      "type": "structure",
      "members": {
        "Databases": {
          "shape": "DatabaseList",
          "documentation": "<p>The names of databases. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        }
      }
    },
    "ListSchemasRequest": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "Database"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "Location",
          "documentation": "<p>The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. </p>"
        },
        "Database": {
          "shape": "String",
          "documentation": "<p>The name of the database. This parameter is required when authenticating using temporary credentials. </p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The database user name. This parameter is required when authenticating using temporary credentials. </p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of schemas to return in the response. If more schemas exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "SchemaPattern": {
          "shape": "String",
          "documentation": "<p>A pattern to filter results by schema name. Within a schema pattern, \"%\" means match any substring of 0 or more characters and \"_\" means match any one character. Only schema name entries matching the search pattern are returned. </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. </p>"
        }
      }
    },
    "ListSchemasResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "Schemas": {
          "shape": "SchemaList",
          "documentation": "<p>The schemas that match the request pattern. </p>"
        }
      }
    },
    "ListStatementsLimit": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "ListStatementsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "ListStatementsLimit",
          "documentation": "<p>The maximum number of SQL statements to return in the response. If more SQL statements exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "StatementName": {
          "shape": "StatementNameString",
          "documentation": "<p>The name of the SQL statement specified as input to <code>ExecuteStatement</code> to identify the query. You can list multiple statements by providing a prefix that matches the beginning of the statement name. For example, to list myStatement1, myStatement2, myStatement3, and so on, then provide the a value of <code>myStatement</code>. Data API does a case-sensitive match of SQL statement names to the prefix value you provide. </p>"
        },
        "Status": {
          "shape": "StatusString",
          "documentation": "<p>The status of the SQL statement to list. Status values are defined as follows: </p> <ul> <li> <p>ABORTED - The query run was stopped by the user. </p> </li> <li> <p>ALL - A status value that includes all query statuses. This value can be used to filter results. </p> </li> <li> <p>FAILED - The query run failed. </p> </li> <li> <p>FINISHED - The query has finished running. </p> </li> <li> <p>PICKED - The query has been chosen to be run. </p> </li> <li> <p>STARTED - The query run has started. </p> </li> <li> <p>SUBMITTED - The query was submitted, but not yet processed. </p> </li> </ul>"
        }
      }
    },
    "ListStatementsResponse": {
      "type": "structure",
      "required": [
        "Statements"
      ],
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "Statements": {
          "shape": "StatementList",
          "documentation": "<p>The SQL statements. </p>"
        }
      }
    },
    "ListTablesRequest": {
      "type": "structure",
      "required": [
        "ClusterIdentifier",
        "Database"
      ],
      "members": {
        "ClusterIdentifier": {
          "shape": "Location",
          "documentation": "<p>The cluster identifier. This parameter is required when authenticating using either AWS Secrets Manager or temporary credentials. </p>"
        },
        "Database": {
          "shape": "String",
          "documentation": "<p>The name of the database. This parameter is required when authenticating using temporary credentials.</p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The database user name. This parameter is required when authenticating using temporary credentials. </p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of tables to return in the response. If more tables exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "SchemaPattern": {
          "shape": "String",
          "documentation": "<p>A pattern to filter results by schema name. Within a schema pattern, \"%\" means match any substring of 0 or more characters and \"_\" means match any one character. Only schema name entries matching the search pattern are returned. If <code>SchemaPattern</code> is not specified, then all tables that match <code>TablePattern</code> are returned. If neither <code>SchemaPattern</code> or <code>TablePattern</code> are specified, then all tables are returned. </p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using AWS Secrets Manager. </p>"
        },
        "TablePattern": {
          "shape": "String",
          "documentation": "<p>A pattern to filter results by table name. Within a table pattern, \"%\" means match any substring of 0 or more characters and \"_\" means match any one character. Only table name entries matching the search pattern are returned. If <code>TablePattern</code> is not specified, then all tables that match <code>SchemaPattern</code>are returned. If neither <code>SchemaPattern</code> or <code>TablePattern</code> are specified, then all tables are returned. </p>"
        }
      }
    },
    "ListTablesResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>"
        },
        "Tables": {
          "shape": "TableList",
          "documentation": "<p>The tables that match the request pattern. </p>"
        }
      }
    },
    "Location": {
      "type": "string"
    },
    "Long": {
      "type": "long"
    },
    "PageSize": {
      "type": "integer"
    },
    "SchemaList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SecretArn": {
      "type": "string"
    },
    "SqlRecords": {
      "type": "list",
      "member": {
        "shape": "FieldList"
      }
    },
    "StatementData": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time (UTC) the statement was created. </p>"
        },
        "Id": {
          "shape": "UUID",
          "documentation": "<p>The SQL statement identifier. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. </p>"
        },
        "QueryString": {
          "shape": "StatementString",
          "documentation": "<p>The SQL statement.</p>"
        },
        "SecretArn": {
          "shape": "SecretArn",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the secret that enables access to the database. </p>"
        },
        "StatementName": {
          "shape": "StatementNameString",
          "documentation": "<p>The name of the SQL statement. </p>"
        },
        "Status": {
          "shape": "StatusString",
          "documentation": "<p>The status of the SQL statement. An example is the that the SQL statement finished. </p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time (UTC) that the statement metadata was last updated.</p>"
        }
      },
      "documentation": "<p>The SQL statement to run.</p>"
    },
    "StatementList": {
      "type": "list",
      "member": {
        "shape": "StatementData"
      }
    },
    "StatementNameString": {
      "type": "string",
      "max": 500,
      "min": 0
    },
    "StatementString": {
      "type": "string"
    },
    "StatusString": {
      "type": "string",
      "enum": [
        "ABORTED",
        "ALL",
        "FAILED",
        "FINISHED",
        "PICKED",
        "STARTED",
        "SUBMITTED"
      ]
    },
    "String": {
      "type": "string"
    },
    "TableList": {
      "type": "list",
      "member": {
        "shape": "TableMember"
      }
    },
    "TableMember": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the table. </p>"
        },
        "schema": {
          "shape": "String",
          "documentation": "<p>The schema containing the table. </p>"
        },
        "type": {
          "shape": "String",
          "documentation": "<p>The type of the table. Possible values include TABLE, VIEW, SYSTEM TABLE, GLOBAL TEMPORARY, LOCAL TEMPORARY, ALIAS, and SYNONYM. </p>"
        }
      },
      "documentation": "<p>The properties of a table. </p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UUID": {
      "type": "string"
    },
    "bool": {
      "type": "boolean"
    }
  },
  "documentation": "<p>You can use the Amazon Redshift Data API to run queries on Amazon Redshift tables. You can run individual SQL statements, which are committed if the statement succeeds. </p>"
}
]===]))