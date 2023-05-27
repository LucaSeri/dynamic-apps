local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2013-02-12",
    "endpointPrefix": "rds",
    "protocol": "query",
    "serviceAbbreviation": "Amazon RDS",
    "serviceFullName": "Amazon Relational Database Service",
    "serviceId": "RDS",
    "signatureVersion": "v4",
    "uid": "rds-2013-02-12",
    "xmlNamespace": "http://rds.amazonaws.com/doc/2013-02-12/"
  },
  "operations": {
    "AddSourceIdentifierToSubscription": {
      "name": "AddSourceIdentifierToSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddSourceIdentifierToSubscriptionMessage"
      },
      "output": {
        "shape": "AddSourceIdentifierToSubscriptionResult",
        "resultWrapper": "AddSourceIdentifierToSubscriptionResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "SourceNotFoundFault"
        }
      ]
    },
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
        }
      ]
    },
    "AuthorizeDBSecurityGroupIngress": {
      "name": "AuthorizeDBSecurityGroupIngress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AuthorizeDBSecurityGroupIngressMessage"
      },
      "output": {
        "shape": "AuthorizeDBSecurityGroupIngressResult",
        "resultWrapper": "AuthorizeDBSecurityGroupIngressResult"
      },
      "errors": [
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        },
        {
          "shape": "AuthorizationAlreadyExistsFault"
        },
        {
          "shape": "AuthorizationQuotaExceededFault"
        }
      ]
    },
    "CopyDBSnapshot": {
      "name": "CopyDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyDBSnapshotMessage"
      },
      "output": {
        "shape": "CopyDBSnapshotResult",
        "resultWrapper": "CopyDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotAlreadyExistsFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        }
      ]
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
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        }
      ]
    },
    "CreateDBInstanceReadReplica": {
      "name": "CreateDBInstanceReadReplica",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBInstanceReadReplicaMessage"
      },
      "output": {
        "shape": "CreateDBInstanceReadReplicaResult",
        "resultWrapper": "CreateDBInstanceReadReplicaResult"
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
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        }
      ]
    },
    "CreateDBParameterGroup": {
      "name": "CreateDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBParameterGroupMessage"
      },
      "output": {
        "shape": "CreateDBParameterGroupResult",
        "resultWrapper": "CreateDBParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupQuotaExceededFault"
        },
        {
          "shape": "DBParameterGroupAlreadyExistsFault"
        }
      ]
    },
    "CreateDBSecurityGroup": {
      "name": "CreateDBSecurityGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBSecurityGroupMessage"
      },
      "output": {
        "shape": "CreateDBSecurityGroupResult",
        "resultWrapper": "CreateDBSecurityGroupResult"
      },
      "errors": [
        {
          "shape": "DBSecurityGroupAlreadyExistsFault"
        },
        {
          "shape": "DBSecurityGroupQuotaExceededFault"
        },
        {
          "shape": "DBSecurityGroupNotSupportedFault"
        }
      ]
    },
    "CreateDBSnapshot": {
      "name": "CreateDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBSnapshotMessage"
      },
      "output": {
        "shape": "CreateDBSnapshotResult",
        "resultWrapper": "CreateDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotAlreadyExistsFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        }
      ]
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
      ]
    },
    "CreateEventSubscription": {
      "name": "CreateEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEventSubscriptionMessage"
      },
      "output": {
        "shape": "CreateEventSubscriptionResult",
        "resultWrapper": "CreateEventSubscriptionResult"
      },
      "errors": [
        {
          "shape": "EventSubscriptionQuotaExceededFault"
        },
        {
          "shape": "SubscriptionAlreadyExistFault"
        },
        {
          "shape": "SNSInvalidTopicFault"
        },
        {
          "shape": "SNSNoAuthorizationFault"
        },
        {
          "shape": "SNSTopicArnNotFoundFault"
        },
        {
          "shape": "SubscriptionCategoryNotFoundFault"
        },
        {
          "shape": "SourceNotFoundFault"
        }
      ]
    },
    "CreateOptionGroup": {
      "name": "CreateOptionGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateOptionGroupMessage"
      },
      "output": {
        "shape": "CreateOptionGroupResult",
        "resultWrapper": "CreateOptionGroupResult"
      },
      "errors": [
        {
          "shape": "OptionGroupAlreadyExistsFault"
        },
        {
          "shape": "OptionGroupQuotaExceededFault"
        }
      ]
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
        }
      ]
    },
    "DeleteDBParameterGroup": {
      "name": "DeleteDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBParameterGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidDBParameterGroupStateFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ]
    },
    "DeleteDBSecurityGroup": {
      "name": "DeleteDBSecurityGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBSecurityGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        }
      ]
    },
    "DeleteDBSnapshot": {
      "name": "DeleteDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBSnapshotMessage"
      },
      "output": {
        "shape": "DeleteDBSnapshotResult",
        "resultWrapper": "DeleteDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        }
      ]
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
      ]
    },
    "DeleteEventSubscription": {
      "name": "DeleteEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEventSubscriptionMessage"
      },
      "output": {
        "shape": "DeleteEventSubscriptionResult",
        "resultWrapper": "DeleteEventSubscriptionResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "InvalidEventSubscriptionStateFault"
        }
      ]
    },
    "DeleteOptionGroup": {
      "name": "DeleteOptionGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteOptionGroupMessage"
      },
      "errors": [
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "InvalidOptionGroupStateFault"
        }
      ]
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
      }
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
      ]
    },
    "DescribeDBLogFiles": {
      "name": "DescribeDBLogFiles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBLogFilesMessage"
      },
      "output": {
        "shape": "DescribeDBLogFilesResponse",
        "resultWrapper": "DescribeDBLogFilesResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ]
    },
    "DescribeDBParameterGroups": {
      "name": "DescribeDBParameterGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBParameterGroupsMessage"
      },
      "output": {
        "shape": "DBParameterGroupsMessage",
        "resultWrapper": "DescribeDBParameterGroupsResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ]
    },
    "DescribeDBParameters": {
      "name": "DescribeDBParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBParametersMessage"
      },
      "output": {
        "shape": "DBParameterGroupDetails",
        "resultWrapper": "DescribeDBParametersResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ]
    },
    "DescribeDBSecurityGroups": {
      "name": "DescribeDBSecurityGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBSecurityGroupsMessage"
      },
      "output": {
        "shape": "DBSecurityGroupMessage",
        "resultWrapper": "DescribeDBSecurityGroupsResult"
      },
      "errors": [
        {
          "shape": "DBSecurityGroupNotFoundFault"
        }
      ]
    },
    "DescribeDBSnapshots": {
      "name": "DescribeDBSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBSnapshotsMessage"
      },
      "output": {
        "shape": "DBSnapshotMessage",
        "resultWrapper": "DescribeDBSnapshotsResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotNotFoundFault"
        }
      ]
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
      ]
    },
    "DescribeEngineDefaultParameters": {
      "name": "DescribeEngineDefaultParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEngineDefaultParametersMessage"
      },
      "output": {
        "shape": "DescribeEngineDefaultParametersResult",
        "resultWrapper": "DescribeEngineDefaultParametersResult"
      }
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
      }
    },
    "DescribeEventSubscriptions": {
      "name": "DescribeEventSubscriptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventSubscriptionsMessage"
      },
      "output": {
        "shape": "EventSubscriptionsMessage",
        "resultWrapper": "DescribeEventSubscriptionsResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        }
      ]
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
      }
    },
    "DescribeOptionGroupOptions": {
      "name": "DescribeOptionGroupOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOptionGroupOptionsMessage"
      },
      "output": {
        "shape": "OptionGroupOptionsMessage",
        "resultWrapper": "DescribeOptionGroupOptionsResult"
      }
    },
    "DescribeOptionGroups": {
      "name": "DescribeOptionGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOptionGroupsMessage"
      },
      "output": {
        "shape": "OptionGroups",
        "resultWrapper": "DescribeOptionGroupsResult"
      },
      "errors": [
        {
          "shape": "OptionGroupNotFoundFault"
        }
      ]
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
      }
    },
    "DescribeReservedDBInstances": {
      "name": "DescribeReservedDBInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReservedDBInstancesMessage"
      },
      "output": {
        "shape": "ReservedDBInstanceMessage",
        "resultWrapper": "DescribeReservedDBInstancesResult"
      },
      "errors": [
        {
          "shape": "ReservedDBInstanceNotFoundFault"
        }
      ]
    },
    "DescribeReservedDBInstancesOfferings": {
      "name": "DescribeReservedDBInstancesOfferings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReservedDBInstancesOfferingsMessage"
      },
      "output": {
        "shape": "ReservedDBInstancesOfferingMessage",
        "resultWrapper": "DescribeReservedDBInstancesOfferingsResult"
      },
      "errors": [
        {
          "shape": "ReservedDBInstancesOfferingNotFoundFault"
        }
      ]
    },
    "DownloadDBLogFilePortion": {
      "name": "DownloadDBLogFilePortion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DownloadDBLogFilePortionMessage"
      },
      "output": {
        "shape": "DownloadDBLogFilePortionDetails",
        "resultWrapper": "DownloadDBLogFilePortionResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBLogFileNotFoundFault"
        }
      ]
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
        }
      ]
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
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "DBUpgradeDependencyFailureFault"
        }
      ]
    },
    "ModifyDBParameterGroup": {
      "name": "ModifyDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBParameterGroupMessage"
      },
      "output": {
        "shape": "DBParameterGroupNameMessage",
        "resultWrapper": "ModifyDBParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBParameterGroupStateFault"
        }
      ]
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
      ]
    },
    "ModifyEventSubscription": {
      "name": "ModifyEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyEventSubscriptionMessage"
      },
      "output": {
        "shape": "ModifyEventSubscriptionResult",
        "resultWrapper": "ModifyEventSubscriptionResult"
      },
      "errors": [
        {
          "shape": "EventSubscriptionQuotaExceededFault"
        },
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "SNSInvalidTopicFault"
        },
        {
          "shape": "SNSNoAuthorizationFault"
        },
        {
          "shape": "SNSTopicArnNotFoundFault"
        },
        {
          "shape": "SubscriptionCategoryNotFoundFault"
        }
      ]
    },
    "ModifyOptionGroup": {
      "name": "ModifyOptionGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyOptionGroupMessage"
      },
      "output": {
        "shape": "ModifyOptionGroupResult",
        "resultWrapper": "ModifyOptionGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidOptionGroupStateFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        }
      ]
    },
    "PromoteReadReplica": {
      "name": "PromoteReadReplica",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PromoteReadReplicaMessage"
      },
      "output": {
        "shape": "PromoteReadReplicaResult",
        "resultWrapper": "PromoteReadReplicaResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ]
    },
    "PurchaseReservedDBInstancesOffering": {
      "name": "PurchaseReservedDBInstancesOffering",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PurchaseReservedDBInstancesOfferingMessage"
      },
      "output": {
        "shape": "PurchaseReservedDBInstancesOfferingResult",
        "resultWrapper": "PurchaseReservedDBInstancesOfferingResult"
      },
      "errors": [
        {
          "shape": "ReservedDBInstancesOfferingNotFoundFault"
        },
        {
          "shape": "ReservedDBInstanceAlreadyExistsFault"
        },
        {
          "shape": "ReservedDBInstanceQuotaExceededFault"
        }
      ]
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
      ]
    },
    "RemoveSourceIdentifierFromSubscription": {
      "name": "RemoveSourceIdentifierFromSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveSourceIdentifierFromSubscriptionMessage"
      },
      "output": {
        "shape": "RemoveSourceIdentifierFromSubscriptionResult",
        "resultWrapper": "RemoveSourceIdentifierFromSubscriptionResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "SourceNotFoundFault"
        }
      ]
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
        }
      ]
    },
    "ResetDBParameterGroup": {
      "name": "ResetDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetDBParameterGroupMessage"
      },
      "output": {
        "shape": "DBParameterGroupNameMessage",
        "resultWrapper": "ResetDBParameterGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidDBParameterGroupStateFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ]
    },
    "RestoreDBInstanceFromDBSnapshot": {
      "name": "RestoreDBInstanceFromDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBInstanceFromDBSnapshotMessage"
      },
      "output": {
        "shape": "RestoreDBInstanceFromDBSnapshotResult",
        "resultWrapper": "RestoreDBInstanceFromDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "InstanceQuotaExceededFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
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
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        }
      ]
    },
    "RestoreDBInstanceToPointInTime": {
      "name": "RestoreDBInstanceToPointInTime",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBInstanceToPointInTimeMessage"
      },
      "output": {
        "shape": "RestoreDBInstanceToPointInTimeResult",
        "resultWrapper": "RestoreDBInstanceToPointInTimeResult"
      },
      "errors": [
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InstanceQuotaExceededFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "PointInTimeRestoreNotEnabledFault"
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
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        }
      ]
    },
    "RevokeDBSecurityGroupIngress": {
      "name": "RevokeDBSecurityGroupIngress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RevokeDBSecurityGroupIngressMessage"
      },
      "output": {
        "shape": "RevokeDBSecurityGroupIngressResult",
        "resultWrapper": "RevokeDBSecurityGroupIngressResult"
      },
      "errors": [
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        }
      ]
    }
  },
  "shapes": {
    "AddSourceIdentifierToSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName",
        "SourceIdentifier"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String"
        },
        "SourceIdentifier": {
          "shape": "String"
        }
      }
    },
    "AddSourceIdentifierToSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "AddTagsToResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceName",
        "Tags"
      ],
      "members": {
        "ResourceName": {
          "shape": "String"
        },
        "Tags": {
          "shape": "TagList"
        }
      }
    },
    "ApplyMethod": {
      "type": "string",
      "enum": [
        "immediate",
        "pending-reboot"
      ]
    },
    "AuthorizeDBSecurityGroupIngressMessage": {
      "type": "structure",
      "required": [
        "DBSecurityGroupName"
      ],
      "members": {
        "DBSecurityGroupName": {
          "shape": "String"
        },
        "CIDRIP": {
          "shape": "String"
        },
        "EC2SecurityGroupName": {
          "shape": "String"
        },
        "EC2SecurityGroupId": {
          "shape": "String"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String"
        }
      }
    },
    "AuthorizeDBSecurityGroupIngressResult": {
      "type": "structure",
      "members": {
        "DBSecurityGroup": {
          "shape": "DBSecurityGroup"
        }
      }
    },
    "AvailabilityZone": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String"
        },
        "ProvisionedIopsCapable": {
          "shape": "Boolean"
        }
      },
      "wrapper": true
    },
    "AvailabilityZoneList": {
      "type": "list",
      "member": {
        "shape": "AvailabilityZone",
        "locationName": "AvailabilityZone"
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BooleanOptional": {
      "type": "boolean"
    },
    "CharacterSet": {
      "type": "structure",
      "members": {
        "CharacterSetName": {
          "shape": "String"
        },
        "CharacterSetDescription": {
          "shape": "String"
        }
      }
    },
    "CopyDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "SourceDBSnapshotIdentifier",
        "TargetDBSnapshotIdentifier"
      ],
      "members": {
        "SourceDBSnapshotIdentifier": {
          "shape": "String"
        },
        "TargetDBSnapshotIdentifier": {
          "shape": "String"
        }
      }
    },
    "CopyDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBSnapshot": {
          "shape": "DBSnapshot"
        }
      }
    },
    "CreateDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "AllocatedStorage",
        "DBInstanceClass",
        "Engine",
        "MasterUsername",
        "MasterUserPassword"
      ],
      "members": {
        "DBName": {
          "shape": "String"
        },
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "Engine": {
          "shape": "String"
        },
        "MasterUsername": {
          "shape": "String"
        },
        "MasterUserPassword": {
          "shape": "String"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroupNameList"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList"
        },
        "AvailabilityZone": {
          "shape": "String"
        },
        "DBSubnetGroupName": {
          "shape": "String"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String"
        },
        "DBParameterGroupName": {
          "shape": "String"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional"
        },
        "PreferredBackupWindow": {
          "shape": "String"
        },
        "Port": {
          "shape": "IntegerOptional"
        },
        "MultiAZ": {
          "shape": "BooleanOptional"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional"
        },
        "LicenseModel": {
          "shape": "String"
        },
        "Iops": {
          "shape": "IntegerOptional"
        },
        "OptionGroupName": {
          "shape": "String"
        },
        "CharacterSetName": {
          "shape": "String"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional"
        }
      }
    },
    "CreateDBInstanceReadReplicaMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "SourceDBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "SourceDBInstanceIdentifier": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "AvailabilityZone": {
          "shape": "String"
        },
        "Port": {
          "shape": "IntegerOptional"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional"
        },
        "Iops": {
          "shape": "IntegerOptional"
        },
        "OptionGroupName": {
          "shape": "String"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional"
        }
      }
    },
    "CreateDBInstanceReadReplicaResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "CreateDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "CreateDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName",
        "DBParameterGroupFamily",
        "Description"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        },
        "DBParameterGroupFamily": {
          "shape": "String"
        },
        "Description": {
          "shape": "String"
        }
      }
    },
    "CreateDBParameterGroupResult": {
      "type": "structure",
      "members": {
        "DBParameterGroup": {
          "shape": "DBParameterGroup"
        }
      }
    },
    "CreateDBSecurityGroupMessage": {
      "type": "structure",
      "required": [
        "DBSecurityGroupName",
        "DBSecurityGroupDescription"
      ],
      "members": {
        "DBSecurityGroupName": {
          "shape": "String"
        },
        "DBSecurityGroupDescription": {
          "shape": "String"
        }
      }
    },
    "CreateDBSecurityGroupResult": {
      "type": "structure",
      "members": {
        "DBSecurityGroup": {
          "shape": "DBSecurityGroup"
        }
      }
    },
    "CreateDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBSnapshotIdentifier",
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String"
        },
        "DBInstanceIdentifier": {
          "shape": "String"
        }
      }
    },
    "CreateDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBSnapshot": {
          "shape": "DBSnapshot"
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
          "shape": "String"
        },
        "DBSubnetGroupDescription": {
          "shape": "String"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList"
        }
      }
    },
    "CreateDBSubnetGroupResult": {
      "type": "structure",
      "members": {
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup"
        }
      }
    },
    "CreateEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName",
        "SnsTopicArn"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String"
        },
        "SnsTopicArn": {
          "shape": "String"
        },
        "SourceType": {
          "shape": "String"
        },
        "EventCategories": {
          "shape": "EventCategoriesList"
        },
        "SourceIds": {
          "shape": "SourceIdsList"
        },
        "Enabled": {
          "shape": "BooleanOptional"
        }
      }
    },
    "CreateEventSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "CreateOptionGroupMessage": {
      "type": "structure",
      "required": [
        "OptionGroupName",
        "EngineName",
        "MajorEngineVersion",
        "OptionGroupDescription"
      ],
      "members": {
        "OptionGroupName": {
          "shape": "String"
        },
        "EngineName": {
          "shape": "String"
        },
        "MajorEngineVersion": {
          "shape": "String"
        },
        "OptionGroupDescription": {
          "shape": "String"
        }
      }
    },
    "CreateOptionGroupResult": {
      "type": "structure",
      "members": {
        "OptionGroup": {
          "shape": "OptionGroup"
        }
      }
    },
    "DBEngineVersion": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "DBParameterGroupFamily": {
          "shape": "String"
        },
        "DBEngineDescription": {
          "shape": "String"
        },
        "DBEngineVersionDescription": {
          "shape": "String"
        },
        "DefaultCharacterSet": {
          "shape": "CharacterSet"
        },
        "SupportedCharacterSets": {
          "shape": "SupportedCharacterSetsList"
        }
      }
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
          "shape": "String"
        },
        "DBEngineVersions": {
          "shape": "DBEngineVersionList"
        }
      }
    },
    "DBInstance": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "Engine": {
          "shape": "String"
        },
        "DBInstanceStatus": {
          "shape": "String"
        },
        "MasterUsername": {
          "shape": "String"
        },
        "DBName": {
          "shape": "String"
        },
        "Endpoint": {
          "shape": "Endpoint"
        },
        "AllocatedStorage": {
          "shape": "Integer"
        },
        "InstanceCreateTime": {
          "shape": "TStamp"
        },
        "PreferredBackupWindow": {
          "shape": "String"
        },
        "BackupRetentionPeriod": {
          "shape": "Integer"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroupMembershipList"
        },
        "VpcSecurityGroups": {
          "shape": "VpcSecurityGroupMembershipList"
        },
        "DBParameterGroups": {
          "shape": "DBParameterGroupStatusList"
        },
        "AvailabilityZone": {
          "shape": "String"
        },
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String"
        },
        "PendingModifiedValues": {
          "shape": "PendingModifiedValues"
        },
        "LatestRestorableTime": {
          "shape": "TStamp"
        },
        "MultiAZ": {
          "shape": "Boolean"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "Boolean"
        },
        "ReadReplicaSourceDBInstanceIdentifier": {
          "shape": "String"
        },
        "ReadReplicaDBInstanceIdentifiers": {
          "shape": "ReadReplicaDBInstanceIdentifierList"
        },
        "LicenseModel": {
          "shape": "String"
        },
        "Iops": {
          "shape": "IntegerOptional"
        },
        "OptionGroupMemberships": {
          "shape": "OptionGroupMembershipList"
        },
        "CharacterSetName": {
          "shape": "String"
        },
        "SecondaryAvailabilityZone": {
          "shape": "String"
        },
        "PubliclyAccessible": {
          "shape": "Boolean"
        }
      },
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
          "shape": "String"
        },
        "DBInstances": {
          "shape": "DBInstanceList"
        }
      }
    },
    "DBParameterGroup": {
      "type": "structure",
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        },
        "DBParameterGroupFamily": {
          "shape": "String"
        },
        "Description": {
          "shape": "String"
        }
      },
      "wrapper": true
    },
    "DBParameterGroupDetails": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParametersList"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DBParameterGroupList": {
      "type": "list",
      "member": {
        "shape": "DBParameterGroup",
        "locationName": "DBParameterGroup"
      }
    },
    "DBParameterGroupNameMessage": {
      "type": "structure",
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        }
      }
    },
    "DBParameterGroupStatus": {
      "type": "structure",
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        },
        "ParameterApplyStatus": {
          "shape": "String"
        }
      }
    },
    "DBParameterGroupStatusList": {
      "type": "list",
      "member": {
        "shape": "DBParameterGroupStatus",
        "locationName": "DBParameterGroup"
      }
    },
    "DBParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String"
        },
        "DBParameterGroups": {
          "shape": "DBParameterGroupList"
        }
      }
    },
    "DBSecurityGroup": {
      "type": "structure",
      "members": {
        "OwnerId": {
          "shape": "String"
        },
        "DBSecurityGroupName": {
          "shape": "String"
        },
        "DBSecurityGroupDescription": {
          "shape": "String"
        },
        "VpcId": {
          "shape": "String"
        },
        "EC2SecurityGroups": {
          "shape": "EC2SecurityGroupList"
        },
        "IPRanges": {
          "shape": "IPRangeList"
        }
      },
      "wrapper": true
    },
    "DBSecurityGroupMembership": {
      "type": "structure",
      "members": {
        "DBSecurityGroupName": {
          "shape": "String"
        },
        "Status": {
          "shape": "String"
        }
      }
    },
    "DBSecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "DBSecurityGroupMembership",
        "locationName": "DBSecurityGroup"
      }
    },
    "DBSecurityGroupMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroups"
        }
      }
    },
    "DBSecurityGroupNameList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "DBSecurityGroupName"
      }
    },
    "DBSecurityGroups": {
      "type": "list",
      "member": {
        "shape": "DBSecurityGroup",
        "locationName": "DBSecurityGroup"
      }
    },
    "DBSnapshot": {
      "type": "structure",
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String"
        },
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "SnapshotCreateTime": {
          "shape": "TStamp"
        },
        "Engine": {
          "shape": "String"
        },
        "AllocatedStorage": {
          "shape": "Integer"
        },
        "Status": {
          "shape": "String"
        },
        "Port": {
          "shape": "Integer"
        },
        "AvailabilityZone": {
          "shape": "String"
        },
        "VpcId": {
          "shape": "String"
        },
        "InstanceCreateTime": {
          "shape": "TStamp"
        },
        "MasterUsername": {
          "shape": "String"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "LicenseModel": {
          "shape": "String"
        },
        "SnapshotType": {
          "shape": "String"
        },
        "Iops": {
          "shape": "IntegerOptional"
        },
        "OptionGroupName": {
          "shape": "String"
        }
      },
      "wrapper": true
    },
    "DBSnapshotList": {
      "type": "list",
      "member": {
        "shape": "DBSnapshot",
        "locationName": "DBSnapshot"
      }
    },
    "DBSnapshotMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String"
        },
        "DBSnapshots": {
          "shape": "DBSnapshotList"
        }
      }
    },
    "DBSubnetGroup": {
      "type": "structure",
      "members": {
        "DBSubnetGroupName": {
          "shape": "String"
        },
        "DBSubnetGroupDescription": {
          "shape": "String"
        },
        "VpcId": {
          "shape": "String"
        },
        "SubnetGroupStatus": {
          "shape": "String"
        },
        "Subnets": {
          "shape": "SubnetList"
        }
      },
      "wrapper": true
    },
    "DBSubnetGroupMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String"
        },
        "DBSubnetGroups": {
          "shape": "DBSubnetGroups"
        }
      }
    },
    "DBSubnetGroups": {
      "type": "list",
      "member": {
        "shape": "DBSubnetGroup",
        "locationName": "DBSubnetGroup"
      }
    },
    "DeleteDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "SkipFinalSnapshot": {
          "shape": "Boolean"
        },
        "FinalDBSnapshotIdentifier": {
          "shape": "String"
        }
      }
    },
    "DeleteDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "DeleteDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        }
      }
    },
    "DeleteDBSecurityGroupMessage": {
      "type": "structure",
      "required": [
        "DBSecurityGroupName"
      ],
      "members": {
        "DBSecurityGroupName": {
          "shape": "String"
        }
      }
    },
    "DeleteDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBSnapshotIdentifier"
      ],
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String"
        }
      }
    },
    "DeleteDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBSnapshot": {
          "shape": "DBSnapshot"
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
          "shape": "String"
        }
      }
    },
    "DeleteEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String"
        }
      }
    },
    "DeleteEventSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "DeleteOptionGroupMessage": {
      "type": "structure",
      "required": [
        "OptionGroupName"
      ],
      "members": {
        "OptionGroupName": {
          "shape": "String"
        }
      }
    },
    "DescribeDBEngineVersionsMessage": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "DBParameterGroupFamily": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        },
        "DefaultOnly": {
          "shape": "Boolean"
        },
        "ListSupportedCharacterSets": {
          "shape": "BooleanOptional"
        }
      }
    },
    "DescribeDBInstancesMessage": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeDBLogFilesDetails": {
      "type": "structure",
      "members": {
        "LogFileName": {
          "shape": "String"
        },
        "LastWritten": {
          "shape": "Long"
        },
        "Size": {
          "shape": "Long"
        }
      }
    },
    "DescribeDBLogFilesList": {
      "type": "list",
      "member": {
        "shape": "DescribeDBLogFilesDetails",
        "locationName": "DescribeDBLogFilesDetails"
      }
    },
    "DescribeDBLogFilesMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "FilenameContains": {
          "shape": "String"
        },
        "FileLastWritten": {
          "shape": "Long"
        },
        "FileSize": {
          "shape": "Long"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeDBLogFilesResponse": {
      "type": "structure",
      "members": {
        "DescribeDBLogFiles": {
          "shape": "DescribeDBLogFilesList"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeDBParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeDBParametersMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        },
        "Source": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeDBSecurityGroupsMessage": {
      "type": "structure",
      "members": {
        "DBSecurityGroupName": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeDBSnapshotsMessage": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "DBSnapshotIdentifier": {
          "shape": "String"
        },
        "SnapshotType": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeDBSubnetGroupsMessage": {
      "type": "structure",
      "members": {
        "DBSubnetGroupName": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeEngineDefaultParametersMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupFamily"
      ],
      "members": {
        "DBParameterGroupFamily": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeEngineDefaultParametersResult": {
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
          "shape": "String"
        }
      }
    },
    "DescribeEventSubscriptionsMessage": {
      "type": "structure",
      "members": {
        "SubscriptionName": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeEventsMessage": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String"
        },
        "SourceType": {
          "shape": "SourceType"
        },
        "StartTime": {
          "shape": "TStamp"
        },
        "EndTime": {
          "shape": "TStamp"
        },
        "Duration": {
          "shape": "IntegerOptional"
        },
        "EventCategories": {
          "shape": "EventCategoriesList"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeOptionGroupOptionsMessage": {
      "type": "structure",
      "required": [
        "EngineName"
      ],
      "members": {
        "EngineName": {
          "shape": "String"
        },
        "MajorEngineVersion": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeOptionGroupsMessage": {
      "type": "structure",
      "members": {
        "OptionGroupName": {
          "shape": "String"
        },
        "Marker": {
          "shape": "String"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "EngineName": {
          "shape": "String"
        },
        "MajorEngineVersion": {
          "shape": "String"
        }
      }
    },
    "DescribeOrderableDBInstanceOptionsMessage": {
      "type": "structure",
      "required": [
        "Engine"
      ],
      "members": {
        "Engine": {
          "shape": "String"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "LicenseModel": {
          "shape": "String"
        },
        "Vpc": {
          "shape": "BooleanOptional"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeReservedDBInstancesMessage": {
      "type": "structure",
      "members": {
        "ReservedDBInstanceId": {
          "shape": "String"
        },
        "ReservedDBInstancesOfferingId": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "Duration": {
          "shape": "String"
        },
        "ProductDescription": {
          "shape": "String"
        },
        "OfferingType": {
          "shape": "String"
        },
        "MultiAZ": {
          "shape": "BooleanOptional"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "DescribeReservedDBInstancesOfferingsMessage": {
      "type": "structure",
      "members": {
        "ReservedDBInstancesOfferingId": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "Duration": {
          "shape": "String"
        },
        "ProductDescription": {
          "shape": "String"
        },
        "OfferingType": {
          "shape": "String"
        },
        "MultiAZ": {
          "shape": "BooleanOptional"
        },
        "MaxRecords": {
          "shape": "IntegerOptional"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "Double": {
      "type": "double"
    },
    "DownloadDBLogFilePortionDetails": {
      "type": "structure",
      "members": {
        "LogFileData": {
          "shape": "String"
        },
        "Marker": {
          "shape": "String"
        },
        "AdditionalDataPending": {
          "shape": "Boolean"
        }
      }
    },
    "DownloadDBLogFilePortionMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "LogFileName"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "LogFileName": {
          "shape": "String"
        },
        "Marker": {
          "shape": "String"
        },
        "NumberOfLines": {
          "shape": "Integer"
        }
      }
    },
    "EC2SecurityGroup": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "String"
        },
        "EC2SecurityGroupName": {
          "shape": "String"
        },
        "EC2SecurityGroupId": {
          "shape": "String"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String"
        }
      }
    },
    "EC2SecurityGroupList": {
      "type": "list",
      "member": {
        "shape": "EC2SecurityGroup",
        "locationName": "EC2SecurityGroup"
      }
    },
    "Endpoint": {
      "type": "structure",
      "members": {
        "Address": {
          "shape": "String"
        },
        "Port": {
          "shape": "Integer"
        }
      }
    },
    "EngineDefaults": {
      "type": "structure",
      "members": {
        "DBParameterGroupFamily": {
          "shape": "String"
        },
        "Marker": {
          "shape": "String"
        },
        "Parameters": {
          "shape": "ParametersList"
        }
      },
      "wrapper": true
    },
    "Event": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String"
        },
        "SourceType": {
          "shape": "SourceType"
        },
        "Message": {
          "shape": "String"
        },
        "EventCategories": {
          "shape": "EventCategoriesList"
        },
        "Date": {
          "shape": "TStamp"
        }
      }
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
          "shape": "String"
        },
        "EventCategories": {
          "shape": "EventCategoriesList"
        }
      },
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
          "shape": "EventCategoriesMapList"
        }
      }
    },
    "EventList": {
      "type": "list",
      "member": {
        "shape": "Event",
        "locationName": "Event"
      }
    },
    "EventSubscription": {
      "type": "structure",
      "members": {
        "CustomerAwsId": {
          "shape": "String"
        },
        "CustSubscriptionId": {
          "shape": "String"
        },
        "SnsTopicArn": {
          "shape": "String"
        },
        "Status": {
          "shape": "String"
        },
        "SubscriptionCreationTime": {
          "shape": "String"
        },
        "SourceType": {
          "shape": "String"
        },
        "SourceIdsList": {
          "shape": "SourceIdsList"
        },
        "EventCategoriesList": {
          "shape": "EventCategoriesList"
        },
        "Enabled": {
          "shape": "Boolean"
        }
      },
      "wrapper": true
    },
    "EventSubscriptionsList": {
      "type": "list",
      "member": {
        "shape": "EventSubscription",
        "locationName": "EventSubscription"
      }
    },
    "EventSubscriptionsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String"
        },
        "EventSubscriptionsList": {
          "shape": "EventSubscriptionsList"
        }
      }
    },
    "EventsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String"
        },
        "Events": {
          "shape": "EventList"
        }
      }
    },
    "IPRange": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "String"
        },
        "CIDRIP": {
          "shape": "String"
        }
      }
    },
    "IPRangeList": {
      "type": "list",
      "member": {
        "shape": "IPRange",
        "locationName": "IPRange"
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
          "shape": "String"
        }
      }
    },
    "Long": {
      "type": "long"
    },
    "ModifyDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroupNameList"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList"
        },
        "ApplyImmediately": {
          "shape": "Boolean"
        },
        "MasterUserPassword": {
          "shape": "String"
        },
        "DBParameterGroupName": {
          "shape": "String"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional"
        },
        "PreferredBackupWindow": {
          "shape": "String"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String"
        },
        "MultiAZ": {
          "shape": "BooleanOptional"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "AllowMajorVersionUpgrade": {
          "shape": "Boolean"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional"
        },
        "Iops": {
          "shape": "IntegerOptional"
        },
        "OptionGroupName": {
          "shape": "String"
        },
        "NewDBInstanceIdentifier": {
          "shape": "String"
        }
      }
    },
    "ModifyDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "ModifyDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName",
        "Parameters"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        },
        "Parameters": {
          "shape": "ParametersList"
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
          "shape": "String"
        },
        "DBSubnetGroupDescription": {
          "shape": "String"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList"
        }
      }
    },
    "ModifyDBSubnetGroupResult": {
      "type": "structure",
      "members": {
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup"
        }
      }
    },
    "ModifyEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String"
        },
        "SnsTopicArn": {
          "shape": "String"
        },
        "SourceType": {
          "shape": "String"
        },
        "EventCategories": {
          "shape": "EventCategoriesList"
        },
        "Enabled": {
          "shape": "BooleanOptional"
        }
      }
    },
    "ModifyEventSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "ModifyOptionGroupMessage": {
      "type": "structure",
      "required": [
        "OptionGroupName"
      ],
      "members": {
        "OptionGroupName": {
          "shape": "String"
        },
        "OptionsToInclude": {
          "shape": "OptionConfigurationList"
        },
        "OptionsToRemove": {
          "shape": "OptionNamesList"
        },
        "ApplyImmediately": {
          "shape": "Boolean"
        }
      }
    },
    "ModifyOptionGroupResult": {
      "type": "structure",
      "members": {
        "OptionGroup": {
          "shape": "OptionGroup"
        }
      }
    },
    "Option": {
      "type": "structure",
      "members": {
        "OptionName": {
          "shape": "String"
        },
        "OptionDescription": {
          "shape": "String"
        },
        "Persistent": {
          "shape": "Boolean"
        },
        "Port": {
          "shape": "IntegerOptional"
        },
        "OptionSettings": {
          "shape": "OptionSettingConfigurationList"
        },
        "DBSecurityGroupMemberships": {
          "shape": "DBSecurityGroupMembershipList"
        },
        "VpcSecurityGroupMemberships": {
          "shape": "VpcSecurityGroupMembershipList"
        }
      }
    },
    "OptionConfiguration": {
      "type": "structure",
      "required": [
        "OptionName"
      ],
      "members": {
        "OptionName": {
          "shape": "String"
        },
        "Port": {
          "shape": "IntegerOptional"
        },
        "DBSecurityGroupMemberships": {
          "shape": "DBSecurityGroupNameList"
        },
        "VpcSecurityGroupMemberships": {
          "shape": "VpcSecurityGroupIdList"
        },
        "OptionSettings": {
          "shape": "OptionSettingsList"
        }
      }
    },
    "OptionConfigurationList": {
      "type": "list",
      "member": {
        "shape": "OptionConfiguration",
        "locationName": "OptionConfiguration"
      }
    },
    "OptionGroup": {
      "type": "structure",
      "members": {
        "OptionGroupName": {
          "shape": "String"
        },
        "OptionGroupDescription": {
          "shape": "String"
        },
        "EngineName": {
          "shape": "String"
        },
        "MajorEngineVersion": {
          "shape": "String"
        },
        "Options": {
          "shape": "OptionsList"
        },
        "AllowsVpcAndNonVpcInstanceMemberships": {
          "shape": "Boolean"
        },
        "VpcId": {
          "shape": "String"
        }
      },
      "wrapper": true
    },
    "OptionGroupMembership": {
      "type": "structure",
      "members": {
        "OptionGroupName": {
          "shape": "String"
        },
        "Status": {
          "shape": "String"
        }
      }
    },
    "OptionGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "OptionGroupMembership",
        "locationName": "OptionGroupMembership"
      }
    },
    "OptionGroupOption": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String"
        },
        "Description": {
          "shape": "String"
        },
        "EngineName": {
          "shape": "String"
        },
        "MajorEngineVersion": {
          "shape": "String"
        },
        "MinimumRequiredMinorEngineVersion": {
          "shape": "String"
        },
        "PortRequired": {
          "shape": "Boolean"
        },
        "DefaultPort": {
          "shape": "IntegerOptional"
        },
        "OptionsDependedOn": {
          "shape": "OptionsDependedOn"
        },
        "Persistent": {
          "shape": "Boolean"
        },
        "OptionGroupOptionSettings": {
          "shape": "OptionGroupOptionSettingsList"
        }
      }
    },
    "OptionGroupOptionSetting": {
      "type": "structure",
      "members": {
        "SettingName": {
          "shape": "String"
        },
        "SettingDescription": {
          "shape": "String"
        },
        "DefaultValue": {
          "shape": "String"
        },
        "ApplyType": {
          "shape": "String"
        },
        "AllowedValues": {
          "shape": "String"
        },
        "IsModifiable": {
          "shape": "Boolean"
        }
      }
    },
    "OptionGroupOptionSettingsList": {
      "type": "list",
      "member": {
        "shape": "OptionGroupOptionSetting",
        "locationName": "OptionGroupOptionSetting"
      }
    },
    "OptionGroupOptionsList": {
      "type": "list",
      "member": {
        "shape": "OptionGroupOption",
        "locationName": "OptionGroupOption"
      }
    },
    "OptionGroupOptionsMessage": {
      "type": "structure",
      "members": {
        "OptionGroupOptions": {
          "shape": "OptionGroupOptionsList"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "OptionGroups": {
      "type": "structure",
      "members": {
        "OptionGroupsList": {
          "shape": "OptionGroupsList"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "OptionGroupsList": {
      "type": "list",
      "member": {
        "shape": "OptionGroup",
        "locationName": "OptionGroup"
      }
    },
    "OptionNamesList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "OptionSetting": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String"
        },
        "Value": {
          "shape": "String"
        },
        "DefaultValue": {
          "shape": "String"
        },
        "Description": {
          "shape": "String"
        },
        "ApplyType": {
          "shape": "String"
        },
        "DataType": {
          "shape": "String"
        },
        "AllowedValues": {
          "shape": "String"
        },
        "IsModifiable": {
          "shape": "Boolean"
        },
        "IsCollection": {
          "shape": "Boolean"
        }
      }
    },
    "OptionSettingConfigurationList": {
      "type": "list",
      "member": {
        "shape": "OptionSetting",
        "locationName": "OptionSetting"
      }
    },
    "OptionSettingsList": {
      "type": "list",
      "member": {
        "shape": "OptionSetting",
        "locationName": "OptionSetting"
      }
    },
    "OptionsDependedOn": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "OptionName"
      }
    },
    "OptionsList": {
      "type": "list",
      "member": {
        "shape": "Option",
        "locationName": "Option"
      }
    },
    "OrderableDBInstanceOption": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "LicenseModel": {
          "shape": "String"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZoneList"
        },
        "MultiAZCapable": {
          "shape": "Boolean"
        },
        "ReadReplicaCapable": {
          "shape": "Boolean"
        },
        "Vpc": {
          "shape": "Boolean"
        }
      },
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
          "shape": "OrderableDBInstanceOptionsList"
        },
        "Marker": {
          "shape": "String"
        }
      }
    },
    "Parameter": {
      "type": "structure",
      "members": {
        "ParameterName": {
          "shape": "String"
        },
        "ParameterValue": {
          "shape": "String"
        },
        "Description": {
          "shape": "String"
        },
        "Source": {
          "shape": "String"
        },
        "ApplyType": {
          "shape": "String"
        },
        "DataType": {
          "shape": "String"
        },
        "AllowedValues": {
          "shape": "String"
        },
        "IsModifiable": {
          "shape": "Boolean"
        },
        "MinimumEngineVersion": {
          "shape": "String"
        },
        "ApplyMethod": {
          "shape": "ApplyMethod"
        }
      }
    },
    "ParametersList": {
      "type": "list",
      "member": {
        "shape": "Parameter",
        "locationName": "Parameter"
      }
    },
    "PendingModifiedValues": {
      "type": "structure",
      "members": {
        "DBInstanceClass": {
          "shape": "String"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional"
        },
        "MasterUserPassword": {
          "shape": "String"
        },
        "Port": {
          "shape": "IntegerOptional"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional"
        },
        "MultiAZ": {
          "shape": "BooleanOptional"
        },
        "EngineVersion": {
          "shape": "String"
        },
        "Iops": {
          "shape": "IntegerOptional"
        },
        "DBInstanceIdentifier": {
          "shape": "String"
        }
      }
    },
    "PromoteReadReplicaMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional"
        },
        "PreferredBackupWindow": {
          "shape": "String"
        }
      }
    },
    "PromoteReadReplicaResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "PurchaseReservedDBInstancesOfferingMessage": {
      "type": "structure",
      "required": [
        "ReservedDBInstancesOfferingId"
      ],
      "members": {
        "ReservedDBInstancesOfferingId": {
          "shape": "String"
        },
        "ReservedDBInstanceId": {
          "shape": "String"
        },
        "DBInstanceCount": {
          "shape": "IntegerOptional"
        }
      }
    },
    "PurchaseReservedDBInstancesOfferingResult": {
      "type": "structure",
      "members": {
        "ReservedDBInstance": {
          "shape": "ReservedDBInstance"
        }
      }
    },
    "ReadReplicaDBInstanceIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "ReadReplicaDBInstanceIdentifier"
      }
    },
    "RebootDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "ForceFailover": {
          "shape": "BooleanOptional"
        }
      }
    },
    "RebootDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "RecurringCharge": {
      "type": "structure",
      "members": {
        "RecurringChargeAmount": {
          "shape": "Double"
        },
        "RecurringChargeFrequency": {
          "shape": "String"
        }
      },
      "wrapper": true
    },
    "RecurringChargeList": {
      "type": "list",
      "member": {
        "shape": "RecurringCharge",
        "locationName": "RecurringCharge"
      }
    },
    "RemoveSourceIdentifierFromSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName",
        "SourceIdentifier"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String"
        },
        "SourceIdentifier": {
          "shape": "String"
        }
      }
    },
    "RemoveSourceIdentifierFromSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
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
          "shape": "String"
        },
        "TagKeys": {
          "shape": "KeyList"
        }
      }
    },
    "ReservedDBInstance": {
      "type": "structure",
      "members": {
        "ReservedDBInstanceId": {
          "shape": "String"
        },
        "ReservedDBInstancesOfferingId": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "StartTime": {
          "shape": "TStamp"
        },
        "Duration": {
          "shape": "Integer"
        },
        "FixedPrice": {
          "shape": "Double"
        },
        "UsagePrice": {
          "shape": "Double"
        },
        "CurrencyCode": {
          "shape": "String"
        },
        "DBInstanceCount": {
          "shape": "Integer"
        },
        "ProductDescription": {
          "shape": "String"
        },
        "OfferingType": {
          "shape": "String"
        },
        "MultiAZ": {
          "shape": "Boolean"
        },
        "State": {
          "shape": "String"
        },
        "RecurringCharges": {
          "shape": "RecurringChargeList"
        }
      },
      "wrapper": true
    },
    "ReservedDBInstanceList": {
      "type": "list",
      "member": {
        "shape": "ReservedDBInstance",
        "locationName": "ReservedDBInstance"
      }
    },
    "ReservedDBInstanceMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String"
        },
        "ReservedDBInstances": {
          "shape": "ReservedDBInstanceList"
        }
      }
    },
    "ReservedDBInstancesOffering": {
      "type": "structure",
      "members": {
        "ReservedDBInstancesOfferingId": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "Duration": {
          "shape": "Integer"
        },
        "FixedPrice": {
          "shape": "Double"
        },
        "UsagePrice": {
          "shape": "Double"
        },
        "CurrencyCode": {
          "shape": "String"
        },
        "ProductDescription": {
          "shape": "String"
        },
        "OfferingType": {
          "shape": "String"
        },
        "MultiAZ": {
          "shape": "Boolean"
        },
        "RecurringCharges": {
          "shape": "RecurringChargeList"
        }
      },
      "wrapper": true
    },
    "ReservedDBInstancesOfferingList": {
      "type": "list",
      "member": {
        "shape": "ReservedDBInstancesOffering",
        "locationName": "ReservedDBInstancesOffering"
      }
    },
    "ReservedDBInstancesOfferingMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String"
        },
        "ReservedDBInstancesOfferings": {
          "shape": "ReservedDBInstancesOfferingList"
        }
      }
    },
    "ResetDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String"
        },
        "ResetAllParameters": {
          "shape": "Boolean"
        },
        "Parameters": {
          "shape": "ParametersList"
        }
      }
    },
    "RestoreDBInstanceFromDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "DBSnapshotIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String"
        },
        "DBSnapshotIdentifier": {
          "shape": "String"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "Port": {
          "shape": "IntegerOptional"
        },
        "AvailabilityZone": {
          "shape": "String"
        },
        "DBSubnetGroupName": {
          "shape": "String"
        },
        "MultiAZ": {
          "shape": "BooleanOptional"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional"
        },
        "LicenseModel": {
          "shape": "String"
        },
        "DBName": {
          "shape": "String"
        },
        "Engine": {
          "shape": "String"
        },
        "Iops": {
          "shape": "IntegerOptional"
        },
        "OptionGroupName": {
          "shape": "String"
        }
      }
    },
    "RestoreDBInstanceFromDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "RestoreDBInstanceToPointInTimeMessage": {
      "type": "structure",
      "required": [
        "SourceDBInstanceIdentifier",
        "TargetDBInstanceIdentifier"
      ],
      "members": {
        "SourceDBInstanceIdentifier": {
          "shape": "String"
        },
        "TargetDBInstanceIdentifier": {
          "shape": "String"
        },
        "RestoreTime": {
          "shape": "TStamp"
        },
        "UseLatestRestorableTime": {
          "shape": "Boolean"
        },
        "DBInstanceClass": {
          "shape": "String"
        },
        "Port": {
          "shape": "IntegerOptional"
        },
        "AvailabilityZone": {
          "shape": "String"
        },
        "DBSubnetGroupName": {
          "shape": "String"
        },
        "MultiAZ": {
          "shape": "BooleanOptional"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional"
        },
        "LicenseModel": {
          "shape": "String"
        },
        "DBName": {
          "shape": "String"
        },
        "Engine": {
          "shape": "String"
        },
        "Iops": {
          "shape": "IntegerOptional"
        },
        "OptionGroupName": {
          "shape": "String"
        }
      }
    },
    "RestoreDBInstanceToPointInTimeResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "RevokeDBSecurityGroupIngressMessage": {
      "type": "structure",
      "required": [
        "DBSecurityGroupName"
      ],
      "members": {
        "DBSecurityGroupName": {
          "shape": "String"
        },
        "CIDRIP": {
          "shape": "String"
        },
        "EC2SecurityGroupName": {
          "shape": "String"
        },
        "EC2SecurityGroupId": {
          "shape": "String"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String"
        }
      }
    },
    "RevokeDBSecurityGroupIngressResult": {
      "type": "structure",
      "members": {
        "DBSecurityGroup": {
          "shape": "DBSecurityGroup"
        }
      }
    },
    "SourceIdsList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "SourceId"
      }
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "db-instance",
        "db-parameter-group",
        "db-security-group",
        "db-snapshot"
      ]
    },
    "String": {
      "type": "string"
    },
    "Subnet": {
      "type": "structure",
      "members": {
        "SubnetIdentifier": {
          "shape": "String"
        },
        "SubnetAvailabilityZone": {
          "shape": "AvailabilityZone"
        },
        "SubnetStatus": {
          "shape": "String"
        }
      }
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
    "SupportedCharacterSetsList": {
      "type": "list",
      "member": {
        "shape": "CharacterSet",
        "locationName": "CharacterSet"
      }
    },
    "TStamp": {
      "type": "timestamp"
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "String"
        },
        "Value": {
          "shape": "String"
        }
      }
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
          "shape": "TagList"
        }
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
          "shape": "String"
        },
        "Status": {
          "shape": "String"
        }
      }
    },
    "VpcSecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "VpcSecurityGroupMembership",
        "locationName": "VpcSecurityGroupMembership"
      }
    }
  }
}
]===]))