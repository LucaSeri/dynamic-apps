local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-11-09",
    "endpointPrefix": "datasync",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "DataSync",
    "serviceFullName": "AWS DataSync",
    "serviceId": "DataSync",
    "signatureVersion": "v4",
    "signingName": "datasync",
    "targetPrefix": "FmrsService",
    "uid": "datasync-2018-11-09"
  },
  "operations": {
    "CancelTaskExecution": {
      "name": "CancelTaskExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelTaskExecutionRequest"
      },
      "output": {
        "shape": "CancelTaskExecutionResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Cancels execution of a task. </p> <p>When you cancel a task execution, the transfer of some files is abruptly interrupted. The contents of files that are transferred to the destination might be incomplete or inconsistent with the source files. However, if you start a new task execution on the same task and you allow the task execution to complete, file content on the destination is complete and consistent. This applies to other unexpected failures that interrupt a task execution. In all of these cases, AWS DataSync successfully complete the transfer when you start the next task execution.</p>"
    },
    "CreateAgent": {
      "name": "CreateAgent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAgentRequest"
      },
      "output": {
        "shape": "CreateAgentResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Activates an AWS DataSync agent that you have deployed on your host. The activation process associates your agent with your account. In the activation process, you specify information such as the AWS Region that you want to activate the agent in. You activate the agent in the AWS Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your tasks are created in this AWS Region.</p> <p>You can activate the agent in a VPC (virtual private cloud) or provide the agent access to a VPC endpoint so you can run tasks without going over the public Internet.</p> <p>You can use an agent for more than one location. If a task uses multiple agents, all of them need to have status AVAILABLE for the task to run. If you use multiple agents for a source location, the status of all the agents must be AVAILABLE for the task to run. </p> <p>Agents are automatically updated by AWS on a regular basis, using a mechanism that ensures minimal interruption to your tasks.</p> <p/>"
    },
    "CreateLocationEfs": {
      "name": "CreateLocationEfs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLocationEfsRequest"
      },
      "output": {
        "shape": "CreateLocationEfsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Creates an endpoint for an Amazon EFS file system.</p>"
    },
    "CreateLocationFsxWindows": {
      "name": "CreateLocationFsxWindows",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLocationFsxWindowsRequest"
      },
      "output": {
        "shape": "CreateLocationFsxWindowsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Creates an endpoint for an Amazon FSx for Windows file system.</p>"
    },
    "CreateLocationNfs": {
      "name": "CreateLocationNfs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLocationNfsRequest"
      },
      "output": {
        "shape": "CreateLocationNfsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Defines a file system on a Network File System (NFS) server that can be read from or written to.</p>"
    },
    "CreateLocationObjectStorage": {
      "name": "CreateLocationObjectStorage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLocationObjectStorageRequest"
      },
      "output": {
        "shape": "CreateLocationObjectStorageResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Creates an endpoint for a self-managed object storage bucket.</p>"
    },
    "CreateLocationS3": {
      "name": "CreateLocationS3",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLocationS3Request"
      },
      "output": {
        "shape": "CreateLocationS3Response"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Creates an endpoint for an Amazon S3 bucket.</p> <p>For AWS DataSync to access a destination S3 bucket, it needs an AWS Identity and Access Management (IAM) role that has the required permissions. You can set up the required permissions by creating an IAM policy that grants the required permissions and attaching the policy to the role. An example of such a policy is shown in the examples section.</p> <p>For more information, see https://docs.aws.amazon.com/datasync/latest/userguide/working-with-locations.html#create-s3-location in the <i>AWS DataSync User Guide.</i> </p>"
    },
    "CreateLocationSmb": {
      "name": "CreateLocationSmb",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLocationSmbRequest"
      },
      "output": {
        "shape": "CreateLocationSmbResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Defines a file system on a Server Message Block (SMB) server that can be read from or written to.</p>"
    },
    "CreateTask": {
      "name": "CreateTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTaskRequest"
      },
      "output": {
        "shape": "CreateTaskResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Creates a task. A task is a set of two locations (source and destination) and a set of Options that you use to control the behavior of a task. If you don't specify Options when you create a task, AWS DataSync populates them with service defaults.</p> <p>When you create a task, it first enters the CREATING state. During CREATING AWS DataSync attempts to mount the on-premises Network File System (NFS) location. The task transitions to the AVAILABLE state without waiting for the AWS location to become mounted. If required, AWS DataSync mounts the AWS location before each task execution.</p> <p>If an agent that is associated with a source (NFS) location goes offline, the task transitions to the UNAVAILABLE status. If the status of the task remains in the CREATING status for more than a few minutes, it means that your agent might be having trouble mounting the source NFS file system. Check the task's ErrorCode and ErrorDetail. Mount issues are often caused by either a misconfigured firewall or a mistyped NFS server host name.</p>"
    },
    "DeleteAgent": {
      "name": "DeleteAgent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAgentRequest"
      },
      "output": {
        "shape": "DeleteAgentResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN) of the agent in your request. The operation disassociates the agent from your AWS account. However, it doesn't delete the agent virtual machine (VM) from your on-premises environment.</p>"
    },
    "DeleteLocation": {
      "name": "DeleteLocation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLocationRequest"
      },
      "output": {
        "shape": "DeleteLocationResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Deletes the configuration of a location used by AWS DataSync. </p>"
    },
    "DeleteTask": {
      "name": "DeleteTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTaskRequest"
      },
      "output": {
        "shape": "DeleteTaskResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Deletes a task.</p>"
    },
    "DescribeAgent": {
      "name": "DescribeAgent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAgentRequest"
      },
      "output": {
        "shape": "DescribeAgentResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns metadata such as the name, the network interfaces, and the status (that is, whether the agent is running or not) for an agent. To specify which agent to describe, use the Amazon Resource Name (ARN) of the agent in your request. </p>"
    },
    "DescribeLocationEfs": {
      "name": "DescribeLocationEfs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLocationEfsRequest"
      },
      "output": {
        "shape": "DescribeLocationEfsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns metadata, such as the path information about an Amazon EFS location.</p>"
    },
    "DescribeLocationFsxWindows": {
      "name": "DescribeLocationFsxWindows",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLocationFsxWindowsRequest"
      },
      "output": {
        "shape": "DescribeLocationFsxWindowsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns metadata, such as the path information about an Amazon FSx for Windows location.</p>"
    },
    "DescribeLocationNfs": {
      "name": "DescribeLocationNfs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLocationNfsRequest"
      },
      "output": {
        "shape": "DescribeLocationNfsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns metadata, such as the path information, about an NFS location.</p>"
    },
    "DescribeLocationObjectStorage": {
      "name": "DescribeLocationObjectStorage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLocationObjectStorageRequest"
      },
      "output": {
        "shape": "DescribeLocationObjectStorageResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns metadata about a self-managed object storage server location.</p>"
    },
    "DescribeLocationS3": {
      "name": "DescribeLocationS3",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLocationS3Request"
      },
      "output": {
        "shape": "DescribeLocationS3Response"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns metadata, such as bucket name, about an Amazon S3 bucket location.</p>"
    },
    "DescribeLocationSmb": {
      "name": "DescribeLocationSmb",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLocationSmbRequest"
      },
      "output": {
        "shape": "DescribeLocationSmbResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns metadata, such as the path and user information about an SMB location.</p>"
    },
    "DescribeTask": {
      "name": "DescribeTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTaskRequest"
      },
      "output": {
        "shape": "DescribeTaskResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns metadata about a task.</p>"
    },
    "DescribeTaskExecution": {
      "name": "DescribeTaskExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTaskExecutionRequest"
      },
      "output": {
        "shape": "DescribeTaskExecutionResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns detailed metadata about a task that is being executed.</p>"
    },
    "ListAgents": {
      "name": "ListAgents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAgentsRequest"
      },
      "output": {
        "shape": "ListAgentsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns a list of agents owned by an AWS account in the AWS Region specified in the request. The returned list is ordered by agent Amazon Resource Name (ARN).</p> <p>By default, this operation returns a maximum of 100 agents. This operation supports pagination that enables you to optionally reduce the number of agents returned in a response.</p> <p>If you have more agents than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a marker that you can specify in your next request to fetch the next page of agents.</p>"
    },
    "ListLocations": {
      "name": "ListLocations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListLocationsRequest"
      },
      "output": {
        "shape": "ListLocationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns a list of source and destination locations.</p> <p>If you have more locations than are returned in a response (that is, the response returns only a truncated list of your agents), the response contains a token that you can specify in your next request to fetch the next page of locations.</p>"
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
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns all the tags associated with a specified resource. </p>"
    },
    "ListTaskExecutions": {
      "name": "ListTaskExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTaskExecutionsRequest"
      },
      "output": {
        "shape": "ListTaskExecutionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns a list of executed tasks.</p>"
    },
    "ListTasks": {
      "name": "ListTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTasksRequest"
      },
      "output": {
        "shape": "ListTasksResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Returns a list of all the tasks.</p>"
    },
    "StartTaskExecution": {
      "name": "StartTaskExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartTaskExecutionRequest"
      },
      "output": {
        "shape": "StartTaskExecutionResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Starts a specific invocation of a task. A <code>TaskExecution</code> value represents an individual run of a task. Each task can have at most one <code>TaskExecution</code> at a time.</p> <p> <code>TaskExecution</code> has the following transition phases: INITIALIZING | PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE. </p> <p>For detailed information, see the Task Execution section in the Components and Terminology topic in the <i>AWS DataSync User Guide</i>.</p>"
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
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Applies a key-value pair to an AWS resource.</p>"
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
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Removes a tag from an AWS resource.</p>"
    },
    "UpdateAgent": {
      "name": "UpdateAgent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAgentRequest"
      },
      "output": {
        "shape": "UpdateAgentResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Updates the name of an agent.</p>"
    },
    "UpdateTask": {
      "name": "UpdateTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTaskRequest"
      },
      "output": {
        "shape": "UpdateTaskResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalException"
        }
      ],
      "documentation": "<p>Updates the metadata associated with a task.</p>"
    }
  },
  "shapes": {
    "ActivationKey": {
      "type": "string",
      "max": 29,
      "pattern": "[A-Z0-9]{5}(-[A-Z0-9]{5}){4}"
    },
    "AgentArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:agent/agent-[0-9a-z]{17}$"
    },
    "AgentArnList": {
      "type": "list",
      "member": {
        "shape": "AgentArn"
      },
      "max": 4,
      "min": 1
    },
    "AgentList": {
      "type": "list",
      "member": {
        "shape": "AgentListEntry"
      }
    },
    "AgentListEntry": {
      "type": "structure",
      "members": {
        "AgentArn": {
          "shape": "AgentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agent.</p>"
        },
        "Name": {
          "shape": "TagValue",
          "documentation": "<p>The name of the agent.</p>"
        },
        "Status": {
          "shape": "AgentStatus",
          "documentation": "<p>The status of the agent.</p>"
        }
      },
      "documentation": "<p>Represents a single entry in a list of agents. <code>AgentListEntry</code> returns an array that contains a list of agents when the <a>ListAgents</a> operation is called.</p>"
    },
    "AgentStatus": {
      "type": "string",
      "enum": [
        "ONLINE",
        "OFFLINE"
      ]
    },
    "Atime": {
      "type": "string",
      "enum": [
        "NONE",
        "BEST_EFFORT"
      ]
    },
    "BytesPerSecond": {
      "type": "long",
      "min": -1
    },
    "CancelTaskExecutionRequest": {
      "type": "structure",
      "required": [
        "TaskExecutionArn"
      ],
      "members": {
        "TaskExecutionArn": {
          "shape": "TaskExecutionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task execution to cancel.</p>"
        }
      },
      "documentation": "<p>CancelTaskExecutionRequest</p>"
    },
    "CancelTaskExecutionResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateAgentRequest": {
      "type": "structure",
      "required": [
        "ActivationKey"
      ],
      "members": {
        "ActivationKey": {
          "shape": "ActivationKey",
          "documentation": "<p>Your agent activation key. You can get the activation key either by sending an HTTP GET request with redirects that enable you to get the agent IP address (port 80). Alternatively, you can get it from the AWS DataSync console.</p> <p>The redirect URL returned in the response provides you the activation key for your agent in the query string parameter <code>activationKey</code>. It might also include other activation-related parameters; however, these are merely defaults. The arguments you pass to this API call determine the actual configuration of your agent.</p> <p>For more information, see Activating an Agent in the <i>AWS DataSync User Guide.</i> </p>"
        },
        "AgentName": {
          "shape": "TagValue",
          "documentation": "<p>The name you configured for your agent. This value is a text reference that is used to identify the agent in the console.</p>"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The key-value pair that represents the tag that you want to associate with the agent. The value can be an empty string. This value helps you manage, filter, and search for your agents.</p> <note> <p>Valid characters for key and value are letters, spaces, and numbers representable in UTF-8 format, and the following special characters: + - = . _ : / @. </p> </note>"
        },
        "VpcEndpointId": {
          "shape": "VpcEndpointId",
          "documentation": "<p>The ID of the VPC (virtual private cloud) endpoint that the agent has access to. This is the client-side VPC endpoint, also called a PrivateLink. If you don't have a PrivateLink VPC endpoint, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html#create-endpoint-service\">Creating a VPC Endpoint Service Configuration</a> in the Amazon VPC User Guide.</p> <p>VPC endpoint ID looks like this: <code>vpce-01234d5aff67890e1</code>.</p>"
        },
        "SubnetArns": {
          "shape": "PLSubnetArnList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic network interfaces for each data transfer task. The agent that runs a task must be private. When you start a task that is associated with an agent created in a VPC, or one that has access to an IP address in a VPC, then the task is also private. In this case, DataSync creates four network interfaces for each task in your subnet. For a data transfer to work, the agent must be able to route to all these four network interfaces.</p>"
        },
        "SecurityGroupArns": {
          "shape": "PLSecurityGroupArnList",
          "documentation": "<p>The ARNs of the security groups used to protect your data transfer task subnets. See <a>CreateAgentRequest$SubnetArns</a>.</p>"
        }
      },
      "documentation": "<p>CreateAgentRequest</p>"
    },
    "CreateAgentResponse": {
      "type": "structure",
      "members": {
        "AgentArn": {
          "shape": "AgentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agent. Use the <code>ListAgents</code> operation to return a list of agents for your account and AWS Region.</p>"
        }
      },
      "documentation": "<p>CreateAgentResponse</p>"
    },
    "CreateLocationEfsRequest": {
      "type": "structure",
      "required": [
        "EfsFilesystemArn",
        "Ec2Config"
      ],
      "members": {
        "Subdirectory": {
          "shape": "EfsSubdirectory",
          "documentation": "<p>A subdirectory in the location’s path. This subdirectory in the EFS file system is used to read data from the EFS source location or write data to the EFS destination. By default, AWS DataSync uses the root directory.</p> <note> <p> <code>Subdirectory</code> must be specified with forward slashes. For example, <code>/path/to/folder</code>.</p> </note>"
        },
        "EfsFilesystemArn": {
          "shape": "EfsFilesystemArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the Amazon EFS file system.</p>"
        },
        "Ec2Config": {
          "shape": "Ec2Config",
          "documentation": "<p>The subnet and security group that the Amazon EFS file system uses. The security group that you provide needs to be able to communicate with the security group on the mount target in the subnet specified.</p> <p>The exact relationship between security group M (of the mount target) and security group S (which you provide for DataSync to use at this stage) is as follows: </p> <ul> <li> <p> Security group M (which you associate with the mount target) must allow inbound access for the Transmission Control Protocol (TCP) on the NFS port (2049) from security group S. You can enable inbound connections either by IP address (CIDR range) or security group. </p> </li> <li> <p>Security group S (provided to DataSync to access EFS) should have a rule that enables outbound connections to the NFS port on one of the file system’s mount targets. You can enable outbound connections either by IP address (CIDR range) or security group.</p> <p>For information about security groups and mount targets, see Security Groups for Amazon EC2 Instances and Mount Targets in the <i>Amazon EFS User Guide.</i> </p> </li> </ul>"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The key-value pair that represents a tag that you want to add to the resource. The value can be an empty string. This value helps you manage, filter, and search for your resources. We recommend that you create a name tag for your location.</p>"
        }
      },
      "documentation": "<p>CreateLocationEfsRequest</p>"
    },
    "CreateLocationEfsResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon EFS file system location that is created.</p>"
        }
      },
      "documentation": "<p>CreateLocationEfs</p>"
    },
    "CreateLocationFsxWindowsRequest": {
      "type": "structure",
      "required": [
        "FsxFilesystemArn",
        "SecurityGroupArns",
        "User",
        "Password"
      ],
      "members": {
        "Subdirectory": {
          "shape": "FsxWindowsSubdirectory",
          "documentation": "<p>A subdirectory in the location’s path. This subdirectory in the Amazon FSx for Windows file system is used to read data from the Amazon FSx for Windows source location or write data to the FSx for Windows destination.</p>"
        },
        "FsxFilesystemArn": {
          "shape": "FsxFilesystemArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the FSx for Windows file system.</p>"
        },
        "SecurityGroupArns": {
          "shape": "Ec2SecurityGroupArnList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Windows file system.</p>"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The key-value pair that represents a tag that you want to add to the resource. The value can be an empty string. This value helps you manage, filter, and search for your resources. We recommend that you create a name tag for your location.</p>"
        },
        "User": {
          "shape": "SmbUser",
          "documentation": "<p>The user who has the permissions to access files and folders in the FSx for Windows file system.</p>"
        },
        "Domain": {
          "shape": "SmbDomain",
          "documentation": "<p>The name of the Windows domain that the FSx for Windows server belongs to.</p>"
        },
        "Password": {
          "shape": "SmbPassword",
          "documentation": "<p>The password of the user who has the permissions to access files and folders in the FSx for Windows file system.</p>"
        }
      }
    },
    "CreateLocationFsxWindowsResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the FSx for Windows file system location that is created.</p>"
        }
      }
    },
    "CreateLocationNfsRequest": {
      "type": "structure",
      "required": [
        "Subdirectory",
        "ServerHostname",
        "OnPremConfig"
      ],
      "members": {
        "Subdirectory": {
          "shape": "NfsSubdirectory",
          "documentation": "<p>The subdirectory in the NFS file system that is used to read data from the NFS source location or write data to the NFS destination. The NFS path should be a path that's exported by the NFS server, or a subdirectory of that path. The path should be such that it can be mounted by other NFS clients in your network. </p> <p>To see all the paths exported by your NFS server. run \"<code>showmount -e nfs-server-name</code>\" from an NFS client that has access to your server. You can specify any directory that appears in the results, and any subdirectory of that directory. Ensure that the NFS export is accessible without Kerberos authentication. </p> <p>To transfer all the data in the folder you specified, DataSync needs to have permissions to read all the data. To ensure this, either configure the NFS export with <code>no_root_squash,</code> or ensure that the permissions for all of the files that you want DataSync allow read access for all users. Doing either enables the agent to read the files. For the agent to access directories, you must additionally enable all execute access.</p> <p>If you are copying data to or from your AWS Snowcone device, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone\">NFS Server on AWS Snowcone</a> for more information.</p> <p>For information about NFS export configuration, see 18.7. The /etc/exports Configuration File in the Red Hat Enterprise Linux documentation.</p>"
        },
        "ServerHostname": {
          "shape": "ServerHostname",
          "documentation": "<p>The name of the NFS server. This value is the IP address or Domain Name Service (DNS) name of the NFS server. An agent that is installed on-premises uses this host name to mount the NFS server in a network. </p> <p>If you are copying data to or from your AWS Snowcone device, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone\">NFS Server on AWS Snowcone</a> for more information.</p> <note> <p>This name must either be DNS-compliant or must be an IP version 4 (IPv4) address.</p> </note>"
        },
        "OnPremConfig": {
          "shape": "OnPremConfig",
          "documentation": "<p>Contains a list of Amazon Resource Names (ARNs) of agents that are used to connect to an NFS server. </p> <p>If you are copying data to or from your AWS Snowcone device, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone\">NFS Server on AWS Snowcone</a> for more information.</p>"
        },
        "MountOptions": {
          "shape": "NfsMountOptions",
          "documentation": "<p>The NFS mount options that DataSync can use to mount your NFS share.</p>"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The key-value pair that represents the tag that you want to add to the location. The value can be an empty string. We recommend using tags to name your resources.</p>"
        }
      },
      "documentation": "<p>CreateLocationNfsRequest</p>"
    },
    "CreateLocationNfsResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source NFS file system location that is created.</p>"
        }
      },
      "documentation": "<p>CreateLocationNfsResponse</p>"
    },
    "CreateLocationObjectStorageRequest": {
      "type": "structure",
      "required": [
        "ServerHostname",
        "BucketName",
        "AgentArns"
      ],
      "members": {
        "ServerHostname": {
          "shape": "ServerHostname",
          "documentation": "<p>The name of the self-managed object storage server. This value is the IP address or Domain Name Service (DNS) name of the object storage server. An agent uses this host name to mount the object storage server in a network. </p>"
        },
        "ServerPort": {
          "shape": "ObjectStorageServerPort",
          "documentation": "<p>The port that your self-managed object storage server accepts inbound network traffic on. The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS). You can specify a custom port if your self-managed object storage server requires one.</p>"
        },
        "ServerProtocol": {
          "shape": "ObjectStorageServerProtocol",
          "documentation": "<p>The protocol that the object storage server uses to communicate. Valid values are HTTP or HTTPS.</p>"
        },
        "Subdirectory": {
          "shape": "S3Subdirectory",
          "documentation": "<p>The subdirectory in the self-managed object storage server that is used to read data from.</p>"
        },
        "BucketName": {
          "shape": "ObjectStorageBucketName",
          "documentation": "<p>The bucket on the self-managed object storage server that is used to read data from.</p>"
        },
        "AccessKey": {
          "shape": "ObjectStorageAccessKey",
          "documentation": "<p>Optional. The access key is used if credentials are required to access the self-managed object storage server.</p>"
        },
        "SecretKey": {
          "shape": "ObjectStorageSecretKey",
          "documentation": "<p>Optional. The secret key is used if credentials are required to access the self-managed object storage server.</p>"
        },
        "AgentArns": {
          "shape": "AgentArnList",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agents associated with the self-managed object storage server location.</p>"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The key-value pair that represents the tag that you want to add to the location. The value can be an empty string. We recommend using tags to name your resources.</p>"
        }
      },
      "documentation": "<p>CreateLocationObjectStorageRequest</p>"
    },
    "CreateLocationObjectStorageResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agents associated with the self-managed object storage server location.</p>"
        }
      },
      "documentation": "<p>CreateLocationObjectStorageResponse</p>"
    },
    "CreateLocationS3Request": {
      "type": "structure",
      "required": [
        "S3BucketArn",
        "S3Config"
      ],
      "members": {
        "Subdirectory": {
          "shape": "S3Subdirectory",
          "documentation": "<p>A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon S3 is used to read data from the S3 source location or write data to the S3 destination.</p>"
        },
        "S3BucketArn": {
          "shape": "S3BucketArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon S3 bucket.</p>"
        },
        "S3StorageClass": {
          "shape": "S3StorageClass",
          "documentation": "<p>The Amazon S3 storage class that you want to store your files in when this location is used as a task destination. For more information about S3 storage classes, see <a href=\"https://aws.amazon.com/s3/storage-classes/\">Amazon S3 Storage Classes</a> in the <i>Amazon Simple Storage Service Developer Guide</i>. Some storage classes have behaviors that can affect your S3 storage cost. For detailed information, see <a>using-storage-classes</a>.</p>"
        },
        "S3Config": {
          "shape": "S3Config"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The key-value pair that represents the tag that you want to add to the location. The value can be an empty string. We recommend using tags to name your resources.</p>"
        }
      },
      "documentation": "<p>CreateLocationS3Request</p>"
    },
    "CreateLocationS3Response": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source Amazon S3 bucket location that is created.</p>"
        }
      },
      "documentation": "<p>CreateLocationS3Response</p>"
    },
    "CreateLocationSmbRequest": {
      "type": "structure",
      "required": [
        "Subdirectory",
        "ServerHostname",
        "User",
        "Password",
        "AgentArns"
      ],
      "members": {
        "Subdirectory": {
          "shape": "SmbSubdirectory",
          "documentation": "<p>The subdirectory in the SMB file system that is used to read data from the SMB source location or write data to the SMB destination. The SMB path should be a path that's exported by the SMB server, or a subdirectory of that path. The path should be such that it can be mounted by other SMB clients in your network.</p> <note> <p> <code>Subdirectory</code> must be specified with forward slashes. For example, <code>/path/to/folder</code>.</p> </note> <p>To transfer all the data in the folder you specified, DataSync needs to have permissions to mount the SMB share, as well as to access all the data in that share. To ensure this, either ensure that the user/password specified belongs to the user who can mount the share, and who has the appropriate permissions for all of the files and directories that you want DataSync to access, or use credentials of a member of the Backup Operators group to mount the share. Doing either enables the agent to access the data. For the agent to access directories, you must additionally enable all execute access.</p>"
        },
        "ServerHostname": {
          "shape": "ServerHostname",
          "documentation": "<p>The name of the SMB server. This value is the IP address or Domain Name Service (DNS) name of the SMB server. An agent that is installed on-premises uses this hostname to mount the SMB server in a network.</p> <note> <p>This name must either be DNS-compliant or must be an IP version 4 (IPv4) address.</p> </note>"
        },
        "User": {
          "shape": "SmbUser",
          "documentation": "<p>The user who can mount the share, has the permissions to access files and folders in the SMB share.</p>"
        },
        "Domain": {
          "shape": "SmbDomain",
          "documentation": "<p>The name of the Windows domain that the SMB server belongs to.</p>"
        },
        "Password": {
          "shape": "SmbPassword",
          "documentation": "<p>The password of the user who can mount the share, has the permissions to access files and folders in the SMB share.</p>"
        },
        "AgentArns": {
          "shape": "AgentArnList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of agents to use for a Simple Message Block (SMB) location. </p>"
        },
        "MountOptions": {
          "shape": "SmbMountOptions",
          "documentation": "<p>The mount options used by DataSync to access the SMB server.</p>"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The key-value pair that represents the tag that you want to add to the location. The value can be an empty string. We recommend using tags to name your resources.</p>"
        }
      },
      "documentation": "<p>CreateLocationSmbRequest</p>"
    },
    "CreateLocationSmbResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source SMB file system location that is created.</p>"
        }
      },
      "documentation": "<p>CreateLocationSmbResponse</p>"
    },
    "CreateTaskRequest": {
      "type": "structure",
      "required": [
        "SourceLocationArn",
        "DestinationLocationArn"
      ],
      "members": {
        "SourceLocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source location for the task.</p>"
        },
        "DestinationLocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an AWS storage resource's location. </p>"
        },
        "CloudWatchLogGroupArn": {
          "shape": "LogGroupArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to monitor and log events in the task. </p>"
        },
        "Name": {
          "shape": "TagValue",
          "documentation": "<p>The name of a task. This value is a text reference that is used to identify the task in the console. </p>"
        },
        "Options": {
          "shape": "Options",
          "documentation": "<p>The set of configuration options that control the behavior of a single execution of the task that occurs when you call <code>StartTaskExecution</code>. You can configure these options to preserve metadata such as user ID (UID) and group ID (GID), file permissions, data integrity verification, and so on.</p> <p>For each individual task execution, you can override these options by specifying the <code>OverrideOptions</code> before starting the task execution. For more information, see the operation. </p>"
        },
        "Excludes": {
          "shape": "FilterList",
          "documentation": "<p>A list of filter rules that determines which files to exclude from a task. The list should contain a single filter string that consists of the patterns to exclude. The patterns are delimited by \"|\" (that is, a pipe), for example, <code>\"/folder1|/folder2\"</code> </p> <p> </p>"
        },
        "Schedule": {
          "shape": "TaskSchedule",
          "documentation": "<p>Specifies a schedule used to periodically transfer files from a source to a destination location. The schedule should be specified in UTC time. For more information, see <a>task-scheduling</a>.</p>"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The key-value pair that represents the tag that you want to add to the resource. The value can be an empty string. </p>"
        }
      },
      "documentation": "<p>CreateTaskRequest</p>"
    },
    "CreateTaskResponse": {
      "type": "structure",
      "members": {
        "TaskArn": {
          "shape": "TaskArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task.</p>"
        }
      },
      "documentation": "<p>CreateTaskResponse</p>"
    },
    "DeleteAgentRequest": {
      "type": "structure",
      "required": [
        "AgentArn"
      ],
      "members": {
        "AgentArn": {
          "shape": "AgentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agent to delete. Use the <code>ListAgents</code> operation to return a list of agents for your account and AWS Region.</p>"
        }
      },
      "documentation": "<p>DeleteAgentRequest</p>"
    },
    "DeleteAgentResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteLocationRequest": {
      "type": "structure",
      "required": [
        "LocationArn"
      ],
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the location to delete.</p>"
        }
      },
      "documentation": "<p>DeleteLocation</p>"
    },
    "DeleteLocationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteTaskRequest": {
      "type": "structure",
      "required": [
        "TaskArn"
      ],
      "members": {
        "TaskArn": {
          "shape": "TaskArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task to delete.</p>"
        }
      },
      "documentation": "<p>DeleteTask</p>"
    },
    "DeleteTaskResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeAgentRequest": {
      "type": "structure",
      "required": [
        "AgentArn"
      ],
      "members": {
        "AgentArn": {
          "shape": "AgentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agent to describe.</p>"
        }
      },
      "documentation": "<p>DescribeAgent</p>"
    },
    "DescribeAgentResponse": {
      "type": "structure",
      "members": {
        "AgentArn": {
          "shape": "AgentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agent.</p>"
        },
        "Name": {
          "shape": "TagValue",
          "documentation": "<p>The name of the agent.</p>"
        },
        "Status": {
          "shape": "AgentStatus",
          "documentation": "<p>The status of the agent. If the status is ONLINE, then the agent is configured properly and is available to use. The Running status is the normal running status for an agent. If the status is OFFLINE, the agent's VM is turned off or the agent is in an unhealthy state. When the issue that caused the unhealthy state is resolved, the agent returns to ONLINE status.</p>"
        },
        "LastConnectionTime": {
          "shape": "Time",
          "documentation": "<p>The time that the agent last connected to DataSyc.</p>"
        },
        "CreationTime": {
          "shape": "Time",
          "documentation": "<p>The time that the agent was activated (that is, created in your account).</p>"
        },
        "EndpointType": {
          "shape": "EndpointType",
          "documentation": "<p>The type of endpoint that your agent is connected to. If the endpoint is a VPC endpoint, the agent is not accessible over the public internet. </p>"
        },
        "PrivateLinkConfig": {
          "shape": "PrivateLinkConfig",
          "documentation": "<p>The subnet and the security group that DataSync used to access a VPC endpoint.</p>"
        }
      },
      "documentation": "<p>DescribeAgentResponse</p>"
    },
    "DescribeLocationEfsRequest": {
      "type": "structure",
      "required": [
        "LocationArn"
      ],
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the EFS location to describe.</p>"
        }
      },
      "documentation": "<p>DescribeLocationEfsRequest</p>"
    },
    "DescribeLocationEfsResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the EFS location that was described.</p>"
        },
        "LocationUri": {
          "shape": "LocationUri",
          "documentation": "<p>The URL of the EFS location that was described.</p>"
        },
        "Ec2Config": {
          "shape": "Ec2Config"
        },
        "CreationTime": {
          "shape": "Time",
          "documentation": "<p>The time that the EFS location was created.</p>"
        }
      },
      "documentation": "<p>DescribeLocationEfsResponse</p>"
    },
    "DescribeLocationFsxWindowsRequest": {
      "type": "structure",
      "required": [
        "LocationArn"
      ],
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the FSx for Windows location to describe.</p>"
        }
      }
    },
    "DescribeLocationFsxWindowsResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the FSx for Windows location that was described.</p>"
        },
        "LocationUri": {
          "shape": "LocationUri",
          "documentation": "<p>The URL of the FSx for Windows location that was described.</p>"
        },
        "SecurityGroupArns": {
          "shape": "Ec2SecurityGroupArnList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of the security groups that are configured for the FSx for Windows file system.</p>"
        },
        "CreationTime": {
          "shape": "Time",
          "documentation": "<p>The time that the FSx for Windows location was created.</p>"
        },
        "User": {
          "shape": "SmbUser",
          "documentation": "<p>The user who has the permissions to access files and folders in the FSx for Windows file system.</p>"
        },
        "Domain": {
          "shape": "SmbDomain",
          "documentation": "<p>The name of the Windows domain that the FSx for Windows server belongs to.</p>"
        }
      }
    },
    "DescribeLocationNfsRequest": {
      "type": "structure",
      "required": [
        "LocationArn"
      ],
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the NFS location to describe.</p>"
        }
      },
      "documentation": "<p>DescribeLocationNfsRequest</p>"
    },
    "DescribeLocationNfsResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the NFS location that was described.</p>"
        },
        "LocationUri": {
          "shape": "LocationUri",
          "documentation": "<p>The URL of the source NFS location that was described.</p>"
        },
        "OnPremConfig": {
          "shape": "OnPremConfig"
        },
        "MountOptions": {
          "shape": "NfsMountOptions",
          "documentation": "<p>The NFS mount options that DataSync used to mount your NFS share.</p>"
        },
        "CreationTime": {
          "shape": "Time",
          "documentation": "<p>The time that the NFS location was created.</p>"
        }
      },
      "documentation": "<p>DescribeLocationNfsResponse</p>"
    },
    "DescribeLocationObjectStorageRequest": {
      "type": "structure",
      "required": [
        "LocationArn"
      ],
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the self-managed object storage server location that was described.</p>"
        }
      },
      "documentation": "<p>DescribeLocationObjectStorageRequest</p>"
    },
    "DescribeLocationObjectStorageResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the self-managed object storage server location to describe.</p>"
        },
        "LocationUri": {
          "shape": "LocationUri",
          "documentation": "<p>The URL of the source self-managed object storage server location that was described.</p>"
        },
        "AccessKey": {
          "shape": "ObjectStorageAccessKey",
          "documentation": "<p>Optional. The access key is used if credentials are required to access the self-managed object storage server.</p>"
        },
        "ServerPort": {
          "shape": "ObjectStorageServerPort",
          "documentation": "<p>The port that your self-managed object storage server accepts inbound network traffic on. The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS).</p>"
        },
        "ServerProtocol": {
          "shape": "ObjectStorageServerProtocol",
          "documentation": "<p>The protocol that the object storage server uses to communicate. Valid values are HTTP or HTTPS.</p>"
        },
        "AgentArns": {
          "shape": "AgentArnList",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agents associated with the self-managed object storage server location.</p>"
        },
        "CreationTime": {
          "shape": "Time",
          "documentation": "<p>The time that the self-managed object storage server agent was created.</p>"
        }
      },
      "documentation": "<p>DescribeLocationObjectStorageResponse</p>"
    },
    "DescribeLocationS3Request": {
      "type": "structure",
      "required": [
        "LocationArn"
      ],
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon S3 bucket location to describe.</p>"
        }
      },
      "documentation": "<p>DescribeLocationS3Request</p>"
    },
    "DescribeLocationS3Response": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon S3 bucket location.</p>"
        },
        "LocationUri": {
          "shape": "LocationUri",
          "documentation": "<p>The URL of the Amazon S3 location that was described.</p>"
        },
        "S3StorageClass": {
          "shape": "S3StorageClass",
          "documentation": "<p>The Amazon S3 storage class that you chose to store your files in when this location is used as a task destination. For more information about S3 storage classes, see <a href=\"https://aws.amazon.com/s3/storage-classes/\">Amazon S3 Storage Classes</a> in the <i>Amazon Simple Storage Service Developer Guide</i>. Some storage classes have behaviors that can affect your S3 storage cost. For detailed information, see <a>using-storage-classes</a>.</p>"
        },
        "S3Config": {
          "shape": "S3Config"
        },
        "CreationTime": {
          "shape": "Time",
          "documentation": "<p>The time that the Amazon S3 bucket location was created.</p>"
        }
      },
      "documentation": "<p>DescribeLocationS3Response</p>"
    },
    "DescribeLocationSmbRequest": {
      "type": "structure",
      "required": [
        "LocationArn"
      ],
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SMB location to describe.</p>"
        }
      },
      "documentation": "<p>DescribeLocationSmbRequest</p>"
    },
    "DescribeLocationSmbResponse": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SMB location that was described.</p>"
        },
        "LocationUri": {
          "shape": "LocationUri",
          "documentation": "<p>The URL of the source SBM location that was described.</p>"
        },
        "AgentArns": {
          "shape": "AgentArnList",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source SMB file system location that is created.</p>"
        },
        "User": {
          "shape": "SmbUser",
          "documentation": "<p>The user who can mount the share, has the permissions to access files and folders in the SMB share.</p>"
        },
        "Domain": {
          "shape": "SmbDomain",
          "documentation": "<p>The name of the Windows domain that the SMB server belongs to.</p>"
        },
        "MountOptions": {
          "shape": "SmbMountOptions",
          "documentation": "<p>The mount options that are available for DataSync to use to access an SMB location.</p>"
        },
        "CreationTime": {
          "shape": "Time",
          "documentation": "<p>The time that the SMB location was created.</p>"
        }
      },
      "documentation": "<p>DescribeLocationSmbResponse</p>"
    },
    "DescribeTaskExecutionRequest": {
      "type": "structure",
      "required": [
        "TaskExecutionArn"
      ],
      "members": {
        "TaskExecutionArn": {
          "shape": "TaskExecutionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task that is being executed.</p>"
        }
      },
      "documentation": "<p>DescribeTaskExecutionRequest</p>"
    },
    "DescribeTaskExecutionResponse": {
      "type": "structure",
      "members": {
        "TaskExecutionArn": {
          "shape": "TaskExecutionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task execution that was described. <code>TaskExecutionArn</code> is hierarchical and includes <code>TaskArn</code> for the task that was executed. </p> <p>For example, a <code>TaskExecution</code> value with the ARN <code>arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2/execution/exec-08ef1e88ec491019b</code> executed the task with the ARN <code>arn:aws:datasync:us-east-1:111222333444:task/task-0208075f79cedf4a2</code>. </p>"
        },
        "Status": {
          "shape": "TaskExecutionStatus",
          "documentation": "<p>The status of the task execution. </p> <p>For detailed information about task execution statuses, see Understanding Task Statuses in the <i>AWS DataSync User Guide.</i> </p>"
        },
        "Options": {
          "shape": "Options"
        },
        "Excludes": {
          "shape": "FilterList",
          "documentation": "<p>A list of filter rules that determines which files to exclude from a task. The list should contain a single filter string that consists of the patterns to exclude. The patterns are delimited by \"|\" (that is, a pipe), for example: <code>\"/folder1|/folder2\"</code> </p> <p> </p>"
        },
        "Includes": {
          "shape": "FilterList",
          "documentation": "<p>A list of filter rules that determines which files to include when running a task. The list should contain a single filter string that consists of the patterns to include. The patterns are delimited by \"|\" (that is, a pipe), for example: <code>\"/folder1|/folder2\"</code> </p> <p> </p>"
        },
        "StartTime": {
          "shape": "Time",
          "documentation": "<p>The time that the task execution was started.</p>"
        },
        "EstimatedFilesToTransfer": {
          "shape": "long",
          "documentation": "<p>The expected number of files that is to be transferred over the network. This value is calculated during the PREPARING phase, before the TRANSFERRING phase. This value is the expected number of files to be transferred. It's calculated based on comparing the content of the source and destination locations and finding the delta that needs to be transferred. </p>"
        },
        "EstimatedBytesToTransfer": {
          "shape": "long",
          "documentation": "<p>The estimated physical number of bytes that is to be transferred over the network.</p>"
        },
        "FilesTransferred": {
          "shape": "long",
          "documentation": "<p>The actual number of files that was transferred over the network. This value is calculated and updated on an ongoing basis during the TRANSFERRING phase. It's updated periodically when each file is read from the source and sent over the network. </p> <p>If failures occur during a transfer, this value can be less than <code>EstimatedFilesToTransfer</code>. This value can also be greater than <code>EstimatedFilesTransferred</code> in some cases. This element is implementation-specific for some location types, so don't use it as an indicator for a correct file number or to monitor your task execution.</p>"
        },
        "BytesWritten": {
          "shape": "long",
          "documentation": "<p>The number of logical bytes written to the destination AWS storage resource.</p>"
        },
        "BytesTransferred": {
          "shape": "long",
          "documentation": "<p>The physical number of bytes transferred over the network.</p>"
        },
        "Result": {
          "shape": "TaskExecutionResultDetail",
          "documentation": "<p>The result of the task execution.</p>"
        }
      },
      "documentation": "<p>DescribeTaskExecutionResponse</p>"
    },
    "DescribeTaskRequest": {
      "type": "structure",
      "required": [
        "TaskArn"
      ],
      "members": {
        "TaskArn": {
          "shape": "TaskArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task to describe.</p>"
        }
      },
      "documentation": "<p>DescribeTaskRequest</p>"
    },
    "DescribeTaskResponse": {
      "type": "structure",
      "members": {
        "TaskArn": {
          "shape": "TaskArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task that was described.</p>"
        },
        "Status": {
          "shape": "TaskStatus",
          "documentation": "<p>The status of the task that was described.</p> <p>For detailed information about task execution statuses, see Understanding Task Statuses in the <i>AWS DataSync User Guide.</i> </p>"
        },
        "Name": {
          "shape": "TagValue",
          "documentation": "<p>The name of the task that was described.</p>"
        },
        "CurrentTaskExecutionArn": {
          "shape": "TaskExecutionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task execution that is syncing files.</p>"
        },
        "SourceLocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source file system's location.</p>"
        },
        "DestinationLocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS storage resource's location.</p>"
        },
        "CloudWatchLogGroupArn": {
          "shape": "LogGroupArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that was used to monitor and log events in the task.</p> <p>For more information on these groups, see Working with Log Groups and Log Streams in the <i>Amazon CloudWatch User Guide</i>.</p>"
        },
        "SourceNetworkInterfaceArns": {
          "shape": "SourceNetworkInterfaceArns",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source ENIs (Elastic Network Interface) that was created for your subnet.</p>"
        },
        "DestinationNetworkInterfaceArns": {
          "shape": "DestinationNetworkInterfaceArns",
          "documentation": "<p>The Amazon Resource Name (ARN) of the destination ENIs (Elastic Network Interface) that was created for your subnet.</p>"
        },
        "Options": {
          "shape": "Options",
          "documentation": "<p>The set of configuration options that control the behavior of a single execution of the task that occurs when you call <code>StartTaskExecution</code>. You can configure these options to preserve metadata such as user ID (UID) and group (GID), file permissions, data integrity verification, and so on.</p> <p>For each individual task execution, you can override these options by specifying the overriding <code>OverrideOptions</code> value to operation. </p>"
        },
        "Excludes": {
          "shape": "FilterList",
          "documentation": "<p>A list of filter rules that determines which files to exclude from a task. The list should contain a single filter string that consists of the patterns to exclude. The patterns are delimited by \"|\" (that is, a pipe), for example: <code>\"/folder1|/folder2\"</code> </p> <p> </p>"
        },
        "Schedule": {
          "shape": "TaskSchedule",
          "documentation": "<p>The schedule used to periodically transfer files from a source to a destination location.</p>"
        },
        "ErrorCode": {
          "shape": "string",
          "documentation": "<p>Errors that AWS DataSync encountered during execution of the task. You can use this error code to help troubleshoot issues.</p>"
        },
        "ErrorDetail": {
          "shape": "string",
          "documentation": "<p>Detailed description of an error that was encountered during the task execution. You can use this information to help troubleshoot issues. </p>"
        },
        "CreationTime": {
          "shape": "Time",
          "documentation": "<p>The time that the task was created.</p>"
        }
      },
      "documentation": "<p>DescribeTaskResponse</p>"
    },
    "DestinationNetworkInterfaceArns": {
      "type": "list",
      "member": {
        "shape": "NetworkInterfaceArn"
      }
    },
    "Duration": {
      "type": "long",
      "min": 0
    },
    "Ec2Config": {
      "type": "structure",
      "required": [
        "SubnetArn",
        "SecurityGroupArns"
      ],
      "members": {
        "SubnetArn": {
          "shape": "Ec2SubnetArn",
          "documentation": "<p>The ARN of the subnet and the security group that DataSync uses to access the target EFS file system.</p>"
        },
        "SecurityGroupArns": {
          "shape": "Ec2SecurityGroupArnList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of the security groups that are configured for the Amazon EC2 resource.</p>"
        }
      },
      "documentation": "<p>The subnet and the security group that DataSync uses to access target EFS file system. The subnet must have at least one mount target for that file system. The security group that you provide needs to be able to communicate with the security group on the mount target in the subnet specified. </p>"
    },
    "Ec2SecurityGroupArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:security-group/.*$"
    },
    "Ec2SecurityGroupArnList": {
      "type": "list",
      "member": {
        "shape": "Ec2SecurityGroupArn"
      },
      "max": 5,
      "min": 1
    },
    "Ec2SubnetArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:subnet/.*$"
    },
    "EfsFilesystemArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):elasticfilesystem:[a-z\\-0-9]*:[0-9]{12}:file-system/fs-.*$"
    },
    "EfsSubdirectory": {
      "type": "string",
      "max": 4096,
      "pattern": "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]*$"
    },
    "Endpoint": {
      "type": "string",
      "max": 15,
      "min": 7,
      "pattern": "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"
    },
    "EndpointType": {
      "type": "string",
      "enum": [
        "PUBLIC",
        "PRIVATE_LINK",
        "FIPS"
      ]
    },
    "FilterAttributeValue": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "^[0-9a-zA-Z_\\ \\-\\:\\*\\.\\\\/\\?-]*$"
    },
    "FilterList": {
      "type": "list",
      "member": {
        "shape": "FilterRule"
      },
      "max": 1,
      "min": 0
    },
    "FilterRule": {
      "type": "structure",
      "members": {
        "FilterType": {
          "shape": "FilterType",
          "documentation": "<p>The type of filter rule to apply. AWS DataSync only supports the SIMPLE_PATTERN rule type.</p>"
        },
        "Value": {
          "shape": "FilterValue",
          "documentation": "<p>A single filter string that consists of the patterns to include or exclude. The patterns are delimited by \"|\" (that is, a pipe), for example: <code>/folder1|/folder2</code> </p> <p> </p>"
        }
      },
      "documentation": "<p>Specifies which files, folders and objects to include or exclude when transferring files from source to destination.</p>"
    },
    "FilterType": {
      "type": "string",
      "enum": [
        "SIMPLE_PATTERN"
      ],
      "max": 128,
      "pattern": "^[A-Z0-9_]+$"
    },
    "FilterValue": {
      "type": "string",
      "max": 409600,
      "pattern": "^[^\\x00]+$"
    },
    "FilterValues": {
      "type": "list",
      "member": {
        "shape": "FilterAttributeValue"
      }
    },
    "FsxFilesystemArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]*:[0-9]{12}:file-system/fs-.*$"
    },
    "FsxWindowsSubdirectory": {
      "type": "string",
      "max": 4096,
      "pattern": "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$"
    },
    "Gid": {
      "type": "string",
      "enum": [
        "NONE",
        "INT_VALUE",
        "NAME",
        "BOTH"
      ]
    },
    "IamRoleArn": {
      "type": "string",
      "max": 2048,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*$"
    },
    "InputTagList": {
      "type": "list",
      "member": {
        "shape": "TagListEntry"
      },
      "max": 50,
      "min": 0
    },
    "ListAgentsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of agents to list.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin the next list of agents.</p>"
        }
      },
      "documentation": "<p>ListAgentsRequest</p>"
    },
    "ListAgentsResponse": {
      "type": "structure",
      "members": {
        "Agents": {
          "shape": "AgentList",
          "documentation": "<p>A list of agents in your account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin returning the next list of agents.</p>"
        }
      },
      "documentation": "<p>ListAgentsResponse</p>"
    },
    "ListLocationsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of locations to return.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin the next list of locations.</p>"
        },
        "Filters": {
          "shape": "LocationFilters"
        }
      },
      "documentation": "<p>ListLocationsRequest</p>"
    },
    "ListLocationsResponse": {
      "type": "structure",
      "members": {
        "Locations": {
          "shape": "LocationList",
          "documentation": "<p>An array that contains a list of locations.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin returning the next list of locations.</p>"
        }
      },
      "documentation": "<p>ListLocationsResponse</p>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "TaggableResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource whose tags to list.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of locations to return.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin the next list of locations.</p>"
        }
      },
      "documentation": "<p>ListTagsForResourceRequest</p>"
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "OutputTagList",
          "documentation": "<p>Array of resource tags.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin returning the next list of resource tags.</p>"
        }
      },
      "documentation": "<p>ListTagsForResourceResponse</p>"
    },
    "ListTaskExecutionsRequest": {
      "type": "structure",
      "members": {
        "TaskArn": {
          "shape": "TaskArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task whose tasks you want to list.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of executed tasks to list.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin the next list of the executed tasks.</p>"
        }
      },
      "documentation": "<p>ListTaskExecutions</p>"
    },
    "ListTaskExecutionsResponse": {
      "type": "structure",
      "members": {
        "TaskExecutions": {
          "shape": "TaskExecutionList",
          "documentation": "<p>A list of executed tasks.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin returning the next list of executed tasks.</p>"
        }
      },
      "documentation": "<p>ListTaskExecutionsResponse</p>"
    },
    "ListTasksRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of tasks to return.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin the next list of tasks.</p>"
        },
        "Filters": {
          "shape": "TaskFilters"
        }
      },
      "documentation": "<p>ListTasksRequest</p>"
    },
    "ListTasksResponse": {
      "type": "structure",
      "members": {
        "Tasks": {
          "shape": "TaskList",
          "documentation": "<p>A list of all the tasks that are returned.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An opaque string that indicates the position at which to begin returning the next list of tasks.</p>"
        }
      },
      "documentation": "<p>ListTasksResponse</p>"
    },
    "LocationArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:location/loc-[0-9a-z]{17}$"
    },
    "LocationFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Values",
        "Operator"
      ],
      "members": {
        "Name": {
          "shape": "LocationFilterName"
        },
        "Values": {
          "shape": "FilterValues"
        },
        "Operator": {
          "shape": "Operator"
        }
      }
    },
    "LocationFilterName": {
      "type": "string",
      "enum": [
        "LocationUri",
        "LocationType",
        "CreationTime"
      ]
    },
    "LocationFilters": {
      "type": "list",
      "member": {
        "shape": "LocationFilter"
      }
    },
    "LocationList": {
      "type": "list",
      "member": {
        "shape": "LocationListEntry"
      }
    },
    "LocationListEntry": {
      "type": "structure",
      "members": {
        "LocationArn": {
          "shape": "LocationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the location. For Network File System (NFS) or Amazon EFS, the location is the export path. For Amazon S3, the location is the prefix path that you want to mount and use as the root of the location.</p>"
        },
        "LocationUri": {
          "shape": "LocationUri",
          "documentation": "<p>Represents a list of URLs of a location. <code>LocationUri</code> returns an array that contains a list of locations when the <a>ListLocations</a> operation is called.</p> <p>Format: <code>TYPE://GLOBAL_ID/SUBDIR</code>.</p> <p>TYPE designates the type of location. Valid values: NFS | EFS | S3.</p> <p>GLOBAL_ID is the globally unique identifier of the resource that backs the location. An example for EFS is <code>us-east-2.fs-abcd1234</code>. An example for Amazon S3 is the bucket name, such as <code>myBucket</code>. An example for NFS is a valid IPv4 address or a host name compliant with Domain Name Service (DNS).</p> <p>SUBDIR is a valid file system path, delimited by forward slashes as is the *nix convention. For NFS and Amazon EFS, it's the export path to mount the location. For Amazon S3, it's the prefix path that you mount to and treat as the root of the location.</p> <p/>"
        }
      },
      "documentation": "<p>Represents a single entry in a list of locations. <code>LocationListEntry</code> returns an array that contains a list of locations when the <a>ListLocations</a> operation is called.</p>"
    },
    "LocationUri": {
      "type": "string",
      "max": 4356,
      "pattern": "^(efs|nfs|s3|smb|fsxw)://[a-zA-Z0-9.\\-]+$"
    },
    "LogGroupArn": {
      "type": "string",
      "max": 562,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):logs:[a-z\\-0-9]*:[0-9]{12}:log-group:([^:\\*]*)(:\\*)?$"
    },
    "LogLevel": {
      "type": "string",
      "enum": [
        "OFF",
        "BASIC",
        "TRANSFER"
      ]
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "Mtime": {
      "type": "string",
      "enum": [
        "NONE",
        "PRESERVE"
      ]
    },
    "NetworkInterfaceArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:aws[\\-a-z]{0,}:ec2:[a-z\\-0-9]*:[0-9]{12}:network-interface/eni-[0-9a-f]+$"
    },
    "NextToken": {
      "type": "string",
      "max": 65535,
      "pattern": "[a-zA-Z0-9=_-]+"
    },
    "NfsMountOptions": {
      "type": "structure",
      "members": {
        "Version": {
          "shape": "NfsVersion",
          "documentation": "<p>The specific NFS version that you want DataSync to use to mount your NFS share. If the server refuses to use the version specified, the sync will fail. If you don't specify a version, DataSync defaults to <code>AUTOMATIC</code>. That is, DataSync automatically selects a version based on negotiation with the NFS server.</p> <p>You can specify the following NFS versions:</p> <ul> <li> <p> <b> <a href=\"https://tools.ietf.org/html/rfc1813\">NFSv3</a> </b> - stateless protocol version that allows for asynchronous writes on the server.</p> </li> <li> <p> <b> <a href=\"https://tools.ietf.org/html/rfc3530\">NFSv4.0</a> </b> - stateful, firewall-friendly protocol version that supports delegations and pseudo filesystems.</p> </li> <li> <p> <b> <a href=\"https://tools.ietf.org/html/rfc5661\">NFSv4.1</a> </b> - stateful protocol version that supports sessions, directory delegations, and parallel data processing. Version 4.1 also includes all features available in version 4.0.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the mount options that are available for DataSync to access an NFS location.</p>"
    },
    "NfsSubdirectory": {
      "type": "string",
      "max": 4096,
      "pattern": "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]+$"
    },
    "NfsVersion": {
      "type": "string",
      "enum": [
        "AUTOMATIC",
        "NFS3",
        "NFS4_0",
        "NFS4_1"
      ]
    },
    "ObjectStorageAccessKey": {
      "type": "string",
      "max": 200,
      "min": 8,
      "pattern": "^.+$"
    },
    "ObjectStorageBucketName": {
      "type": "string",
      "max": 63,
      "min": 3,
      "pattern": "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$"
    },
    "ObjectStorageSecretKey": {
      "type": "string",
      "max": 200,
      "min": 8,
      "pattern": "^.+$",
      "sensitive": true
    },
    "ObjectStorageServerPort": {
      "type": "integer",
      "box": true,
      "max": 65536,
      "min": 1
    },
    "ObjectStorageServerProtocol": {
      "type": "string",
      "enum": [
        "HTTPS",
        "HTTP"
      ]
    },
    "OnPremConfig": {
      "type": "structure",
      "required": [
        "AgentArns"
      ],
      "members": {
        "AgentArns": {
          "shape": "AgentArnList",
          "documentation": "<p>ARNs)of the agents to use for an NFS location.</p>"
        }
      },
      "documentation": "<p>A list of Amazon Resource Names (ARNs) of agents to use for a Network File System (NFS) location.</p>"
    },
    "Operator": {
      "type": "string",
      "enum": [
        "Equals",
        "NotEquals",
        "In",
        "LessThanOrEqual",
        "LessThan",
        "GreaterThanOrEqual",
        "GreaterThan",
        "Contains",
        "NotContains",
        "BeginsWith"
      ]
    },
    "Options": {
      "type": "structure",
      "members": {
        "VerifyMode": {
          "shape": "VerifyMode",
          "documentation": "<p>A value that determines whether a data integrity verification should be performed at the end of a task execution after all data and metadata have been transferred. For more information, see <a>create-task</a> </p> <p>Default value: POINT_IN_TIME_CONSISTENT.</p> <p>ONLY_FILES_TRANSFERRED (recommended): Perform verification only on files that were transferred. </p> <p>POINT_IN_TIME_CONSISTENT: Scan the entire source and entire destination at the end of the transfer to verify that source and destination are fully synchronized. This option isn't supported when transferring to S3 Glacier or S3 Glacier Deep Archive storage classes.</p> <p>NONE: No additional verification is done at the end of the transfer, but all data transmissions are integrity-checked with checksum verification during the transfer.</p>"
        },
        "OverwriteMode": {
          "shape": "OverwriteMode",
          "documentation": "<p>A value that determines whether files at the destination should be overwritten or preserved when copying files. If set to <code>NEVER</code> a destination file will not be replaced by a source file, even if the destination file differs from the source file. If you modify files in the destination and you sync the files, you can use this value to protect against overwriting those changes. </p> <p>Some storage classes have specific behaviors that can affect your S3 storage cost. For detailed information, see <a>using-storage-classes</a> in the <i>AWS DataSync User Guide</i>.</p>"
        },
        "Atime": {
          "shape": "Atime",
          "documentation": "<p>A file metadata value that shows the last time a file was accessed (that is, when the file was read or written to). If you set <code>Atime</code> to BEST_EFFORT, DataSync attempts to preserve the original <code>Atime</code> attribute on all source files (that is, the version before the PREPARING phase). However, <code>Atime</code>'s behavior is not fully standard across platforms, so AWS DataSync can only do this on a best-effort basis. </p> <p>Default value: BEST_EFFORT.</p> <p>BEST_EFFORT: Attempt to preserve the per-file <code>Atime</code> value (recommended).</p> <p>NONE: Ignore <code>Atime</code>.</p> <note> <p>If <code>Atime</code> is set to BEST_EFFORT, <code>Mtime</code> must be set to PRESERVE. </p> <p>If <code>Atime</code> is set to NONE, <code>Mtime</code> must also be NONE. </p> </note>"
        },
        "Mtime": {
          "shape": "Mtime",
          "documentation": "<p>A value that indicates the last time that a file was modified (that is, a file was written to) before the PREPARING phase. </p> <p>Default value: PRESERVE. </p> <p>PRESERVE: Preserve original <code>Mtime</code> (recommended)</p> <p> NONE: Ignore <code>Mtime</code>. </p> <note> <p>If <code>Mtime</code> is set to PRESERVE, <code>Atime</code> must be set to BEST_EFFORT.</p> <p>If <code>Mtime</code> is set to NONE, <code>Atime</code> must also be set to NONE. </p> </note>"
        },
        "Uid": {
          "shape": "Uid",
          "documentation": "<p>The user ID (UID) of the file's owner. </p> <p>Default value: INT_VALUE. This preserves the integer value of the ID.</p> <p>INT_VALUE: Preserve the integer value of UID and group ID (GID) (recommended).</p> <p>NONE: Ignore UID and GID. </p>"
        },
        "Gid": {
          "shape": "Gid",
          "documentation": "<p>The group ID (GID) of the file's owners. </p> <p>Default value: INT_VALUE. This preserves the integer value of the ID.</p> <p>INT_VALUE: Preserve the integer value of user ID (UID) and GID (recommended).</p> <p>NONE: Ignore UID and GID. </p>"
        },
        "PreserveDeletedFiles": {
          "shape": "PreserveDeletedFiles",
          "documentation": "<p>A value that specifies whether files in the destination that don't exist in the source file system should be preserved. This option can affect your storage cost. If your task deletes objects, you might incur minimum storage duration charges for certain storage classes. For detailed information, see <a>using-storage-classes</a> in the <i>AWS DataSync User Guide</i>.</p> <p>Default value: PRESERVE.</p> <p>PRESERVE: Ignore such destination files (recommended). </p> <p>REMOVE: Delete destination files that aren’t present in the source.</p>"
        },
        "PreserveDevices": {
          "shape": "PreserveDevices",
          "documentation": "<p>A value that determines whether AWS DataSync should preserve the metadata of block and character devices in the source file system, and recreate the files with that device name and metadata on the destination.</p> <note> <p>AWS DataSync can't sync the actual contents of such devices, because they are nonterminal and don't return an end-of-file (EOF) marker.</p> </note> <p>Default value: NONE.</p> <p>NONE: Ignore special devices (recommended). </p> <p>PRESERVE: Preserve character and block device metadata. This option isn't currently supported for Amazon EFS. </p>"
        },
        "PosixPermissions": {
          "shape": "PosixPermissions",
          "documentation": "<p>A value that determines which users or groups can access a file for a specific purpose such as reading, writing, or execution of the file. </p> <p>Default value: PRESERVE.</p> <p>PRESERVE: Preserve POSIX-style permissions (recommended).</p> <p>NONE: Ignore permissions. </p> <note> <p>AWS DataSync can preserve extant permissions of a source location.</p> </note>"
        },
        "BytesPerSecond": {
          "shape": "BytesPerSecond",
          "documentation": "<p>A value that limits the bandwidth used by AWS DataSync. For example, if you want AWS DataSync to use a maximum of 1 MB, set this value to <code>1048576</code> (<code>=1024*1024</code>).</p>"
        },
        "TaskQueueing": {
          "shape": "TaskQueueing",
          "documentation": "<p>A value that determines whether tasks should be queued before executing the tasks. If set to <code>ENABLED</code>, the tasks will be queued. The default is <code>ENABLED</code>.</p> <p>If you use the same agent to run multiple tasks, you can enable the tasks to run in series. For more information, see <a>queue-task-execution</a>.</p>"
        },
        "LogLevel": {
          "shape": "LogLevel",
          "documentation": "<p>A value that determines the type of logs that DataSync publishes to a log stream in the Amazon CloudWatch log group that you provide. For more information about providing a log group for DataSync, see <a href=\"https://docs.aws.amazon.com/datasync/latest/userguide/API_CreateTask.html#DataSync-CreateTask-request-CloudWatchLogGroupArn\">CloudWatchLogGroupArn</a>. If set to <code>OFF</code>, no logs are published. <code>BASIC</code> publishes logs on errors for individual files transferred, and <code>TRANSFER</code> publishes logs for every file or object that is transferred and integrity checked.</p>"
        },
        "TransferMode": {
          "shape": "TransferMode",
          "documentation": "<p>TransferMode has two values: CHANGED and ALL. CHANGED performs an \"incremental\" or \"delta sync\", it compares file modification time between source and destination to determine which files need to be transferred. ALL skips destination inventory and transfers all files discovered on the source.</p>"
        }
      },
      "documentation": "<p>Represents the options that are available to control the behavior of a <a>StartTaskExecution</a> operation. Behavior includes preserving metadata such as user ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination, data integrity verification, and so on.</p> <p>A task has a set of default options associated with it. If you don't specify an option in <a>StartTaskExecution</a>, the default value is used. You can override the defaults options on each task execution by specifying an overriding <code>Options</code> value to <a>StartTaskExecution</a>.</p>"
    },
    "OutputTagList": {
      "type": "list",
      "member": {
        "shape": "TagListEntry"
      },
      "max": 55,
      "min": 0
    },
    "OverwriteMode": {
      "type": "string",
      "enum": [
        "ALWAYS",
        "NEVER"
      ]
    },
    "PLSecurityGroupArnList": {
      "type": "list",
      "member": {
        "shape": "Ec2SecurityGroupArn"
      },
      "max": 1,
      "min": 1
    },
    "PLSubnetArnList": {
      "type": "list",
      "member": {
        "shape": "Ec2SubnetArn"
      },
      "max": 1,
      "min": 1
    },
    "PhaseStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "SUCCESS",
        "ERROR"
      ]
    },
    "PosixPermissions": {
      "type": "string",
      "enum": [
        "NONE",
        "PRESERVE"
      ]
    },
    "PreserveDeletedFiles": {
      "type": "string",
      "enum": [
        "PRESERVE",
        "REMOVE"
      ]
    },
    "PreserveDevices": {
      "type": "string",
      "enum": [
        "NONE",
        "PRESERVE"
      ]
    },
    "PrivateLinkConfig": {
      "type": "structure",
      "members": {
        "VpcEndpointId": {
          "shape": "VpcEndpointId",
          "documentation": "<p>The ID of the VPC endpoint that is configured for an agent. An agent that is configured with a VPC endpoint will not be accessible over the public internet.</p>"
        },
        "PrivateLinkEndpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The private endpoint that is configured for an agent that has access to IP addresses in a <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html\">PrivateLink</a>. An agent that is configured with this endpoint will not be accessible over the public internet.</p>"
        },
        "SubnetArns": {
          "shape": "PLSubnetArnList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of the subnets that are configured for an agent activated in a VPC or an agent that has access to a VPC endpoint.</p>"
        },
        "SecurityGroupArns": {
          "shape": "PLSecurityGroupArnList",
          "documentation": "<p>The Amazon Resource Names (ARNs) of the security groups that are configured for the EC2 resource that hosts an agent activated in a VPC or an agent that has access to a VPC endpoint.</p>"
        }
      },
      "documentation": "<p>The VPC endpoint, subnet, and security group that an agent uses to access IP addresses in a VPC (Virtual Private Cloud).</p>"
    },
    "S3BucketArn": {
      "type": "string",
      "max": 76,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):s3:::([^/]*)$"
    },
    "S3Config": {
      "type": "structure",
      "required": [
        "BucketAccessRoleArn"
      ],
      "members": {
        "BucketAccessRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon S3 bucket to access. This bucket is used as a parameter in the <a>CreateLocationS3</a> operation. </p>"
        }
      },
      "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that is used to access an Amazon S3 bucket.</p> <p>For detailed information about using such a role, see Creating a Location for Amazon S3 in the <i>AWS DataSync User Guide</i>.</p>"
    },
    "S3StorageClass": {
      "type": "string",
      "enum": [
        "STANDARD",
        "STANDARD_IA",
        "ONEZONE_IA",
        "INTELLIGENT_TIERING",
        "GLACIER",
        "DEEP_ARCHIVE"
      ]
    },
    "S3Subdirectory": {
      "type": "string",
      "max": 4096,
      "pattern": "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\p{Zs}]*$"
    },
    "ScheduleExpressionCron": {
      "type": "string",
      "max": 256,
      "pattern": "^[a-zA-Z0-9\\ \\_\\*\\?\\,\\|\\^\\-\\/\\#\\s\\(\\)\\+]*$"
    },
    "ServerHostname": {
      "type": "string",
      "max": 255,
      "pattern": "^(([a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9\\-]*[A-Za-z0-9])$"
    },
    "SmbDomain": {
      "type": "string",
      "max": 253,
      "pattern": "^([A-Za-z0-9]+[A-Za-z0-9-.]*)*[A-Za-z0-9-]*[A-Za-z0-9]$"
    },
    "SmbMountOptions": {
      "type": "structure",
      "members": {
        "Version": {
          "shape": "SmbVersion",
          "documentation": "<p>The specific SMB version that you want DataSync to use to mount your SMB share. If you don't specify a version, DataSync defaults to <code>AUTOMATIC</code>. That is, DataSync automatically selects a version based on negotiation with the SMB server.</p>"
        }
      },
      "documentation": "<p>Represents the mount options that are available for DataSync to access an SMB location.</p>"
    },
    "SmbPassword": {
      "type": "string",
      "max": 104,
      "pattern": "^.{0,104}$",
      "sensitive": true
    },
    "SmbSubdirectory": {
      "type": "string",
      "max": 4096,
      "pattern": "^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$"
    },
    "SmbUser": {
      "type": "string",
      "max": 104,
      "pattern": "^[^\\x5B\\x5D\\\\/:;|=,+*?]{1,104}$"
    },
    "SmbVersion": {
      "type": "string",
      "enum": [
        "AUTOMATIC",
        "SMB2",
        "SMB3"
      ]
    },
    "SourceNetworkInterfaceArns": {
      "type": "list",
      "member": {
        "shape": "NetworkInterfaceArn"
      }
    },
    "StartTaskExecutionRequest": {
      "type": "structure",
      "required": [
        "TaskArn"
      ],
      "members": {
        "TaskArn": {
          "shape": "TaskArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task to start.</p>"
        },
        "OverrideOptions": {
          "shape": "Options"
        },
        "Includes": {
          "shape": "FilterList",
          "documentation": "<p>A list of filter rules that determines which files to include when running a task. The pattern should contain a single filter string that consists of the patterns to include. The patterns are delimited by \"|\" (that is, a pipe). For example: <code>\"/folder1|/folder2\"</code> </p> <p> </p>"
        }
      },
      "documentation": "<p>StartTaskExecutionRequest</p>"
    },
    "StartTaskExecutionResponse": {
      "type": "structure",
      "members": {
        "TaskExecutionArn": {
          "shape": "TaskExecutionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the specific task execution that was started.</p>"
        }
      },
      "documentation": "<p>StartTaskExecutionResponse</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[a-zA-Z0-9\\s+=._:/-]+$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagListEntry": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key for an AWS resource tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value for an AWS resource tag.</p>"
        }
      },
      "documentation": "<p>Represents a single entry in a list of AWS resource tags. <code>TagListEntry</code> returns an array that contains a list of tasks when the <a>ListTagsForResource</a> operation is called.</p>"
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "TaggableResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to apply the tag to.</p>"
        },
        "Tags": {
          "shape": "InputTagList",
          "documentation": "<p>The tags to apply.</p>"
        }
      },
      "documentation": "<p>TagResourceRequest</p>"
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[a-zA-Z0-9\\s+=._:@/-]+$"
    },
    "TaggableResourceArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]+:[0-9]{12}:(agent|task|location)/(agent|task|loc)-[0-9a-z]{17}$"
    },
    "TaskArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]*:[0-9]{12}:task/task-[0-9a-f]{17}$"
    },
    "TaskExecutionArn": {
      "type": "string",
      "max": 128,
      "pattern": "^arn:(aws|aws-cn|aws-us-gov|aws-iso|aws-iso-b):datasync:[a-z\\-0-9]*:[0-9]{12}:task/task-[0-9a-f]{17}/execution/exec-[0-9a-f]{17}$"
    },
    "TaskExecutionList": {
      "type": "list",
      "member": {
        "shape": "TaskExecutionListEntry"
      }
    },
    "TaskExecutionListEntry": {
      "type": "structure",
      "members": {
        "TaskExecutionArn": {
          "shape": "TaskExecutionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task that was executed.</p>"
        },
        "Status": {
          "shape": "TaskExecutionStatus",
          "documentation": "<p>The status of a task execution.</p>"
        }
      },
      "documentation": "<p>Represents a single entry in a list of task executions. <code>TaskExecutionListEntry</code> returns an array that contains a list of specific invocations of a task when <a>ListTaskExecutions</a> operation is called.</p>"
    },
    "TaskExecutionResultDetail": {
      "type": "structure",
      "members": {
        "PrepareDuration": {
          "shape": "Duration",
          "documentation": "<p>The total time in milliseconds that AWS DataSync spent in the PREPARING phase. </p>"
        },
        "PrepareStatus": {
          "shape": "PhaseStatus",
          "documentation": "<p>The status of the PREPARING phase.</p>"
        },
        "TotalDuration": {
          "shape": "Duration",
          "documentation": "<p>The total time in milliseconds that AWS DataSync took to transfer the file from the source to the destination location.</p>"
        },
        "TransferDuration": {
          "shape": "Duration",
          "documentation": "<p>The total time in milliseconds that AWS DataSync spent in the TRANSFERRING phase.</p>"
        },
        "TransferStatus": {
          "shape": "PhaseStatus",
          "documentation": "<p>The status of the TRANSFERRING Phase.</p>"
        },
        "VerifyDuration": {
          "shape": "Duration",
          "documentation": "<p>The total time in milliseconds that AWS DataSync spent in the VERIFYING phase.</p>"
        },
        "VerifyStatus": {
          "shape": "PhaseStatus",
          "documentation": "<p>The status of the VERIFYING Phase.</p>"
        },
        "ErrorCode": {
          "shape": "string",
          "documentation": "<p>Errors that AWS DataSync encountered during execution of the task. You can use this error code to help troubleshoot issues.</p>"
        },
        "ErrorDetail": {
          "shape": "string",
          "documentation": "<p>Detailed description of an error that was encountered during the task execution. You can use this information to help troubleshoot issues. </p>"
        }
      },
      "documentation": "<p>Describes the detailed result of a <code>TaskExecution</code> operation. This result includes the time in milliseconds spent in each phase, the status of the task execution, and the errors encountered.</p>"
    },
    "TaskExecutionStatus": {
      "type": "string",
      "enum": [
        "QUEUED",
        "LAUNCHING",
        "PREPARING",
        "TRANSFERRING",
        "VERIFYING",
        "SUCCESS",
        "ERROR"
      ]
    },
    "TaskFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Values",
        "Operator"
      ],
      "members": {
        "Name": {
          "shape": "TaskFilterName"
        },
        "Values": {
          "shape": "FilterValues"
        },
        "Operator": {
          "shape": "Operator"
        }
      }
    },
    "TaskFilterName": {
      "type": "string",
      "enum": [
        "LocationId",
        "CreationTime"
      ]
    },
    "TaskFilters": {
      "type": "list",
      "member": {
        "shape": "TaskFilter"
      }
    },
    "TaskList": {
      "type": "list",
      "member": {
        "shape": "TaskListEntry"
      }
    },
    "TaskListEntry": {
      "type": "structure",
      "members": {
        "TaskArn": {
          "shape": "TaskArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task.</p>"
        },
        "Status": {
          "shape": "TaskStatus",
          "documentation": "<p>The status of the task.</p>"
        },
        "Name": {
          "shape": "TagValue",
          "documentation": "<p>The name of the task.</p>"
        }
      },
      "documentation": "<p>Represents a single entry in a list of tasks. <code>TaskListEntry</code> returns an array that contains a list of tasks when the <a>ListTasks</a> operation is called. A task includes the source and destination file systems to sync and the options to use for the tasks.</p>"
    },
    "TaskQueueing": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "TaskSchedule": {
      "type": "structure",
      "required": [
        "ScheduleExpression"
      ],
      "members": {
        "ScheduleExpression": {
          "shape": "ScheduleExpressionCron",
          "documentation": "<p>A cron expression that specifies when AWS DataSync initiates a scheduled transfer from a source to a destination location. </p>"
        }
      },
      "documentation": "<p>Specifies the schedule you want your task to use for repeated executions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html\">Schedule Expressions for Rules</a>.</p>"
    },
    "TaskStatus": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "CREATING",
        "QUEUED",
        "RUNNING",
        "UNAVAILABLE"
      ]
    },
    "Time": {
      "type": "timestamp"
    },
    "TransferMode": {
      "type": "string",
      "enum": [
        "CHANGED",
        "ALL"
      ]
    },
    "Uid": {
      "type": "string",
      "enum": [
        "NONE",
        "INT_VALUE",
        "NAME",
        "BOTH"
      ]
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Keys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "TaggableResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to remove the tag from.</p>"
        },
        "Keys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys in the key-value pair in the tag to remove.</p>"
        }
      },
      "documentation": "<p>UntagResourceRequest</p>"
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateAgentRequest": {
      "type": "structure",
      "required": [
        "AgentArn"
      ],
      "members": {
        "AgentArn": {
          "shape": "AgentArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the agent to update.</p>"
        },
        "Name": {
          "shape": "TagValue",
          "documentation": "<p>The name that you want to use to configure the agent.</p>"
        }
      },
      "documentation": "<p>UpdateAgentRequest</p>"
    },
    "UpdateAgentResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateTaskRequest": {
      "type": "structure",
      "required": [
        "TaskArn"
      ],
      "members": {
        "TaskArn": {
          "shape": "TaskArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource name of the task to update.</p>"
        },
        "Options": {
          "shape": "Options"
        },
        "Excludes": {
          "shape": "FilterList",
          "documentation": "<p>A list of filter rules that determines which files to exclude from a task. The list should contain a single filter string that consists of the patterns to exclude. The patterns are delimited by \"|\" (that is, a pipe), for example: <code>\"/folder1|/folder2\"</code> </p> <p> </p>"
        },
        "Schedule": {
          "shape": "TaskSchedule",
          "documentation": "<p>Specifies a schedule used to periodically transfer files from a source to a destination location. You can configure your task to execute hourly, daily, weekly or on specific days of the week. You control when in the day or hour you want the task to execute. The time you specify is UTC time. For more information, see <a>task-scheduling</a>.</p>"
        },
        "Name": {
          "shape": "TagValue",
          "documentation": "<p>The name of the task to update.</p>"
        },
        "CloudWatchLogGroupArn": {
          "shape": "LogGroupArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource name of the CloudWatch LogGroup.</p>"
        }
      },
      "documentation": "<p>UpdateTaskResponse</p>"
    },
    "UpdateTaskResponse": {
      "type": "structure",
      "members": {}
    },
    "VerifyMode": {
      "type": "string",
      "enum": [
        "POINT_IN_TIME_CONSISTENT",
        "ONLY_FILES_TRANSFERRED",
        "NONE"
      ]
    },
    "VpcEndpointId": {
      "type": "string",
      "pattern": "^vpce-[0-9a-f]{17}$"
    },
    "long": {
      "type": "long"
    },
    "string": {
      "type": "string"
    }
  },
  "documentation": "<fullname>AWS DataSync</fullname> <p>AWS DataSync is a managed data transfer service that makes it simpler for you to automate moving data between on-premises storage and Amazon Simple Storage Service (Amazon S3) or Amazon Elastic File System (Amazon EFS). </p> <p>This API interface reference for AWS DataSync contains documentation for a programming interface that you can use to manage AWS DataSync.</p>"
}
]===]))