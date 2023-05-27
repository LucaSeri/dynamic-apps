local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-07-25",
    "endpointPrefix": "appsync",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "AWSAppSync",
    "serviceFullName": "AWS AppSync",
    "serviceId": "AppSync",
    "signatureVersion": "v4",
    "signingName": "appsync",
    "uid": "appsync-2017-07-25"
  },
  "operations": {
    "CreateApiCache": {
      "name": "CreateApiCache",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/ApiCaches"
      },
      "input": {
        "shape": "CreateApiCacheRequest"
      },
      "output": {
        "shape": "CreateApiCacheResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a cache for the GraphQL API.</p>"
    },
    "CreateApiKey": {
      "name": "CreateApiKey",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/apikeys"
      },
      "input": {
        "shape": "CreateApiKeyRequest"
      },
      "output": {
        "shape": "CreateApiKeyResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ApiKeyLimitExceededException"
        },
        {
          "shape": "ApiKeyValidityOutOfBoundsException"
        }
      ],
      "documentation": "<p>Creates a unique key that you can distribute to clients who are executing your API.</p>"
    },
    "CreateDataSource": {
      "name": "CreateDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/datasources"
      },
      "input": {
        "shape": "CreateDataSourceRequest"
      },
      "output": {
        "shape": "CreateDataSourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a <code>DataSource</code> object.</p>"
    },
    "CreateFunction": {
      "name": "CreateFunction",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/functions"
      },
      "input": {
        "shape": "CreateFunctionRequest"
      },
      "output": {
        "shape": "CreateFunctionResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a <code>Function</code> object.</p> <p>A function is a reusable entity. Multiple functions can be used to compose the resolver logic.</p>"
    },
    "CreateGraphqlApi": {
      "name": "CreateGraphqlApi",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis"
      },
      "input": {
        "shape": "CreateGraphqlApiRequest"
      },
      "output": {
        "shape": "CreateGraphqlApiResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ApiLimitExceededException"
        }
      ],
      "documentation": "<p>Creates a <code>GraphqlApi</code> object.</p>"
    },
    "CreateResolver": {
      "name": "CreateResolver",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/types/{typeName}/resolvers"
      },
      "input": {
        "shape": "CreateResolverRequest"
      },
      "output": {
        "shape": "CreateResolverResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a <code>Resolver</code> object.</p> <p>A resolver converts incoming requests into a format that a data source can understand and converts the data source's responses into GraphQL.</p>"
    },
    "CreateType": {
      "name": "CreateType",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/types"
      },
      "input": {
        "shape": "CreateTypeRequest"
      },
      "output": {
        "shape": "CreateTypeResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a <code>Type</code> object.</p>"
    },
    "DeleteApiCache": {
      "name": "DeleteApiCache",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/apis/{apiId}/ApiCaches"
      },
      "input": {
        "shape": "DeleteApiCacheRequest"
      },
      "output": {
        "shape": "DeleteApiCacheResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes an <code>ApiCache</code> object.</p>"
    },
    "DeleteApiKey": {
      "name": "DeleteApiKey",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/apis/{apiId}/apikeys/{id}"
      },
      "input": {
        "shape": "DeleteApiKeyRequest"
      },
      "output": {
        "shape": "DeleteApiKeyResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes an API key.</p>"
    },
    "DeleteDataSource": {
      "name": "DeleteDataSource",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/apis/{apiId}/datasources/{name}"
      },
      "input": {
        "shape": "DeleteDataSourceRequest"
      },
      "output": {
        "shape": "DeleteDataSourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes a <code>DataSource</code> object.</p>"
    },
    "DeleteFunction": {
      "name": "DeleteFunction",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/apis/{apiId}/functions/{functionId}"
      },
      "input": {
        "shape": "DeleteFunctionRequest"
      },
      "output": {
        "shape": "DeleteFunctionResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes a <code>Function</code>.</p>"
    },
    "DeleteGraphqlApi": {
      "name": "DeleteGraphqlApi",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/apis/{apiId}"
      },
      "input": {
        "shape": "DeleteGraphqlApiRequest"
      },
      "output": {
        "shape": "DeleteGraphqlApiResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes a <code>GraphqlApi</code> object.</p>"
    },
    "DeleteResolver": {
      "name": "DeleteResolver",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
      },
      "input": {
        "shape": "DeleteResolverRequest"
      },
      "output": {
        "shape": "DeleteResolverResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes a <code>Resolver</code> object.</p>"
    },
    "DeleteType": {
      "name": "DeleteType",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/apis/{apiId}/types/{typeName}"
      },
      "input": {
        "shape": "DeleteTypeRequest"
      },
      "output": {
        "shape": "DeleteTypeResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes a <code>Type</code> object.</p>"
    },
    "FlushApiCache": {
      "name": "FlushApiCache",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/apis/{apiId}/FlushCache"
      },
      "input": {
        "shape": "FlushApiCacheRequest"
      },
      "output": {
        "shape": "FlushApiCacheResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Flushes an <code>ApiCache</code> object.</p>"
    },
    "GetApiCache": {
      "name": "GetApiCache",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/ApiCaches"
      },
      "input": {
        "shape": "GetApiCacheRequest"
      },
      "output": {
        "shape": "GetApiCacheResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Retrieves an <code>ApiCache</code> object.</p>"
    },
    "GetDataSource": {
      "name": "GetDataSource",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/datasources/{name}"
      },
      "input": {
        "shape": "GetDataSourceRequest"
      },
      "output": {
        "shape": "GetDataSourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Retrieves a <code>DataSource</code> object.</p>"
    },
    "GetFunction": {
      "name": "GetFunction",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/functions/{functionId}"
      },
      "input": {
        "shape": "GetFunctionRequest"
      },
      "output": {
        "shape": "GetFunctionResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Get a <code>Function</code>.</p>"
    },
    "GetGraphqlApi": {
      "name": "GetGraphqlApi",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}"
      },
      "input": {
        "shape": "GetGraphqlApiRequest"
      },
      "output": {
        "shape": "GetGraphqlApiResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Retrieves a <code>GraphqlApi</code> object.</p>"
    },
    "GetIntrospectionSchema": {
      "name": "GetIntrospectionSchema",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/schema"
      },
      "input": {
        "shape": "GetIntrospectionSchemaRequest"
      },
      "output": {
        "shape": "GetIntrospectionSchemaResponse"
      },
      "errors": [
        {
          "shape": "GraphQLSchemaException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Retrieves the introspection schema for a GraphQL API.</p>"
    },
    "GetResolver": {
      "name": "GetResolver",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
      },
      "input": {
        "shape": "GetResolverRequest"
      },
      "output": {
        "shape": "GetResolverResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        }
      ],
      "documentation": "<p>Retrieves a <code>Resolver</code> object.</p>"
    },
    "GetSchemaCreationStatus": {
      "name": "GetSchemaCreationStatus",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/schemacreation"
      },
      "input": {
        "shape": "GetSchemaCreationStatusRequest"
      },
      "output": {
        "shape": "GetSchemaCreationStatusResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Retrieves the current status of a schema creation operation.</p>"
    },
    "GetType": {
      "name": "GetType",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/types/{typeName}"
      },
      "input": {
        "shape": "GetTypeRequest"
      },
      "output": {
        "shape": "GetTypeResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Retrieves a <code>Type</code> object.</p>"
    },
    "ListApiKeys": {
      "name": "ListApiKeys",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/apikeys"
      },
      "input": {
        "shape": "ListApiKeysRequest"
      },
      "output": {
        "shape": "ListApiKeysResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists the API keys for a given API.</p> <note> <p>API keys are deleted automatically sometime after they expire. However, they may still be included in the response until they have actually been deleted. You can safely call <code>DeleteApiKey</code> to manually delete a key before it's automatically deleted.</p> </note>"
    },
    "ListDataSources": {
      "name": "ListDataSources",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/datasources"
      },
      "input": {
        "shape": "ListDataSourcesRequest"
      },
      "output": {
        "shape": "ListDataSourcesResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists the data sources for a given API.</p>"
    },
    "ListFunctions": {
      "name": "ListFunctions",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/functions"
      },
      "input": {
        "shape": "ListFunctionsRequest"
      },
      "output": {
        "shape": "ListFunctionsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>List multiple functions.</p>"
    },
    "ListGraphqlApis": {
      "name": "ListGraphqlApis",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis"
      },
      "input": {
        "shape": "ListGraphqlApisRequest"
      },
      "output": {
        "shape": "ListGraphqlApisResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists your GraphQL APIs.</p>"
    },
    "ListResolvers": {
      "name": "ListResolvers",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/types/{typeName}/resolvers"
      },
      "input": {
        "shape": "ListResolversRequest"
      },
      "output": {
        "shape": "ListResolversResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists the resolvers for a given API and type.</p>"
    },
    "ListResolversByFunction": {
      "name": "ListResolversByFunction",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/functions/{functionId}/resolvers"
      },
      "input": {
        "shape": "ListResolversByFunctionRequest"
      },
      "output": {
        "shape": "ListResolversByFunctionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>List the resolvers that are associated with a specific function.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/v1/tags/{resourceArn}"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the tags for a resource.</p>"
    },
    "ListTypes": {
      "name": "ListTypes",
      "http": {
        "method": "GET",
        "requestUri": "/v1/apis/{apiId}/types"
      },
      "input": {
        "shape": "ListTypesRequest"
      },
      "output": {
        "shape": "ListTypesResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists the types for a given API.</p>"
    },
    "StartSchemaCreation": {
      "name": "StartSchemaCreation",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/schemacreation"
      },
      "input": {
        "shape": "StartSchemaCreationRequest"
      },
      "output": {
        "shape": "StartSchemaCreationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Adds a new schema to your GraphQL API.</p> <p>This operation is asynchronous. Use to determine when it has completed.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/v1/tags/{resourceArn}"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Tags a resource with user-supplied tags.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/tags/{resourceArn}"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Untags a resource.</p>"
    },
    "UpdateApiCache": {
      "name": "UpdateApiCache",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/ApiCaches/update"
      },
      "input": {
        "shape": "UpdateApiCacheRequest"
      },
      "output": {
        "shape": "UpdateApiCacheResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the cache for the GraphQL API.</p>"
    },
    "UpdateApiKey": {
      "name": "UpdateApiKey",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/apikeys/{id}"
      },
      "input": {
        "shape": "UpdateApiKeyRequest"
      },
      "output": {
        "shape": "UpdateApiKeyResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ApiKeyValidityOutOfBoundsException"
        }
      ],
      "documentation": "<p>Updates an API key.</p>"
    },
    "UpdateDataSource": {
      "name": "UpdateDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/datasources/{name}"
      },
      "input": {
        "shape": "UpdateDataSourceRequest"
      },
      "output": {
        "shape": "UpdateDataSourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a <code>DataSource</code> object.</p>"
    },
    "UpdateFunction": {
      "name": "UpdateFunction",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/functions/{functionId}"
      },
      "input": {
        "shape": "UpdateFunctionRequest"
      },
      "output": {
        "shape": "UpdateFunctionResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a <code>Function</code> object.</p>"
    },
    "UpdateGraphqlApi": {
      "name": "UpdateGraphqlApi",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}"
      },
      "input": {
        "shape": "UpdateGraphqlApiRequest"
      },
      "output": {
        "shape": "UpdateGraphqlApiResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates a <code>GraphqlApi</code> object.</p>"
    },
    "UpdateResolver": {
      "name": "UpdateResolver",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
      },
      "input": {
        "shape": "UpdateResolverRequest"
      },
      "output": {
        "shape": "UpdateResolverResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a <code>Resolver</code> object.</p>"
    },
    "UpdateType": {
      "name": "UpdateType",
      "http": {
        "method": "POST",
        "requestUri": "/v1/apis/{apiId}/types/{typeName}"
      },
      "input": {
        "shape": "UpdateTypeRequest"
      },
      "output": {
        "shape": "UpdateTypeResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a <code>Type</code> object.</p>"
    }
  },
  "shapes": {
    "AdditionalAuthenticationProvider": {
      "type": "structure",
      "members": {
        "authenticationType": {
          "shape": "AuthenticationType",
          "documentation": "<p>The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools.</p>"
        },
        "openIDConnectConfig": {
          "shape": "OpenIDConnectConfig",
          "documentation": "<p>The OpenID Connect configuration.</p>"
        },
        "userPoolConfig": {
          "shape": "CognitoUserPoolConfig",
          "documentation": "<p>The Amazon Cognito user pool configuration.</p>"
        }
      },
      "documentation": "<p>Describes an additional authentication provider.</p>"
    },
    "AdditionalAuthenticationProviders": {
      "type": "list",
      "member": {
        "shape": "AdditionalAuthenticationProvider"
      }
    },
    "ApiCache": {
      "type": "structure",
      "members": {
        "ttl": {
          "shape": "Long",
          "documentation": "<p>TTL in seconds for cache entries.</p> <p>Valid values are between 1 and 3600 seconds.</p>"
        },
        "apiCachingBehavior": {
          "shape": "ApiCachingBehavior",
          "documentation": "<p>Caching behavior.</p> <ul> <li> <p> <b>FULL_REQUEST_CACHING</b>: All requests are fully cached.</p> </li> <li> <p> <b>PER_RESOLVER_CACHING</b>: Individual resovlers that you specify are cached.</p> </li> </ul>"
        },
        "transitEncryptionEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Transit encryption flag when connecting to cache. This setting cannot be updated after creation.</p>"
        },
        "atRestEncryptionEnabled": {
          "shape": "Boolean",
          "documentation": "<p>At rest encryption flag for cache. This setting cannot be updated after creation.</p>"
        },
        "type": {
          "shape": "ApiCacheType",
          "documentation": "<p>The cache instance type. Valid values are </p> <ul> <li> <p> <code>SMALL</code> </p> </li> <li> <p> <code>MEDIUM</code> </p> </li> <li> <p> <code>LARGE</code> </p> </li> <li> <p> <code>XLARGE</code> </p> </li> <li> <p> <code>LARGE_2X</code> </p> </li> <li> <p> <code>LARGE_4X</code> </p> </li> <li> <p> <code>LARGE_8X</code> (not available in all regions)</p> </li> <li> <p> <code>LARGE_12X</code> </p> </li> </ul> <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p> <p>The following legacy instance types are avaible, but their use is discouraged:</p> <ul> <li> <p> <b>T2_SMALL</b>: A t2.small instance type.</p> </li> <li> <p> <b>T2_MEDIUM</b>: A t2.medium instance type.</p> </li> <li> <p> <b>R4_LARGE</b>: A r4.large instance type.</p> </li> <li> <p> <b>R4_XLARGE</b>: A r4.xlarge instance type.</p> </li> <li> <p> <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p> </li> <li> <p> <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p> </li> <li> <p> <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p> </li> </ul>"
        },
        "status": {
          "shape": "ApiCacheStatus",
          "documentation": "<p>The cache instance status.</p> <ul> <li> <p> <b>AVAILABLE</b>: The instance is available for use.</p> </li> <li> <p> <b>CREATING</b>: The instance is currently creating.</p> </li> <li> <p> <b>DELETING</b>: The instance is currently deleting.</p> </li> <li> <p> <b>MODIFYING</b>: The instance is currently modifying.</p> </li> <li> <p> <b>FAILED</b>: The instance has failed creation.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The <code>ApiCache</code> object.</p>"
    },
    "ApiCacheStatus": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "CREATING",
        "DELETING",
        "MODIFYING",
        "FAILED"
      ]
    },
    "ApiCacheType": {
      "type": "string",
      "enum": [
        "T2_SMALL",
        "T2_MEDIUM",
        "R4_LARGE",
        "R4_XLARGE",
        "R4_2XLARGE",
        "R4_4XLARGE",
        "R4_8XLARGE",
        "SMALL",
        "MEDIUM",
        "LARGE",
        "XLARGE",
        "LARGE_2X",
        "LARGE_4X",
        "LARGE_8X",
        "LARGE_12X"
      ]
    },
    "ApiCachingBehavior": {
      "type": "string",
      "enum": [
        "FULL_REQUEST_CACHING",
        "PER_RESOLVER_CACHING"
      ]
    },
    "ApiKey": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "String",
          "documentation": "<p>The API key ID.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>A description of the purpose of the API key.</p>"
        },
        "expires": {
          "shape": "Long",
          "documentation": "<p>The time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour.</p>"
        }
      },
      "documentation": "<p>Describes an API key.</p> <p>Customers invoke AWS AppSync GraphQL API operations with API keys as an identity mechanism. There are two key versions:</p> <p> <b>da1</b>: This version was introduced at launch in November 2017. These keys always expire after 7 days. Key expiration is managed by Amazon DynamoDB TTL. The keys ceased to be valid after February 21, 2018 and should not be used after that date.</p> <ul> <li> <p> <code>ListApiKeys</code> returns the expiration time in milliseconds.</p> </li> <li> <p> <code>CreateApiKey</code> returns the expiration time in milliseconds.</p> </li> <li> <p> <code>UpdateApiKey</code> is not available for this key version.</p> </li> <li> <p> <code>DeleteApiKey</code> deletes the item from the table.</p> </li> <li> <p>Expiration is stored in Amazon DynamoDB as milliseconds. This results in a bug where keys are not automatically deleted because DynamoDB expects the TTL to be stored in seconds. As a one-time action, we will delete these keys from the table after February 21, 2018.</p> </li> </ul> <p> <b>da2</b>: This version was introduced in February 2018 when AppSync added support to extend key expiration.</p> <ul> <li> <p> <code>ListApiKeys</code> returns the expiration time in seconds.</p> </li> <li> <p> <code>CreateApiKey</code> returns the expiration time in seconds and accepts a user-provided expiration time in seconds.</p> </li> <li> <p> <code>UpdateApiKey</code> returns the expiration time in seconds and accepts a user-provided expiration time in seconds. Key expiration can only be updated while the key has not expired.</p> </li> <li> <p> <code>DeleteApiKey</code> deletes the item from the table.</p> </li> <li> <p>Expiration is stored in Amazon DynamoDB as seconds.</p> </li> </ul>"
    },
    "ApiKeys": {
      "type": "list",
      "member": {
        "shape": "ApiKey"
      }
    },
    "AuthenticationType": {
      "type": "string",
      "enum": [
        "API_KEY",
        "AWS_IAM",
        "AMAZON_COGNITO_USER_POOLS",
        "OPENID_CONNECT"
      ]
    },
    "AuthorizationConfig": {
      "type": "structure",
      "required": [
        "authorizationType"
      ],
      "members": {
        "authorizationType": {
          "shape": "AuthorizationType",
          "documentation": "<p>The authorization type required by the HTTP endpoint.</p> <ul> <li> <p> <b>AWS_IAM</b>: The authorization type is Sigv4.</p> </li> </ul>"
        },
        "awsIamConfig": {
          "shape": "AwsIamConfig",
          "documentation": "<p>The AWS IAM settings.</p>"
        }
      },
      "documentation": "<p>The authorization config in case the HTTP endpoint requires authorization.</p>"
    },
    "AuthorizationType": {
      "type": "string",
      "enum": [
        "AWS_IAM"
      ]
    },
    "AwsIamConfig": {
      "type": "structure",
      "members": {
        "signingRegion": {
          "shape": "String",
          "documentation": "<p>The signing region for AWS IAM authorization.</p>"
        },
        "signingServiceName": {
          "shape": "String",
          "documentation": "<p>The signing service name for AWS IAM authorization.</p>"
        }
      },
      "documentation": "<p>The AWS IAM configuration.</p>"
    },
    "Blob": {
      "type": "blob"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BooleanValue": {
      "type": "boolean"
    },
    "CachingConfig": {
      "type": "structure",
      "members": {
        "ttl": {
          "shape": "Long",
          "documentation": "<p>The TTL in seconds for a resolver that has caching enabled.</p> <p>Valid values are between 1 and 3600 seconds.</p>"
        },
        "cachingKeys": {
          "shape": "CachingKeys",
          "documentation": "<p>The caching keys for a resolver that has caching enabled.</p> <p>Valid values are entries from the <code>$context.arguments</code>, <code>$context.source</code>, and <code>$context.identity</code> maps.</p>"
        }
      },
      "documentation": "<p>The caching configuration for a resolver that has caching enabled.</p>"
    },
    "CachingKeys": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "CognitoUserPoolConfig": {
      "type": "structure",
      "required": [
        "userPoolId",
        "awsRegion"
      ],
      "members": {
        "userPoolId": {
          "shape": "String",
          "documentation": "<p>The user pool ID.</p>"
        },
        "awsRegion": {
          "shape": "String",
          "documentation": "<p>The AWS Region in which the user pool was created.</p>"
        },
        "appIdClientRegex": {
          "shape": "String",
          "documentation": "<p>A regular expression for validating the incoming Amazon Cognito user pool app client ID.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon Cognito user pool configuration.</p>"
    },
    "ConflictDetectionType": {
      "type": "string",
      "enum": [
        "VERSION",
        "NONE"
      ]
    },
    "ConflictHandlerType": {
      "type": "string",
      "enum": [
        "OPTIMISTIC_CONCURRENCY",
        "LAMBDA",
        "AUTOMERGE",
        "NONE"
      ]
    },
    "CreateApiCacheRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "ttl",
        "apiCachingBehavior",
        "type"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The GraphQL API Id.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "ttl": {
          "shape": "Long",
          "documentation": "<p>TTL in seconds for cache entries.</p> <p>Valid values are between 1 and 3600 seconds.</p>"
        },
        "transitEncryptionEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Transit encryption flag when connecting to cache. This setting cannot be updated after creation.</p>"
        },
        "atRestEncryptionEnabled": {
          "shape": "Boolean",
          "documentation": "<p>At rest encryption flag for cache. This setting cannot be updated after creation.</p>"
        },
        "apiCachingBehavior": {
          "shape": "ApiCachingBehavior",
          "documentation": "<p>Caching behavior.</p> <ul> <li> <p> <b>FULL_REQUEST_CACHING</b>: All requests are fully cached.</p> </li> <li> <p> <b>PER_RESOLVER_CACHING</b>: Individual resovlers that you specify are cached.</p> </li> </ul>"
        },
        "type": {
          "shape": "ApiCacheType",
          "documentation": "<p>The cache instance type. Valid values are </p> <ul> <li> <p> <code>SMALL</code> </p> </li> <li> <p> <code>MEDIUM</code> </p> </li> <li> <p> <code>LARGE</code> </p> </li> <li> <p> <code>XLARGE</code> </p> </li> <li> <p> <code>LARGE_2X</code> </p> </li> <li> <p> <code>LARGE_4X</code> </p> </li> <li> <p> <code>LARGE_8X</code> (not available in all regions)</p> </li> <li> <p> <code>LARGE_12X</code> </p> </li> </ul> <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p> <p>The following legacy instance types are avaible, but their use is discouraged:</p> <ul> <li> <p> <b>T2_SMALL</b>: A t2.small instance type.</p> </li> <li> <p> <b>T2_MEDIUM</b>: A t2.medium instance type.</p> </li> <li> <p> <b>R4_LARGE</b>: A r4.large instance type.</p> </li> <li> <p> <b>R4_XLARGE</b>: A r4.xlarge instance type.</p> </li> <li> <p> <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p> </li> <li> <p> <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p> </li> <li> <p> <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input of a <code>CreateApiCache</code> operation.</p>"
    },
    "CreateApiCacheResponse": {
      "type": "structure",
      "members": {
        "apiCache": {
          "shape": "ApiCache",
          "documentation": "<p>The <code>ApiCache</code> object.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>CreateApiCache</code> operation.</p>"
    },
    "CreateApiKeyRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The ID for your GraphQL API.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>A description of the purpose of the API key.</p>"
        },
        "expires": {
          "shape": "Long",
          "documentation": "<p>The time from creation time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour. The default value for this parameter is 7 days from creation time. For more information, see .</p>"
        }
      }
    },
    "CreateApiKeyResponse": {
      "type": "structure",
      "members": {
        "apiKey": {
          "shape": "ApiKey",
          "documentation": "<p>The API key.</p>"
        }
      }
    },
    "CreateDataSourceRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "name",
        "type"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID for the GraphQL API for the <code>DataSource</code>.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>A user-supplied name for the <code>DataSource</code>.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>A description of the <code>DataSource</code>.</p>"
        },
        "type": {
          "shape": "DataSourceType",
          "documentation": "<p>The type of the <code>DataSource</code>.</p>"
        },
        "serviceRoleArn": {
          "shape": "String",
          "documentation": "<p>The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.</p>"
        },
        "dynamodbConfig": {
          "shape": "DynamodbDataSourceConfig",
          "documentation": "<p>Amazon DynamoDB settings.</p>"
        },
        "lambdaConfig": {
          "shape": "LambdaDataSourceConfig",
          "documentation": "<p>AWS Lambda settings.</p>"
        },
        "elasticsearchConfig": {
          "shape": "ElasticsearchDataSourceConfig",
          "documentation": "<p>Amazon Elasticsearch Service settings.</p>"
        },
        "httpConfig": {
          "shape": "HttpDataSourceConfig",
          "documentation": "<p>HTTP endpoint settings.</p>"
        },
        "relationalDatabaseConfig": {
          "shape": "RelationalDatabaseDataSourceConfig",
          "documentation": "<p>Relational database settings.</p>"
        }
      }
    },
    "CreateDataSourceResponse": {
      "type": "structure",
      "members": {
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The <code>DataSource</code> object.</p>"
        }
      }
    },
    "CreateFunctionRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "name",
        "dataSourceName",
        "functionVersion"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The GraphQL API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The <code>Function</code> name. The function name does not have to be unique.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The <code>Function</code> description.</p>"
        },
        "dataSourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The <code>Function</code> <code>DataSource</code> name.</p>"
        },
        "requestMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The <code>Function</code> request mapping template. Functions support only the 2018-05-29 version of the request mapping template.</p>"
        },
        "responseMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The <code>Function</code> response mapping template. </p>"
        },
        "functionVersion": {
          "shape": "String",
          "documentation": "<p>The <code>version</code> of the request mapping template. Currently the supported value is 2018-05-29. </p>"
        }
      }
    },
    "CreateFunctionResponse": {
      "type": "structure",
      "members": {
        "functionConfiguration": {
          "shape": "FunctionConfiguration",
          "documentation": "<p>The <code>Function</code> object.</p>"
        }
      }
    },
    "CreateGraphqlApiRequest": {
      "type": "structure",
      "required": [
        "name",
        "authenticationType"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>A user-supplied name for the <code>GraphqlApi</code>.</p>"
        },
        "logConfig": {
          "shape": "LogConfig",
          "documentation": "<p>The Amazon CloudWatch Logs configuration.</p>"
        },
        "authenticationType": {
          "shape": "AuthenticationType",
          "documentation": "<p>The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito user pools.</p>"
        },
        "userPoolConfig": {
          "shape": "UserPoolConfig",
          "documentation": "<p>The Amazon Cognito user pool configuration.</p>"
        },
        "openIDConnectConfig": {
          "shape": "OpenIDConnectConfig",
          "documentation": "<p>The OpenID Connect configuration.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A <code>TagMap</code> object.</p>"
        },
        "additionalAuthenticationProviders": {
          "shape": "AdditionalAuthenticationProviders",
          "documentation": "<p>A list of additional authentication providers for the <code>GraphqlApi</code> API.</p>"
        },
        "xrayEnabled": {
          "shape": "Boolean",
          "documentation": "<p>A flag indicating whether to enable X-Ray tracing for the <code>GraphqlApi</code>.</p>"
        }
      }
    },
    "CreateGraphqlApiResponse": {
      "type": "structure",
      "members": {
        "graphqlApi": {
          "shape": "GraphqlApi",
          "documentation": "<p>The <code>GraphqlApi</code>.</p>"
        }
      }
    },
    "CreateResolverRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "typeName",
        "fieldName"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The ID for the GraphQL API for which the resolver is being created.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "typeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the <code>Type</code>.</p>",
          "location": "uri",
          "locationName": "typeName"
        },
        "fieldName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the field to attach the resolver to.</p>"
        },
        "dataSourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the data source for which the resolver is being created.</p>"
        },
        "requestMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The mapping template to be used for requests.</p> <p>A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL).</p> <p>VTL request mapping templates are optional when using a Lambda data source. For all other data sources, VTL request and response mapping templates are required.</p>"
        },
        "responseMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The mapping template to be used for responses from the data source.</p>"
        },
        "kind": {
          "shape": "ResolverKind",
          "documentation": "<p>The resolver type.</p> <ul> <li> <p> <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.</p> </li> <li> <p> <b>PIPELINE</b>: A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of <code>Function</code> in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.</p> </li> </ul>"
        },
        "pipelineConfig": {
          "shape": "PipelineConfig",
          "documentation": "<p>The <code>PipelineConfig</code>.</p>"
        },
        "syncConfig": {
          "shape": "SyncConfig",
          "documentation": "<p>The <code>SyncConfig</code> for a resolver attached to a versioned datasource.</p>"
        },
        "cachingConfig": {
          "shape": "CachingConfig",
          "documentation": "<p>The caching configuration for the resolver.</p>"
        }
      }
    },
    "CreateResolverResponse": {
      "type": "structure",
      "members": {
        "resolver": {
          "shape": "Resolver",
          "documentation": "<p>The <code>Resolver</code> object.</p>"
        }
      }
    },
    "CreateTypeRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "definition",
        "format"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "definition": {
          "shape": "String",
          "documentation": "<p>The type definition, in GraphQL Schema Definition Language (SDL) format.</p> <p>For more information, see the <a href=\"http://graphql.org/learn/schema/\">GraphQL SDL documentation</a>.</p>"
        },
        "format": {
          "shape": "TypeDefinitionFormat",
          "documentation": "<p>The type format: SDL or JSON.</p>"
        }
      }
    },
    "CreateTypeResponse": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "Type",
          "documentation": "<p>The <code>Type</code> object.</p>"
        }
      }
    },
    "DataSource": {
      "type": "structure",
      "members": {
        "dataSourceArn": {
          "shape": "String",
          "documentation": "<p>The data source ARN.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the data source.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The description of the data source.</p>"
        },
        "type": {
          "shape": "DataSourceType",
          "documentation": "<p>The type of the data source.</p> <ul> <li> <p> <b>AMAZON_DYNAMODB</b>: The data source is an Amazon DynamoDB table.</p> </li> <li> <p> <b>AMAZON_ELASTICSEARCH</b>: The data source is an Amazon Elasticsearch Service domain.</p> </li> <li> <p> <b>AWS_LAMBDA</b>: The data source is an AWS Lambda function.</p> </li> <li> <p> <b>NONE</b>: There is no data source. This type is used when you wish to invoke a GraphQL operation without connecting to a data source, such as performing data transformation with resolvers or triggering a subscription to be invoked from a mutation.</p> </li> <li> <p> <b>HTTP</b>: The data source is an HTTP endpoint.</p> </li> <li> <p> <b>RELATIONAL_DATABASE</b>: The data source is a relational database.</p> </li> </ul>"
        },
        "serviceRoleArn": {
          "shape": "String",
          "documentation": "<p>The AWS IAM service role ARN for the data source. The system assumes this role when accessing the data source.</p>"
        },
        "dynamodbConfig": {
          "shape": "DynamodbDataSourceConfig",
          "documentation": "<p>Amazon DynamoDB settings.</p>"
        },
        "lambdaConfig": {
          "shape": "LambdaDataSourceConfig",
          "documentation": "<p>AWS Lambda settings.</p>"
        },
        "elasticsearchConfig": {
          "shape": "ElasticsearchDataSourceConfig",
          "documentation": "<p>Amazon Elasticsearch Service settings.</p>"
        },
        "httpConfig": {
          "shape": "HttpDataSourceConfig",
          "documentation": "<p>HTTP endpoint settings.</p>"
        },
        "relationalDatabaseConfig": {
          "shape": "RelationalDatabaseDataSourceConfig",
          "documentation": "<p>Relational database settings.</p>"
        }
      },
      "documentation": "<p>Describes a data source.</p>"
    },
    "DataSourceType": {
      "type": "string",
      "enum": [
        "AWS_LAMBDA",
        "AMAZON_DYNAMODB",
        "AMAZON_ELASTICSEARCH",
        "NONE",
        "HTTP",
        "RELATIONAL_DATABASE"
      ]
    },
    "DataSources": {
      "type": "list",
      "member": {
        "shape": "DataSource"
      }
    },
    "DefaultAction": {
      "type": "string",
      "enum": [
        "ALLOW",
        "DENY"
      ]
    },
    "DeleteApiCacheRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        }
      },
      "documentation": "<p>Represents the input of a <code>DeleteApiCache</code> operation.</p>"
    },
    "DeleteApiCacheResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Represents the output of a <code>DeleteApiCache</code> operation.</p>"
    },
    "DeleteApiKeyRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "id"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "id": {
          "shape": "String",
          "documentation": "<p>The ID for the API key.</p>",
          "location": "uri",
          "locationName": "id"
        }
      }
    },
    "DeleteApiKeyResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteDataSourceRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "name"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the data source.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DeleteDataSourceResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteFunctionRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "functionId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The GraphQL API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "functionId": {
          "shape": "ResourceName",
          "documentation": "<p>The <code>Function</code> ID.</p>",
          "location": "uri",
          "locationName": "functionId"
        }
      }
    },
    "DeleteFunctionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteGraphqlApiRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        }
      }
    },
    "DeleteGraphqlApiResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteResolverRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "typeName",
        "fieldName"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "typeName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the resolver type.</p>",
          "location": "uri",
          "locationName": "typeName"
        },
        "fieldName": {
          "shape": "ResourceName",
          "documentation": "<p>The resolver field name.</p>",
          "location": "uri",
          "locationName": "fieldName"
        }
      }
    },
    "DeleteResolverResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteTypeRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "typeName"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "typeName": {
          "shape": "ResourceName",
          "documentation": "<p>The type name.</p>",
          "location": "uri",
          "locationName": "typeName"
        }
      }
    },
    "DeleteTypeResponse": {
      "type": "structure",
      "members": {}
    },
    "DeltaSyncConfig": {
      "type": "structure",
      "members": {
        "baseTableTTL": {
          "shape": "Long",
          "documentation": "<p>The number of minutes an Item is stored in the datasource.</p>"
        },
        "deltaSyncTableName": {
          "shape": "String",
          "documentation": "<p>The Delta Sync table name.</p>"
        },
        "deltaSyncTableTTL": {
          "shape": "Long",
          "documentation": "<p>The number of minutes a Delta Sync log entry is stored in the Delta Sync table.</p>"
        }
      },
      "documentation": "<p>Describes a Delta Sync configuration.</p>"
    },
    "DynamodbDataSourceConfig": {
      "type": "structure",
      "required": [
        "tableName",
        "awsRegion"
      ],
      "members": {
        "tableName": {
          "shape": "String",
          "documentation": "<p>The table name.</p>"
        },
        "awsRegion": {
          "shape": "String",
          "documentation": "<p>The AWS Region.</p>"
        },
        "useCallerCredentials": {
          "shape": "Boolean",
          "documentation": "<p>Set to TRUE to use Amazon Cognito credentials with this data source.</p>"
        },
        "deltaSyncConfig": {
          "shape": "DeltaSyncConfig",
          "documentation": "<p>The <code>DeltaSyncConfig</code> for a versioned datasource.</p>"
        },
        "versioned": {
          "shape": "Boolean",
          "documentation": "<p>Set to TRUE to use Conflict Detection and Resolution with this data source.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon DynamoDB data source configuration.</p>"
    },
    "ElasticsearchDataSourceConfig": {
      "type": "structure",
      "required": [
        "endpoint",
        "awsRegion"
      ],
      "members": {
        "endpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint.</p>"
        },
        "awsRegion": {
          "shape": "String",
          "documentation": "<p>The AWS Region.</p>"
        }
      },
      "documentation": "<p>Describes an Elasticsearch data source configuration.</p>"
    },
    "FieldLogLevel": {
      "type": "string",
      "enum": [
        "NONE",
        "ERROR",
        "ALL"
      ]
    },
    "FlushApiCacheRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        }
      },
      "documentation": "<p>Represents the input of a <code>FlushApiCache</code> operation.</p>"
    },
    "FlushApiCacheResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Represents the output of a <code>FlushApiCache</code> operation.</p>"
    },
    "FunctionConfiguration": {
      "type": "structure",
      "members": {
        "functionId": {
          "shape": "String",
          "documentation": "<p>A unique ID representing the <code>Function</code> object.</p>"
        },
        "functionArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the <code>Function</code> object.</p>"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the <code>Function</code> object.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The <code>Function</code> description.</p>"
        },
        "dataSourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the <code>DataSource</code>.</p>"
        },
        "requestMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The <code>Function</code> request mapping template. Functions support only the 2018-05-29 version of the request mapping template.</p>"
        },
        "responseMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The <code>Function</code> response mapping template.</p>"
        },
        "functionVersion": {
          "shape": "String",
          "documentation": "<p>The version of the request mapping template. Currently only the 2018-05-29 version of the template is supported.</p>"
        }
      },
      "documentation": "<p>A function is a reusable entity. Multiple functions can be used to compose the resolver logic.</p>"
    },
    "Functions": {
      "type": "list",
      "member": {
        "shape": "FunctionConfiguration"
      }
    },
    "FunctionsIds": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "GetApiCacheRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        }
      },
      "documentation": "<p>Represents the input of a <code>GetApiCache</code> operation.</p>"
    },
    "GetApiCacheResponse": {
      "type": "structure",
      "members": {
        "apiCache": {
          "shape": "ApiCache",
          "documentation": "<p>The <code>ApiCache</code> object.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>GetApiCache</code> operation.</p>"
    },
    "GetDataSourceRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "name"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the data source.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "GetDataSourceResponse": {
      "type": "structure",
      "members": {
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The <code>DataSource</code> object.</p>"
        }
      }
    },
    "GetFunctionRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "functionId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The GraphQL API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "functionId": {
          "shape": "ResourceName",
          "documentation": "<p>The <code>Function</code> ID.</p>",
          "location": "uri",
          "locationName": "functionId"
        }
      }
    },
    "GetFunctionResponse": {
      "type": "structure",
      "members": {
        "functionConfiguration": {
          "shape": "FunctionConfiguration",
          "documentation": "<p>The <code>Function</code> object.</p>"
        }
      }
    },
    "GetGraphqlApiRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID for the GraphQL API.</p>",
          "location": "uri",
          "locationName": "apiId"
        }
      }
    },
    "GetGraphqlApiResponse": {
      "type": "structure",
      "members": {
        "graphqlApi": {
          "shape": "GraphqlApi",
          "documentation": "<p>The <code>GraphqlApi</code> object.</p>"
        }
      }
    },
    "GetIntrospectionSchemaRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "format"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "format": {
          "shape": "OutputType",
          "documentation": "<p>The schema format: SDL or JSON.</p>",
          "location": "querystring",
          "locationName": "format"
        },
        "includeDirectives": {
          "shape": "BooleanValue",
          "documentation": "<p>A flag that specifies whether the schema introspection should contain directives.</p>",
          "location": "querystring",
          "locationName": "includeDirectives"
        }
      }
    },
    "GetIntrospectionSchemaResponse": {
      "type": "structure",
      "members": {
        "schema": {
          "shape": "Blob",
          "documentation": "<p>The schema, in GraphQL Schema Definition Language (SDL) format.</p> <p>For more information, see the <a href=\"http://graphql.org/learn/schema/\">GraphQL SDL documentation</a>.</p>"
        }
      },
      "payload": "schema"
    },
    "GetResolverRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "typeName",
        "fieldName"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "typeName": {
          "shape": "ResourceName",
          "documentation": "<p>The resolver type name.</p>",
          "location": "uri",
          "locationName": "typeName"
        },
        "fieldName": {
          "shape": "ResourceName",
          "documentation": "<p>The resolver field name.</p>",
          "location": "uri",
          "locationName": "fieldName"
        }
      }
    },
    "GetResolverResponse": {
      "type": "structure",
      "members": {
        "resolver": {
          "shape": "Resolver",
          "documentation": "<p>The <code>Resolver</code> object.</p>"
        }
      }
    },
    "GetSchemaCreationStatusRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        }
      }
    },
    "GetSchemaCreationStatusResponse": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "SchemaStatus",
          "documentation": "<p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When the schema is in the ACTIVE state, you can add data.</p>"
        },
        "details": {
          "shape": "String",
          "documentation": "<p>Detailed information about the status of the schema creation operation.</p>"
        }
      }
    },
    "GetTypeRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "typeName",
        "format"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "typeName": {
          "shape": "ResourceName",
          "documentation": "<p>The type name.</p>",
          "location": "uri",
          "locationName": "typeName"
        },
        "format": {
          "shape": "TypeDefinitionFormat",
          "documentation": "<p>The type format: SDL or JSON.</p>",
          "location": "querystring",
          "locationName": "format"
        }
      }
    },
    "GetTypeResponse": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "Type",
          "documentation": "<p>The <code>Type</code> object.</p>"
        }
      }
    },
    "GraphqlApi": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The API name.</p>"
        },
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>"
        },
        "authenticationType": {
          "shape": "AuthenticationType",
          "documentation": "<p>The authentication type.</p>"
        },
        "logConfig": {
          "shape": "LogConfig",
          "documentation": "<p>The Amazon CloudWatch Logs configuration.</p>"
        },
        "userPoolConfig": {
          "shape": "UserPoolConfig",
          "documentation": "<p>The Amazon Cognito user pool configuration.</p>"
        },
        "openIDConnectConfig": {
          "shape": "OpenIDConnectConfig",
          "documentation": "<p>The OpenID Connect configuration.</p>"
        },
        "arn": {
          "shape": "String",
          "documentation": "<p>The ARN.</p>"
        },
        "uris": {
          "shape": "MapOfStringToString",
          "documentation": "<p>The URIs.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags.</p>"
        },
        "additionalAuthenticationProviders": {
          "shape": "AdditionalAuthenticationProviders",
          "documentation": "<p>A list of additional authentication providers for the <code>GraphqlApi</code> API.</p>"
        },
        "xrayEnabled": {
          "shape": "Boolean",
          "documentation": "<p>A flag representing whether X-Ray tracing is enabled for this <code>GraphqlApi</code>.</p>"
        }
      },
      "documentation": "<p>Describes a GraphQL API.</p>"
    },
    "GraphqlApis": {
      "type": "list",
      "member": {
        "shape": "GraphqlApi"
      }
    },
    "HttpDataSourceConfig": {
      "type": "structure",
      "members": {
        "endpoint": {
          "shape": "String",
          "documentation": "<p>The HTTP URL endpoint. You can either specify the domain name or IP, and port combination, and the URL scheme must be HTTP or HTTPS. If the port is not specified, AWS AppSync uses the default port 80 for the HTTP endpoint and port 443 for HTTPS endpoints.</p>"
        },
        "authorizationConfig": {
          "shape": "AuthorizationConfig",
          "documentation": "<p>The authorization config in case the HTTP endpoint requires authorization.</p>"
        }
      },
      "documentation": "<p>Describes an HTTP data source configuration.</p>"
    },
    "LambdaConflictHandlerConfig": {
      "type": "structure",
      "members": {
        "lambdaConflictHandlerArn": {
          "shape": "String",
          "documentation": "<p>The Arn for the Lambda function to use as the Conflict Handler.</p>"
        }
      },
      "documentation": "<p>The <code>LambdaConflictHandlerConfig</code> object when configuring LAMBDA as the Conflict Handler.</p>"
    },
    "LambdaDataSourceConfig": {
      "type": "structure",
      "required": [
        "lambdaFunctionArn"
      ],
      "members": {
        "lambdaFunctionArn": {
          "shape": "String",
          "documentation": "<p>The ARN for the Lambda function.</p>"
        }
      },
      "documentation": "<p>Describes an AWS Lambda data source configuration.</p>"
    },
    "ListApiKeysRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results you want the request to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListApiKeysResponse": {
      "type": "structure",
      "members": {
        "apiKeys": {
          "shape": "ApiKeys",
          "documentation": "<p>The <code>ApiKey</code> objects.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>"
        }
      }
    },
    "ListDataSourcesRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results you want the request to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListDataSourcesResponse": {
      "type": "structure",
      "members": {
        "dataSources": {
          "shape": "DataSources",
          "documentation": "<p>The <code>DataSource</code> objects.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>"
        }
      }
    },
    "ListFunctionsRequest": {
      "type": "structure",
      "required": [
        "apiId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The GraphQL API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results you want the request to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListFunctionsResponse": {
      "type": "structure",
      "members": {
        "functions": {
          "shape": "Functions",
          "documentation": "<p>A list of <code>Function</code> objects.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>"
        }
      }
    },
    "ListGraphqlApisRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results you want the request to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListGraphqlApisResponse": {
      "type": "structure",
      "members": {
        "graphqlApis": {
          "shape": "GraphqlApis",
          "documentation": "<p>The <code>GraphqlApi</code> objects.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>"
        }
      }
    },
    "ListResolversByFunctionRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "functionId"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "functionId": {
          "shape": "String",
          "documentation": "<p>The Function ID.</p>",
          "location": "uri",
          "locationName": "functionId"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that was returned from the previous call to this operation, which you can use to return the next set of items in the list.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results you want the request to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListResolversByFunctionResponse": {
      "type": "structure",
      "members": {
        "resolvers": {
          "shape": "Resolvers",
          "documentation": "<p>The list of resolvers.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that can be used to return the next set of items in the list.</p>"
        }
      }
    },
    "ListResolversRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "typeName"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "typeName": {
          "shape": "String",
          "documentation": "<p>The type name.</p>",
          "location": "uri",
          "locationName": "typeName"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results you want the request to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListResolversResponse": {
      "type": "structure",
      "members": {
        "resolvers": {
          "shape": "Resolvers",
          "documentation": "<p>The <code>Resolver</code> objects.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The <code>GraphqlApi</code> ARN.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A <code>TagMap</code> object.</p>"
        }
      }
    },
    "ListTypesRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "format"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "format": {
          "shape": "TypeDefinitionFormat",
          "documentation": "<p>The type format: SDL or JSON.</p>",
          "location": "querystring",
          "locationName": "format"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results you want the request to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListTypesResponse": {
      "type": "structure",
      "members": {
        "types": {
          "shape": "TypeList",
          "documentation": "<p>The <code>Type</code> objects.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>"
        }
      }
    },
    "LogConfig": {
      "type": "structure",
      "required": [
        "fieldLogLevel",
        "cloudWatchLogsRoleArn"
      ],
      "members": {
        "fieldLogLevel": {
          "shape": "FieldLogLevel",
          "documentation": "<p>The field logging level. Values can be NONE, ERROR, or ALL. </p> <ul> <li> <p> <b>NONE</b>: No field-level logs are captured.</p> </li> <li> <p> <b>ERROR</b>: Logs the following information only for the fields that are in error:</p> <ul> <li> <p>The error section in the server response.</p> </li> <li> <p>Field-level errors.</p> </li> <li> <p>The generated request/response functions that got resolved for error fields.</p> </li> </ul> </li> <li> <p> <b>ALL</b>: The following information is logged for all fields in the query:</p> <ul> <li> <p>Field-level tracing information.</p> </li> <li> <p>The generated request/response functions that got resolved for each field.</p> </li> </ul> </li> </ul>"
        },
        "cloudWatchLogsRoleArn": {
          "shape": "String",
          "documentation": "<p>The service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account. </p>"
        },
        "excludeVerboseContent": {
          "shape": "Boolean",
          "documentation": "<p>Set to TRUE to exclude sections that contain information such as headers, context, and evaluated mapping templates, regardless of logging level.</p>"
        }
      },
      "documentation": "<p>The CloudWatch Logs configuration.</p>"
    },
    "Long": {
      "type": "long"
    },
    "MapOfStringToString": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "MappingTemplate": {
      "type": "string",
      "max": 65536,
      "min": 1
    },
    "MaxResults": {
      "type": "integer",
      "max": 25,
      "min": 0
    },
    "OpenIDConnectConfig": {
      "type": "structure",
      "required": [
        "issuer"
      ],
      "members": {
        "issuer": {
          "shape": "String",
          "documentation": "<p>The issuer for the OpenID Connect configuration. The issuer returned by discovery must exactly match the value of <code>iss</code> in the ID token.</p>"
        },
        "clientId": {
          "shape": "String",
          "documentation": "<p>The client identifier of the Relying party at the OpenID identity provider. This identifier is typically obtained when the Relying party is registered with the OpenID identity provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time.</p>"
        },
        "iatTTL": {
          "shape": "Long",
          "documentation": "<p>The number of milliseconds a token is valid after being issued to a user.</p>"
        },
        "authTTL": {
          "shape": "Long",
          "documentation": "<p>The number of milliseconds a token is valid after being authenticated.</p>"
        }
      },
      "documentation": "<p>Describes an OpenID Connect configuration.</p>"
    },
    "OutputType": {
      "type": "string",
      "enum": [
        "SDL",
        "JSON"
      ]
    },
    "PaginationToken": {
      "type": "string",
      "max": 65536,
      "min": 1,
      "pattern": "[\\\\S]+"
    },
    "PipelineConfig": {
      "type": "structure",
      "members": {
        "functions": {
          "shape": "FunctionsIds",
          "documentation": "<p>A list of <code>Function</code> objects.</p>"
        }
      },
      "documentation": "<p>The pipeline configuration for a resolver of kind <code>PIPELINE</code>.</p>"
    },
    "RdsHttpEndpointConfig": {
      "type": "structure",
      "members": {
        "awsRegion": {
          "shape": "String",
          "documentation": "<p>AWS Region for RDS HTTP endpoint.</p>"
        },
        "dbClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>Amazon RDS cluster ARN.</p>"
        },
        "databaseName": {
          "shape": "String",
          "documentation": "<p>Logical database name.</p>"
        },
        "schema": {
          "shape": "String",
          "documentation": "<p>Logical schema name.</p>"
        },
        "awsSecretStoreArn": {
          "shape": "String",
          "documentation": "<p>AWS secret store ARN for database credentials.</p>"
        }
      },
      "documentation": "<p>The Amazon RDS HTTP endpoint configuration.</p>"
    },
    "RelationalDatabaseDataSourceConfig": {
      "type": "structure",
      "members": {
        "relationalDatabaseSourceType": {
          "shape": "RelationalDatabaseSourceType",
          "documentation": "<p>Source type for the relational database.</p> <ul> <li> <p> <b>RDS_HTTP_ENDPOINT</b>: The relational database source type is an Amazon RDS HTTP endpoint.</p> </li> </ul>"
        },
        "rdsHttpEndpointConfig": {
          "shape": "RdsHttpEndpointConfig",
          "documentation": "<p>Amazon RDS HTTP endpoint settings.</p>"
        }
      },
      "documentation": "<p>Describes a relational database data source configuration.</p>"
    },
    "RelationalDatabaseSourceType": {
      "type": "string",
      "enum": [
        "RDS_HTTP_ENDPOINT"
      ]
    },
    "Resolver": {
      "type": "structure",
      "members": {
        "typeName": {
          "shape": "ResourceName",
          "documentation": "<p>The resolver type name.</p>"
        },
        "fieldName": {
          "shape": "ResourceName",
          "documentation": "<p>The resolver field name.</p>"
        },
        "dataSourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The resolver data source name.</p>"
        },
        "resolverArn": {
          "shape": "String",
          "documentation": "<p>The resolver ARN.</p>"
        },
        "requestMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The request mapping template.</p>"
        },
        "responseMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The response mapping template.</p>"
        },
        "kind": {
          "shape": "ResolverKind",
          "documentation": "<p>The resolver type.</p> <ul> <li> <p> <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.</p> </li> <li> <p> <b>PIPELINE</b>: A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of <code>Function</code> in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.</p> </li> </ul>"
        },
        "pipelineConfig": {
          "shape": "PipelineConfig",
          "documentation": "<p>The <code>PipelineConfig</code>.</p>"
        },
        "syncConfig": {
          "shape": "SyncConfig",
          "documentation": "<p>The <code>SyncConfig</code> for a resolver attached to a versioned datasource.</p>"
        },
        "cachingConfig": {
          "shape": "CachingConfig",
          "documentation": "<p>The caching configuration for the resolver.</p>"
        }
      },
      "documentation": "<p>Describes a resolver.</p>"
    },
    "ResolverKind": {
      "type": "string",
      "enum": [
        "UNIT",
        "PIPELINE"
      ]
    },
    "Resolvers": {
      "type": "list",
      "member": {
        "shape": "Resolver"
      }
    },
    "ResourceArn": {
      "type": "string",
      "max": 75,
      "min": 70,
      "pattern": "^arn:aws:appsync:[A-Za-z0-9_/.-]{0,63}:\\d{12}:apis/[0-9A-Za-z_-]{26}$"
    },
    "ResourceName": {
      "type": "string",
      "max": 65536,
      "min": 1,
      "pattern": "[_A-Za-z][_0-9A-Za-z]*"
    },
    "SchemaStatus": {
      "type": "string",
      "enum": [
        "PROCESSING",
        "ACTIVE",
        "DELETING",
        "FAILED",
        "SUCCESS",
        "NOT_APPLICABLE"
      ]
    },
    "StartSchemaCreationRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "definition"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "definition": {
          "shape": "Blob",
          "documentation": "<p>The schema definition, in GraphQL schema language format.</p>"
        }
      }
    },
    "StartSchemaCreationResponse": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "SchemaStatus",
          "documentation": "<p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When the schema is in the ACTIVE state, you can add data.</p>"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "SyncConfig": {
      "type": "structure",
      "members": {
        "conflictHandler": {
          "shape": "ConflictHandlerType",
          "documentation": "<p>The Conflict Resolution strategy to perform in the event of a conflict.</p> <ul> <li> <p> <b>OPTIMISTIC_CONCURRENCY</b>: Resolve conflicts by rejecting mutations when versions do not match the latest version at the server.</p> </li> <li> <p> <b>AUTOMERGE</b>: Resolve conflicts with the Automerge conflict resolution strategy.</p> </li> <li> <p> <b>LAMBDA</b>: Resolve conflicts with a Lambda function supplied in the LambdaConflictHandlerConfig.</p> </li> </ul>"
        },
        "conflictDetection": {
          "shape": "ConflictDetectionType",
          "documentation": "<p>The Conflict Detection strategy to use.</p> <ul> <li> <p> <b>VERSION</b>: Detect conflicts based on object versions for this resolver.</p> </li> <li> <p> <b>NONE</b>: Do not detect conflicts when executing this resolver.</p> </li> </ul>"
        },
        "lambdaConflictHandlerConfig": {
          "shape": "LambdaConflictHandlerConfig",
          "documentation": "<p>The <code>LambdaConflictHandlerConfig</code> when configuring LAMBDA as the Conflict Handler.</p>"
        }
      },
      "documentation": "<p>Describes a Sync configuration for a resolver.</p> <p>Contains information on which Conflict Detection as well as Resolution strategy should be performed when the resolver is invoked.</p>"
    },
    "TagKey": {
      "type": "string",
      "documentation": "<p>The key for the tag.</p>",
      "max": 128,
      "min": 1,
      "pattern": "^(?!aws:)[a-zA-Z+-=._:/]+$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "documentation": "<p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code> objects.</p>",
      "max": 50,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The <code>GraphqlApi</code> ARN.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A <code>TagMap</code> object.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "documentation": "<p>The value for the tag.</p>",
      "max": 256
    },
    "Type": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The type name.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The type description.</p>"
        },
        "arn": {
          "shape": "String",
          "documentation": "<p>The type ARN.</p>"
        },
        "definition": {
          "shape": "String",
          "documentation": "<p>The type definition.</p>"
        },
        "format": {
          "shape": "TypeDefinitionFormat",
          "documentation": "<p>The type format: SDL or JSON.</p>"
        }
      },
      "documentation": "<p>Describes a type.</p>"
    },
    "TypeDefinitionFormat": {
      "type": "string",
      "enum": [
        "SDL",
        "JSON"
      ]
    },
    "TypeList": {
      "type": "list",
      "member": {
        "shape": "Type"
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The <code>GraphqlApi</code> ARN.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of <code>TagKey</code> objects.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateApiCacheRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "ttl",
        "apiCachingBehavior",
        "type"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The GraphQL API Id.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "ttl": {
          "shape": "Long",
          "documentation": "<p>TTL in seconds for cache entries.</p> <p>Valid values are between 1 and 3600 seconds.</p>"
        },
        "apiCachingBehavior": {
          "shape": "ApiCachingBehavior",
          "documentation": "<p>Caching behavior.</p> <ul> <li> <p> <b>FULL_REQUEST_CACHING</b>: All requests are fully cached.</p> </li> <li> <p> <b>PER_RESOLVER_CACHING</b>: Individual resovlers that you specify are cached.</p> </li> </ul>"
        },
        "type": {
          "shape": "ApiCacheType",
          "documentation": "<p>The cache instance type. Valid values are </p> <ul> <li> <p> <code>SMALL</code> </p> </li> <li> <p> <code>MEDIUM</code> </p> </li> <li> <p> <code>LARGE</code> </p> </li> <li> <p> <code>XLARGE</code> </p> </li> <li> <p> <code>LARGE_2X</code> </p> </li> <li> <p> <code>LARGE_4X</code> </p> </li> <li> <p> <code>LARGE_8X</code> (not available in all regions)</p> </li> <li> <p> <code>LARGE_12X</code> </p> </li> </ul> <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p> <p>The following legacy instance types are avaible, but their use is discouraged:</p> <ul> <li> <p> <b>T2_SMALL</b>: A t2.small instance type.</p> </li> <li> <p> <b>T2_MEDIUM</b>: A t2.medium instance type.</p> </li> <li> <p> <b>R4_LARGE</b>: A r4.large instance type.</p> </li> <li> <p> <b>R4_XLARGE</b>: A r4.xlarge instance type.</p> </li> <li> <p> <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p> </li> <li> <p> <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p> </li> <li> <p> <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input of a <code>UpdateApiCache</code> operation.</p>"
    },
    "UpdateApiCacheResponse": {
      "type": "structure",
      "members": {
        "apiCache": {
          "shape": "ApiCache",
          "documentation": "<p>The <code>ApiCache</code> object.</p>"
        }
      },
      "documentation": "<p>Represents the output of a <code>UpdateApiCache</code> operation.</p>"
    },
    "UpdateApiKeyRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "id"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The ID for the GraphQL API.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "id": {
          "shape": "String",
          "documentation": "<p>The API key ID.</p>",
          "location": "uri",
          "locationName": "id"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>A description of the purpose of the API key.</p>"
        },
        "expires": {
          "shape": "Long",
          "documentation": "<p>The time from update time after which the API key expires. The date is represented as seconds since the epoch. For more information, see .</p>"
        }
      }
    },
    "UpdateApiKeyResponse": {
      "type": "structure",
      "members": {
        "apiKey": {
          "shape": "ApiKey",
          "documentation": "<p>The API key.</p>"
        }
      }
    },
    "UpdateDataSourceRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "name",
        "type"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The new name for the data source.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The new description for the data source.</p>"
        },
        "type": {
          "shape": "DataSourceType",
          "documentation": "<p>The new data source type.</p>"
        },
        "serviceRoleArn": {
          "shape": "String",
          "documentation": "<p>The new service role ARN for the data source.</p>"
        },
        "dynamodbConfig": {
          "shape": "DynamodbDataSourceConfig",
          "documentation": "<p>The new Amazon DynamoDB configuration.</p>"
        },
        "lambdaConfig": {
          "shape": "LambdaDataSourceConfig",
          "documentation": "<p>The new AWS Lambda configuration.</p>"
        },
        "elasticsearchConfig": {
          "shape": "ElasticsearchDataSourceConfig",
          "documentation": "<p>The new Elasticsearch Service configuration.</p>"
        },
        "httpConfig": {
          "shape": "HttpDataSourceConfig",
          "documentation": "<p>The new HTTP endpoint configuration.</p>"
        },
        "relationalDatabaseConfig": {
          "shape": "RelationalDatabaseDataSourceConfig",
          "documentation": "<p>The new relational database configuration.</p>"
        }
      }
    },
    "UpdateDataSourceResponse": {
      "type": "structure",
      "members": {
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The updated <code>DataSource</code> object.</p>"
        }
      }
    },
    "UpdateFunctionRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "name",
        "functionId",
        "dataSourceName",
        "functionVersion"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The GraphQL API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "name": {
          "shape": "ResourceName",
          "documentation": "<p>The <code>Function</code> name.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>The <code>Function</code> description.</p>"
        },
        "functionId": {
          "shape": "ResourceName",
          "documentation": "<p>The function ID.</p>",
          "location": "uri",
          "locationName": "functionId"
        },
        "dataSourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The <code>Function</code> <code>DataSource</code> name.</p>"
        },
        "requestMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The <code>Function</code> request mapping template. Functions support only the 2018-05-29 version of the request mapping template.</p>"
        },
        "responseMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The <code>Function</code> request mapping template. </p>"
        },
        "functionVersion": {
          "shape": "String",
          "documentation": "<p>The <code>version</code> of the request mapping template. Currently the supported value is 2018-05-29. </p>"
        }
      }
    },
    "UpdateFunctionResponse": {
      "type": "structure",
      "members": {
        "functionConfiguration": {
          "shape": "FunctionConfiguration",
          "documentation": "<p>The <code>Function</code> object.</p>"
        }
      }
    },
    "UpdateGraphqlApiRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "name"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>The new name for the <code>GraphqlApi</code> object.</p>"
        },
        "logConfig": {
          "shape": "LogConfig",
          "documentation": "<p>The Amazon CloudWatch Logs configuration for the <code>GraphqlApi</code> object.</p>"
        },
        "authenticationType": {
          "shape": "AuthenticationType",
          "documentation": "<p>The new authentication type for the <code>GraphqlApi</code> object.</p>"
        },
        "userPoolConfig": {
          "shape": "UserPoolConfig",
          "documentation": "<p>The new Amazon Cognito user pool configuration for the <code>GraphqlApi</code> object.</p>"
        },
        "openIDConnectConfig": {
          "shape": "OpenIDConnectConfig",
          "documentation": "<p>The OpenID Connect configuration for the <code>GraphqlApi</code> object.</p>"
        },
        "additionalAuthenticationProviders": {
          "shape": "AdditionalAuthenticationProviders",
          "documentation": "<p>A list of additional authentication providers for the <code>GraphqlApi</code> API.</p>"
        },
        "xrayEnabled": {
          "shape": "Boolean",
          "documentation": "<p>A flag indicating whether to enable X-Ray tracing for the <code>GraphqlApi</code>.</p>"
        }
      }
    },
    "UpdateGraphqlApiResponse": {
      "type": "structure",
      "members": {
        "graphqlApi": {
          "shape": "GraphqlApi",
          "documentation": "<p>The updated <code>GraphqlApi</code> object.</p>"
        }
      }
    },
    "UpdateResolverRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "typeName",
        "fieldName"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "typeName": {
          "shape": "ResourceName",
          "documentation": "<p>The new type name.</p>",
          "location": "uri",
          "locationName": "typeName"
        },
        "fieldName": {
          "shape": "ResourceName",
          "documentation": "<p>The new field name.</p>",
          "location": "uri",
          "locationName": "fieldName"
        },
        "dataSourceName": {
          "shape": "ResourceName",
          "documentation": "<p>The new data source name.</p>"
        },
        "requestMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The new request mapping template.</p> <p>A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL).</p> <p>VTL request mapping templates are optional when using a Lambda data source. For all other data sources, VTL request and response mapping templates are required.</p>"
        },
        "responseMappingTemplate": {
          "shape": "MappingTemplate",
          "documentation": "<p>The new response mapping template.</p>"
        },
        "kind": {
          "shape": "ResolverKind",
          "documentation": "<p>The resolver type.</p> <ul> <li> <p> <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is the default resolver type. A UNIT resolver enables you to execute a GraphQL query against a single data source.</p> </li> <li> <p> <b>PIPELINE</b>: A PIPELINE resolver type. A PIPELINE resolver enables you to execute a series of <code>Function</code> in a serial manner. You can use a pipeline resolver to execute a GraphQL query against multiple data sources.</p> </li> </ul>"
        },
        "pipelineConfig": {
          "shape": "PipelineConfig",
          "documentation": "<p>The <code>PipelineConfig</code>.</p>"
        },
        "syncConfig": {
          "shape": "SyncConfig",
          "documentation": "<p>The <code>SyncConfig</code> for a resolver attached to a versioned datasource.</p>"
        },
        "cachingConfig": {
          "shape": "CachingConfig",
          "documentation": "<p>The caching configuration for the resolver.</p>"
        }
      }
    },
    "UpdateResolverResponse": {
      "type": "structure",
      "members": {
        "resolver": {
          "shape": "Resolver",
          "documentation": "<p>The updated <code>Resolver</code> object.</p>"
        }
      }
    },
    "UpdateTypeRequest": {
      "type": "structure",
      "required": [
        "apiId",
        "typeName",
        "format"
      ],
      "members": {
        "apiId": {
          "shape": "String",
          "documentation": "<p>The API ID.</p>",
          "location": "uri",
          "locationName": "apiId"
        },
        "typeName": {
          "shape": "ResourceName",
          "documentation": "<p>The new type name.</p>",
          "location": "uri",
          "locationName": "typeName"
        },
        "definition": {
          "shape": "String",
          "documentation": "<p>The new definition.</p>"
        },
        "format": {
          "shape": "TypeDefinitionFormat",
          "documentation": "<p>The new type format: SDL or JSON.</p>"
        }
      }
    },
    "UpdateTypeResponse": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "Type",
          "documentation": "<p>The updated <code>Type</code> object.</p>"
        }
      }
    },
    "UserPoolConfig": {
      "type": "structure",
      "required": [
        "userPoolId",
        "awsRegion",
        "defaultAction"
      ],
      "members": {
        "userPoolId": {
          "shape": "String",
          "documentation": "<p>The user pool ID.</p>"
        },
        "awsRegion": {
          "shape": "String",
          "documentation": "<p>The AWS Region in which the user pool was created.</p>"
        },
        "defaultAction": {
          "shape": "DefaultAction",
          "documentation": "<p>The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool configuration.</p>"
        },
        "appIdClientRegex": {
          "shape": "String",
          "documentation": "<p>A regular expression for validating the incoming Amazon Cognito user pool app client ID.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon Cognito user pool configuration.</p>"
    }
  },
  "documentation": "<p>AWS AppSync provides API actions for creating and interacting with data sources using GraphQL from your application.</p>"
}
]===]))
