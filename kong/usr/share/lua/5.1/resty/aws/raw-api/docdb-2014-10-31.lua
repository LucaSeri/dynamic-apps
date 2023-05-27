local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2014-10-31",
    "endpointPrefix": "rds",
    "protocol": "query",
    "serviceAbbreviation": "Amazon DocDB",
    "serviceFullName": "Amazon DocumentDB with MongoDB compatibility",
    "serviceId": "DocDB",
    "signatureVersion": "v4",
    "signingName": "rds",
    "uid": "docdb-2014-10-31",
    "xmlNamespace": "http://rds.amazonaws.com/doc/2014-10-31/"
  },
  "operations": {
    "AddTagsToResource": {
      "name": "AddTagsToResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddTagsToResourceMessage"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Adds metadata tags to an Amazon DocumentDB resource. You can use these tags with cost allocation reporting to track costs that are associated with Amazon DocumentDB resources. or in a <code>Condition</code> statement in an AWS Identity and Access Management (IAM) policy for Amazon DocumentDB.</p>"
    },
    "ApplyPendingMaintenanceAction": {
      "name": "ApplyPendingMaintenanceAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ApplyPendingMaintenanceActionMessage"
      },
      "output": {
        "shape": "ApplyPendingMaintenanceActionResult",
        "resultWrapper": "ApplyPendingMaintenanceActionResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Applies a pending maintenance action to a resource (for example, to a DB instance).</p>"
    },
    "CopyDBClusterParameterGroup": {
      "name": "CopyDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyDBClusterParameterGroupMessage"
      },
      "output": {
        "shape": "CopyDBClusterParameterGroupResult",
        "resultWrapper": "CopyDBClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "DBParameterGroupQuotaExceededFault"
        },
        {
          "shape": "DBParameterGroupAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Copies the specified cluster parameter group.</p>"
    },
    "CopyDBClusterSnapshot": {
      "name": "CopyDBClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyDBClusterSnapshotMessage"
      },
      "output": {
        "shape": "CopyDBClusterSnapshotResult",
        "resultWrapper": "CopyDBClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Copies a snapshot of a cluster.</p> <p>To copy a cluster snapshot from a shared manual cluster snapshot, <code>SourceDBClusterSnapshotIdentifier</code> must be the Amazon Resource Name (ARN) of the shared cluster snapshot.</p> <p>To cancel the copy operation after it is in progress, delete the target cluster snapshot identified by <code>TargetDBClusterSnapshotIdentifier</code> while that DB cluster snapshot is in the <i>copying</i> status.</p>"
    },
    "CreateDBCluster": {
      "name": "CreateDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBClusterMessage"
      },
      "output": {
        "shape": "CreateDBClusterResult",
        "resultWrapper": "CreateDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterAlreadyExistsFault"
        },
        {
          "shape": "InsufficientStorageClusterCapacityFault"
        },
        {
          "shape": "DBClusterQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBSubnetGroupStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        }
      ],
      "documentation": "<p>Creates a new Amazon DocumentDB cluster.</p>"
    },
    "CreateDBClusterParameterGroup": {
      "name": "CreateDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBClusterParameterGroupMessage"
      },
      "output": {
        "shape": "CreateDBClusterParameterGroupResult",
        "resultWrapper": "CreateDBClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupQuotaExceededFault"
        },
        {
          "shape": "DBParameterGroupAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Creates a new cluster parameter group.</p> <p>Parameters in a cluster parameter group apply to all of the instances in a DB cluster.</p> <p>A cluster parameter group is initially created with the default parameters for the database engine used by instances in the cluster. To provide custom values for any of the parameters, you must modify the group after you create it. After you create a DB cluster parameter group, you must associate it with your cluster. For the new DB cluster parameter group and associated settings to take effect, you must then reboot the instances in the cluster without failover.</p> <important> <p>After you create a cluster parameter group, you should wait at least 5 minutes before creating your first cluster that uses that cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the cluster parameter group is used as the default for a new cluster. This step is especially important for parameters that are critical when creating the default database for a cluster, such as the character set for the default database defined by the <code>character_set_database</code> parameter.</p> </important>"
    },
    "CreateDBClusterSnapshot": {
      "name": "CreateDBClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBClusterSnapshotMessage"
      },
      "output": {
        "shape": "CreateDBClusterSnapshotResult",
        "resultWrapper": "CreateDBClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        }
      ],
      "documentation": "<p>Creates a snapshot of a cluster. </p>"
    },
    "CreateDBInstance": {
      "name": "CreateDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBInstanceMessage"
      },
      "output": {
        "shape": "CreateDBInstanceResult",
        "resultWrapper": "CreateDBInstanceResult"
      },
      "errors": [
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "InstanceQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "StorageTypeNotSupportedFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Creates a new instance.</p>"
    },
    "CreateDBSubnetGroup": {
      "name": "CreateDBSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBSubnetGroupMessage"
      },
      "output": {
        "shape": "CreateDBSubnetGroupResult",
        "resultWrapper": "CreateDBSubnetGroupResult"
      },
      "errors": [
        {
          "shape": "DBSubnetGroupAlreadyExistsFault"
        },
        {
          "shape": "DBSubnetGroupQuotaExceededFault"
        },
        {
          "shape": "DBSubnetQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        }
      ],
      "documentation": "<p>Creates a new subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the AWS Region.</p>"
    },
    "DeleteDBCluster": {
      "name": "DeleteDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBClusterMessage"
      },
      "output": {
        "shape": "DeleteDBClusterResult",
        "resultWrapper": "DeleteDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "DBClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        }
      ],
      "documentation": "<p>Deletes a previously provisioned cluster. When you delete a cluster, all automated backups for that cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified cluster are not deleted.</p> <p/>"
    },
    "DeleteDBClusterParameterGroup": {
      "name": "DeleteDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBClusterParameterGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidDBParameterGroupStateFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a specified cluster parameter group. The cluster parameter group to be deleted can't be associated with any clusters.</p>"
    },
    "DeleteDBClusterSnapshot": {
      "name": "DeleteDBClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBClusterSnapshotMessage"
      },
      "output": {
        "shape": "DeleteDBClusterSnapshotResult",
        "resultWrapper": "DeleteDBClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a cluster snapshot. If the snapshot is being copied, the copy operation is terminated.</p> <note> <p>The cluster snapshot must be in the <code>available</code> state to be deleted.</p> </note>"
    },
    "DeleteDBInstance": {
      "name": "DeleteDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBInstanceMessage"
      },
      "output": {
        "shape": "DeleteDBInstanceResult",
        "resultWrapper": "DeleteDBInstanceResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBSnapshotAlreadyExistsFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        }
      ],
      "documentation": "<p>Deletes a previously provisioned instance. </p>"
    },
    "DeleteDBSubnetGroup": {
      "name": "DeleteDBSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBSubnetGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidDBSubnetGroupStateFault"
        },
        {
          "shape": "InvalidDBSubnetStateFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a subnet group.</p> <note> <p>The specified database subnet group must not be associated with any DB instances.</p> </note>"
    },
    "DescribeCertificates": {
      "name": "DescribeCertificates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCertificatesMessage"
      },
      "output": {
        "shape": "CertificateMessage",
        "resultWrapper": "DescribeCertificatesResult"
      },
      "errors": [
        {
          "shape": "CertificateNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of certificate authority (CA) certificates provided by Amazon DocumentDB for this AWS account.</p>"
    },
    "DescribeDBClusterParameterGroups": {
      "name": "DescribeDBClusterParameterGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterParameterGroupsMessage"
      },
      "output": {
        "shape": "DBClusterParameterGroupsMessage",
        "resultWrapper": "DescribeDBClusterParameterGroupsResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of <code>DBClusterParameterGroup</code> descriptions. If a <code>DBClusterParameterGroupName</code> parameter is specified, the list contains only the description of the specified cluster parameter group. </p>"
    },
    "DescribeDBClusterParameters": {
      "name": "DescribeDBClusterParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterParametersMessage"
      },
      "output": {
        "shape": "DBClusterParameterGroupDetails",
        "resultWrapper": "DescribeDBClusterParametersResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Returns the detailed parameter list for a particular cluster parameter group.</p>"
    },
    "DescribeDBClusterSnapshotAttributes": {
      "name": "DescribeDBClusterSnapshotAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterSnapshotAttributesMessage"
      },
      "output": {
        "shape": "DescribeDBClusterSnapshotAttributesResult",
        "resultWrapper": "DescribeDBClusterSnapshotAttributesResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of cluster snapshot attribute names and values for a manual DB cluster snapshot.</p> <p>When you share snapshots with other AWS accounts, <code>DescribeDBClusterSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual cluster snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual cluster snapshot is public and can be copied or restored by all AWS accounts.</p>"
    },
    "DescribeDBClusterSnapshots": {
      "name": "DescribeDBClusterSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterSnapshotsMessage"
      },
      "output": {
        "shape": "DBClusterSnapshotMessage",
        "resultWrapper": "DescribeDBClusterSnapshotsResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about cluster snapshots. This API operation supports pagination.</p>"
    },
    "DescribeDBClusters": {
      "name": "DescribeDBClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClustersMessage"
      },
      "output": {
        "shape": "DBClusterMessage",
        "resultWrapper": "DescribeDBClustersResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about provisioned Amazon DocumentDB clusters. This API operation supports pagination. For certain management features such as cluster and instance lifecycle management, Amazon DocumentDB leverages operational technology that is shared with Amazon RDS and Amazon Neptune. Use the <code>filterName=engine,Values=docdb</code> filter parameter to return only Amazon DocumentDB clusters.</p>"
    },
    "DescribeDBEngineVersions": {
      "name": "DescribeDBEngineVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBEngineVersionsMessage"
      },
      "output": {
        "shape": "DBEngineVersionMessage",
        "resultWrapper": "DescribeDBEngineVersionsResult"
      },
      "documentation": "<p>Returns a list of the available engines.</p>"
    },
    "DescribeDBInstances": {
      "name": "DescribeDBInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBInstancesMessage"
      },
      "output": {
        "shape": "DBInstanceMessage",
        "resultWrapper": "DescribeDBInstancesResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about provisioned Amazon DocumentDB instances. This API supports pagination.</p>"
    },
    "DescribeDBSubnetGroups": {
      "name": "DescribeDBSubnetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBSubnetGroupsMessage"
      },
      "output": {
        "shape": "DBSubnetGroupMessage",
        "resultWrapper": "DescribeDBSubnetGroupsResult"
      },
      "errors": [
        {
          "shape": "DBSubnetGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of <code>DBSubnetGroup</code> descriptions. If a <code>DBSubnetGroupName</code> is specified, the list will contain only the descriptions of the specified <code>DBSubnetGroup</code>.</p>"
    },
    "DescribeEngineDefaultClusterParameters": {
      "name": "DescribeEngineDefaultClusterParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEngineDefaultClusterParametersMessage"
      },
      "output": {
        "shape": "DescribeEngineDefaultClusterParametersResult",
        "resultWrapper": "DescribeEngineDefaultClusterParametersResult"
      },
      "documentation": "<p>Returns the default engine and system parameter information for the cluster database engine.</p>"
    },
    "DescribeEventCategories": {
      "name": "DescribeEventCategories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventCategoriesMessage"
      },
      "output": {
        "shape": "EventCategoriesMessage",
        "resultWrapper": "DescribeEventCategoriesResult"
      },
      "documentation": "<p>Displays a list of categories for all event source types, or, if specified, for a specified source type. </p>"
    },
    "DescribeEvents": {
      "name": "DescribeEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventsMessage"
      },
      "output": {
        "shape": "EventsMessage",
        "resultWrapper": "DescribeEventsResult"
      },
      "documentation": "<p>Returns events related to instances, security groups, snapshots, and DB parameter groups for the past 14 days. You can obtain events specific to a particular DB instance, security group, snapshot, or parameter group by providing the name as a parameter. By default, the events of the past hour are returned.</p>"
    },
    "DescribeOrderableDBInstanceOptions": {
      "name": "DescribeOrderableDBInstanceOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrderableDBInstanceOptionsMessage"
      },
      "output": {
        "shape": "OrderableDBInstanceOptionsMessage",
        "resultWrapper": "DescribeOrderableDBInstanceOptionsResult"
      },
      "documentation": "<p>Returns a list of orderable instance options for the specified engine.</p>"
    },
    "DescribePendingMaintenanceActions": {
      "name": "DescribePendingMaintenanceActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePendingMaintenanceActionsMessage"
      },
      "output": {
        "shape": "PendingMaintenanceActionsMessage",
        "resultWrapper": "DescribePendingMaintenanceActionsResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of resources (for example, instances) that have at least one pending maintenance action.</p>"
    },
    "FailoverDBCluster": {
      "name": "FailoverDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "FailoverDBClusterMessage"
      },
      "output": {
        "shape": "FailoverDBClusterResult",
        "resultWrapper": "FailoverDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Forces a failover for a cluster.</p> <p>A failover for a cluster promotes one of the Amazon DocumentDB replicas (read-only instances) in the cluster to be the primary instance (the cluster writer).</p> <p>If the primary instance fails, Amazon DocumentDB automatically fails over to an Amazon DocumentDB replica, if one exists. You can force a failover when you want to simulate a failure of a primary instance for testing.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceMessage"
      },
      "output": {
        "shape": "TagListMessage",
        "resultWrapper": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Lists all tags on an Amazon DocumentDB resource.</p>"
    },
    "ModifyDBCluster": {
      "name": "ModifyDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBClusterMessage"
      },
      "output": {
        "shape": "ModifyDBClusterResult",
        "resultWrapper": "ModifyDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidDBSubnetGroupStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "DBClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBClusterAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Modifies a setting for an Amazon DocumentDB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. </p>"
    },
    "ModifyDBClusterParameterGroup": {
      "name": "ModifyDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBClusterParameterGroupMessage"
      },
      "output": {
        "shape": "DBClusterParameterGroupNameMessage",
        "resultWrapper": "ModifyDBClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBParameterGroupStateFault"
        }
      ],
      "documentation": "<p> Modifies the parameters of a cluster parameter group. To modify more than one parameter, submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request. </p> <note> <p>Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot or maintenance window before the change can take effect.</p> </note> <important> <p>After you create a cluster parameter group, you should wait at least 5 minutes before creating your first cluster that uses that cluster parameter group as the default parameter group. This allows Amazon DocumentDB to fully complete the create action before the parameter group is used as the default for a new cluster. This step is especially important for parameters that are critical when creating the default database for a cluster, such as the character set for the default database defined by the <code>character_set_database</code> parameter.</p> </important>"
    },
    "ModifyDBClusterSnapshotAttribute": {
      "name": "ModifyDBClusterSnapshotAttribute",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBClusterSnapshotAttributeMessage"
      },
      "output": {
        "shape": "ModifyDBClusterSnapshotAttributeResult",
        "resultWrapper": "ModifyDBClusterSnapshotAttributeResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "SharedSnapshotQuotaExceededFault"
        }
      ],
      "documentation": "<p>Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot.</p> <p>To share a manual cluster snapshot with other AWS accounts, specify <code>restore</code> as the <code>AttributeName</code>, and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual cluster snapshot. Use the value <code>all</code> to make the manual cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts. If a manual cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that parameter in this case.</p>"
    },
    "ModifyDBInstance": {
      "name": "ModifyDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBInstanceMessage"
      },
      "output": {
        "shape": "ModifyDBInstanceResult",
        "resultWrapper": "ModifyDBInstanceResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        },
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "DBUpgradeDependencyFailureFault"
        },
        {
          "shape": "StorageTypeNotSupportedFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "CertificateNotFoundFault"
        }
      ],
      "documentation": "<p>Modifies settings for an instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.</p>"
    },
    "ModifyDBSubnetGroup": {
      "name": "ModifyDBSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBSubnetGroupMessage"
      },
      "output": {
        "shape": "ModifyDBSubnetGroupResult",
        "resultWrapper": "ModifyDBSubnetGroupResult"
      },
      "errors": [
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetQuotaExceededFault"
        },
        {
          "shape": "SubnetAlreadyInUse"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        }
      ],
      "documentation": "<p>Modifies an existing subnet group. subnet groups must contain at least one subnet in at least two Availability Zones in the AWS Region.</p>"
    },
    "RebootDBInstance": {
      "name": "RebootDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebootDBInstanceMessage"
      },
      "output": {
        "shape": "RebootDBInstanceResult",
        "resultWrapper": "RebootDBInstanceResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ],
      "documentation": "<p>You might need to reboot your instance, usually for maintenance reasons. For example, if you make certain changes, or if you change the cluster parameter group that is associated with the instance, you must reboot the instance for the changes to take effect. </p> <p>Rebooting an instance restarts the database engine service. Rebooting an instance results in a momentary outage, during which the instance status is set to <i>rebooting</i>. </p>"
    },
    "RemoveTagsFromResource": {
      "name": "RemoveTagsFromResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveTagsFromResourceMessage"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Removes metadata tags from an Amazon DocumentDB resource.</p>"
    },
    "ResetDBClusterParameterGroup": {
      "name": "ResetDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetDBClusterParameterGroupMessage"
      },
      "output": {
        "shape": "DBClusterParameterGroupNameMessage",
        "resultWrapper": "ResetDBClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidDBParameterGroupStateFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p> Modifies the parameters of a cluster parameter group to the default value. To reset specific parameters, submit a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. To reset the entire cluster parameter group, specify the <code>DBClusterParameterGroupName</code> and <code>ResetAllParameters</code> parameters. </p> <p> When you reset the entire group, dynamic parameters are updated immediately and static parameters are set to <code>pending-reboot</code> to take effect on the next DB instance reboot.</p>"
    },
    "RestoreDBClusterFromSnapshot": {
      "name": "RestoreDBClusterFromSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBClusterFromSnapshotMessage"
      },
      "output": {
        "shape": "RestoreDBClusterFromSnapshotResult",
        "resultWrapper": "RestoreDBClusterFromSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBClusterAlreadyExistsFault"
        },
        {
          "shape": "DBClusterQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InsufficientDBClusterCapacityFault"
        },
        {
          "shape": "InsufficientStorageClusterCapacityFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidRestoreFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Creates a new cluster from a snapshot or cluster snapshot.</p> <p>If a snapshot is specified, the target cluster is created from the source DB snapshot with a default configuration and default security group.</p> <p>If a cluster snapshot is specified, the target cluster is created from the source cluster restore point with the same configuration as the original source DB cluster, except that the new cluster is created with the default security group.</p>"
    },
    "RestoreDBClusterToPointInTime": {
      "name": "RestoreDBClusterToPointInTime",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBClusterToPointInTimeMessage"
      },
      "output": {
        "shape": "RestoreDBClusterToPointInTimeResult",
        "resultWrapper": "RestoreDBClusterToPointInTimeResult"
      },
      "errors": [
        {
          "shape": "DBClusterAlreadyExistsFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBClusterQuotaExceededFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InsufficientDBClusterCapacityFault"
        },
        {
          "shape": "InsufficientStorageClusterCapacityFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "InvalidRestoreFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        }
      ],
      "documentation": "<p>Restores a cluster to an arbitrary point in time. Users can restore to any point in time before <code>LatestRestorableTime</code> for up to <code>BackupRetentionPeriod</code> days. The target cluster is created from the source cluster with the same configuration as the original cluster, except that the new cluster is created with the default security group. </p>"
    },
    "StartDBCluster": {
      "name": "StartDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartDBClusterMessage"
      },
      "output": {
        "shape": "StartDBClusterResult",
        "resultWrapper": "StartDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Restarts the stopped cluster that is specified by <code>DBClusterIdentifier</code>. For more information, see <a href=\"https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html\">Stopping and Starting an Amazon DocumentDB Cluster</a>.</p>"
    },
    "StopDBCluster": {
      "name": "StopDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopDBClusterMessage"
      },
      "output": {
        "shape": "StopDBClusterResult",
        "resultWrapper": "StopDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Stops the running cluster that is specified by <code>DBClusterIdentifier</code>. The cluster must be in the <i>available</i> state. For more information, see <a href=\"https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html\">Stopping and Starting an Amazon DocumentDB Cluster</a>.</p>"
    }
  },
  "shapes": {
    "AddTagsToResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceName",
        "Tags"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon DocumentDB resource that the tags are added to. This value is an Amazon Resource Name (ARN).</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the Amazon DocumentDB resource. </p>"
        }
      },
      "documentation": "<p>Represents the input to <a>AddTagsToResource</a>.</p>"
    },
    "ApplyMethod": {
      "type": "string",
      "enum": [
        "immediate",
        "pending-reboot"
      ]
    },
    "ApplyPendingMaintenanceActionMessage": {
      "type": "structure",
      "required": [
        "ResourceIdentifier",
        "ApplyAction",
        "OptInType"
      ],
      "members": {
        "ResourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to.</p>"
        },
        "ApplyAction": {
          "shape": "String",
          "documentation": "<p>The pending maintenance action to apply to this resource.</p> <p>Valid values: <code>system-update</code>, <code>db-upgrade</code> </p>"
        },
        "OptInType": {
          "shape": "String",
          "documentation": "<p>A value that specifies the type of opt-in request or undoes an opt-in request. An opt-in request of type <code>immediate</code> can't be undone.</p> <p>Valid values:</p> <ul> <li> <p> <code>immediate</code> - Apply the maintenance action immediately.</p> </li> <li> <p> <code>next-maintenance</code> - Apply the maintenance action during the next maintenance window for the resource.</p> </li> <li> <p> <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in requests.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input to <a>ApplyPendingMaintenanceAction</a>.</p>"
    },
    "ApplyPendingMaintenanceActionResult": {
      "type": "structure",
      "members": {
        "ResourcePendingMaintenanceActions": {
          "shape": "ResourcePendingMaintenanceActions"
        }
      }
    },
    "AttributeValueList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "AttributeValue"
      }
    },
    "AvailabilityZone": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the Availability Zone.</p>"
        }
      },
      "documentation": "<p>Information about an Availability Zone.</p>",
      "wrapper": true
    },
    "AvailabilityZoneList": {
      "type": "list",
      "member": {
        "shape": "AvailabilityZone",
        "locationName": "AvailabilityZone"
      }
    },
    "AvailabilityZones": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "AvailabilityZone"
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BooleanOptional": {
      "type": "boolean"
    },
    "Certificate": {
      "type": "structure",
      "members": {
        "CertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique key that identifies a certificate.</p> <p>Example: <code>rds-ca-2019</code> </p>"
        },
        "CertificateType": {
          "shape": "String",
          "documentation": "<p>The type of the certificate.</p> <p>Example: <code>CA</code> </p>"
        },
        "Thumbprint": {
          "shape": "String",
          "documentation": "<p>The thumbprint of the certificate.</p>"
        },
        "ValidFrom": {
          "shape": "TStamp",
          "documentation": "<p>The starting date-time from which the certificate is valid.</p> <p>Example: <code>2019-07-31T17:57:09Z</code> </p>"
        },
        "ValidTill": {
          "shape": "TStamp",
          "documentation": "<p>The date-time after which the certificate is no longer valid.</p> <p>Example: <code>2024-07-31T17:57:09Z</code> </p>"
        },
        "CertificateArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the certificate.</p> <p>Example: <code>arn:aws:rds:us-east-1::cert:rds-ca-2019</code> </p>"
        }
      },
      "documentation": "<p>A certificate authority (CA) certificate for an AWS account.</p>",
      "wrapper": true
    },
    "CertificateList": {
      "type": "list",
      "member": {
        "shape": "Certificate",
        "locationName": "Certificate"
      }
    },
    "CertificateMessage": {
      "type": "structure",
      "members": {
        "Certificates": {
          "shape": "CertificateList",
          "documentation": "<p>A list of certificates for this AWS account.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided if the number of records retrieved is greater than <code>MaxRecords</code>. If this parameter is specified, the marker specifies the next record in the list. Including the value of <code>Marker</code> in the next call to <code>DescribeCertificates</code> results in the next page of certificates.</p>"
        }
      }
    },
    "CloudwatchLogsExportConfiguration": {
      "type": "structure",
      "members": {
        "EnableLogTypes": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of log types to enable.</p>"
        },
        "DisableLogTypes": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of log types to disable.</p>"
        }
      },
      "documentation": "<p>The configuration setting for the log types to be enabled for export to Amazon CloudWatch Logs for a specific instance or cluster.</p> <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which logs are exported (or not exported) to CloudWatch Logs. The values within these arrays depend on the engine that is being used.</p>"
    },
    "CopyDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "SourceDBClusterParameterGroupIdentifier",
        "TargetDBClusterParameterGroupIdentifier",
        "TargetDBClusterParameterGroupDescription"
      ],
      "members": {
        "SourceDBClusterParameterGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier or Amazon Resource Name (ARN) for the source cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid cluster parameter group.</p> </li> <li> <p>If the source cluster parameter group is in the same AWS Region as the copy, specify a valid parameter group identifier; for example, <code>my-db-cluster-param-group</code>, or a valid ARN.</p> </li> <li> <p>If the source parameter group is in a different AWS Region than the copy, specify a valid cluster parameter group ARN; for example, <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p> </li> </ul>"
        },
        "TargetDBClusterParameterGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the copied cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Cannot be null, empty, or blank.</p> </li> <li> <p>Must contain from 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-param-group1</code> </p>"
        },
        "TargetDBClusterParameterGroupDescription": {
          "shape": "String",
          "documentation": "<p>A description for the copied cluster parameter group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags that are to be assigned to the parameter group.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>CopyDBClusterParameterGroup</a>.</p>"
    },
    "CopyDBClusterParameterGroupResult": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroup": {
          "shape": "DBClusterParameterGroup"
        }
      }
    },
    "CopyDBClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "SourceDBClusterSnapshotIdentifier",
        "TargetDBClusterSnapshotIdentifier"
      ],
      "members": {
        "SourceDBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster snapshot to copy. This parameter is not case sensitive.</p> <p>You can't copy an encrypted, shared cluster snapshot from one AWS Region to another.</p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid system snapshot in the \"available\" state.</p> </li> <li> <p>If the source snapshot is in the same AWS Region as the copy, specify a valid snapshot identifier.</p> </li> <li> <p>If the source snapshot is in a different AWS Region than the copy, specify a valid cluster snapshot ARN.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot1</code> </p>"
        },
        "TargetDBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the new cluster snapshot to create from the source cluster snapshot. This parameter is not case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot2</code> </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key ID for an encrypted cluster snapshot. The AWS KMS key ID is the Amazon Resource Name (ARN), AWS KMS key identifier, or the AWS KMS key alias for the AWS KMS encryption key. </p> <p>If you copy an encrypted cluster snapshot from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new AWS KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the cluster snapshot is encrypted with the same AWS KMS key as the source cluster snapshot. </p> <p>If you copy an encrypted cluster snapshot that is shared from another AWS account, then you must specify a value for <code>KmsKeyId</code>. </p> <p>To copy an encrypted cluster snapshot to another AWS Region, set <code>KmsKeyId</code> to the AWS KMS key ID that you want to use to encrypt the copy of the cluster snapshot in the destination Region. AWS KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one Region in another Region.</p> <p>If you copy an unencrypted cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, an error is returned.</p>"
        },
        "PreSignedUrl": {
          "shape": "String",
          "documentation": "<p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> API action in the AWS Region that contains the source cluster snapshot to copy. You must use the <code>PreSignedUrl</code> parameter when copying an encrypted cluster snapshot from another AWS Region.</p> <p>The presigned URL must be a valid request for the <code>CopyDBSClusterSnapshot</code> API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied. The presigned URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the copy of the cluster snapshot in the destination AWS Region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> action that is called in the destination AWS Region, and the action contained in the presigned URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the AWS Region that the DB cluster snapshot will be created in.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The cluster snapshot identifier for the encrypted cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted cluster snapshot from the us-west-2 AWS Region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:my-cluster-snapshot-20161115</code>.</p> </li> </ul>"
        },
        "CopyTags": {
          "shape": "BooleanOptional",
          "documentation": "<p>Set to <code>true</code> to copy all tags from the source cluster snapshot to the target cluster snapshot, and otherwise <code>false</code>. The default is <code>false</code>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the cluster snapshot.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>CopyDBClusterSnapshot</a>.</p>"
    },
    "CopyDBClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshot": {
          "shape": "DBClusterSnapshot"
        }
      }
    },
    "CreateDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "Engine",
        "MasterUsername",
        "MasterUserPassword"
      ],
      "members": {
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>A list of Amazon EC2 Availability Zones that instances in the cluster can be created in.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35.</p> </li> </ul>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The cluster identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster</code> </p>"
        },
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p> The name of the cluster parameter group to associate with this cluster.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of EC2 VPC security groups to associate with this cluster.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>A subnet group to associate with this cluster.</p> <p>Constraints: Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine to be used for this cluster.</p> <p>Valid values: <code>docdb</code> </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine to use.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the instances in the cluster accept connections.</p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The name of the master user for the cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be from 1 to 63 letters or numbers.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot be a reserved word for the chosen database engine.</p> </li> </ul>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The password for the master database user. This password can contain any printable ASCII character except forward slash (/), double quote (\"), or the \"at\" symbol (@).</p> <p>Constraints: Must contain from 8 to 100 characters.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week.</p> <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the cluster.</p>"
        },
        "StorageEncrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether the cluster is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for an encrypted cluster.</p> <p>The AWS KMS key identifier is the Amazon Resource Name (ARN) for the AWS KMS encryption key. If you are creating a cluster using the same AWS account that owns the AWS KMS encryption key that is used to encrypt the new cluster, you can use the AWS KMS key alias instead of the ARN for the AWS KMS encryption key.</p> <p>If an encryption key is not specified in <code>KmsKeyId</code>:</p> <ul> <li> <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted source, then Amazon DocumentDB uses the encryption key that is used to encrypt the source. Otherwise, Amazon DocumentDB uses your default encryption key. </p> </li> <li> <p>If the <code>StorageEncrypted</code> parameter is <code>true</code> and <code>ReplicationSourceIdentifier</code> is not specified, Amazon DocumentDB uses your default encryption key.</p> </li> </ul> <p>AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p> <p>If you create a replica of an encrypted cluster in another AWS Region, you must set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination AWS Region. This key is used to encrypt the replica in that AWS Region.</p>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>A list of log types that need to be enabled for exporting to Amazon CloudWatch Logs.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>CreateDBCluster</a>.</p>"
    },
    "CreateDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName",
        "DBParameterGroupFamily",
        "Description"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must not match the name of an existing <code>DBClusterParameterGroup</code>.</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The cluster parameter group family name.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description for the cluster parameter group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the cluster parameter group.</p>"
        }
      },
      "documentation": "<p>Represents the input of <a>CreateDBClusterParameterGroup</a>.</p>"
    },
    "CreateDBClusterParameterGroupResult": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroup": {
          "shape": "DBClusterParameterGroup"
        }
      }
    },
    "CreateDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "CreateDBClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBClusterSnapshotIdentifier",
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster snapshot. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot1</code> </p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster to create a snapshot for. This parameter is not case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing <code>DBCluster</code>.</p> </li> </ul> <p>Example: <code>my-cluster</code> </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the cluster snapshot.</p>"
        }
      },
      "documentation": "<p>Represents the input of <a>CreateDBClusterSnapshot</a>.</p>"
    },
    "CreateDBClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshot": {
          "shape": "DBClusterSnapshot"
        }
      }
    },
    "CreateDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "DBInstanceClass",
        "Engine",
        "DBClusterIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the instance; for example, <code>db.r5.large</code>. </p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine to be used for this instance.</p> <p>Valid value: <code>docdb</code> </p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p> The Amazon EC2 Availability Zone that the instance is created in.</p> <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.</p> <p> Example: <code>us-east-1d</code> </p> <p> Constraint: The <code>AvailabilityZone</code> parameter can't be specified if the <code>MultiAZ</code> parameter is set to <code>true</code>. The specified Availability Zone must be in the same AWS Region as the current endpoint. </p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. </p> <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>Indicates that minor engine upgrades are applied automatically to the instance during the maintenance window.</p> <p>Default: <code>true</code> </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the instance. You can assign up to 10 tags to an instance.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster that the instance will belong to.</p>"
        },
        "PromotionTier": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the primary instance after a failure of the existing primary instance.</p> <p>Default: 1</p> <p>Valid values: 0-15</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>CreateDBInstance</a>.</p>"
    },
    "CreateDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "CreateDBSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "DBSubnetGroupName",
        "DBSubnetGroupDescription",
        "SubnetIds"
      ],
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name for the subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "DBSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>The description for the subnet group.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>The Amazon EC2 subnet IDs for the subnet group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the subnet group.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>CreateDBSubnetGroup</a>.</p>"
    },
    "CreateDBSubnetGroupResult": {
      "type": "structure",
      "members": {
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup"
        }
      }
    },
    "DBCluster": {
      "type": "structure",
      "members": {
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>Provides the list of Amazon EC2 Availability Zones that instances in the cluster can be created in.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the number of days for which automatic snapshots are retained.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains a user-supplied cluster identifier. This identifier is the unique key that identifies a cluster.</p>"
        },
        "DBClusterParameterGroup": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the cluster parameter group for the cluster.</p>"
        },
        "DBSubnetGroup": {
          "shape": "String",
          "documentation": "<p>Specifies information on the subnet group that is associated with the cluster, including the name, description, and subnets in the subnet group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Specifies the current state of this cluster.</p>"
        },
        "PercentProgress": {
          "shape": "String",
          "documentation": "<p>Specifies the progress of the operation as a percentage.</p>"
        },
        "EarliestRestorableTime": {
          "shape": "TStamp",
          "documentation": "<p>The earliest time to which a database can be restored with point-in-time restore.</p>"
        },
        "Endpoint": {
          "shape": "String",
          "documentation": "<p>Specifies the connection endpoint for the primary instance of the cluster.</p>"
        },
        "ReaderEndpoint": {
          "shape": "String",
          "documentation": "<p>The reader endpoint for the cluster. The reader endpoint for a cluster load balances connections across the Amazon DocumentDB replicas that are available in a cluster. As clients request new connections to the reader endpoint, Amazon DocumentDB distributes the connection requests among the Amazon DocumentDB replicas in the cluster. This functionality can help balance your read workload across multiple Amazon DocumentDB replicas in your cluster. </p> <p>If a failover occurs, and the Amazon DocumentDB replica that you are connected to is promoted to be the primary instance, your connection is dropped. To continue sending your read workload to other Amazon DocumentDB replicas in the cluster, you can then reconnect to the reader endpoint.</p>"
        },
        "MultiAZ": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the cluster has instances in multiple Availability Zones.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>Provides the name of the database engine to be used for this cluster.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the database engine version.</p>"
        },
        "LatestRestorableTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the port that the database engine is listening on.</p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>Contains the master user name for the cluster.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p>Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>"
        },
        "DBClusterMembers": {
          "shape": "DBClusterMemberList",
          "documentation": "<p>Provides the list of instances that make up the cluster.</p>"
        },
        "VpcSecurityGroups": {
          "shape": "VpcSecurityGroupMembershipList",
          "documentation": "<p>Provides a list of virtual private cloud (VPC) security groups that the cluster belongs to.</p>"
        },
        "HostedZoneId": {
          "shape": "String",
          "documentation": "<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>"
        },
        "StorageEncrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the cluster is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>If <code>StorageEncrypted</code> is <code>true</code>, the AWS KMS key identifier for the encrypted cluster.</p>"
        },
        "DbClusterResourceId": {
          "shape": "String",
          "documentation": "<p>The AWS Region-unique, immutable identifier for the cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the cluster is accessed.</p>"
        },
        "DBClusterArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the cluster.</p>"
        },
        "AssociatedRoles": {
          "shape": "DBClusterRoles",
          "documentation": "<p>Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the cluster. IAM roles that are associated with a cluster grant permission for the cluster to access other AWS services on your behalf.</p>"
        },
        "ClusterCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the time when the cluster was created, in Universal Coordinated Time (UTC).</p>"
        },
        "EnabledCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>A list of log types that this cluster is configured to export to Amazon CloudWatch Logs.</p>"
        },
        "DeletionProtection": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>"
        }
      },
      "documentation": "<p>Detailed information about a cluster. </p>",
      "wrapper": true
    },
    "DBClusterList": {
      "type": "list",
      "member": {
        "shape": "DBCluster",
        "locationName": "DBCluster"
      }
    },
    "DBClusterMember": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the instance identifier for this member of the cluster.</p>"
        },
        "IsClusterWriter": {
          "shape": "Boolean",
          "documentation": "<p>A value that is <code>true</code> if the cluster member is the primary instance for the cluster and <code>false</code> otherwise.</p>"
        },
        "DBClusterParameterGroupStatus": {
          "shape": "String",
          "documentation": "<p>Specifies the status of the cluster parameter group for this member of the DB cluster.</p>"
        },
        "PromotionTier": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the primary instance after a failure of the existing primary instance. </p>"
        }
      },
      "documentation": "<p>Contains information about an instance that is part of a cluster.</p>",
      "wrapper": true
    },
    "DBClusterMemberList": {
      "type": "list",
      "member": {
        "shape": "DBClusterMember",
        "locationName": "DBClusterMember"
      }
    },
    "DBClusterMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "DBClusters": {
          "shape": "DBClusterList",
          "documentation": "<p>A list of clusters.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribeDBClusters</a>.</p>"
    },
    "DBClusterParameterGroup": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>Provides the name of the cluster parameter group.</p>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>Provides the name of the parameter group family that this cluster parameter group is compatible with.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>Provides the customer-specified description for this cluster parameter group.</p>"
        },
        "DBClusterParameterGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the cluster parameter group.</p>"
        }
      },
      "documentation": "<p>Detailed information about a cluster parameter group. </p>",
      "wrapper": true
    },
    "DBClusterParameterGroupDetails": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>Provides a list of parameters for the cluster parameter group.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DBClusterParameterGroup</a>.</p>"
    },
    "DBClusterParameterGroupList": {
      "type": "list",
      "member": {
        "shape": "DBClusterParameterGroup",
        "locationName": "DBClusterParameterGroup"
      }
    },
    "DBClusterParameterGroupNameMessage": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be from 1 to 255 letters or numbers.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>"
        }
      },
      "documentation": "<p>Contains the name of a cluster parameter group.</p>"
    },
    "DBClusterParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "DBClusterParameterGroups": {
          "shape": "DBClusterParameterGroupList",
          "documentation": "<p>A list of cluster parameter groups.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DBClusterParameterGroups</a>.</p>"
    },
    "DBClusterRole": {
      "type": "structure",
      "members": {
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Describes the state of association between the IAM role and the cluster. The <code>Status</code> property returns one of the following values:</p> <ul> <li> <p> <code>ACTIVE</code> - The IAM role ARN is associated with the cluster and can be used to access other AWS services on your behalf.</p> </li> <li> <p> <code>PENDING</code> - The IAM role ARN is being associated with the DB cluster.</p> </li> <li> <p> <code>INVALID</code> - The IAM role ARN is associated with the cluster, but the cluster cannot assume the IAM role to access other AWS services on your behalf.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes an AWS Identity and Access Management (IAM) role that is associated with a cluster.</p>"
    },
    "DBClusterRoles": {
      "type": "list",
      "member": {
        "shape": "DBClusterRole",
        "locationName": "DBClusterRole"
      }
    },
    "DBClusterSnapshot": {
      "type": "structure",
      "members": {
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>Provides the list of Amazon EC2 Availability Zones that instances in the cluster snapshot can be restored in.</p>"
        },
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the identifier for the cluster snapshot.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the cluster identifier of the cluster that this cluster snapshot was created from.</p>"
        },
        "SnapshotCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Provides the time when the snapshot was taken, in UTC.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the database engine.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Specifies the status of this cluster snapshot.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>Specifies the port that the cluster was listening on at the time of the snapshot.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>Provides the virtual private cloud (VPC) ID that is associated with the cluster snapshot.</p>"
        },
        "ClusterCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the time when the cluster was created, in Universal Coordinated Time (UTC).</p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>Provides the master user name for the cluster snapshot.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Provides the version of the database engine for this cluster snapshot.</p>"
        },
        "SnapshotType": {
          "shape": "String",
          "documentation": "<p>Provides the type of the cluster snapshot.</p>"
        },
        "PercentProgress": {
          "shape": "Integer",
          "documentation": "<p>Specifies the percentage of the estimated data that has been transferred.</p>"
        },
        "StorageEncrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the cluster snapshot is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>If <code>StorageEncrypted</code> is <code>true</code>, the AWS KMS key identifier for the encrypted cluster snapshot.</p>"
        },
        "DBClusterSnapshotArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the cluster snapshot.</p>"
        },
        "SourceDBClusterSnapshotArn": {
          "shape": "String",
          "documentation": "<p>If the cluster snapshot was copied from a source cluster snapshot, the ARN for the source cluster snapshot; otherwise, a null value.</p>"
        }
      },
      "documentation": "<p>Detailed information about a cluster snapshot. </p>",
      "wrapper": true
    },
    "DBClusterSnapshotAttribute": {
      "type": "structure",
      "members": {
        "AttributeName": {
          "shape": "String",
          "documentation": "<p>The name of the manual cluster snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual cluster snapshot.</p>"
        },
        "AttributeValues": {
          "shape": "AttributeValueList",
          "documentation": "<p>The values for the manual cluster snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual cluster snapshot. If a value of <code>all</code> is in the list, then the manual cluster snapshot is public and available for any AWS account to copy or restore.</p>"
        }
      },
      "documentation": "<p>Contains the name and values of a manual cluster snapshot attribute.</p> <p>Manual cluster snapshot attributes are used to authorize other AWS accounts to restore a manual cluster snapshot.</p>"
    },
    "DBClusterSnapshotAttributeList": {
      "type": "list",
      "member": {
        "shape": "DBClusterSnapshotAttribute",
        "locationName": "DBClusterSnapshotAttribute"
      }
    },
    "DBClusterSnapshotAttributesResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster snapshot that the attributes apply to.</p>"
        },
        "DBClusterSnapshotAttributes": {
          "shape": "DBClusterSnapshotAttributeList",
          "documentation": "<p>The list of attributes and values for the cluster snapshot.</p>"
        }
      },
      "documentation": "<p>Detailed information about the attributes that are associated with a cluster snapshot.</p>",
      "wrapper": true
    },
    "DBClusterSnapshotList": {
      "type": "list",
      "member": {
        "shape": "DBClusterSnapshot",
        "locationName": "DBClusterSnapshot"
      }
    },
    "DBClusterSnapshotMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "DBClusterSnapshots": {
          "shape": "DBClusterSnapshotList",
          "documentation": "<p>Provides a list of cluster snapshots.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribeDBClusterSnapshots</a>.</p>"
    },
    "DBEngineVersion": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine.</p>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the parameter group family for the database engine.</p>"
        },
        "DBEngineDescription": {
          "shape": "String",
          "documentation": "<p>The description of the database engine.</p>"
        },
        "DBEngineVersionDescription": {
          "shape": "String",
          "documentation": "<p>The description of the database engine version.</p>"
        },
        "ValidUpgradeTarget": {
          "shape": "ValidUpgradeTargetList",
          "documentation": "<p>A list of engine versions that this database engine version can be upgraded to.</p>"
        },
        "ExportableLogTypes": {
          "shape": "LogTypeList",
          "documentation": "<p>The types of logs that the database engine has available for export to Amazon CloudWatch Logs.</p>"
        },
        "SupportsLogExportsToCloudwatchLogs": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the engine version supports exporting the log types specified by <code>ExportableLogTypes</code> to CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p> Detailed information about an engine version. </p>"
    },
    "DBEngineVersionList": {
      "type": "list",
      "member": {
        "shape": "DBEngineVersion",
        "locationName": "DBEngineVersion"
      }
    },
    "DBEngineVersionMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "DBEngineVersions": {
          "shape": "DBEngineVersionList",
          "documentation": "<p>Detailed information about one or more engine versions.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribeDBEngineVersions</a>.</p>"
    },
    "DBInstance": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains a user-provided database identifier. This identifier is the unique key that identifies an instance.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>Contains the name of the compute and memory capacity class of the instance.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>Provides the name of the database engine to be used for this instance.</p>"
        },
        "DBInstanceStatus": {
          "shape": "String",
          "documentation": "<p>Specifies the current state of this database.</p>"
        },
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>Specifies the connection endpoint.</p>"
        },
        "InstanceCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Provides the date and time that the instance was created.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p> Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>"
        },
        "BackupRetentionPeriod": {
          "shape": "Integer",
          "documentation": "<p>Specifies the number of days for which automatic snapshots are retained.</p>"
        },
        "VpcSecurityGroups": {
          "shape": "VpcSecurityGroupMembershipList",
          "documentation": "<p>Provides a list of VPC security group elements that the instance belongs to.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Availability Zone that the instance is located in.</p>"
        },
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup",
          "documentation": "<p>Specifies information on the subnet group that is associated with the instance, including the name, description, and subnets in the subnet group.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>"
        },
        "PendingModifiedValues": {
          "shape": "PendingModifiedValues",
          "documentation": "<p>Specifies that changes to the instance are pending. This element is included only when changes are pending. Specific changes are identified by subelements.</p>"
        },
        "LatestRestorableTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the database engine version.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>Indicates that minor version patches are applied automatically.</p>"
        },
        "PubliclyAccessible": {
          "shape": "Boolean",
          "documentation": "<p>Not supported. Amazon DocumentDB does not currently support public endpoints. The value of <code>PubliclyAccessible</code> is always <code>false</code>.</p>"
        },
        "StatusInfos": {
          "shape": "DBInstanceStatusInfoList",
          "documentation": "<p>The status of a read replica. If the instance is not a read replica, this is blank.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains the name of the cluster that the instance is a member of if the instance is a member of a cluster.</p>"
        },
        "StorageEncrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether or not the instance is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p> If <code>StorageEncrypted</code> is <code>true</code>, the AWS KMS key identifier for the encrypted instance. </p>"
        },
        "DbiResourceId": {
          "shape": "String",
          "documentation": "<p>The AWS Region-unique, immutable identifier for the instance. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the instance is accessed.</p>"
        },
        "CACertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the CA certificate for this DB instance.</p>"
        },
        "PromotionTier": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the primary instance after a failure of the existing primary instance.</p>"
        },
        "DBInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the instance.</p>"
        },
        "EnabledCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>A list of log types that this instance is configured to export to Amazon CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p>Detailed information about an instance. </p>",
      "wrapper": true
    },
    "DBInstanceList": {
      "type": "list",
      "member": {
        "shape": "DBInstance",
        "locationName": "DBInstance"
      }
    },
    "DBInstanceMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "DBInstances": {
          "shape": "DBInstanceList",
          "documentation": "<p>Detailed information about one or more instances. </p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribeDBInstances</a>.</p>"
    },
    "DBInstanceStatusInfo": {
      "type": "structure",
      "members": {
        "StatusType": {
          "shape": "String",
          "documentation": "<p>This value is currently \"<code>read replication</code>.\"</p>"
        },
        "Normal": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean value that is <code>true</code> if the instance is operating normally, or <code>false</code> if the instance is in an error state.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Status of the instance. For a <code>StatusType</code> of read replica, the values can be <code>replicating</code>, error, <code>stopped</code>, or <code>terminated</code>.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>Details of the error if there is an error for the instance. If the instance is not in an error state, this value is blank.</p>"
        }
      },
      "documentation": "<p>Provides a list of status information for an instance.</p>"
    },
    "DBInstanceStatusInfoList": {
      "type": "list",
      "member": {
        "shape": "DBInstanceStatusInfo",
        "locationName": "DBInstanceStatusInfo"
      }
    },
    "DBSubnetGroup": {
      "type": "structure",
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group.</p>"
        },
        "DBSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>Provides the description of the subnet group.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>Provides the virtual private cloud (VPC) ID of the subnet group.</p>"
        },
        "SubnetGroupStatus": {
          "shape": "String",
          "documentation": "<p>Provides the status of the subnet group.</p>"
        },
        "Subnets": {
          "shape": "SubnetList",
          "documentation": "<p>Detailed information about one or more subnets within a subnet group.</p>"
        },
        "DBSubnetGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB subnet group.</p>"
        }
      },
      "documentation": "<p>Detailed information about a subnet group. </p>",
      "wrapper": true
    },
    "DBSubnetGroupMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "DBSubnetGroups": {
          "shape": "DBSubnetGroups",
          "documentation": "<p>Detailed information about one or more subnet groups.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribeDBSubnetGroups</a>.</p>"
    },
    "DBSubnetGroups": {
      "type": "list",
      "member": {
        "shape": "DBSubnetGroup",
        "locationName": "DBSubnetGroup"
      }
    },
    "DeleteDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The cluster identifier for the cluster to be deleted. This parameter isn't case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match an existing <code>DBClusterIdentifier</code>.</p> </li> </ul>"
        },
        "SkipFinalSnapshot": {
          "shape": "Boolean",
          "documentation": "<p> Determines whether a final cluster snapshot is created before the cluster is deleted. If <code>true</code> is specified, no cluster snapshot is created. If <code>false</code> is specified, a cluster snapshot is created before the DB cluster is deleted. </p> <note> <p>If <code>SkipFinalSnapshot</code> is <code>false</code>, you must specify a <code>FinalDBSnapshotIdentifier</code> parameter.</p> </note> <p>Default: <code>false</code> </p>"
        },
        "FinalDBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p> The cluster snapshot identifier of the new cluster snapshot created when <code>SkipFinalSnapshot</code> is set to <code>false</code>. </p> <note> <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter to <code>true</code> results in an error. </p> </note> <p>Constraints:</p> <ul> <li> <p>Must be from 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input to <a>DeleteDBCluster</a>.</p>"
    },
    "DeleteDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing cluster parameter group.</p> </li> <li> <p>You can't delete a default cluster parameter group.</p> </li> <li> <p>Cannot be associated with any clusters.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input to <a>DeleteDBClusterParameterGroup</a>.</p>"
    },
    "DeleteDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "DeleteDBClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBClusterSnapshotIdentifier"
      ],
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster snapshot to delete.</p> <p>Constraints: Must be the name of an existing cluster snapshot in the <code>available</code> state.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DeleteDBClusterSnapshot</a>.</p>"
    },
    "DeleteDBClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshot": {
          "shape": "DBClusterSnapshot"
        }
      }
    },
    "DeleteDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The instance identifier for the instance to be deleted. This parameter isn't case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the name of an existing instance.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the input to <a>DeleteDBInstance</a>.</p>"
    },
    "DeleteDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "DeleteDBSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "DBSubnetGroupName"
      ],
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the database subnet group to delete.</p> <note> <p>You can't delete the default subnet group.</p> </note> <p>Constraints:</p> <p>Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DeleteDBSubnetGroup</a>.</p>"
    },
    "DescribeCertificatesMessage": {
      "type": "structure",
      "members": {
        "CertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The user-supplied certificate identifier. If this parameter is specified, information for only the specified certificate is returned. If this parameter is omitted, a list of up to <code>MaxRecords</code> certificates is returned. This parameter is not case sensitive.</p> <p>Constraints</p> <ul> <li> <p>Must match an existing <code>CertificateIdentifier</code>.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints:</p> <ul> <li> <p>Minimum: 20</p> </li> <li> <p>Maximum: 100</p> </li> </ul>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous <code>DescribeCertificates</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "DescribeDBClusterParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a specific cluster parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If provided, must match the name of an existing <code>DBClusterParameterGroup</code>.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeDBClusterParameterGroups</a>.</p>"
    },
    "DescribeDBClusterParametersMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a specific cluster parameter group to return parameter details for.</p> <p>Constraints:</p> <ul> <li> <p>If provided, must match the name of an existing <code>DBClusterParameterGroup</code>.</p> </li> </ul>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>. </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeDBClusterParameters</a>.</p>"
    },
    "DescribeDBClusterSnapshotAttributesMessage": {
      "type": "structure",
      "required": [
        "DBClusterSnapshotIdentifier"
      ],
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the cluster snapshot to describe the attributes for.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeDBClusterSnapshotAttributes</a>.</p>"
    },
    "DescribeDBClusterSnapshotAttributesResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshotAttributesResult": {
          "shape": "DBClusterSnapshotAttributesResult"
        }
      }
    },
    "DescribeDBClusterSnapshotsMessage": {
      "type": "structure",
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The ID of the cluster to retrieve the list of cluster snapshots for. This parameter can't be used with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter is not case sensitive. </p> <p>Constraints:</p> <ul> <li> <p>If provided, must match the identifier of an existing <code>DBCluster</code>.</p> </li> </ul>"
        },
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>A specific cluster snapshot identifier to describe. This parameter can't be used with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>If provided, must match the identifier of an existing <code>DBClusterSnapshot</code>.</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>"
        },
        "SnapshotType": {
          "shape": "String",
          "documentation": "<p>The type of cluster snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your AWS account.</p> </li> <li> <p> <code>manual</code> - Return all cluster snapshots that you have manually created for your AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual cluster snapshots that have been shared to your AWS account.</p> </li> <li> <p> <code>public</code> - Return all cluster snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual cluster snapshots are returned. You can include shared cluster snapshots with these results by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include public cluster snapshots with these results by setting the <code>IncludePublic</code> parameter to <code>true</code>.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "IncludeShared": {
          "shape": "Boolean",
          "documentation": "<p>Set to <code>true</code> to include shared manual cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore, and otherwise <code>false</code>. The default is <code>false</code>.</p>"
        },
        "IncludePublic": {
          "shape": "Boolean",
          "documentation": "<p>Set to <code>true</code> to include manual cluster snapshots that are public and can be copied or restored by any AWS account, and otherwise <code>false</code>. The default is <code>false</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeDBClusterSnapshots</a>.</p>"
    },
    "DescribeDBClustersMessage": {
      "type": "structure",
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The user-provided cluster identifier. If this parameter is specified, information from only the specific cluster is returned. This parameter isn't case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>If provided, must match an existing <code>DBClusterIdentifier</code>.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more clusters to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list only includes information about the clusters identified by these ARNs.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeDBClusters</a>.</p>"
    },
    "DescribeDBEngineVersionsMessage": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The database engine to return.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The database engine version to return.</p> <p>Example: <code>5.1.49</code> </p>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of a specific parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If provided, must match an existing <code>DBParameterGroupFamily</code>.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "DefaultOnly": {
          "shape": "Boolean",
          "documentation": "<p>Indicates that only the default version of the specified engine or engine and major version combination is returned.</p>"
        },
        "ListSupportedCharacterSets": {
          "shape": "BooleanOptional",
          "documentation": "<p>If this parameter is specified and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>"
        },
        "ListSupportedTimezones": {
          "shape": "BooleanOptional",
          "documentation": "<p>If this parameter is specified and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeDBEngineVersions</a>.</p>"
    },
    "DescribeDBInstancesMessage": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The user-provided instance identifier. If this parameter is specified, information from only the specific instance is returned. This parameter isn't case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>If provided, must match the identifier of an existing <code>DBInstance</code>.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more instances to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list includes only the information about the instances that are associated with the clusters that are identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts instance identifiers and instance ARNs. The results list includes only the information about the instances that are identified by these ARNs.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeDBInstances</a>.</p>"
    },
    "DescribeDBSubnetGroupsMessage": {
      "type": "structure",
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group to return details for.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeDBSubnetGroups</a>.</p>"
    },
    "DescribeEngineDefaultClusterParametersMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupFamily"
      ],
      "members": {
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group family to return the engine parameter information for.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeEngineDefaultClusterParameters</a>.</p>"
    },
    "DescribeEngineDefaultClusterParametersResult": {
      "type": "structure",
      "members": {
        "EngineDefaults": {
          "shape": "EngineDefaults"
        }
      }
    },
    "DescribeEventCategoriesMessage": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The type of source that is generating the events.</p> <p>Valid values: <code>db-instance</code>, <code>db-parameter-group</code>, <code>db-security-group</code>, <code>db-snapshot</code> </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeEventCategories</a>.</p>"
    },
    "DescribeEventsMessage": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.</p> <p>Constraints:</p> <ul> <li> <p>If <code>SourceIdentifier</code> is provided, <code>SourceType</code> must also be provided.</p> </li> <li> <p>If the source type is <code>DBInstance</code>, a <code>DBInstanceIdentifier</code> must be provided.</p> </li> <li> <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code> must be provided.</p> </li> <li> <p>If the source type is <code>DBParameterGroup</code>, a <code>DBParameterGroupName</code> must be provided.</p> </li> <li> <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code> must be provided.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>The event source to retrieve events for. If no value is specified, all events are returned.</p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. </p> <p>Example: 2009-07-08T18:00Z</p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p> The end of the time interval for which to retrieve events, specified in ISO 8601 format. </p> <p>Example: 2009-07-08T18:00Z</p>"
        },
        "Duration": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of minutes to retrieve events for.</p> <p>Default: 60</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>A list of event categories that trigger notifications for an event notification subscription.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeEvents</a>.</p>"
    },
    "DescribeOrderableDBInstanceOptionsMessage": {
      "type": "structure",
      "required": [
        "Engine"
      ],
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the engine to retrieve instance options for.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version filter value. Specify this parameter to show only the available offerings that match the specified engine version.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The instance class filter value. Specify this parameter to show only the available offerings that match the specified instance class.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>The license model filter value. Specify this parameter to show only the available offerings that match the specified license model.</p>"
        },
        "Vpc": {
          "shape": "BooleanOptional",
          "documentation": "<p>The virtual private cloud (VPC) filter value. Specify this parameter to show only the available VPC or non-VPC offerings.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribeOrderableDBInstanceOptions</a>.</p>"
    },
    "DescribePendingMaintenanceActionsMessage": {
      "type": "structure",
      "members": {
        "ResourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The ARN of a resource to return pending maintenance actions for.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more resources to return pending maintenance actions for.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts cluster identifiers and cluster Amazon Resource Names (ARNs). The results list includes only pending maintenance actions for the clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts instance identifiers and instance ARNs. The results list includes only pending maintenance actions for the DB instances identified by these ARNs.</p> </li> </ul>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>DescribePendingMaintenanceActions</a>.</p>"
    },
    "Endpoint": {
      "type": "structure",
      "members": {
        "Address": {
          "shape": "String",
          "documentation": "<p>Specifies the DNS address of the instance.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>Specifies the port that the database engine is listening on.</p>"
        },
        "HostedZoneId": {
          "shape": "String",
          "documentation": "<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>"
        }
      },
      "documentation": "<p>Network information for accessing a cluster or instance. Client programs must specify a valid endpoint to access these Amazon DocumentDB resources.</p>"
    },
    "EngineDefaults": {
      "type": "structure",
      "members": {
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group family to return the engine parameter information for.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>The parameters of a particular cluster parameter group family.</p>"
        }
      },
      "documentation": "<p>Contains the result of a successful invocation of the <code>DescribeEngineDefaultClusterParameters</code> operation. </p>",
      "wrapper": true
    },
    "Event": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p>Provides the identifier for the source of the event.</p>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>Specifies the source type for this event.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>Provides the text of this event.</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>Specifies the category for the event.</p>"
        },
        "Date": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the date and time of the event.</p>"
        },
        "SourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the event.</p>"
        }
      },
      "documentation": "<p>Detailed information about an event.</p>"
    },
    "EventCategoriesList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "EventCategory"
      }
    },
    "EventCategoriesMap": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The source type that the returned categories belong to.</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>The event categories for the specified source type.</p>"
        }
      },
      "documentation": "<p>An event source type, accompanied by one or more event category names.</p>",
      "wrapper": true
    },
    "EventCategoriesMapList": {
      "type": "list",
      "member": {
        "shape": "EventCategoriesMap",
        "locationName": "EventCategoriesMap"
      }
    },
    "EventCategoriesMessage": {
      "type": "structure",
      "members": {
        "EventCategoriesMapList": {
          "shape": "EventCategoriesMapList",
          "documentation": "<p>A list of event category maps.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribeEventCategories</a>.</p>"
    },
    "EventList": {
      "type": "list",
      "member": {
        "shape": "Event",
        "locationName": "Event"
      }
    },
    "EventsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "Events": {
          "shape": "EventList",
          "documentation": "<p>Detailed information about one or more events. </p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribeEvents</a>.</p>"
    },
    "FailoverDBClusterMessage": {
      "type": "structure",
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>A cluster identifier to force a failover for. This parameter is not case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing <code>DBCluster</code>.</p> </li> </ul>"
        },
        "TargetDBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the instance to promote to the primary instance.</p> <p>You must specify the instance identifier for an Amazon DocumentDB replica in the cluster. For example, <code>mydbcluster-replica1</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>FailoverDBCluster</a>.</p>"
    },
    "FailoverDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "Filter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the filter. Filter names are case sensitive.</p>"
        },
        "Values": {
          "shape": "FilterValueList",
          "documentation": "<p>One or more filter values. Filter values are case sensitive.</p>"
        }
      },
      "documentation": "<p>A named set of filter values, used to return a more specific list of results. You can use a filter to match a set of resources by specific criteria, such as IDs.</p> <p>Wildcards are not supported in filters.</p>"
    },
    "FilterList": {
      "type": "list",
      "member": {
        "shape": "Filter",
        "locationName": "Filter"
      }
    },
    "FilterValueList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "Value"
      }
    },
    "Integer": {
      "type": "integer"
    },
    "IntegerOptional": {
      "type": "integer"
    },
    "KeyList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ListTagsForResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceName"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon DocumentDB resource with tags to be listed. This value is an Amazon Resource Name (ARN).</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>ListTagsForResource</a>.</p>"
    },
    "LogTypeList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ModifyDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The cluster identifier for the cluster that is being modified. This parameter is not case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing <code>DBCluster</code>.</p> </li> </ul>"
        },
        "NewDBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The new cluster identifier for the cluster when renaming a cluster. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster2</code> </p>"
        },
        "ApplyImmediately": {
          "shape": "Boolean",
          "documentation": "<p>A value that specifies whether the changes in this request and any pending changes are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the cluster. If this parameter is set to <code>false</code>, changes to the cluster are applied during the next maintenance window.</p> <p>The <code>ApplyImmediately</code> parameter affects only the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values. If you set this parameter value to <code>false</code>, the changes to the <code>NewDBClusterIdentifier</code> and <code>MasterUserPassword</code> values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>Default: <code>false</code> </p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35.</p> </li> </ul>"
        },
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group to use for the cluster.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of virtual private cloud (VPC) security groups that the cluster will belong to.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the cluster accepts connections.</p> <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p> <p>Default: The same port as the original cluster.</p>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The password for the master database user. This password can contain any printable ASCII character except forward slash (/), double quote (\"), or the \"at\" symbol (@).</p> <p>Constraints: Must contain from 8 to 100 characters.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p>The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. </p> <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "CloudwatchLogsExportConfiguration": {
          "shape": "CloudwatchLogsExportConfiguration",
          "documentation": "<p>The configuration setting for the log types to be enabled for export to Amazon CloudWatch Logs for a specific instance or cluster. The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which logs are exported (or not exported) to CloudWatch Logs.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is set to <code>true</code>.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>ModifyDBCluster</a>.</p>"
    },
    "ModifyDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName",
        "Parameters"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group to modify.</p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>A list of parameters in the cluster parameter group to modify.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>ModifyDBClusterParameterGroup</a>.</p>"
    },
    "ModifyDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "ModifyDBClusterSnapshotAttributeMessage": {
      "type": "structure",
      "required": [
        "DBClusterSnapshotIdentifier",
        "AttributeName"
      ],
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the cluster snapshot to modify the attributes for.</p>"
        },
        "AttributeName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual cluster snapshot, set this value to <code>restore</code>.</p>"
        },
        "ValuesToAdd": {
          "shape": "AttributeValueList",
          "documentation": "<p>A list of cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual cluster snapshot, set this list to include one or more AWS account IDs. To make the manual cluster snapshot restorable by any AWS account, set it to <code>all</code>. Do not add the <code>all</code> value for any manual cluster snapshots that contain private information that you don't want to be available to all AWS accounts.</p>"
        },
        "ValuesToRemove": {
          "shape": "AttributeValueList",
          "documentation": "<p>A list of cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual cluster snapshot, set this list to include one or more AWS account identifiers. To remove authorization for any AWS account to copy or restore the cluster snapshot, set it to <code>all</code> . If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual cluster snapshot.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>ModifyDBClusterSnapshotAttribute</a>.</p>"
    },
    "ModifyDBClusterSnapshotAttributeResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshotAttributesResult": {
          "shape": "DBClusterSnapshotAttributesResult"
        }
      }
    },
    "ModifyDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing <code>DBInstance</code>.</p> </li> </ul>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The new compute and memory capacity of the instance; for example, <code>db.r5.large</code>. Not all instance classes are available in all AWS Regions. </p> <p>If you modify the instance class, an outage occurs during the change. The change is applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified as <code>true</code> for this request. </p> <p>Default: Uses existing setting.</p>"
        },
        "ApplyImmediately": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the instance. </p> <p> If this parameter is set to <code>false</code>, changes to the instance are applied during the next maintenance window. Some parameter changes can cause an outage and are applied on the next reboot.</p> <p>Default: <code>false</code> </p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter doesn't result in an outage except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, changing this parameter causes a reboot of the instance. If you are moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure that pending changes are applied.</p> <p>Default: Uses existing setting.</p> <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Must be at least 30 minutes.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>Indicates that minor version upgrades are applied automatically to the instance during the maintenance window. Changing this parameter doesn't result in an outage except in the following case, and the change is asynchronously applied as soon as possible. An outage results if this parameter is set to <code>true</code> during the maintenance window, and a newer minor version is available, and Amazon DocumentDB has enabled automatic patching for that engine version. </p>"
        },
        "NewDBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p> The new instance identifier for the instance when renaming an instance. When you change the instance identifier, an instance reboot occurs immediately if you set <code>Apply Immediately</code> to <code>true</code>. It occurs during the next maintenance window if you set <code>Apply Immediately</code> to <code>false</code>. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>"
        },
        "CACertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>Indicates the certificate that needs to be associated with the instance.</p>"
        },
        "PromotionTier": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the order in which an Amazon DocumentDB replica is promoted to the primary instance after a failure of the existing primary instance.</p> <p>Default: 1</p> <p>Valid values: 0-15</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>ModifyDBInstance</a>.</p>"
    },
    "ModifyDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "ModifyDBSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "DBSubnetGroupName",
        "SubnetIds"
      ],
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name for the subnet group. This value is stored as a lowercase string. You can't modify the default subnet group. </p> <p>Constraints: Must match the name of an existing <code>DBSubnetGroup</code>. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "DBSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>The description for the subnet group.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>The Amazon EC2 subnet IDs for the subnet group.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>ModifyDBSubnetGroup</a>.</p>"
    },
    "ModifyDBSubnetGroupResult": {
      "type": "structure",
      "members": {
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup"
        }
      }
    },
    "OrderableDBInstanceOption": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The engine type of an instance.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version of an instance.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The instance class for an instance.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>The license model for an instance.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZoneList",
          "documentation": "<p>A list of Availability Zones for an instance.</p>"
        },
        "Vpc": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether an instance is in a virtual private cloud (VPC).</p>"
        }
      },
      "documentation": "<p>The options that are available for an instance.</p>",
      "wrapper": true
    },
    "OrderableDBInstanceOptionsList": {
      "type": "list",
      "member": {
        "shape": "OrderableDBInstanceOption",
        "locationName": "OrderableDBInstanceOption"
      }
    },
    "OrderableDBInstanceOptionsMessage": {
      "type": "structure",
      "members": {
        "OrderableDBInstanceOptions": {
          "shape": "OrderableDBInstanceOptionsList",
          "documentation": "<p>The options that are available for a particular orderable instance.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribeOrderableDBInstanceOptions</a>.</p>"
    },
    "Parameter": {
      "type": "structure",
      "members": {
        "ParameterName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the parameter.</p>"
        },
        "ParameterValue": {
          "shape": "String",
          "documentation": "<p>Specifies the value of the parameter.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>Provides a description of the parameter.</p>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>Indicates the source of the parameter value.</p>"
        },
        "ApplyType": {
          "shape": "String",
          "documentation": "<p>Specifies the engine-specific parameters type.</p>"
        },
        "DataType": {
          "shape": "String",
          "documentation": "<p>Specifies the valid data type for the parameter.</p>"
        },
        "AllowedValues": {
          "shape": "String",
          "documentation": "<p>Specifies the valid range of values for the parameter.</p>"
        },
        "IsModifiable": {
          "shape": "Boolean",
          "documentation": "<p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>"
        },
        "MinimumEngineVersion": {
          "shape": "String",
          "documentation": "<p>The earliest engine version to which the parameter can apply.</p>"
        },
        "ApplyMethod": {
          "shape": "ApplyMethod",
          "documentation": "<p>Indicates when to apply parameter updates.</p>"
        }
      },
      "documentation": "<p>Detailed information about an individual parameter.</p>"
    },
    "ParametersList": {
      "type": "list",
      "member": {
        "shape": "Parameter",
        "locationName": "Parameter"
      }
    },
    "PendingCloudwatchLogsExports": {
      "type": "structure",
      "members": {
        "LogTypesToEnable": {
          "shape": "LogTypeList",
          "documentation": "<p>Log types that are in the process of being deactivated. After they are deactivated, these log types aren't exported to CloudWatch Logs.</p>"
        },
        "LogTypesToDisable": {
          "shape": "LogTypeList",
          "documentation": "<p>Log types that are in the process of being enabled. After they are enabled, these log types are exported to Amazon CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p>A list of the log types whose configuration is still pending. These log types are in the process of being activated or deactivated.</p>"
    },
    "PendingMaintenanceAction": {
      "type": "structure",
      "members": {
        "Action": {
          "shape": "String",
          "documentation": "<p>The type of pending maintenance action that is available for the resource.</p>"
        },
        "AutoAppliedAfterDate": {
          "shape": "TStamp",
          "documentation": "<p>The date of the maintenance window when the action is applied. The maintenance action is applied to the resource during its first maintenance window after this date. If this date is specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>"
        },
        "ForcedApplyDate": {
          "shape": "TStamp",
          "documentation": "<p>The date when the maintenance action is automatically applied. The maintenance action is applied to the resource on this date regardless of the maintenance window for the resource. If this date is specified, any <code>immediate</code> opt-in requests are ignored.</p>"
        },
        "OptInStatus": {
          "shape": "String",
          "documentation": "<p>Indicates the type of opt-in request that has been received for the resource.</p>"
        },
        "CurrentApplyDate": {
          "shape": "TStamp",
          "documentation": "<p>The effective date when the pending maintenance action is applied to the resource.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description providing more detail about the maintenance action.</p>"
        }
      },
      "documentation": "<p>Provides information about a pending maintenance action for a resource.</p>"
    },
    "PendingMaintenanceActionDetails": {
      "type": "list",
      "member": {
        "shape": "PendingMaintenanceAction",
        "locationName": "PendingMaintenanceAction"
      }
    },
    "PendingMaintenanceActions": {
      "type": "list",
      "member": {
        "shape": "ResourcePendingMaintenanceActions",
        "locationName": "ResourcePendingMaintenanceActions"
      }
    },
    "PendingMaintenanceActionsMessage": {
      "type": "structure",
      "members": {
        "PendingMaintenanceActions": {
          "shape": "PendingMaintenanceActions",
          "documentation": "<p>The maintenance actions to be applied.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>DescribePendingMaintenanceActions</a>.</p>"
    },
    "PendingModifiedValues": {
      "type": "structure",
      "members": {
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p> Contains the new <code>DBInstanceClass</code> for the instance that will be applied or is currently being applied. </p>"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p> Contains the new <code>AllocatedStorage</code> size for then instance that will be applied or is currently being applied. </p>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>Contains the pending or currently in-progress change of the master credentials for the instance.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the pending port for the instance.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the pending number of days for which automated backups are retained.</p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>Indicates that the Single-AZ instance is to change to a Multi-AZ deployment.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the database engine version.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>The license model for the instance.</p> <p>Valid values: <code>license-included</code>, <code>bring-your-own-license</code>, <code>general-public-license</code> </p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the new Provisioned IOPS value for the instance that will be applied or is currently being applied.</p>"
        },
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p> Contains the new <code>DBInstanceIdentifier</code> for the instance that will be applied or is currently being applied. </p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type to be associated with the instance.</p>"
        },
        "CACertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the identifier of the certificate authority (CA) certificate for the DB instance.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The new subnet group for the instance. </p>"
        },
        "PendingCloudwatchLogsExports": {
          "shape": "PendingCloudwatchLogsExports",
          "documentation": "<p>A list of the log types whose configuration is still pending. These log types are in the process of being activated or deactivated.</p>"
        }
      },
      "documentation": "<p> One or more modified settings for an instance. These modified settings have been requested, but haven't been applied yet.</p>"
    },
    "RebootDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing <code>DBInstance</code>.</p> </li> </ul>"
        },
        "ForceFailover": {
          "shape": "BooleanOptional",
          "documentation": "<p> When <code>true</code>, the reboot is conducted through a Multi-AZ failover. </p> <p>Constraint: You can't specify <code>true</code> if the instance is not configured for Multi-AZ.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>RebootDBInstance</a>.</p>"
    },
    "RebootDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "RemoveTagsFromResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceName",
        "TagKeys"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon DocumentDB resource that the tags are removed from. This value is an Amazon Resource Name (ARN).</p>"
        },
        "TagKeys": {
          "shape": "KeyList",
          "documentation": "<p>The tag key (name) of the tag to be removed.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>RemoveTagsFromResource</a>.</p>"
    },
    "ResetDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster parameter group to reset.</p>"
        },
        "ResetAllParameters": {
          "shape": "Boolean",
          "documentation": "<p>A value that is set to <code>true</code> to reset all parameters in the cluster parameter group to their default values, and <code>false</code> otherwise. You can't use this parameter if there is a list of parameter names specified for the <code>Parameters</code> parameter.</p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>A list of parameter names in the cluster parameter group to reset to the default values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is set to <code>true</code>.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>ResetDBClusterParameterGroup</a>.</p>"
    },
    "ResourcePendingMaintenanceActions": {
      "type": "structure",
      "members": {
        "ResourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that has pending maintenance actions.</p>"
        },
        "PendingMaintenanceActionDetails": {
          "shape": "PendingMaintenanceActionDetails",
          "documentation": "<p>A list that provides details about the pending maintenance actions for the resource.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>ApplyPendingMaintenanceAction</a>.</p>",
      "wrapper": true
    },
    "RestoreDBClusterFromSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "SnapshotIdentifier",
        "Engine"
      ],
      "members": {
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>Provides the list of Amazon EC2 Availability Zones that instances in the restored DB cluster can be created in.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the cluster to create from the snapshot or cluster snapshot. This parameter isn't case sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>"
        },
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the snapshot or cluster snapshot to restore from.</p> <p>You can use either the name or the Amazon Resource Name (ARN) to specify a cluster snapshot. However, you can use only the ARN to specify a snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing snapshot.</p> </li> </ul>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The database engine to use for the new cluster.</p> <p>Default: The same as source.</p> <p>Constraint: Must be compatible with the engine of the source.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version of the database engine to use for the new cluster.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the new cluster accepts connections.</p> <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>.</p> <p>Default: The same port as the original cluster.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the subnet group to use for the new cluster.</p> <p>Constraints: If provided, must match the name of an existing <code>DBSubnetGroup</code>.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of virtual private cloud (VPC) security groups that the new cluster will belong to.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the restored cluster.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier to use when restoring an encrypted cluster from a DB snapshot or cluster snapshot.</p> <p>The AWS KMS key identifier is the Amazon Resource Name (ARN) for the AWS KMS encryption key. If you are restoring a cluster with the same AWS account that owns the AWS KMS encryption key used to encrypt the new cluster, then you can use the AWS KMS key alias instead of the ARN for the AWS KMS encryption key.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p> <ul> <li> <p>If the snapshot or cluster snapshot in <code>SnapshotIdentifier</code> is encrypted, then the restored cluster is encrypted using the AWS KMS key that was used to encrypt the snapshot or the cluster snapshot.</p> </li> <li> <p>If the snapshot or the cluster snapshot in <code>SnapshotIdentifier</code> is not encrypted, then the restored DB cluster is not encrypted.</p> </li> </ul>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>A list of log types that must be enabled for exporting to Amazon CloudWatch Logs.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>RestoreDBClusterFromSnapshot</a>.</p>"
    },
    "RestoreDBClusterFromSnapshotResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "RestoreDBClusterToPointInTimeMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "SourceDBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the new cluster to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "SourceDBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the source cluster from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing <code>DBCluster</code>.</p> </li> </ul>"
        },
        "RestoreToTime": {
          "shape": "TStamp",
          "documentation": "<p>The date and time to restore the cluster to.</p> <p>Valid values: A time in Universal Coordinated Time (UTC) format.</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the instance.</p> </li> <li> <p>Must be specified if the <code>UseLatestRestorableTime</code> parameter is not provided.</p> </li> <li> <p>Cannot be specified if the <code>UseLatestRestorableTime</code> parameter is <code>true</code>.</p> </li> <li> <p>Cannot be specified if the <code>RestoreType</code> parameter is <code>copy-on-write</code>.</p> </li> </ul> <p>Example: <code>2015-03-07T23:45:00Z</code> </p>"
        },
        "UseLatestRestorableTime": {
          "shape": "Boolean",
          "documentation": "<p>A value that is set to <code>true</code> to restore the cluster to the latest restorable backup time, and <code>false</code> otherwise. </p> <p>Default: <code>false</code> </p> <p>Constraints: Cannot be specified if the <code>RestoreToTime</code> parameter is provided.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the new cluster accepts connections.</p> <p>Constraints: Must be a value from <code>1150</code> to <code>65535</code>. </p> <p>Default: The default port for the engine.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The subnet group name to use for the new cluster.</p> <p>Constraints: If provided, must match the name of an existing <code>DBSubnetGroup</code>.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of VPC security groups that the new cluster belongs to.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the restored cluster.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier to use when restoring an encrypted cluster from an encrypted cluster.</p> <p>The AWS KMS key identifier is the Amazon Resource Name (ARN) for the AWS KMS encryption key. If you are restoring a cluster with the same AWS account that owns the AWS KMS encryption key used to encrypt the new cluster, then you can use the AWS KMS key alias instead of the ARN for the AWS KMS encryption key.</p> <p>You can restore to a new cluster and encrypt the new cluster with an AWS KMS key that is different from the AWS KMS key used to encrypt the source cluster. The new DB cluster is encrypted with the AWS KMS key identified by the <code>KmsKeyId</code> parameter.</p> <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p> <ul> <li> <p>If the cluster is encrypted, then the restored cluster is encrypted using the AWS KMS key that was used to encrypt the source cluster.</p> </li> <li> <p>If the cluster is not encrypted, then the restored cluster is not encrypted.</p> </li> </ul> <p>If <code>DBClusterIdentifier</code> refers to a cluster that is not encrypted, then the restore request is rejected.</p>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>A list of log types that must be enabled for exporting to Amazon CloudWatch Logs.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether this cluster can be deleted. If <code>DeletionProtection</code> is enabled, the cluster cannot be deleted unless it is modified and <code>DeletionProtection</code> is disabled. <code>DeletionProtection</code> protects clusters from being accidentally deleted.</p>"
        }
      },
      "documentation": "<p>Represents the input to <a>RestoreDBClusterToPointInTime</a>.</p>"
    },
    "RestoreDBClusterToPointInTimeResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "db-instance",
        "db-parameter-group",
        "db-security-group",
        "db-snapshot",
        "db-cluster",
        "db-cluster-snapshot"
      ]
    },
    "StartDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster to restart. Example: <code>docdb-2019-05-28-15-24-52</code> </p>"
        }
      }
    },
    "StartDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "StopDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the cluster to stop. Example: <code>docdb-2019-05-28-15-24-52</code> </p>"
        }
      }
    },
    "StopDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "Subnet": {
      "type": "structure",
      "members": {
        "SubnetIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the identifier of the subnet.</p>"
        },
        "SubnetAvailabilityZone": {
          "shape": "AvailabilityZone",
          "documentation": "<p>Specifies the Availability Zone for the subnet.</p>"
        },
        "SubnetStatus": {
          "shape": "String",
          "documentation": "<p>Specifies the status of the subnet.</p>"
        }
      },
      "documentation": "<p> Detailed information about a subnet. </p>"
    },
    "SubnetIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "SubnetIdentifier"
      }
    },
    "SubnetList": {
      "type": "list",
      "member": {
        "shape": "Subnet",
        "locationName": "Subnet"
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
          "documentation": "<p>The required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can contain only the set of Unicode letters, digits, white space, '_', '.', '/', '=', '+', '-' (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can contain only the set of Unicode letters, digits, white space, '_', '.', '/', '=', '+', '-' (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>"
        }
      },
      "documentation": "<p>Metadata assigned to an Amazon DocumentDB resource consisting of a key-value pair.</p>"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag",
        "locationName": "Tag"
      }
    },
    "TagListMessage": {
      "type": "structure",
      "members": {
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>A list of one or more tags.</p>"
        }
      },
      "documentation": "<p>Represents the output of <a>ListTagsForResource</a>.</p>"
    },
    "UpgradeTarget": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the upgrade target database engine.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the upgrade target database engine.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The version of the database engine that an instance can be upgraded to.</p>"
        },
        "AutoUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the target version is applied to any source DB instances that have <code>AutoMinorVersionUpgrade</code> set to <code>true</code>.</p>"
        },
        "IsMajorVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether a database engine is upgraded to a major version.</p>"
        }
      },
      "documentation": "<p>The version of the database engine that an instance can be upgraded to.</p>"
    },
    "ValidUpgradeTargetList": {
      "type": "list",
      "member": {
        "shape": "UpgradeTarget",
        "locationName": "UpgradeTarget"
      }
    },
    "VpcSecurityGroupIdList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "VpcSecurityGroupId"
      }
    },
    "VpcSecurityGroupMembership": {
      "type": "structure",
      "members": {
        "VpcSecurityGroupId": {
          "shape": "String",
          "documentation": "<p>The name of the VPC security group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the VPC security group.</p>"
        }
      },
      "documentation": "<p>Used as a response element for queries on virtual private cloud (VPC) security group membership.</p>"
    },
    "VpcSecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "VpcSecurityGroupMembership",
        "locationName": "VpcSecurityGroupMembership"
      }
    }
  },
  "documentation": "<p>Amazon DocumentDB API documentation</p>"
}
]===]))