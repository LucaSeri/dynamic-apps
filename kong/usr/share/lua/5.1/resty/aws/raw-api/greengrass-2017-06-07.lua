local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2017-06-07",
    "endpointPrefix": "greengrass",
    "signingName": "greengrass",
    "serviceFullName": "AWS Greengrass",
    "serviceId": "Greengrass",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "greengrass-2017-06-07",
    "signatureVersion": "v4"
  },
  "operations": {
    "AssociateRoleToGroup": {
      "name": "AssociateRoleToGroup",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/groups/{GroupId}/role",
        "responseCode": 200
      },
      "input": {
        "shape": "AssociateRoleToGroupRequest"
      },
      "output": {
        "shape": "AssociateRoleToGroupResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud."
    },
    "AssociateServiceRoleToAccount": {
      "name": "AssociateServiceRoleToAccount",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/servicerole",
        "responseCode": 200
      },
      "input": {
        "shape": "AssociateServiceRoleToAccountRequest"
      },
      "output": {
        "shape": "AssociateServiceRoleToAccountResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''."
    },
    "CreateConnectorDefinition": {
      "name": "CreateConnectorDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/connectors",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateConnectorDefinitionRequest"
      },
      "output": {
        "shape": "CreateConnectorDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time."
    },
    "CreateConnectorDefinitionVersion": {
      "name": "CreateConnectorDefinitionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateConnectorDefinitionVersionRequest"
      },
      "output": {
        "shape": "CreateConnectorDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a version of a connector definition which has already been defined."
    },
    "CreateCoreDefinition": {
      "name": "CreateCoreDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/cores",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateCoreDefinitionRequest"
      },
      "output": {
        "shape": "CreateCoreDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core."
    },
    "CreateCoreDefinitionVersion": {
      "name": "CreateCoreDefinitionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/cores/{CoreDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateCoreDefinitionVersionRequest"
      },
      "output": {
        "shape": "CreateCoreDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core."
    },
    "CreateDeployment": {
      "name": "CreateDeployment",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/groups/{GroupId}/deployments",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateDeploymentRequest"
      },
      "output": {
        "shape": "CreateDeploymentResponse",
        "documentation": "Success. The group was deployed."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters."
    },
    "CreateDeviceDefinition": {
      "name": "CreateDeviceDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/devices",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateDeviceDefinitionRequest"
      },
      "output": {
        "shape": "CreateDeviceDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time."
    },
    "CreateDeviceDefinitionVersion": {
      "name": "CreateDeviceDefinitionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/devices/{DeviceDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateDeviceDefinitionVersionRequest"
      },
      "output": {
        "shape": "CreateDeviceDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a version of a device definition that has already been defined."
    },
    "CreateFunctionDefinition": {
      "name": "CreateFunctionDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/functions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateFunctionDefinitionRequest"
      },
      "output": {
        "shape": "CreateFunctionDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later."
    },
    "CreateFunctionDefinitionVersion": {
      "name": "CreateFunctionDefinitionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/functions/{FunctionDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateFunctionDefinitionVersionRequest"
      },
      "output": {
        "shape": "CreateFunctionDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a version of a Lambda function definition that has already been defined."
    },
    "CreateGroup": {
      "name": "CreateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/groups",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateGroupRequest"
      },
      "output": {
        "shape": "CreateGroupResponse",
        "documentation": "Success. The group was created."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups."
    },
    "CreateGroupCertificateAuthority": {
      "name": "CreateGroupCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/groups/{GroupId}/certificateauthorities",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateGroupCertificateAuthorityRequest"
      },
      "output": {
        "shape": "CreateGroupCertificateAuthorityResponse",
        "documentation": "Success. The response body contains the new active CA ARN."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Creates a CA for the group. If a CA already exists, it will rotate the existing CA."
    },
    "CreateGroupVersion": {
      "name": "CreateGroupVersion",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/groups/{GroupId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateGroupVersionRequest"
      },
      "output": {
        "shape": "CreateGroupVersionResponse",
        "documentation": "Success. The response contains information about the group version."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a version of a group which has already been defined."
    },
    "CreateLoggerDefinition": {
      "name": "CreateLoggerDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/loggers",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateLoggerDefinitionRequest"
      },
      "output": {
        "shape": "CreateLoggerDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time."
    },
    "CreateLoggerDefinitionVersion": {
      "name": "CreateLoggerDefinitionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/loggers/{LoggerDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateLoggerDefinitionVersionRequest"
      },
      "output": {
        "shape": "CreateLoggerDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a version of a logger definition that has already been defined."
    },
    "CreateResourceDefinition": {
      "name": "CreateResourceDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/resources",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateResourceDefinitionRequest"
      },
      "output": {
        "shape": "CreateResourceDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later."
    },
    "CreateResourceDefinitionVersion": {
      "name": "CreateResourceDefinitionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/resources/{ResourceDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateResourceDefinitionVersionRequest"
      },
      "output": {
        "shape": "CreateResourceDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a version of a resource definition that has already been defined."
    },
    "CreateSoftwareUpdateJob": {
      "name": "CreateSoftwareUpdateJob",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/updates",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateSoftwareUpdateJobRequest"
      },
      "output": {
        "shape": "CreateSoftwareUpdateJobResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job."
    },
    "CreateSubscriptionDefinition": {
      "name": "CreateSubscriptionDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/subscriptions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateSubscriptionDefinitionRequest"
      },
      "output": {
        "shape": "CreateSubscriptionDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time."
    },
    "CreateSubscriptionDefinitionVersion": {
      "name": "CreateSubscriptionDefinitionVersion",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateSubscriptionDefinitionVersionRequest"
      },
      "output": {
        "shape": "CreateSubscriptionDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Creates a version of a subscription definition which has already been defined."
    },
    "DeleteConnectorDefinition": {
      "name": "DeleteConnectorDefinition",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/definition/connectors/{ConnectorDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteConnectorDefinitionRequest"
      },
      "output": {
        "shape": "DeleteConnectorDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deletes a connector definition."
    },
    "DeleteCoreDefinition": {
      "name": "DeleteCoreDefinition",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/definition/cores/{CoreDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteCoreDefinitionRequest"
      },
      "output": {
        "shape": "DeleteCoreDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deletes a core definition."
    },
    "DeleteDeviceDefinition": {
      "name": "DeleteDeviceDefinition",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/definition/devices/{DeviceDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteDeviceDefinitionRequest"
      },
      "output": {
        "shape": "DeleteDeviceDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deletes a device definition."
    },
    "DeleteFunctionDefinition": {
      "name": "DeleteFunctionDefinition",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/definition/functions/{FunctionDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteFunctionDefinitionRequest"
      },
      "output": {
        "shape": "DeleteFunctionDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deletes a Lambda function definition."
    },
    "DeleteGroup": {
      "name": "DeleteGroup",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/groups/{GroupId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteGroupRequest"
      },
      "output": {
        "shape": "DeleteGroupResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deletes a group."
    },
    "DeleteLoggerDefinition": {
      "name": "DeleteLoggerDefinition",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/definition/loggers/{LoggerDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteLoggerDefinitionRequest"
      },
      "output": {
        "shape": "DeleteLoggerDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deletes a logger definition."
    },
    "DeleteResourceDefinition": {
      "name": "DeleteResourceDefinition",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/definition/resources/{ResourceDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteResourceDefinitionRequest"
      },
      "output": {
        "shape": "DeleteResourceDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deletes a resource definition."
    },
    "DeleteSubscriptionDefinition": {
      "name": "DeleteSubscriptionDefinition",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteSubscriptionDefinitionRequest"
      },
      "output": {
        "shape": "DeleteSubscriptionDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deletes a subscription definition."
    },
    "DisassociateRoleFromGroup": {
      "name": "DisassociateRoleFromGroup",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/groups/{GroupId}/role",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociateRoleFromGroupRequest"
      },
      "output": {
        "shape": "DisassociateRoleFromGroupResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Disassociates the role from a group."
    },
    "DisassociateServiceRoleFromAccount": {
      "name": "DisassociateServiceRoleFromAccount",
      "http": {
        "method": "DELETE",
        "requestUri": "/greengrass/servicerole",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociateServiceRoleFromAccountRequest"
      },
      "output": {
        "shape": "DisassociateServiceRoleFromAccountResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Disassociates the service role from your account. Without a service role, deployments will not work."
    },
    "GetAssociatedRole": {
      "name": "GetAssociatedRole",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}/role",
        "responseCode": 200
      },
      "input": {
        "shape": "GetAssociatedRoleRequest"
      },
      "output": {
        "shape": "GetAssociatedRoleResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Retrieves the role associated with a particular group."
    },
    "GetBulkDeploymentStatus": {
      "name": "GetBulkDeploymentStatus",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/bulk/deployments/{BulkDeploymentId}/status",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBulkDeploymentStatusRequest"
      },
      "output": {
        "shape": "GetBulkDeploymentStatusResponse",
        "documentation": "Success. The response body contains the status of the bulk deployment."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Returns the status of a bulk deployment."
    },
    "GetConnectivityInfo": {
      "name": "GetConnectivityInfo",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/things/{ThingName}/connectivityInfo",
        "responseCode": 200
      },
      "input": {
        "shape": "GetConnectivityInfoRequest"
      },
      "output": {
        "shape": "GetConnectivityInfoResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Retrieves the connectivity information for a core."
    },
    "GetConnectorDefinition": {
      "name": "GetConnectorDefinition",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/connectors/{ConnectorDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetConnectorDefinitionRequest"
      },
      "output": {
        "shape": "GetConnectorDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a connector definition."
    },
    "GetConnectorDefinitionVersion": {
      "name": "GetConnectorDefinitionVersion",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions/{ConnectorDefinitionVersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetConnectorDefinitionVersionRequest"
      },
      "output": {
        "shape": "GetConnectorDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services."
    },
    "GetCoreDefinition": {
      "name": "GetCoreDefinition",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/cores/{CoreDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetCoreDefinitionRequest"
      },
      "output": {
        "shape": "GetCoreDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a core definition version."
    },
    "GetCoreDefinitionVersion": {
      "name": "GetCoreDefinitionVersion",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetCoreDefinitionVersionRequest"
      },
      "output": {
        "shape": "GetCoreDefinitionVersionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a core definition version."
    },
    "GetDeploymentStatus": {
      "name": "GetDeploymentStatus",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDeploymentStatusRequest"
      },
      "output": {
        "shape": "GetDeploymentStatusResponse",
        "documentation": "Success. The response body contains the status of the deployment for the group."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Returns the status of a deployment."
    },
    "GetDeviceDefinition": {
      "name": "GetDeviceDefinition",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/devices/{DeviceDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDeviceDefinitionRequest"
      },
      "output": {
        "shape": "GetDeviceDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a device definition."
    },
    "GetDeviceDefinitionVersion": {
      "name": "GetDeviceDefinitionVersion",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDeviceDefinitionVersionRequest"
      },
      "output": {
        "shape": "GetDeviceDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a device definition version."
    },
    "GetFunctionDefinition": {
      "name": "GetFunctionDefinition",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/functions/{FunctionDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFunctionDefinitionRequest"
      },
      "output": {
        "shape": "GetFunctionDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a Lambda function definition, including its creation time and latest version."
    },
    "GetFunctionDefinitionVersion": {
      "name": "GetFunctionDefinitionVersion",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFunctionDefinitionVersionRequest"
      },
      "output": {
        "shape": "GetFunctionDefinitionVersionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations."
    },
    "GetGroup": {
      "name": "GetGroup",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetGroupRequest"
      },
      "output": {
        "shape": "GetGroupResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a group."
    },
    "GetGroupCertificateAuthority": {
      "name": "GetGroupCertificateAuthority",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetGroupCertificateAuthorityRequest"
      },
      "output": {
        "shape": "GetGroupCertificateAuthorityResponse",
        "documentation": "Success. The response body contains the PKI Configuration."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Retreives the CA associated with a group. Returns the public key of the CA."
    },
    "GetGroupCertificateConfiguration": {
      "name": "GetGroupCertificateConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry",
        "responseCode": 200
      },
      "input": {
        "shape": "GetGroupCertificateConfigurationRequest"
      },
      "output": {
        "shape": "GetGroupCertificateConfigurationResponse",
        "documentation": "Success. The response body contains the PKI Configuration."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Retrieves the current configuration for the CA used by the group."
    },
    "GetGroupVersion": {
      "name": "GetGroupVersion",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}/versions/{GroupVersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetGroupVersionRequest"
      },
      "output": {
        "shape": "GetGroupVersionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a group version."
    },
    "GetLoggerDefinition": {
      "name": "GetLoggerDefinition",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/loggers/{LoggerDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetLoggerDefinitionRequest"
      },
      "output": {
        "shape": "GetLoggerDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a logger definition."
    },
    "GetLoggerDefinitionVersion": {
      "name": "GetLoggerDefinitionVersion",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetLoggerDefinitionVersionRequest"
      },
      "output": {
        "shape": "GetLoggerDefinitionVersionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a logger definition version."
    },
    "GetResourceDefinition": {
      "name": "GetResourceDefinition",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/resources/{ResourceDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetResourceDefinitionRequest"
      },
      "output": {
        "shape": "GetResourceDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a resource definition, including its creation time and latest version."
    },
    "GetResourceDefinitionVersion": {
      "name": "GetResourceDefinitionVersion",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/resources/{ResourceDefinitionId}/versions/{ResourceDefinitionVersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetResourceDefinitionVersionRequest"
      },
      "output": {
        "shape": "GetResourceDefinitionVersionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a resource definition version, including which resources are included in the version."
    },
    "GetServiceRoleForAccount": {
      "name": "GetServiceRoleForAccount",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/servicerole",
        "responseCode": 200
      },
      "input": {
        "shape": "GetServiceRoleForAccountRequest"
      },
      "output": {
        "shape": "GetServiceRoleForAccountResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Retrieves the service role that is attached to your account."
    },
    "GetSubscriptionDefinition": {
      "name": "GetSubscriptionDefinition",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetSubscriptionDefinitionRequest"
      },
      "output": {
        "shape": "GetSubscriptionDefinitionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a subscription definition."
    },
    "GetSubscriptionDefinitionVersion": {
      "name": "GetSubscriptionDefinitionVersion",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetSubscriptionDefinitionVersionRequest"
      },
      "output": {
        "shape": "GetSubscriptionDefinitionVersionResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves information about a subscription definition version."
    },
    "ListBulkDeploymentDetailedReports": {
      "name": "ListBulkDeploymentDetailedReports",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/bulk/deployments/{BulkDeploymentId}/detailed-reports",
        "responseCode": 200
      },
      "input": {
        "shape": "ListBulkDeploymentDetailedReportsRequest"
      },
      "output": {
        "shape": "ListBulkDeploymentDetailedReportsResponse",
        "documentation": "Success. The response body contains the list of deployments for the given group."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status."
    },
    "ListBulkDeployments": {
      "name": "ListBulkDeployments",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/bulk/deployments",
        "responseCode": 200
      },
      "input": {
        "shape": "ListBulkDeploymentsRequest"
      },
      "output": {
        "shape": "ListBulkDeploymentsResponse",
        "documentation": "Success. The response body contains the list of bulk deployments."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Returns a list of bulk deployments."
    },
    "ListConnectorDefinitionVersions": {
      "name": "ListConnectorDefinitionVersions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/connectors/{ConnectorDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListConnectorDefinitionVersionsRequest"
      },
      "output": {
        "shape": "ListConnectorDefinitionVersionsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services."
    },
    "ListConnectorDefinitions": {
      "name": "ListConnectorDefinitions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/connectors",
        "responseCode": 200
      },
      "input": {
        "shape": "ListConnectorDefinitionsRequest"
      },
      "output": {
        "shape": "ListConnectorDefinitionsResponse"
      },
      "errors": [],
      "documentation": "Retrieves a list of connector definitions."
    },
    "ListCoreDefinitionVersions": {
      "name": "ListCoreDefinitionVersions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/cores/{CoreDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListCoreDefinitionVersionsRequest"
      },
      "output": {
        "shape": "ListCoreDefinitionVersionsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Lists the versions of a core definition."
    },
    "ListCoreDefinitions": {
      "name": "ListCoreDefinitions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/cores",
        "responseCode": 200
      },
      "input": {
        "shape": "ListCoreDefinitionsRequest"
      },
      "output": {
        "shape": "ListCoreDefinitionsResponse"
      },
      "errors": [],
      "documentation": "Retrieves a list of core definitions."
    },
    "ListDeployments": {
      "name": "ListDeployments",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}/deployments",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDeploymentsRequest"
      },
      "output": {
        "shape": "ListDeploymentsResponse",
        "documentation": "Success. The response body contains the list of deployments for the given group."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Returns a history of deployments for the group."
    },
    "ListDeviceDefinitionVersions": {
      "name": "ListDeviceDefinitionVersions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/devices/{DeviceDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDeviceDefinitionVersionsRequest"
      },
      "output": {
        "shape": "ListDeviceDefinitionVersionsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Lists the versions of a device definition."
    },
    "ListDeviceDefinitions": {
      "name": "ListDeviceDefinitions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/devices",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDeviceDefinitionsRequest"
      },
      "output": {
        "shape": "ListDeviceDefinitionsResponse"
      },
      "errors": [],
      "documentation": "Retrieves a list of device definitions."
    },
    "ListFunctionDefinitionVersions": {
      "name": "ListFunctionDefinitionVersions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/functions/{FunctionDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListFunctionDefinitionVersionsRequest"
      },
      "output": {
        "shape": "ListFunctionDefinitionVersionsResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Lists the versions of a Lambda function definition."
    },
    "ListFunctionDefinitions": {
      "name": "ListFunctionDefinitions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/functions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListFunctionDefinitionsRequest"
      },
      "output": {
        "shape": "ListFunctionDefinitionsResponse",
        "documentation": "Success. The response contains the IDs of all the Greengrass Lambda function definitions in this account."
      },
      "errors": [],
      "documentation": "Retrieves a list of Lambda function definitions."
    },
    "ListGroupCertificateAuthorities": {
      "name": "ListGroupCertificateAuthorities",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}/certificateauthorities",
        "responseCode": 200
      },
      "input": {
        "shape": "ListGroupCertificateAuthoritiesRequest"
      },
      "output": {
        "shape": "ListGroupCertificateAuthoritiesResponse",
        "documentation": "Success. The response body contains the PKI Configuration."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Retrieves the current CAs for a group."
    },
    "ListGroupVersions": {
      "name": "ListGroupVersions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups/{GroupId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListGroupVersionsRequest"
      },
      "output": {
        "shape": "ListGroupVersionsResponse",
        "documentation": "Success. The response contains the list of versions and metadata for the given group."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Lists the versions of a group."
    },
    "ListGroups": {
      "name": "ListGroups",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/groups",
        "responseCode": 200
      },
      "input": {
        "shape": "ListGroupsRequest"
      },
      "output": {
        "shape": "ListGroupsResponse"
      },
      "errors": [],
      "documentation": "Retrieves a list of groups."
    },
    "ListLoggerDefinitionVersions": {
      "name": "ListLoggerDefinitionVersions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/loggers/{LoggerDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListLoggerDefinitionVersionsRequest"
      },
      "output": {
        "shape": "ListLoggerDefinitionVersionsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Lists the versions of a logger definition."
    },
    "ListLoggerDefinitions": {
      "name": "ListLoggerDefinitions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/loggers",
        "responseCode": 200
      },
      "input": {
        "shape": "ListLoggerDefinitionsRequest"
      },
      "output": {
        "shape": "ListLoggerDefinitionsResponse"
      },
      "errors": [],
      "documentation": "Retrieves a list of logger definitions."
    },
    "ListResourceDefinitionVersions": {
      "name": "ListResourceDefinitionVersions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/resources/{ResourceDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListResourceDefinitionVersionsRequest"
      },
      "output": {
        "shape": "ListResourceDefinitionVersionsResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Lists the versions of a resource definition."
    },
    "ListResourceDefinitions": {
      "name": "ListResourceDefinitions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/resources",
        "responseCode": 200
      },
      "input": {
        "shape": "ListResourceDefinitionsRequest"
      },
      "output": {
        "shape": "ListResourceDefinitionsResponse",
        "documentation": "The IDs of all the Greengrass resource definitions in this account."
      },
      "errors": [],
      "documentation": "Retrieves a list of resource definitions."
    },
    "ListSubscriptionDefinitionVersions": {
      "name": "ListSubscriptionDefinitionVersions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListSubscriptionDefinitionVersionsRequest"
      },
      "output": {
        "shape": "ListSubscriptionDefinitionVersionsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Lists the versions of a subscription definition."
    },
    "ListSubscriptionDefinitions": {
      "name": "ListSubscriptionDefinitions",
      "http": {
        "method": "GET",
        "requestUri": "/greengrass/definition/subscriptions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListSubscriptionDefinitionsRequest"
      },
      "output": {
        "shape": "ListSubscriptionDefinitionsResponse"
      },
      "errors": [],
      "documentation": "Retrieves a list of subscription definitions."
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse",
        "documentation": "HTTP Status Code 200: OK."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Retrieves a list of resource tags for a resource arn."
    },
    "ResetDeployments": {
      "name": "ResetDeployments",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/groups/{GroupId}/deployments/$reset",
        "responseCode": 200
      },
      "input": {
        "shape": "ResetDeploymentsRequest"
      },
      "output": {
        "shape": "ResetDeploymentsResponse",
        "documentation": "Success. The group's deployments were reset."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Resets a group's deployments."
    },
    "StartBulkDeployment": {
      "name": "StartBulkDeployment",
      "http": {
        "method": "POST",
        "requestUri": "/greengrass/bulk/deployments",
        "responseCode": 200
      },
      "input": {
        "shape": "StartBulkDeploymentRequest"
      },
      "output": {
        "shape": "StartBulkDeploymentResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters."
    },
    "StopBulkDeployment": {
      "name": "StopBulkDeployment",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/bulk/deployments/{BulkDeploymentId}/$stop",
        "responseCode": 200
      },
      "input": {
        "shape": "StopBulkDeploymentRequest"
      },
      "output": {
        "shape": "StopBulkDeploymentResponse",
        "documentation": "Success. The bulk deployment is being stopped."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments."
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'."
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Remove resource tags from a Greengrass Resource."
    },
    "UpdateConnectivityInfo": {
      "name": "UpdateConnectivityInfo",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/things/{ThingName}/connectivityInfo",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateConnectivityInfoRequest"
      },
      "output": {
        "shape": "UpdateConnectivityInfoResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it."
    },
    "UpdateConnectorDefinition": {
      "name": "UpdateConnectorDefinition",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/definition/connectors/{ConnectorDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateConnectorDefinitionRequest"
      },
      "output": {
        "shape": "UpdateConnectorDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Updates a connector definition."
    },
    "UpdateCoreDefinition": {
      "name": "UpdateCoreDefinition",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/definition/cores/{CoreDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateCoreDefinitionRequest"
      },
      "output": {
        "shape": "UpdateCoreDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Updates a core definition."
    },
    "UpdateDeviceDefinition": {
      "name": "UpdateDeviceDefinition",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/definition/devices/{DeviceDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDeviceDefinitionRequest"
      },
      "output": {
        "shape": "UpdateDeviceDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Updates a device definition."
    },
    "UpdateFunctionDefinition": {
      "name": "UpdateFunctionDefinition",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/definition/functions/{FunctionDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateFunctionDefinitionRequest"
      },
      "output": {
        "shape": "UpdateFunctionDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Updates a Lambda function definition."
    },
    "UpdateGroup": {
      "name": "UpdateGroup",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/groups/{GroupId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateGroupRequest"
      },
      "output": {
        "shape": "UpdateGroupResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Updates a group."
    },
    "UpdateGroupCertificateConfiguration": {
      "name": "UpdateGroupCertificateConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateGroupCertificateConfigurationRequest"
      },
      "output": {
        "shape": "UpdateGroupCertificateConfigurationResponse",
        "documentation": "Success. The response body contains the PKI Configuration."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "server error"
        }
      ],
      "documentation": "Updates the Certificate expiry time for a group."
    },
    "UpdateLoggerDefinition": {
      "name": "UpdateLoggerDefinition",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/definition/loggers/{LoggerDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateLoggerDefinitionRequest"
      },
      "output": {
        "shape": "UpdateLoggerDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Updates a logger definition."
    },
    "UpdateResourceDefinition": {
      "name": "UpdateResourceDefinition",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/definition/resources/{ResourceDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateResourceDefinitionRequest"
      },
      "output": {
        "shape": "UpdateResourceDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Updates a resource definition."
    },
    "UpdateSubscriptionDefinition": {
      "name": "UpdateSubscriptionDefinition",
      "http": {
        "method": "PUT",
        "requestUri": "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateSubscriptionDefinitionRequest"
      },
      "output": {
        "shape": "UpdateSubscriptionDefinitionResponse",
        "documentation": "success"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "invalid request"
        }
      ],
      "documentation": "Updates a subscription definition."
    }
  },
  "shapes": {
    "AssociateRoleToGroupRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        },
        "RoleArn": {
          "shape": "__string",
          "documentation": "The ARN of the role you wish to associate with this group. The existence of the role is not validated."
        }
      },
      "required": [
        "GroupId",
        "RoleArn"
      ]
    },
    "AssociateRoleToGroupResponse": {
      "type": "structure",
      "members": {
        "AssociatedAt": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the role ARN was associated with the group."
        }
      }
    },
    "AssociateServiceRoleToAccountRequest": {
      "type": "structure",
      "members": {
        "RoleArn": {
          "shape": "__string",
          "documentation": "The ARN of the service role you wish to associate with your account."
        }
      },
      "required": [
        "RoleArn"
      ]
    },
    "AssociateServiceRoleToAccountResponse": {
      "type": "structure",
      "members": {
        "AssociatedAt": {
          "shape": "__string",
          "documentation": "The time when the service role was associated with the account."
        }
      }
    },
    "BulkDeployment": {
      "type": "structure",
      "members": {
        "BulkDeploymentArn": {
          "shape": "__string",
          "documentation": "The ARN of the bulk deployment."
        },
        "BulkDeploymentId": {
          "shape": "__string",
          "documentation": "The ID of the bulk deployment."
        },
        "CreatedAt": {
          "shape": "__string",
          "documentation": "The time, in ISO format, when the deployment was created."
        }
      },
      "documentation": "Information about a bulk deployment. You cannot start a new bulk deployment while another one is still running or in a non-terminal state."
    },
    "BulkDeploymentMetrics": {
      "type": "structure",
      "members": {
        "InvalidInputRecords": {
          "shape": "__integer",
          "documentation": "The total number of records that returned a non-retryable error. For example, this can occur if a group record from the input file uses an invalid format or specifies a nonexistent group version, or if the execution role doesn't grant permission to deploy a group or group version."
        },
        "RecordsProcessed": {
          "shape": "__integer",
          "documentation": "The total number of group records from the input file that have been processed so far, or attempted."
        },
        "RetryAttempts": {
          "shape": "__integer",
          "documentation": "The total number of deployment attempts that returned a retryable error. For example, a retry is triggered if the attempt to deploy a group returns a throttling error. ''StartBulkDeployment'' retries a group deployment up to five times."
        }
      },
      "documentation": "Relevant metrics on input records processed during bulk deployment."
    },
    "BulkDeploymentResult": {
      "type": "structure",
      "members": {
        "CreatedAt": {
          "shape": "__string",
          "documentation": "The time, in ISO format, when the deployment was created."
        },
        "DeploymentArn": {
          "shape": "__string",
          "documentation": "The ARN of the group deployment."
        },
        "DeploymentId": {
          "shape": "__string",
          "documentation": "The ID of the group deployment."
        },
        "DeploymentStatus": {
          "shape": "__string",
          "documentation": "The current status of the group deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''."
        },
        "DeploymentType": {
          "shape": "DeploymentType",
          "documentation": "The type of the deployment."
        },
        "ErrorDetails": {
          "shape": "ErrorDetails",
          "documentation": "Details about the error."
        },
        "ErrorMessage": {
          "shape": "__string",
          "documentation": "The error message for a failed deployment"
        },
        "GroupArn": {
          "shape": "__string",
          "documentation": "The ARN of the Greengrass group."
        }
      },
      "documentation": "Information about an individual group deployment in a bulk deployment operation."
    },
    "BulkDeploymentResults": {
      "type": "list",
      "member": {
        "shape": "BulkDeploymentResult"
      }
    },
    "BulkDeploymentStatus": {
      "type": "string",
      "documentation": "The current status of the bulk deployment.",
      "enum": [
        "Initializing",
        "Running",
        "Completed",
        "Stopping",
        "Stopped",
        "Failed"
      ]
    },
    "BulkDeployments": {
      "type": "list",
      "member": {
        "shape": "BulkDeployment"
      }
    },
    "ConnectivityInfo": {
      "type": "structure",
      "members": {
        "HostAddress": {
          "shape": "__string",
          "documentation": "The endpoint for the Greengrass core. Can be an IP address or DNS."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the connectivity information."
        },
        "Metadata": {
          "shape": "__string",
          "documentation": "Metadata for this endpoint."
        },
        "PortNumber": {
          "shape": "__integer",
          "documentation": "The port of the Greengrass core. Usually 8883."
        }
      },
      "documentation": "Information about a Greengrass core's connectivity."
    },
    "Connector": {
      "type": "structure",
      "members": {
        "ConnectorArn": {
          "shape": "__string",
          "documentation": "The ARN of the connector."
        },
        "Id": {
          "shape": "__string",
          "documentation": "A descriptive or arbitrary ID for the connector. This value must be unique within the connector definition version. Max length is 128 characters with pattern [a-zA-Z0-9:_-]+."
        },
        "Parameters": {
          "shape": "__mapOf__string",
          "documentation": "The parameters or configuration that the connector uses."
        }
      },
      "documentation": "Information about a connector. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.",
      "required": [
        "ConnectorArn",
        "Id"
      ]
    },
    "ConnectorDefinitionVersion": {
      "type": "structure",
      "members": {
        "Connectors": {
          "shape": "__listOfConnector",
          "documentation": "A list of references to connectors in this version, with their corresponding configuration settings."
        }
      },
      "documentation": "Information about the connector definition version, which is a container for connectors."
    },
    "Core": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "__string",
          "documentation": "The ARN of the certificate associated with the core."
        },
        "Id": {
          "shape": "__string",
          "documentation": "A descriptive or arbitrary ID for the core. This value must be unique within the core definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
        },
        "SyncShadow": {
          "shape": "__boolean",
          "documentation": "If true, the core's local shadow is automatically synced with the cloud."
        },
        "ThingArn": {
          "shape": "__string",
          "documentation": "The ARN of the thing which is the core."
        }
      },
      "documentation": "Information about a core.",
      "required": [
        "ThingArn",
        "Id",
        "CertificateArn"
      ]
    },
    "CoreDefinitionVersion": {
      "type": "structure",
      "members": {
        "Cores": {
          "shape": "__listOfCore",
          "documentation": "A list of cores in the core definition version."
        }
      },
      "documentation": "Information about a core definition version."
    },
    "CreateConnectorDefinitionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "InitialVersion": {
          "shape": "ConnectorDefinitionVersion",
          "documentation": "Information about the initial version of the connector definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the connector definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      }
    },
    "CreateConnectorDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      }
    },
    "CreateConnectorDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "ConnectorDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ConnectorDefinitionId",
          "documentation": "The ID of the connector definition."
        },
        "Connectors": {
          "shape": "__listOfConnector",
          "documentation": "A list of references to connectors in this version, with their corresponding configuration settings."
        }
      },
      "required": [
        "ConnectorDefinitionId"
      ]
    },
    "CreateConnectorDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      }
    },
    "CreateCoreDefinitionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "InitialVersion": {
          "shape": "CoreDefinitionVersion",
          "documentation": "Information about the initial version of the core definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the core definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      },
      "documentation": "Information needed to create a core definition."
    },
    "CreateCoreDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      }
    },
    "CreateCoreDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "CoreDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "CoreDefinitionId",
          "documentation": "The ID of the core definition."
        },
        "Cores": {
          "shape": "__listOfCore",
          "documentation": "A list of cores in the core definition version."
        }
      },
      "required": [
        "CoreDefinitionId"
      ]
    },
    "CreateCoreDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      }
    },
    "CreateDeploymentRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "DeploymentId": {
          "shape": "__string",
          "documentation": "The ID of the deployment if you wish to redeploy a previous deployment."
        },
        "DeploymentType": {
          "shape": "DeploymentType",
          "documentation": "The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid."
        },
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        },
        "GroupVersionId": {
          "shape": "__string",
          "documentation": "The ID of the group version to be deployed."
        }
      },
      "required": [
        "GroupId",
        "DeploymentType"
      ]
    },
    "CreateDeploymentResponse": {
      "type": "structure",
      "members": {
        "DeploymentArn": {
          "shape": "__string",
          "documentation": "The ARN of the deployment."
        },
        "DeploymentId": {
          "shape": "__string",
          "documentation": "The ID of the deployment."
        }
      }
    },
    "CreateDeviceDefinitionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "InitialVersion": {
          "shape": "DeviceDefinitionVersion",
          "documentation": "Information about the initial version of the device definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the device definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      }
    },
    "CreateDeviceDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      }
    },
    "CreateDeviceDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "DeviceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DeviceDefinitionId",
          "documentation": "The ID of the device definition."
        },
        "Devices": {
          "shape": "__listOfDevice",
          "documentation": "A list of devices in the definition version."
        }
      },
      "required": [
        "DeviceDefinitionId"
      ]
    },
    "CreateDeviceDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      }
    },
    "CreateFunctionDefinitionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "InitialVersion": {
          "shape": "FunctionDefinitionVersion",
          "documentation": "Information about the initial version of the function definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the function definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      }
    },
    "CreateFunctionDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      }
    },
    "CreateFunctionDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "DefaultConfig": {
          "shape": "FunctionDefaultConfig",
          "documentation": "The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings."
        },
        "FunctionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "FunctionDefinitionId",
          "documentation": "The ID of the Lambda function definition."
        },
        "Functions": {
          "shape": "__listOfFunction",
          "documentation": "A list of Lambda functions in this function definition version."
        }
      },
      "documentation": "Information needed to create a function definition version.",
      "required": [
        "FunctionDefinitionId"
      ]
    },
    "CreateFunctionDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      }
    },
    "CreateGroupCertificateAuthorityRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "CreateGroupCertificateAuthorityResponse": {
      "type": "structure",
      "members": {
        "GroupCertificateAuthorityArn": {
          "shape": "__string",
          "documentation": "The ARN of the group certificate authority."
        }
      }
    },
    "CreateGroupRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "InitialVersion": {
          "shape": "GroupVersion",
          "documentation": "Information about the initial version of the group."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the group."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      }
    },
    "CreateGroupResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      }
    },
    "CreateGroupVersionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "ConnectorDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the connector definition version for this group."
        },
        "CoreDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the core definition version for this group."
        },
        "DeviceDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the device definition version for this group."
        },
        "FunctionDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the function definition version for this group."
        },
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        },
        "LoggerDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the logger definition version for this group."
        },
        "ResourceDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the resource definition version for this group."
        },
        "SubscriptionDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the subscription definition version for this group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "CreateGroupVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      }
    },
    "CreateLoggerDefinitionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "InitialVersion": {
          "shape": "LoggerDefinitionVersion",
          "documentation": "Information about the initial version of the logger definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the logger definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      }
    },
    "CreateLoggerDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      }
    },
    "CreateLoggerDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "LoggerDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "LoggerDefinitionId",
          "documentation": "The ID of the logger definition."
        },
        "Loggers": {
          "shape": "__listOfLogger",
          "documentation": "A list of loggers."
        }
      },
      "required": [
        "LoggerDefinitionId"
      ]
    },
    "CreateLoggerDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      }
    },
    "CreateResourceDefinitionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "InitialVersion": {
          "shape": "ResourceDefinitionVersion",
          "documentation": "Information about the initial version of the resource definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the resource definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      }
    },
    "CreateResourceDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      }
    },
    "CreateResourceDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "ResourceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ResourceDefinitionId",
          "documentation": "The ID of the resource definition."
        },
        "Resources": {
          "shape": "__listOfResource",
          "documentation": "A list of resources."
        }
      },
      "required": [
        "ResourceDefinitionId"
      ]
    },
    "CreateResourceDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      }
    },
    "CreateSoftwareUpdateJobRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "S3UrlSignerRole": {
          "shape": "S3UrlSignerRole"
        },
        "SoftwareToUpdate": {
          "shape": "SoftwareToUpdate"
        },
        "UpdateAgentLogLevel": {
          "shape": "UpdateAgentLogLevel"
        },
        "UpdateTargets": {
          "shape": "UpdateTargets"
        },
        "UpdateTargetsArchitecture": {
          "shape": "UpdateTargetsArchitecture"
        },
        "UpdateTargetsOperatingSystem": {
          "shape": "UpdateTargetsOperatingSystem"
        }
      },
      "required": [
        "S3UrlSignerRole",
        "UpdateTargetsArchitecture",
        "SoftwareToUpdate",
        "UpdateTargets",
        "UpdateTargetsOperatingSystem"
      ]
    },
    "CreateSoftwareUpdateJobResponse": {
      "type": "structure",
      "members": {
        "IotJobArn": {
          "shape": "__string",
          "documentation": "The IoT Job ARN corresponding to this update."
        },
        "IotJobId": {
          "shape": "__string",
          "documentation": "The IoT Job Id corresponding to this update."
        },
        "PlatformSoftwareVersion": {
          "shape": "__string",
          "documentation": "The software version installed on the device or devices after the update."
        }
      }
    },
    "CreateSubscriptionDefinitionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "InitialVersion": {
          "shape": "SubscriptionDefinitionVersion",
          "documentation": "Information about the initial version of the subscription definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the subscription definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      }
    },
    "CreateSubscriptionDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      }
    },
    "CreateSubscriptionDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "SubscriptionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "SubscriptionDefinitionId",
          "documentation": "The ID of the subscription definition."
        },
        "Subscriptions": {
          "shape": "__listOfSubscription",
          "documentation": "A list of subscriptions."
        }
      },
      "required": [
        "SubscriptionDefinitionId"
      ]
    },
    "CreateSubscriptionDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      }
    },
    "DefinitionInformation": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "Tags": {
          "shape": "Tags",
          "locationName": "tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      },
      "documentation": "Information about a definition."
    },
    "DeleteConnectorDefinitionRequest": {
      "type": "structure",
      "members": {
        "ConnectorDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ConnectorDefinitionId",
          "documentation": "The ID of the connector definition."
        }
      },
      "required": [
        "ConnectorDefinitionId"
      ]
    },
    "DeleteConnectorDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteCoreDefinitionRequest": {
      "type": "structure",
      "members": {
        "CoreDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "CoreDefinitionId",
          "documentation": "The ID of the core definition."
        }
      },
      "required": [
        "CoreDefinitionId"
      ]
    },
    "DeleteCoreDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteDeviceDefinitionRequest": {
      "type": "structure",
      "members": {
        "DeviceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DeviceDefinitionId",
          "documentation": "The ID of the device definition."
        }
      },
      "required": [
        "DeviceDefinitionId"
      ]
    },
    "DeleteDeviceDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteFunctionDefinitionRequest": {
      "type": "structure",
      "members": {
        "FunctionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "FunctionDefinitionId",
          "documentation": "The ID of the Lambda function definition."
        }
      },
      "required": [
        "FunctionDefinitionId"
      ]
    },
    "DeleteFunctionDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteGroupRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "DeleteGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteLoggerDefinitionRequest": {
      "type": "structure",
      "members": {
        "LoggerDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "LoggerDefinitionId",
          "documentation": "The ID of the logger definition."
        }
      },
      "required": [
        "LoggerDefinitionId"
      ]
    },
    "DeleteLoggerDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteResourceDefinitionRequest": {
      "type": "structure",
      "members": {
        "ResourceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ResourceDefinitionId",
          "documentation": "The ID of the resource definition."
        }
      },
      "required": [
        "ResourceDefinitionId"
      ]
    },
    "DeleteResourceDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteSubscriptionDefinitionRequest": {
      "type": "structure",
      "members": {
        "SubscriptionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "SubscriptionDefinitionId",
          "documentation": "The ID of the subscription definition."
        }
      },
      "required": [
        "SubscriptionDefinitionId"
      ]
    },
    "DeleteSubscriptionDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "Deployment": {
      "type": "structure",
      "members": {
        "CreatedAt": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the deployment was created."
        },
        "DeploymentArn": {
          "shape": "__string",
          "documentation": "The ARN of the deployment."
        },
        "DeploymentId": {
          "shape": "__string",
          "documentation": "The ID of the deployment."
        },
        "DeploymentType": {
          "shape": "DeploymentType",
          "documentation": "The type of the deployment."
        },
        "GroupArn": {
          "shape": "__string",
          "documentation": "The ARN of the group for this deployment."
        }
      },
      "documentation": "Information about a deployment."
    },
    "DeploymentType": {
      "type": "string",
      "documentation": "The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.",
      "enum": [
        "NewDeployment",
        "Redeployment",
        "ResetDeployment",
        "ForceResetDeployment"
      ]
    },
    "Deployments": {
      "type": "list",
      "member": {
        "shape": "Deployment"
      }
    },
    "Device": {
      "type": "structure",
      "members": {
        "CertificateArn": {
          "shape": "__string",
          "documentation": "The ARN of the certificate associated with the device."
        },
        "Id": {
          "shape": "__string",
          "documentation": "A descriptive or arbitrary ID for the device. This value must be unique within the device definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
        },
        "SyncShadow": {
          "shape": "__boolean",
          "documentation": "If true, the device's local shadow will be automatically synced with the cloud."
        },
        "ThingArn": {
          "shape": "__string",
          "documentation": "The thing ARN of the device."
        }
      },
      "documentation": "Information about a device.",
      "required": [
        "ThingArn",
        "Id",
        "CertificateArn"
      ]
    },
    "DeviceDefinitionVersion": {
      "type": "structure",
      "members": {
        "Devices": {
          "shape": "__listOfDevice",
          "documentation": "A list of devices in the definition version."
        }
      },
      "documentation": "Information about a device definition version."
    },
    "DisassociateRoleFromGroupRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "DisassociateRoleFromGroupResponse": {
      "type": "structure",
      "members": {
        "DisassociatedAt": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the role was disassociated from the group."
        }
      }
    },
    "DisassociateServiceRoleFromAccountRequest": {
      "type": "structure",
      "members": {}
    },
    "DisassociateServiceRoleFromAccountResponse": {
      "type": "structure",
      "members": {
        "DisassociatedAt": {
          "shape": "__string",
          "documentation": "The time when the service role was disassociated from the account."
        }
      }
    },
    "EncodingType": {
      "type": "string",
      "enum": [
        "binary",
        "json"
      ]
    },
    "ErrorDetail": {
      "type": "structure",
      "members": {
        "DetailedErrorCode": {
          "shape": "__string",
          "documentation": "A detailed error code."
        },
        "DetailedErrorMessage": {
          "shape": "__string",
          "documentation": "A detailed error message."
        }
      },
      "documentation": "Details about the error."
    },
    "ErrorDetails": {
      "type": "list",
      "documentation": "A list of error details.",
      "member": {
        "shape": "ErrorDetail"
      }
    },
    "Function": {
      "type": "structure",
      "members": {
        "FunctionArn": {
          "shape": "__string",
          "documentation": "The ARN of the Lambda function."
        },
        "FunctionConfiguration": {
          "shape": "FunctionConfiguration",
          "documentation": "The configuration of the Lambda function."
        },
        "Id": {
          "shape": "__string",
          "documentation": "A descriptive or arbitrary ID for the function. This value must be unique within the function definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
        }
      },
      "documentation": "Information about a Lambda function.",
      "required": [
        "Id"
      ]
    },
    "FunctionConfiguration": {
      "type": "structure",
      "members": {
        "EncodingType": {
          "shape": "EncodingType",
          "documentation": "The expected encoding type of the input payload for the function. The default is ''json''."
        },
        "Environment": {
          "shape": "FunctionConfigurationEnvironment",
          "documentation": "The environment configuration of the function."
        },
        "ExecArgs": {
          "shape": "__string",
          "documentation": "The execution arguments."
        },
        "Executable": {
          "shape": "__string",
          "documentation": "The name of the function executable."
        },
        "MemorySize": {
          "shape": "__integer",
          "documentation": "The memory size, in KB, which the function requires. This setting is not applicable and should be cleared when you run the Lambda function without containerization."
        },
        "Pinned": {
          "shape": "__boolean",
          "documentation": "True if the function is pinned. Pinned means the function is long-lived and starts when the core starts."
        },
        "Timeout": {
          "shape": "__integer",
          "documentation": "The allowed function execution time, after which Lambda should terminate the function. This timeout still applies to pinned Lambda functions for each request."
        }
      },
      "documentation": "The configuration of the Lambda function."
    },
    "FunctionConfigurationEnvironment": {
      "type": "structure",
      "members": {
        "AccessSysfs": {
          "shape": "__boolean",
          "documentation": "If true, the Lambda function is allowed to access the host's /sys folder. Use this when the Lambda function needs to read device information from /sys. This setting applies only when you run the Lambda function in a Greengrass container."
        },
        "Execution": {
          "shape": "FunctionExecutionConfig",
          "documentation": "Configuration related to executing the Lambda function"
        },
        "ResourceAccessPolicies": {
          "shape": "__listOfResourceAccessPolicy",
          "documentation": "A list of the resources, with their permissions, to which the Lambda function will be granted access. A Lambda function can have at most 10 resources. ResourceAccessPolicies apply only when you run the Lambda function in a Greengrass container."
        },
        "Variables": {
          "shape": "__mapOf__string",
          "documentation": "Environment variables for the Lambda function's configuration."
        }
      },
      "documentation": "The environment configuration of the function."
    },
    "FunctionDefaultConfig": {
      "type": "structure",
      "members": {
        "Execution": {
          "shape": "FunctionDefaultExecutionConfig"
        }
      },
      "documentation": "The default configuration that applies to all Lambda functions in the group. Individual Lambda functions can override these settings."
    },
    "FunctionDefaultExecutionConfig": {
      "type": "structure",
      "members": {
        "IsolationMode": {
          "shape": "FunctionIsolationMode"
        },
        "RunAs": {
          "shape": "FunctionRunAsConfig"
        }
      },
      "documentation": "Configuration information that specifies how a Lambda function runs. "
    },
    "FunctionDefinitionVersion": {
      "type": "structure",
      "members": {
        "DefaultConfig": {
          "shape": "FunctionDefaultConfig",
          "documentation": "The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings."
        },
        "Functions": {
          "shape": "__listOfFunction",
          "documentation": "A list of Lambda functions in this function definition version."
        }
      },
      "documentation": "Information about a function definition version."
    },
    "FunctionExecutionConfig": {
      "type": "structure",
      "members": {
        "IsolationMode": {
          "shape": "FunctionIsolationMode"
        },
        "RunAs": {
          "shape": "FunctionRunAsConfig"
        }
      },
      "documentation": "Configuration information that specifies how a Lambda function runs. "
    },
    "FunctionIsolationMode": {
      "type": "string",
      "documentation": "Specifies whether the Lambda function runs in a Greengrass container (default) or without containerization. Unless your scenario requires that you run without containerization, we recommend that you run in a Greengrass container. Omit this value to run the Lambda function with the default containerization for the group.",
      "enum": [
        "GreengrassContainer",
        "NoContainer"
      ]
    },
    "FunctionRunAsConfig": {
      "type": "structure",
      "members": {
        "Gid": {
          "shape": "__integer",
          "documentation": "The group ID whose permissions are used to run a Lambda function."
        },
        "Uid": {
          "shape": "__integer",
          "documentation": "The user ID whose permissions are used to run a Lambda function."
        }
      },
      "documentation": "Specifies the user and group whose permissions are used when running the Lambda function. You can specify one or both values to override the default values. We recommend that you avoid running as root unless absolutely necessary to minimize the risk of unintended changes or malicious attacks. To run as root, you must set ''IsolationMode'' to ''NoContainer'' and update config.json in ''greengrass-root/config'' to set ''allowFunctionsToRunAsRoot'' to ''yes''."
    },
    "GetAssociatedRoleRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "GetAssociatedRoleResponse": {
      "type": "structure",
      "members": {
        "AssociatedAt": {
          "shape": "__string",
          "documentation": "The time when the role was associated with the group."
        },
        "RoleArn": {
          "shape": "__string",
          "documentation": "The ARN of the role that is associated with the group."
        }
      }
    },
    "GetBulkDeploymentStatusRequest": {
      "type": "structure",
      "members": {
        "BulkDeploymentId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "BulkDeploymentId",
          "documentation": "The ID of the bulk deployment."
        }
      },
      "required": [
        "BulkDeploymentId"
      ]
    },
    "GetBulkDeploymentStatusResponse": {
      "type": "structure",
      "members": {
        "BulkDeploymentMetrics": {
          "shape": "BulkDeploymentMetrics",
          "documentation": "Relevant metrics on input records processed during bulk deployment."
        },
        "BulkDeploymentStatus": {
          "shape": "BulkDeploymentStatus",
          "documentation": "The status of the bulk deployment."
        },
        "CreatedAt": {
          "shape": "__string",
          "documentation": "The time, in ISO format, when the deployment was created."
        },
        "ErrorDetails": {
          "shape": "ErrorDetails",
          "documentation": "Error details"
        },
        "ErrorMessage": {
          "shape": "__string",
          "documentation": "Error message"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetConnectivityInfoRequest": {
      "type": "structure",
      "members": {
        "ThingName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ThingName",
          "documentation": "The thing name."
        }
      },
      "required": [
        "ThingName"
      ]
    },
    "GetConnectivityInfoResponse": {
      "type": "structure",
      "members": {
        "ConnectivityInfo": {
          "shape": "__listOfConnectivityInfo",
          "documentation": "Connectivity info list."
        },
        "Message": {
          "shape": "__string",
          "locationName": "message",
          "documentation": "A message about the connectivity info request."
        }
      }
    },
    "GetConnectorDefinitionRequest": {
      "type": "structure",
      "members": {
        "ConnectorDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ConnectorDefinitionId",
          "documentation": "The ID of the connector definition."
        }
      },
      "required": [
        "ConnectorDefinitionId"
      ]
    },
    "GetConnectorDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetConnectorDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "ConnectorDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ConnectorDefinitionId",
          "documentation": "The ID of the connector definition."
        },
        "ConnectorDefinitionVersionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ConnectorDefinitionVersionId",
          "documentation": "The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "ConnectorDefinitionId",
        "ConnectorDefinitionVersionId"
      ]
    },
    "GetConnectorDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the connector definition version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the connector definition version was created."
        },
        "Definition": {
          "shape": "ConnectorDefinitionVersion",
          "documentation": "Information about the connector definition version."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the connector definition version."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The version of the connector definition version."
        }
      }
    },
    "GetCoreDefinitionRequest": {
      "type": "structure",
      "members": {
        "CoreDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "CoreDefinitionId",
          "documentation": "The ID of the core definition."
        }
      },
      "required": [
        "CoreDefinitionId"
      ]
    },
    "GetCoreDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetCoreDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "CoreDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "CoreDefinitionId",
          "documentation": "The ID of the core definition."
        },
        "CoreDefinitionVersionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "CoreDefinitionVersionId",
          "documentation": "The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
        }
      },
      "required": [
        "CoreDefinitionId",
        "CoreDefinitionVersionId"
      ]
    },
    "GetCoreDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the core definition version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the core definition version was created."
        },
        "Definition": {
          "shape": "CoreDefinitionVersion",
          "documentation": "Information about the core definition version."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the core definition version."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The version of the core definition version."
        }
      }
    },
    "GetDeploymentStatusRequest": {
      "type": "structure",
      "members": {
        "DeploymentId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DeploymentId",
          "documentation": "The ID of the deployment."
        },
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId",
        "DeploymentId"
      ]
    },
    "GetDeploymentStatusResponse": {
      "type": "structure",
      "members": {
        "DeploymentStatus": {
          "shape": "__string",
          "documentation": "The status of the deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''."
        },
        "DeploymentType": {
          "shape": "DeploymentType",
          "documentation": "The type of the deployment."
        },
        "ErrorDetails": {
          "shape": "ErrorDetails",
          "documentation": "Error details"
        },
        "ErrorMessage": {
          "shape": "__string",
          "documentation": "Error message"
        },
        "UpdatedAt": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the deployment status was updated."
        }
      }
    },
    "GetDeviceDefinitionRequest": {
      "type": "structure",
      "members": {
        "DeviceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DeviceDefinitionId",
          "documentation": "The ID of the device definition."
        }
      },
      "required": [
        "DeviceDefinitionId"
      ]
    },
    "GetDeviceDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetDeviceDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "DeviceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DeviceDefinitionId",
          "documentation": "The ID of the device definition."
        },
        "DeviceDefinitionVersionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DeviceDefinitionVersionId",
          "documentation": "The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "DeviceDefinitionVersionId",
        "DeviceDefinitionId"
      ]
    },
    "GetDeviceDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the device definition version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the device definition version was created."
        },
        "Definition": {
          "shape": "DeviceDefinitionVersion",
          "documentation": "Information about the device definition version."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the device definition version."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The version of the device definition version."
        }
      }
    },
    "GetFunctionDefinitionRequest": {
      "type": "structure",
      "members": {
        "FunctionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "FunctionDefinitionId",
          "documentation": "The ID of the Lambda function definition."
        }
      },
      "required": [
        "FunctionDefinitionId"
      ]
    },
    "GetFunctionDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetFunctionDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "FunctionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "FunctionDefinitionId",
          "documentation": "The ID of the Lambda function definition."
        },
        "FunctionDefinitionVersionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "FunctionDefinitionVersionId",
          "documentation": "The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "FunctionDefinitionId",
        "FunctionDefinitionVersionId"
      ]
    },
    "GetFunctionDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the function definition version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the function definition version was created."
        },
        "Definition": {
          "shape": "FunctionDefinitionVersion",
          "documentation": "Information on the definition."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the function definition version."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The version of the function definition version."
        }
      }
    },
    "GetGroupCertificateAuthorityRequest": {
      "type": "structure",
      "members": {
        "CertificateAuthorityId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "CertificateAuthorityId",
          "documentation": "The ID of the certificate authority."
        },
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "CertificateAuthorityId",
        "GroupId"
      ]
    },
    "GetGroupCertificateAuthorityResponse": {
      "type": "structure",
      "members": {
        "GroupCertificateAuthorityArn": {
          "shape": "__string",
          "documentation": "The ARN of the certificate authority for the group."
        },
        "GroupCertificateAuthorityId": {
          "shape": "__string",
          "documentation": "The ID of the certificate authority for the group."
        },
        "PemEncodedCertificate": {
          "shape": "__string",
          "documentation": "The PEM encoded certificate for the group."
        }
      }
    },
    "GetGroupCertificateConfigurationRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "GetGroupCertificateConfigurationResponse": {
      "type": "structure",
      "members": {
        "CertificateAuthorityExpiryInMilliseconds": {
          "shape": "__string",
          "documentation": "The amount of time remaining before the certificate authority expires, in milliseconds."
        },
        "CertificateExpiryInMilliseconds": {
          "shape": "__string",
          "documentation": "The amount of time remaining before the certificate expires, in milliseconds."
        },
        "GroupId": {
          "shape": "__string",
          "documentation": "The ID of the group certificate configuration."
        }
      }
    },
    "GetGroupRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "GetGroupResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetGroupVersionRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        },
        "GroupVersionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupVersionId",
          "documentation": "The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object."
        }
      },
      "required": [
        "GroupVersionId",
        "GroupId"
      ]
    },
    "GetGroupVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the group version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the group version was created."
        },
        "Definition": {
          "shape": "GroupVersion",
          "documentation": "Information about the group version definition."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the group that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the group version."
        }
      }
    },
    "GetLoggerDefinitionRequest": {
      "type": "structure",
      "members": {
        "LoggerDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "LoggerDefinitionId",
          "documentation": "The ID of the logger definition."
        }
      },
      "required": [
        "LoggerDefinitionId"
      ]
    },
    "GetLoggerDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetLoggerDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "LoggerDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "LoggerDefinitionId",
          "documentation": "The ID of the logger definition."
        },
        "LoggerDefinitionVersionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "LoggerDefinitionVersionId",
          "documentation": "The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "LoggerDefinitionVersionId",
        "LoggerDefinitionId"
      ]
    },
    "GetLoggerDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the logger definition version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the logger definition version was created."
        },
        "Definition": {
          "shape": "LoggerDefinitionVersion",
          "documentation": "Information about the logger definition version."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the logger definition version."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The version of the logger definition version."
        }
      }
    },
    "GetResourceDefinitionRequest": {
      "type": "structure",
      "members": {
        "ResourceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ResourceDefinitionId",
          "documentation": "The ID of the resource definition."
        }
      },
      "required": [
        "ResourceDefinitionId"
      ]
    },
    "GetResourceDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetResourceDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "ResourceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ResourceDefinitionId",
          "documentation": "The ID of the resource definition."
        },
        "ResourceDefinitionVersionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ResourceDefinitionVersionId",
          "documentation": "The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
        }
      },
      "required": [
        "ResourceDefinitionVersionId",
        "ResourceDefinitionId"
      ]
    },
    "GetResourceDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "Arn of the resource definition version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the resource definition version was created."
        },
        "Definition": {
          "shape": "ResourceDefinitionVersion",
          "documentation": "Information about the definition."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the resource definition version."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The version of the resource definition version."
        }
      }
    },
    "GetServiceRoleForAccountRequest": {
      "type": "structure",
      "members": {}
    },
    "GetServiceRoleForAccountResponse": {
      "type": "structure",
      "members": {
        "AssociatedAt": {
          "shape": "__string",
          "documentation": "The time when the service role was associated with the account."
        },
        "RoleArn": {
          "shape": "__string",
          "documentation": "The ARN of the role which is associated with the account."
        }
      }
    },
    "GetSubscriptionDefinitionRequest": {
      "type": "structure",
      "members": {
        "SubscriptionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "SubscriptionDefinitionId",
          "documentation": "The ID of the subscription definition."
        }
      },
      "required": [
        "SubscriptionDefinitionId"
      ]
    },
    "GetSubscriptionDefinitionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the definition."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the definition."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the definition was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the definition."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) attached to the resource arn."
        }
      }
    },
    "GetSubscriptionDefinitionVersionRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "SubscriptionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "SubscriptionDefinitionId",
          "documentation": "The ID of the subscription definition."
        },
        "SubscriptionDefinitionVersionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "SubscriptionDefinitionVersionId",
          "documentation": "The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object."
        }
      },
      "required": [
        "SubscriptionDefinitionId",
        "SubscriptionDefinitionVersionId"
      ]
    },
    "GetSubscriptionDefinitionVersionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the subscription definition version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the subscription definition version was created."
        },
        "Definition": {
          "shape": "SubscriptionDefinitionVersion",
          "documentation": "Information about the subscription definition version."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the subscription definition version."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The version of the subscription definition version."
        }
      }
    },
    "GroupCertificateAuthorityProperties": {
      "type": "structure",
      "members": {
        "GroupCertificateAuthorityArn": {
          "shape": "__string",
          "documentation": "The ARN of the certificate authority for the group."
        },
        "GroupCertificateAuthorityId": {
          "shape": "__string",
          "documentation": "The ID of the certificate authority for the group."
        }
      },
      "documentation": "Information about a certificate authority for a group."
    },
    "GroupInformation": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the group."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the group was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the group."
        },
        "LastUpdatedTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the group was last updated."
        },
        "LatestVersion": {
          "shape": "__string",
          "documentation": "The ID of the latest version associated with the group."
        },
        "LatestVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the latest version associated with the group."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the group."
        }
      },
      "documentation": "Information about a group."
    },
    "GroupOwnerSetting": {
      "type": "structure",
      "members": {
        "AutoAddGroupOwner": {
          "shape": "__boolean",
          "documentation": "If true, AWS IoT Greengrass automatically adds the specified Linux OS group owner of the resource to the Lambda process privileges. Thus the Lambda process will have the file access permissions of the added Linux group."
        },
        "GroupOwner": {
          "shape": "__string",
          "documentation": "The name of the Linux OS group whose privileges will be added to the Lambda process. This field is optional."
        }
      },
      "documentation": "Group owner related settings for local resources."
    },
    "GroupVersion": {
      "type": "structure",
      "members": {
        "ConnectorDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the connector definition version for this group."
        },
        "CoreDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the core definition version for this group."
        },
        "DeviceDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the device definition version for this group."
        },
        "FunctionDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the function definition version for this group."
        },
        "LoggerDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the logger definition version for this group."
        },
        "ResourceDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the resource definition version for this group."
        },
        "SubscriptionDefinitionVersionArn": {
          "shape": "__string",
          "documentation": "The ARN of the subscription definition version for this group."
        }
      },
      "documentation": "Information about a group version."
    },
    "ListBulkDeploymentDetailedReportsRequest": {
      "type": "structure",
      "members": {
        "BulkDeploymentId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "BulkDeploymentId",
          "documentation": "The ID of the bulk deployment."
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "BulkDeploymentId"
      ]
    },
    "ListBulkDeploymentDetailedReportsResponse": {
      "type": "structure",
      "members": {
        "Deployments": {
          "shape": "BulkDeploymentResults",
          "documentation": "A list of the individual group deployments in the bulk deployment operation."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListBulkDeploymentsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListBulkDeploymentsResponse": {
      "type": "structure",
      "members": {
        "BulkDeployments": {
          "shape": "BulkDeployments",
          "documentation": "A list of bulk deployments."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListConnectorDefinitionVersionsRequest": {
      "type": "structure",
      "members": {
        "ConnectorDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ConnectorDefinitionId",
          "documentation": "The ID of the connector definition."
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "ConnectorDefinitionId"
      ]
    },
    "ListConnectorDefinitionVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Versions": {
          "shape": "__listOfVersionInformation",
          "documentation": "Information about a version."
        }
      }
    },
    "ListConnectorDefinitionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListConnectorDefinitionsResponse": {
      "type": "structure",
      "members": {
        "Definitions": {
          "shape": "__listOfDefinitionInformation",
          "documentation": "Information about a definition."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListCoreDefinitionVersionsRequest": {
      "type": "structure",
      "members": {
        "CoreDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "CoreDefinitionId",
          "documentation": "The ID of the core definition."
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "CoreDefinitionId"
      ]
    },
    "ListCoreDefinitionVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Versions": {
          "shape": "__listOfVersionInformation",
          "documentation": "Information about a version."
        }
      }
    },
    "ListCoreDefinitionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListCoreDefinitionsResponse": {
      "type": "structure",
      "members": {
        "Definitions": {
          "shape": "__listOfDefinitionInformation",
          "documentation": "Information about a definition."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListDeploymentsRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "ListDeploymentsResponse": {
      "type": "structure",
      "members": {
        "Deployments": {
          "shape": "Deployments",
          "documentation": "A list of deployments for the requested groups."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListDeviceDefinitionVersionsRequest": {
      "type": "structure",
      "members": {
        "DeviceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DeviceDefinitionId",
          "documentation": "The ID of the device definition."
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "DeviceDefinitionId"
      ]
    },
    "ListDeviceDefinitionVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Versions": {
          "shape": "__listOfVersionInformation",
          "documentation": "Information about a version."
        }
      }
    },
    "ListDeviceDefinitionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListDeviceDefinitionsResponse": {
      "type": "structure",
      "members": {
        "Definitions": {
          "shape": "__listOfDefinitionInformation",
          "documentation": "Information about a definition."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListFunctionDefinitionVersionsRequest": {
      "type": "structure",
      "members": {
        "FunctionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "FunctionDefinitionId",
          "documentation": "The ID of the Lambda function definition."
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "FunctionDefinitionId"
      ]
    },
    "ListFunctionDefinitionVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Versions": {
          "shape": "__listOfVersionInformation",
          "documentation": "Information about a version."
        }
      }
    },
    "ListFunctionDefinitionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListFunctionDefinitionsResponse": {
      "type": "structure",
      "members": {
        "Definitions": {
          "shape": "__listOfDefinitionInformation",
          "documentation": "Information about a definition."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListGroupCertificateAuthoritiesRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "ListGroupCertificateAuthoritiesResponse": {
      "type": "structure",
      "members": {
        "GroupCertificateAuthorities": {
          "shape": "__listOfGroupCertificateAuthorityProperties",
          "documentation": "A list of certificate authorities associated with the group."
        }
      }
    },
    "ListGroupVersionsRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "ListGroupVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Versions": {
          "shape": "__listOfVersionInformation",
          "documentation": "Information about a version."
        }
      }
    },
    "ListGroupsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListGroupsResponse": {
      "type": "structure",
      "members": {
        "Groups": {
          "shape": "__listOfGroupInformation",
          "documentation": "Information about a group."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListLoggerDefinitionVersionsRequest": {
      "type": "structure",
      "members": {
        "LoggerDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "LoggerDefinitionId",
          "documentation": "The ID of the logger definition."
        },
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      },
      "required": [
        "LoggerDefinitionId"
      ]
    },
    "ListLoggerDefinitionVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Versions": {
          "shape": "__listOfVersionInformation",
          "documentation": "Information about a version."
        }
      }
    },
    "ListLoggerDefinitionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListLoggerDefinitionsResponse": {
      "type": "structure",
      "members": {
        "Definitions": {
          "shape": "__listOfDefinitionInformation",
          "documentation": "Information about a definition."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListResourceDefinitionVersionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "ResourceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ResourceDefinitionId",
          "documentation": "The ID of the resource definition."
        }
      },
      "required": [
        "ResourceDefinitionId"
      ]
    },
    "ListResourceDefinitionVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Versions": {
          "shape": "__listOfVersionInformation",
          "documentation": "Information about a version."
        }
      }
    },
    "ListResourceDefinitionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListResourceDefinitionsResponse": {
      "type": "structure",
      "members": {
        "Definitions": {
          "shape": "__listOfDefinitionInformation",
          "documentation": "Information about a definition."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListSubscriptionDefinitionVersionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "SubscriptionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "SubscriptionDefinitionId",
          "documentation": "The ID of the subscription definition."
        }
      },
      "required": [
        "SubscriptionDefinitionId"
      ]
    },
    "ListSubscriptionDefinitionVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        },
        "Versions": {
          "shape": "__listOfVersionInformation",
          "documentation": "Information about a version."
        }
      }
    },
    "ListSubscriptionDefinitionsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "MaxResults",
          "documentation": "The maximum number of results to be returned per request."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "NextToken",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListSubscriptionDefinitionsResponse": {
      "type": "structure",
      "members": {
        "Definitions": {
          "shape": "__listOfDefinitionInformation",
          "documentation": "Information about a definition."
        },
        "NextToken": {
          "shape": "__string",
          "documentation": "The token for the next set of results, or ''null'' if there are no additional results."
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "The Amazon Resource Name (ARN) of the resource."
        }
      },
      "required": [
        "ResourceArn"
      ]
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "Tags"
        }
      }
    },
    "LocalDeviceResourceData": {
      "type": "structure",
      "members": {
        "GroupOwnerSetting": {
          "shape": "GroupOwnerSetting",
          "documentation": "Group/owner related settings for local resources."
        },
        "SourcePath": {
          "shape": "__string",
          "documentation": "The local absolute path of the device resource. The source path for a device resource can refer only to a character device or block device under ''/dev''."
        }
      },
      "documentation": "Attributes that define a local device resource."
    },
    "LocalVolumeResourceData": {
      "type": "structure",
      "members": {
        "DestinationPath": {
          "shape": "__string",
          "documentation": "The absolute local path of the resource inside the Lambda environment."
        },
        "GroupOwnerSetting": {
          "shape": "GroupOwnerSetting",
          "documentation": "Allows you to configure additional group privileges for the Lambda process. This field is optional."
        },
        "SourcePath": {
          "shape": "__string",
          "documentation": "The local absolute path of the volume resource on the host. The source path for a volume resource type cannot start with ''/sys''."
        }
      },
      "documentation": "Attributes that define a local volume resource."
    },
    "Logger": {
      "type": "structure",
      "members": {
        "Component": {
          "shape": "LoggerComponent",
          "documentation": "The component that will be subject to logging."
        },
        "Id": {
          "shape": "__string",
          "documentation": "A descriptive or arbitrary ID for the logger. This value must be unique within the logger definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
        },
        "Level": {
          "shape": "LoggerLevel",
          "documentation": "The level of the logs."
        },
        "Space": {
          "shape": "__integer",
          "documentation": "The amount of file space, in KB, to use if the local file system is used for logging purposes."
        },
        "Type": {
          "shape": "LoggerType",
          "documentation": "The type of log output which will be used."
        }
      },
      "documentation": "Information about a logger",
      "required": [
        "Type",
        "Level",
        "Id",
        "Component"
      ]
    },
    "LoggerComponent": {
      "type": "string",
      "enum": [
        "GreengrassSystem",
        "Lambda"
      ]
    },
    "LoggerDefinitionVersion": {
      "type": "structure",
      "members": {
        "Loggers": {
          "shape": "__listOfLogger",
          "documentation": "A list of loggers."
        }
      },
      "documentation": "Information about a logger definition version."
    },
    "LoggerLevel": {
      "type": "string",
      "enum": [
        "DEBUG",
        "INFO",
        "WARN",
        "ERROR",
        "FATAL"
      ]
    },
    "LoggerType": {
      "type": "string",
      "enum": [
        "FileSystem",
        "AWSCloudWatch"
      ]
    },
    "Permission": {
      "type": "string",
      "documentation": "The type of permission a function has to access a resource.",
      "enum": [
        "ro",
        "rw"
      ]
    },
    "ResetDeploymentsRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "Force": {
          "shape": "__boolean",
          "documentation": "If true, performs a best-effort only core reset."
        },
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "documentation": "Information needed to reset deployments.",
      "required": [
        "GroupId"
      ]
    },
    "ResetDeploymentsResponse": {
      "type": "structure",
      "members": {
        "DeploymentArn": {
          "shape": "__string",
          "documentation": "The ARN of the deployment."
        },
        "DeploymentId": {
          "shape": "__string",
          "documentation": "The ID of the deployment."
        }
      }
    },
    "Resource": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "__string",
          "documentation": "The resource ID, used to refer to a resource in the Lambda function configuration. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The descriptive resource name, which is displayed on the AWS IoT Greengrass console. Max length 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group."
        },
        "ResourceDataContainer": {
          "shape": "ResourceDataContainer",
          "documentation": "A container of data for all resource types."
        }
      },
      "documentation": "Information about a resource.",
      "required": [
        "ResourceDataContainer",
        "Id",
        "Name"
      ]
    },
    "ResourceAccessPolicy": {
      "type": "structure",
      "members": {
        "Permission": {
          "shape": "Permission",
          "documentation": "The permissions that the Lambda function has to the resource. Can be one of ''rw'' (read/write) or ''ro'' (read-only)."
        },
        "ResourceId": {
          "shape": "__string",
          "documentation": "The ID of the resource. (This ID is assigned to the resource when you create the resource definiton.)"
        }
      },
      "documentation": "A policy used by the function to access a resource.",
      "required": [
        "ResourceId"
      ]
    },
    "ResourceDataContainer": {
      "type": "structure",
      "members": {
        "LocalDeviceResourceData": {
          "shape": "LocalDeviceResourceData",
          "documentation": "Attributes that define the local device resource."
        },
        "LocalVolumeResourceData": {
          "shape": "LocalVolumeResourceData",
          "documentation": "Attributes that define the local volume resource."
        },
        "S3MachineLearningModelResourceData": {
          "shape": "S3MachineLearningModelResourceData",
          "documentation": "Attributes that define an Amazon S3 machine learning resource."
        },
        "SageMakerMachineLearningModelResourceData": {
          "shape": "SageMakerMachineLearningModelResourceData",
          "documentation": "Attributes that define an Amazon SageMaker machine learning resource."
        },
        "SecretsManagerSecretResourceData": {
          "shape": "SecretsManagerSecretResourceData",
          "documentation": "Attributes that define a secret resource, which references a secret from AWS Secrets Manager."
        }
      },
      "documentation": "A container for resource data. The container takes only one of the following supported resource data types: ''LocalDeviceResourceData'', ''LocalVolumeResourceData'', ''SageMakerMachineLearningModelResourceData'', ''S3MachineLearningModelResourceData'', ''SecretsManagerSecretResourceData''."
    },
    "ResourceDefinitionVersion": {
      "type": "structure",
      "members": {
        "Resources": {
          "shape": "__listOfResource",
          "documentation": "A list of resources."
        }
      },
      "documentation": "Information about a resource definition version."
    },
    "ResourceDownloadOwnerSetting": {
      "type": "structure",
      "members": {
        "GroupOwner": {
          "shape": "__string",
          "documentation": "The group owner of the resource. This is the name of an existing Linux OS group on the system or a GID. The group's permissions are added to the Lambda process."
        },
        "GroupPermission": {
          "shape": "Permission",
          "documentation": "The permissions that the group owner has to the resource. Valid values are ''rw'' (read/write) or ''ro'' (read-only)."
        }
      },
      "documentation": "The owner setting for downloaded machine learning resources.",
      "required": [
        "GroupOwner",
        "GroupPermission"
      ]
    },
    "S3MachineLearningModelResourceData": {
      "type": "structure",
      "members": {
        "DestinationPath": {
          "shape": "__string",
          "documentation": "The absolute local path of the resource inside the Lambda environment."
        },
        "OwnerSetting": {
          "shape": "ResourceDownloadOwnerSetting"
        },
        "S3Uri": {
          "shape": "__string",
          "documentation": "The URI of the source model in an S3 bucket. The model package must be in tar.gz or .zip format."
        }
      },
      "documentation": "Attributes that define an Amazon S3 machine learning resource."
    },
    "S3UrlSignerRole": {
      "type": "string",
      "documentation": "The IAM Role that Greengrass will use to create pre-signed URLs pointing towards the update artifact."
    },
    "SageMakerMachineLearningModelResourceData": {
      "type": "structure",
      "members": {
        "DestinationPath": {
          "shape": "__string",
          "documentation": "The absolute local path of the resource inside the Lambda environment."
        },
        "OwnerSetting": {
          "shape": "ResourceDownloadOwnerSetting"
        },
        "SageMakerJobArn": {
          "shape": "__string",
          "documentation": "The ARN of the Amazon SageMaker training job that represents the source model."
        }
      },
      "documentation": "Attributes that define an Amazon SageMaker machine learning resource."
    },
    "SecretsManagerSecretResourceData": {
      "type": "structure",
      "members": {
        "ARN": {
          "shape": "__string",
          "documentation": "The ARN of the Secrets Manager secret to make available on the core. The value of the secret's latest version (represented by the ''AWSCURRENT'' staging label) is included by default."
        },
        "AdditionalStagingLabelsToDownload": {
          "shape": "__listOf__string",
          "documentation": "Optional. The staging labels whose values you want to make available on the core, in addition to ''AWSCURRENT''."
        }
      },
      "documentation": "Attributes that define a secret resource, which references a secret from AWS Secrets Manager. AWS IoT Greengrass stores a local, encrypted copy of the secret on the Greengrass core, where it can be securely accessed by connectors and Lambda functions."
    },
    "SoftwareToUpdate": {
      "type": "string",
      "documentation": "The piece of software on the Greengrass core that will be updated.",
      "enum": [
        "core",
        "ota_agent"
      ]
    },
    "StartBulkDeploymentRequest": {
      "type": "structure",
      "members": {
        "AmznClientToken": {
          "shape": "__string",
          "location": "header",
          "locationName": "X-Amzn-Client-Token",
          "documentation": "A client token used to correlate requests and responses."
        },
        "ExecutionRoleArn": {
          "shape": "__string",
          "documentation": "The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file."
        },
        "InputFileUri": {
          "shape": "__string",
          "documentation": "The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types."
        },
        "tags": {
          "shape": "Tags",
          "documentation": "Tag(s) to add to the new resource."
        }
      },
      "required": [
        "ExecutionRoleArn",
        "InputFileUri"
      ]
    },
    "StartBulkDeploymentResponse": {
      "type": "structure",
      "members": {
        "BulkDeploymentArn": {
          "shape": "__string",
          "documentation": "The ARN of the bulk deployment."
        },
        "BulkDeploymentId": {
          "shape": "__string",
          "documentation": "The ID of the bulk deployment."
        }
      }
    },
    "StopBulkDeploymentRequest": {
      "type": "structure",
      "members": {
        "BulkDeploymentId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "BulkDeploymentId",
          "documentation": "The ID of the bulk deployment."
        }
      },
      "required": [
        "BulkDeploymentId"
      ]
    },
    "StopBulkDeploymentResponse": {
      "type": "structure",
      "members": {}
    },
    "Subscription": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "__string",
          "documentation": "A descriptive or arbitrary ID for the subscription. This value must be unique within the subscription definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''."
        },
        "Source": {
          "shape": "__string",
          "documentation": "The source of the subscription. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'."
        },
        "Subject": {
          "shape": "__string",
          "documentation": "The MQTT topic used to route the message."
        },
        "Target": {
          "shape": "__string",
          "documentation": "Where the message is sent to. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'."
        }
      },
      "documentation": "Information about a subscription.",
      "required": [
        "Target",
        "Id",
        "Subject",
        "Source"
      ]
    },
    "SubscriptionDefinitionVersion": {
      "type": "structure",
      "members": {
        "Subscriptions": {
          "shape": "__listOfSubscription",
          "documentation": "A list of subscriptions."
        }
      },
      "documentation": "Information about a subscription definition version."
    },
    "TagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "The Amazon Resource Name (ARN) of the resource."
        },
        "tags": {
          "shape": "Tags"
        }
      },
      "documentation": "A map of the key-value pairs for the resource tag.",
      "required": [
        "ResourceArn"
      ]
    },
    "Tags": {
      "type": "map",
      "documentation": "The key-value pair for the resource tag.",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "__string"
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "The Amazon Resource Name (ARN) of the resource."
        },
        "TagKeys": {
          "shape": "__listOf__string",
          "location": "querystring",
          "locationName": "tagKeys",
          "documentation": "An array of tag keys to delete"
        }
      },
      "required": [
        "TagKeys",
        "ResourceArn"
      ]
    },
    "UpdateAgentLogLevel": {
      "type": "string",
      "documentation": "The minimum level of log statements that should be logged by the OTA Agent during an update.",
      "enum": [
        "NONE",
        "TRACE",
        "DEBUG",
        "VERBOSE",
        "INFO",
        "WARN",
        "ERROR",
        "FATAL"
      ]
    },
    "UpdateConnectivityInfoRequest": {
      "type": "structure",
      "members": {
        "ConnectivityInfo": {
          "shape": "__listOfConnectivityInfo",
          "documentation": "A list of connectivity info."
        },
        "ThingName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ThingName",
          "documentation": "The thing name."
        }
      },
      "documentation": "Connectivity information.",
      "required": [
        "ThingName"
      ]
    },
    "UpdateConnectivityInfoResponse": {
      "type": "structure",
      "members": {
        "Message": {
          "shape": "__string",
          "locationName": "message",
          "documentation": "A message about the connectivity info update request."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The new version of the connectivity info."
        }
      }
    },
    "UpdateConnectorDefinitionRequest": {
      "type": "structure",
      "members": {
        "ConnectorDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ConnectorDefinitionId",
          "documentation": "The ID of the connector definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      },
      "required": [
        "ConnectorDefinitionId"
      ]
    },
    "UpdateConnectorDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateCoreDefinitionRequest": {
      "type": "structure",
      "members": {
        "CoreDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "CoreDefinitionId",
          "documentation": "The ID of the core definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      },
      "required": [
        "CoreDefinitionId"
      ]
    },
    "UpdateCoreDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDeviceDefinitionRequest": {
      "type": "structure",
      "members": {
        "DeviceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DeviceDefinitionId",
          "documentation": "The ID of the device definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      },
      "required": [
        "DeviceDefinitionId"
      ]
    },
    "UpdateDeviceDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateFunctionDefinitionRequest": {
      "type": "structure",
      "members": {
        "FunctionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "FunctionDefinitionId",
          "documentation": "The ID of the Lambda function definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      },
      "required": [
        "FunctionDefinitionId"
      ]
    },
    "UpdateFunctionDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateGroupCertificateConfigurationRequest": {
      "type": "structure",
      "members": {
        "CertificateExpiryInMilliseconds": {
          "shape": "__string",
          "documentation": "The amount of time remaining before the certificate expires, in milliseconds."
        },
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "UpdateGroupCertificateConfigurationResponse": {
      "type": "structure",
      "members": {
        "CertificateAuthorityExpiryInMilliseconds": {
          "shape": "__string",
          "documentation": "The amount of time remaining before the certificate authority expires, in milliseconds."
        },
        "CertificateExpiryInMilliseconds": {
          "shape": "__string",
          "documentation": "The amount of time remaining before the certificate expires, in milliseconds."
        },
        "GroupId": {
          "shape": "__string",
          "documentation": "The ID of the group certificate configuration."
        }
      }
    },
    "UpdateGroupRequest": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "GroupId",
          "documentation": "The ID of the Greengrass group."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      },
      "required": [
        "GroupId"
      ]
    },
    "UpdateGroupResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateLoggerDefinitionRequest": {
      "type": "structure",
      "members": {
        "LoggerDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "LoggerDefinitionId",
          "documentation": "The ID of the logger definition."
        },
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        }
      },
      "required": [
        "LoggerDefinitionId"
      ]
    },
    "UpdateLoggerDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateResourceDefinitionRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "ResourceDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "ResourceDefinitionId",
          "documentation": "The ID of the resource definition."
        }
      },
      "required": [
        "ResourceDefinitionId"
      ]
    },
    "UpdateResourceDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateSubscriptionDefinitionRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "documentation": "The name of the definition."
        },
        "SubscriptionDefinitionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "SubscriptionDefinitionId",
          "documentation": "The ID of the subscription definition."
        }
      },
      "required": [
        "SubscriptionDefinitionId"
      ]
    },
    "UpdateSubscriptionDefinitionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateTargets": {
      "type": "list",
      "documentation": "The ARNs of the targets (IoT things or IoT thing groups) that this update will be applied to.",
      "member": {
        "shape": "__string"
      }
    },
    "UpdateTargetsArchitecture": {
      "type": "string",
      "documentation": "The architecture of the cores which are the targets of an update.",
      "enum": [
        "armv6l",
        "armv7l",
        "x86_64",
        "aarch64"
      ]
    },
    "UpdateTargetsOperatingSystem": {
      "type": "string",
      "documentation": "The operating system of the cores which are the targets of an update.",
      "enum": [
        "ubuntu",
        "raspbian",
        "amazon_linux",
        "openwrt"
      ]
    },
    "VersionInformation": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "documentation": "The ARN of the version."
        },
        "CreationTimestamp": {
          "shape": "__string",
          "documentation": "The time, in milliseconds since the epoch, when the version was created."
        },
        "Id": {
          "shape": "__string",
          "documentation": "The ID of the parent definition that the version is associated with."
        },
        "Version": {
          "shape": "__string",
          "documentation": "The ID of the version."
        }
      },
      "documentation": "Information about a version."
    },
    "__boolean": {
      "type": "boolean"
    },
    "__integer": {
      "type": "integer"
    },
    "__listOfConnectivityInfo": {
      "type": "list",
      "member": {
        "shape": "ConnectivityInfo"
      }
    },
    "__listOfConnector": {
      "type": "list",
      "member": {
        "shape": "Connector"
      }
    },
    "__listOfCore": {
      "type": "list",
      "member": {
        "shape": "Core"
      }
    },
    "__listOfDefinitionInformation": {
      "type": "list",
      "member": {
        "shape": "DefinitionInformation"
      }
    },
    "__listOfDevice": {
      "type": "list",
      "member": {
        "shape": "Device"
      }
    },
    "__listOfFunction": {
      "type": "list",
      "member": {
        "shape": "Function"
      }
    },
    "__listOfGroupCertificateAuthorityProperties": {
      "type": "list",
      "member": {
        "shape": "GroupCertificateAuthorityProperties"
      }
    },
    "__listOfGroupInformation": {
      "type": "list",
      "member": {
        "shape": "GroupInformation"
      }
    },
    "__listOfLogger": {
      "type": "list",
      "member": {
        "shape": "Logger"
      }
    },
    "__listOfResource": {
      "type": "list",
      "member": {
        "shape": "Resource"
      }
    },
    "__listOfResourceAccessPolicy": {
      "type": "list",
      "member": {
        "shape": "ResourceAccessPolicy"
      }
    },
    "__listOfSubscription": {
      "type": "list",
      "member": {
        "shape": "Subscription"
      }
    },
    "__listOfVersionInformation": {
      "type": "list",
      "member": {
        "shape": "VersionInformation"
      }
    },
    "__listOf__string": {
      "type": "list",
      "member": {
        "shape": "__string"
      }
    },
    "__mapOf__string": {
      "type": "map",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "__string"
      }
    },
    "__string": {
      "type": "string"
    }
  },
  "documentation": "AWS IoT Greengrass seamlessly extends AWS onto physical devices so they can act locally on the data they generate, while still using the cloud for management, analytics, and durable storage. AWS IoT Greengrass ensures your devices can respond quickly to local events and operate with intermittent connectivity. AWS IoT Greengrass minimizes the cost of transmitting data to the cloud by allowing you to author AWS Lambda functions that execute locally."
}
]===]))