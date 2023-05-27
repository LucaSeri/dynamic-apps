local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-09-23",
    "endpointPrefix": "cloud9",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Cloud9",
    "serviceId": "Cloud9",
    "signatureVersion": "v4",
    "targetPrefix": "AWSCloud9WorkspaceManagementService",
    "uid": "cloud9-2017-09-23"
  },
  "operations": {
    "CreateEnvironmentEC2": {
      "name": "CreateEnvironmentEC2",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEnvironmentEC2Request"
      },
      "output": {
        "shape": "CreateEnvironmentEC2Result"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.</p>",
      "idempotent": true
    },
    "CreateEnvironmentMembership": {
      "name": "CreateEnvironmentMembership",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEnvironmentMembershipRequest"
      },
      "output": {
        "shape": "CreateEnvironmentMembershipResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Adds an environment member to an AWS Cloud9 development environment.</p>",
      "idempotent": true
    },
    "DeleteEnvironment": {
      "name": "DeleteEnvironment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEnvironmentRequest"
      },
      "output": {
        "shape": "DeleteEnvironmentResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes an AWS Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.</p>",
      "idempotent": true
    },
    "DeleteEnvironmentMembership": {
      "name": "DeleteEnvironmentMembership",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEnvironmentMembershipRequest"
      },
      "output": {
        "shape": "DeleteEnvironmentMembershipResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes an environment member from an AWS Cloud9 development environment.</p>",
      "idempotent": true
    },
    "DescribeEnvironmentMemberships": {
      "name": "DescribeEnvironmentMemberships",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEnvironmentMembershipsRequest"
      },
      "output": {
        "shape": "DescribeEnvironmentMembershipsResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Gets information about environment members for an AWS Cloud9 development environment.</p>"
    },
    "DescribeEnvironmentStatus": {
      "name": "DescribeEnvironmentStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEnvironmentStatusRequest"
      },
      "output": {
        "shape": "DescribeEnvironmentStatusResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Gets status information for an AWS Cloud9 development environment.</p>"
    },
    "DescribeEnvironments": {
      "name": "DescribeEnvironments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEnvironmentsRequest"
      },
      "output": {
        "shape": "DescribeEnvironmentsResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Gets information about AWS Cloud9 development environments.</p>"
    },
    "ListEnvironments": {
      "name": "ListEnvironments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListEnvironmentsRequest"
      },
      "output": {
        "shape": "ListEnvironmentsResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Gets a list of AWS Cloud9 development environment identifiers.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "BadRequestException"
        }
      ],
      "documentation": "<p>Gets a list of the tags associated with an AWS Cloud9 development environment.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentAccessException"
        }
      ],
      "documentation": "<p>Adds tags to an AWS Cloud9 development environment.</p> <important> <p>Tags that you add to an AWS Cloud9 environment by using this method will NOT be automatically propagated to underlying resources.</p> </important>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConcurrentAccessException"
        }
      ],
      "documentation": "<p>Removes tags from an AWS Cloud9 development environment.</p>"
    },
    "UpdateEnvironment": {
      "name": "UpdateEnvironment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateEnvironmentRequest"
      },
      "output": {
        "shape": "UpdateEnvironmentResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Changes the settings of an existing AWS Cloud9 development environment.</p>",
      "idempotent": true
    },
    "UpdateEnvironmentMembership": {
      "name": "UpdateEnvironmentMembership",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateEnvironmentMembershipRequest"
      },
      "output": {
        "shape": "UpdateEnvironmentMembershipResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Changes the settings of an existing environment member for an AWS Cloud9 development environment.</p>",
      "idempotent": true
    }
  },
  "shapes": {
    "AutomaticStopTimeMinutes": {
      "type": "integer",
      "box": true,
      "max": 20160
    },
    "BoundedEnvironmentIdList": {
      "type": "list",
      "member": {
        "shape": "EnvironmentId"
      },
      "max": 25,
      "min": 1
    },
    "ClientRequestToken": {
      "type": "string",
      "pattern": "[\\x20-\\x7E]{10,128}"
    },
    "ConnectionType": {
      "type": "string",
      "enum": [
        "CONNECT_SSH",
        "CONNECT_SSM"
      ]
    },
    "CreateEnvironmentEC2Request": {
      "type": "structure",
      "required": [
        "name",
        "instanceType"
      ],
      "members": {
        "name": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment to create.</p> <p>This name is visible to other AWS IAM users in the same AWS account.</p>"
        },
        "description": {
          "shape": "EnvironmentDescription",
          "documentation": "<p>The description of the environment to create.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html\">Client Tokens</a> in the <i>Amazon EC2 API Reference</i>.</p>"
        },
        "instanceType": {
          "shape": "InstanceType",
          "documentation": "<p>The type of instance to connect to the environment (for example, <code>t2.micro</code>).</p>"
        },
        "subnetId": {
          "shape": "SubnetId",
          "documentation": "<p>The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.</p>"
        },
        "automaticStopTimeMinutes": {
          "shape": "AutomaticStopTimeMinutes",
          "documentation": "<p>The number of minutes until the running instance is shut down after the environment has last been used.</p>"
        },
        "ownerArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment's creator.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>An array of key-value pairs that will be associated with the new AWS Cloud9 development environment.</p>"
        },
        "connectionType": {
          "shape": "ConnectionType",
          "documentation": "<p>The connection type used for connecting to an Amazon EC2 environment.</p>"
        }
      }
    },
    "CreateEnvironmentEC2Result": {
      "type": "structure",
      "members": {
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment that was created.</p>"
        }
      }
    },
    "CreateEnvironmentMembershipRequest": {
      "type": "structure",
      "required": [
        "environmentId",
        "userArn",
        "permissions"
      ],
      "members": {
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment that contains the environment member you want to add.</p>"
        },
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the environment member you want to add.</p>"
        },
        "permissions": {
          "shape": "MemberPermissions",
          "documentation": "<p>The type of environment member permissions you want to associate with this environment member. Available values include:</p> <ul> <li> <p> <code>read-only</code>: Has read-only access to the environment.</p> </li> <li> <p> <code>read-write</code>: Has read-write access to the environment.</p> </li> </ul>"
        }
      }
    },
    "CreateEnvironmentMembershipResult": {
      "type": "structure",
      "members": {
        "membership": {
          "shape": "EnvironmentMember",
          "documentation": "<p>Information about the environment member that was added.</p>"
        }
      }
    },
    "DeleteEnvironmentMembershipRequest": {
      "type": "structure",
      "required": [
        "environmentId",
        "userArn"
      ],
      "members": {
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to delete the environment member from.</p>"
        },
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the environment member to delete from the environment.</p>"
        }
      }
    },
    "DeleteEnvironmentMembershipResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteEnvironmentRequest": {
      "type": "structure",
      "required": [
        "environmentId"
      ],
      "members": {
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to delete.</p>"
        }
      }
    },
    "DeleteEnvironmentResult": {
      "type": "structure",
      "members": {}
    },
    "DescribeEnvironmentMembershipsRequest": {
      "type": "structure",
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.</p>"
        },
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to get environment member information about.</p>"
        },
        "permissions": {
          "shape": "PermissionsList",
          "documentation": "<p>The type of environment member permissions to get information about. Available values include:</p> <ul> <li> <p> <code>owner</code>: Owns the environment.</p> </li> <li> <p> <code>read-only</code>: Has read-only access to the environment.</p> </li> <li> <p> <code>read-write</code>: Has read-write access to the environment.</p> </li> </ul> <p>If no value is specified, information about all environment members are returned.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of environment members to get information about.</p>"
        }
      }
    },
    "DescribeEnvironmentMembershipsResult": {
      "type": "structure",
      "members": {
        "memberships": {
          "shape": "EnvironmentMembersList",
          "documentation": "<p>Information about the environment members for the environment.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>"
        }
      }
    },
    "DescribeEnvironmentStatusRequest": {
      "type": "structure",
      "required": [
        "environmentId"
      ],
      "members": {
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to get status information about.</p>"
        }
      }
    },
    "DescribeEnvironmentStatusResult": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "EnvironmentStatus",
          "documentation": "<p>The status of the environment. Available values include:</p> <ul> <li> <p> <code>connecting</code>: The environment is connecting.</p> </li> <li> <p> <code>creating</code>: The environment is being created.</p> </li> <li> <p> <code>deleting</code>: The environment is being deleted.</p> </li> <li> <p> <code>error</code>: The environment is in an error state.</p> </li> <li> <p> <code>ready</code>: The environment is ready.</p> </li> <li> <p> <code>stopped</code>: The environment is stopped.</p> </li> <li> <p> <code>stopping</code>: The environment is stopping.</p> </li> </ul>"
        },
        "message": {
          "shape": "String",
          "documentation": "<p>Any informational message about the status of the environment.</p>"
        }
      }
    },
    "DescribeEnvironmentsRequest": {
      "type": "structure",
      "required": [
        "environmentIds"
      ],
      "members": {
        "environmentIds": {
          "shape": "BoundedEnvironmentIdList",
          "documentation": "<p>The IDs of individual environments to get information about.</p>"
        }
      }
    },
    "DescribeEnvironmentsResult": {
      "type": "structure",
      "members": {
        "environments": {
          "shape": "EnvironmentList",
          "documentation": "<p>Information about the environments that are returned.</p>"
        }
      }
    },
    "Environment": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment.</p>"
        },
        "name": {
          "shape": "EnvironmentName",
          "documentation": "<p>The name of the environment.</p>"
        },
        "description": {
          "shape": "EnvironmentDescription",
          "documentation": "<p>The description for the environment.</p>"
        },
        "type": {
          "shape": "EnvironmentType",
          "documentation": "<p>The type of environment. Valid values include the following:</p> <ul> <li> <p> <code>ec2</code>: An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.</p> </li> <li> <p> <code>ssh</code>: Your own server connects to the environment.</p> </li> </ul>"
        },
        "connectionType": {
          "shape": "ConnectionType",
          "documentation": "<p>The connection type used for connecting to an Amazon EC2 environment.</p>"
        },
        "arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the environment.</p>"
        },
        "ownerArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the environment owner.</p>"
        },
        "lifecycle": {
          "shape": "EnvironmentLifecycle",
          "documentation": "<p>The state of the environment in its creation or deletion lifecycle.</p>"
        }
      },
      "documentation": "<p>Information about an AWS Cloud9 development environment.</p>"
    },
    "EnvironmentArn": {
      "type": "string",
      "pattern": "arn:aws:cloud9:([a-z]{2}-[a-z]+-\\d{1}):[0-9]{12}:environment:[a-zA-Z0-9]{8,32}"
    },
    "EnvironmentDescription": {
      "type": "string",
      "max": 200,
      "sensitive": true
    },
    "EnvironmentId": {
      "type": "string",
      "pattern": "^[a-zA-Z0-9]{8,32}$"
    },
    "EnvironmentIdList": {
      "type": "list",
      "member": {
        "shape": "EnvironmentId"
      }
    },
    "EnvironmentLifecycle": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "EnvironmentLifecycleStatus",
          "documentation": "<p>The current creation or deletion lifecycle state of the environment.</p> <ul> <li> <p> <code>CREATING</code>: The environment is in the process of being created.</p> </li> <li> <p> <code>CREATED</code>: The environment was successfully created.</p> </li> <li> <p> <code>CREATE_FAILED</code>: The environment failed to be created.</p> </li> <li> <p> <code>DELETING</code>: The environment is in the process of being deleted.</p> </li> <li> <p> <code>DELETE_FAILED</code>: The environment failed to delete.</p> </li> </ul>"
        },
        "reason": {
          "shape": "String",
          "documentation": "<p>Any informational message about the lifecycle state of the environment.</p>"
        },
        "failureResource": {
          "shape": "String",
          "documentation": "<p>If the environment failed to delete, the Amazon Resource Name (ARN) of the related AWS resource.</p>"
        }
      },
      "documentation": "<p>Information about the current creation or deletion lifecycle state of an AWS Cloud9 development environment.</p>"
    },
    "EnvironmentLifecycleStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "CREATED",
        "CREATE_FAILED",
        "DELETING",
        "DELETE_FAILED"
      ]
    },
    "EnvironmentList": {
      "type": "list",
      "member": {
        "shape": "Environment"
      }
    },
    "EnvironmentMember": {
      "type": "structure",
      "members": {
        "permissions": {
          "shape": "Permissions",
          "documentation": "<p>The type of environment member permissions associated with this environment member. Available values include:</p> <ul> <li> <p> <code>owner</code>: Owns the environment.</p> </li> <li> <p> <code>read-only</code>: Has read-only access to the environment.</p> </li> <li> <p> <code>read-write</code>: Has read-write access to the environment.</p> </li> </ul>"
        },
        "userId": {
          "shape": "String",
          "documentation": "<p>The user ID in AWS Identity and Access Management (AWS IAM) of the environment member.</p>"
        },
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the environment member.</p>"
        },
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment for the environment member.</p>"
        },
        "lastAccess": {
          "shape": "Timestamp",
          "documentation": "<p>The time, expressed in epoch time format, when the environment member last opened the environment.</p>"
        }
      },
      "documentation": "<p>Information about an environment member for an AWS Cloud9 development environment.</p>"
    },
    "EnvironmentMembersList": {
      "type": "list",
      "member": {
        "shape": "EnvironmentMember"
      }
    },
    "EnvironmentName": {
      "type": "string",
      "max": 60,
      "min": 1
    },
    "EnvironmentStatus": {
      "type": "string",
      "enum": [
        "error",
        "creating",
        "connecting",
        "ready",
        "stopping",
        "stopped",
        "deleting"
      ]
    },
    "EnvironmentType": {
      "type": "string",
      "enum": [
        "ssh",
        "ec2"
      ]
    },
    "InstanceType": {
      "type": "string",
      "max": 20,
      "min": 5,
      "pattern": "^[a-z][1-9][.][a-z0-9]+$"
    },
    "ListEnvironmentsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of environments to get identifiers for.</p>"
        }
      }
    },
    "ListEnvironmentsResult": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a <i>next token</i>. To get the next batch of items in the list, call this operation again, adding the next token to the call.</p>"
        },
        "environmentIds": {
          "shape": "EnvironmentIdList",
          "documentation": "<p>The list of environment identifiers.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "EnvironmentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Cloud9 development environment to get the tags for.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags associated with the AWS Cloud9 development environment.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 25,
      "min": 0
    },
    "MemberPermissions": {
      "type": "string",
      "enum": [
        "read-write",
        "read-only"
      ]
    },
    "Permissions": {
      "type": "string",
      "enum": [
        "owner",
        "read-write",
        "read-only"
      ]
    },
    "PermissionsList": {
      "type": "list",
      "member": {
        "shape": "Permissions"
      }
    },
    "String": {
      "type": "string"
    },
    "SubnetId": {
      "type": "string",
      "max": 30,
      "min": 5
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The <b>name</b> part of a tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The <b>value</b> part of a tag.</p>"
        }
      },
      "documentation": "<p>Metadata that is associated with AWS resources. In particular, a name-value pair that can be associated with an AWS Cloud9 development environment. There are two types of tags: <i>user tags</i> and <i>system tags</i>. A user tag is created by the user. A system tag is automatically created by AWS services. A system tag is prefixed with \"aws:\" and cannot be modified by the user.</p>"
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
      },
      "max": 200,
      "min": 0
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "EnvironmentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Cloud9 development environment to add tags to.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags to add to the given AWS Cloud9 development environment.</p>"
        }
      }
    },
    "TagResourceResponse": {
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
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "EnvironmentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Cloud9 development environment to remove tags from.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag names of the tags to remove from the given AWS Cloud9 development environment.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateEnvironmentMembershipRequest": {
      "type": "structure",
      "required": [
        "environmentId",
        "userArn",
        "permissions"
      ],
      "members": {
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment for the environment member whose settings you want to change.</p>"
        },
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the environment member whose settings you want to change.</p>"
        },
        "permissions": {
          "shape": "MemberPermissions",
          "documentation": "<p>The replacement type of environment member permissions you want to associate with this environment member. Available values include:</p> <ul> <li> <p> <code>read-only</code>: Has read-only access to the environment.</p> </li> <li> <p> <code>read-write</code>: Has read-write access to the environment.</p> </li> </ul>"
        }
      }
    },
    "UpdateEnvironmentMembershipResult": {
      "type": "structure",
      "members": {
        "membership": {
          "shape": "EnvironmentMember",
          "documentation": "<p>Information about the environment member whose settings were changed.</p>"
        }
      }
    },
    "UpdateEnvironmentRequest": {
      "type": "structure",
      "required": [
        "environmentId"
      ],
      "members": {
        "environmentId": {
          "shape": "EnvironmentId",
          "documentation": "<p>The ID of the environment to change settings.</p>"
        },
        "name": {
          "shape": "EnvironmentName",
          "documentation": "<p>A replacement name for the environment.</p>"
        },
        "description": {
          "shape": "EnvironmentDescription",
          "documentation": "<p>Any new or replacement description for the environment.</p>"
        }
      }
    },
    "UpdateEnvironmentResult": {
      "type": "structure",
      "members": {}
    },
    "UserArn": {
      "type": "string",
      "pattern": "^arn:aws:(iam|sts)::\\d+:(root|(user\\/[\\w+=/:,.@-]{1,64}|federated-user\\/[\\w+=/:,.@-]{2,32}|assumed-role\\/[\\w+=:,.@-]{1,64}\\/[\\w+=,.@-]{1,64}))$"
    }
  },
  "documentation": "<fullname>AWS Cloud9</fullname> <p>AWS Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and release software in the cloud.</p> <p>For more information about AWS Cloud9, see the <a href=\"https://docs.aws.amazon.com/cloud9/latest/user-guide\">AWS Cloud9 User Guide</a>.</p> <p>AWS Cloud9 supports these operations:</p> <ul> <li> <p> <code>CreateEnvironmentEC2</code>: Creates an AWS Cloud9 development environment, launches an Amazon EC2 instance, and then connects from the instance to the environment.</p> </li> <li> <p> <code>CreateEnvironmentMembership</code>: Adds an environment member to an environment.</p> </li> <li> <p> <code>DeleteEnvironment</code>: Deletes an environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.</p> </li> <li> <p> <code>DeleteEnvironmentMembership</code>: Deletes an environment member from an environment.</p> </li> <li> <p> <code>DescribeEnvironmentMemberships</code>: Gets information about environment members for an environment.</p> </li> <li> <p> <code>DescribeEnvironments</code>: Gets information about environments.</p> </li> <li> <p> <code>DescribeEnvironmentStatus</code>: Gets status information for an environment.</p> </li> <li> <p> <code>ListEnvironments</code>: Gets a list of environment identifiers.</p> </li> <li> <p> <code>ListTagsForResource</code>: Gets the tags for an environment.</p> </li> <li> <p> <code>TagResource</code>: Adds tags to an environment.</p> </li> <li> <p> <code>UntagResource</code>: Removes tags from an environment.</p> </li> <li> <p> <code>UpdateEnvironment</code>: Changes the settings of an existing environment.</p> </li> <li> <p> <code>UpdateEnvironmentMembership</code>: Changes the settings of an existing environment member for an environment.</p> </li> </ul>"
}
]===]))
