local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-04-19",
    "endpointPrefix": "dax",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Amazon DAX",
    "serviceFullName": "Amazon DynamoDB Accelerator (DAX)",
    "serviceId": "DAX",
    "signatureVersion": "v4",
    "targetPrefix": "AmazonDAXV3",
    "uid": "dax-2017-04-19"
  },
  "operations": {
    "CreateCluster": {
      "name": "CreateCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClusterRequest"
      },
      "output": {
        "shape": "CreateClusterResponse"
      },
      "errors": [
        {
          "shape": "ClusterAlreadyExistsFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "InsufficientClusterCapacityFault"
        },
        {
          "shape": "SubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidParameterGroupStateFault"
        },
        {
          "shape": "ParameterGroupNotFoundFault"
        },
        {
          "shape": "ClusterQuotaForCustomerExceededFault"
        },
        {
          "shape": "NodeQuotaForClusterExceededFault"
        },
        {
          "shape": "NodeQuotaForCustomerExceededFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "TagQuotaPerResourceExceeded"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>"
    },
    "CreateParameterGroup": {
      "name": "CreateParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateParameterGroupRequest"
      },
      "output": {
        "shape": "CreateParameterGroupResponse"
      },
      "errors": [
        {
          "shape": "ParameterGroupQuotaExceededFault"
        },
        {
          "shape": "ParameterGroupAlreadyExistsFault"
        },
        {
          "shape": "InvalidParameterGroupStateFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.</p>"
    },
    "CreateSubnetGroup": {
      "name": "CreateSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSubnetGroupRequest"
      },
      "output": {
        "shape": "CreateSubnetGroupResponse"
      },
      "errors": [
        {
          "shape": "SubnetGroupAlreadyExistsFault"
        },
        {
          "shape": "SubnetGroupQuotaExceededFault"
        },
        {
          "shape": "SubnetQuotaExceededFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        }
      ],
      "documentation": "<p>Creates a new subnet group.</p>"
    },
    "DecreaseReplicationFactor": {
      "name": "DecreaseReplicationFactor",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DecreaseReplicationFactorRequest"
      },
      "output": {
        "shape": "DecreaseReplicationFactorResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "NodeNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Removes one or more nodes from a DAX cluster.</p> <note> <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node in a DAX cluster. If you need to do this, use <code>DeleteCluster</code> instead.</p> </note>"
    },
    "DeleteCluster": {
      "name": "DeleteCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClusterRequest"
      },
      "output": {
        "shape": "DeleteClusterResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Deletes a previously provisioned DAX cluster. <i>DeleteCluster</i> deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.</p>"
    },
    "DeleteParameterGroup": {
      "name": "DeleteParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteParameterGroupRequest"
      },
      "output": {
        "shape": "DeleteParameterGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterGroupStateFault"
        },
        {
          "shape": "ParameterGroupNotFoundFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.</p>"
    },
    "DeleteSubnetGroup": {
      "name": "DeleteSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSubnetGroupRequest"
      },
      "output": {
        "shape": "DeleteSubnetGroupResponse"
      },
      "errors": [
        {
          "shape": "SubnetGroupInUseFault"
        },
        {
          "shape": "SubnetGroupNotFoundFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a subnet group.</p> <note> <p>You cannot delete a subnet group if it is associated with any DAX clusters.</p> </note>"
    },
    "DescribeClusters": {
      "name": "DescribeClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClustersRequest"
      },
      "output": {
        "shape": "DescribeClustersResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.</p> <p>If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.</p> <p>If the cluster is in the DELETING state, only cluster level information will be displayed.</p> <p>If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is <i>available</i>, the cluster is ready for use.</p> <p>If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.</p>"
    },
    "DescribeDefaultParameters": {
      "name": "DescribeDefaultParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDefaultParametersRequest"
      },
      "output": {
        "shape": "DescribeDefaultParametersResponse"
      },
      "errors": [
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Returns the default system parameter information for the DAX caching software.</p>"
    },
    "DescribeEvents": {
      "name": "DescribeEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventsRequest"
      },
      "output": {
        "shape": "DescribeEventsResponse"
      },
      "errors": [
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.</p> <p>By default, only the events occurring within the last 24 hours are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>"
    },
    "DescribeParameterGroups": {
      "name": "DescribeParameterGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeParameterGroupsRequest"
      },
      "output": {
        "shape": "DescribeParameterGroupsResponse"
      },
      "errors": [
        {
          "shape": "ParameterGroupNotFoundFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.</p>"
    },
    "DescribeParameters": {
      "name": "DescribeParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeParametersRequest"
      },
      "output": {
        "shape": "DescribeParametersResponse"
      },
      "errors": [
        {
          "shape": "ParameterGroupNotFoundFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Returns the detailed parameter list for a particular parameter group.</p>"
    },
    "DescribeSubnetGroups": {
      "name": "DescribeSubnetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSubnetGroupsRequest"
      },
      "output": {
        "shape": "DescribeSubnetGroupsResponse"
      },
      "errors": [
        {
          "shape": "SubnetGroupNotFoundFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.</p>"
    },
    "IncreaseReplicationFactor": {
      "name": "IncreaseReplicationFactor",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "IncreaseReplicationFactorRequest"
      },
      "output": {
        "shape": "IncreaseReplicationFactorResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "InsufficientClusterCapacityFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "NodeQuotaForClusterExceededFault"
        },
        {
          "shape": "NodeQuotaForCustomerExceededFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Adds one or more nodes to a DAX cluster.</p>"
    },
    "ListTags": {
      "name": "ListTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsRequest"
      },
      "output": {
        "shape": "ListTagsResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidARNFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>List all of the tags for a DAX cluster. You can call <code>ListTags</code> up to 10 times per second, per account.</p>"
    },
    "RebootNode": {
      "name": "RebootNode",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebootNodeRequest"
      },
      "output": {
        "shape": "RebootNodeResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "NodeNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.</p> <note> <p> <code>RebootNode</code> restarts the DAX engine process and does not remove the contents of the cache. </p> </note>"
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
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "TagQuotaPerResourceExceeded"
        },
        {
          "shape": "InvalidARNFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Associates a set of tags with a DAX resource. You can call <code>TagResource</code> up to 5 times per second, per account. </p>"
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
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidARNFault"
        },
        {
          "shape": "TagNotFoundFault"
        },
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Removes the association of tags from a DAX resource. You can call <code>UntagResource</code> up to 5 times per second, per account. </p>"
    },
    "UpdateCluster": {
      "name": "UpdateCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateClusterRequest"
      },
      "output": {
        "shape": "UpdateClusterResponse"
      },
      "errors": [
        {
          "shape": "InvalidClusterStateFault"
        },
        {
          "shape": "ClusterNotFoundFault"
        },
        {
          "shape": "InvalidParameterGroupStateFault"
        },
        {
          "shape": "ParameterGroupNotFoundFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.</p>"
    },
    "UpdateParameterGroup": {
      "name": "UpdateParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateParameterGroupRequest"
      },
      "output": {
        "shape": "UpdateParameterGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterGroupStateFault"
        },
        {
          "shape": "ParameterGroupNotFoundFault"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        }
      ],
      "documentation": "<p>Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>"
    },
    "UpdateSubnetGroup": {
      "name": "UpdateSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateSubnetGroupRequest"
      },
      "output": {
        "shape": "UpdateSubnetGroupResponse"
      },
      "errors": [
        {
          "shape": "SubnetGroupNotFoundFault"
        },
        {
          "shape": "SubnetQuotaExceededFault"
        },
        {
          "shape": "SubnetInUse"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "ServiceLinkedRoleNotFoundFault"
        }
      ],
      "documentation": "<p>Modifies an existing subnet group.</p>"
    }
  },
  "shapes": {
    "AvailabilityZoneList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ChangeType": {
      "type": "string",
      "enum": [
        "IMMEDIATE",
        "REQUIRES_REBOOT"
      ]
    },
    "Cluster": {
      "type": "structure",
      "members": {
        "ClusterName": {
          "shape": "String",
          "documentation": "<p>The name of the DAX cluster.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the cluster.</p>"
        },
        "ClusterArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) that uniquely identifies the cluster. </p>"
        },
        "TotalNodes": {
          "shape": "IntegerOptional",
          "documentation": "<p>The total number of nodes in the cluster.</p>"
        },
        "ActiveNodes": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of nodes in the cluster that are active (i.e., capable of serving requests).</p>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The current status of the cluster.</p>"
        },
        "ClusterDiscoveryEndpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The configuration endpoint for this DAX cluster, consisting of a DNS name and a port number. Client applications can specify this endpoint, rather than an individual node endpoint, and allow the DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>"
        },
        "NodeIdsToRemove": {
          "shape": "NodeIdentifierList",
          "documentation": "<p>A list of nodes to be removed from the cluster.</p>"
        },
        "Nodes": {
          "shape": "NodeList",
          "documentation": "<p>A list of nodes that are currently in the cluster.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>"
        },
        "NotificationConfiguration": {
          "shape": "NotificationConfiguration",
          "documentation": "<p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>"
        },
        "SubnetGroup": {
          "shape": "String",
          "documentation": "<p>The subnet group where the DAX cluster is running.</p>"
        },
        "SecurityGroups": {
          "shape": "SecurityGroupMembershipList",
          "documentation": "<p>A list of security groups, and the status of each, for the nodes in the cluster.</p>"
        },
        "IamRoleArn": {
          "shape": "String",
          "documentation": "<p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>"
        },
        "ParameterGroup": {
          "shape": "ParameterGroupStatus",
          "documentation": "<p>The parameter group being used by nodes in the cluster.</p>"
        },
        "SSEDescription": {
          "shape": "SSEDescription",
          "documentation": "<p>The description of the server-side encryption status on the specified DAX cluster.</p>"
        }
      },
      "documentation": "<p>Contains all of the attributes of a specific DAX cluster.</p>"
    },
    "ClusterList": {
      "type": "list",
      "member": {
        "shape": "Cluster"
      }
    },
    "ClusterNameList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "CreateClusterRequest": {
      "type": "structure",
      "required": [
        "ClusterName",
        "NodeType",
        "ReplicationFactor",
        "IamRoleArn"
      ],
      "members": {
        "ClusterName": {
          "shape": "String",
          "documentation": "<p>The cluster identifier. This parameter is stored as a lowercase string.</p> <p> <b>Constraints:</b> </p> <ul> <li> <p>A name must contain from 1 to 20 alphanumeric characters or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "NodeType": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the nodes in the cluster.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the cluster.</p>"
        },
        "ReplicationFactor": {
          "shape": "Integer",
          "documentation": "<p>The number of nodes in the DAX cluster. A replication factor of 1 will create a single-node cluster, without any read replicas. For additional fault tolerance, you can create a multiple node cluster with one or more read replicas. To do this, set <code>ReplicationFactor</code> to a number between 3 (one primary and two read replicas) and 10 (one primary and nine read replicas). <code>If the AvailabilityZones</code> parameter is provided, its length must equal the <code>ReplicationFactor</code>.</p> <note> <p>AWS recommends that you have at least two read replicas per cluster.</p> </note>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZoneList",
          "documentation": "<p>The Availability Zones (AZs) in which the cluster nodes will reside after the cluster has been created or updated. If provided, the length of this list must equal the <code>ReplicationFactor</code> parameter. If you omit this parameter, DAX will spread the nodes across Availability Zones for the highest availability.</p>"
        },
        "SubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group to be used for the replication group.</p> <important> <p>DAX clusters can only run in an Amazon VPC environment. All of the subnets that you specify in a subnet group must exist in the same VPC.</p> </important>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIdentifierList",
          "documentation": "<p>A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the security group ID is system-generated.)</p> <p>If this parameter is not specified, DAX assigns the default VPC security group to each node.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>Specifies the weekly time range during which maintenance on the DAX cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Valid values for <code>ddd</code> are:</p> <ul> <li> <p> <code>sun</code> </p> </li> <li> <p> <code>mon</code> </p> </li> <li> <p> <code>tue</code> </p> </li> <li> <p> <code>wed</code> </p> </li> <li> <p> <code>thu</code> </p> </li> <li> <p> <code>fri</code> </p> </li> <li> <p> <code>sat</code> </p> </li> </ul> <p>Example: <code>sun:05:00-sun:09:00</code> </p> <note> <p>If you don't specify a preferred maintenance window when you create or modify a cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day of the week.</p> </note>"
        },
        "NotificationTopicArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will be sent.</p> <note> <p>The Amazon SNS topic owner must be same as the DAX cluster owner.</p> </note>"
        },
        "IamRoleArn": {
          "shape": "String",
          "documentation": "<p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>"
        },
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The parameter group to be associated with the DAX cluster.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A set of tags to associate with the DAX cluster. </p>"
        },
        "SSESpecification": {
          "shape": "SSESpecification",
          "documentation": "<p>Represents the settings used to enable server-side encryption on the cluster.</p>"
        }
      }
    },
    "CreateClusterResponse": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster",
          "documentation": "<p>A description of the DAX cluster that you have created.</p>"
        }
      }
    },
    "CreateParameterGroupRequest": {
      "type": "structure",
      "required": [
        "ParameterGroupName"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group to apply to all of the clusters in this replication group.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the parameter group.</p>"
        }
      }
    },
    "CreateParameterGroupResponse": {
      "type": "structure",
      "members": {
        "ParameterGroup": {
          "shape": "ParameterGroup",
          "documentation": "<p>Represents the output of a <i>CreateParameterGroup</i> action.</p>"
        }
      }
    },
    "CreateSubnetGroupRequest": {
      "type": "structure",
      "required": [
        "SubnetGroupName",
        "SubnetIds"
      ],
      "members": {
        "SubnetGroupName": {
          "shape": "String",
          "documentation": "<p>A name for the subnet group. This value is stored as a lowercase string. </p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description for the subnet group</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>A list of VPC subnet IDs for the subnet group.</p>"
        }
      }
    },
    "CreateSubnetGroupResponse": {
      "type": "structure",
      "members": {
        "SubnetGroup": {
          "shape": "SubnetGroup",
          "documentation": "<p>Represents the output of a <i>CreateSubnetGroup</i> operation.</p>"
        }
      }
    },
    "DecreaseReplicationFactorRequest": {
      "type": "structure",
      "required": [
        "ClusterName",
        "NewReplicationFactor"
      ],
      "members": {
        "ClusterName": {
          "shape": "String",
          "documentation": "<p>The name of the DAX cluster from which you want to remove nodes.</p>"
        },
        "NewReplicationFactor": {
          "shape": "Integer",
          "documentation": "<p>The new number of nodes for the DAX cluster.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZoneList",
          "documentation": "<p>The Availability Zone(s) from which to remove nodes.</p>"
        },
        "NodeIdsToRemove": {
          "shape": "NodeIdentifierList",
          "documentation": "<p>The unique identifiers of the nodes to be removed from the cluster.</p>"
        }
      }
    },
    "DecreaseReplicationFactorResponse": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster",
          "documentation": "<p>A description of the DAX cluster, after you have decreased its replication factor.</p>"
        }
      }
    },
    "DeleteClusterRequest": {
      "type": "structure",
      "required": [
        "ClusterName"
      ],
      "members": {
        "ClusterName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster to be deleted.</p>"
        }
      }
    },
    "DeleteClusterResponse": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster",
          "documentation": "<p>A description of the DAX cluster that is being deleted.</p>"
        }
      }
    },
    "DeleteParameterGroupRequest": {
      "type": "structure",
      "required": [
        "ParameterGroupName"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group to delete.</p>"
        }
      }
    },
    "DeleteParameterGroupResponse": {
      "type": "structure",
      "members": {
        "DeletionMessage": {
          "shape": "String",
          "documentation": "<p>A user-specified message for this action (i.e., a reason for deleting the parameter group).</p>"
        }
      }
    },
    "DeleteSubnetGroupRequest": {
      "type": "structure",
      "required": [
        "SubnetGroupName"
      ],
      "members": {
        "SubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group to delete.</p>"
        }
      }
    },
    "DeleteSubnetGroupResponse": {
      "type": "structure",
      "members": {
        "DeletionMessage": {
          "shape": "String",
          "documentation": "<p>A user-specified message for this action (i.e., a reason for deleting the subnet group).</p>"
        }
      }
    },
    "DescribeClustersRequest": {
      "type": "structure",
      "members": {
        "ClusterNames": {
          "shape": "ClusterNameList",
          "documentation": "<p>The names of the DAX clusters being described.</p>"
        },
        "MaxResults": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        }
      }
    },
    "DescribeClustersResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Provides an identifier to allow retrieval of paginated results.</p>"
        },
        "Clusters": {
          "shape": "ClusterList",
          "documentation": "<p>The descriptions of your DAX clusters, in response to a <i>DescribeClusters</i> request.</p>"
        }
      }
    },
    "DescribeDefaultParametersRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        }
      }
    },
    "DescribeDefaultParametersResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Provides an identifier to allow retrieval of paginated results.</p>"
        },
        "Parameters": {
          "shape": "ParameterList",
          "documentation": "<p>A list of parameters. Each element in the list represents one parameter.</p>"
        }
      }
    },
    "DescribeEventsRequest": {
      "type": "structure",
      "members": {
        "SourceName": {
          "shape": "String",
          "documentation": "<p>The identifier of the event source for which events will be returned. If not specified, then all sources are included in the response.</p>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>The event source to retrieve events for. If no value is specified, all events are returned.</p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.</p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.</p>"
        },
        "Duration": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of minutes' worth of events to retrieve.</p>"
        },
        "MaxResults": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        }
      }
    },
    "DescribeEventsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Provides an identifier to allow retrieval of paginated results.</p>"
        },
        "Events": {
          "shape": "EventList",
          "documentation": "<p>An array of events. Each element in the array represents one event.</p>"
        }
      }
    },
    "DescribeParameterGroupsRequest": {
      "type": "structure",
      "members": {
        "ParameterGroupNames": {
          "shape": "ParameterGroupNameList",
          "documentation": "<p>The names of the parameter groups.</p>"
        },
        "MaxResults": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        }
      }
    },
    "DescribeParameterGroupsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Provides an identifier to allow retrieval of paginated results.</p>"
        },
        "ParameterGroups": {
          "shape": "ParameterGroupList",
          "documentation": "<p>An array of parameter groups. Each element in the array represents one parameter group.</p>"
        }
      }
    },
    "DescribeParametersRequest": {
      "type": "structure",
      "required": [
        "ParameterGroupName"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group.</p>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>How the parameter is defined. For example, <code>system</code> denotes a system-defined parameter.</p>"
        },
        "MaxResults": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        }
      }
    },
    "DescribeParametersResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Provides an identifier to allow retrieval of paginated results.</p>"
        },
        "Parameters": {
          "shape": "ParameterList",
          "documentation": "<p>A list of parameters within a parameter group. Each element in the list represents one parameter.</p>"
        }
      }
    },
    "DescribeSubnetGroupsRequest": {
      "type": "structure",
      "members": {
        "SubnetGroupNames": {
          "shape": "SubnetGroupNameList",
          "documentation": "<p>The name of the subnet group.</p>"
        },
        "MaxResults": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p> <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>"
        }
      }
    },
    "DescribeSubnetGroupsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Provides an identifier to allow retrieval of paginated results.</p>"
        },
        "SubnetGroups": {
          "shape": "SubnetGroupList",
          "documentation": "<p>An array of subnet groups. Each element in the array represents a single subnet group.</p>"
        }
      }
    },
    "Endpoint": {
      "type": "structure",
      "members": {
        "Address": {
          "shape": "String",
          "documentation": "<p>The DNS hostname of the endpoint.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>The port number that applications should use to connect to the endpoint.</p>"
        }
      },
      "documentation": "<p>Represents the information required for client programs to connect to the configuration endpoint for a DAX cluster, or to an individual node within the cluster.</p>"
    },
    "Event": {
      "type": "structure",
      "members": {
        "SourceName": {
          "shape": "String",
          "documentation": "<p>The source of the event. For example, if the event occurred at the node level, the source would be the node ID.</p>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>Specifies the origin of this event - a cluster, a parameter group, a node ID, etc.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>A user-defined message associated with the event.</p>"
        },
        "Date": {
          "shape": "TStamp",
          "documentation": "<p>The date and time when the event occurred.</p>"
        }
      },
      "documentation": "<p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a DAX cluster, adding or removing a node, or rebooting a node.</p>"
    },
    "EventList": {
      "type": "list",
      "member": {
        "shape": "Event"
      }
    },
    "IncreaseReplicationFactorRequest": {
      "type": "structure",
      "required": [
        "ClusterName",
        "NewReplicationFactor"
      ],
      "members": {
        "ClusterName": {
          "shape": "String",
          "documentation": "<p>The name of the DAX cluster that will receive additional nodes.</p>"
        },
        "NewReplicationFactor": {
          "shape": "Integer",
          "documentation": "<p>The new number of nodes for the DAX cluster.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZoneList",
          "documentation": "<p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes belonging to the cluster are placed in these Availability Zones. Use this parameter if you want to distribute the nodes across multiple AZs.</p>"
        }
      }
    },
    "IncreaseReplicationFactorResponse": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster",
          "documentation": "<p>A description of the DAX cluster. with its new replication factor.</p>"
        }
      }
    },
    "Integer": {
      "type": "integer"
    },
    "IntegerOptional": {
      "type": "integer"
    },
    "IsModifiable": {
      "type": "string",
      "enum": [
        "TRUE",
        "FALSE",
        "CONDITIONAL"
      ]
    },
    "KeyList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ListTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceName"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The name of the DAX resource to which the tags belong.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.</p>"
        }
      }
    },
    "ListTagsResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags currently associated with the DAX cluster.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>If this value is present, there are additional results to be displayed. To retrieve them, call <code>ListTags</code> again, with <code>NextToken</code> set to this value.</p>"
        }
      }
    },
    "Node": {
      "type": "structure",
      "members": {
        "NodeId": {
          "shape": "String",
          "documentation": "<p>A system-generated identifier for the node.</p>"
        },
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>"
        },
        "NodeCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>The date and time (in UNIX epoch format) when the node was launched.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone (AZ) in which the node has been deployed.</p>"
        },
        "NodeStatus": {
          "shape": "String",
          "documentation": "<p>The current status of the node. For example: <code>available</code>.</p>"
        },
        "ParameterGroupStatus": {
          "shape": "String",
          "documentation": "<p>The status of the parameter group associated with this node. For example, <code>in-sync</code>.</p>"
        }
      },
      "documentation": "<p>Represents an individual node within a DAX cluster.</p>"
    },
    "NodeIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "NodeList": {
      "type": "list",
      "member": {
        "shape": "Node"
      }
    },
    "NodeTypeSpecificValue": {
      "type": "structure",
      "members": {
        "NodeType": {
          "shape": "String",
          "documentation": "<p>A node type to which the parameter value applies.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The parameter value for this node type.</p>"
        }
      },
      "documentation": "<p>Represents a parameter value that is applicable to a particular node type.</p>"
    },
    "NodeTypeSpecificValueList": {
      "type": "list",
      "member": {
        "shape": "NodeTypeSpecificValue"
      }
    },
    "NotificationConfiguration": {
      "type": "structure",
      "members": {
        "TopicArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the topic. </p>"
        },
        "TopicStatus": {
          "shape": "String",
          "documentation": "<p>The current state of the topic.</p>"
        }
      },
      "documentation": "<p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>"
    },
    "Parameter": {
      "type": "structure",
      "members": {
        "ParameterName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "ParameterType": {
          "shape": "ParameterType",
          "documentation": "<p>Determines whether the parameter can be applied to any nodes, or only nodes of a particular type.</p>"
        },
        "ParameterValue": {
          "shape": "String",
          "documentation": "<p>The value for the parameter.</p>"
        },
        "NodeTypeSpecificValues": {
          "shape": "NodeTypeSpecificValueList",
          "documentation": "<p>A list of node types, and specific parameter values for each node.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the parameter</p>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>How the parameter is defined. For example, <code>system</code> denotes a system-defined parameter.</p>"
        },
        "DataType": {
          "shape": "String",
          "documentation": "<p>The data type of the parameter. For example, <code>integer</code>:</p>"
        },
        "AllowedValues": {
          "shape": "String",
          "documentation": "<p>A range of values within which the parameter can be set.</p>"
        },
        "IsModifiable": {
          "shape": "IsModifiable",
          "documentation": "<p>Whether the customer is allowed to modify the parameter.</p>"
        },
        "ChangeType": {
          "shape": "ChangeType",
          "documentation": "<p>The conditions under which changes to this parameter can be applied. For example, <code>requires-reboot</code> indicates that a new value for this parameter will only take effect if a node is rebooted.</p>"
        }
      },
      "documentation": "<p>Describes an individual setting that controls some aspect of DAX behavior.</p>"
    },
    "ParameterGroup": {
      "type": "structure",
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the parameter group.</p>"
        }
      },
      "documentation": "<p>A named set of parameters that are applied to all of the nodes in a DAX cluster.</p>"
    },
    "ParameterGroupList": {
      "type": "list",
      "member": {
        "shape": "ParameterGroup"
      }
    },
    "ParameterGroupNameList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ParameterGroupStatus": {
      "type": "structure",
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group.</p>"
        },
        "ParameterApplyStatus": {
          "shape": "String",
          "documentation": "<p>The status of parameter updates. </p>"
        },
        "NodeIdsToReboot": {
          "shape": "NodeIdentifierList",
          "documentation": "<p>The node IDs of one or more nodes to be rebooted.</p>"
        }
      },
      "documentation": "<p>The status of a parameter group.</p>"
    },
    "ParameterList": {
      "type": "list",
      "member": {
        "shape": "Parameter"
      }
    },
    "ParameterNameValue": {
      "type": "structure",
      "members": {
        "ParameterName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "ParameterValue": {
          "shape": "String",
          "documentation": "<p>The value of the parameter.</p>"
        }
      },
      "documentation": "<p>An individual DAX parameter.</p>"
    },
    "ParameterNameValueList": {
      "type": "list",
      "member": {
        "shape": "ParameterNameValue"
      }
    },
    "ParameterType": {
      "type": "string",
      "enum": [
        "DEFAULT",
        "NODE_TYPE_SPECIFIC"
      ]
    },
    "RebootNodeRequest": {
      "type": "structure",
      "required": [
        "ClusterName",
        "NodeId"
      ],
      "members": {
        "ClusterName": {
          "shape": "String",
          "documentation": "<p>The name of the DAX cluster containing the node to be rebooted.</p>"
        },
        "NodeId": {
          "shape": "String",
          "documentation": "<p>The system-assigned ID of the node to be rebooted.</p>"
        }
      }
    },
    "RebootNodeResponse": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster",
          "documentation": "<p>A description of the DAX cluster after a node has been rebooted.</p>"
        }
      }
    },
    "SSEDescription": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "SSEStatus",
          "documentation": "<p>The current state of server-side encryption:</p> <ul> <li> <p> <code>ENABLING</code> - Server-side encryption is being enabled.</p> </li> <li> <p> <code>ENABLED</code> - Server-side encryption is enabled.</p> </li> <li> <p> <code>DISABLING</code> - Server-side encryption is being disabled.</p> </li> <li> <p> <code>DISABLED</code> - Server-side encryption is disabled.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The description of the server-side encryption status on the specified DAX cluster.</p>"
    },
    "SSEEnabled": {
      "type": "boolean"
    },
    "SSESpecification": {
      "type": "structure",
      "required": [
        "Enabled"
      ],
      "members": {
        "Enabled": {
          "shape": "SSEEnabled",
          "documentation": "<p>Indicates whether server-side encryption is enabled (true) or disabled (false) on the cluster.</p>"
        }
      },
      "documentation": "<p>Represents the settings used to enable server-side encryption.</p>"
    },
    "SSEStatus": {
      "type": "string",
      "enum": [
        "ENABLING",
        "ENABLED",
        "DISABLING",
        "DISABLED"
      ]
    },
    "SecurityGroupIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SecurityGroupMembership": {
      "type": "structure",
      "members": {
        "SecurityGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique ID for this security group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of this security group.</p>"
        }
      },
      "documentation": "<p>An individual VPC security group and its status.</p>"
    },
    "SecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "SecurityGroupMembership"
      }
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "CLUSTER",
        "PARAMETER_GROUP",
        "SUBNET_GROUP"
      ]
    },
    "String": {
      "type": "string"
    },
    "Subnet": {
      "type": "structure",
      "members": {
        "SubnetIdentifier": {
          "shape": "String",
          "documentation": "<p>The system-assigned identifier for the subnet.</p>"
        },
        "SubnetAvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone (AZ) for the subnet.</p>"
        }
      },
      "documentation": "<p>Represents the subnet associated with a DAX cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with DAX.</p>"
    },
    "SubnetGroup": {
      "type": "structure",
      "members": {
        "SubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the subnet group.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>"
        },
        "Subnets": {
          "shape": "SubnetList",
          "documentation": "<p>A list of subnets associated with the subnet group. </p>"
        }
      },
      "documentation": "<p>Represents the output of one of the following actions:</p> <ul> <li> <p> <i>CreateSubnetGroup</i> </p> </li> <li> <p> <i>ModifySubnetGroup</i> </p> </li> </ul>"
    },
    "SubnetGroupList": {
      "type": "list",
      "member": {
        "shape": "SubnetGroup"
      }
    },
    "SubnetGroupNameList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SubnetIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SubnetList": {
      "type": "list",
      "member": {
        "shape": "Subnet"
      }
    },
    "TStamp": {
      "type": "timestamp"
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>The key for the tag. Tag keys are case sensitive. Every DAX cluster can only have one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The value of the tag. Tag values are case-sensitive and can be null. </p>"
        }
      },
      "documentation": "<p>A description of a tag. Every tag is a key-value pair. You can add up to 50 tags to a single DAX cluster.</p> <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> <p>You cannot backdate the application of a tag.</p>"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceName",
        "Tags"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The name of the DAX resource to which tags should be added.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the DAX resource. </p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags that are associated with the DAX resource.</p>"
        }
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceName",
        "TagKeys"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The name of the DAX resource from which the tags should be removed.</p>"
        },
        "TagKeys": {
          "shape": "KeyList",
          "documentation": "<p>A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tag keys that have been removed from the cluster.</p>"
        }
      }
    },
    "UpdateClusterRequest": {
      "type": "structure",
      "required": [
        "ClusterName"
      ],
      "members": {
        "ClusterName": {
          "shape": "String",
          "documentation": "<p>The name of the DAX cluster to be modified.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the changes being made to the cluster.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>"
        },
        "NotificationTopicArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the topic.</p>"
        },
        "NotificationTopicStatus": {
          "shape": "String",
          "documentation": "<p>The current state of the topic.</p>"
        },
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a parameter group for this cluster.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIdentifierList",
          "documentation": "<p>A list of user-specified security group IDs to be assigned to each node in the DAX cluster. If this parameter is not specified, DAX assigns the default VPC security group to each node.</p>"
        }
      }
    },
    "UpdateClusterResponse": {
      "type": "structure",
      "members": {
        "Cluster": {
          "shape": "Cluster",
          "documentation": "<p>A description of the DAX cluster, after it has been modified.</p>"
        }
      }
    },
    "UpdateParameterGroupRequest": {
      "type": "structure",
      "required": [
        "ParameterGroupName",
        "ParameterNameValues"
      ],
      "members": {
        "ParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group.</p>"
        },
        "ParameterNameValues": {
          "shape": "ParameterNameValueList",
          "documentation": "<p>An array of name-value pairs for the parameters in the group. Each element in the array represents a single parameter.</p>"
        }
      }
    },
    "UpdateParameterGroupResponse": {
      "type": "structure",
      "members": {
        "ParameterGroup": {
          "shape": "ParameterGroup",
          "documentation": "<p>The parameter group that has been modified.</p>"
        }
      }
    },
    "UpdateSubnetGroupRequest": {
      "type": "structure",
      "required": [
        "SubnetGroupName"
      ],
      "members": {
        "SubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the subnet group.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>A list of subnet IDs in the subnet group.</p>"
        }
      }
    },
    "UpdateSubnetGroupResponse": {
      "type": "structure",
      "members": {
        "SubnetGroup": {
          "shape": "SubnetGroup",
          "documentation": "<p>The subnet group that has been modified.</p>"
        }
      }
    }
  },
  "documentation": "<p>DAX is a managed caching service engineered for Amazon DynamoDB. DAX dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so applications can access that data with sub-millisecond latency. You can create a DAX cluster easily, using the AWS Management Console. With a few simple modifications to your code, your application can begin taking advantage of the DAX cluster and realize significant improvements in read performance.</p>"
}
]===]))
