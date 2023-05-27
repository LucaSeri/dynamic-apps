local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-01-01",
    "endpointPrefix": "dms",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Database Migration Service",
    "serviceId": "Database Migration Service",
    "signatureVersion": "v4",
    "targetPrefix": "AmazonDMSv20160101",
    "uid": "dms-2016-01-01"
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
      "output": {
        "shape": "AddTagsToResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Adds metadata tags to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html\"> <code>Tag</code> </a> data type description.</p>"
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
        "shape": "ApplyPendingMaintenanceActionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Applies a pending maintenance action to a resource (for example, to a replication instance).</p>"
    },
    "CancelReplicationTaskAssessmentRun": {
      "name": "CancelReplicationTaskAssessmentRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelReplicationTaskAssessmentRunMessage"
      },
      "output": {
        "shape": "CancelReplicationTaskAssessmentRunResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Cancels a single premigration assessment run.</p> <p>This operation prevents any individual assessments from running if they haven't started running. It also attempts to cancel any individual assessments that are currently running.</p>"
    },
    "CreateEndpoint": {
      "name": "CreateEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEndpointMessage"
      },
      "output": {
        "shape": "CreateEndpointResponse"
      },
      "errors": [
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "ResourceQuotaExceededFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "AccessDeniedFault"
        }
      ],
      "documentation": "<p>Creates an endpoint using the provided settings.</p>"
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
        "shape": "CreateEventSubscriptionResponse"
      },
      "errors": [
        {
          "shape": "ResourceQuotaExceededFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "SNSInvalidTopicFault"
        },
        {
          "shape": "SNSNoAuthorizationFault"
        },
        {
          "shape": "KMSAccessDeniedFault"
        },
        {
          "shape": "KMSDisabledFault"
        },
        {
          "shape": "KMSInvalidStateFault"
        },
        {
          "shape": "KMSNotFoundFault"
        },
        {
          "shape": "KMSThrottlingFault"
        }
      ],
      "documentation": "<p> Creates an AWS DMS event notification subscription. </p> <p>You can specify the type of source (<code>SourceType</code>) you want to be notified of, provide a list of AWS DMS source IDs (<code>SourceIds</code>) that triggers the events, and provide a list of event categories (<code>EventCategories</code>) for events you want to be notified of. If you specify both the <code>SourceType</code> and <code>SourceIds</code>, such as <code>SourceType = replication-instance</code> and <code>SourceIdentifier = my-replinstance</code>, you will be notified of all the replication instance events for the specified source. If you specify a <code>SourceType</code> but don't specify a <code>SourceIdentifier</code>, you receive notice of the events for that source type for all your AWS DMS sources. If you don't specify either <code>SourceType</code> nor <code>SourceIdentifier</code>, you will be notified of events generated from all AWS DMS sources belonging to your customer account.</p> <p>For more information about AWS DMS events, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html\">Working with Events and Notifications</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
    },
    "CreateReplicationInstance": {
      "name": "CreateReplicationInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateReplicationInstanceMessage"
      },
      "output": {
        "shape": "CreateReplicationInstanceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "InsufficientResourceCapacityFault"
        },
        {
          "shape": "ResourceQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "ReplicationSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Creates the replication instance using the specified parameters.</p> <p>AWS DMS requires that your account have certain roles with appropriate permissions before you can create a replication instance. For information on the required roles, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.APIRole\">Creating the IAM Roles to Use With the AWS CLI and AWS DMS API</a>. For information on the required permissions, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.IAMPermissions\">IAM Permissions Needed to Use AWS DMS</a>.</p>"
    },
    "CreateReplicationSubnetGroup": {
      "name": "CreateReplicationSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateReplicationSubnetGroupMessage"
      },
      "output": {
        "shape": "CreateReplicationSubnetGroupResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "ResourceQuotaExceededFault"
        },
        {
          "shape": "ReplicationSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        }
      ],
      "documentation": "<p>Creates a replication subnet group given a list of the subnet IDs in a VPC.</p>"
    },
    "CreateReplicationTask": {
      "name": "CreateReplicationTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateReplicationTaskMessage"
      },
      "output": {
        "shape": "CreateReplicationTaskResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "ResourceQuotaExceededFault"
        }
      ],
      "documentation": "<p>Creates a replication task using the specified parameters.</p>"
    },
    "DeleteCertificate": {
      "name": "DeleteCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCertificateMessage"
      },
      "output": {
        "shape": "DeleteCertificateResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Deletes the specified certificate. </p>"
    },
    "DeleteConnection": {
      "name": "DeleteConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConnectionMessage"
      },
      "output": {
        "shape": "DeleteConnectionResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Deletes the connection between a replication instance and an endpoint.</p>"
    },
    "DeleteEndpoint": {
      "name": "DeleteEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEndpointMessage"
      },
      "output": {
        "shape": "DeleteEndpointResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Deletes the specified endpoint.</p> <note> <p>All tasks associated with the endpoint must be deleted before you can delete the endpoint.</p> </note> <p/>"
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
        "shape": "DeleteEventSubscriptionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p> Deletes an AWS DMS event subscription. </p>"
    },
    "DeleteReplicationInstance": {
      "name": "DeleteReplicationInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteReplicationInstanceMessage"
      },
      "output": {
        "shape": "DeleteReplicationInstanceResponse"
      },
      "errors": [
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes the specified replication instance.</p> <note> <p>You must delete any migration tasks that are associated with the replication instance before you can delete it.</p> </note> <p/>"
    },
    "DeleteReplicationSubnetGroup": {
      "name": "DeleteReplicationSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteReplicationSubnetGroupMessage"
      },
      "output": {
        "shape": "DeleteReplicationSubnetGroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a subnet group.</p>"
    },
    "DeleteReplicationTask": {
      "name": "DeleteReplicationTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteReplicationTaskMessage"
      },
      "output": {
        "shape": "DeleteReplicationTaskResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Deletes the specified replication task.</p>"
    },
    "DeleteReplicationTaskAssessmentRun": {
      "name": "DeleteReplicationTaskAssessmentRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteReplicationTaskAssessmentRunMessage"
      },
      "output": {
        "shape": "DeleteReplicationTaskAssessmentRunResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Deletes the record of a single premigration assessment run.</p> <p>This operation removes all metadata that AWS DMS maintains about this assessment run. However, the operation leaves untouched all information about this assessment run that is stored in your Amazon S3 bucket.</p>"
    },
    "DescribeAccountAttributes": {
      "name": "DescribeAccountAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAccountAttributesMessage"
      },
      "output": {
        "shape": "DescribeAccountAttributesResponse"
      },
      "documentation": "<p>Lists all of the AWS DMS attributes for a customer account. These attributes include AWS DMS quotas for the account and a unique account identifier in a particular DMS region. DMS quotas include a list of resource quotas supported by the account, such as the number of replication instances allowed. The description for each resource quota, includes the quota name, current usage toward that quota, and the quota's maximum value. DMS uses the unique account identifier to name each artifact used by DMS in the given region.</p> <p>This command does not take any parameters.</p>"
    },
    "DescribeApplicableIndividualAssessments": {
      "name": "DescribeApplicableIndividualAssessments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeApplicableIndividualAssessmentsMessage"
      },
      "output": {
        "shape": "DescribeApplicableIndividualAssessmentsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Provides a list of individual assessments that you can specify for a new premigration assessment run, given one or more parameters.</p> <p>If you specify an existing migration task, this operation provides the default individual assessments you can specify for that task. Otherwise, the specified parameters model elements of a possible migration task on which to base a premigration assessment run.</p> <p>To use these migration task modeling parameters, you must specify an existing replication instance, a source database engine, a target database engine, and a migration type. This combination of parameters potentially limits the default individual assessments available for an assessment run created for a corresponding migration task.</p> <p>If you specify no parameters, this operation provides a list of all possible individual assessments that you can specify for an assessment run. If you specify any one of the task modeling parameters, you must specify all of them or the operation cannot provide a list of individual assessments. The only parameter that you can specify alone is for an existing migration task. The specified task definition then determines the default list of individual assessments that you can specify in an assessment run for the task.</p>"
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
        "shape": "DescribeCertificatesResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Provides a description of the certificate.</p>"
    },
    "DescribeConnections": {
      "name": "DescribeConnections",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConnectionsMessage"
      },
      "output": {
        "shape": "DescribeConnectionsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.</p>"
    },
    "DescribeEndpointTypes": {
      "name": "DescribeEndpointTypes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEndpointTypesMessage"
      },
      "output": {
        "shape": "DescribeEndpointTypesResponse"
      },
      "documentation": "<p>Returns information about the type of endpoints available.</p>"
    },
    "DescribeEndpoints": {
      "name": "DescribeEndpoints",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEndpointsMessage"
      },
      "output": {
        "shape": "DescribeEndpointsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about the endpoints for your account in the current region.</p>"
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
        "shape": "DescribeEventCategoriesResponse"
      },
      "documentation": "<p>Lists categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html\">Working with Events and Notifications</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
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
        "shape": "DescribeEventSubscriptionsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Lists all the event subscriptions for a customer account. The description of a subscription includes <code>SubscriptionName</code>, <code>SNSTopicARN</code>, <code>CustomerID</code>, <code>SourceType</code>, <code>SourceID</code>, <code>CreationTime</code>, and <code>Status</code>. </p> <p>If you specify <code>SubscriptionName</code>, this action lists the description for that subscription.</p>"
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
        "shape": "DescribeEventsResponse"
      },
      "documentation": "<p> Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on AWS DMS events, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html\">Working with Events and Notifications</a> in the <i>AWS Database Migration User Guide.</i> </p>"
    },
    "DescribeOrderableReplicationInstances": {
      "name": "DescribeOrderableReplicationInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrderableReplicationInstancesMessage"
      },
      "output": {
        "shape": "DescribeOrderableReplicationInstancesResponse"
      },
      "documentation": "<p>Returns information about the replication instance types that can be created in the specified region.</p>"
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
        "shape": "DescribePendingMaintenanceActionsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>For internal use only</p>"
    },
    "DescribeRefreshSchemasStatus": {
      "name": "DescribeRefreshSchemasStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRefreshSchemasStatusMessage"
      },
      "output": {
        "shape": "DescribeRefreshSchemasStatusResponse"
      },
      "errors": [
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns the status of the RefreshSchemas operation.</p>"
    },
    "DescribeReplicationInstanceTaskLogs": {
      "name": "DescribeReplicationInstanceTaskLogs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReplicationInstanceTaskLogsMessage"
      },
      "output": {
        "shape": "DescribeReplicationInstanceTaskLogsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Returns information about the task logs for the specified task.</p>"
    },
    "DescribeReplicationInstances": {
      "name": "DescribeReplicationInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReplicationInstancesMessage"
      },
      "output": {
        "shape": "DescribeReplicationInstancesResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about replication instances for your account in the current region.</p>"
    },
    "DescribeReplicationSubnetGroups": {
      "name": "DescribeReplicationSubnetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReplicationSubnetGroupsMessage"
      },
      "output": {
        "shape": "DescribeReplicationSubnetGroupsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about the replication subnet groups.</p>"
    },
    "DescribeReplicationTaskAssessmentResults": {
      "name": "DescribeReplicationTaskAssessmentResults",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReplicationTaskAssessmentResultsMessage"
      },
      "output": {
        "shape": "DescribeReplicationTaskAssessmentResultsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns the task assessment results from Amazon S3. This action always returns the latest results.</p>"
    },
    "DescribeReplicationTaskAssessmentRuns": {
      "name": "DescribeReplicationTaskAssessmentRuns",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReplicationTaskAssessmentRunsMessage"
      },
      "output": {
        "shape": "DescribeReplicationTaskAssessmentRunsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a paginated list of premigration assessment runs based on filter settings.</p> <p>These filter settings can specify a combination of premigration assessment runs, migration tasks, replication instances, and assessment run status values.</p> <note> <p>This operation doesn't return information about individual assessments. For this information, see the <code>DescribeReplicationTaskIndividualAssessments</code> operation. </p> </note>"
    },
    "DescribeReplicationTaskIndividualAssessments": {
      "name": "DescribeReplicationTaskIndividualAssessments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReplicationTaskIndividualAssessmentsMessage"
      },
      "output": {
        "shape": "DescribeReplicationTaskIndividualAssessmentsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a paginated list of individual assessments based on filter settings.</p> <p>These filter settings can specify a combination of premigration assessment runs, migration tasks, and assessment status values.</p>"
    },
    "DescribeReplicationTasks": {
      "name": "DescribeReplicationTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReplicationTasksMessage"
      },
      "output": {
        "shape": "DescribeReplicationTasksResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about replication tasks for your account in the current region.</p>"
    },
    "DescribeSchemas": {
      "name": "DescribeSchemas",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSchemasMessage"
      },
      "output": {
        "shape": "DescribeSchemasResponse"
      },
      "errors": [
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about the schema for the specified endpoint.</p> <p/>"
    },
    "DescribeTableStatistics": {
      "name": "DescribeTableStatistics",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTableStatisticsMessage"
      },
      "output": {
        "shape": "DescribeTableStatisticsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted.</p> <p>Note that the \"last updated\" column the DMS console only indicates the time that AWS DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.</p>"
    },
    "ImportCertificate": {
      "name": "ImportCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportCertificateMessage"
      },
      "output": {
        "shape": "ImportCertificateResponse"
      },
      "errors": [
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "InvalidCertificateFault"
        },
        {
          "shape": "ResourceQuotaExceededFault"
        }
      ],
      "documentation": "<p>Uploads the specified certificate.</p>"
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
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Lists all metadata tags attached to an AWS DMS resource, including replication instance, endpoint, security group, and migration task. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html\"> <code>Tag</code> </a> data type description.</p>"
    },
    "ModifyEndpoint": {
      "name": "ModifyEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyEndpointMessage"
      },
      "output": {
        "shape": "ModifyEndpointResponse"
      },
      "errors": [
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "AccessDeniedFault"
        }
      ],
      "documentation": "<p>Modifies the specified endpoint.</p>"
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
        "shape": "ModifyEventSubscriptionResponse"
      },
      "errors": [
        {
          "shape": "ResourceQuotaExceededFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "SNSInvalidTopicFault"
        },
        {
          "shape": "SNSNoAuthorizationFault"
        },
        {
          "shape": "KMSAccessDeniedFault"
        },
        {
          "shape": "KMSDisabledFault"
        },
        {
          "shape": "KMSInvalidStateFault"
        },
        {
          "shape": "KMSNotFoundFault"
        },
        {
          "shape": "KMSThrottlingFault"
        }
      ],
      "documentation": "<p>Modifies an existing AWS DMS event notification subscription. </p>"
    },
    "ModifyReplicationInstance": {
      "name": "ModifyReplicationInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyReplicationInstanceMessage"
      },
      "output": {
        "shape": "ModifyReplicationInstanceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InsufficientResourceCapacityFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "UpgradeDependencyFailureFault"
        }
      ],
      "documentation": "<p>Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request.</p> <p>Some settings are applied during the maintenance window.</p> <p/>"
    },
    "ModifyReplicationSubnetGroup": {
      "name": "ModifyReplicationSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyReplicationSubnetGroupMessage"
      },
      "output": {
        "shape": "ModifyReplicationSubnetGroupResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "ResourceQuotaExceededFault"
        },
        {
          "shape": "SubnetAlreadyInUse"
        },
        {
          "shape": "ReplicationSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        }
      ],
      "documentation": "<p>Modifies the settings for the specified replication subnet group.</p>"
    },
    "ModifyReplicationTask": {
      "name": "ModifyReplicationTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyReplicationTaskMessage"
      },
      "output": {
        "shape": "ModifyReplicationTaskResponse"
      },
      "errors": [
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Modifies the specified replication task.</p> <p>You can't modify the task endpoints. The task must be stopped before you can modify it. </p> <p>For more information about AWS DMS tasks, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html\">Working with Migration Tasks</a> in the <i>AWS Database Migration Service User Guide</i>.</p>"
    },
    "RebootReplicationInstance": {
      "name": "RebootReplicationInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebootReplicationInstanceMessage"
      },
      "output": {
        "shape": "RebootReplicationInstanceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Reboots a replication instance. Rebooting results in a momentary outage, until the replication instance becomes available again.</p>"
    },
    "RefreshSchemas": {
      "name": "RefreshSchemas",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RefreshSchemasMessage"
      },
      "output": {
        "shape": "RefreshSchemasResponse"
      },
      "errors": [
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "ResourceQuotaExceededFault"
        }
      ],
      "documentation": "<p>Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.</p>"
    },
    "ReloadTables": {
      "name": "ReloadTables",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ReloadTablesMessage"
      },
      "output": {
        "shape": "ReloadTablesResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Reloads the target database table with the source data. </p>"
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
      "output": {
        "shape": "RemoveTagsFromResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Removes metadata tags from an AWS DMS resource, including replication instance, endpoint, security group, and migration task. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_Tag.html\"> <code>Tag</code> </a> data type description.</p>"
    },
    "StartReplicationTask": {
      "name": "StartReplicationTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartReplicationTaskMessage"
      },
      "output": {
        "shape": "StartReplicationTaskResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "AccessDeniedFault"
        }
      ],
      "documentation": "<p>Starts the replication task.</p> <p>For more information about AWS DMS tasks, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html\">Working with Migration Tasks </a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
    },
    "StartReplicationTaskAssessment": {
      "name": "StartReplicationTaskAssessment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartReplicationTaskAssessmentMessage"
      },
      "output": {
        "shape": "StartReplicationTaskAssessmentResponse"
      },
      "errors": [
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p> Starts the replication task assessment for unsupported data types in the source database. </p>"
    },
    "StartReplicationTaskAssessmentRun": {
      "name": "StartReplicationTaskAssessmentRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartReplicationTaskAssessmentRunMessage"
      },
      "output": {
        "shape": "StartReplicationTaskAssessmentRunResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "KMSAccessDeniedFault"
        },
        {
          "shape": "KMSDisabledFault"
        },
        {
          "shape": "KMSFault"
        },
        {
          "shape": "KMSInvalidStateFault"
        },
        {
          "shape": "KMSNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "S3AccessDeniedFault"
        },
        {
          "shape": "S3ResourceNotFoundFault"
        },
        {
          "shape": "ResourceAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Starts a new premigration assessment run for one or more individual assessments of a migration task.</p> <p>The assessments that you can specify depend on the source and target database engine and the migration type defined for the given task. To run this operation, your migration task must already be created. After you run this operation, you can review the status of each individual assessment. You can also run the migration task manually after the assessment run and its individual assessments complete.</p>"
    },
    "StopReplicationTask": {
      "name": "StopReplicationTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopReplicationTaskMessage"
      },
      "output": {
        "shape": "StopReplicationTaskResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        }
      ],
      "documentation": "<p>Stops the replication task.</p>"
    },
    "TestConnection": {
      "name": "TestConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TestConnectionMessage"
      },
      "output": {
        "shape": "TestConnectionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidResourceStateFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "ResourceQuotaExceededFault"
        }
      ],
      "documentation": "<p>Tests the connection between the replication instance and the endpoint.</p>"
    }
  },
  "shapes": {
    "AccountQuota": {
      "type": "structure",
      "members": {
        "AccountQuotaName": {
          "shape": "String",
          "documentation": "<p>The name of the AWS DMS quota for this AWS account.</p>"
        },
        "Used": {
          "shape": "Long",
          "documentation": "<p>The amount currently used toward the quota maximum.</p>"
        },
        "Max": {
          "shape": "Long",
          "documentation": "<p>The maximum allowed value for the quota.</p>"
        }
      },
      "documentation": "<p>Describes a quota for an AWS account, for example, the number of replication instances allowed.</p>"
    },
    "AccountQuotaList": {
      "type": "list",
      "member": {
        "shape": "AccountQuota"
      }
    },
    "AddTagsToResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Identifies the AWS DMS resource to which tags should be added. The value for this parameter is an Amazon Resource Name (ARN).</p> <p>For AWS DMS, you can tag a replication instance, an endpoint, or a replication task.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more tags to be assigned to the resource.</p>"
        }
      },
      "documentation": "<p>Associates a set of tags with an AWS DMS resource.</p>"
    },
    "AddTagsToResourceResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "ApplyPendingMaintenanceActionMessage": {
      "type": "structure",
      "required": [
        "ReplicationInstanceArn",
        "ApplyAction",
        "OptInType"
      ],
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS DMS resource that the pending maintenance action applies to.</p>"
        },
        "ApplyAction": {
          "shape": "String",
          "documentation": "<p>The pending maintenance action to apply to this resource.</p>"
        },
        "OptInType": {
          "shape": "String",
          "documentation": "<p>A value that specifies the type of opt-in request, or undoes an opt-in request. You can't undo an opt-in request of type <code>immediate</code>.</p> <p>Valid values:</p> <ul> <li> <p> <code>immediate</code> - Apply the maintenance action immediately.</p> </li> <li> <p> <code>next-maintenance</code> - Apply the maintenance action during the next maintenance window for the resource.</p> </li> <li> <p> <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in requests.</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "ApplyPendingMaintenanceActionResponse": {
      "type": "structure",
      "members": {
        "ResourcePendingMaintenanceActions": {
          "shape": "ResourcePendingMaintenanceActions",
          "documentation": "<p>The AWS DMS resource that the pending maintenance action will be applied to.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "AuthMechanismValue": {
      "type": "string",
      "enum": [
        "default",
        "mongodb_cr",
        "scram_sha_1"
      ]
    },
    "AuthTypeValue": {
      "type": "string",
      "enum": [
        "no",
        "password"
      ]
    },
    "AvailabilityZone": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the Availability Zone.</p>"
        }
      },
      "documentation": "<p>The name of an Availability Zone for use during database migration. <code>AvailabilityZone</code> is an optional parameter to the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationInstance.html\"> <code>CreateReplicationInstance</code> </a> operation, and it’s value relates to the AWS Region of an endpoint. For example, the availability zone of an endpoint in the us-east-1 region might be us-east-1a, us-east-1b, us-east-1c, or us-east-1d.</p>"
    },
    "AvailabilityZonesList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BooleanOptional": {
      "type": "boolean"
    },
    "CancelReplicationTaskAssessmentRunMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskAssessmentRunArn"
      ],
      "members": {
        "ReplicationTaskAssessmentRunArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the premigration assessment run to be canceled.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CancelReplicationTaskAssessmentRunResponse": {
      "type": "structure",
      "members": {
        "ReplicationTaskAssessmentRun": {
          "shape": "ReplicationTaskAssessmentRun",
          "documentation": "<p>The <code>ReplicationTaskAssessmentRun</code> object for the canceled assessment run.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "Certificate": {
      "type": "structure",
      "members": {
        "CertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.</p>"
        },
        "CertificateCreationDate": {
          "shape": "TStamp",
          "documentation": "<p>The date that the certificate was created.</p>"
        },
        "CertificatePem": {
          "shape": "String",
          "documentation": "<p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>"
        },
        "CertificateWallet": {
          "shape": "CertificateWallet",
          "documentation": "<p>The location of an imported Oracle Wallet certificate for use with SSL.</p>"
        },
        "CertificateArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the certificate.</p>"
        },
        "CertificateOwner": {
          "shape": "String",
          "documentation": "<p>The owner of the certificate.</p>"
        },
        "ValidFromDate": {
          "shape": "TStamp",
          "documentation": "<p>The beginning date that the certificate is valid.</p>"
        },
        "ValidToDate": {
          "shape": "TStamp",
          "documentation": "<p>The final date that the certificate is valid.</p>"
        },
        "SigningAlgorithm": {
          "shape": "String",
          "documentation": "<p>The signing algorithm for the certificate.</p>"
        },
        "KeyLength": {
          "shape": "IntegerOptional",
          "documentation": "<p>The key length of the cryptographic algorithm being used.</p>"
        }
      },
      "documentation": "<p>The SSL certificate that can be used to encrypt connections between the endpoints and the replication instance.</p>"
    },
    "CertificateList": {
      "type": "list",
      "member": {
        "shape": "Certificate"
      }
    },
    "CertificateWallet": {
      "type": "blob"
    },
    "CompressionTypeValue": {
      "type": "string",
      "enum": [
        "none",
        "gzip"
      ]
    },
    "Connection": {
      "type": "structure",
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the replication instance.</p>"
        },
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The ARN string that uniquely identifies the endpoint.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The connection status. This parameter can return one of the following values:</p> <ul> <li> <p> <code>\"successful\"</code> </p> </li> <li> <p> <code>\"testing\"</code> </p> </li> <li> <p> <code>\"failed\"</code> </p> </li> <li> <p> <code>\"deleting\"</code> </p> </li> </ul>"
        },
        "LastFailureMessage": {
          "shape": "String",
          "documentation": "<p>The error message when the connection last failed.</p>"
        },
        "EndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the endpoint. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.</p>"
        },
        "ReplicationInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The replication instance identifier. This parameter is stored as a lowercase string.</p>"
        }
      },
      "documentation": "<p>Status of the connection between an endpoint and a replication instance, including Amazon Resource Names (ARNs) and the last error message issued.</p>"
    },
    "ConnectionList": {
      "type": "list",
      "member": {
        "shape": "Connection"
      }
    },
    "CreateEndpointMessage": {
      "type": "structure",
      "required": [
        "EndpointIdentifier",
        "EndpointType",
        "EngineName"
      ],
      "members": {
        "EndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two consecutive hyphens.</p>"
        },
        "EndpointType": {
          "shape": "ReplicationEndpointTypeValue",
          "documentation": "<p>The type of endpoint. Valid values are <code>source</code> and <code>target</code>.</p>"
        },
        "EngineName": {
          "shape": "String",
          "documentation": "<p>The type of engine for the endpoint. Valid values, depending on the <code>EndpointType</code> value, include <code>\"mysql\"</code>, <code>\"oracle\"</code>, <code>\"postgres\"</code>, <code>\"mariadb\"</code>, <code>\"aurora\"</code>, <code>\"aurora-postgresql\"</code>, <code>\"redshift\"</code>, <code>\"s3\"</code>, <code>\"db2\"</code>, <code>\"azuredb\"</code>, <code>\"sybase\"</code>, <code>\"dynamodb\"</code>, <code>\"mongodb\"</code>, <code>\"kinesis\"</code>, <code>\"kafka\"</code>, <code>\"elasticsearch\"</code>, <code>\"docdb\"</code>, <code>\"sqlserver\"</code>, and <code>\"neptune\"</code>.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>The user name to be used to log in to the endpoint database.</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>The password to be used to log in to the endpoint database.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>The name of the server where the endpoint database resides.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port used by the endpoint database.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>The name of the endpoint database.</p>"
        },
        "ExtraConnectionAttributes": {
          "shape": "String",
          "documentation": "<p>Additional attributes associated with the connection. Each attribute is specified as a name-value pair associated by an equal sign (=). Multiple attributes are separated by a semicolon (;) with no additional white space. For information on the attributes available for connecting your source or target endpoint, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html\">Working with AWS DMS Endpoints</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>An AWS KMS key identifier that is used to encrypt the connection parameters for the endpoint.</p> <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then AWS DMS uses your default encryption key.</p> <p>AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more tags to be assigned to the endpoint.</p>"
        },
        "CertificateArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the certificate.</p>"
        },
        "SslMode": {
          "shape": "DmsSslModeValue",
          "documentation": "<p>The Secure Sockets Layer (SSL) mode to use for the SSL connection. The default is <code>none</code> </p>"
        },
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) for the service access role that you want to use to create the endpoint. </p>"
        },
        "ExternalTableDefinition": {
          "shape": "String",
          "documentation": "<p>The external table definition. </p>"
        },
        "DynamoDbSettings": {
          "shape": "DynamoDbSettings",
          "documentation": "<p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html\">Using Object Mapping to Migrate Data to DynamoDB</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "S3Settings": {
          "shape": "S3Settings",
          "documentation": "<p>Settings in JSON format for the target Amazon S3 endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring\">Extra Connection Attributes When Using Amazon S3 as a Target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "DmsTransferSettings": {
          "shape": "DmsTransferSettings",
          "documentation": "<p>The settings in JSON format for the DMS transfer type of source endpoint. </p> <p>Possible settings include the following:</p> <ul> <li> <p> <code>ServiceAccessRoleArn</code> - The IAM role that has permission to access the Amazon S3 bucket.</p> </li> <li> <p> <code>BucketName</code> - The name of the S3 bucket to use.</p> </li> <li> <p> <code>CompressionType</code> - An optional parameter to use GZIP to compress the target files. To use GZIP, set this value to <code>NONE</code> (the default). To keep the files uncompressed, don't use this value.</p> </li> </ul> <p>Shorthand syntax for these settings is as follows: <code>ServiceAccessRoleArn=string,BucketName=string,CompressionType=string</code> </p> <p>JSON syntax for these settings is as follows: <code>{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"|\"gzip\" } </code> </p>"
        },
        "MongoDbSettings": {
          "shape": "MongoDbSettings",
          "documentation": "<p>Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration\">Using MongoDB as a Target for AWS Database Migration Service</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "KinesisSettings": {
          "shape": "KinesisSettings",
          "documentation": "<p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html\">Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "KafkaSettings": {
          "shape": "KafkaSettings",
          "documentation": "<p>Settings in JSON format for the target Apache Kafka endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html\">Using Apache Kafka as a Target for AWS Database Migration Service</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "ElasticsearchSettings": {
          "shape": "ElasticsearchSettings",
          "documentation": "<p>Settings in JSON format for the target Elasticsearch endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration\">Extra Connection Attributes When Using Elasticsearch as a Target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide</i>.</p>"
        },
        "NeptuneSettings": {
          "shape": "NeptuneSettings",
          "documentation": "<p>Settings in JSON format for the target Amazon Neptune endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings\">Specifying Endpoint Settings for Amazon Neptune as a Target</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "RedshiftSettings": {
          "shape": "RedshiftSettings"
        },
        "PostgreSQLSettings": {
          "shape": "PostgreSQLSettings",
          "documentation": "<p>Settings in JSON format for the source and target PostgreSQL endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html\">Extra connection attributes when using PostgreSQL as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html\"> Extra connection attributes when using PostgreSQL as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "MySQLSettings": {
          "shape": "MySQLSettings",
          "documentation": "<p>Settings in JSON format for the source and target MySQL endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html\">Extra connection attributes when using MySQL as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html\">Extra connection attributes when using a MySQL-compatible database as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "OracleSettings": {
          "shape": "OracleSettings",
          "documentation": "<p>Settings in JSON format for the source and target Oracle endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html\">Extra connection attributes when using Oracle as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html\"> Extra connection attributes when using Oracle as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "SybaseSettings": {
          "shape": "SybaseSettings",
          "documentation": "<p>Settings in JSON format for the source and target SAP ASE endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html\">Extra connection attributes when using SAP ASE as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html\">Extra connection attributes when using SAP ASE as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "MicrosoftSQLServerSettings": {
          "shape": "MicrosoftSQLServerSettings",
          "documentation": "<p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html\">Extra connection attributes when using SQL Server as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html\"> Extra connection attributes when using SQL Server as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "IBMDb2Settings": {
          "shape": "IBMDb2Settings",
          "documentation": "<p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html\">Extra connection attributes when using Db2 LUW as a source for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateEndpointResponse": {
      "type": "structure",
      "members": {
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The endpoint that was created.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName",
        "SnsTopicArn"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the AWS DMS event notification subscription. This name must be less than 255 characters.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it. </p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p> The type of AWS DMS resource that generates the events. For example, if you want to be notified of events generated by a replication instance, you set this parameter to <code>replication-instance</code>. If this value isn't specified, all events are returned. </p> <p>Valid values: <code>replication-instance</code> | <code>replication-task</code> </p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>A list of event categories for a source type that you want to subscribe to. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html\">Working with Events and Notifications</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "SourceIds": {
          "shape": "SourceIdsList",
          "documentation": "<p>A list of identifiers for which AWS DMS provides notification events.</p> <p>If you don't specify a value, notifications are provided for all sources.</p> <p>If you specify multiple values, they must be of the same type. For example, if you specify a database instance ID, then all of the other values must be database instance IDs.</p>"
        },
        "Enabled": {
          "shape": "BooleanOptional",
          "documentation": "<p> A Boolean value; set to <code>true</code> to activate the subscription, or set to <code>false</code> to create the subscription but not activate it. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more tags to be assigned to the event subscription.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateEventSubscriptionResponse": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription",
          "documentation": "<p>The event subscription that was created.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateReplicationInstanceMessage": {
      "type": "structure",
      "required": [
        "ReplicationInstanceIdentifier",
        "ReplicationInstanceClass"
      ],
      "members": {
        "ReplicationInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The replication instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1-63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>myrepinstance</code> </p>"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of storage (in gigabytes) to be initially allocated for the replication instance.</p>"
        },
        "ReplicationInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>\"dms.c4.large\"</code>.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\"> Selecting the right AWS DMS replication instance for your migration</a>. </p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p> Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. </p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone where the replication instance will be created. The default value is a random, system-chosen Availability Zone in the endpoint's AWS Region, for example: <code>us-east-1d</code> </p>"
        },
        "ReplicationSubnetGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>A subnet group to associate with the replication instance.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>Default: A 30-minute window selected at random from an 8-hour block of time per AWS Region, occurring on a random day of the week.</p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version number of the replication instance.</p> <p>If an engine version number is not specified when a replication instance is created, the default is the latest engine version available.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether minor engine upgrades are applied automatically to the replication instance during the maintenance window. This parameter defaults to <code>true</code>.</p> <p>Default: <code>true</code> </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more tags to be assigned to the replication instance.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>An AWS KMS key identifier that is used to encrypt the data on the replication instance.</p> <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then AWS DMS uses your default encryption key.</p> <p>AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p> Specifies the accessibility options for the replication instance. A value of <code>true</code> represents an instance with a public IP address. A value of <code>false</code> represents an instance with a private IP address. The default value is <code>true</code>. </p>"
        },
        "DnsNameServers": {
          "shape": "String",
          "documentation": "<p>A list of custom DNS name servers supported for the replication instance to access your on-premise source or target database. This list overrides the default name servers supported by the replication instance. You can specify a comma-separated list of internet addresses for up to four on-premise DNS name servers. For example: <code>\"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4\"</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateReplicationInstanceResponse": {
      "type": "structure",
      "members": {
        "ReplicationInstance": {
          "shape": "ReplicationInstance",
          "documentation": "<p>The replication instance that was created.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateReplicationSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "ReplicationSubnetGroupIdentifier",
        "ReplicationSubnetGroupDescription",
        "SubnetIds"
      ],
      "members": {
        "ReplicationSubnetGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The name for the replication subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens. Must not be \"default\".</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "ReplicationSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>The description for the subnet group.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>One or more subnet IDs to be assigned to the subnet group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more tags to be assigned to the subnet group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateReplicationSubnetGroupResponse": {
      "type": "structure",
      "members": {
        "ReplicationSubnetGroup": {
          "shape": "ReplicationSubnetGroup",
          "documentation": "<p>The replication subnet group that was created.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateReplicationTaskMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskIdentifier",
        "SourceEndpointArn",
        "TargetEndpointArn",
        "ReplicationInstanceArn",
        "MigrationType",
        "TableMappings"
      ],
      "members": {
        "ReplicationTaskIdentifier": {
          "shape": "String",
          "documentation": "<p>An identifier for the replication task.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1-255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "SourceEndpointArn": {
          "shape": "String",
          "documentation": "<p>An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.</p>"
        },
        "TargetEndpointArn": {
          "shape": "String",
          "documentation": "<p>An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.</p>"
        },
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of a replication instance.</p>"
        },
        "MigrationType": {
          "shape": "MigrationTypeValue",
          "documentation": "<p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code> </p>"
        },
        "TableMappings": {
          "shape": "String",
          "documentation": "<p>The table mappings for the task, in JSON format. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html\">Using Table Mapping to Specify Task Settings</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "ReplicationTaskSettings": {
          "shape": "String",
          "documentation": "<p>Overall settings for the task, in JSON format. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html\">Specifying Task Settings for AWS Database Migration Service Tasks</a> in the <i>AWS Database Migration User Guide.</i> </p>"
        },
        "CdcStartTime": {
          "shape": "TStamp",
          "documentation": "<p>Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>"
        },
        "CdcStartPosition": {
          "shape": "String",
          "documentation": "<p>Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p> The value can be in date, checkpoint, or LSN/SCN format.</p> <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p> <p>Checkpoint Example: --cdc-start-position \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\"</p> <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p> <note> <p>When you use this task setting with a source PostgreSQL database, a logical replication slot should already be created and associated with the source endpoint. You can verify this by setting the <code>slotName</code> extra connection attribute to the name of this logical replication slot. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra Connection Attributes When Using PostgreSQL as a Source for AWS DMS</a>.</p> </note>"
        },
        "CdcStopPosition": {
          "shape": "String",
          "documentation": "<p>Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.</p> <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p> <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more tags to be assigned to the replication task.</p>"
        },
        "TaskData": {
          "shape": "String",
          "documentation": "<p>Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html\">Specifying Supplemental Data for Task Settings</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateReplicationTaskResponse": {
      "type": "structure",
      "members": {
        "ReplicationTask": {
          "shape": "ReplicationTask",
          "documentation": "<p>The replication task that was created.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DataFormatValue": {
      "type": "string",
      "enum": [
        "csv",
        "parquet"
      ]
    },
    "DeleteCertificateMessage": {
      "type": "structure",
      "required": [
        "CertificateArn"
      ],
      "members": {
        "CertificateArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deleted certificate.</p>"
        }
      }
    },
    "DeleteCertificateResponse": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "Certificate",
          "documentation": "<p>The Secure Sockets Layer (SSL) certificate.</p>"
        }
      }
    },
    "DeleteConnectionMessage": {
      "type": "structure",
      "required": [
        "EndpointArn",
        "ReplicationInstanceArn"
      ],
      "members": {
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        },
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteConnectionResponse": {
      "type": "structure",
      "members": {
        "Connection": {
          "shape": "Connection",
          "documentation": "<p>The connection that is being deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteEndpointMessage": {
      "type": "structure",
      "required": [
        "EndpointArn"
      ],
      "members": {
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteEndpointResponse": {
      "type": "structure",
      "members": {
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The endpoint that was deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the DMS event notification subscription to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteEventSubscriptionResponse": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription",
          "documentation": "<p>The event subscription that was deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteReplicationInstanceMessage": {
      "type": "structure",
      "required": [
        "ReplicationInstanceArn"
      ],
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteReplicationInstanceResponse": {
      "type": "structure",
      "members": {
        "ReplicationInstance": {
          "shape": "ReplicationInstance",
          "documentation": "<p>The replication instance that was deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteReplicationSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "ReplicationSubnetGroupIdentifier"
      ],
      "members": {
        "ReplicationSubnetGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The subnet group name of the replication instance.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteReplicationSubnetGroupResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "DeleteReplicationTaskAssessmentRunMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskAssessmentRunArn"
      ],
      "members": {
        "ReplicationTaskAssessmentRunArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the premigration assessment run to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteReplicationTaskAssessmentRunResponse": {
      "type": "structure",
      "members": {
        "ReplicationTaskAssessmentRun": {
          "shape": "ReplicationTaskAssessmentRun",
          "documentation": "<p>The <code>ReplicationTaskAssessmentRun</code> object for the deleted assessment run.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteReplicationTaskMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskArn"
      ],
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task to be deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteReplicationTaskResponse": {
      "type": "structure",
      "members": {
        "ReplicationTask": {
          "shape": "ReplicationTask",
          "documentation": "<p>The deleted replication task.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeAccountAttributesMessage": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "DescribeAccountAttributesResponse": {
      "type": "structure",
      "members": {
        "AccountQuotas": {
          "shape": "AccountQuotaList",
          "documentation": "<p>Account quota information.</p>"
        },
        "UniqueAccountIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique AWS DMS identifier for an account in a particular AWS Region. The value of this identifier has the following format: <code>c99999999999</code>. DMS uses this identifier to name artifacts. For example, DMS uses this identifier to name the default Amazon S3 bucket for storing task assessment reports in a given AWS Region. The format of this S3 bucket name is the following: <code>dms-<i>AccountNumber</i>-<i>UniqueAccountIdentifier</i>.</code> Here is an example name for this default S3 bucket: <code>dms-111122223333-c44445555666</code>.</p> <note> <p>AWS DMS supports the <code>UniqueAccountIdentifier</code> parameter in versions 3.1.4 and later.</p> </note>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeApplicableIndividualAssessmentsMessage": {
      "type": "structure",
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of a migration task on which you want to base the default list of individual assessments.</p>"
        },
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>ARN of a replication instance on which you want to base the default list of individual assessments.</p>"
        },
        "SourceEngineName": {
          "shape": "String",
          "documentation": "<p>Name of a database engine that the specified replication instance supports as a source.</p>"
        },
        "TargetEngineName": {
          "shape": "String",
          "documentation": "<p>Name of a database engine that the specified replication instance supports as a target.</p>"
        },
        "MigrationType": {
          "shape": "MigrationTypeValue",
          "documentation": "<p>Name of the migration type that each provided individual assessment must support.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>Maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>Optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeApplicableIndividualAssessmentsResponse": {
      "type": "structure",
      "members": {
        "IndividualAssessmentNames": {
          "shape": "IndividualAssessmentNameList",
          "documentation": "<p>List of names for the individual assessments supported by the premigration assessment run that you start based on the specified request parameters. For more information on the available individual assessments, including compatibility with different migration task configurations, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html\">Working with premigration assessment runs</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>Pagination token returned for you to pass to a subsequent request. If you pass this token as the <code>Marker</code> value in a subsequent request, the response includes only records beyond the marker, up to the value specified in the request by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeCertificatesMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to the certificates described in the form of key-value pairs.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 10</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      }
    },
    "DescribeCertificatesResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>The pagination token.</p>"
        },
        "Certificates": {
          "shape": "CertificateList",
          "documentation": "<p>The Secure Sockets Layer (SSL) certificates associated with the replication instance.</p>"
        }
      }
    },
    "DescribeConnectionsMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>The filters applied to the connection.</p> <p>Valid filter names: endpoint-arn | replication-instance-arn</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeConnectionsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "Connections": {
          "shape": "ConnectionList",
          "documentation": "<p>A description of the connections.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEndpointTypesMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to the endpoint types.</p> <p>Valid filter names: engine-name | endpoint-type</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEndpointTypesResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "SupportedEndpointTypes": {
          "shape": "SupportedEndpointTypeList",
          "documentation": "<p>The types of endpoints that are supported.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEndpointsMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to the endpoints.</p> <p>Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEndpointsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "Endpoints": {
          "shape": "EndpointList",
          "documentation": "<p>Endpoint description.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventCategoriesMessage": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "String",
          "documentation": "<p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | replication-task</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to the event categories.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventCategoriesResponse": {
      "type": "structure",
      "members": {
        "EventCategoryGroupList": {
          "shape": "EventCategoryGroupList",
          "documentation": "<p>A list of event categories.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventSubscriptionsMessage": {
      "type": "structure",
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the AWS DMS event subscription to be described.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to event subscriptions.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventSubscriptionsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "EventSubscriptionsList": {
          "shape": "EventSubscriptionsList",
          "documentation": "<p>A list of event subscriptions.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventsMessage": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p> The identifier of an event source.</p>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>The type of AWS DMS resource that generates events.</p> <p>Valid values: replication-instance | replication-task</p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>The start time for the events to be listed.</p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p>The end time for the events to be listed.</p>"
        },
        "Duration": {
          "shape": "IntegerOptional",
          "documentation": "<p>The duration of the events to be listed.</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>A list of event categories for the source type that you've chosen.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to events.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "Events": {
          "shape": "EventList",
          "documentation": "<p>The events described.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeOrderableReplicationInstancesMessage": {
      "type": "structure",
      "members": {
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeOrderableReplicationInstancesResponse": {
      "type": "structure",
      "members": {
        "OrderableReplicationInstances": {
          "shape": "OrderableReplicationInstanceList",
          "documentation": "<p>The order-able replication instances available.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribePendingMaintenanceActionsMessage": {
      "type": "structure",
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p/>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribePendingMaintenanceActionsResponse": {
      "type": "structure",
      "members": {
        "PendingMaintenanceActions": {
          "shape": "PendingMaintenanceActions",
          "documentation": "<p>The pending maintenance action.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeRefreshSchemasStatusMessage": {
      "type": "structure",
      "required": [
        "EndpointArn"
      ],
      "members": {
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeRefreshSchemasStatusResponse": {
      "type": "structure",
      "members": {
        "RefreshSchemasStatus": {
          "shape": "RefreshSchemasStatus",
          "documentation": "<p>The status of the schema.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationInstanceTaskLogsMessage": {
      "type": "structure",
      "required": [
        "ReplicationInstanceArn"
      ],
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "DescribeReplicationInstanceTaskLogsResponse": {
      "type": "structure",
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "ReplicationInstanceTaskLogs": {
          "shape": "ReplicationInstanceTaskLogsList",
          "documentation": "<p>An array of replication task log metadata. Each member of the array contains the replication task name, ARN, and task log size (in bytes). </p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "DescribeReplicationInstancesMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to replication instances.</p> <p>Valid filter names: replication-instance-arn | replication-instance-id | replication-instance-class | engine-version</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationInstancesResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "ReplicationInstances": {
          "shape": "ReplicationInstanceList",
          "documentation": "<p>The replication instances described.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationSubnetGroupsMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to replication subnet groups.</p> <p>Valid filter names: replication-subnet-group-id</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationSubnetGroupsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "ReplicationSubnetGroups": {
          "shape": "ReplicationSubnetGroups",
          "documentation": "<p>A description of the replication subnet groups.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationTaskAssessmentResultsMessage": {
      "type": "structure",
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input parameter is specified, the API returns only one result and ignore the values of the <code>MaxRecords</code> and <code>Marker</code> parameters. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationTaskAssessmentResultsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "BucketName": {
          "shape": "String",
          "documentation": "<p>- The Amazon S3 bucket where the task assessment report is located. </p>"
        },
        "ReplicationTaskAssessmentResults": {
          "shape": "ReplicationTaskAssessmentResultList",
          "documentation": "<p> The task assessment report. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationTaskAssessmentRunsMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to the premigration assessment runs described in the form of key-value pairs.</p> <p>Valid filter names: <code>replication-task-assessment-run-arn</code>, <code>replication-task-arn</code>, <code>replication-instance-arn</code>, <code>status</code> </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationTaskAssessmentRunsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A pagination token returned for you to pass to a subsequent request. If you pass this token as the <code>Marker</code> value in a subsequent request, the response includes only records beyond the marker, up to the value specified in the request by <code>MaxRecords</code>.</p>"
        },
        "ReplicationTaskAssessmentRuns": {
          "shape": "ReplicationTaskAssessmentRunList",
          "documentation": "<p>One or more premigration assessment runs as specified by <code>Filters</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationTaskIndividualAssessmentsMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to the individual assessments described in the form of key-value pairs.</p> <p>Valid filter names: <code>replication-task-assessment-run-arn</code>, <code>replication-task-arn</code>, <code>status</code> </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationTaskIndividualAssessmentsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A pagination token returned for you to pass to a subsequent request. If you pass this token as the <code>Marker</code> value in a subsequent request, the response includes only records beyond the marker, up to the value specified in the request by <code>MaxRecords</code>.</p>"
        },
        "ReplicationTaskIndividualAssessments": {
          "shape": "ReplicationTaskIndividualAssessmentList",
          "documentation": "<p>One or more individual assessments as specified by <code>Filters</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationTasksMessage": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to replication tasks.</p> <p>Valid filter names: replication-task-arn | replication-task-id | migration-type | endpoint-arn | replication-instance-arn</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "WithoutSettings": {
          "shape": "BooleanOptional",
          "documentation": "<p>An option to set to avoid returning information about settings. Use this to reduce overhead when setting information is too large. To use this option, choose <code>true</code>; otherwise, choose <code>false</code> (the default).</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReplicationTasksResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "ReplicationTasks": {
          "shape": "ReplicationTaskList",
          "documentation": "<p>A description of the replication tasks.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeSchemasMessage": {
      "type": "structure",
      "required": [
        "EndpointArn"
      ],
      "members": {
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeSchemasResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "Schemas": {
          "shape": "SchemaList",
          "documentation": "<p>The described schema.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeTableStatisticsMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskArn"
      ],
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 500.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters applied to table statistics.</p> <p>Valid filter names: schema-name | table-name | table-state</p> <p>A combination of filters creates an AND condition where each record matches all specified filters.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeTableStatisticsResponse": {
      "type": "structure",
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task.</p>"
        },
        "TableStatistics": {
          "shape": "TableStatisticsList",
          "documentation": "<p>The table statistics.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DmsSslModeValue": {
      "type": "string",
      "enum": [
        "none",
        "require",
        "verify-ca",
        "verify-full"
      ]
    },
    "DmsTransferSettings": {
      "type": "structure",
      "members": {
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p> The IAM role that has permission to access the Amazon S3 bucket. </p>"
        },
        "BucketName": {
          "shape": "String",
          "documentation": "<p> The name of the S3 bucket to use. </p>"
        }
      },
      "documentation": "<p> The settings in JSON format for the DMS Transfer type source endpoint. </p>"
    },
    "DynamoDbSettings": {
      "type": "structure",
      "required": [
        "ServiceAccessRoleArn"
      ],
      "members": {
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) used by the service access IAM role. </p>"
        }
      },
      "documentation": "<p>Provides the Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role used to define an Amazon DynamoDB target endpoint.</p>"
    },
    "ElasticsearchSettings": {
      "type": "structure",
      "required": [
        "ServiceAccessRoleArn",
        "EndpointUri"
      ],
      "members": {
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) used by service to access the IAM role.</p>"
        },
        "EndpointUri": {
          "shape": "String",
          "documentation": "<p>The endpoint for the Elasticsearch cluster.</p>"
        },
        "FullLoadErrorPercentage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum percentage of records that can fail to be written before a full load operation stops. </p>"
        },
        "ErrorRetryDuration": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of seconds for which DMS retries failed API requests to the Elasticsearch cluster.</p>"
        }
      },
      "documentation": "<p>Provides information that defines an Elasticsearch endpoint.</p>"
    },
    "EncodingTypeValue": {
      "type": "string",
      "enum": [
        "plain",
        "plain-dictionary",
        "rle-dictionary"
      ]
    },
    "EncryptionModeValue": {
      "type": "string",
      "enum": [
        "sse-s3",
        "sse-kms"
      ]
    },
    "Endpoint": {
      "type": "structure",
      "members": {
        "EndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.</p>"
        },
        "EndpointType": {
          "shape": "ReplicationEndpointTypeValue",
          "documentation": "<p>The type of endpoint. Valid values are <code>source</code> and <code>target</code>.</p>"
        },
        "EngineName": {
          "shape": "String",
          "documentation": "<p>The database engine name. Valid values, depending on the EndpointType, include <code>\"mysql\"</code>, <code>\"oracle\"</code>, <code>\"postgres\"</code>, <code>\"mariadb\"</code>, <code>\"aurora\"</code>, <code>\"aurora-postgresql\"</code>, <code>\"redshift\"</code>, <code>\"s3\"</code>, <code>\"db2\"</code>, <code>\"azuredb\"</code>, <code>\"sybase\"</code>, <code>\"dynamodb\"</code>, <code>\"mongodb\"</code>, <code>\"kinesis\"</code>, <code>\"kafka\"</code>, <code>\"elasticsearch\"</code>, <code>\"documentdb\"</code>, <code>\"sqlserver\"</code>, and <code>\"neptune\"</code>.</p>"
        },
        "EngineDisplayName": {
          "shape": "String",
          "documentation": "<p>The expanded name for the engine name. For example, if the <code>EngineName</code> parameter is \"aurora,\" this value would be \"Amazon Aurora MySQL.\"</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>The user name used to connect to the endpoint.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>The name of the server at the endpoint.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port value used to access the endpoint.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>The name of the database at the endpoint.</p>"
        },
        "ExtraConnectionAttributes": {
          "shape": "String",
          "documentation": "<p>Additional connection attributes used to connect to the endpoint.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the endpoint.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>An AWS KMS key identifier that is used to encrypt the connection parameters for the endpoint.</p> <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then AWS DMS uses your default encryption key.</p> <p>AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        },
        "CertificateArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) used for SSL connection to the endpoint.</p>"
        },
        "SslMode": {
          "shape": "DmsSslModeValue",
          "documentation": "<p>The SSL mode used to connect to the endpoint. The default value is <code>none</code>.</p>"
        },
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) used by the service access IAM role.</p>"
        },
        "ExternalTableDefinition": {
          "shape": "String",
          "documentation": "<p>The external table definition.</p>"
        },
        "ExternalId": {
          "shape": "String",
          "documentation": "<p> Value returned by a call to CreateEndpoint that can be used for cross-account validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a cross-account. </p>"
        },
        "DynamoDbSettings": {
          "shape": "DynamoDbSettings",
          "documentation": "<p>The settings for the DynamoDB target endpoint. For more information, see the <code>DynamoDBSettings</code> structure.</p>"
        },
        "S3Settings": {
          "shape": "S3Settings",
          "documentation": "<p>The settings for the S3 target endpoint. For more information, see the <code>S3Settings</code> structure.</p>"
        },
        "DmsTransferSettings": {
          "shape": "DmsTransferSettings",
          "documentation": "<p>The settings in JSON format for the DMS transfer type of source endpoint. </p> <p>Possible settings include the following:</p> <ul> <li> <p> <code>ServiceAccessRoleArn</code> - The IAM role that has permission to access the Amazon S3 bucket.</p> </li> <li> <p> <code>BucketName</code> - The name of the S3 bucket to use.</p> </li> <li> <p> <code>CompressionType</code> - An optional parameter to use GZIP to compress the target files. To use GZIP, set this value to <code>NONE</code> (the default). To keep the files uncompressed, don't use this value.</p> </li> </ul> <p>Shorthand syntax for these settings is as follows: <code>ServiceAccessRoleArn=string,BucketName=string,CompressionType=string</code> </p> <p>JSON syntax for these settings is as follows: <code>{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"|\"gzip\" } </code> </p>"
        },
        "MongoDbSettings": {
          "shape": "MongoDbSettings",
          "documentation": "<p>The settings for the MongoDB source endpoint. For more information, see the <code>MongoDbSettings</code> structure.</p>"
        },
        "KinesisSettings": {
          "shape": "KinesisSettings",
          "documentation": "<p>The settings for the Amazon Kinesis target endpoint. For more information, see the <code>KinesisSettings</code> structure.</p>"
        },
        "KafkaSettings": {
          "shape": "KafkaSettings",
          "documentation": "<p>The settings for the Apache Kafka target endpoint. For more information, see the <code>KafkaSettings</code> structure.</p>"
        },
        "ElasticsearchSettings": {
          "shape": "ElasticsearchSettings",
          "documentation": "<p>The settings for the Elasticsearch source endpoint. For more information, see the <code>ElasticsearchSettings</code> structure.</p>"
        },
        "NeptuneSettings": {
          "shape": "NeptuneSettings",
          "documentation": "<p>The settings for the Amazon Neptune target endpoint. For more information, see the <code>NeptuneSettings</code> structure.</p>"
        },
        "RedshiftSettings": {
          "shape": "RedshiftSettings",
          "documentation": "<p>Settings for the Amazon Redshift endpoint.</p>"
        },
        "PostgreSQLSettings": {
          "shape": "PostgreSQLSettings",
          "documentation": "<p>The settings for the PostgreSQL source and target endpoint. For more information, see the <code>PostgreSQLSettings</code> structure.</p>"
        },
        "MySQLSettings": {
          "shape": "MySQLSettings",
          "documentation": "<p>The settings for the MySQL source and target endpoint. For more information, see the <code>MySQLSettings</code> structure.</p>"
        },
        "OracleSettings": {
          "shape": "OracleSettings",
          "documentation": "<p>The settings for the Oracle source and target endpoint. For more information, see the <code>OracleSettings</code> structure.</p>"
        },
        "SybaseSettings": {
          "shape": "SybaseSettings",
          "documentation": "<p>The settings for the SAP ASE source and target endpoint. For more information, see the <code>SybaseSettings</code> structure.</p>"
        },
        "MicrosoftSQLServerSettings": {
          "shape": "MicrosoftSQLServerSettings",
          "documentation": "<p>The settings for the Microsoft SQL Server source and target endpoint. For more information, see the <code>MicrosoftSQLServerSettings</code> structure.</p>"
        },
        "IBMDb2Settings": {
          "shape": "IBMDb2Settings",
          "documentation": "<p>The settings for the IBM Db2 LUW source endpoint. For more information, see the <code>IBMDb2Settings</code> structure. </p>"
        }
      },
      "documentation": "<p>Describes an endpoint of a database instance in response to operations such as the following:</p> <ul> <li> <p> <code>CreateEndpoint</code> </p> </li> <li> <p> <code>DescribeEndpoint</code> </p> </li> <li> <p> <code>DescribeEndpointTypes</code> </p> </li> <li> <p> <code>ModifyEndpoint</code> </p> </li> </ul>"
    },
    "EndpointList": {
      "type": "list",
      "member": {
        "shape": "Endpoint"
      }
    },
    "Event": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p> The identifier of an event source.</p>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | endpoint | replication-task</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>The event message.</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>The event categories available for the specified source type.</p>"
        },
        "Date": {
          "shape": "TStamp",
          "documentation": "<p>The date of the event.</p>"
        }
      },
      "documentation": "<p>Describes an identifiable significant activity that affects a replication instance or task. This object can provide the message, the available event categories, the date and source of the event, and the AWS DMS resource type.</p>"
    },
    "EventCategoriesList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "EventCategoryGroup": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "String",
          "documentation": "<p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | replication-server | security-group | replication-task</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p> A list of event categories from a source type that you've chosen.</p>"
        }
      },
      "documentation": "<p>Lists categories of events subscribed to, and generated by, the applicable AWS DMS resource type. This data type appears in response to the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_EventCategoryGroup.html\"> <code>DescribeEventCategories</code> </a> action.</p>"
    },
    "EventCategoryGroupList": {
      "type": "list",
      "member": {
        "shape": "EventCategoryGroup"
      }
    },
    "EventList": {
      "type": "list",
      "member": {
        "shape": "Event"
      }
    },
    "EventSubscription": {
      "type": "structure",
      "members": {
        "CustomerAwsId": {
          "shape": "String",
          "documentation": "<p>The AWS customer account associated with the AWS DMS event notification subscription.</p>"
        },
        "CustSubscriptionId": {
          "shape": "String",
          "documentation": "<p>The AWS DMS event notification subscription Id.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>The topic ARN of the AWS DMS event notification subscription.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the AWS DMS event notification subscription.</p> <p>Constraints:</p> <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p> <p>The status \"no-permission\" indicates that AWS DMS no longer has permission to post to the SNS topic. The status \"topic-not-exist\" indicates that the topic was deleted after the subscription was created.</p>"
        },
        "SubscriptionCreationTime": {
          "shape": "String",
          "documentation": "<p>The time the AWS DMS event notification subscription was created.</p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p> The type of AWS DMS resource that generates events. </p> <p>Valid values: replication-instance | replication-server | security-group | replication-task</p>"
        },
        "SourceIdsList": {
          "shape": "SourceIdsList",
          "documentation": "<p>A list of source Ids for the event subscription.</p>"
        },
        "EventCategoriesList": {
          "shape": "EventCategoriesList",
          "documentation": "<p>A lists of event categories.</p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Boolean value that indicates if the event subscription is enabled.</p>"
        }
      },
      "documentation": "<p>Describes an event notification subscription created by the <code>CreateEventSubscription</code> operation.</p>"
    },
    "EventSubscriptionsList": {
      "type": "list",
      "member": {
        "shape": "EventSubscription"
      }
    },
    "ExcludeTestList": {
      "type": "list",
      "member": {
        "shape": "String"
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
          "documentation": "<p>The name of the filter as specified for a <code>Describe*</code> or similar operation.</p>"
        },
        "Values": {
          "shape": "FilterValueList",
          "documentation": "<p>The filter value, which can specify one or more values used to narrow the returned results.</p>"
        }
      },
      "documentation": "<p>Identifies the name and value of a filter object. This filter is used to limit the number and type of AWS DMS objects that are returned for a particular <code>Describe*</code> or similar operation.</p>"
    },
    "FilterList": {
      "type": "list",
      "member": {
        "shape": "Filter"
      }
    },
    "FilterValueList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "IBMDb2Settings": {
      "type": "structure",
      "members": {
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>Database name for the endpoint.</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>Endpoint connection password.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Endpoint TCP port.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>Fully qualified domain name of the endpoint.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>Endpoint connection user name.</p>"
        }
      },
      "documentation": "<p>Provides information that defines an IBM Db2 LUW endpoint.</p>"
    },
    "ImportCertificateMessage": {
      "type": "structure",
      "required": [
        "CertificateIdentifier"
      ],
      "members": {
        "CertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>A customer-assigned name for the certificate. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.</p>"
        },
        "CertificatePem": {
          "shape": "String",
          "documentation": "<p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>"
        },
        "CertificateWallet": {
          "shape": "CertificateWallet",
          "documentation": "<p>The location of an imported Oracle Wallet certificate for use with SSL.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the certificate.</p>"
        }
      }
    },
    "ImportCertificateResponse": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "Certificate",
          "documentation": "<p>The certificate to be uploaded.</p>"
        }
      }
    },
    "IncludeTestList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "IndividualAssessmentNameList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Integer": {
      "type": "integer"
    },
    "IntegerOptional": {
      "type": "integer"
    },
    "KafkaSettings": {
      "type": "structure",
      "members": {
        "Broker": {
          "shape": "String",
          "documentation": "<p>The broker location and port of the Kafka broker that hosts your Kafka instance. Specify the broker in the form <code> <i>broker-hostname-or-ip</i>:<i>port</i> </code>. For example, <code>\"ec2-12-345-678-901.compute-1.amazonaws.com:2345\"</code>.</p>"
        },
        "Topic": {
          "shape": "String",
          "documentation": "<p>The topic to which you migrate the data. If you don't specify a topic, AWS DMS specifies <code>\"kafka-default-topic\"</code> as the migration topic.</p>"
        },
        "MessageFormat": {
          "shape": "MessageFormatValue",
          "documentation": "<p>The output format for the records created on the endpoint. The message format is <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no tab).</p>"
        },
        "IncludeTransactionDetails": {
          "shape": "BooleanOptional",
          "documentation": "<p>Provides detailed transaction information from the source database. This information includes a commit timestamp, a log position, and values for <code>transaction_id</code>, previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record offset within a transaction). The default is <code>false</code>.</p>"
        },
        "IncludePartitionValue": {
          "shape": "BooleanOptional",
          "documentation": "<p>Shows the partition value within the Kafka message output, unless the partition type is <code>schema-table-type</code>. The default is <code>false</code>.</p>"
        },
        "PartitionIncludeSchemaTable": {
          "shape": "BooleanOptional",
          "documentation": "<p>Prefixes schema and table names to partition values, when the partition type is <code>primary-key-type</code>. Doing this increases data distribution among Kafka partitions. For example, suppose that a SysBench schema has thousands of tables and each table has only limited range for a primary key. In this case, the same primary key is sent from thousands of tables to the same partition, which causes throttling. The default is <code>false</code>.</p>"
        },
        "IncludeTableAlterOperations": {
          "shape": "BooleanOptional",
          "documentation": "<p>Includes any data definition language (DDL) operations that change the table in the control data, such as <code>rename-table</code>, <code>drop-table</code>, <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The default is <code>false</code>.</p>"
        },
        "IncludeControlDetails": {
          "shape": "BooleanOptional",
          "documentation": "<p>Shows detailed control information for table definition, column definition, and table and column changes in the Kafka message output. The default is <code>false</code>.</p>"
        },
        "MessageMaxBytes": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum size in bytes for records created on the endpoint The default is 1,000,000.</p>"
        },
        "IncludeNullAndEmpty": {
          "shape": "BooleanOptional",
          "documentation": "<p>Include NULL and empty columns for records migrated to the endpoint. The default is <code>false</code>.</p>"
        }
      },
      "documentation": "<p>Provides information that describes an Apache Kafka endpoint. This information includes the output format of records applied to the endpoint and details of transaction and control table data information.</p>"
    },
    "KeyList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "KinesisSettings": {
      "type": "structure",
      "members": {
        "StreamArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams endpoint.</p>"
        },
        "MessageFormat": {
          "shape": "MessageFormatValue",
          "documentation": "<p>The output format for the records created on the endpoint. The message format is <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no tab).</p>"
        },
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the AWS Identity and Access Management (IAM) role that AWS DMS uses to write to the Kinesis data stream.</p>"
        },
        "IncludeTransactionDetails": {
          "shape": "BooleanOptional",
          "documentation": "<p>Provides detailed transaction information from the source database. This information includes a commit timestamp, a log position, and values for <code>transaction_id</code>, previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record offset within a transaction). The default is <code>false</code>.</p>"
        },
        "IncludePartitionValue": {
          "shape": "BooleanOptional",
          "documentation": "<p>Shows the partition value within the Kinesis message output, unless the partition type is <code>schema-table-type</code>. The default is <code>false</code>.</p>"
        },
        "PartitionIncludeSchemaTable": {
          "shape": "BooleanOptional",
          "documentation": "<p>Prefixes schema and table names to partition values, when the partition type is <code>primary-key-type</code>. Doing this increases data distribution among Kinesis shards. For example, suppose that a SysBench schema has thousands of tables and each table has only limited range for a primary key. In this case, the same primary key is sent from thousands of tables to the same shard, which causes throttling. The default is <code>false</code>.</p>"
        },
        "IncludeTableAlterOperations": {
          "shape": "BooleanOptional",
          "documentation": "<p>Includes any data definition language (DDL) operations that change the table in the control data, such as <code>rename-table</code>, <code>drop-table</code>, <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The default is <code>false</code>.</p>"
        },
        "IncludeControlDetails": {
          "shape": "BooleanOptional",
          "documentation": "<p>Shows detailed control information for table definition, column definition, and table and column changes in the Kinesis message output. The default is <code>false</code>.</p>"
        },
        "IncludeNullAndEmpty": {
          "shape": "BooleanOptional",
          "documentation": "<p>Include NULL and empty columns for records migrated to the endpoint. The default is <code>false</code>.</p>"
        }
      },
      "documentation": "<p>Provides information that describes an Amazon Kinesis Data Stream endpoint. This information includes the output format of records applied to the endpoint and details of transaction and control table data information.</p>"
    },
    "ListTagsForResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the AWS DMS resource.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>A list of tags for the resource.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "Long": {
      "type": "long"
    },
    "MessageFormatValue": {
      "type": "string",
      "enum": [
        "json",
        "json-unformatted"
      ]
    },
    "MicrosoftSQLServerSettings": {
      "type": "structure",
      "members": {
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Endpoint TCP port.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>Database name for the endpoint.</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>Endpoint connection password.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>Fully qualified domain name of the endpoint.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>Endpoint connection user name.</p>"
        }
      },
      "documentation": "<p>Provides information that defines a Microsoft SQL Server endpoint.</p>"
    },
    "MigrationTypeValue": {
      "type": "string",
      "enum": [
        "full-load",
        "cdc",
        "full-load-and-cdc"
      ]
    },
    "ModifyEndpointMessage": {
      "type": "structure",
      "required": [
        "EndpointArn"
      ],
      "members": {
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        },
        "EndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The database endpoint identifier. Identifiers must begin with a letter and must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two consecutive hyphens.</p>"
        },
        "EndpointType": {
          "shape": "ReplicationEndpointTypeValue",
          "documentation": "<p>The type of endpoint. Valid values are <code>source</code> and <code>target</code>.</p>"
        },
        "EngineName": {
          "shape": "String",
          "documentation": "<p>The type of engine for the endpoint. Valid values, depending on the EndpointType, include <code>\"mysql\"</code>, <code>\"oracle\"</code>, <code>\"postgres\"</code>, <code>\"mariadb\"</code>, <code>\"aurora\"</code>, <code>\"aurora-postgresql\"</code>, <code>\"redshift\"</code>, <code>\"s3\"</code>, <code>\"db2\"</code>, <code>\"azuredb\"</code>, <code>\"sybase\"</code>, <code>\"dynamodb\"</code>, <code>\"mongodb\"</code>, <code>\"kinesis\"</code>, <code>\"kafka\"</code>, <code>\"elasticsearch\"</code>, <code>\"documentdb\"</code>, <code>\"sqlserver\"</code>, and <code>\"neptune\"</code>.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>The user name to be used to login to the endpoint database.</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>The password to be used to login to the endpoint database.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>The name of the server where the endpoint database resides.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port used by the endpoint database.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>The name of the endpoint database.</p>"
        },
        "ExtraConnectionAttributes": {
          "shape": "String",
          "documentation": "<p>Additional attributes associated with the connection. To reset this parameter, pass the empty string (\"\") as an argument.</p>"
        },
        "CertificateArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>"
        },
        "SslMode": {
          "shape": "DmsSslModeValue",
          "documentation": "<p>The SSL mode used to connect to the endpoint. The default value is <code>none</code>.</p>"
        },
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) for the service access role you want to use to modify the endpoint. </p>"
        },
        "ExternalTableDefinition": {
          "shape": "String",
          "documentation": "<p>The external table definition.</p>"
        },
        "DynamoDbSettings": {
          "shape": "DynamoDbSettings",
          "documentation": "<p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html\">Using Object Mapping to Migrate Data to DynamoDB</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "S3Settings": {
          "shape": "S3Settings",
          "documentation": "<p>Settings in JSON format for the target Amazon S3 endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring\">Extra Connection Attributes When Using Amazon S3 as a Target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "DmsTransferSettings": {
          "shape": "DmsTransferSettings",
          "documentation": "<p>The settings in JSON format for the DMS transfer type of source endpoint. </p> <p>Attributes include the following:</p> <ul> <li> <p>serviceAccessRoleArn - The AWS Identity and Access Management (IAM) role that has permission to access the Amazon S3 bucket.</p> </li> <li> <p>BucketName - The name of the S3 bucket to use.</p> </li> <li> <p>compressionType - An optional parameter to use GZIP to compress the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed.</p> </li> </ul> <p>Shorthand syntax for these settings is as follows: <code>ServiceAccessRoleArn=string ,BucketName=string,CompressionType=string</code> </p> <p>JSON syntax for these settings is as follows: <code>{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"|\"gzip\" } </code> </p>"
        },
        "MongoDbSettings": {
          "shape": "MongoDbSettings",
          "documentation": "<p>Settings in JSON format for the source MongoDB endpoint. For more information about the available settings, see the configuration properties section in <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html\"> Using MongoDB as a Target for AWS Database Migration Service</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "KinesisSettings": {
          "shape": "KinesisSettings",
          "documentation": "<p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html\">Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "KafkaSettings": {
          "shape": "KafkaSettings",
          "documentation": "<p>Settings in JSON format for the target Apache Kafka endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html\">Using Apache Kafka as a Target for AWS Database Migration Service</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "ElasticsearchSettings": {
          "shape": "ElasticsearchSettings",
          "documentation": "<p>Settings in JSON format for the target Elasticsearch endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration\">Extra Connection Attributes When Using Elasticsearch as a Target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "NeptuneSettings": {
          "shape": "NeptuneSettings",
          "documentation": "<p>Settings in JSON format for the target Amazon Neptune endpoint. For more information about the available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings\">Specifying Endpoint Settings for Amazon Neptune as a Target</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "RedshiftSettings": {
          "shape": "RedshiftSettings"
        },
        "PostgreSQLSettings": {
          "shape": "PostgreSQLSettings",
          "documentation": "<p>Settings in JSON format for the source and target PostgreSQL endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra connection attributes when using PostgreSQL as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.ConnectionAttrib\"> Extra connection attributes when using PostgreSQL as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "MySQLSettings": {
          "shape": "MySQLSettings",
          "documentation": "<p>Settings in JSON format for the source and target MySQL endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.ConnectionAttrib\">Extra connection attributes when using MySQL as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.ConnectionAttrib\">Extra connection attributes when using a MySQL-compatible database as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "OracleSettings": {
          "shape": "OracleSettings",
          "documentation": "<p>Settings in JSON format for the source and target Oracle endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.ConnectionAttrib\">Extra connection attributes when using Oracle as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.ConnectionAttrib\"> Extra connection attributes when using Oracle as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "SybaseSettings": {
          "shape": "SybaseSettings",
          "documentation": "<p>Settings in JSON format for the source and target SAP ASE endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.ConnectionAttrib\">Extra connection attributes when using SAP ASE as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.ConnectionAttrib\">Extra connection attributes when using SAP ASE as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "MicrosoftSQLServerSettings": {
          "shape": "MicrosoftSQLServerSettings",
          "documentation": "<p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.ConnectionAttrib\">Extra connection attributes when using SQL Server as a source for AWS DMS</a> and <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.ConnectionAttrib\"> Extra connection attributes when using SQL Server as a target for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        },
        "IBMDb2Settings": {
          "shape": "IBMDb2Settings",
          "documentation": "<p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other available settings, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.ConnectionAttrib\">Extra connection attributes when using Db2 LUW as a source for AWS DMS</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyEndpointResponse": {
      "type": "structure",
      "members": {
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>The modified endpoint.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the AWS DMS event notification subscription to be modified.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p> The type of AWS DMS resource that generates the events you want to subscribe to. </p> <p>Valid values: replication-instance | replication-task</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p> A list of event categories for a source type that you want to subscribe to. Use the <code>DescribeEventCategories</code> action to see a list of event categories. </p>"
        },
        "Enabled": {
          "shape": "BooleanOptional",
          "documentation": "<p> A Boolean value; set to <b>true</b> to activate the subscription. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyEventSubscriptionResponse": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription",
          "documentation": "<p>The modified event subscription.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyReplicationInstanceMessage": {
      "type": "structure",
      "required": [
        "ReplicationInstanceArn"
      ],
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of storage (in gigabytes) to be allocated for the replication instance.</p>"
        },
        "ApplyImmediately": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the changes should be applied immediately or during the next maintenance window.</p>"
        },
        "ReplicationInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>\"dms.c4.large\"</code>.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\"> Selecting the right AWS DMS replication instance for your migration</a>. </p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p> Specifies the VPC security group to be used with the replication instance. The VPC security group must work with the VPC containing the replication instance. </p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter does not result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.</p> <p>Default: Uses existing setting</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes</p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version number of the replication instance.</p> <p>When modifying a major engine version of an instance, also set <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>"
        },
        "AllowMajorVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage, and the change is asynchronously applied as soon as possible.</p> <p>This parameter must be set to <code>true</code> when specifying a value for the <code>EngineVersion</code> parameter that is a different major version than the replication instance's current version.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates that minor version upgrades are applied automatically to the replication instance during the maintenance window. Changing this parameter doesn't result in an outage, except in the case dsecribed following. The change is asynchronously applied as soon as possible. </p> <p>An outage does result if these factors apply: </p> <ul> <li> <p>This parameter is set to <code>true</code> during the maintenance window.</p> </li> <li> <p>A newer minor version is available. </p> </li> <li> <p>AWS DMS has enabled automatic patching for the given engine version. </p> </li> </ul>"
        },
        "ReplicationInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The replication instance identifier. This parameter is stored as a lowercase string.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyReplicationInstanceResponse": {
      "type": "structure",
      "members": {
        "ReplicationInstance": {
          "shape": "ReplicationInstance",
          "documentation": "<p>The modified replication instance.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyReplicationSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "ReplicationSubnetGroupIdentifier",
        "SubnetIds"
      ],
      "members": {
        "ReplicationSubnetGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the replication instance subnet group.</p>"
        },
        "ReplicationSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>A description for the replication instance subnet group.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>A list of subnet IDs.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyReplicationSubnetGroupResponse": {
      "type": "structure",
      "members": {
        "ReplicationSubnetGroup": {
          "shape": "ReplicationSubnetGroup",
          "documentation": "<p>The modified replication subnet group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyReplicationTaskMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskArn"
      ],
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task.</p>"
        },
        "ReplicationTaskIdentifier": {
          "shape": "String",
          "documentation": "<p>The replication task identifier.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1-255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "MigrationType": {
          "shape": "MigrationTypeValue",
          "documentation": "<p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> | <code>full-load-and-cdc</code> </p>"
        },
        "TableMappings": {
          "shape": "String",
          "documentation": "<p>When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with <code>file://</code>. When working with the DMS API, provide the JSON as the parameter value, for example: <code>--table-mappings file://mappingfile.json</code> </p>"
        },
        "ReplicationTaskSettings": {
          "shape": "String",
          "documentation": "<p>JSON file that contains settings for the task, such as task metadata settings.</p>"
        },
        "CdcStartTime": {
          "shape": "TStamp",
          "documentation": "<p>Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>"
        },
        "CdcStartPosition": {
          "shape": "String",
          "documentation": "<p>Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p> The value can be in date, checkpoint, or LSN/SCN format.</p> <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p> <p>Checkpoint Example: --cdc-start-position \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\"</p> <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p> <note> <p>When you use this task setting with a source PostgreSQL database, a logical replication slot should already be created and associated with the source endpoint. You can verify this by setting the <code>slotName</code> extra connection attribute to the name of this logical replication slot. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra Connection Attributes When Using PostgreSQL as a Source for AWS DMS</a>.</p> </note>"
        },
        "CdcStopPosition": {
          "shape": "String",
          "documentation": "<p>Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.</p> <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p> <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>"
        },
        "TaskData": {
          "shape": "String",
          "documentation": "<p>Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html\">Specifying Supplemental Data for Task Settings</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyReplicationTaskResponse": {
      "type": "structure",
      "members": {
        "ReplicationTask": {
          "shape": "ReplicationTask",
          "documentation": "<p>The replication task that was modified.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "MongoDbSettings": {
      "type": "structure",
      "members": {
        "Username": {
          "shape": "String",
          "documentation": "<p>The user name you use to access the MongoDB source endpoint. </p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p> The password for the user account you use to access the MongoDB source endpoint. </p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p> The name of the server on the MongoDB source endpoint. </p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p> The port value for the MongoDB source endpoint. </p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p> The database name on the MongoDB source endpoint. </p>"
        },
        "AuthType": {
          "shape": "AuthTypeValue",
          "documentation": "<p> The authentication type you use to access the MongoDB source endpoint.</p> <p>When when set to <code>\"no\"</code>, user name and password parameters are not used and can be empty. </p>"
        },
        "AuthMechanism": {
          "shape": "AuthMechanismValue",
          "documentation": "<p> The authentication mechanism you use to access the MongoDB source endpoint.</p> <p>For the default value, in MongoDB version 2.x, <code>\"default\"</code> is <code>\"mongodb_cr\"</code>. For MongoDB version 3.x or later, <code>\"default\"</code> is <code>\"scram_sha_1\"</code>. This setting isn't used when <code>AuthType</code> is set to <code>\"no\"</code>.</p>"
        },
        "NestingLevel": {
          "shape": "NestingLevelValue",
          "documentation": "<p> Specifies either document or table mode. </p> <p>Default value is <code>\"none\"</code>. Specify <code>\"none\"</code> to use document mode. Specify <code>\"one\"</code> to use table mode.</p>"
        },
        "ExtractDocId": {
          "shape": "String",
          "documentation": "<p> Specifies the document ID. Use this setting when <code>NestingLevel</code> is set to <code>\"none\"</code>. </p> <p>Default value is <code>\"false\"</code>. </p>"
        },
        "DocsToInvestigate": {
          "shape": "String",
          "documentation": "<p> Indicates the number of documents to preview to determine the document organization. Use this setting when <code>NestingLevel</code> is set to <code>\"one\"</code>. </p> <p>Must be a positive value greater than <code>0</code>. Default value is <code>1000</code>.</p>"
        },
        "AuthSource": {
          "shape": "String",
          "documentation": "<p> The MongoDB database name. This setting isn't used when <code>AuthType</code> is set to <code>\"no\"</code>. </p> <p>The default is <code>\"admin\"</code>.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier that is used to encrypt the content on the replication instance. If you don't specify a value for the <code>KmsKeyId</code> parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        }
      },
      "documentation": "<p>Provides information that defines a MongoDB endpoint.</p>"
    },
    "MySQLSettings": {
      "type": "structure",
      "members": {
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>Database name for the endpoint.</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>Endpoint connection password.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Endpoint TCP port.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>Fully qualified domain name of the endpoint.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>Endpoint connection user name.</p>"
        }
      },
      "documentation": "<p>Provides information that defines a MySQL endpoint.</p>"
    },
    "NeptuneSettings": {
      "type": "structure",
      "required": [
        "S3BucketName",
        "S3BucketFolder"
      ],
      "members": {
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the service role that you created for the Neptune target endpoint. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole\">Creating an IAM Service Role for Accessing Amazon Neptune as a Target</a> in the <i>AWS Database Migration Service User Guide. </i> </p>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon S3 bucket where AWS DMS can temporarily store migrated graph data in .csv files before bulk-loading it to the Neptune target database. AWS DMS maps the SQL source data to graph data before storing it in these .csv files.</p>"
        },
        "S3BucketFolder": {
          "shape": "String",
          "documentation": "<p>A folder path where you want AWS DMS to store migrated graph data in the S3 bucket specified by <code>S3BucketName</code> </p>"
        },
        "ErrorRetryDuration": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of milliseconds for AWS DMS to wait to retry a bulk-load of migrated graph data to the Neptune target database before raising an error. The default is 250.</p>"
        },
        "MaxFileSize": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum size in kilobytes of migrated graph data stored in a .csv file before AWS DMS bulk-loads the data to the Neptune target database. The default is 1,048,576 KB. If the bulk load is successful, AWS DMS clears the bucket, ready to store the next batch of migrated graph data.</p>"
        },
        "MaxRetryCount": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of times for AWS DMS to retry a bulk load of migrated graph data to the Neptune target database before raising an error. The default is 5.</p>"
        },
        "IamAuthEnabled": {
          "shape": "BooleanOptional",
          "documentation": "<p>If you want AWS Identity and Access Management (IAM) authorization enabled for this endpoint, set this parameter to <code>true</code>. Then attach the appropriate IAM policy document to your service role specified by <code>ServiceAccessRoleArn</code>. The default is <code>false</code>.</p>"
        }
      },
      "documentation": "<p>Provides information that defines an Amazon Neptune endpoint.</p>"
    },
    "NestingLevelValue": {
      "type": "string",
      "enum": [
        "none",
        "one"
      ]
    },
    "OracleSettings": {
      "type": "structure",
      "members": {
        "AsmPassword": {
          "shape": "SecretString",
          "documentation": "<p>For an Oracle source endpoint, your Oracle Automatic Storage Management (ASM) password. You can set this value from the <code> <i>asm_user_password</i> </code> value. You set this value as part of the comma-separated value that you set to the <code>Password</code> request parameter when you create the endpoint to access transaction logs using Binary Reader. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration\">Configuration for change data capture (CDC) on an Oracle source database</a>.</p>"
        },
        "AsmServer": {
          "shape": "String",
          "documentation": "<p>For an Oracle source endpoint, your ASM server address. You can set this value from the <code>asm_server</code> value. You set <code>asm_server</code> as part of the extra connection attribute string to access an Oracle server with Binary Reader that uses ASM. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration\">Configuration for change data capture (CDC) on an Oracle source database</a>.</p>"
        },
        "AsmUser": {
          "shape": "String",
          "documentation": "<p>For an Oracle source endpoint, your ASM user name. You can set this value from the <code>asm_user</code> value. You set <code>asm_user</code> as part of the extra connection attribute string to access an Oracle server with Binary Reader that uses ASM. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration\">Configuration for change data capture (CDC) on an Oracle source database</a>.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>Database name for the endpoint.</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>Endpoint connection password.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Endpoint TCP port.</p>"
        },
        "SecurityDbEncryption": {
          "shape": "SecretString",
          "documentation": "<p>For an Oracle source endpoint, the transparent data encryption (TDE) password required by AWM DMS to access Oracle redo logs encrypted by TDE using Binary Reader. It is also the <code> <i>TDE_Password</i> </code> part of the comma-separated value you set to the <code>Password</code> request parameter when you create the endpoint. The <code>SecurityDbEncryptian</code> setting is related to this <code>SecurityDbEncryptionName</code> setting. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption\"> Supported encryption methods for using Oracle as a source for AWS DMS</a> in the <i>AWS Database Migration Service User Guide</i>. </p>"
        },
        "SecurityDbEncryptionName": {
          "shape": "String",
          "documentation": "<p>For an Oracle source endpoint, the name of a key used for the transparent data encryption (TDE) of the columns and tablespaces in an Oracle source database that is encrypted using TDE. The key value is the value of the <code>SecurityDbEncryption</code> setting. For more information on setting the key name value of <code>SecurityDbEncryptionName</code>, see the information and example for setting the <code>securityDbEncryptionName</code> extra connection attribute in <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption\"> Supported encryption methods for using Oracle as a source for AWS DMS</a> in the <i>AWS Database Migration Service User Guide</i>.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>Fully qualified domain name of the endpoint.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>Endpoint connection user name.</p>"
        }
      },
      "documentation": "<p>Provides information that defines an Oracle endpoint.</p>"
    },
    "OrderableReplicationInstance": {
      "type": "structure",
      "members": {
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version of the replication engine.</p>"
        },
        "ReplicationInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the replication instance as defined for the specified replication instance class. For example to specify the instance class dms.c4.large, set this parameter to <code>\"dms.c4.large\"</code>.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\"> Selecting the right AWS DMS replication instance for your migration</a>. </p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>The type of storage used by the replication instance.</p>"
        },
        "MinAllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.</p>"
        },
        "MaxAllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>The minimum amount of storage (in gigabytes) that can be allocated for the replication instance.</p>"
        },
        "DefaultAllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>The default amount of storage (in gigabytes) that is allocated for the replication instance.</p>"
        },
        "IncludedAllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZonesList",
          "documentation": "<p>List of Availability Zones for this replication instance.</p>"
        },
        "ReleaseStatus": {
          "shape": "ReleaseStatusValues",
          "documentation": "<p>The value returned when the specified <code>EngineVersion</code> of the replication instance is in Beta or test mode. This indicates some features might not work as expected.</p> <note> <p>AWS DMS supports the <code>ReleaseStatus</code> parameter in versions 3.1.4 and later.</p> </note>"
        }
      },
      "documentation": "<p>In response to the <code>DescribeOrderableReplicationInstances</code> operation, this object describes an available replication instance. This description includes the replication instance's type, engine version, and allocated storage.</p>"
    },
    "OrderableReplicationInstanceList": {
      "type": "list",
      "member": {
        "shape": "OrderableReplicationInstance"
      }
    },
    "ParquetVersionValue": {
      "type": "string",
      "enum": [
        "parquet-1-0",
        "parquet-2-0"
      ]
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
          "documentation": "<p>The date of the maintenance window when the action is to be applied. The maintenance action is applied to the resource during its first maintenance window after this date. If this date is specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>"
        },
        "ForcedApplyDate": {
          "shape": "TStamp",
          "documentation": "<p>The date when the maintenance action will be automatically applied. The maintenance action is applied to the resource on this date regardless of the maintenance window for the resource. If this date is specified, any <code>immediate</code> opt-in requests are ignored.</p>"
        },
        "OptInStatus": {
          "shape": "String",
          "documentation": "<p>The type of opt-in request that has been received for the resource.</p>"
        },
        "CurrentApplyDate": {
          "shape": "TStamp",
          "documentation": "<p>The effective date when the pending maintenance action will be applied to the resource. This date takes into account opt-in requests received from the <code>ApplyPendingMaintenanceAction</code> API operation, and also the <code>AutoAppliedAfterDate</code> and <code>ForcedApplyDate</code> parameter values. This value is blank if an opt-in request has not been received and nothing has been specified for <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description providing more detail about the maintenance action.</p>"
        }
      },
      "documentation": "<p>Describes a maintenance action pending for an AWS DMS resource, including when and how it will be applied. This data type is a response element to the <code>DescribePendingMaintenanceActions</code> operation.</p>"
    },
    "PendingMaintenanceActionDetails": {
      "type": "list",
      "member": {
        "shape": "PendingMaintenanceAction"
      }
    },
    "PendingMaintenanceActions": {
      "type": "list",
      "member": {
        "shape": "ResourcePendingMaintenanceActions"
      }
    },
    "PostgreSQLSettings": {
      "type": "structure",
      "members": {
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>Database name for the endpoint.</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>Endpoint connection password.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Endpoint TCP port.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>Fully qualified domain name of the endpoint.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>Endpoint connection user name.</p>"
        }
      },
      "documentation": "<p>Provides information that defines a PostgreSQL endpoint.</p>"
    },
    "RebootReplicationInstanceMessage": {
      "type": "structure",
      "required": [
        "ReplicationInstanceArn"
      ],
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "ForceFailover": {
          "shape": "BooleanOptional",
          "documentation": "<p>If this parameter is <code>true</code>, the reboot is conducted through a Multi-AZ failover. (If the instance isn't configured for Multi-AZ, then you can't specify <code>true</code>.)</p>"
        }
      }
    },
    "RebootReplicationInstanceResponse": {
      "type": "structure",
      "members": {
        "ReplicationInstance": {
          "shape": "ReplicationInstance",
          "documentation": "<p>The replication instance that is being rebooted. </p>"
        }
      }
    },
    "RedshiftSettings": {
      "type": "structure",
      "members": {
        "AcceptAnyDate": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates to allow any date format, including invalid formats such as 00/00/00 00:00:00, to be loaded without generating an error. You can choose <code>true</code> or <code>false</code> (the default).</p> <p>This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT specification, Amazon Redshift inserts a NULL value into that field. </p>"
        },
        "AfterConnectScript": {
          "shape": "String",
          "documentation": "<p>Code to run after connecting. This parameter should contain the code itself, not the name of a file containing the code.</p>"
        },
        "BucketFolder": {
          "shape": "String",
          "documentation": "<p>The location where the comma-separated value (.csv) files are stored before being uploaded to the S3 bucket. </p>"
        },
        "BucketName": {
          "shape": "String",
          "documentation": "<p>The name of the S3 bucket you want to use</p>"
        },
        "ConnectionTimeout": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that sets the amount of time to wait (in milliseconds) before timing out, beginning from when you initially establish a connection.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Redshift data warehouse (service) that you are working with.</p>"
        },
        "DateFormat": {
          "shape": "String",
          "documentation": "<p>The date format that you are using. Valid values are <code>auto</code> (case-sensitive), your date format string enclosed in quotes, or NULL. If this parameter is left unset (NULL), it defaults to a format of 'YYYY-MM-DD'. Using <code>auto</code> recognizes most strings, even some that aren't supported when you use a date format string. </p> <p>If your date and time values use formats different from each other, set this to <code>auto</code>. </p>"
        },
        "EmptyAsNull": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that specifies whether AWS DMS should migrate empty CHAR and VARCHAR fields as NULL. A value of <code>true</code> sets empty CHAR and VARCHAR fields to null. The default is <code>false</code>.</p>"
        },
        "EncryptionMode": {
          "shape": "EncryptionModeValue",
          "documentation": "<p>The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either <code>SSE_S3</code> (the default) or <code>SSE_KMS</code>. </p> <note> <p>For the <code>ModifyEndpoint</code> operation, you can change the existing value of the <code>EncryptionMode</code> parameter from <code>SSE_KMS</code> to <code>SSE_S3</code>. But you can’t change the existing value from <code>SSE_S3</code> to <code>SSE_KMS</code>.</p> </note> <p>To use <code>SSE_S3</code>, create an AWS Identity and Access Management (IAM) role with a policy that allows <code>\"arn:aws:s3:::*\"</code> to use the following actions: <code>\"s3:PutObject\", \"s3:ListBucket\"</code> </p>"
        },
        "FileTransferUploadStreams": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of threads used to upload a single file. This parameter accepts a value from 1 through 64. It defaults to 10.</p>"
        },
        "LoadTimeout": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of time to wait (in milliseconds) before timing out, beginning from when you begin loading.</p>"
        },
        "MaxFileSize": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum size (in KB) of any .csv file used to transfer data to Amazon Redshift. This accepts a value from 1 through 1,048,576. It defaults to 32,768 KB (32 MB).</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>The password for the user named in the <code>username</code> property.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number for Amazon Redshift. The default value is 5439.</p>"
        },
        "RemoveQuotes": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that specifies to remove surrounding quotation marks from strings in the incoming data. All characters within the quotation marks, including delimiters, are retained. Choose <code>true</code> to remove quotation marks. The default is <code>false</code>.</p>"
        },
        "ReplaceInvalidChars": {
          "shape": "String",
          "documentation": "<p>A list of characters that you want to replace. Use with <code>ReplaceChars</code>.</p>"
        },
        "ReplaceChars": {
          "shape": "String",
          "documentation": "<p>A value that specifies to replaces the invalid characters specified in <code>ReplaceInvalidChars</code>, substituting the specified characters instead. The default is <code>\"?\"</code>.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Redshift cluster you are using.</p>"
        },
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift service.</p>"
        },
        "ServerSideEncryptionKmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key ID. If you are using <code>SSE_KMS</code> for the <code>EncryptionMode</code>, provide this key ID. The key that you use needs an attached policy that enables IAM user permissions and allows use of the key.</p>"
        },
        "TimeFormat": {
          "shape": "String",
          "documentation": "<p>The time format that you want to use. Valid values are <code>auto</code> (case-sensitive), <code>'timeformat_string'</code>, <code>'epochsecs'</code>, or <code>'epochmillisecs'</code>. It defaults to 10. Using <code>auto</code> recognizes most strings, even some that aren't supported when you use a time format string. </p> <p>If your date and time values use formats different from each other, set this parameter to <code>auto</code>. </p>"
        },
        "TrimBlanks": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that specifies to remove the trailing white space characters from a VARCHAR string. This parameter applies only to columns with a VARCHAR data type. Choose <code>true</code> to remove unneeded white space. The default is <code>false</code>.</p>"
        },
        "TruncateColumns": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that specifies to truncate data in columns to the appropriate number of characters, so that the data fits in the column. This parameter applies only to columns with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose <code>true</code> to truncate data. The default is <code>false</code>.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>An Amazon Redshift user name for a registered user.</p>"
        },
        "WriteBufferSize": {
          "shape": "IntegerOptional",
          "documentation": "<p>The size of the write buffer to use in rows. Valid values range from 1 through 2,048. The default is 1,024. Use this setting to tune performance. </p>"
        }
      },
      "documentation": "<p>Provides information that defines an Amazon Redshift endpoint.</p>"
    },
    "RefreshSchemasMessage": {
      "type": "structure",
      "required": [
        "EndpointArn",
        "ReplicationInstanceArn"
      ],
      "members": {
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        },
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RefreshSchemasResponse": {
      "type": "structure",
      "members": {
        "RefreshSchemasStatus": {
          "shape": "RefreshSchemasStatus",
          "documentation": "<p>The status of the refreshed schema.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RefreshSchemasStatus": {
      "type": "structure",
      "members": {
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        },
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "Status": {
          "shape": "RefreshSchemasStatusTypeValue",
          "documentation": "<p>The status of the schema.</p>"
        },
        "LastRefreshDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the schema was last refreshed.</p>"
        },
        "LastFailureMessage": {
          "shape": "String",
          "documentation": "<p>The last failure message for the schema.</p>"
        }
      },
      "documentation": "<p>Provides information that describes status of a schema at an endpoint specified by the <code>DescribeRefreshSchemaStatus</code> operation.</p>"
    },
    "RefreshSchemasStatusTypeValue": {
      "type": "string",
      "enum": [
        "successful",
        "failed",
        "refreshing"
      ]
    },
    "ReleaseStatusValues": {
      "type": "string",
      "enum": [
        "beta"
      ]
    },
    "ReloadOptionValue": {
      "type": "string",
      "enum": [
        "data-reload",
        "validate-only"
      ]
    },
    "ReloadTablesMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskArn",
        "TablesToReload"
      ],
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task. </p>"
        },
        "TablesToReload": {
          "shape": "TableListToReload",
          "documentation": "<p>The name and schema of the table to be reloaded. </p>"
        },
        "ReloadOption": {
          "shape": "ReloadOptionValue",
          "documentation": "<p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate it if validation is enabled. Specify <code>validate-only</code> to re-validate the table. This option applies only when validation is enabled for the task. </p> <p>Valid values: data-reload, validate-only</p> <p>Default value is data-reload.</p>"
        }
      }
    },
    "ReloadTablesResponse": {
      "type": "structure",
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task. </p>"
        }
      }
    },
    "RemoveTagsFromResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>An AWS DMS resource from which you want to remove tag(s). The value for this parameter is an Amazon Resource Name (ARN).</p>"
        },
        "TagKeys": {
          "shape": "KeyList",
          "documentation": "<p>The tag key (name) of the tag to be removed.</p>"
        }
      },
      "documentation": "<p>Removes one or more tags from an AWS DMS resource.</p>"
    },
    "RemoveTagsFromResourceResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "ReplicationEndpointTypeValue": {
      "type": "string",
      "enum": [
        "source",
        "target"
      ]
    },
    "ReplicationInstance": {
      "type": "structure",
      "members": {
        "ReplicationInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The replication instance identifier is a required parameter. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1-63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>myrepinstance</code> </p>"
        },
        "ReplicationInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the replication instance as defined for the specified replication instance class. It is a required parameter, although a defualt value is pre-selected in the DMS console.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\"> Selecting the right AWS DMS replication instance for your migration</a>. </p>"
        },
        "ReplicationInstanceStatus": {
          "shape": "String",
          "documentation": "<p>The status of the replication instance. The possible return values include:</p> <ul> <li> <p> <code>\"available\"</code> </p> </li> <li> <p> <code>\"creating\"</code> </p> </li> <li> <p> <code>\"deleted\"</code> </p> </li> <li> <p> <code>\"deleting\"</code> </p> </li> <li> <p> <code>\"failed\"</code> </p> </li> <li> <p> <code>\"modifying\"</code> </p> </li> <li> <p> <code>\"upgrading\"</code> </p> </li> <li> <p> <code>\"rebooting\"</code> </p> </li> <li> <p> <code>\"resetting-master-credentials\"</code> </p> </li> <li> <p> <code>\"storage-full\"</code> </p> </li> <li> <p> <code>\"incompatible-credentials\"</code> </p> </li> <li> <p> <code>\"incompatible-network\"</code> </p> </li> <li> <p> <code>\"maintenance\"</code> </p> </li> </ul>"
        },
        "AllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>"
        },
        "InstanceCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>The time the replication instance was created.</p>"
        },
        "VpcSecurityGroups": {
          "shape": "VpcSecurityGroupMembershipList",
          "documentation": "<p>The VPC security group for the instance.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone for the instance.</p>"
        },
        "ReplicationSubnetGroup": {
          "shape": "ReplicationSubnetGroup",
          "documentation": "<p>The subnet group for the replication instance.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The maintenance window times for the replication instance. Any pending upgrades to the replication instance are performed during this time.</p>"
        },
        "PendingModifiedValues": {
          "shape": "ReplicationPendingModifiedValues",
          "documentation": "<p>The pending modification values.</p>"
        },
        "MultiAZ": {
          "shape": "Boolean",
          "documentation": "<p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version number of the replication instance.</p> <p>If an engine version number is not specified when a replication instance is created, the default is the latest engine version available.</p> <p>When modifying a major engine version of an instance, also set <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>Boolean value indicating if minor version upgrades will be automatically applied to the instance.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>An AWS KMS key identifier that is used to encrypt the data on the replication instance.</p> <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then AWS DMS uses your default encryption key.</p> <p>AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "ReplicationInstancePublicIpAddress": {
          "shape": "String",
          "documentation": "<p>The public IP address of the replication instance.</p>",
          "deprecated": true
        },
        "ReplicationInstancePrivateIpAddress": {
          "shape": "String",
          "documentation": "<p>The private IP address of the replication instance.</p>",
          "deprecated": true
        },
        "ReplicationInstancePublicIpAddresses": {
          "shape": "ReplicationInstancePublicIpAddressList",
          "documentation": "<p>One or more public IP addresses for the replication instance.</p>"
        },
        "ReplicationInstancePrivateIpAddresses": {
          "shape": "ReplicationInstancePrivateIpAddressList",
          "documentation": "<p>One or more private IP addresses for the replication instance.</p>"
        },
        "PubliclyAccessible": {
          "shape": "Boolean",
          "documentation": "<p> Specifies the accessibility options for the replication instance. A value of <code>true</code> represents an instance with a public IP address. A value of <code>false</code> represents an instance with a private IP address. The default value is <code>true</code>. </p>"
        },
        "SecondaryAvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone of the standby replication instance in a Multi-AZ deployment.</p>"
        },
        "FreeUntil": {
          "shape": "TStamp",
          "documentation": "<p> The expiration date of the free replication instance that is part of the Free DMS program. </p>"
        },
        "DnsNameServers": {
          "shape": "String",
          "documentation": "<p>The DNS name servers supported for the replication instance to access your on-premise source or target database.</p>"
        }
      },
      "documentation": "<p>Provides information that defines a replication instance.</p>"
    },
    "ReplicationInstanceList": {
      "type": "list",
      "member": {
        "shape": "ReplicationInstance"
      }
    },
    "ReplicationInstancePrivateIpAddressList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ReplicationInstancePublicIpAddressList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ReplicationInstanceTaskLog": {
      "type": "structure",
      "members": {
        "ReplicationTaskName": {
          "shape": "String",
          "documentation": "<p>The name of the replication task.</p>"
        },
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task.</p>"
        },
        "ReplicationInstanceTaskLogSize": {
          "shape": "Long",
          "documentation": "<p>The size, in bytes, of the replication task log.</p>"
        }
      },
      "documentation": "<p>Contains metadata for a replication instance task log.</p>"
    },
    "ReplicationInstanceTaskLogsList": {
      "type": "list",
      "member": {
        "shape": "ReplicationInstanceTaskLog"
      }
    },
    "ReplicationPendingModifiedValues": {
      "type": "structure",
      "members": {
        "ReplicationInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the replication instance as defined for the specified replication instance class.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth\"> Selecting the right AWS DMS replication instance for your migration</a>. </p>"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version number of the replication instance.</p>"
        }
      },
      "documentation": "<p>Provides information about the values of pending modifications to a replication instance. This data type is an object of the <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_ReplicationInstance.html\"> <code>ReplicationInstance</code> </a> user-defined data type. </p>"
    },
    "ReplicationSubnetGroup": {
      "type": "structure",
      "members": {
        "ReplicationSubnetGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the replication instance subnet group.</p>"
        },
        "ReplicationSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>A description for the replication subnet group.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The ID of the VPC.</p>"
        },
        "SubnetGroupStatus": {
          "shape": "String",
          "documentation": "<p>The status of the subnet group.</p>"
        },
        "Subnets": {
          "shape": "SubnetList",
          "documentation": "<p>The subnets that are in the subnet group.</p>"
        }
      },
      "documentation": "<p>Describes a subnet group in response to a request by the <code>DescribeReplicationSubnetGroup</code> operation.</p>"
    },
    "ReplicationSubnetGroups": {
      "type": "list",
      "member": {
        "shape": "ReplicationSubnetGroup"
      }
    },
    "ReplicationTask": {
      "type": "structure",
      "members": {
        "ReplicationTaskIdentifier": {
          "shape": "String",
          "documentation": "<p>The user-assigned replication task identifier or name.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1-255 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Cannot end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "SourceEndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        },
        "TargetEndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        },
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "MigrationType": {
          "shape": "MigrationTypeValue",
          "documentation": "<p>The type of migration.</p>"
        },
        "TableMappings": {
          "shape": "String",
          "documentation": "<p>Table mappings specified in the task.</p>"
        },
        "ReplicationTaskSettings": {
          "shape": "String",
          "documentation": "<p>The settings for the replication task.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the replication task.</p>"
        },
        "LastFailureMessage": {
          "shape": "String",
          "documentation": "<p>The last error (failure) message generated for the replication task.</p>"
        },
        "StopReason": {
          "shape": "String",
          "documentation": "<p>The reason the replication task was stopped. This response parameter can return one of the following values:</p> <ul> <li> <p> <code>\"STOP_REASON_FULL_LOAD_COMPLETED\"</code> – Full-load migration completed.</p> </li> <li> <p> <code>\"STOP_REASON_CACHED_CHANGES_APPLIED\"</code> – Change data capture (CDC) load completed.</p> </li> <li> <p> <code>\"STOP_REASON_CACHED_CHANGES_NOT_APPLIED\"</code> – In a full-load and CDC migration, the full-load stopped as specified before starting the CDC migration.</p> </li> <li> <p> <code>\"STOP_REASON_SERVER_TIME\"</code> – The migration stopped at the specified server time.</p> </li> </ul>"
        },
        "ReplicationTaskCreationDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the replication task was created.</p>"
        },
        "ReplicationTaskStartDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the replication task is scheduled to start.</p>"
        },
        "CdcStartPosition": {
          "shape": "String",
          "documentation": "<p>Indicates when you want a change data capture (CDC) operation to start. Use either <code>CdcStartPosition</code> or <code>CdcStartTime</code> to specify when you want the CDC operation to start. Specifying both values results in an error.</p> <p>The value can be in date, checkpoint, or LSN/SCN format.</p> <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p> <p>Checkpoint Example: --cdc-start-position \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\"</p> <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>"
        },
        "CdcStopPosition": {
          "shape": "String",
          "documentation": "<p>Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.</p> <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p> <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>"
        },
        "RecoveryCheckpoint": {
          "shape": "String",
          "documentation": "<p>Indicates the last checkpoint that occurred during a change data capture (CDC) operation. You can provide this value to the <code>CdcStartPosition</code> parameter to start a CDC operation that begins at that checkpoint.</p>"
        },
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task.</p>"
        },
        "ReplicationTaskStats": {
          "shape": "ReplicationTaskStats",
          "documentation": "<p>The statistics for the task, including elapsed time, tables loaded, and table errors.</p>"
        },
        "TaskData": {
          "shape": "String",
          "documentation": "<p>Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html\">Specifying Supplemental Data for Task Settings</a> in the <i>AWS Database Migration Service User Guide.</i> </p>"
        }
      },
      "documentation": "<p>Provides information that describes a replication task created by the <code>CreateReplicationTask</code> operation.</p>"
    },
    "ReplicationTaskAssessmentResult": {
      "type": "structure",
      "members": {
        "ReplicationTaskIdentifier": {
          "shape": "String",
          "documentation": "<p> The replication task identifier of the task on which the task assessment was run. </p>"
        },
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task. </p>"
        },
        "ReplicationTaskLastAssessmentDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the task assessment was completed. </p>"
        },
        "AssessmentStatus": {
          "shape": "String",
          "documentation": "<p> The status of the task assessment. </p>"
        },
        "AssessmentResultsFile": {
          "shape": "String",
          "documentation": "<p> The file containing the results of the task assessment. </p>"
        },
        "AssessmentResults": {
          "shape": "String",
          "documentation": "<p> The task assessment results in JSON format. </p>"
        },
        "S3ObjectUrl": {
          "shape": "String",
          "documentation": "<p> The URL of the S3 object containing the task assessment results. </p>"
        }
      },
      "documentation": "<p> The task assessment report in JSON format. </p>"
    },
    "ReplicationTaskAssessmentResultList": {
      "type": "list",
      "member": {
        "shape": "ReplicationTaskAssessmentResult"
      }
    },
    "ReplicationTaskAssessmentRun": {
      "type": "structure",
      "members": {
        "ReplicationTaskAssessmentRunArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of this assessment run.</p>"
        },
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>ARN of the migration task associated with this premigration assessment run.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Assessment run status. </p> <p>This status can have one of the following values:</p> <ul> <li> <p> <code>\"cancelling\"</code> – The assessment run was canceled by the <code>CancelReplicationTaskAssessmentRun</code> operation.</p> </li> <li> <p> <code>\"deleting\"</code> – The assessment run was deleted by the <code>DeleteReplicationTaskAssessmentRun</code> operation.</p> </li> <li> <p> <code>\"failed\"</code> – At least one individual assessment completed with a <code>failed</code> status.</p> </li> <li> <p> <code>\"error-provisioning\"</code> – An internal error occurred while resources were provisioned (during <code>provisioning</code> status).</p> </li> <li> <p> <code>\"error-executing\"</code> – An internal error occurred while individual assessments ran (during <code>running</code> status).</p> </li> <li> <p> <code>\"invalid state\"</code> – The assessment run is in an unknown state.</p> </li> <li> <p> <code>\"passed\"</code> – All individual assessments have completed, and none has a <code>failed</code> status.</p> </li> <li> <p> <code>\"provisioning\"</code> – Resources required to run individual assessments are being provisioned.</p> </li> <li> <p> <code>\"running\"</code> – Individual assessments are being run.</p> </li> <li> <p> <code>\"starting\"</code> – The assessment run is starting, but resources are not yet being provisioned for individual assessments.</p> </li> </ul>"
        },
        "ReplicationTaskAssessmentRunCreationDate": {
          "shape": "TStamp",
          "documentation": "<p>Date on which the assessment run was created using the <code>StartReplicationTaskAssessmentRun</code> operation.</p>"
        },
        "AssessmentProgress": {
          "shape": "ReplicationTaskAssessmentRunProgress",
          "documentation": "<p>Indication of the completion progress for the individual assessments specified to run.</p>"
        },
        "LastFailureMessage": {
          "shape": "String",
          "documentation": "<p>Last message generated by an individual assessment failure.</p>"
        },
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p>ARN of the service role used to start the assessment run using the <code>StartReplicationTaskAssessmentRun</code> operation.</p>"
        },
        "ResultLocationBucket": {
          "shape": "String",
          "documentation": "<p>Amazon S3 bucket where AWS DMS stores the results of this assessment run.</p>"
        },
        "ResultLocationFolder": {
          "shape": "String",
          "documentation": "<p>Folder in an Amazon S3 bucket where AWS DMS stores the results of this assessment run.</p>"
        },
        "ResultEncryptionMode": {
          "shape": "String",
          "documentation": "<p>Encryption mode used to encrypt the assessment run results.</p>"
        },
        "ResultKmsKeyArn": {
          "shape": "String",
          "documentation": "<p>ARN of the AWS KMS encryption key used to encrypt the assessment run results.</p>"
        },
        "AssessmentRunName": {
          "shape": "String",
          "documentation": "<p>Unique name of the assessment run.</p>"
        }
      },
      "documentation": "<p>Provides information that describes a premigration assessment run that you have started using the <code>StartReplicationTaskAssessmentRun</code> operation.</p> <p>Some of the information appears based on other operations that can return the <code>ReplicationTaskAssessmentRun</code> object.</p>"
    },
    "ReplicationTaskAssessmentRunList": {
      "type": "list",
      "member": {
        "shape": "ReplicationTaskAssessmentRun"
      }
    },
    "ReplicationTaskAssessmentRunProgress": {
      "type": "structure",
      "members": {
        "IndividualAssessmentCount": {
          "shape": "Integer",
          "documentation": "<p>The number of individual assessments that are specified to run.</p>"
        },
        "IndividualAssessmentCompletedCount": {
          "shape": "Integer",
          "documentation": "<p>The number of individual assessments that have completed, successfully or not.</p>"
        }
      },
      "documentation": "<p>The progress values reported by the <code>AssessmentProgress</code> response element.</p>"
    },
    "ReplicationTaskIndividualAssessment": {
      "type": "structure",
      "members": {
        "ReplicationTaskIndividualAssessmentArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of this individual assessment.</p>"
        },
        "ReplicationTaskAssessmentRunArn": {
          "shape": "String",
          "documentation": "<p>ARN of the premigration assessment run that is created to run this individual assessment.</p>"
        },
        "IndividualAssessmentName": {
          "shape": "String",
          "documentation": "<p>Name of this individual assessment.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Individual assessment status.</p> <p>This status can have one of the following values:</p> <ul> <li> <p> <code>\"cancelled\"</code> </p> </li> <li> <p> <code>\"error\"</code> </p> </li> <li> <p> <code>\"failed\"</code> </p> </li> <li> <p> <code>\"passed\"</code> </p> </li> <li> <p> <code>\"pending\"</code> </p> </li> <li> <p> <code>\"running\"</code> </p> </li> </ul>"
        },
        "ReplicationTaskIndividualAssessmentStartDate": {
          "shape": "TStamp",
          "documentation": "<p>Date when this individual assessment was started as part of running the <code>StartReplicationTaskAssessmentRun</code> operation.</p>"
        }
      },
      "documentation": "<p>Provides information that describes an individual assessment from a premigration assessment run.</p>"
    },
    "ReplicationTaskIndividualAssessmentList": {
      "type": "list",
      "member": {
        "shape": "ReplicationTaskIndividualAssessment"
      }
    },
    "ReplicationTaskList": {
      "type": "list",
      "member": {
        "shape": "ReplicationTask"
      }
    },
    "ReplicationTaskStats": {
      "type": "structure",
      "members": {
        "FullLoadProgressPercent": {
          "shape": "Integer",
          "documentation": "<p>The percent complete for the full load migration task.</p>"
        },
        "ElapsedTimeMillis": {
          "shape": "Long",
          "documentation": "<p>The elapsed time of the task, in milliseconds.</p>"
        },
        "TablesLoaded": {
          "shape": "Integer",
          "documentation": "<p>The number of tables loaded for this task.</p>"
        },
        "TablesLoading": {
          "shape": "Integer",
          "documentation": "<p>The number of tables currently loading for this task.</p>"
        },
        "TablesQueued": {
          "shape": "Integer",
          "documentation": "<p>The number of tables queued for this task.</p>"
        },
        "TablesErrored": {
          "shape": "Integer",
          "documentation": "<p>The number of errors that have occurred during this task.</p>"
        },
        "FreshStartDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the replication task was started either with a fresh start or a target reload.</p>"
        },
        "StartDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the replication task was started either with a fresh start or a resume. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html#DMS-StartReplicationTask-request-StartReplicationTaskType\">StartReplicationTaskType</a>.</p>"
        },
        "StopDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the replication task was stopped.</p>"
        },
        "FullLoadStartDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the replication task full load was started.</p>"
        },
        "FullLoadFinishDate": {
          "shape": "TStamp",
          "documentation": "<p>The date the replication task full load was completed.</p>"
        }
      },
      "documentation": "<p>In response to a request by the <code>DescribeReplicationTasks</code> operation, this object provides a collection of statistics about a replication task.</p>"
    },
    "ResourcePendingMaintenanceActions": {
      "type": "structure",
      "members": {
        "ResourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance action applies to. For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Introduction.AWS.ARN.html\"> Constructing an Amazon Resource Name (ARN) for AWS DMS</a> in the DMS documentation.</p>"
        },
        "PendingMaintenanceActionDetails": {
          "shape": "PendingMaintenanceActionDetails",
          "documentation": "<p>Detailed information about the pending maintenance action.</p>"
        }
      },
      "documentation": "<p>Identifies an AWS DMS resource and any pending actions for it.</p>"
    },
    "S3Settings": {
      "type": "structure",
      "members": {
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) used by the service access IAM role. It is a required parameter that enables DMS to write and read objects from an 3S bucket.</p>"
        },
        "ExternalTableDefinition": {
          "shape": "String",
          "documentation": "<p> Specifies how tables are defined in the S3 source files only. </p>"
        },
        "CsvRowDelimiter": {
          "shape": "String",
          "documentation": "<p> The delimiter used to separate rows in the .csv file for both source and target. The default is a carriage return (<code>\\n</code>). </p>"
        },
        "CsvDelimiter": {
          "shape": "String",
          "documentation": "<p> The delimiter used to separate columns in the .csv file for both source and target. The default is a comma. </p>"
        },
        "BucketFolder": {
          "shape": "String",
          "documentation": "<p> An optional parameter to set a folder name in the S3 bucket. If provided, tables are created in the path <code> <i>bucketFolder</i>/<i>schema_name</i>/<i>table_name</i>/</code>. If this parameter isn't specified, then the path used is <code> <i>schema_name</i>/<i>table_name</i>/</code>. </p>"
        },
        "BucketName": {
          "shape": "String",
          "documentation": "<p> The name of the S3 bucket. </p>"
        },
        "CompressionType": {
          "shape": "CompressionTypeValue",
          "documentation": "<p>An optional parameter to use GZIP to compress the target files. Set to GZIP to compress the target files. Either set this parameter to NONE (the default) or don't use it to leave the files uncompressed. This parameter applies to both .csv and .parquet file formats. </p>"
        },
        "EncryptionMode": {
          "shape": "EncryptionModeValue",
          "documentation": "<p>The type of server-side encryption that you want to use for your data. This encryption type is part of the endpoint settings or the extra connections attributes for Amazon S3. You can choose either <code>SSE_S3</code> (the default) or <code>SSE_KMS</code>. </p> <note> <p>For the <code>ModifyEndpoint</code> operation, you can change the existing value of the <code>EncryptionMode</code> parameter from <code>SSE_KMS</code> to <code>SSE_S3</code>. But you can’t change the existing value from <code>SSE_S3</code> to <code>SSE_KMS</code>.</p> </note> <p>To use <code>SSE_S3</code>, you need an AWS Identity and Access Management (IAM) role with permission to allow <code>\"arn:aws:s3:::dms-*\"</code> to use the following actions:</p> <ul> <li> <p> <code>s3:CreateBucket</code> </p> </li> <li> <p> <code>s3:ListBucket</code> </p> </li> <li> <p> <code>s3:DeleteBucket</code> </p> </li> <li> <p> <code>s3:GetBucketLocation</code> </p> </li> <li> <p> <code>s3:GetObject</code> </p> </li> <li> <p> <code>s3:PutObject</code> </p> </li> <li> <p> <code>s3:DeleteObject</code> </p> </li> <li> <p> <code>s3:GetObjectVersion</code> </p> </li> <li> <p> <code>s3:GetBucketPolicy</code> </p> </li> <li> <p> <code>s3:PutBucketPolicy</code> </p> </li> <li> <p> <code>s3:DeleteBucketPolicy</code> </p> </li> </ul>"
        },
        "ServerSideEncryptionKmsKeyId": {
          "shape": "String",
          "documentation": "<p>If you are using <code>SSE_KMS</code> for the <code>EncryptionMode</code>, provide the AWS KMS key ID. The key that you use needs an attached policy that enables AWS Identity and Access Management (IAM) user permissions and allows use of the key.</p> <p>Here is a CLI example: <code>aws dms create-endpoint --endpoint-identifier <i>value</i> --endpoint-type target --engine-name s3 --s3-settings ServiceAccessRoleArn=<i>value</i>,BucketFolder=<i>value</i>,BucketName=<i>value</i>,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=<i>value</i> </code> </p>"
        },
        "DataFormat": {
          "shape": "DataFormatValue",
          "documentation": "<p>The format of the data that you want to use for output. You can choose one of the following: </p> <ul> <li> <p> <code>csv</code> : This is a row-based file format with comma-separated values (.csv). </p> </li> <li> <p> <code>parquet</code> : Apache Parquet (.parquet) is a columnar storage file format that features efficient compression and provides faster query response. </p> </li> </ul>"
        },
        "EncodingType": {
          "shape": "EncodingTypeValue",
          "documentation": "<p>The type of encoding you are using: </p> <ul> <li> <p> <code>RLE_DICTIONARY</code> uses a combination of bit-packing and run-length encoding to store repeated values more efficiently. This is the default.</p> </li> <li> <p> <code>PLAIN</code> doesn't use encoding at all. Values are stored as they are.</p> </li> <li> <p> <code>PLAIN_DICTIONARY</code> builds a dictionary of the values encountered in a given column. The dictionary is stored in a dictionary page for each column chunk.</p> </li> </ul>"
        },
        "DictPageSizeLimit": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum size of an encoded dictionary page of a column. If the dictionary page exceeds this, this column is stored using an encoding type of <code>PLAIN</code>. This parameter defaults to 1024 * 1024 bytes (1 MiB), the maximum size of a dictionary page before it reverts to <code>PLAIN</code> encoding. This size is used for .parquet file format only. </p>"
        },
        "RowGroupLength": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of rows in a row group. A smaller row group size provides faster reads. But as the number of row groups grows, the slower writes become. This parameter defaults to 10,000 rows. This number is used for .parquet file format only. </p> <p>If you choose a value larger than the maximum, <code>RowGroupLength</code> is set to the max row group length in bytes (64 * 1024 * 1024). </p>"
        },
        "DataPageSize": {
          "shape": "IntegerOptional",
          "documentation": "<p>The size of one data page in bytes. This parameter defaults to 1024 * 1024 bytes (1 MiB). This number is used for .parquet file format only. </p>"
        },
        "ParquetVersion": {
          "shape": "ParquetVersionValue",
          "documentation": "<p>The version of the Apache Parquet format that you want to use: <code>parquet_1_0</code> (the default) or <code>parquet_2_0</code>.</p>"
        },
        "EnableStatistics": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that enables statistics for Parquet pages and row groups. Choose <code>true</code> to enable statistics, <code>false</code> to disable. Statistics include <code>NULL</code>, <code>DISTINCT</code>, <code>MAX</code>, and <code>MIN</code> values. This parameter defaults to <code>true</code>. This value is used for .parquet file format only.</p>"
        },
        "IncludeOpForFullLoad": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that enables a full load to write INSERT operations to the comma-separated value (.csv) output files only to indicate how the rows were added to the source database.</p> <note> <p>AWS DMS supports the <code>IncludeOpForFullLoad</code> parameter in versions 3.1.4 and later.</p> </note> <p>For full load, records can only be inserted. By default (the <code>false</code> setting), no information is recorded in these output files for a full load to indicate that the rows were inserted at the source database. If <code>IncludeOpForFullLoad</code> is set to <code>true</code> or <code>y</code>, the INSERT is recorded as an I annotation in the first field of the .csv file. This allows the format of your target records from a full load to be consistent with the target records from a CDC load.</p> <note> <p>This setting works together with the <code>CdcInsertsOnly</code> and the <code>CdcInsertsAndUpdates</code> parameters for output to .csv files only. For more information about how these settings work together, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps\">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>AWS Database Migration Service User Guide.</i>.</p> </note>"
        },
        "CdcInsertsOnly": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that enables a change data capture (CDC) load to write only INSERT operations to .csv or columnar storage (.parquet) output files. By default (the <code>false</code> setting), the first field in a .csv or .parquet record contains the letter I (INSERT), U (UPDATE), or D (DELETE). These values indicate whether the row was inserted, updated, or deleted at the source database for a CDC load to the target.</p> <p>If <code>CdcInsertsOnly</code> is set to <code>true</code> or <code>y</code>, only INSERTs from the source database are migrated to the .csv or .parquet file. For .csv format only, how these INSERTs are recorded depends on the value of <code>IncludeOpForFullLoad</code>. If <code>IncludeOpForFullLoad</code> is set to <code>true</code>, the first field of every CDC record is set to I to indicate the INSERT operation at the source. If <code>IncludeOpForFullLoad</code> is set to <code>false</code>, every CDC record is written without a first field to indicate the INSERT operation at the source. For more information about how these settings work together, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps\">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>AWS Database Migration Service User Guide.</i>.</p> <note> <p>AWS DMS supports the interaction described preceding between the <code>CdcInsertsOnly</code> and <code>IncludeOpForFullLoad</code> parameters in versions 3.1.4 and later. </p> <p> <code>CdcInsertsOnly</code> and <code>CdcInsertsAndUpdates</code> can't both be set to <code>true</code> for the same endpoint. Set either <code>CdcInsertsOnly</code> or <code>CdcInsertsAndUpdates</code> to <code>true</code> for the same endpoint, but not both.</p> </note>"
        },
        "TimestampColumnName": {
          "shape": "String",
          "documentation": "<p>A value that when nonblank causes AWS DMS to add a column with timestamp information to the endpoint data for an Amazon S3 target.</p> <note> <p>AWS DMS supports the <code>TimestampColumnName</code> parameter in versions 3.1.4 and later.</p> </note> <p>DMS includes an additional <code>STRING</code> column in the .csv or .parquet object files of your migrated data when you set <code>TimestampColumnName</code> to a nonblank value.</p> <p>For a full load, each row of this timestamp column contains a timestamp for when the data was transferred from the source to the target by DMS. </p> <p>For a change data capture (CDC) load, each row of the timestamp column contains the timestamp for the commit of that row in the source database.</p> <p>The string format for this timestamp column value is <code>yyyy-MM-dd HH:mm:ss.SSSSSS</code>. By default, the precision of this value is in microseconds. For a CDC load, the rounding of the precision depends on the commit timestamp supported by DMS for the source database.</p> <p>When the <code>AddColumnName</code> parameter is set to <code>true</code>, DMS also includes a name for the timestamp column that you set with <code>TimestampColumnName</code>.</p>"
        },
        "ParquetTimestampInMillisecond": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that specifies the precision of any <code>TIMESTAMP</code> column values that are written to an Amazon S3 object file in .parquet format.</p> <note> <p>AWS DMS supports the <code>ParquetTimestampInMillisecond</code> parameter in versions 3.1.4 and later.</p> </note> <p>When <code>ParquetTimestampInMillisecond</code> is set to <code>true</code> or <code>y</code>, AWS DMS writes all <code>TIMESTAMP</code> columns in a .parquet formatted file with millisecond precision. Otherwise, DMS writes them with microsecond precision.</p> <p>Currently, Amazon Athena and AWS Glue can handle only millisecond precision for <code>TIMESTAMP</code> values. Set this parameter to <code>true</code> for S3 endpoint object files that are .parquet formatted only if you plan to query or process the data with Athena or AWS Glue.</p> <note> <p>AWS DMS writes any <code>TIMESTAMP</code> column values written to an S3 file in .csv format with microsecond precision.</p> <p>Setting <code>ParquetTimestampInMillisecond</code> has no effect on the string format of the timestamp column value that is inserted by setting the <code>TimestampColumnName</code> parameter.</p> </note>"
        },
        "CdcInsertsAndUpdates": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that enables a change data capture (CDC) load to write INSERT and UPDATE operations to .csv or .parquet (columnar storage) output files. The default setting is <code>false</code>, but when <code>CdcInsertsAndUpdates</code> is set to <code>true</code> or <code>y</code>, only INSERTs and UPDATEs from the source database are migrated to the .csv or .parquet file. </p> <p>For .csv file format only, how these INSERTs and UPDATEs are recorded depends on the value of the <code>IncludeOpForFullLoad</code> parameter. If <code>IncludeOpForFullLoad</code> is set to <code>true</code>, the first field of every CDC record is set to either <code>I</code> or <code>U</code> to indicate INSERT and UPDATE operations at the source. But if <code>IncludeOpForFullLoad</code> is set to <code>false</code>, CDC records are written without an indication of INSERT or UPDATE operations at the source. For more information about how these settings work together, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps\">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>AWS Database Migration Service User Guide.</i>.</p> <note> <p>AWS DMS supports the use of the <code>CdcInsertsAndUpdates</code> parameter in versions 3.3.1 and later.</p> <p> <code>CdcInsertsOnly</code> and <code>CdcInsertsAndUpdates</code> can't both be set to <code>true</code> for the same endpoint. Set either <code>CdcInsertsOnly</code> or <code>CdcInsertsAndUpdates</code> to <code>true</code> for the same endpoint, but not both.</p> </note>"
        }
      },
      "documentation": "<p>Settings for exporting data to Amazon S3. </p>"
    },
    "SchemaList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SecretString": {
      "type": "string",
      "sensitive": true
    },
    "SourceIdsList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "replication-instance"
      ]
    },
    "StartReplicationTaskAssessmentMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskArn"
      ],
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) of the replication task. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "StartReplicationTaskAssessmentResponse": {
      "type": "structure",
      "members": {
        "ReplicationTask": {
          "shape": "ReplicationTask",
          "documentation": "<p> The assessed replication task. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "StartReplicationTaskAssessmentRunMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskArn",
        "ServiceAccessRoleArn",
        "ResultLocationBucket",
        "AssessmentRunName"
      ],
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the migration task associated with the premigration assessment run that you want to start.</p>"
        },
        "ServiceAccessRoleArn": {
          "shape": "String",
          "documentation": "<p>ARN of a service role needed to start the assessment run.</p>"
        },
        "ResultLocationBucket": {
          "shape": "String",
          "documentation": "<p>Amazon S3 bucket where you want AWS DMS to store the results of this assessment run.</p>"
        },
        "ResultLocationFolder": {
          "shape": "String",
          "documentation": "<p>Folder within an Amazon S3 bucket where you want AWS DMS to store the results of this assessment run.</p>"
        },
        "ResultEncryptionMode": {
          "shape": "String",
          "documentation": "<p>Encryption mode that you can specify to encrypt the results of this assessment run. If you don't specify this request parameter, AWS DMS stores the assessment run results without encryption. You can specify one of the options following:</p> <ul> <li> <p> <code>\"SSE_S3\"</code> – The server-side encryption provided as a default by Amazon S3.</p> </li> <li> <p> <code>\"SSE_KMS\"</code> – AWS Key Management Service (AWS KMS) encryption. This encryption can use either a custom KMS encryption key that you specify or the default KMS encryption key that DMS provides.</p> </li> </ul>"
        },
        "ResultKmsKeyArn": {
          "shape": "String",
          "documentation": "<p>ARN of a custom KMS encryption key that you specify when you set <code>ResultEncryptionMode</code> to <code>\"SSE_KMS</code>\".</p>"
        },
        "AssessmentRunName": {
          "shape": "String",
          "documentation": "<p>Unique name to identify the assessment run.</p>"
        },
        "IncludeOnly": {
          "shape": "IncludeTestList",
          "documentation": "<p>Space-separated list of names for specific individual assessments that you want to include. These names come from the default list of individual assessments that AWS DMS supports for the associated migration task. This task is specified by <code>ReplicationTaskArn</code>.</p> <note> <p>You can't set a value for <code>IncludeOnly</code> if you also set a value for <code>Exclude</code> in the API operation. </p> <p>To identify the names of the default individual assessments that AWS DMS supports for the associated migration task, run the <code>DescribeApplicableIndividualAssessments</code> operation using its own <code>ReplicationTaskArn</code> request parameter.</p> </note>"
        },
        "Exclude": {
          "shape": "ExcludeTestList",
          "documentation": "<p>Space-separated list of names for specific individual assessments that you want to exclude. These names come from the default list of individual assessments that AWS DMS supports for the associated migration task. This task is specified by <code>ReplicationTaskArn</code>.</p> <note> <p>You can't set a value for <code>Exclude</code> if you also set a value for <code>IncludeOnly</code> in the API operation.</p> <p>To identify the names of the default individual assessments that AWS DMS supports for the associated migration task, run the <code>DescribeApplicableIndividualAssessments</code> operation using its own <code>ReplicationTaskArn</code> request parameter.</p> </note>"
        }
      },
      "documentation": "<p/>"
    },
    "StartReplicationTaskAssessmentRunResponse": {
      "type": "structure",
      "members": {
        "ReplicationTaskAssessmentRun": {
          "shape": "ReplicationTaskAssessmentRun",
          "documentation": "<p>The premigration assessment run that was started.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "StartReplicationTaskMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskArn",
        "StartReplicationTaskType"
      ],
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication task to be started.</p>"
        },
        "StartReplicationTaskType": {
          "shape": "StartReplicationTaskTypeValue",
          "documentation": "<p>The type of replication task.</p>"
        },
        "CdcStartTime": {
          "shape": "TStamp",
          "documentation": "<p>Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>"
        },
        "CdcStartPosition": {
          "shape": "String",
          "documentation": "<p>Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error.</p> <p> The value can be in date, checkpoint, or LSN/SCN format.</p> <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p> <p>Checkpoint Example: --cdc-start-position \"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93\"</p> <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p> <note> <p>When you use this task setting with a source PostgreSQL database, a logical replication slot should already be created and associated with the source endpoint. You can verify this by setting the <code>slotName</code> extra connection attribute to the name of this logical replication slot. For more information, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib\">Extra Connection Attributes When Using PostgreSQL as a Source for AWS DMS</a>.</p> </note>"
        },
        "CdcStopPosition": {
          "shape": "String",
          "documentation": "<p>Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time.</p> <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p> <p>Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “</p>"
        }
      },
      "documentation": "<p/>"
    },
    "StartReplicationTaskResponse": {
      "type": "structure",
      "members": {
        "ReplicationTask": {
          "shape": "ReplicationTask",
          "documentation": "<p>The replication task started.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "StartReplicationTaskTypeValue": {
      "type": "string",
      "enum": [
        "start-replication",
        "resume-processing",
        "reload-target"
      ]
    },
    "StopReplicationTaskMessage": {
      "type": "structure",
      "required": [
        "ReplicationTaskArn"
      ],
      "members": {
        "ReplicationTaskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name(ARN) of the replication task to be stopped.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "StopReplicationTaskResponse": {
      "type": "structure",
      "members": {
        "ReplicationTask": {
          "shape": "ReplicationTask",
          "documentation": "<p>The replication task stopped.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "String": {
      "type": "string"
    },
    "Subnet": {
      "type": "structure",
      "members": {
        "SubnetIdentifier": {
          "shape": "String",
          "documentation": "<p>The subnet identifier.</p>"
        },
        "SubnetAvailabilityZone": {
          "shape": "AvailabilityZone",
          "documentation": "<p>The Availability Zone of the subnet.</p>"
        },
        "SubnetStatus": {
          "shape": "String",
          "documentation": "<p>The status of the subnet.</p>"
        }
      },
      "documentation": "<p>In response to a request by the <code>DescribeReplicationSubnetGroup</code> operation, this object identifies a subnet by its given Availability Zone, subnet identifier, and status.</p>"
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
    "SupportedEndpointType": {
      "type": "structure",
      "members": {
        "EngineName": {
          "shape": "String",
          "documentation": "<p>The database engine name. Valid values, depending on the EndpointType, include <code>\"mysql\"</code>, <code>\"oracle\"</code>, <code>\"postgres\"</code>, <code>\"mariadb\"</code>, <code>\"aurora\"</code>, <code>\"aurora-postgresql\"</code>, <code>\"redshift\"</code>, <code>\"s3\"</code>, <code>\"db2\"</code>, <code>\"azuredb\"</code>, <code>\"sybase\"</code>, <code>\"dynamodb\"</code>, <code>\"mongodb\"</code>, <code>\"kinesis\"</code>, <code>\"kafka\"</code>, <code>\"elasticsearch\"</code>, <code>\"documentdb\"</code>, <code>\"sqlserver\"</code>, and <code>\"neptune\"</code>.</p>"
        },
        "SupportsCDC": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if Change Data Capture (CDC) is supported.</p>"
        },
        "EndpointType": {
          "shape": "ReplicationEndpointTypeValue",
          "documentation": "<p>The type of endpoint. Valid values are <code>source</code> and <code>target</code>.</p>"
        },
        "ReplicationInstanceEngineMinimumVersion": {
          "shape": "String",
          "documentation": "<p>The earliest AWS DMS engine version that supports this endpoint engine. Note that endpoint engines released with AWS DMS versions earlier than 3.1.1 do not return a value for this parameter.</p>"
        },
        "EngineDisplayName": {
          "shape": "String",
          "documentation": "<p>The expanded name for the engine name. For example, if the <code>EngineName</code> parameter is \"aurora,\" this value would be \"Amazon Aurora MySQL.\"</p>"
        }
      },
      "documentation": "<p>Provides information about types of supported endpoints in response to a request by the <code>DescribeEndpointTypes</code> operation. This information includes the type of endpoint, the database engine name, and whether change data capture (CDC) is supported.</p>"
    },
    "SupportedEndpointTypeList": {
      "type": "list",
      "member": {
        "shape": "SupportedEndpointType"
      }
    },
    "SybaseSettings": {
      "type": "structure",
      "members": {
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>Database name for the endpoint.</p>"
        },
        "Password": {
          "shape": "SecretString",
          "documentation": "<p>Endpoint connection password.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Endpoint TCP port.</p>"
        },
        "ServerName": {
          "shape": "String",
          "documentation": "<p>Fully qualified domain name of the endpoint.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>Endpoint connection user name.</p>"
        }
      },
      "documentation": "<p>Provides information that defines a SAP ASE endpoint.</p>"
    },
    "TStamp": {
      "type": "timestamp"
    },
    "TableListToReload": {
      "type": "list",
      "member": {
        "shape": "TableToReload"
      }
    },
    "TableStatistics": {
      "type": "structure",
      "members": {
        "SchemaName": {
          "shape": "String",
          "documentation": "<p>The schema name.</p>"
        },
        "TableName": {
          "shape": "String",
          "documentation": "<p>The name of the table.</p>"
        },
        "Inserts": {
          "shape": "Long",
          "documentation": "<p>The number of insert actions performed on a table.</p>"
        },
        "Deletes": {
          "shape": "Long",
          "documentation": "<p>The number of delete actions performed on a table.</p>"
        },
        "Updates": {
          "shape": "Long",
          "documentation": "<p>The number of update actions performed on a table.</p>"
        },
        "Ddls": {
          "shape": "Long",
          "documentation": "<p>The data definition language (DDL) used to build and modify the structure of your tables.</p>"
        },
        "FullLoadRows": {
          "shape": "Long",
          "documentation": "<p>The number of rows added during the full load operation.</p>"
        },
        "FullLoadCondtnlChkFailedRows": {
          "shape": "Long",
          "documentation": "<p>The number of rows that failed conditional checks during the full load operation (valid only for migrations where DynamoDB is the target).</p>"
        },
        "FullLoadErrorRows": {
          "shape": "Long",
          "documentation": "<p>The number of rows that failed to load during the full load operation (valid only for migrations where DynamoDB is the target).</p>"
        },
        "FullLoadStartTime": {
          "shape": "TStamp",
          "documentation": "<p>The time when the full load operation started.</p>"
        },
        "FullLoadEndTime": {
          "shape": "TStamp",
          "documentation": "<p>The time when the full load operation completed.</p>"
        },
        "FullLoadReloaded": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates if the table was reloaded (<code>true</code>) or loaded as part of a new full load operation (<code>false</code>).</p>"
        },
        "LastUpdateTime": {
          "shape": "TStamp",
          "documentation": "<p>The last time a table was updated.</p>"
        },
        "TableState": {
          "shape": "String",
          "documentation": "<p>The state of the tables described.</p> <p>Valid states: Table does not exist | Before load | Full load | Table completed | Table cancelled | Table error | Table all | Table updates | Table is being reloaded</p>"
        },
        "ValidationPendingRecords": {
          "shape": "Long",
          "documentation": "<p>The number of records that have yet to be validated.</p>"
        },
        "ValidationFailedRecords": {
          "shape": "Long",
          "documentation": "<p>The number of records that failed validation.</p>"
        },
        "ValidationSuspendedRecords": {
          "shape": "Long",
          "documentation": "<p>The number of records that couldn't be validated.</p>"
        },
        "ValidationState": {
          "shape": "String",
          "documentation": "<p>The validation state of the table.</p> <p>This parameter can have the following values:</p> <ul> <li> <p>Not enabled – Validation isn't enabled for the table in the migration task.</p> </li> <li> <p>Pending records – Some records in the table are waiting for validation.</p> </li> <li> <p>Mismatched records – Some records in the table don't match between the source and target.</p> </li> <li> <p>Suspended records – Some records in the table couldn't be validated.</p> </li> <li> <p>No primary key –The table couldn't be validated because it has no primary key.</p> </li> <li> <p>Table error – The table wasn't validated because it's in an error state and some data wasn't migrated.</p> </li> <li> <p>Validated – All rows in the table are validated. If the table is updated, the status can change from Validated.</p> </li> <li> <p>Error – The table couldn't be validated because of an unexpected error.</p> </li> <li> <p>Pending validation – The table is waiting validation.</p> </li> <li> <p>Preparing table – Preparing the table enabled in the migration task for validation.</p> </li> <li> <p>Pending revalidation – All rows in the table are pending validation after the table was updated.</p> </li> </ul>"
        },
        "ValidationStateDetails": {
          "shape": "String",
          "documentation": "<p>Additional details about the state of validation.</p>"
        }
      },
      "documentation": "<p>Provides a collection of table statistics in response to a request by the <code>DescribeTableStatistics</code> operation.</p>"
    },
    "TableStatisticsList": {
      "type": "list",
      "member": {
        "shape": "TableStatistics"
      }
    },
    "TableToReload": {
      "type": "structure",
      "required": [
        "SchemaName",
        "TableName"
      ],
      "members": {
        "SchemaName": {
          "shape": "String",
          "documentation": "<p>The schema name of the table to be reloaded.</p>"
        },
        "TableName": {
          "shape": "String",
          "documentation": "<p>The table name of the table to be reloaded.</p>"
        }
      },
      "documentation": "<p>Provides the name of the schema and table to be reloaded.</p>"
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>A key is the required name of the tag. The string value can be 1-128 Unicode characters in length and can't be prefixed with \"aws:\" or \"dms:\". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regular expressions: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>A value is the optional value of the tag. The string value can be 1-256 Unicode characters in length and can't be prefixed with \"aws:\" or \"dms:\". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regular expressions: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>"
        }
      },
      "documentation": "<p>A user-defined key-value pair that describes metadata added to an AWS DMS resource and that is used by operations such as the following:</p> <ul> <li> <p> <code>AddTagsToResource</code> </p> </li> <li> <p> <code>ListTagsForResource</code> </p> </li> <li> <p> <code>RemoveTagsFromResource</code> </p> </li> </ul>"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TestConnectionMessage": {
      "type": "structure",
      "required": [
        "ReplicationInstanceArn",
        "EndpointArn"
      ],
      "members": {
        "ReplicationInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the replication instance.</p>"
        },
        "EndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "TestConnectionResponse": {
      "type": "structure",
      "members": {
        "Connection": {
          "shape": "Connection",
          "documentation": "<p>The connection tested.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "VpcSecurityGroupIdList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "VpcSecurityGroupMembership": {
      "type": "structure",
      "members": {
        "VpcSecurityGroupId": {
          "shape": "String",
          "documentation": "<p>The VPC security group ID.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the VPC security group.</p>"
        }
      },
      "documentation": "<p>Describes the status of a security group associated with the virtual private cloud (VPC) hosting your replication and DB instances.</p>"
    },
    "VpcSecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "VpcSecurityGroupMembership"
      }
    }
  },
  "documentation": "<fullname>AWS Database Migration Service</fullname> <p>AWS Database Migration Service (AWS DMS) can migrate your data to and from the most widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to MySQL or SQL Server to PostgreSQL.</p> <p>For more information about AWS DMS, see <a href=\"https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html\">What Is AWS Database Migration Service?</a> in the <i>AWS Database Migration User Guide.</i> </p>"
}
]===]))