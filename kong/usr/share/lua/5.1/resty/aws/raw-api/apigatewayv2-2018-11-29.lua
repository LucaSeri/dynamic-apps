local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2018-11-29",
    "endpointPrefix": "apigateway",
    "signingName": "apigateway",
    "serviceFullName": "AmazonApiGatewayV2",
    "serviceId": "ApiGatewayV2",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "apigatewayv2-2018-11-29",
    "signatureVersion": "v4"
  },
  "operations": {
    "CreateApi": {
      "name": "CreateApi",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateApiRequest"
      },
      "output": {
        "shape": "CreateApiResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates an Api resource.</p>"
    },
    "CreateApiMapping": {
      "name": "CreateApiMapping",
      "http": {
        "method": "POST",
        "requestUri": "/v2/domainnames/{domainName}/apimappings",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateApiMappingRequest"
      },
      "output": {
        "shape": "CreateApiMappingResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates an API mapping.</p>"
    },
    "CreateAuthorizer": {
      "name": "CreateAuthorizer",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis/{apiId}/authorizers",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateAuthorizerRequest"
      },
      "output": {
        "shape": "CreateAuthorizerResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates an Authorizer for an API.</p>"
    },
    "CreateDeployment": {
      "name": "CreateDeployment",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis/{apiId}/deployments",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateDeploymentRequest"
      },
      "output": {
        "shape": "CreateDeploymentResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates a Deployment for an API.</p>"
    },
    "CreateDomainName": {
      "name": "CreateDomainName",
      "http": {
        "method": "POST",
        "requestUri": "/v2/domainnames",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateDomainNameRequest"
      },
      "output": {
        "shape": "CreateDomainNameResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        }
      ],
      "documentation": "<p>Creates a domain name.</p>"
    },
    "CreateIntegration": {
      "name": "CreateIntegration",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis/{apiId}/integrations",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateIntegrationRequest"
      },
      "output": {
        "shape": "CreateIntegrationResult",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates an Integration.</p>"
    },
    "CreateIntegrationResponse": {
      "name": "CreateIntegrationResponse",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateIntegrationResponseRequest"
      },
      "output": {
        "shape": "CreateIntegrationResponseResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates an IntegrationResponses.</p>"
    },
    "CreateModel": {
      "name": "CreateModel",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis/{apiId}/models",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateModelRequest"
      },
      "output": {
        "shape": "CreateModelResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates a Model for an API.</p>"
    },
    "CreateRoute": {
      "name": "CreateRoute",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis/{apiId}/routes",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateRouteRequest"
      },
      "output": {
        "shape": "CreateRouteResult",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates a Route for an API.</p>"
    },
    "CreateRouteResponse": {
      "name": "CreateRouteResponse",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}/routeresponses",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateRouteResponseRequest"
      },
      "output": {
        "shape": "CreateRouteResponseResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates a RouteResponse for a Route.</p>"
    },
    "CreateStage": {
      "name": "CreateStage",
      "http": {
        "method": "POST",
        "requestUri": "/v2/apis/{apiId}/stages",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateStageRequest"
      },
      "output": {
        "shape": "CreateStageResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates a Stage for an API.</p>"
    },
    "CreateVpcLink": {
      "name": "CreateVpcLink",
      "http": {
        "method": "POST",
        "requestUri": "/v2/vpclinks",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateVpcLinkRequest"
      },
      "output": {
        "shape": "CreateVpcLinkResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Creates a VPC link.</p>"
    },
    "DeleteAccessLogSettings": {
      "name": "DeleteAccessLogSettings",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/stages/{stageName}/accesslogsettings",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteAccessLogSettingsRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes the AccessLogSettings for a Stage. To disable access logging for a Stage, delete its AccessLogSettings.</p>"
    },
    "DeleteApi": {
      "name": "DeleteApi",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteApiRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes an Api resource.</p>"
    },
    "DeleteApiMapping": {
      "name": "DeleteApiMapping",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/domainnames/{domainName}/apimappings/{apiMappingId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteApiMappingRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Deletes an API mapping.</p>"
    },
    "DeleteAuthorizer": {
      "name": "DeleteAuthorizer",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/authorizers/{authorizerId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteAuthorizerRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes an Authorizer.</p>"
    },
    "DeleteCorsConfiguration": {
      "name": "DeleteCorsConfiguration",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/cors",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteCorsConfigurationRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a CORS configuration.</p>"
    },
    "DeleteDeployment": {
      "name": "DeleteDeployment",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/deployments/{deploymentId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteDeploymentRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a Deployment.</p>"
    },
    "DeleteDomainName": {
      "name": "DeleteDomainName",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/domainnames/{domainName}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteDomainNameRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a domain name.</p>"
    },
    "DeleteIntegration": {
      "name": "DeleteIntegration",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/integrations/{integrationId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteIntegrationRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes an Integration.</p>"
    },
    "DeleteIntegrationResponse": {
      "name": "DeleteIntegrationResponse",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteIntegrationResponseRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes an IntegrationResponses.</p>"
    },
    "DeleteModel": {
      "name": "DeleteModel",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/models/{modelId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteModelRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a Model.</p>"
    },
    "DeleteRoute": {
      "name": "DeleteRoute",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteRouteRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a Route.</p>"
    },
    "DeleteRouteRequestParameter": {
      "name": "DeleteRouteRequestParameter",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}/requestparameters/{requestParameterKey}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteRouteRequestParameterRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a route request parameter.</p>"
    },
    "DeleteRouteResponse": {
      "name": "DeleteRouteResponse",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteRouteResponseRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a RouteResponse.</p>"
    },
    "DeleteRouteSettings": {
      "name": "DeleteRouteSettings",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/stages/{stageName}/routesettings/{routeKey}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteRouteSettingsRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes the RouteSettings for a stage.</p>"
    },
    "DeleteStage": {
      "name": "DeleteStage",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/stages/{stageName}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteStageRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a Stage.</p>"
    },
    "DeleteVpcLink": {
      "name": "DeleteVpcLink",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/vpclinks/{vpcLinkId}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteVpcLinkRequest"
      },
      "output": {
        "shape": "DeleteVpcLinkResponse",
        "documentation": "<p>202 response</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Deletes a VPC link.</p>"
    },
    "ExportApi": {
      "name": "ExportApi",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/exports/{specification}",
        "responseCode": 200
      },
      "input": {
        "shape": "ExportApiRequest"
      },
      "output": {
        "shape": "ExportApiResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ]
    },
    "ResetAuthorizersCache": {
      "name": "ResetAuthorizersCache",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/apis/{apiId}/stages/{stageName}/cache/authorizers",
        "responseCode": 204
      },
      "input": {
        "shape": "ResetAuthorizersCacheRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Resets all authorizer cache entries on a stage. Supported only for HTTP APIs.</p>"
    },
    "GetApi": {
      "name": "GetApi",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetApiRequest"
      },
      "output": {
        "shape": "GetApiResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets an Api resource.</p>"
    },
    "GetApiMapping": {
      "name": "GetApiMapping",
      "http": {
        "method": "GET",
        "requestUri": "/v2/domainnames/{domainName}/apimappings/{apiMappingId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetApiMappingRequest"
      },
      "output": {
        "shape": "GetApiMappingResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets an API mapping.</p>"
    },
    "GetApiMappings": {
      "name": "GetApiMappings",
      "http": {
        "method": "GET",
        "requestUri": "/v2/domainnames/{domainName}/apimappings",
        "responseCode": 200
      },
      "input": {
        "shape": "GetApiMappingsRequest"
      },
      "output": {
        "shape": "GetApiMappingsResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets API mappings.</p>"
    },
    "GetApis": {
      "name": "GetApis",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis",
        "responseCode": 200
      },
      "input": {
        "shape": "GetApisRequest"
      },
      "output": {
        "shape": "GetApisResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets a collection of Api resources.</p>"
    },
    "GetAuthorizer": {
      "name": "GetAuthorizer",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/authorizers/{authorizerId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetAuthorizerRequest"
      },
      "output": {
        "shape": "GetAuthorizerResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets an Authorizer.</p>"
    },
    "GetAuthorizers": {
      "name": "GetAuthorizers",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/authorizers",
        "responseCode": 200
      },
      "input": {
        "shape": "GetAuthorizersRequest"
      },
      "output": {
        "shape": "GetAuthorizersResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the Authorizers for an API.</p>"
    },
    "GetDeployment": {
      "name": "GetDeployment",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/deployments/{deploymentId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDeploymentRequest"
      },
      "output": {
        "shape": "GetDeploymentResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a Deployment.</p>"
    },
    "GetDeployments": {
      "name": "GetDeployments",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/deployments",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDeploymentsRequest"
      },
      "output": {
        "shape": "GetDeploymentsResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the Deployments for an API.</p>"
    },
    "GetDomainName": {
      "name": "GetDomainName",
      "http": {
        "method": "GET",
        "requestUri": "/v2/domainnames/{domainName}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDomainNameRequest"
      },
      "output": {
        "shape": "GetDomainNameResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a domain name.</p>"
    },
    "GetDomainNames": {
      "name": "GetDomainNames",
      "http": {
        "method": "GET",
        "requestUri": "/v2/domainnames",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDomainNamesRequest"
      },
      "output": {
        "shape": "GetDomainNamesResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the domain names for an AWS account.</p>"
    },
    "GetIntegration": {
      "name": "GetIntegration",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/integrations/{integrationId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetIntegrationRequest"
      },
      "output": {
        "shape": "GetIntegrationResult",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets an Integration.</p>"
    },
    "GetIntegrationResponse": {
      "name": "GetIntegrationResponse",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetIntegrationResponseRequest"
      },
      "output": {
        "shape": "GetIntegrationResponseResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets an IntegrationResponses.</p>"
    },
    "GetIntegrationResponses": {
      "name": "GetIntegrationResponses",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses",
        "responseCode": 200
      },
      "input": {
        "shape": "GetIntegrationResponsesRequest"
      },
      "output": {
        "shape": "GetIntegrationResponsesResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the IntegrationResponses for an Integration.</p>"
    },
    "GetIntegrations": {
      "name": "GetIntegrations",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/integrations",
        "responseCode": 200
      },
      "input": {
        "shape": "GetIntegrationsRequest"
      },
      "output": {
        "shape": "GetIntegrationsResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the Integrations for an API.</p>"
    },
    "GetModel": {
      "name": "GetModel",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/models/{modelId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetModelRequest"
      },
      "output": {
        "shape": "GetModelResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a Model.</p>"
    },
    "GetModelTemplate": {
      "name": "GetModelTemplate",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/models/{modelId}/template",
        "responseCode": 200
      },
      "input": {
        "shape": "GetModelTemplateRequest"
      },
      "output": {
        "shape": "GetModelTemplateResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a model template.</p>"
    },
    "GetModels": {
      "name": "GetModels",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/models",
        "responseCode": 200
      },
      "input": {
        "shape": "GetModelsRequest"
      },
      "output": {
        "shape": "GetModelsResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the Models for an API.</p>"
    },
    "GetRoute": {
      "name": "GetRoute",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetRouteRequest"
      },
      "output": {
        "shape": "GetRouteResult",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a Route.</p>"
    },
    "GetRouteResponse": {
      "name": "GetRouteResponse",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetRouteResponseRequest"
      },
      "output": {
        "shape": "GetRouteResponseResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a RouteResponse.</p>"
    },
    "GetRouteResponses": {
      "name": "GetRouteResponses",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}/routeresponses",
        "responseCode": 200
      },
      "input": {
        "shape": "GetRouteResponsesRequest"
      },
      "output": {
        "shape": "GetRouteResponsesResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the RouteResponses for a Route.</p>"
    },
    "GetRoutes": {
      "name": "GetRoutes",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/routes",
        "responseCode": 200
      },
      "input": {
        "shape": "GetRoutesRequest"
      },
      "output": {
        "shape": "GetRoutesResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the Routes for an API.</p>"
    },
    "GetStage": {
      "name": "GetStage",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/stages/{stageName}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetStageRequest"
      },
      "output": {
        "shape": "GetStageResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a Stage.</p>"
    },
    "GetStages": {
      "name": "GetStages",
      "http": {
        "method": "GET",
        "requestUri": "/v2/apis/{apiId}/stages",
        "responseCode": 200
      },
      "input": {
        "shape": "GetStagesRequest"
      },
      "output": {
        "shape": "GetStagesResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Gets the Stages for an API.</p>"
    },
    "GetTags": {
      "name": "GetTags",
      "http": {
        "method": "GET",
        "requestUri": "/v2/tags/{resource-arn}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetTagsRequest"
      },
      "output": {
        "shape": "GetTagsResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Gets a collection of Tag resources.</p>"
    },
    "GetVpcLink": {
      "name": "GetVpcLink",
      "http": {
        "method": "GET",
        "requestUri": "/v2/vpclinks/{vpcLinkId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVpcLinkRequest"
      },
      "output": {
        "shape": "GetVpcLinkResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a VPC link.</p>"
    },
    "GetVpcLinks": {
      "name": "GetVpcLinks",
      "http": {
        "method": "GET",
        "requestUri": "/v2/vpclinks",
        "responseCode": 200
      },
      "input": {
        "shape": "GetVpcLinksRequest"
      },
      "output": {
        "shape": "GetVpcLinksResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        }
      ],
      "documentation": "<p>Gets a collection of VPC links.</p>"
    },
    "ImportApi": {
      "name": "ImportApi",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/apis",
        "responseCode": 201
      },
      "input": {
        "shape": "ImportApiRequest"
      },
      "output": {
        "shape": "ImportApiResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Imports an API.</p>"
    },
    "ReimportApi": {
      "name": "ReimportApi",
      "http": {
        "method": "PUT",
        "requestUri": "/v2/apis/{apiId}",
        "responseCode": 201
      },
      "input": {
        "shape": "ReimportApiRequest"
      },
      "output": {
        "shape": "ReimportApiResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Puts an Api resource.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/v2/tags/{resource-arn}",
        "responseCode": 201
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse",
        "documentation": "<p>The request has succeeded and has resulted in the creation of a resource.</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Creates a new Tag resource to represent a tag.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/v2/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Deletes a Tag.</p>"
    },
    "UpdateApi": {
      "name": "UpdateApi",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateApiRequest"
      },
      "output": {
        "shape": "UpdateApiResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates an Api resource.</p>"
    },
    "UpdateApiMapping": {
      "name": "UpdateApiMapping",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/domainnames/{domainName}/apimappings/{apiMappingId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateApiMappingRequest"
      },
      "output": {
        "shape": "UpdateApiMappingResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>The API mapping.</p>"
    },
    "UpdateAuthorizer": {
      "name": "UpdateAuthorizer",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}/authorizers/{authorizerId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateAuthorizerRequest"
      },
      "output": {
        "shape": "UpdateAuthorizerResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates an Authorizer.</p>"
    },
    "UpdateDeployment": {
      "name": "UpdateDeployment",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}/deployments/{deploymentId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDeploymentRequest"
      },
      "output": {
        "shape": "UpdateDeploymentResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates a Deployment.</p>"
    },
    "UpdateDomainName": {
      "name": "UpdateDomainName",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/domainnames/{domainName}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDomainNameRequest"
      },
      "output": {
        "shape": "UpdateDomainNameResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates a domain name.</p>"
    },
    "UpdateIntegration": {
      "name": "UpdateIntegration",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}/integrations/{integrationId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateIntegrationRequest"
      },
      "output": {
        "shape": "UpdateIntegrationResult",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates an Integration.</p>"
    },
    "UpdateIntegrationResponse": {
      "name": "UpdateIntegrationResponse",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses/{integrationResponseId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateIntegrationResponseRequest"
      },
      "output": {
        "shape": "UpdateIntegrationResponseResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates an IntegrationResponses.</p>"
    },
    "UpdateModel": {
      "name": "UpdateModel",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}/models/{modelId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateModelRequest"
      },
      "output": {
        "shape": "UpdateModelResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates a Model.</p>"
    },
    "UpdateRoute": {
      "name": "UpdateRoute",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateRouteRequest"
      },
      "output": {
        "shape": "UpdateRouteResult",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates a Route.</p>"
    },
    "UpdateRouteResponse": {
      "name": "UpdateRouteResponse",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}/routes/{routeId}/routeresponses/{routeResponseId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateRouteResponseRequest"
      },
      "output": {
        "shape": "UpdateRouteResponseResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates a RouteResponse.</p>"
    },
    "UpdateStage": {
      "name": "UpdateStage",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/apis/{apiId}/stages/{stageName}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateStageRequest"
      },
      "output": {
        "shape": "UpdateStageResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates a Stage.</p>"
    },
    "UpdateVpcLink": {
      "name": "UpdateVpcLink",
      "http": {
        "method": "PATCH",
        "requestUri": "/v2/vpclinks/{vpcLinkId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateVpcLinkRequest"
      },
      "output": {
        "shape": "UpdateVpcLinkResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource specified in the request was not found.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        }
      ],
      "documentation": "<p>Updates a VPC link.</p>"
    }
  },
  "shapes": {
    "AccessLogSettings": {
      "type": "structure",
      "members": {
        "DestinationArn": {
          "shape": "Arn",
          "locationName": "destinationArn",
          "documentation": "<p>The ARN of the CloudWatch Logs log group to receive access logs.</p>"
        },
        "Format": {
          "shape": "StringWithLengthBetween1And1024",
          "locationName": "format",
          "documentation": "<p>A single line format of the access logs of data, as specified by selected $context variables. The format must include at least $context.requestId.</p>"
        }
      },
      "documentation": "<p>Settings for logging access in a stage.</p>"
    },
    "Api": {
      "type": "structure",
      "members": {
        "ApiEndpoint": {
          "shape": "__string",
          "locationName": "apiEndpoint",
          "documentation": "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
        },
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API ID.</p>"
        },
        "ApiKeySelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiKeySelectionExpression",
          "documentation": "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
        },
        "CorsConfiguration": {
          "shape": "Cors",
          "locationName": "corsConfiguration",
          "documentation": "<p>A CORS configuration. Supported only for HTTP APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the API was created.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the API.</p>"
        },
        "DisableSchemaValidation": {
          "shape": "__boolean",
          "locationName": "disableSchemaValidation",
          "documentation": "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
        },
        "ImportInfo": {
          "shape": "__listOf__string",
          "locationName": "importInfo",
          "documentation": "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the API.</p>"
        },
        "ProtocolType": {
          "shape": "ProtocolType",
          "locationName": "protocolType",
          "documentation": "<p>The API protocol.</p>"
        },
        "RouteSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeSelectionExpression",
          "documentation": "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>A collection of tags associated with the API.</p>"
        },
        "Version": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "version",
          "documentation": "<p>A version identifier for the API.</p>"
        },
        "Warnings": {
          "shape": "__listOf__string",
          "locationName": "warnings",
          "documentation": "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
        }
      },
      "documentation": "<p>Represents an API.</p>",
      "required": [
        "RouteSelectionExpression",
        "Name",
        "ProtocolType"
      ]
    },
    "ApiMapping": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiMappingId": {
          "shape": "Id",
          "locationName": "apiMappingId",
          "documentation": "<p>The API mapping identifier.</p>"
        },
        "ApiMappingKey": {
          "shape": "SelectionKey",
          "locationName": "apiMappingKey",
          "documentation": "<p>The API mapping key.</p>"
        },
        "Stage": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stage",
          "documentation": "<p>The API stage.</p>"
        }
      },
      "documentation": "<p>Represents an API mapping.</p>",
      "required": [
        "Stage",
        "ApiId"
      ]
    },
    "Arn": {
      "type": "string",
      "documentation": "<p>Represents an Amazon Resource Name (ARN).</p>"
    },
    "AuthorizationScopes": {
      "type": "list",
      "documentation": "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>",
      "member": {
        "shape": "StringWithLengthBetween1And64"
      }
    },
    "AuthorizationType": {
      "type": "string",
      "documentation": "<p>The authorization type. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer. For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>",
      "enum": [
        "NONE",
        "AWS_IAM",
        "CUSTOM",
        "JWT"
      ]
    },
    "Authorizer": {
      "type": "structure",
      "members": {
        "AuthorizerCredentialsArn": {
          "shape": "Arn",
          "locationName": "authorizerCredentialsArn",
          "documentation": "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The authorizer identifier.</p>"
        },
        "AuthorizerPayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "authorizerPayloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
        },
        "AuthorizerResultTtlInSeconds": {
          "shape": "IntegerWithLengthBetween0And3600",
          "locationName": "authorizerResultTtlInSeconds",
          "documentation": "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
        },
        "AuthorizerType": {
          "shape": "AuthorizerType",
          "locationName": "authorizerType",
          "documentation": "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
        },
        "AuthorizerUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "authorizerUri",
          "documentation": "<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>\n               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>"
        },
        "EnableSimpleResponses": {
          "shape": "__boolean",
          "locationName": "enableSimpleResponses",
          "documentation": "<p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
        },
        "IdentitySource": {
          "shape": "IdentitySourceList",
          "locationName": "identitySource",
          "documentation": "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
        },
        "IdentityValidationExpression": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "identityValidationExpression",
          "documentation": "<p>The validation expression does not apply to the REQUEST authorizer.</p>"
        },
        "JwtConfiguration": {
          "shape": "JWTConfiguration",
          "locationName": "jwtConfiguration",
          "documentation": "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the authorizer.</p>"
        }
      },
      "documentation": "<p>Represents an authorizer.</p>",
      "required": [
        "Name"
      ]
    },
    "AuthorizerType": {
      "type": "string",
      "documentation": "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>",
      "enum": [
        "REQUEST",
        "JWT"
      ]
    },
    "ConnectionType": {
      "type": "string",
      "documentation": "<p>Represents a connection type.</p>",
      "enum": [
        "INTERNET",
        "VPC_LINK"
      ]
    },
    "ContentHandlingStrategy": {
      "type": "string",
      "documentation": "<p>Specifies how to handle response payload content type conversions. Supported only for WebSocket APIs.</p>",
      "enum": [
        "CONVERT_TO_BINARY",
        "CONVERT_TO_TEXT"
      ]
    },
    "Cors": {
      "type": "structure",
      "members": {
        "AllowCredentials": {
          "shape": "__boolean",
          "locationName": "allowCredentials",
          "documentation": "<p>Specifies whether credentials are included in the CORS request. Supported only for HTTP APIs.</p>"
        },
        "AllowHeaders": {
          "shape": "CorsHeaderList",
          "locationName": "allowHeaders",
          "documentation": "<p>Represents a collection of allowed headers. Supported only for HTTP APIs.</p>"
        },
        "AllowMethods": {
          "shape": "CorsMethodList",
          "locationName": "allowMethods",
          "documentation": "<p>Represents a collection of allowed HTTP methods. Supported only for HTTP APIs.</p>"
        },
        "AllowOrigins": {
          "shape": "CorsOriginList",
          "locationName": "allowOrigins",
          "documentation": "<p>Represents a collection of allowed origins. Supported only for HTTP APIs.</p>"
        },
        "ExposeHeaders": {
          "shape": "CorsHeaderList",
          "locationName": "exposeHeaders",
          "documentation": "<p>Represents a collection of exposed headers. Supported only for HTTP APIs.</p>"
        },
        "MaxAge": {
          "shape": "IntegerWithLengthBetweenMinus1And86400",
          "locationName": "maxAge",
          "documentation": "<p>The number of seconds that the browser should cache preflight request results. Supported only for HTTP APIs.</p>"
        }
      },
      "documentation": "<p>Represents a CORS configuration. Supported only for HTTP APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html\">Configuring CORS</a> for more information.</p>"
    },
    "CorsHeaderList": {
      "type": "list",
      "documentation": "<p>Represents a collection of allowed headers. Supported only for HTTP APIs.</p>",
      "member": {
        "shape": "__string"
      }
    },
    "CorsMethodList": {
      "type": "list",
      "documentation": "<p>Represents a collection of methods. Supported only for HTTP APIs.</p>",
      "member": {
        "shape": "StringWithLengthBetween1And64"
      }
    },
    "CorsOriginList": {
      "type": "list",
      "documentation": "<p>Represents a collection of origins. Supported only for HTTP APIs.</p>",
      "member": {
        "shape": "__string"
      }
    },
    "CreateApiMappingRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiMappingKey": {
          "shape": "SelectionKey",
          "locationName": "apiMappingKey",
          "documentation": "The API mapping key."
        },
        "DomainName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        },
        "Stage": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stage",
          "documentation": "<p>The API stage.</p>"
        }
      },
      "documentation": "<p>Creates a new ApiMapping resource to represent an API mapping.</p>",
      "required": [
        "DomainName",
        "Stage",
        "ApiId"
      ]
    },
    "CreateApiMappingResponse": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiMappingId": {
          "shape": "Id",
          "locationName": "apiMappingId",
          "documentation": "<p>The API mapping identifier.</p>"
        },
        "ApiMappingKey": {
          "shape": "SelectionKey",
          "locationName": "apiMappingKey",
          "documentation": "<p>The API mapping key.</p>"
        },
        "Stage": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stage",
          "documentation": "<p>The API stage.</p>"
        }
      }
    },
    "CreateApiRequest": {
      "type": "structure",
      "members": {
        "ApiKeySelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiKeySelectionExpression",
          "documentation": "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
        },
        "CorsConfiguration": {
          "shape": "Cors",
          "locationName": "corsConfiguration",
          "documentation": "<p>A CORS configuration. Supported only for HTTP APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html\">Configuring CORS</a> for more information.</p>"
        },
        "CredentialsArn": {
          "shape": "Arn",
          "locationName": "credentialsArn",
          "documentation": "<p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. Supported only for HTTP APIs.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the API.</p>"
        },
        "DisableSchemaValidation": {
          "shape": "__boolean",
          "locationName": "disableSchemaValidation",
          "documentation": "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the API.</p>"
        },
        "ProtocolType": {
          "shape": "ProtocolType",
          "locationName": "protocolType",
          "documentation": "<p>The API protocol.</p>"
        },
        "RouteKey": {
          "shape": "SelectionKey",
          "locationName": "routeKey",
          "documentation": "<p>This property is part of quick create. If you don't specify a routeKey, a default route of $default is created. The $default route acts as a catch-all for any request made to your API, for a particular stage. The $default route key can't be modified. You can add routes after creating the API, and you can update the route keys of additional routes. Supported only for HTTP APIs.</p>"
        },
        "RouteSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeSelectionExpression",
          "documentation": "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
        },
        "Target": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "target",
          "documentation": "<p>This property is part of quick create. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. Supported only for HTTP APIs.</p>"
        },
        "Version": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "version",
          "documentation": "<p>A version identifier for the API.</p>"
        }
      },
      "documentation": "<p>Creates a new Api resource to represent an API.</p>",
      "required": [
        "ProtocolType",
        "Name"
      ]
    },
    "CreateApiResponse": {
      "type": "structure",
      "members": {
        "ApiEndpoint": {
          "shape": "__string",
          "locationName": "apiEndpoint",
          "documentation": "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
        },
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API ID.</p>"
        },
        "ApiKeySelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiKeySelectionExpression",
          "documentation": "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
        },
        "CorsConfiguration": {
          "shape": "Cors",
          "locationName": "corsConfiguration",
          "documentation": "<p>A CORS configuration. Supported only for HTTP APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the API was created.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the API.</p>"
        },
        "DisableSchemaValidation": {
          "shape": "__boolean",
          "locationName": "disableSchemaValidation",
          "documentation": "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
        },
        "ImportInfo": {
          "shape": "__listOf__string",
          "locationName": "importInfo",
          "documentation": "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the API.</p>"
        },
        "ProtocolType": {
          "shape": "ProtocolType",
          "locationName": "protocolType",
          "documentation": "<p>The API protocol.</p>"
        },
        "RouteSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeSelectionExpression",
          "documentation": "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>A collection of tags associated with the API.</p>"
        },
        "Version": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "version",
          "documentation": "<p>A version identifier for the API.</p>"
        },
        "Warnings": {
          "shape": "__listOf__string",
          "locationName": "warnings",
          "documentation": "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
        }
      }
    },
    "CreateAuthorizerRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "AuthorizerCredentialsArn": {
          "shape": "Arn",
          "locationName": "authorizerCredentialsArn",
          "documentation": "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
        },
        "AuthorizerPayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "authorizerPayloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
        },
        "AuthorizerResultTtlInSeconds": {
          "shape": "IntegerWithLengthBetween0And3600",
          "locationName": "authorizerResultTtlInSeconds",
          "documentation": "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
        },
        "AuthorizerType": {
          "shape": "AuthorizerType",
          "locationName": "authorizerType",
          "documentation": "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
        },
        "AuthorizerUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "authorizerUri",
          "documentation": "<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>\n               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>"
        },
        "EnableSimpleResponses": {
          "shape": "__boolean",
          "locationName": "enableSimpleResponses",
          "documentation": "<p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
        },
        "IdentitySource": {
          "shape": "IdentitySourceList",
          "locationName": "identitySource",
          "documentation": "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
        },
        "IdentityValidationExpression": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "identityValidationExpression",
          "documentation": "<p>This parameter is not used.</p>"
        },
        "JwtConfiguration": {
          "shape": "JWTConfiguration",
          "locationName": "jwtConfiguration",
          "documentation": "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the authorizer.</p>"
        }
      },
      "documentation": "<p>Creates a new Authorizer resource to represent an authorizer.</p>",
      "required": [
        "ApiId",
        "AuthorizerType",
        "IdentitySource",
        "Name"
      ]
    },
    "CreateAuthorizerResponse": {
      "type": "structure",
      "members": {
        "AuthorizerCredentialsArn": {
          "shape": "Arn",
          "locationName": "authorizerCredentialsArn",
          "documentation": "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The authorizer identifier.</p>"
        },
        "AuthorizerPayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "authorizerPayloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
        },
        "AuthorizerResultTtlInSeconds": {
          "shape": "IntegerWithLengthBetween0And3600",
          "locationName": "authorizerResultTtlInSeconds",
          "documentation": "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
        },
        "AuthorizerType": {
          "shape": "AuthorizerType",
          "locationName": "authorizerType",
          "documentation": "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
        },
        "AuthorizerUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "authorizerUri",
          "documentation": "<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>\n               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>"
        },
        "EnableSimpleResponses": {
          "shape": "__boolean",
          "locationName": "enableSimpleResponses",
          "documentation": "<p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
        },
        "IdentitySource": {
          "shape": "IdentitySourceList",
          "locationName": "identitySource",
          "documentation": "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
        },
        "IdentityValidationExpression": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "identityValidationExpression",
          "documentation": "<p>The validation expression does not apply to the REQUEST authorizer.</p>"
        },
        "JwtConfiguration": {
          "shape": "JWTConfiguration",
          "locationName": "jwtConfiguration",
          "documentation": "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the authorizer.</p>"
        }
      }
    },
    "CreateDeploymentRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description for the deployment resource.</p>"
        },
        "StageName": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stageName",
          "documentation": "<p>The name of the Stage resource for the Deployment resource to create.</p>"
        }
      },
      "documentation": "<p>Creates a new Deployment resource to represent a deployment.</p>",
      "required": [
        "ApiId"
      ]
    },
    "CreateDeploymentResponse": {
      "type": "structure",
      "members": {
        "AutoDeployed": {
          "shape": "__boolean",
          "locationName": "autoDeployed",
          "documentation": "<p>Specifies whether a deployment was automatically released.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The date and time when the Deployment resource was created.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The identifier for the deployment.</p>"
        },
        "DeploymentStatus": {
          "shape": "DeploymentStatus",
          "locationName": "deploymentStatus",
          "documentation": "<p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>"
        },
        "DeploymentStatusMessage": {
          "shape": "__string",
          "locationName": "deploymentStatusMessage",
          "documentation": "<p>May contain additional feedback on the status of an API deployment.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description for the deployment.</p>"
        }
      }
    },
    "CreateDomainNameRequest": {
      "type": "structure",
      "members": {
        "DomainName": {
          "shape": "StringWithLengthBetween1And512",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        },
        "DomainNameConfigurations": {
          "shape": "DomainNameConfigurations",
          "locationName": "domainNameConfigurations",
          "documentation": "<p>The domain name configurations.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags associated with a domain name.</p>"
        }
      },
      "documentation": "<p>Creates a new DomainName resource to represent a domain name.</p>",
      "required": [
        "DomainName"
      ]
    },
    "CreateDomainNameResponse": {
      "type": "structure",
      "members": {
        "ApiMappingSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiMappingSelectionExpression",
          "documentation": "<p>The API mapping selection expression.</p>"
        },
        "DomainName": {
          "shape": "StringWithLengthBetween1And512",
          "locationName": "domainName",
          "documentation": "<p>The name of the DomainName resource.</p>"
        },
        "DomainNameConfigurations": {
          "shape": "DomainNameConfigurations",
          "locationName": "domainNameConfigurations",
          "documentation": "<p>The domain name configurations.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags associated with a domain name.</p>"
        }
      }
    },
    "CreateIntegrationRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ConnectionId": {
          "shape": "StringWithLengthBetween1And1024",
          "locationName": "connectionId",
          "documentation": "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "locationName": "connectionType",
          "documentation": "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
        },
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "CredentialsArn": {
          "shape": "Arn",
          "locationName": "credentialsArn",
          "documentation": "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the integration.</p>"
        },
        "IntegrationMethod": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "integrationMethod",
          "documentation": "<p>Specifies the integration's HTTP method type.</p>"
        },
        "IntegrationSubtype": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "integrationSubtype",
          "documentation": "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
        },
        "IntegrationType": {
          "shape": "IntegrationType",
          "locationName": "integrationType",
          "documentation": "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
        },
        "IntegrationUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "integrationUri",
          "documentation": "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
        },
        "PassthroughBehavior": {
          "shape": "PassthroughBehavior",
          "locationName": "passthroughBehavior",
          "documentation": "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
        },
        "PayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "payloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
        },
        "RequestParameters": {
          "shape": "IntegrationParameters",
          "locationName": "requestParameters",
          "documentation": "<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>\n               , where  <replaceable>{location}</replaceable>  is querystring, path, or header; and <replaceable>{name}</replaceable> must be a valid and unique method request parameter name.</p> <p>For HTTP APIs, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations with a specified integrationSubtype. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p>"
        },
        "RequestTemplates": {
          "shape": "TemplateMap",
          "locationName": "requestTemplates",
          "documentation": "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expression for the integration.</p>"
        },
        "TimeoutInMillis": {
          "shape": "IntegerWithLengthBetween50And30000",
          "locationName": "timeoutInMillis",
          "documentation": "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
        },
        "TlsConfig": {
          "shape": "TlsConfigInput",
          "locationName": "tlsConfig",
          "documentation": "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
        }
      },
      "documentation": "<p>Creates a new Integration resource to represent an integration.</p>",
      "required": [
        "ApiId",
        "IntegrationType"
      ]
    },
    "CreateIntegrationResult": {
      "type": "structure",
      "members": {
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>"
        },
        "ConnectionId": {
          "shape": "StringWithLengthBetween1And1024",
          "locationName": "connectionId",
          "documentation": "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "locationName": "connectionType",
          "documentation": "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
        },
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "CredentialsArn": {
          "shape": "Arn",
          "locationName": "credentialsArn",
          "documentation": "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>Represents the description of an integration.</p>"
        },
        "IntegrationId": {
          "shape": "Id",
          "locationName": "integrationId",
          "documentation": "<p>Represents the identifier of an integration.</p>"
        },
        "IntegrationMethod": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "integrationMethod",
          "documentation": "<p>Specifies the integration's HTTP method type.</p>"
        },
        "IntegrationResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "integrationResponseSelectionExpression",
          "documentation": "<p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions\">Integration Response Selection Expressions</a>.</p>"
        },
        "IntegrationSubtype": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "integrationSubtype",
          "documentation": "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
        },
        "IntegrationType": {
          "shape": "IntegrationType",
          "locationName": "integrationType",
          "documentation": "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
        },
        "IntegrationUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "integrationUri",
          "documentation": "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
        },
        "PassthroughBehavior": {
          "shape": "PassthroughBehavior",
          "locationName": "passthroughBehavior",
          "documentation": "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
        },
        "PayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "payloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
        },
        "RequestParameters": {
          "shape": "IntegrationParameters",
          "locationName": "requestParameters",
          "documentation": "<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>\n              , where  <replaceable>{location}</replaceable>  is querystring, path, or header; and <replaceable>{name}</replaceable> must be a valid and unique method request parameter name.</p> <p>For HTTP APIs, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations with a specified integrationSubtype. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p>"
        },
        "RequestTemplates": {
          "shape": "TemplateMap",
          "locationName": "requestTemplates",
          "documentation": "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>"
        },
        "TimeoutInMillis": {
          "shape": "IntegerWithLengthBetween50And30000",
          "locationName": "timeoutInMillis",
          "documentation": "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
        },
        "TlsConfig": {
          "shape": "TlsConfig",
          "locationName": "tlsConfig",
          "documentation": "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
        }
      }
    },
    "CreateIntegrationResponseRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "IntegrationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationId",
          "documentation": "<p>The integration ID.</p>"
        },
        "IntegrationResponseKey": {
          "shape": "SelectionKey",
          "locationName": "integrationResponseKey",
          "documentation": "<p>The integration response key.</p>"
        },
        "ResponseParameters": {
          "shape": "IntegrationParameters",
          "locationName": "responseParameters",
          "documentation": "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where {name} is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where {name} is a valid and unique response header name and {JSON-expression} is a valid JSON expression without the $ prefix.</p>"
        },
        "ResponseTemplates": {
          "shape": "TemplateMap",
          "locationName": "responseTemplates",
          "documentation": "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>"
        }
      },
      "documentation": "<p>Creates a new IntegrationResponse resource to represent an integration response.</p>",
      "required": [
        "ApiId",
        "IntegrationId",
        "IntegrationResponseKey"
      ]
    },
    "CreateIntegrationResponseResponse": {
      "type": "structure",
      "members": {
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "IntegrationResponseId": {
          "shape": "Id",
          "locationName": "integrationResponseId",
          "documentation": "<p>The integration response ID.</p>"
        },
        "IntegrationResponseKey": {
          "shape": "SelectionKey",
          "locationName": "integrationResponseKey",
          "documentation": "<p>The integration response key.</p>"
        },
        "ResponseParameters": {
          "shape": "IntegrationParameters",
          "locationName": "responseParameters",
          "documentation": "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>"
        },
        "ResponseTemplates": {
          "shape": "TemplateMap",
          "locationName": "responseTemplates",
          "documentation": "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expressions for the integration response.</p>"
        }
      }
    },
    "CreateModelRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ContentType": {
          "shape": "StringWithLengthBetween1And256",
          "locationName": "contentType",
          "documentation": "<p>The content-type for the model, for example, \"application/json\".</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the model.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the model. Must be alphanumeric.</p>"
        },
        "Schema": {
          "shape": "StringWithLengthBetween0And32K",
          "locationName": "schema",
          "documentation": "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
        }
      },
      "documentation": "<p>Creates a new Model.</p>",
      "required": [
        "ApiId",
        "Schema",
        "Name"
      ]
    },
    "CreateModelResponse": {
      "type": "structure",
      "members": {
        "ContentType": {
          "shape": "StringWithLengthBetween1And256",
          "locationName": "contentType",
          "documentation": "<p>The content-type for the model, for example, \"application/json\".</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the model.</p>"
        },
        "ModelId": {
          "shape": "Id",
          "locationName": "modelId",
          "documentation": "<p>The model identifier.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the model. Must be alphanumeric.</p>"
        },
        "Schema": {
          "shape": "StringWithLengthBetween0And32K",
          "locationName": "schema",
          "documentation": "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
        }
      }
    },
    "CreateRouteRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiKeyRequired": {
          "shape": "__boolean",
          "locationName": "apiKeyRequired",
          "documentation": "<p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>"
        },
        "AuthorizationScopes": {
          "shape": "AuthorizationScopes",
          "locationName": "authorizationScopes",
          "documentation": "<p>The authorization scopes supported by this route.</p>"
        },
        "AuthorizationType": {
          "shape": "AuthorizationType",
          "locationName": "authorizationType",
          "documentation": "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
        },
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "OperationName": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "operationName",
          "documentation": "<p>The operation name for the route.</p>"
        },
        "RequestModels": {
          "shape": "RouteModels",
          "locationName": "requestModels",
          "documentation": "<p>The request models for the route. Supported only for WebSocket APIs.</p>"
        },
        "RequestParameters": {
          "shape": "RouteParameters",
          "locationName": "requestParameters",
          "documentation": "<p>The request parameters for the route. Supported only for WebSocket APIs.</p>"
        },
        "RouteKey": {
          "shape": "SelectionKey",
          "locationName": "routeKey",
          "documentation": "<p>The route key for the route.</p>"
        },
        "RouteResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeResponseSelectionExpression",
          "documentation": "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "Target": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "target",
          "documentation": "<p>The target for the route.</p>"
        }
      },
      "documentation": "<p>Creates a new Route resource to represent a route.</p>",
      "required": [
        "ApiId",
        "RouteKey"
      ]
    },
    "CreateRouteResult": {
      "type": "structure",
      "members": {
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>"
        },
        "ApiKeyRequired": {
          "shape": "__boolean",
          "locationName": "apiKeyRequired",
          "documentation": "<p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>"
        },
        "AuthorizationScopes": {
          "shape": "AuthorizationScopes",
          "locationName": "authorizationScopes",
          "documentation": "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
        },
        "AuthorizationType": {
          "shape": "AuthorizationType",
          "locationName": "authorizationType",
          "documentation": "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
        },
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "OperationName": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "operationName",
          "documentation": "<p>The operation name for the route.</p>"
        },
        "RequestModels": {
          "shape": "RouteModels",
          "locationName": "requestModels",
          "documentation": "<p>The request models for the route. Supported only for WebSocket APIs.</p>"
        },
        "RequestParameters": {
          "shape": "RouteParameters",
          "locationName": "requestParameters",
          "documentation": "<p>The request parameters for the route. Supported only for WebSocket APIs.</p>"
        },
        "RouteId": {
          "shape": "Id",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteKey": {
          "shape": "SelectionKey",
          "locationName": "routeKey",
          "documentation": "<p>The route key for the route.</p>"
        },
        "RouteResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeResponseSelectionExpression",
          "documentation": "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "Target": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "target",
          "documentation": "<p>The target for the route.</p>"
        }
      }
    },
    "CreateRouteResponseRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>"
        },
        "ResponseModels": {
          "shape": "RouteModels",
          "locationName": "responseModels",
          "documentation": "<p>The response models for the route response.</p>"
        },
        "ResponseParameters": {
          "shape": "RouteParameters",
          "locationName": "responseParameters",
          "documentation": "<p>The route response parameters.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteResponseKey": {
          "shape": "SelectionKey",
          "locationName": "routeResponseKey",
          "documentation": "<p>The route response key.</p>"
        }
      },
      "documentation": "<p>Creates a new RouteResponse resource to represent a route response.</p>",
      "required": [
        "ApiId",
        "RouteId",
        "RouteResponseKey"
      ]
    },
    "CreateRouteResponseResponse": {
      "type": "structure",
      "members": {
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>"
        },
        "ResponseModels": {
          "shape": "RouteModels",
          "locationName": "responseModels",
          "documentation": "<p>Represents the response models of a route response.</p>"
        },
        "ResponseParameters": {
          "shape": "RouteParameters",
          "locationName": "responseParameters",
          "documentation": "<p>Represents the response parameters of a route response.</p>"
        },
        "RouteResponseId": {
          "shape": "Id",
          "locationName": "routeResponseId",
          "documentation": "<p>Represents the identifier of a route response.</p>"
        },
        "RouteResponseKey": {
          "shape": "SelectionKey",
          "locationName": "routeResponseKey",
          "documentation": "<p>Represents the route response key of a route response.</p>"
        }
      }
    },
    "CreateStageRequest": {
      "type": "structure",
      "members": {
        "AccessLogSettings": {
          "shape": "AccessLogSettings",
          "locationName": "accessLogSettings",
          "documentation": "<p>Settings for logging access in this stage.</p>"
        },
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "AutoDeploy": {
          "shape": "__boolean",
          "locationName": "autoDeploy",
          "documentation": "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
        },
        "ClientCertificateId": {
          "shape": "Id",
          "locationName": "clientCertificateId",
          "documentation": "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
        },
        "DefaultRouteSettings": {
          "shape": "RouteSettings",
          "locationName": "defaultRouteSettings",
          "documentation": "<p>The default route settings for the stage.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The deployment identifier of the API stage.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description for the API stage.</p>"
        },
        "RouteSettings": {
          "shape": "RouteSettingsMap",
          "locationName": "routeSettings",
          "documentation": "<p>Route settings for the stage, by routeKey.</p>"
        },
        "StageName": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stageName",
          "documentation": "<p>The name of the stage.</p>"
        },
        "StageVariables": {
          "shape": "StageVariablesMap",
          "locationName": "stageVariables",
          "documentation": "<p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
        }
      },
      "documentation": "<p>Creates a new Stage resource to represent a stage.</p>",
      "required": [
        "ApiId",
        "StageName"
      ]
    },
    "CreateStageResponse": {
      "type": "structure",
      "members": {
        "AccessLogSettings": {
          "shape": "AccessLogSettings",
          "locationName": "accessLogSettings",
          "documentation": "<p>Settings for logging access in this stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>"
        },
        "AutoDeploy": {
          "shape": "__boolean",
          "locationName": "autoDeploy",
          "documentation": "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
        },
        "ClientCertificateId": {
          "shape": "Id",
          "locationName": "clientCertificateId",
          "documentation": "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the stage was created.</p>"
        },
        "DefaultRouteSettings": {
          "shape": "RouteSettings",
          "locationName": "defaultRouteSettings",
          "documentation": "<p>Default route settings for the stage.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the stage.</p>"
        },
        "LastDeploymentStatusMessage": {
          "shape": "__string",
          "locationName": "lastDeploymentStatusMessage",
          "documentation": "<p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>"
        },
        "LastUpdatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "lastUpdatedDate",
          "documentation": "<p>The timestamp when the stage was last updated.</p>"
        },
        "RouteSettings": {
          "shape": "RouteSettingsMap",
          "locationName": "routeSettings",
          "documentation": "<p>Route settings for the stage, by routeKey.</p>"
        },
        "StageName": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stageName",
          "documentation": "<p>The name of the stage.</p>"
        },
        "StageVariables": {
          "shape": "StageVariablesMap",
          "locationName": "stageVariables",
          "documentation": "<p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
        }
      }
    },
    "CreateVpcLinkRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the VPC link.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIdList",
          "locationName": "securityGroupIds",
          "documentation": "<p>A list of security group IDs for the VPC link.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdList",
          "locationName": "subnetIds",
          "documentation": "<p>A list of subnet IDs to include in the VPC link.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>A list of tags.</p>"
        }
      },
      "documentation": "<p>Creates a VPC link</p>",
      "required": [
        "SubnetIds",
        "Name"
      ]
    },
    "CreateVpcLinkResponse": {
      "type": "structure",
      "members": {
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the VPC link was created.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the VPC link.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIdList",
          "locationName": "securityGroupIds",
          "documentation": "<p>A list of security group IDs for the VPC link.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdList",
          "locationName": "subnetIds",
          "documentation": "<p>A list of subnet IDs to include in the VPC link.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>Tags for the VPC link.</p>"
        },
        "VpcLinkId": {
          "shape": "Id",
          "locationName": "vpcLinkId",
          "documentation": "<p>The ID of the VPC link.</p>"
        },
        "VpcLinkStatus": {
          "shape": "VpcLinkStatus",
          "locationName": "vpcLinkStatus",
          "documentation": "<p>The status of the VPC link.</p>"
        },
        "VpcLinkStatusMessage": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "vpcLinkStatusMessage",
          "documentation": "<p>A message summarizing the cause of the status of the VPC link.</p>"
        },
        "VpcLinkVersion": {
          "shape": "VpcLinkVersion",
          "locationName": "vpcLinkVersion",
          "documentation": "<p>The version of the VPC link.</p>"
        }
      }
    },
    "DeleteAccessLogSettingsRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "StageName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "stageName",
          "documentation": "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
        }
      },
      "required": [
        "StageName",
        "ApiId"
      ]
    },
    "DeleteApiMappingRequest": {
      "type": "structure",
      "members": {
        "ApiMappingId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiMappingId",
          "documentation": "<p>The API mapping identifier.</p>"
        },
        "DomainName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        }
      },
      "required": [
        "ApiMappingId",
        "DomainName"
      ]
    },
    "DeleteApiRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "DeleteAuthorizerRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "AuthorizerId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "authorizerId",
          "documentation": "<p>The authorizer identifier.</p>"
        }
      },
      "required": [
        "AuthorizerId",
        "ApiId"
      ]
    },
    "DeleteCorsConfigurationRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "DeleteDeploymentRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "DeploymentId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deploymentId",
          "documentation": "<p>The deployment ID.</p>"
        }
      },
      "required": [
        "ApiId",
        "DeploymentId"
      ]
    },
    "DeleteDomainNameRequest": {
      "type": "structure",
      "members": {
        "DomainName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        }
      },
      "required": [
        "DomainName"
      ]
    },
    "DeleteIntegrationRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "IntegrationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationId",
          "documentation": "<p>The integration ID.</p>"
        }
      },
      "required": [
        "ApiId",
        "IntegrationId"
      ]
    },
    "DeleteIntegrationResponseRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "IntegrationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationId",
          "documentation": "<p>The integration ID.</p>"
        },
        "IntegrationResponseId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationResponseId",
          "documentation": "<p>The integration response ID.</p>"
        }
      },
      "required": [
        "ApiId",
        "IntegrationResponseId",
        "IntegrationId"
      ]
    },
    "DeleteModelRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ModelId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "modelId",
          "documentation": "<p>The model ID.</p>"
        }
      },
      "required": [
        "ModelId",
        "ApiId"
      ]
    },
    "DeleteRouteRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        }
      },
      "required": [
        "ApiId",
        "RouteId"
      ]
    },
    "DeleteRouteRequestParameterRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "RequestParameterKey": {
          "shape": "__string",
          "location": "uri",
          "locationName": "requestParameterKey",
          "documentation": "<p>The route request parameter key.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        }
      },
      "required": [
        "RequestParameterKey",
        "ApiId",
        "RouteId"
      ]
    },
    "DeleteRouteResponseRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteResponseId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeResponseId",
          "documentation": "<p>The route response ID.</p>"
        }
      },
      "required": [
        "RouteResponseId",
        "ApiId",
        "RouteId"
      ]
    },
    "DeleteRouteSettingsRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "RouteKey": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeKey",
          "documentation": "<p>The route key.</p>"
        },
        "StageName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "stageName",
          "documentation": "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
        }
      },
      "required": [
        "StageName",
        "RouteKey",
        "ApiId"
      ]
    },
    "DeleteStageRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "StageName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "stageName",
          "documentation": "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
        }
      },
      "required": [
        "StageName",
        "ApiId"
      ]
    },
    "DeleteVpcLinkRequest": {
      "type": "structure",
      "members": {
        "VpcLinkId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "vpcLinkId",
          "documentation": "<p>The ID of the VPC link.</p>"
        }
      },
      "required": [
        "VpcLinkId"
      ]
    },
    "DeleteVpcLinkResponse": {
      "type": "structure",
      "members": {}
    },
    "Deployment": {
      "type": "structure",
      "members": {
        "AutoDeployed": {
          "shape": "__boolean",
          "locationName": "autoDeployed",
          "documentation": "<p>Specifies whether a deployment was automatically released.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The date and time when the Deployment resource was created.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The identifier for the deployment.</p>"
        },
        "DeploymentStatus": {
          "shape": "DeploymentStatus",
          "locationName": "deploymentStatus",
          "documentation": "<p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>"
        },
        "DeploymentStatusMessage": {
          "shape": "__string",
          "locationName": "deploymentStatusMessage",
          "documentation": "<p>May contain additional feedback on the status of an API deployment.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description for the deployment.</p>"
        }
      },
      "documentation": "<p>An immutable representation of an API that can be called by users. A Deployment must be associated with a Stage for it to be callable over the internet.</p>"
    },
    "DeploymentStatus": {
      "type": "string",
      "documentation": "<p>Represents a deployment status.</p>",
      "enum": [
        "PENDING",
        "FAILED",
        "DEPLOYED"
      ]
    },
    "DomainName": {
      "type": "structure",
      "members": {
        "ApiMappingSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiMappingSelectionExpression",
          "documentation": "<p>The API mapping selection expression.</p>"
        },
        "DomainName": {
          "shape": "StringWithLengthBetween1And512",
          "locationName": "domainName",
          "documentation": "<p>The name of the DomainName resource.</p>"
        },
        "DomainNameConfigurations": {
          "shape": "DomainNameConfigurations",
          "locationName": "domainNameConfigurations",
          "documentation": "<p>The domain name configurations.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags associated with a domain name.</p>"
        }
      },
      "documentation": "<p>Represents a domain name.</p>",
      "required": [
        "DomainName"
      ]
    },
    "DomainNameConfiguration": {
      "type": "structure",
      "members": {
        "ApiGatewayDomainName": {
          "shape": "__string",
          "locationName": "apiGatewayDomainName",
          "documentation": "<p>A domain name for the API.</p>"
        },
        "CertificateArn": {
          "shape": "Arn",
          "locationName": "certificateArn",
          "documentation": "<p>An AWS-managed certificate that will be used by the edge-optimized endpoint for this domain name. AWS Certificate Manager is the only supported source.</p>"
        },
        "CertificateName": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "certificateName",
          "documentation": "<p>The user-friendly name of the certificate that will be used by the edge-optimized endpoint for this domain name.</p>"
        },
        "CertificateUploadDate": {
          "shape": "__timestampIso8601",
          "locationName": "certificateUploadDate",
          "documentation": "<p>The timestamp when the certificate that was used by edge-optimized endpoint for this domain name was uploaded.</p>"
        },
        "DomainNameStatus": {
          "shape": "DomainNameStatus",
          "locationName": "domainNameStatus",
          "documentation": "<p>The status of the domain name migration. The valid values are AVAILABLE and UPDATING. If the status is UPDATING, the domain cannot be modified further until the existing operation is complete. If it is AVAILABLE, the domain can be updated.</p>"
        },
        "DomainNameStatusMessage": {
          "shape": "__string",
          "locationName": "domainNameStatusMessage",
          "documentation": "<p>An optional text message containing detailed information about status of the domain name migration.</p>"
        },
        "EndpointType": {
          "shape": "EndpointType",
          "locationName": "endpointType",
          "documentation": "<p>The endpoint type.</p>"
        },
        "HostedZoneId": {
          "shape": "__string",
          "locationName": "hostedZoneId",
          "documentation": "<p>The Amazon Route 53 Hosted Zone ID of the endpoint.</p>"
        },
        "SecurityPolicy": {
          "shape": "SecurityPolicy",
          "locationName": "securityPolicy",
          "documentation": "<p>The Transport Layer Security (TLS) version of the security policy for this domain name. The valid values are TLS_1_0 and TLS_1_2.</p>"
        }
      },
      "documentation": "<p>The domain name configuration.</p>"
    },
    "DomainNameConfigurations": {
      "type": "list",
      "documentation": "<p>The domain name configurations.</p>",
      "member": {
        "shape": "DomainNameConfiguration"
      }
    },
    "DomainNameStatus": {
      "type": "string",
      "documentation": "<p>The status of the domain name migration. The valid values are AVAILABLE and UPDATING. If the status is UPDATING, the domain cannot be modified further until the existing operation is complete. If it is AVAILABLE, the domain can be updated.</p>",
      "enum": [
        "AVAILABLE",
        "UPDATING"
      ]
    },
    "EndpointType": {
      "type": "string",
      "documentation": "<p>Represents an endpoint type.</p>",
      "enum": [
        "REGIONAL",
        "EDGE"
      ]
    },
    "ExportApiRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ExportVersion": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "exportVersion",
          "documentation": "<p>The version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is 1.0.</p>"
        },
        "IncludeExtensions": {
          "shape": "__boolean",
          "location": "querystring",
          "locationName": "includeExtensions",
          "documentation": "<p>Specifies whether to include <a href=\"https://docs.aws.amazon.com//apigateway/latest/developerguide/api-gateway-swagger-extensions.html\">API Gateway extensions</a> in the exported API definition. API Gateway extensions are included by default.</p>"
        },
        "OutputType": {
          "shape": "__string",
          "enum": [
            "YAML",
            "JSON"
          ],
          "location": "querystring",
          "locationName": "outputType",
          "documentation": "<p>The output type of the exported definition file. Valid values are JSON and YAML.</p>"
        },
        "Specification": {
          "shape": "__string",
          "enum": [
            "OAS30"
          ],
          "location": "uri",
          "locationName": "specification",
          "documentation": "<p>The version of the API specification to use. OAS30, for OpenAPI 3.0, is the only supported value.</p>"
        },
        "StageName": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "stageName",
          "documentation": "<p>The name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.</p>"
        }
      },
      "required": [
        "Specification",
        "OutputType",
        "ApiId"
      ]
    },
    "ExportApiResponse": {
      "type": "structure",
      "members": {
        "body": {
          "shape": "ExportedApi"
        }
      },
      "payload": "body"
    },
    "ExportedApi": {
      "type": "blob",
      "documentation": "<p>Represents an exported definition of an API in a particular output format, for example, YAML. The API is serialized to the requested specification, for example, OpenAPI 3.0.</p>"
    },
    "ResetAuthorizersCacheRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "StageName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "stageName",
          "documentation": "<p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>"
        }
      },
      "required": [
        "StageName",
        "ApiId"
      ]
    },
    "GetApiMappingRequest": {
      "type": "structure",
      "members": {
        "ApiMappingId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiMappingId",
          "documentation": "<p>The API mapping identifier.</p>"
        },
        "DomainName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        }
      },
      "required": [
        "ApiMappingId",
        "DomainName"
      ]
    },
    "GetApiMappingResponse": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiMappingId": {
          "shape": "Id",
          "locationName": "apiMappingId",
          "documentation": "<p>The API mapping identifier.</p>"
        },
        "ApiMappingKey": {
          "shape": "SelectionKey",
          "locationName": "apiMappingKey",
          "documentation": "<p>The API mapping key.</p>"
        },
        "Stage": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stage",
          "documentation": "<p>The API stage.</p>"
        }
      }
    },
    "GetApiMappingsRequest": {
      "type": "structure",
      "members": {
        "DomainName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      },
      "required": [
        "DomainName"
      ]
    },
    "GetApiMappingsResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfApiMapping",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetApiRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "GetApiResponse": {
      "type": "structure",
      "members": {
        "ApiEndpoint": {
          "shape": "__string",
          "locationName": "apiEndpoint",
          "documentation": "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
        },
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API ID.</p>"
        },
        "ApiKeySelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiKeySelectionExpression",
          "documentation": "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
        },
        "CorsConfiguration": {
          "shape": "Cors",
          "locationName": "corsConfiguration",
          "documentation": "<p>A CORS configuration. Supported only for HTTP APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the API was created.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the API.</p>"
        },
        "DisableSchemaValidation": {
          "shape": "__boolean",
          "locationName": "disableSchemaValidation",
          "documentation": "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
        },
        "ImportInfo": {
          "shape": "__listOf__string",
          "locationName": "importInfo",
          "documentation": "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the API.</p>"
        },
        "ProtocolType": {
          "shape": "ProtocolType",
          "locationName": "protocolType",
          "documentation": "<p>The API protocol.</p>"
        },
        "RouteSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeSelectionExpression",
          "documentation": "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>A collection of tags associated with the API.</p>"
        },
        "Version": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "version",
          "documentation": "<p>A version identifier for the API.</p>"
        },
        "Warnings": {
          "shape": "__listOf__string",
          "locationName": "warnings",
          "documentation": "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
        }
      }
    },
    "GetApisRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetApisResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfApi",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetAuthorizerRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "AuthorizerId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "authorizerId",
          "documentation": "<p>The authorizer identifier.</p>"
        }
      },
      "required": [
        "AuthorizerId",
        "ApiId"
      ]
    },
    "GetAuthorizerResponse": {
      "type": "structure",
      "members": {
        "AuthorizerCredentialsArn": {
          "shape": "Arn",
          "locationName": "authorizerCredentialsArn",
          "documentation": "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The authorizer identifier.</p>"
        },
        "AuthorizerPayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "authorizerPayloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
        },
        "AuthorizerResultTtlInSeconds": {
          "shape": "IntegerWithLengthBetween0And3600",
          "locationName": "authorizerResultTtlInSeconds",
          "documentation": "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
        },
        "AuthorizerType": {
          "shape": "AuthorizerType",
          "locationName": "authorizerType",
          "documentation": "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
        },
        "AuthorizerUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "authorizerUri",
          "documentation": "<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>\n               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>"
        },
        "EnableSimpleResponses": {
          "shape": "__boolean",
          "locationName": "enableSimpleResponses",
          "documentation": "<p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
        },
        "IdentitySource": {
          "shape": "IdentitySourceList",
          "locationName": "identitySource",
          "documentation": "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
        },
        "IdentityValidationExpression": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "identityValidationExpression",
          "documentation": "<p>The validation expression does not apply to the REQUEST authorizer.</p>"
        },
        "JwtConfiguration": {
          "shape": "JWTConfiguration",
          "locationName": "jwtConfiguration",
          "documentation": "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the authorizer.</p>"
        }
      }
    },
    "GetAuthorizersRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "GetAuthorizersResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfAuthorizer",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetDeploymentRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "DeploymentId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deploymentId",
          "documentation": "<p>The deployment ID.</p>"
        }
      },
      "required": [
        "ApiId",
        "DeploymentId"
      ]
    },
    "GetDeploymentResponse": {
      "type": "structure",
      "members": {
        "AutoDeployed": {
          "shape": "__boolean",
          "locationName": "autoDeployed",
          "documentation": "<p>Specifies whether a deployment was automatically released.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The date and time when the Deployment resource was created.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The identifier for the deployment.</p>"
        },
        "DeploymentStatus": {
          "shape": "DeploymentStatus",
          "locationName": "deploymentStatus",
          "documentation": "<p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>"
        },
        "DeploymentStatusMessage": {
          "shape": "__string",
          "locationName": "deploymentStatusMessage",
          "documentation": "<p>May contain additional feedback on the status of an API deployment.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description for the deployment.</p>"
        }
      }
    },
    "GetDeploymentsRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "GetDeploymentsResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfDeployment",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetDomainNameRequest": {
      "type": "structure",
      "members": {
        "DomainName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        }
      },
      "required": [
        "DomainName"
      ]
    },
    "GetDomainNameResponse": {
      "type": "structure",
      "members": {
        "ApiMappingSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiMappingSelectionExpression",
          "documentation": "<p>The API mapping selection expression.</p>"
        },
        "DomainName": {
          "shape": "StringWithLengthBetween1And512",
          "locationName": "domainName",
          "documentation": "<p>The name of the DomainName resource.</p>"
        },
        "DomainNameConfigurations": {
          "shape": "DomainNameConfigurations",
          "locationName": "domainNameConfigurations",
          "documentation": "<p>The domain name configurations.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags associated with a domain name.</p>"
        }
      }
    },
    "GetDomainNamesRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetDomainNamesResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfDomainName",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetIntegrationRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "IntegrationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationId",
          "documentation": "<p>The integration ID.</p>"
        }
      },
      "required": [
        "ApiId",
        "IntegrationId"
      ]
    },
    "GetIntegrationResult": {
      "type": "structure",
      "members": {
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>"
        },
        "ConnectionId": {
          "shape": "StringWithLengthBetween1And1024",
          "locationName": "connectionId",
          "documentation": "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "locationName": "connectionType",
          "documentation": "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
        },
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "CredentialsArn": {
          "shape": "Arn",
          "locationName": "credentialsArn",
          "documentation": "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>Represents the description of an integration.</p>"
        },
        "IntegrationId": {
          "shape": "Id",
          "locationName": "integrationId",
          "documentation": "<p>Represents the identifier of an integration.</p>"
        },
        "IntegrationMethod": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "integrationMethod",
          "documentation": "<p>Specifies the integration's HTTP method type.</p>"
        },
        "IntegrationResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "integrationResponseSelectionExpression",
          "documentation": "<p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions\">Integration Response Selection Expressions</a>.</p>"
        },
        "IntegrationSubtype": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "integrationSubtype",
          "documentation": "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
        },
        "IntegrationType": {
          "shape": "IntegrationType",
          "locationName": "integrationType",
          "documentation": "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
        },
        "IntegrationUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "integrationUri",
          "documentation": "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
        },
        "PassthroughBehavior": {
          "shape": "PassthroughBehavior",
          "locationName": "passthroughBehavior",
          "documentation": "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
        },
        "PayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "payloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
        },
        "RequestParameters": {
          "shape": "IntegrationParameters",
          "locationName": "requestParameters",
          "documentation": "<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>\n              , where  <replaceable>{location}</replaceable>  is querystring, path, or header; and <replaceable>{name}</replaceable> must be a valid and unique method request parameter name.</p> <p>For HTTP APIs, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations with a specified integrationSubtype. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p>"
        },
        "RequestTemplates": {
          "shape": "TemplateMap",
          "locationName": "requestTemplates",
          "documentation": "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>"
        },
        "TimeoutInMillis": {
          "shape": "IntegerWithLengthBetween50And30000",
          "locationName": "timeoutInMillis",
          "documentation": "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
        },
        "TlsConfig": {
          "shape": "TlsConfig",
          "locationName": "tlsConfig",
          "documentation": "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
        }
      }
    },
    "GetIntegrationResponseRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "IntegrationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationId",
          "documentation": "<p>The integration ID.</p>"
        },
        "IntegrationResponseId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationResponseId",
          "documentation": "<p>The integration response ID.</p>"
        }
      },
      "required": [
        "ApiId",
        "IntegrationResponseId",
        "IntegrationId"
      ]
    },
    "GetIntegrationResponseResponse": {
      "type": "structure",
      "members": {
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "IntegrationResponseId": {
          "shape": "Id",
          "locationName": "integrationResponseId",
          "documentation": "<p>The integration response ID.</p>"
        },
        "IntegrationResponseKey": {
          "shape": "SelectionKey",
          "locationName": "integrationResponseKey",
          "documentation": "<p>The integration response key.</p>"
        },
        "ResponseParameters": {
          "shape": "IntegrationParameters",
          "locationName": "responseParameters",
          "documentation": "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>"
        },
        "ResponseTemplates": {
          "shape": "TemplateMap",
          "locationName": "responseTemplates",
          "documentation": "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expressions for the integration response.</p>"
        }
      }
    },
    "GetIntegrationResponsesRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "IntegrationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationId",
          "documentation": "<p>The integration ID.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      },
      "required": [
        "IntegrationId",
        "ApiId"
      ]
    },
    "GetIntegrationResponsesResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfIntegrationResponse",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetIntegrationsRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "GetIntegrationsResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfIntegration",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetModelRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ModelId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "modelId",
          "documentation": "<p>The model ID.</p>"
        }
      },
      "required": [
        "ModelId",
        "ApiId"
      ]
    },
    "GetModelResponse": {
      "type": "structure",
      "members": {
        "ContentType": {
          "shape": "StringWithLengthBetween1And256",
          "locationName": "contentType",
          "documentation": "<p>The content-type for the model, for example, \"application/json\".</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the model.</p>"
        },
        "ModelId": {
          "shape": "Id",
          "locationName": "modelId",
          "documentation": "<p>The model identifier.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the model. Must be alphanumeric.</p>"
        },
        "Schema": {
          "shape": "StringWithLengthBetween0And32K",
          "locationName": "schema",
          "documentation": "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
        }
      }
    },
    "GetModelTemplateRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ModelId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "modelId",
          "documentation": "<p>The model ID.</p>"
        }
      },
      "required": [
        "ModelId",
        "ApiId"
      ]
    },
    "GetModelTemplateResponse": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "__string",
          "locationName": "value",
          "documentation": "<p>The template value.</p>"
        }
      }
    },
    "GetModelsRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "GetModelsResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfModel",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetRouteRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        }
      },
      "required": [
        "ApiId",
        "RouteId"
      ]
    },
    "GetRouteResult": {
      "type": "structure",
      "members": {
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>"
        },
        "ApiKeyRequired": {
          "shape": "__boolean",
          "locationName": "apiKeyRequired",
          "documentation": "<p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>"
        },
        "AuthorizationScopes": {
          "shape": "AuthorizationScopes",
          "locationName": "authorizationScopes",
          "documentation": "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
        },
        "AuthorizationType": {
          "shape": "AuthorizationType",
          "locationName": "authorizationType",
          "documentation": "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
        },
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "OperationName": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "operationName",
          "documentation": "<p>The operation name for the route.</p>"
        },
        "RequestModels": {
          "shape": "RouteModels",
          "locationName": "requestModels",
          "documentation": "<p>The request models for the route. Supported only for WebSocket APIs.</p>"
        },
        "RequestParameters": {
          "shape": "RouteParameters",
          "locationName": "requestParameters",
          "documentation": "<p>The request parameters for the route. Supported only for WebSocket APIs.</p>"
        },
        "RouteId": {
          "shape": "Id",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteKey": {
          "shape": "SelectionKey",
          "locationName": "routeKey",
          "documentation": "<p>The route key for the route.</p>"
        },
        "RouteResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeResponseSelectionExpression",
          "documentation": "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "Target": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "target",
          "documentation": "<p>The target for the route.</p>"
        }
      }
    },
    "GetRouteResponseRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteResponseId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeResponseId",
          "documentation": "<p>The route response ID.</p>"
        }
      },
      "required": [
        "RouteResponseId",
        "ApiId",
        "RouteId"
      ]
    },
    "GetRouteResponseResponse": {
      "type": "structure",
      "members": {
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>"
        },
        "ResponseModels": {
          "shape": "RouteModels",
          "locationName": "responseModels",
          "documentation": "<p>Represents the response models of a route response.</p>"
        },
        "ResponseParameters": {
          "shape": "RouteParameters",
          "locationName": "responseParameters",
          "documentation": "<p>Represents the response parameters of a route response.</p>"
        },
        "RouteResponseId": {
          "shape": "Id",
          "locationName": "routeResponseId",
          "documentation": "<p>Represents the identifier of a route response.</p>"
        },
        "RouteResponseKey": {
          "shape": "SelectionKey",
          "locationName": "routeResponseKey",
          "documentation": "<p>Represents the route response key of a route response.</p>"
        }
      }
    },
    "GetRouteResponsesRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        }
      },
      "required": [
        "RouteId",
        "ApiId"
      ]
    },
    "GetRouteResponsesResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfRouteResponse",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetRoutesRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "GetRoutesResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfRoute",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetStageRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "StageName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "stageName",
          "documentation": "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
        }
      },
      "required": [
        "StageName",
        "ApiId"
      ]
    },
    "GetStageResponse": {
      "type": "structure",
      "members": {
        "AccessLogSettings": {
          "shape": "AccessLogSettings",
          "locationName": "accessLogSettings",
          "documentation": "<p>Settings for logging access in this stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>"
        },
        "AutoDeploy": {
          "shape": "__boolean",
          "locationName": "autoDeploy",
          "documentation": "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
        },
        "ClientCertificateId": {
          "shape": "Id",
          "locationName": "clientCertificateId",
          "documentation": "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the stage was created.</p>"
        },
        "DefaultRouteSettings": {
          "shape": "RouteSettings",
          "locationName": "defaultRouteSettings",
          "documentation": "<p>Default route settings for the stage.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the stage.</p>"
        },
        "LastDeploymentStatusMessage": {
          "shape": "__string",
          "locationName": "lastDeploymentStatusMessage",
          "documentation": "<p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>"
        },
        "LastUpdatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "lastUpdatedDate",
          "documentation": "<p>The timestamp when the stage was last updated.</p>"
        },
        "RouteSettings": {
          "shape": "RouteSettingsMap",
          "locationName": "routeSettings",
          "documentation": "<p>Route settings for the stage, by routeKey.</p>"
        },
        "StageName": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stageName",
          "documentation": "<p>The name of the stage.</p>"
        },
        "StageVariables": {
          "shape": "StageVariablesMap",
          "locationName": "stageVariables",
          "documentation": "<p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
        }
      }
    },
    "GetStagesRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      },
      "required": [
        "ApiId"
      ]
    },
    "GetStagesResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfStage",
          "locationName": "items",
          "documentation": "<p>The elements from this collection.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetTagsRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>The resource ARN for the tag.</p>"
        }
      },
      "required": [
        "ResourceArn"
      ]
    },
    "GetTagsResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "locationName": "tags"
        }
      }
    },
    "GetVpcLinkRequest": {
      "type": "structure",
      "members": {
        "VpcLinkId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "vpcLinkId",
          "documentation": "<p>The ID of the VPC link.</p>"
        }
      },
      "required": [
        "VpcLinkId"
      ]
    },
    "GetVpcLinkResponse": {
      "type": "structure",
      "members": {
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the VPC link was created.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the VPC link.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIdList",
          "locationName": "securityGroupIds",
          "documentation": "<p>A list of security group IDs for the VPC link.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdList",
          "locationName": "subnetIds",
          "documentation": "<p>A list of subnet IDs to include in the VPC link.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>Tags for the VPC link.</p>"
        },
        "VpcLinkId": {
          "shape": "Id",
          "locationName": "vpcLinkId",
          "documentation": "<p>The ID of the VPC link.</p>"
        },
        "VpcLinkStatus": {
          "shape": "VpcLinkStatus",
          "locationName": "vpcLinkStatus",
          "documentation": "<p>The status of the VPC link.</p>"
        },
        "VpcLinkStatusMessage": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "vpcLinkStatusMessage",
          "documentation": "<p>A message summarizing the cause of the status of the VPC link.</p>"
        },
        "VpcLinkVersion": {
          "shape": "VpcLinkVersion",
          "locationName": "vpcLinkVersion",
          "documentation": "<p>The version of the VPC link.</p>"
        }
      }
    },
    "GetVpcLinksRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of elements to be returned for this resource.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "GetVpcLinksResponse": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "__listOfVpcLink",
          "locationName": "items",
          "documentation": "<p>A collection of VPC links.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "locationName": "nextToken",
          "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
        }
      }
    },
    "Id": {
      "type": "string",
      "documentation": "<p>The identifier.</p>"
    },
    "IdentitySourceList": {
      "type": "list",
      "documentation": "<p>The identity source for which authorization is requested. For the REQUEST authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an Auth header, a Name query string parameter are defined as identity sources, this value is $method.request.header.Auth, $method.request.querystring.Name. These parameters will be used to derive the authorization caching key and to perform runtime validation of the REQUEST authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.</p>",
      "member": {
        "shape": "__string"
      }
    },
    "ImportApiRequest": {
      "type": "structure",
      "members": {
        "Basepath": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "basepath",
          "documentation": "<p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html\">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>"
        },
        "Body": {
          "shape": "__string",
          "locationName": "body",
          "documentation": "<p>The OpenAPI definition. Supported only for HTTP APIs.</p>"
        },
        "FailOnWarnings": {
          "shape": "__boolean",
          "location": "querystring",
          "locationName": "failOnWarnings",
          "documentation": "<p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>"
        }
      },
      "documentation": "<p></p>",
      "required": [
        "Body"
      ]
    },
    "ImportApiResponse": {
      "type": "structure",
      "members": {
        "ApiEndpoint": {
          "shape": "__string",
          "locationName": "apiEndpoint",
          "documentation": "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
        },
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API ID.</p>"
        },
        "ApiKeySelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiKeySelectionExpression",
          "documentation": "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
        },
        "CorsConfiguration": {
          "shape": "Cors",
          "locationName": "corsConfiguration",
          "documentation": "<p>A CORS configuration. Supported only for HTTP APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the API was created.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the API.</p>"
        },
        "DisableSchemaValidation": {
          "shape": "__boolean",
          "locationName": "disableSchemaValidation",
          "documentation": "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
        },
        "ImportInfo": {
          "shape": "__listOf__string",
          "locationName": "importInfo",
          "documentation": "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the API.</p>"
        },
        "ProtocolType": {
          "shape": "ProtocolType",
          "locationName": "protocolType",
          "documentation": "<p>The API protocol.</p>"
        },
        "RouteSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeSelectionExpression",
          "documentation": "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>A collection of tags associated with the API.</p>"
        },
        "Version": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "version",
          "documentation": "<p>A version identifier for the API.</p>"
        },
        "Warnings": {
          "shape": "__listOf__string",
          "locationName": "warnings",
          "documentation": "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
        }
      }
    },
    "IntegerWithLengthBetween0And3600": {
      "type": "integer",
      "documentation": "<p>An integer with a value between [0-3600].</p>",
      "min": 0,
      "max": 3600
    },
    "IntegerWithLengthBetween50And30000": {
      "type": "integer",
      "documentation": "<p>An integer with a value between [50-30000].</p>",
      "min": 50,
      "max": 30000
    },
    "IntegerWithLengthBetweenMinus1And86400": {
      "type": "integer",
      "documentation": "<p>An integer with a value between -1 and 86400. Supported only for HTTP APIs.</p>",
      "min": -1,
      "max": 86400
    },
    "Integration": {
      "type": "structure",
      "members": {
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>"
        },
        "ConnectionId": {
          "shape": "StringWithLengthBetween1And1024",
          "locationName": "connectionId",
          "documentation": "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "locationName": "connectionType",
          "documentation": "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
        },
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "CredentialsArn": {
          "shape": "Arn",
          "locationName": "credentialsArn",
          "documentation": "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>Represents the description of an integration.</p>"
        },
        "IntegrationId": {
          "shape": "Id",
          "locationName": "integrationId",
          "documentation": "<p>Represents the identifier of an integration.</p>"
        },
        "IntegrationMethod": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "integrationMethod",
          "documentation": "<p>Specifies the integration's HTTP method type.</p>"
        },
        "IntegrationResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "integrationResponseSelectionExpression",
          "documentation": "<p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions\">Integration Response Selection Expressions</a>.</p>"
        },
        "IntegrationSubtype": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "integrationSubtype",
          "documentation": "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
        },
        "IntegrationType": {
          "shape": "IntegrationType",
          "locationName": "integrationType",
          "documentation": "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
        },
        "IntegrationUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "integrationUri",
          "documentation": "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
        },
        "PassthroughBehavior": {
          "shape": "PassthroughBehavior",
          "locationName": "passthroughBehavior",
          "documentation": "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
        },
        "PayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "payloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
        },
        "RequestParameters": {
          "shape": "IntegrationParameters",
          "locationName": "requestParameters",
          "documentation": "<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>\n              , where  <replaceable>{location}</replaceable>  is querystring, path, or header; and <replaceable>{name}</replaceable> must be a valid and unique method request parameter name.</p> <p>For HTTP APIs, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations with a specified integrationSubtype. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p>"
        },
        "RequestTemplates": {
          "shape": "TemplateMap",
          "locationName": "requestTemplates",
          "documentation": "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>"
        },
        "TimeoutInMillis": {
          "shape": "IntegerWithLengthBetween50And30000",
          "locationName": "timeoutInMillis",
          "documentation": "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
        },
        "TlsConfig": {
          "shape": "TlsConfig",
          "locationName": "tlsConfig",
          "documentation": "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
        }
      },
      "documentation": "<p>Represents an integration.</p>"
    },
    "IntegrationParameters": {
      "type": "map",
      "documentation": "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "StringWithLengthBetween1And512"
      }
    },
    "IntegrationResponse": {
      "type": "structure",
      "members": {
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "IntegrationResponseId": {
          "shape": "Id",
          "locationName": "integrationResponseId",
          "documentation": "<p>The integration response ID.</p>"
        },
        "IntegrationResponseKey": {
          "shape": "SelectionKey",
          "locationName": "integrationResponseKey",
          "documentation": "<p>The integration response key.</p>"
        },
        "ResponseParameters": {
          "shape": "IntegrationParameters",
          "locationName": "responseParameters",
          "documentation": "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>"
        },
        "ResponseTemplates": {
          "shape": "TemplateMap",
          "locationName": "responseTemplates",
          "documentation": "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expressions for the integration response.</p>"
        }
      },
      "documentation": "<p>Represents an integration response.</p>",
      "required": [
        "IntegrationResponseKey"
      ]
    },
    "IntegrationType": {
      "type": "string",
      "documentation": "<p>Represents an API method integration type.</p>",
      "enum": [
        "AWS",
        "HTTP",
        "MOCK",
        "HTTP_PROXY",
        "AWS_PROXY"
      ]
    },
    "JWTConfiguration": {
      "type": "structure",
      "members": {
        "Audience": {
          "shape": "__listOf__string",
          "locationName": "audience",
          "documentation": "<p>A list of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list. See <a href=\"https://tools.ietf.org/html/rfc7519#section-4.1.3\">RFC 7519</a>. Supported only for HTTP APIs.</p>"
        },
        "Issuer": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "issuer",
          "documentation": "<p>The base domain of the identity provider that issues JSON Web Tokens. For example, an Amazon Cognito user pool has the following format: https://cognito-idp.<replaceable>{region}</replaceable>.amazonaws.com/<replaceable>{userPoolId}</replaceable>\n               . Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
        }
      },
      "documentation": "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
    },
    "LoggingLevel": {
      "type": "string",
      "documentation": "<p>The logging level.</p>",
      "enum": [
        "ERROR",
        "INFO",
        "OFF"
      ]
    },
    "Model": {
      "type": "structure",
      "members": {
        "ContentType": {
          "shape": "StringWithLengthBetween1And256",
          "locationName": "contentType",
          "documentation": "<p>The content-type for the model, for example, \"application/json\".</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the model.</p>"
        },
        "ModelId": {
          "shape": "Id",
          "locationName": "modelId",
          "documentation": "<p>The model identifier.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the model. Must be alphanumeric.</p>"
        },
        "Schema": {
          "shape": "StringWithLengthBetween0And32K",
          "locationName": "schema",
          "documentation": "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
        }
      },
      "documentation": "<p>Represents a data model for an API. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/models-mappings.html\">Create Models and Mapping Templates for Request and Response Mappings</a>.</p>",
      "required": [
        "Name"
      ]
    },
    "NextToken": {
      "type": "string",
      "documentation": "<p>The next page of elements from this collection. Not valid for the last element of the collection.</p>"
    },
    "ParameterConstraints": {
      "type": "structure",
      "members": {
        "Required": {
          "shape": "__boolean",
          "locationName": "required",
          "documentation": "<p>Whether or not the parameter is required.</p>"
        }
      },
      "documentation": "<p>Validation constraints imposed on parameters of a request (path, query string, headers).</p>"
    },
    "PassthroughBehavior": {
      "type": "string",
      "documentation": "<p>Represents passthrough behavior for an integration response. Supported only for WebSocket APIs.</p>",
      "enum": [
        "WHEN_NO_MATCH",
        "NEVER",
        "WHEN_NO_TEMPLATES"
      ]
    },
    "ProtocolType": {
      "type": "string",
      "documentation": "Represents a protocol type.",
      "enum": [
        "WEBSOCKET",
        "HTTP"
      ]
    },
    "ReimportApiRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "Basepath": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "basepath",
          "documentation": "<p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html\">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>"
        },
        "Body": {
          "shape": "__string",
          "locationName": "body",
          "documentation": "<p>The OpenAPI definition. Supported only for HTTP APIs.</p>"
        },
        "FailOnWarnings": {
          "shape": "__boolean",
          "location": "querystring",
          "locationName": "failOnWarnings",
          "documentation": "<p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>"
        }
      },
      "documentation": "<p></p>",
      "required": [
        "ApiId",
        "Body"
      ]
    },
    "ReimportApiResponse": {
      "type": "structure",
      "members": {
        "ApiEndpoint": {
          "shape": "__string",
          "locationName": "apiEndpoint",
          "documentation": "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
        },
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API ID.</p>"
        },
        "ApiKeySelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiKeySelectionExpression",
          "documentation": "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
        },
        "CorsConfiguration": {
          "shape": "Cors",
          "locationName": "corsConfiguration",
          "documentation": "<p>A CORS configuration. Supported only for HTTP APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the API was created.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the API.</p>"
        },
        "DisableSchemaValidation": {
          "shape": "__boolean",
          "locationName": "disableSchemaValidation",
          "documentation": "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
        },
        "ImportInfo": {
          "shape": "__listOf__string",
          "locationName": "importInfo",
          "documentation": "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the API.</p>"
        },
        "ProtocolType": {
          "shape": "ProtocolType",
          "locationName": "protocolType",
          "documentation": "<p>The API protocol.</p>"
        },
        "RouteSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeSelectionExpression",
          "documentation": "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>A collection of tags associated with the API.</p>"
        },
        "Version": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "version",
          "documentation": "<p>A version identifier for the API.</p>"
        },
        "Warnings": {
          "shape": "__listOf__string",
          "locationName": "warnings",
          "documentation": "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
        }
      }
    },
    "Route": {
      "type": "structure",
      "members": {
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>"
        },
        "ApiKeyRequired": {
          "shape": "__boolean",
          "locationName": "apiKeyRequired",
          "documentation": "<p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>"
        },
        "AuthorizationScopes": {
          "shape": "AuthorizationScopes",
          "locationName": "authorizationScopes",
          "documentation": "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
        },
        "AuthorizationType": {
          "shape": "AuthorizationType",
          "locationName": "authorizationType",
          "documentation": "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
        },
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "OperationName": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "operationName",
          "documentation": "<p>The operation name for the route.</p>"
        },
        "RequestModels": {
          "shape": "RouteModels",
          "locationName": "requestModels",
          "documentation": "<p>The request models for the route. Supported only for WebSocket APIs.</p>"
        },
        "RequestParameters": {
          "shape": "RouteParameters",
          "locationName": "requestParameters",
          "documentation": "<p>The request parameters for the route. Supported only for WebSocket APIs.</p>"
        },
        "RouteId": {
          "shape": "Id",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteKey": {
          "shape": "SelectionKey",
          "locationName": "routeKey",
          "documentation": "<p>The route key for the route.</p>"
        },
        "RouteResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeResponseSelectionExpression",
          "documentation": "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "Target": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "target",
          "documentation": "<p>The target for the route.</p>"
        }
      },
      "documentation": "<p>Represents a route.</p>",
      "required": [
        "RouteKey"
      ]
    },
    "RouteModels": {
      "type": "map",
      "documentation": "<p>The route models.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "StringWithLengthBetween1And128"
      }
    },
    "RouteParameters": {
      "type": "map",
      "documentation": "<p>The route parameters.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "ParameterConstraints"
      }
    },
    "RouteResponse": {
      "type": "structure",
      "members": {
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>"
        },
        "ResponseModels": {
          "shape": "RouteModels",
          "locationName": "responseModels",
          "documentation": "<p>Represents the response models of a route response.</p>"
        },
        "ResponseParameters": {
          "shape": "RouteParameters",
          "locationName": "responseParameters",
          "documentation": "<p>Represents the response parameters of a route response.</p>"
        },
        "RouteResponseId": {
          "shape": "Id",
          "locationName": "routeResponseId",
          "documentation": "<p>Represents the identifier of a route response.</p>"
        },
        "RouteResponseKey": {
          "shape": "SelectionKey",
          "locationName": "routeResponseKey",
          "documentation": "<p>Represents the route response key of a route response.</p>"
        }
      },
      "documentation": "<p>Represents a route response.</p>",
      "required": [
        "RouteResponseKey"
      ]
    },
    "RouteSettings": {
      "type": "structure",
      "members": {
        "DataTraceEnabled": {
          "shape": "__boolean",
          "locationName": "dataTraceEnabled",
          "documentation": "<p>Specifies whether (true) or not (false) data trace logging is enabled for this route. This property affects the log entries pushed to Amazon CloudWatch Logs. Supported only for WebSocket APIs.</p>"
        },
        "DetailedMetricsEnabled": {
          "shape": "__boolean",
          "locationName": "detailedMetricsEnabled",
          "documentation": "<p>Specifies whether detailed metrics are enabled.</p>"
        },
        "LoggingLevel": {
          "shape": "LoggingLevel",
          "locationName": "loggingLevel",
          "documentation": "<p>Specifies the logging level for this route: INFO, ERROR, or OFF. This property affects the log entries pushed to Amazon CloudWatch Logs. Supported only for WebSocket APIs.</p>"
        },
        "ThrottlingBurstLimit": {
          "shape": "__integer",
          "locationName": "throttlingBurstLimit",
          "documentation": "<p>Specifies the throttling burst limit.</p>"
        },
        "ThrottlingRateLimit": {
          "shape": "__double",
          "locationName": "throttlingRateLimit",
          "documentation": "<p>Specifies the throttling rate limit.</p>"
        }
      },
      "documentation": "<p>Represents a collection of route settings.</p>"
    },
    "RouteSettingsMap": {
      "type": "map",
      "documentation": "<p>The route settings map.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "RouteSettings"
      }
    },
    "SecurityGroupIdList": {
      "type": "list",
      "documentation": "<p>A list of security group IDs for the VPC link.</p>",
      "member": {
        "shape": "__string"
      }
    },
    "SecurityPolicy": {
      "type": "string",
      "documentation": "<p>The Transport Layer Security (TLS) version of the security policy for this domain name. The valid values are TLS_1_0 and TLS_1_2.</p>",
      "enum": [
        "TLS_1_0",
        "TLS_1_2"
      ]
    },
    "SelectionExpression": {
      "type": "string",
      "documentation": "<p>An expression used to extract information at runtime. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">Selection Expressions</a> for more information.</p>"
    },
    "SelectionKey": {
      "type": "string",
      "documentation": "<p>After evaluating a selection expression, the result is compared against one or more selection keys to find a matching key. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">Selection Expressions</a> for a list of expressions and each expression's associated selection key type.</p>"
    },
    "Stage": {
      "type": "structure",
      "members": {
        "AccessLogSettings": {
          "shape": "AccessLogSettings",
          "locationName": "accessLogSettings",
          "documentation": "<p>Settings for logging access in this stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>"
        },
        "AutoDeploy": {
          "shape": "__boolean",
          "locationName": "autoDeploy",
          "documentation": "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
        },
        "ClientCertificateId": {
          "shape": "Id",
          "locationName": "clientCertificateId",
          "documentation": "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the stage was created.</p>"
        },
        "DefaultRouteSettings": {
          "shape": "RouteSettings",
          "locationName": "defaultRouteSettings",
          "documentation": "<p>Default route settings for the stage.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the stage.</p>"
        },
        "LastDeploymentStatusMessage": {
          "shape": "__string",
          "locationName": "lastDeploymentStatusMessage",
          "documentation": "<p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>"
        },
        "LastUpdatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "lastUpdatedDate",
          "documentation": "<p>The timestamp when the stage was last updated.</p>"
        },
        "RouteSettings": {
          "shape": "RouteSettingsMap",
          "locationName": "routeSettings",
          "documentation": "<p>Route settings for the stage, by routeKey.</p>"
        },
        "StageName": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stageName",
          "documentation": "<p>The name of the stage.</p>"
        },
        "StageVariables": {
          "shape": "StageVariablesMap",
          "locationName": "stageVariables",
          "documentation": "<p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
        }
      },
      "documentation": "<p>Represents an API stage.</p>",
      "required": [
        "StageName"
      ]
    },
    "StageVariablesMap": {
      "type": "map",
      "documentation": "<p>The stage variable map.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "StringWithLengthBetween0And2048"
      }
    },
    "StringWithLengthBetween0And1024": {
      "type": "string",
      "documentation": "<p>A string with a length between [0-1024].</p>"
    },
    "StringWithLengthBetween0And2048": {
      "type": "string",
      "documentation": "<p>A string with a length between [0-2048].</p>"
    },
    "StringWithLengthBetween0And32K": {
      "type": "string",
      "documentation": "<p>A string with a length between [0-32768].</p>"
    },
    "StringWithLengthBetween1And1024": {
      "type": "string",
      "documentation": "<p>A string with a length between [1-1024].</p>"
    },
    "StringWithLengthBetween1And128": {
      "type": "string",
      "documentation": "<p>A string with a length between [1-128].</p>"
    },
    "StringWithLengthBetween1And1600": {
      "type": "string",
      "documentation": "<p>A string with a length between [0-1600].</p>"
    },
    "StringWithLengthBetween1And256": {
      "type": "string",
      "documentation": "<p>A string with a length between [1-256].</p>"
    },
    "StringWithLengthBetween1And512": {
      "type": "string",
      "documentation": "<p>A string with a length between [1-512].</p>"
    },
    "StringWithLengthBetween1And64": {
      "type": "string",
      "documentation": "<p>A string with a length between [1-64].</p>"
    },
    "SubnetIdList": {
      "type": "list",
      "documentation": "<p>A list of subnet IDs to include in the VPC link.</p>",
      "member": {
        "shape": "__string"
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>The resource ARN for the tag.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
        }
      },
      "documentation": "<p>Creates a new Tag resource to represent a tag.</p>",
      "required": [
        "ResourceArn"
      ]
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "Tags": {
      "type": "map",
      "documentation": "<p>Represents a collection of tags associated with the resource.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "StringWithLengthBetween1And1600"
      }
    },
    "TemplateMap": {
      "type": "map",
      "documentation": "<p>A mapping of identifier keys to templates. The value is an actual template script. The key is typically a SelectionKey which is chosen based on evaluating a selection expression.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "StringWithLengthBetween0And32K"
      }
    },
    "TlsConfig": {
      "type": "structure",
      "members": {
        "ServerNameToVerify": {
          "shape": "StringWithLengthBetween1And512",
          "locationName": "serverNameToVerify",
          "documentation": "<p>If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.</p>"
        }
      },
      "documentation": "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
    },
    "TlsConfigInput": {
      "type": "structure",
      "members": {
        "ServerNameToVerify": {
          "shape": "StringWithLengthBetween1And512",
          "locationName": "serverNameToVerify",
          "documentation": "<p>If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.</p>"
        }
      },
      "documentation": "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>The resource ARN for the tag.</p>"
        },
        "TagKeys": {
          "shape": "__listOf__string",
          "location": "querystring",
          "locationName": "tagKeys",
          "documentation": "<p>The Tag keys to delete</p>"
        }
      },
      "required": [
        "ResourceArn",
        "TagKeys"
      ]
    },
    "UpdateApiMappingRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiMappingId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiMappingId",
          "documentation": "<p>The API mapping identifier.</p>"
        },
        "ApiMappingKey": {
          "shape": "SelectionKey",
          "locationName": "apiMappingKey",
          "documentation": "<p>The API mapping key.</p>"
        },
        "DomainName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        },
        "Stage": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stage",
          "documentation": "<p>The API stage.</p>"
        }
      },
      "documentation": "<p>Updates an ApiMapping.</p>",
      "required": [
        "ApiMappingId",
        "ApiId",
        "DomainName"
      ]
    },
    "UpdateApiMappingResponse": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiMappingId": {
          "shape": "Id",
          "locationName": "apiMappingId",
          "documentation": "<p>The API mapping identifier.</p>"
        },
        "ApiMappingKey": {
          "shape": "SelectionKey",
          "locationName": "apiMappingKey",
          "documentation": "<p>The API mapping key.</p>"
        },
        "Stage": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stage",
          "documentation": "<p>The API stage.</p>"
        }
      }
    },
    "UpdateApiRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiKeySelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiKeySelectionExpression",
          "documentation": "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
        },
        "CorsConfiguration": {
          "shape": "Cors",
          "locationName": "corsConfiguration",
          "documentation": "<p>A CORS configuration. Supported only for HTTP APIs.</p>"
        },
        "CredentialsArn": {
          "shape": "Arn",
          "locationName": "credentialsArn",
          "documentation": "<p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. If provided, this value replaces the credentials associated with the quick create integration. Supported only for HTTP APIs.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the API.</p>"
        },
        "DisableSchemaValidation": {
          "shape": "__boolean",
          "locationName": "disableSchemaValidation",
          "documentation": "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the API.</p>"
        },
        "RouteKey": {
          "shape": "SelectionKey",
          "locationName": "routeKey",
          "documentation": "<p>This property is part of quick create. If not specified, the route created using quick create is kept. Otherwise, this value replaces the route key of the quick create route. Additional routes may still be added after the API is updated. Supported only for HTTP APIs.</p>"
        },
        "RouteSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeSelectionExpression",
          "documentation": "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
        },
        "Target": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "target",
          "documentation": "<p>This property is part of quick create. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. The value provided updates the integration URI and integration type. You can update a quick-created target, but you can't remove it from an API. Supported only for HTTP APIs.</p>"
        },
        "Version": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "version",
          "documentation": "<p>A version identifier for the API.</p>"
        }
      },
      "documentation": "<p>Updates an Api.</p>",
      "required": [
        "ApiId"
      ]
    },
    "UpdateApiResponse": {
      "type": "structure",
      "members": {
        "ApiEndpoint": {
          "shape": "__string",
          "locationName": "apiEndpoint",
          "documentation": "<p>The URI of the API, of the form {api-id}.execute-api.{region}.amazonaws.com. The stage name is typically appended to this URI to form a complete path to a deployed API stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an API is managed by API Gateway. You can't update or delete a managed API by using API Gateway. A managed API can be deleted only through the tooling or service that created it.</p>"
        },
        "ApiId": {
          "shape": "Id",
          "locationName": "apiId",
          "documentation": "<p>The API ID.</p>"
        },
        "ApiKeySelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiKeySelectionExpression",
          "documentation": "<p>An API key selection expression. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions\">API Key Selection Expressions</a>.</p>"
        },
        "CorsConfiguration": {
          "shape": "Cors",
          "locationName": "corsConfiguration",
          "documentation": "<p>A CORS configuration. Supported only for HTTP APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the API was created.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the API.</p>"
        },
        "DisableSchemaValidation": {
          "shape": "__boolean",
          "locationName": "disableSchemaValidation",
          "documentation": "<p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>"
        },
        "ImportInfo": {
          "shape": "__listOf__string",
          "locationName": "importInfo",
          "documentation": "<p>The validation information during API import. This may include particular properties of your OpenAPI definition which are ignored during import. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the API.</p>"
        },
        "ProtocolType": {
          "shape": "ProtocolType",
          "locationName": "protocolType",
          "documentation": "<p>The API protocol.</p>"
        },
        "RouteSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeSelectionExpression",
          "documentation": "<p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>A collection of tags associated with the API.</p>"
        },
        "Version": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "version",
          "documentation": "<p>A version identifier for the API.</p>"
        },
        "Warnings": {
          "shape": "__listOf__string",
          "locationName": "warnings",
          "documentation": "<p>The warning messages reported when failonwarnings is turned on during API import.</p>"
        }
      }
    },
    "UpdateAuthorizerRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "AuthorizerCredentialsArn": {
          "shape": "Arn",
          "locationName": "authorizerCredentialsArn",
          "documentation": "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter.</p>"
        },
        "AuthorizerId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "authorizerId",
          "documentation": "<p>The authorizer identifier.</p>"
        },
        "AuthorizerPayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "authorizerPayloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
        },
        "AuthorizerResultTtlInSeconds": {
          "shape": "IntegerWithLengthBetween0And3600",
          "locationName": "authorizerResultTtlInSeconds",
          "documentation": "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
        },
        "AuthorizerType": {
          "shape": "AuthorizerType",
          "locationName": "authorizerType",
          "documentation": "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
        },
        "AuthorizerUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "authorizerUri",
          "documentation": "<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>\n               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>"
        },
        "EnableSimpleResponses": {
          "shape": "__boolean",
          "locationName": "enableSimpleResponses",
          "documentation": "<p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
        },
        "IdentitySource": {
          "shape": "IdentitySourceList",
          "locationName": "identitySource",
          "documentation": "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
        },
        "IdentityValidationExpression": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "identityValidationExpression",
          "documentation": "<p>This parameter is not used.</p>"
        },
        "JwtConfiguration": {
          "shape": "JWTConfiguration",
          "locationName": "jwtConfiguration",
          "documentation": "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the authorizer.</p>"
        }
      },
      "documentation": "<p>Updates an Authorizer.</p>",
      "required": [
        "AuthorizerId",
        "ApiId"
      ]
    },
    "UpdateAuthorizerResponse": {
      "type": "structure",
      "members": {
        "AuthorizerCredentialsArn": {
          "shape": "Arn",
          "locationName": "authorizerCredentialsArn",
          "documentation": "<p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The authorizer identifier.</p>"
        },
        "AuthorizerPayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "authorizerPayloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>"
        },
        "AuthorizerResultTtlInSeconds": {
          "shape": "IntegerWithLengthBetween0And3600",
          "locationName": "authorizerResultTtlInSeconds",
          "documentation": "<p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>"
        },
        "AuthorizerType": {
          "shape": "AuthorizerType",
          "locationName": "authorizerType",
          "documentation": "<p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>"
        },
        "AuthorizerUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "authorizerUri",
          "documentation": "<p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>\n               , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>"
        },
        "EnableSimpleResponses": {
          "shape": "__boolean",
          "locationName": "enableSimpleResponses",
          "documentation": "<p>Specifies whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a></p>"
        },
        "IdentitySource": {
          "shape": "IdentitySourceList",
          "locationName": "identitySource",
          "documentation": "<p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html\">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>"
        },
        "IdentityValidationExpression": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "identityValidationExpression",
          "documentation": "<p>The validation expression does not apply to the REQUEST authorizer.</p>"
        },
        "JwtConfiguration": {
          "shape": "JWTConfiguration",
          "locationName": "jwtConfiguration",
          "documentation": "<p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the authorizer.</p>"
        }
      }
    },
    "UpdateDeploymentRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "DeploymentId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deploymentId",
          "documentation": "<p>The deployment ID.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description for the deployment resource.</p>"
        }
      },
      "documentation": "<p>Updates a Deployment.</p>",
      "required": [
        "ApiId",
        "DeploymentId"
      ]
    },
    "UpdateDeploymentResponse": {
      "type": "structure",
      "members": {
        "AutoDeployed": {
          "shape": "__boolean",
          "locationName": "autoDeployed",
          "documentation": "<p>Specifies whether a deployment was automatically released.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The date and time when the Deployment resource was created.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The identifier for the deployment.</p>"
        },
        "DeploymentStatus": {
          "shape": "DeploymentStatus",
          "locationName": "deploymentStatus",
          "documentation": "<p>The status of the deployment: PENDING, FAILED, or SUCCEEDED.</p>"
        },
        "DeploymentStatusMessage": {
          "shape": "__string",
          "locationName": "deploymentStatusMessage",
          "documentation": "<p>May contain additional feedback on the status of an API deployment.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description for the deployment.</p>"
        }
      }
    },
    "UpdateDomainNameRequest": {
      "type": "structure",
      "members": {
        "DomainName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "domainName",
          "documentation": "<p>The domain name.</p>"
        },
        "DomainNameConfigurations": {
          "shape": "DomainNameConfigurations",
          "locationName": "domainNameConfigurations",
          "documentation": "<p>The domain name configurations.</p>"
        }
      },
      "documentation": "<p>Updates a DomainName.</p>",
      "required": [
        "DomainName"
      ]
    },
    "UpdateDomainNameResponse": {
      "type": "structure",
      "members": {
        "ApiMappingSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "apiMappingSelectionExpression",
          "documentation": "<p>The API mapping selection expression.</p>"
        },
        "DomainName": {
          "shape": "StringWithLengthBetween1And512",
          "locationName": "domainName",
          "documentation": "<p>The name of the DomainName resource.</p>"
        },
        "DomainNameConfigurations": {
          "shape": "DomainNameConfigurations",
          "locationName": "domainNameConfigurations",
          "documentation": "<p>The domain name configurations.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags associated with a domain name.</p>"
        }
      }
    },
    "UpdateIntegrationRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ConnectionId": {
          "shape": "StringWithLengthBetween1And1024",
          "locationName": "connectionId",
          "documentation": "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "locationName": "connectionType",
          "documentation": "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
        },
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "CredentialsArn": {
          "shape": "Arn",
          "locationName": "credentialsArn",
          "documentation": "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the integration</p>"
        },
        "IntegrationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationId",
          "documentation": "<p>The integration ID.</p>"
        },
        "IntegrationMethod": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "integrationMethod",
          "documentation": "<p>Specifies the integration's HTTP method type.</p>"
        },
        "IntegrationSubtype": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "integrationSubtype",
          "documentation": "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
        },
        "IntegrationType": {
          "shape": "IntegrationType",
          "locationName": "integrationType",
          "documentation": "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
        },
        "IntegrationUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "integrationUri",
          "documentation": "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
        },
        "PassthroughBehavior": {
          "shape": "PassthroughBehavior",
          "locationName": "passthroughBehavior",
          "documentation": "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
        },
        "PayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "payloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
        },
        "RequestParameters": {
          "shape": "IntegrationParameters",
          "locationName": "requestParameters",
          "documentation": "<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>\n              , where  <replaceable>{location}</replaceable>  is querystring, path, or header; and <replaceable>{name}</replaceable> must be a valid and unique method request parameter name.</p> <p>For HTTP APIs, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations with a specified integrationSubtype. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p>"
        },
        "RequestTemplates": {
          "shape": "TemplateMap",
          "locationName": "requestTemplates",
          "documentation": "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expression for the integration.</p>"
        },
        "TimeoutInMillis": {
          "shape": "IntegerWithLengthBetween50And30000",
          "locationName": "timeoutInMillis",
          "documentation": "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
        },
        "TlsConfig": {
          "shape": "TlsConfigInput",
          "locationName": "tlsConfig",
          "documentation": "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
        }
      },
      "documentation": "<p>Updates an Integration.</p>",
      "required": [
        "ApiId",
        "IntegrationId"
      ]
    },
    "UpdateIntegrationResult": {
      "type": "structure",
      "members": {
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether an integration is managed by API Gateway. If you created an API using using quick create, the resulting integration is managed by API Gateway. You can update a managed integration, but you can't delete it.</p>"
        },
        "ConnectionId": {
          "shape": "StringWithLengthBetween1And1024",
          "locationName": "connectionId",
          "documentation": "<p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "locationName": "connectionType",
          "documentation": "<p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>"
        },
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "CredentialsArn": {
          "shape": "Arn",
          "locationName": "credentialsArn",
          "documentation": "<p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>Represents the description of an integration.</p>"
        },
        "IntegrationId": {
          "shape": "Id",
          "locationName": "integrationId",
          "documentation": "<p>Represents the identifier of an integration.</p>"
        },
        "IntegrationMethod": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "integrationMethod",
          "documentation": "<p>Specifies the integration's HTTP method type.</p>"
        },
        "IntegrationResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "integrationResponseSelectionExpression",
          "documentation": "<p>The integration response selection expression for the integration. Supported only for WebSocket APIs. See <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-integration-response-selection-expressions\">Integration Response Selection Expressions</a>.</p>"
        },
        "IntegrationSubtype": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "integrationSubtype",
          "documentation": "<p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html\">Integration subtype reference</a>.</p>"
        },
        "IntegrationType": {
          "shape": "IntegrationType",
          "locationName": "integrationType",
          "documentation": "<p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a \"loopback\" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>"
        },
        "IntegrationUri": {
          "shape": "UriWithLengthBetween1And2048",
          "locationName": "integrationUri",
          "documentation": "<p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html\">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>"
        },
        "PassthroughBehavior": {
          "shape": "PassthroughBehavior",
          "locationName": "passthroughBehavior",
          "documentation": "<p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>"
        },
        "PayloadFormatVersion": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "payloadFormatVersion",
          "documentation": "<p>Specifies the format of the payload sent to an integration. Required for HTTP APIs.</p>"
        },
        "RequestParameters": {
          "shape": "IntegrationParameters",
          "locationName": "requestParameters",
          "documentation": "<p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>\n              , where  <replaceable>{location}</replaceable>  is querystring, path, or header; and <replaceable>{name}</replaceable> must be a valid and unique method request parameter name.</p> <p>For HTTP APIs, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations with a specified integrationSubtype. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href=\"https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html\">Working with AWS service integrations for HTTP APIs</a>.</p>"
        },
        "RequestTemplates": {
          "shape": "TemplateMap",
          "locationName": "requestTemplates",
          "documentation": "<p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expression for the integration. Supported only for WebSocket APIs.</p>"
        },
        "TimeoutInMillis": {
          "shape": "IntegerWithLengthBetween50And30000",
          "locationName": "timeoutInMillis",
          "documentation": "<p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>"
        },
        "TlsConfig": {
          "shape": "TlsConfig",
          "locationName": "tlsConfig",
          "documentation": "<p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>"
        }
      }
    },
    "UpdateIntegrationResponseRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "IntegrationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationId",
          "documentation": "<p>The integration ID.</p>"
        },
        "IntegrationResponseId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "integrationResponseId",
          "documentation": "<p>The integration response ID.</p>"
        },
        "IntegrationResponseKey": {
          "shape": "SelectionKey",
          "locationName": "integrationResponseKey",
          "documentation": "<p>The integration response key.</p>"
        },
        "ResponseParameters": {
          "shape": "IntegrationParameters",
          "locationName": "responseParameters",
          "documentation": "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.<replaceable>{name}</replaceable>\n               , where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.<replaceable>{name}</replaceable>\n                or integration.response.body.<replaceable>{JSON-expression}</replaceable>\n               , where \n                  <replaceable>{name}</replaceable>\n                is a valid and unique response header name and \n                  <replaceable>{JSON-expression}</replaceable>\n                is a valid JSON expression without the $ prefix.</p>"
        },
        "ResponseTemplates": {
          "shape": "TemplateMap",
          "locationName": "responseTemplates",
          "documentation": "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>"
        }
      },
      "documentation": "<p>Updates an IntegrationResponses.</p>",
      "required": [
        "ApiId",
        "IntegrationResponseId",
        "IntegrationId"
      ]
    },
    "UpdateIntegrationResponseResponse": {
      "type": "structure",
      "members": {
        "ContentHandlingStrategy": {
          "shape": "ContentHandlingStrategy",
          "locationName": "contentHandlingStrategy",
          "documentation": "<p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>"
        },
        "IntegrationResponseId": {
          "shape": "Id",
          "locationName": "integrationResponseId",
          "documentation": "<p>The integration response ID.</p>"
        },
        "IntegrationResponseKey": {
          "shape": "SelectionKey",
          "locationName": "integrationResponseKey",
          "documentation": "<p>The integration response key.</p>"
        },
        "ResponseParameters": {
          "shape": "IntegrationParameters",
          "locationName": "responseParameters",
          "documentation": "<p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where name is a valid and unique response header name and JSON-expression is a valid JSON expression without the $ prefix.</p>"
        },
        "ResponseTemplates": {
          "shape": "TemplateMap",
          "locationName": "responseTemplates",
          "documentation": "<p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>"
        },
        "TemplateSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "templateSelectionExpression",
          "documentation": "<p>The template selection expressions for the integration response.</p>"
        }
      }
    },
    "UpdateModelRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ContentType": {
          "shape": "StringWithLengthBetween1And256",
          "locationName": "contentType",
          "documentation": "<p>The content-type for the model, for example, \"application/json\".</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the model.</p>"
        },
        "ModelId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "modelId",
          "documentation": "<p>The model ID.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the model.</p>"
        },
        "Schema": {
          "shape": "StringWithLengthBetween0And32K",
          "locationName": "schema",
          "documentation": "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
        }
      },
      "documentation": "<p>Updates a Model.</p>",
      "required": [
        "ModelId",
        "ApiId"
      ]
    },
    "UpdateModelResponse": {
      "type": "structure",
      "members": {
        "ContentType": {
          "shape": "StringWithLengthBetween1And256",
          "locationName": "contentType",
          "documentation": "<p>The content-type for the model, for example, \"application/json\".</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the model.</p>"
        },
        "ModelId": {
          "shape": "Id",
          "locationName": "modelId",
          "documentation": "<p>The model identifier.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the model. Must be alphanumeric.</p>"
        },
        "Schema": {
          "shape": "StringWithLengthBetween0And32K",
          "locationName": "schema",
          "documentation": "<p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>"
        }
      }
    },
    "UpdateRouteRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ApiKeyRequired": {
          "shape": "__boolean",
          "locationName": "apiKeyRequired",
          "documentation": "<p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>"
        },
        "AuthorizationScopes": {
          "shape": "AuthorizationScopes",
          "locationName": "authorizationScopes",
          "documentation": "<p>The authorization scopes supported by this route.</p>"
        },
        "AuthorizationType": {
          "shape": "AuthorizationType",
          "locationName": "authorizationType",
          "documentation": "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
        },
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "OperationName": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "operationName",
          "documentation": "<p>The operation name for the route.</p>"
        },
        "RequestModels": {
          "shape": "RouteModels",
          "locationName": "requestModels",
          "documentation": "<p>The request models for the route. Supported only for WebSocket APIs.</p>"
        },
        "RequestParameters": {
          "shape": "RouteParameters",
          "locationName": "requestParameters",
          "documentation": "<p>The request parameters for the route. Supported only for WebSocket APIs.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteKey": {
          "shape": "SelectionKey",
          "locationName": "routeKey",
          "documentation": "<p>The route key for the route.</p>"
        },
        "RouteResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeResponseSelectionExpression",
          "documentation": "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "Target": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "target",
          "documentation": "<p>The target for the route.</p>"
        }
      },
      "documentation": "<p>Updates a Route.</p>",
      "required": [
        "ApiId",
        "RouteId"
      ]
    },
    "UpdateRouteResult": {
      "type": "structure",
      "members": {
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether a route is managed by API Gateway. If you created an API using quick create, the $default route is managed by API Gateway. You can't modify the $default route key.</p>"
        },
        "ApiKeyRequired": {
          "shape": "__boolean",
          "locationName": "apiKeyRequired",
          "documentation": "<p>Specifies whether an API key is required for this route. Supported only for WebSocket APIs.</p>"
        },
        "AuthorizationScopes": {
          "shape": "AuthorizationScopes",
          "locationName": "authorizationScopes",
          "documentation": "<p>A list of authorization scopes configured on a route. The scopes are used with a JWT authorizer to authorize the method invocation. The authorization works by matching the route scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any route scope matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the route scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>"
        },
        "AuthorizationType": {
          "shape": "AuthorizationType",
          "locationName": "authorizationType",
          "documentation": "<p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>"
        },
        "AuthorizerId": {
          "shape": "Id",
          "locationName": "authorizerId",
          "documentation": "<p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>"
        },
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>The model selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "OperationName": {
          "shape": "StringWithLengthBetween1And64",
          "locationName": "operationName",
          "documentation": "<p>The operation name for the route.</p>"
        },
        "RequestModels": {
          "shape": "RouteModels",
          "locationName": "requestModels",
          "documentation": "<p>The request models for the route. Supported only for WebSocket APIs.</p>"
        },
        "RequestParameters": {
          "shape": "RouteParameters",
          "locationName": "requestParameters",
          "documentation": "<p>The request parameters for the route. Supported only for WebSocket APIs.</p>"
        },
        "RouteId": {
          "shape": "Id",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteKey": {
          "shape": "SelectionKey",
          "locationName": "routeKey",
          "documentation": "<p>The route key for the route.</p>"
        },
        "RouteResponseSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "routeResponseSelectionExpression",
          "documentation": "<p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>"
        },
        "Target": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "target",
          "documentation": "<p>The target for the route.</p>"
        }
      }
    },
    "UpdateRouteResponseRequest": {
      "type": "structure",
      "members": {
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>"
        },
        "ResponseModels": {
          "shape": "RouteModels",
          "locationName": "responseModels",
          "documentation": "<p>The response models for the route response.</p>"
        },
        "ResponseParameters": {
          "shape": "RouteParameters",
          "locationName": "responseParameters",
          "documentation": "<p>The route response parameters.</p>"
        },
        "RouteId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeId",
          "documentation": "<p>The route ID.</p>"
        },
        "RouteResponseId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "routeResponseId",
          "documentation": "<p>The route response ID.</p>"
        },
        "RouteResponseKey": {
          "shape": "SelectionKey",
          "locationName": "routeResponseKey",
          "documentation": "<p>The route response key.</p>"
        }
      },
      "documentation": "<p>Updates a RouteResponse.</p>",
      "required": [
        "RouteResponseId",
        "ApiId",
        "RouteId"
      ]
    },
    "UpdateRouteResponseResponse": {
      "type": "structure",
      "members": {
        "ModelSelectionExpression": {
          "shape": "SelectionExpression",
          "locationName": "modelSelectionExpression",
          "documentation": "<p>Represents the model selection expression of a route response. Supported only for WebSocket APIs.</p>"
        },
        "ResponseModels": {
          "shape": "RouteModels",
          "locationName": "responseModels",
          "documentation": "<p>Represents the response models of a route response.</p>"
        },
        "ResponseParameters": {
          "shape": "RouteParameters",
          "locationName": "responseParameters",
          "documentation": "<p>Represents the response parameters of a route response.</p>"
        },
        "RouteResponseId": {
          "shape": "Id",
          "locationName": "routeResponseId",
          "documentation": "<p>Represents the identifier of a route response.</p>"
        },
        "RouteResponseKey": {
          "shape": "SelectionKey",
          "locationName": "routeResponseKey",
          "documentation": "<p>Represents the route response key of a route response.</p>"
        }
      }
    },
    "UpdateStageRequest": {
      "type": "structure",
      "members": {
        "AccessLogSettings": {
          "shape": "AccessLogSettings",
          "locationName": "accessLogSettings",
          "documentation": "<p>Settings for logging access in this stage.</p>"
        },
        "ApiId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "apiId",
          "documentation": "<p>The API identifier.</p>"
        },
        "AutoDeploy": {
          "shape": "__boolean",
          "locationName": "autoDeploy",
          "documentation": "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
        },
        "ClientCertificateId": {
          "shape": "Id",
          "locationName": "clientCertificateId",
          "documentation": "<p>The identifier of a client certificate for a Stage.</p>"
        },
        "DefaultRouteSettings": {
          "shape": "RouteSettings",
          "locationName": "defaultRouteSettings",
          "documentation": "<p>The default route settings for the stage.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The deployment identifier for the API stage. Can't be updated if autoDeploy is enabled.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description for the API stage.</p>"
        },
        "RouteSettings": {
          "shape": "RouteSettingsMap",
          "locationName": "routeSettings",
          "documentation": "<p>Route settings for the stage.</p>"
        },
        "StageName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "stageName",
          "documentation": "<p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>"
        },
        "StageVariables": {
          "shape": "StageVariablesMap",
          "locationName": "stageVariables",
          "documentation": "<p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
        }
      },
      "documentation": "<p>Updates a Stage.</p>",
      "required": [
        "StageName",
        "ApiId"
      ]
    },
    "UpdateStageResponse": {
      "type": "structure",
      "members": {
        "AccessLogSettings": {
          "shape": "AccessLogSettings",
          "locationName": "accessLogSettings",
          "documentation": "<p>Settings for logging access in this stage.</p>"
        },
        "ApiGatewayManaged": {
          "shape": "__boolean",
          "locationName": "apiGatewayManaged",
          "documentation": "<p>Specifies whether a stage is managed by API Gateway. If you created an API using quick create, the $default stage is managed by API Gateway. You can't modify the $default stage.</p>"
        },
        "AutoDeploy": {
          "shape": "__boolean",
          "locationName": "autoDeploy",
          "documentation": "<p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>"
        },
        "ClientCertificateId": {
          "shape": "Id",
          "locationName": "clientCertificateId",
          "documentation": "<p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>"
        },
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the stage was created.</p>"
        },
        "DefaultRouteSettings": {
          "shape": "RouteSettings",
          "locationName": "defaultRouteSettings",
          "documentation": "<p>Default route settings for the stage.</p>"
        },
        "DeploymentId": {
          "shape": "Id",
          "locationName": "deploymentId",
          "documentation": "<p>The identifier of the Deployment that the Stage is associated with. Can't be updated if autoDeploy is enabled.</p>"
        },
        "Description": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "description",
          "documentation": "<p>The description of the stage.</p>"
        },
        "LastDeploymentStatusMessage": {
          "shape": "__string",
          "locationName": "lastDeploymentStatusMessage",
          "documentation": "<p>Describes the status of the last deployment of a stage. Supported only for stages with autoDeploy enabled.</p>"
        },
        "LastUpdatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "lastUpdatedDate",
          "documentation": "<p>The timestamp when the stage was last updated.</p>"
        },
        "RouteSettings": {
          "shape": "RouteSettingsMap",
          "locationName": "routeSettings",
          "documentation": "<p>Route settings for the stage, by routeKey.</p>"
        },
        "StageName": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "stageName",
          "documentation": "<p>The name of the stage.</p>"
        },
        "StageVariables": {
          "shape": "StageVariablesMap",
          "locationName": "stageVariables",
          "documentation": "<p>A map that defines the stage variables for a stage resource. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>The collection of tags. Each tag element is associated with a given resource.</p>"
        }
      }
    },
    "UpdateVpcLinkRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the VPC link.</p>"
        },
        "VpcLinkId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "vpcLinkId",
          "documentation": "<p>The ID of the VPC link.</p>"
        }
      },
      "documentation": "<p>Updates a VPC link.</p>",
      "required": [
        "VpcLinkId"
      ]
    },
    "UpdateVpcLinkResponse": {
      "type": "structure",
      "members": {
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the VPC link was created.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the VPC link.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIdList",
          "locationName": "securityGroupIds",
          "documentation": "<p>A list of security group IDs for the VPC link.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdList",
          "locationName": "subnetIds",
          "documentation": "<p>A list of subnet IDs to include in the VPC link.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>Tags for the VPC link.</p>"
        },
        "VpcLinkId": {
          "shape": "Id",
          "locationName": "vpcLinkId",
          "documentation": "<p>The ID of the VPC link.</p>"
        },
        "VpcLinkStatus": {
          "shape": "VpcLinkStatus",
          "locationName": "vpcLinkStatus",
          "documentation": "<p>The status of the VPC link.</p>"
        },
        "VpcLinkStatusMessage": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "vpcLinkStatusMessage",
          "documentation": "<p>A message summarizing the cause of the status of the VPC link.</p>"
        },
        "VpcLinkVersion": {
          "shape": "VpcLinkVersion",
          "locationName": "vpcLinkVersion",
          "documentation": "<p>The version of the VPC link.</p>"
        }
      }
    },
    "UriWithLengthBetween1And2048": {
      "type": "string",
      "documentation": "<p>A string representation of a URI with a length between [1-2048].</p>"
    },
    "VpcLink": {
      "type": "structure",
      "members": {
        "CreatedDate": {
          "shape": "__timestampIso8601",
          "locationName": "createdDate",
          "documentation": "<p>The timestamp when the VPC link was created.</p>"
        },
        "Name": {
          "shape": "StringWithLengthBetween1And128",
          "locationName": "name",
          "documentation": "<p>The name of the VPC link.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIdList",
          "locationName": "securityGroupIds",
          "documentation": "<p>A list of security group IDs for the VPC link.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdList",
          "locationName": "subnetIds",
          "documentation": "<p>A list of subnet IDs to include in the VPC link.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "<p>Tags for the VPC link.</p>"
        },
        "VpcLinkId": {
          "shape": "Id",
          "locationName": "vpcLinkId",
          "documentation": "<p>The ID of the VPC link.</p>"
        },
        "VpcLinkStatus": {
          "shape": "VpcLinkStatus",
          "locationName": "vpcLinkStatus",
          "documentation": "<p>The status of the VPC link.</p>"
        },
        "VpcLinkStatusMessage": {
          "shape": "StringWithLengthBetween0And1024",
          "locationName": "vpcLinkStatusMessage",
          "documentation": "<p>A message summarizing the cause of the status of the VPC link.</p>"
        },
        "VpcLinkVersion": {
          "shape": "VpcLinkVersion",
          "locationName": "vpcLinkVersion",
          "documentation": "<p>The version of the VPC link.</p>"
        }
      },
      "documentation": "<p>Represents a VPC link.</p>",
      "required": [
        "VpcLinkId",
        "SecurityGroupIds",
        "SubnetIds",
        "Name"
      ]
    },
    "VpcLinkStatus": {
      "type": "string",
      "documentation": "<p>The status of the VPC link.</p>",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "DELETING",
        "FAILED",
        "INACTIVE"
      ]
    },
    "VpcLinkVersion": {
      "type": "string",
      "documentation": "<p>The version of the VPC link.</p>",
      "enum": [
        "V2"
      ]
    },
    "__boolean": {
      "type": "boolean"
    },
    "__double": {
      "type": "double"
    },
    "__integer": {
      "type": "integer"
    },
    "__listOfApi": {
      "type": "list",
      "member": {
        "shape": "Api"
      }
    },
    "__listOfApiMapping": {
      "type": "list",
      "member": {
        "shape": "ApiMapping"
      }
    },
    "__listOfAuthorizer": {
      "type": "list",
      "member": {
        "shape": "Authorizer"
      }
    },
    "__listOfDeployment": {
      "type": "list",
      "member": {
        "shape": "Deployment"
      }
    },
    "__listOfDomainName": {
      "type": "list",
      "member": {
        "shape": "DomainName"
      }
    },
    "__listOfIntegration": {
      "type": "list",
      "member": {
        "shape": "Integration"
      }
    },
    "__listOfIntegrationResponse": {
      "type": "list",
      "member": {
        "shape": "IntegrationResponse"
      }
    },
    "__listOfModel": {
      "type": "list",
      "member": {
        "shape": "Model"
      }
    },
    "__listOfRoute": {
      "type": "list",
      "member": {
        "shape": "Route"
      }
    },
    "__listOfRouteResponse": {
      "type": "list",
      "member": {
        "shape": "RouteResponse"
      }
    },
    "__listOfStage": {
      "type": "list",
      "member": {
        "shape": "Stage"
      }
    },
    "__listOfVpcLink": {
      "type": "list",
      "member": {
        "shape": "VpcLink"
      }
    },
    "__listOf__string": {
      "type": "list",
      "member": {
        "shape": "__string"
      }
    },
    "__string": {
      "type": "string"
    },
    "__timestampIso8601": {
      "type": "timestamp",
      "timestampFormat": "iso8601"
    }
  },
  "documentation": "<p>Amazon API Gateway V2</p>"
}
]===]))