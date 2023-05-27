local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-10-15",
    "endpointPrefix": "codestar-notifications",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "AWS CodeStar Notifications",
    "serviceId": "codestar notifications",
    "signatureVersion": "v4",
    "signingName": "codestar-notifications",
    "uid": "codestar-notifications-2019-10-15"
  },
  "operations": {
    "CreateNotificationRule": {
      "name": "CreateNotificationRule",
      "http": {
        "method": "POST",
        "requestUri": "/createNotificationRule"
      },
      "input": {
        "shape": "CreateNotificationRuleRequest"
      },
      "output": {
        "shape": "CreateNotificationRuleResult"
      },
      "errors": [
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConfigurationException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a notification rule for a resource. The rule specifies the events you want notifications about and the targets (such as SNS topics) where you want to receive them.</p>"
    },
    "DeleteNotificationRule": {
      "name": "DeleteNotificationRule",
      "http": {
        "method": "POST",
        "requestUri": "/deleteNotificationRule"
      },
      "input": {
        "shape": "DeleteNotificationRuleRequest"
      },
      "output": {
        "shape": "DeleteNotificationRuleResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes a notification rule for a resource.</p>"
    },
    "DeleteTarget": {
      "name": "DeleteTarget",
      "http": {
        "method": "POST",
        "requestUri": "/deleteTarget"
      },
      "input": {
        "shape": "DeleteTargetRequest"
      },
      "output": {
        "shape": "DeleteTargetResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Deletes a specified target for notifications.</p>"
    },
    "DescribeNotificationRule": {
      "name": "DescribeNotificationRule",
      "http": {
        "method": "POST",
        "requestUri": "/describeNotificationRule"
      },
      "input": {
        "shape": "DescribeNotificationRuleRequest"
      },
      "output": {
        "shape": "DescribeNotificationRuleResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns information about a specified notification rule.</p>"
    },
    "ListEventTypes": {
      "name": "ListEventTypes",
      "http": {
        "method": "POST",
        "requestUri": "/listEventTypes"
      },
      "input": {
        "shape": "ListEventTypesRequest"
      },
      "output": {
        "shape": "ListEventTypesResult"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns information about the event types available for configuring notifications.</p>"
    },
    "ListNotificationRules": {
      "name": "ListNotificationRules",
      "http": {
        "method": "POST",
        "requestUri": "/listNotificationRules"
      },
      "input": {
        "shape": "ListNotificationRulesRequest"
      },
      "output": {
        "shape": "ListNotificationRulesResult"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns a list of the notification rules for an AWS account.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/listTagsForResource"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns a list of the tags associated with a notification rule.</p>"
    },
    "ListTargets": {
      "name": "ListTargets",
      "http": {
        "method": "POST",
        "requestUri": "/listTargets"
      },
      "input": {
        "shape": "ListTargetsRequest"
      },
      "output": {
        "shape": "ListTargetsResult"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns a list of the notification rule targets for an AWS account.</p>"
    },
    "Subscribe": {
      "name": "Subscribe",
      "http": {
        "method": "POST",
        "requestUri": "/subscribe"
      },
      "input": {
        "shape": "SubscribeRequest"
      },
      "output": {
        "shape": "SubscribeResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates an association between a notification rule and an SNS topic so that the associated target can receive notifications when the events described in the rule are triggered.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tagResource"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Associates a set of provided tags with a notification rule.</p>"
    },
    "Unsubscribe": {
      "name": "Unsubscribe",
      "http": {
        "method": "POST",
        "requestUri": "/unsubscribe"
      },
      "input": {
        "shape": "UnsubscribeRequest"
      },
      "output": {
        "shape": "UnsubscribeResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Removes an association between a notification rule and an Amazon SNS topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/untagResource"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Removes the association between one or more provided tags and a notification rule.</p>"
    },
    "UpdateNotificationRule": {
      "name": "UpdateNotificationRule",
      "http": {
        "method": "POST",
        "requestUri": "/updateNotificationRule"
      },
      "input": {
        "shape": "UpdateNotificationRuleRequest"
      },
      "output": {
        "shape": "UpdateNotificationRuleResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a notification rule for a resource. You can change the events that trigger the notification rule, the status of the rule, and the targets that receive the notifications.</p> <note> <p>To add or remove tags for a notification rule, you must use <a>TagResource</a> and <a>UntagResource</a>.</p> </note>"
    }
  },
  "shapes": {
    "ClientRequestToken": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[\\w:/-]+$"
    },
    "CreateNotificationRuleRequest": {
      "type": "structure",
      "required": [
        "Name",
        "EventTypeIds",
        "Resource",
        "Targets",
        "DetailType"
      ],
      "members": {
        "Name": {
          "shape": "NotificationRuleName",
          "documentation": "<p>The name for the notification rule. Notifictaion rule names must be unique in your AWS account.</p>"
        },
        "EventTypeIds": {
          "shape": "EventTypeIds",
          "documentation": "<p>A list of event types associated with this notification rule. For a list of allowed events, see <a>EventTypeSummary</a>.</p>"
        },
        "Resource": {
          "shape": "NotificationRuleResource",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to associate with the notification rule. Supported resources include pipelines in AWS CodePipeline, repositories in AWS CodeCommit, and build projects in AWS CodeBuild.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>A list of Amazon Resource Names (ARNs) of SNS topics to associate with the notification rule.</p>"
        },
        "DetailType": {
          "shape": "DetailType",
          "documentation": "<p>The level of detail to include in the notifications for this resource. BASIC will include only the contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request with the same parameters is received and a token is included, the request returns information about the initial request that used that token.</p> <note> <p>The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an idempotency token is created for you.</p> </note>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A list of tags to apply to this notification rule. Key names cannot start with \"aws\". </p>"
        },
        "Status": {
          "shape": "NotificationRuleStatus",
          "documentation": "<p>The status of the notification rule. The default value is ENABLED. If the status is set to DISABLED, notifications aren't sent for the notification rule.</p>"
        }
      }
    },
    "CreateNotificationRuleResult": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule.</p>"
        }
      }
    },
    "CreatedTimestamp": {
      "type": "timestamp"
    },
    "DeleteNotificationRuleRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule you want to delete.</p>"
        }
      }
    },
    "DeleteNotificationRuleResult": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deleted notification rule.</p>"
        }
      }
    },
    "DeleteTargetRequest": {
      "type": "structure",
      "required": [
        "TargetAddress"
      ],
      "members": {
        "TargetAddress": {
          "shape": "TargetAddress",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SNS topic to delete.</p>"
        },
        "ForceUnsubscribeAll": {
          "shape": "ForceUnsubscribeAll",
          "documentation": "<p>A Boolean value that can be used to delete all associations with this SNS topic. The default value is FALSE. If set to TRUE, all associations between that target and every notification rule in your AWS account are deleted.</p>"
        }
      }
    },
    "DeleteTargetResult": {
      "type": "structure",
      "members": {}
    },
    "DescribeNotificationRuleRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule.</p>"
        }
      }
    },
    "DescribeNotificationRuleResult": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule.</p>"
        },
        "Name": {
          "shape": "NotificationRuleName",
          "documentation": "<p>The name of the notification rule.</p>"
        },
        "EventTypes": {
          "shape": "EventTypeBatch",
          "documentation": "<p>A list of the event types associated with the notification rule.</p>"
        },
        "Resource": {
          "shape": "NotificationRuleResource",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource associated with the notification rule.</p>"
        },
        "Targets": {
          "shape": "TargetsBatch",
          "documentation": "<p>A list of the SNS topics associated with the notification rule.</p>"
        },
        "DetailType": {
          "shape": "DetailType",
          "documentation": "<p>The level of detail included in the notifications for this resource. BASIC will include only the contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>"
        },
        "CreatedBy": {
          "shape": "NotificationRuleCreatedBy",
          "documentation": "<p>The name or email alias of the person who created the notification rule.</p>"
        },
        "Status": {
          "shape": "NotificationRuleStatus",
          "documentation": "<p>The status of the notification rule. Valid statuses are on (sending notifications) or off (not sending notifications).</p>"
        },
        "CreatedTimestamp": {
          "shape": "CreatedTimestamp",
          "documentation": "<p>The date and time the notification rule was created, in timestamp format.</p>"
        },
        "LastModifiedTimestamp": {
          "shape": "LastModifiedTimestamp",
          "documentation": "<p>The date and time the notification rule was most recently updated, in timestamp format.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the notification rule.</p>"
        }
      }
    },
    "DetailType": {
      "type": "string",
      "enum": [
        "BASIC",
        "FULL"
      ]
    },
    "EventTypeBatch": {
      "type": "list",
      "member": {
        "shape": "EventTypeSummary"
      }
    },
    "EventTypeId": {
      "type": "string",
      "max": 200,
      "min": 1
    },
    "EventTypeIds": {
      "type": "list",
      "member": {
        "shape": "EventTypeId"
      }
    },
    "EventTypeName": {
      "type": "string"
    },
    "EventTypeSummary": {
      "type": "structure",
      "members": {
        "EventTypeId": {
          "shape": "EventTypeId",
          "documentation": "<p>The system-generated ID of the event.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the service for which the event applies.</p>"
        },
        "EventTypeName": {
          "shape": "EventTypeName",
          "documentation": "<p>The name of the event.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The resource type of the event.</p>"
        }
      },
      "documentation": "<p>Returns information about an event that has triggered a notification rule.</p>"
    },
    "ForceUnsubscribeAll": {
      "type": "boolean"
    },
    "LastModifiedTimestamp": {
      "type": "timestamp"
    },
    "ListEventTypesFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "ListEventTypesFilterName",
          "documentation": "<p>The system-generated name of the filter type you want to filter by.</p>"
        },
        "Value": {
          "shape": "ListEventTypesFilterValue",
          "documentation": "<p>The name of the resource type (for example, pipeline) or service name (for example, CodePipeline) that you want to filter by.</p>"
        }
      },
      "documentation": "<p>Information about a filter to apply to the list of returned event types. You can filter by resource type or service name.</p>"
    },
    "ListEventTypesFilterName": {
      "type": "string",
      "enum": [
        "RESOURCE_TYPE",
        "SERVICE_NAME"
      ]
    },
    "ListEventTypesFilterValue": {
      "type": "string"
    },
    "ListEventTypesFilters": {
      "type": "list",
      "member": {
        "shape": "ListEventTypesFilter"
      }
    },
    "ListEventTypesRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "ListEventTypesFilters",
          "documentation": "<p>The filters to use to return information by service or resource type.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-negative integer used to limit the number of returned results. The default number is 50. The maximum number of results that can be returned is 100.</p>",
          "box": true
        }
      }
    },
    "ListEventTypesResult": {
      "type": "structure",
      "members": {
        "EventTypes": {
          "shape": "EventTypeBatch",
          "documentation": "<p>Information about each event, including service name, resource type, event ID, and event name.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        }
      }
    },
    "ListNotificationRulesFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "ListNotificationRulesFilterName",
          "documentation": "<p>The name of the attribute you want to use to filter the returned notification rules.</p>"
        },
        "Value": {
          "shape": "ListNotificationRulesFilterValue",
          "documentation": "<p>The value of the attribute you want to use to filter the returned notification rules. For example, if you specify filtering by <i>RESOURCE</i> in Name, you might specify the ARN of a pipeline in AWS CodePipeline for the value.</p>"
        }
      },
      "documentation": "<p>Information about a filter to apply to the list of returned notification rules. You can filter by event type, owner, resource, or target.</p>"
    },
    "ListNotificationRulesFilterName": {
      "type": "string",
      "enum": [
        "EVENT_TYPE_ID",
        "CREATED_BY",
        "RESOURCE",
        "TARGET_ADDRESS"
      ]
    },
    "ListNotificationRulesFilterValue": {
      "type": "string"
    },
    "ListNotificationRulesFilters": {
      "type": "list",
      "member": {
        "shape": "ListNotificationRulesFilter"
      }
    },
    "ListNotificationRulesRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "ListNotificationRulesFilters",
          "documentation": "<p>The filters to use to return information by service or resource type. For valid values, see <a>ListNotificationRulesFilter</a>.</p> <note> <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p> </note>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-negative integer used to limit the number of returned results. The maximum number of results that can be returned is 100.</p>",
          "box": true
        }
      }
    },
    "ListNotificationRulesResult": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
        },
        "NotificationRules": {
          "shape": "NotificationRuleBatch",
          "documentation": "<p>The list of notification rules for the AWS account, by Amazon Resource Name (ARN) and ID. </p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the notification rule.</p>"
        }
      }
    },
    "ListTagsForResourceResult": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the notification rule.</p>"
        }
      }
    },
    "ListTargetsFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "ListTargetsFilterName",
          "documentation": "<p>The name of the attribute you want to use to filter the returned targets.</p>"
        },
        "Value": {
          "shape": "ListTargetsFilterValue",
          "documentation": "<p>The value of the attribute you want to use to filter the returned targets. For example, if you specify <i>SNS</i> for the Target type, you could specify an Amazon Resource Name (ARN) for a topic as the value.</p>"
        }
      },
      "documentation": "<p>Information about a filter to apply to the list of returned targets. You can filter by target type, address, or status. For example, to filter results to notification rules that have active Amazon SNS topics as targets, you could specify a ListTargetsFilter Name as TargetType and a Value of SNS, and a Name of TARGET_STATUS and a Value of ACTIVE.</p>"
    },
    "ListTargetsFilterName": {
      "type": "string",
      "enum": [
        "TARGET_TYPE",
        "TARGET_ADDRESS",
        "TARGET_STATUS"
      ]
    },
    "ListTargetsFilterValue": {
      "type": "string"
    },
    "ListTargetsFilters": {
      "type": "list",
      "member": {
        "shape": "ListTargetsFilter"
      }
    },
    "ListTargetsRequest": {
      "type": "structure",
      "members": {
        "Filters": {
          "shape": "ListTargetsFilters",
          "documentation": "<p>The filters to use to return information by service or resource type. Valid filters include target type, target address, and target status.</p> <note> <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p> </note>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>A non-negative integer used to limit the number of returned results. The maximum number of results that can be returned is 100.</p>",
          "box": true
        }
      }
    },
    "ListTargetsResult": {
      "type": "structure",
      "members": {
        "Targets": {
          "shape": "TargetsBatch",
          "documentation": "<p>The list of notification rule targets. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>An enumeration token that can be used in a request to return the next batch of results.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "pattern": "^[\\w/+=]+$"
    },
    "NotificationRuleArn": {
      "type": "string",
      "pattern": "^arn:aws[^:\\s]*:codestar-notifications:[^:\\s]+:\\d{12}:notificationrule\\/(.*\\S)?$"
    },
    "NotificationRuleBatch": {
      "type": "list",
      "member": {
        "shape": "NotificationRuleSummary"
      }
    },
    "NotificationRuleCreatedBy": {
      "type": "string",
      "min": 1
    },
    "NotificationRuleId": {
      "type": "string",
      "max": 40,
      "min": 1
    },
    "NotificationRuleName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[A-Za-z0-9\\-_ ]+$",
      "sensitive": true
    },
    "NotificationRuleResource": {
      "type": "string",
      "pattern": "^arn:aws[^:\\s]*:[^:\\s]*:[^:\\s]*:[0-9]{12}:[^\\s]+$"
    },
    "NotificationRuleStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "NotificationRuleSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "NotificationRuleId",
          "documentation": "<p>The unique ID of the notification rule.</p>"
        },
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule.</p>"
        }
      },
      "documentation": "<p>Information about a specified notification rule.</p>"
    },
    "ResourceType": {
      "type": "string",
      "min": 1,
      "pattern": "^([a-zA-Z0-9-])+$"
    },
    "ServiceName": {
      "type": "string"
    },
    "SubscribeRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "Target"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule for which you want to create the association.</p>"
        },
        "Target": {
          "shape": "Target"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>An enumeration token that, when provided in a request, returns the next batch of the results.</p>"
        }
      }
    },
    "SubscribeResult": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule for which you have created assocations.</p>"
        }
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "Tags"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule to tag.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The list of tags to associate with the resource. Tag key names cannot start with \"aws\".</p>"
        }
      }
    },
    "TagResourceResult": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The list of tags associated with the resource.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      }
    },
    "Target": {
      "type": "structure",
      "members": {
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>The target type. Can be an Amazon SNS topic.</p>"
        },
        "TargetAddress": {
          "shape": "TargetAddress",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SNS topic.</p>"
        }
      },
      "documentation": "<p>Information about the SNS topics associated with a notification rule.</p>"
    },
    "TargetAddress": {
      "type": "string",
      "max": 320,
      "min": 1,
      "sensitive": true
    },
    "TargetStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "ACTIVE",
        "UNREACHABLE",
        "INACTIVE",
        "DEACTIVATED"
      ]
    },
    "TargetSummary": {
      "type": "structure",
      "members": {
        "TargetAddress": {
          "shape": "TargetAddress",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SNS topic.</p>"
        },
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>The type of the target (for example, SNS).</p>"
        },
        "TargetStatus": {
          "shape": "TargetStatus",
          "documentation": "<p>The status of the target.</p>"
        }
      },
      "documentation": "<p>Information about the targets specified for a notification rule.</p>"
    },
    "TargetType": {
      "type": "string",
      "pattern": "^[A-Za-z]+$"
    },
    "Targets": {
      "type": "list",
      "member": {
        "shape": "Target"
      },
      "max": 10
    },
    "TargetsBatch": {
      "type": "list",
      "member": {
        "shape": "TargetSummary"
      }
    },
    "UnsubscribeRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "TargetAddress"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule.</p>"
        },
        "TargetAddress": {
          "shape": "TargetAddress",
          "documentation": "<p>The ARN of the SNS topic to unsubscribe from the notification rule.</p>"
        }
      }
    },
    "UnsubscribeResult": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the the notification rule from which you have removed a subscription.</p>"
        }
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "TagKeys"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule from which to remove the tags.</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>The key names of the tags to remove.</p>"
        }
      }
    },
    "UntagResourceResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateNotificationRuleRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "NotificationRuleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the notification rule.</p>"
        },
        "Name": {
          "shape": "NotificationRuleName",
          "documentation": "<p>The name of the notification rule.</p>"
        },
        "Status": {
          "shape": "NotificationRuleStatus",
          "documentation": "<p>The status of the notification rule. Valid statuses include enabled (sending notifications) or disabled (not sending notifications).</p>"
        },
        "EventTypeIds": {
          "shape": "EventTypeIds",
          "documentation": "<p>A list of event types associated with this notification rule.</p>"
        },
        "Targets": {
          "shape": "Targets",
          "documentation": "<p>The address and type of the targets to receive notifications from this notification rule.</p>"
        },
        "DetailType": {
          "shape": "DetailType",
          "documentation": "<p>The level of detail to include in the notifications for this resource. BASIC will include only the contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>"
        }
      }
    },
    "UpdateNotificationRuleResult": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<p>This AWS CodeStar Notifications API Reference provides descriptions and usage examples of the operations and data types for the AWS CodeStar Notifications API. You can use the AWS CodeStar Notifications API to work with the following objects:</p> <p>Notification rules, by calling the following: </p> <ul> <li> <p> <a>CreateNotificationRule</a>, which creates a notification rule for a resource in your account. </p> </li> <li> <p> <a>DeleteNotificationRule</a>, which deletes a notification rule. </p> </li> <li> <p> <a>DescribeNotificationRule</a>, which provides information about a notification rule. </p> </li> <li> <p> <a>ListNotificationRules</a>, which lists the notification rules associated with your account. </p> </li> <li> <p> <a>UpdateNotificationRule</a>, which changes the name, events, or targets associated with a notification rule. </p> </li> <li> <p> <a>Subscribe</a>, which subscribes a target to a notification rule. </p> </li> <li> <p> <a>Unsubscribe</a>, which removes a target from a notification rule. </p> </li> </ul> <p>Targets, by calling the following: </p> <ul> <li> <p> <a>DeleteTarget</a>, which removes a notification rule target (SNS topic) from a notification rule. </p> </li> <li> <p> <a>ListTargets</a>, which lists the targets associated with a notification rule. </p> </li> </ul> <p>Events, by calling the following: </p> <ul> <li> <p> <a>ListEventTypes</a>, which lists the event types you can include in a notification rule. </p> </li> </ul> <p>Tags, by calling the following: </p> <ul> <li> <p> <a>ListTagsForResource</a>, which lists the tags already associated with a notification rule in your account. </p> </li> <li> <p> <a>TagResource</a>, which associates a tag you provide with a notification rule in your account. </p> </li> <li> <p> <a>UntagResource</a>, which removes a tag from a notification rule in your account. </p> </li> </ul> <p> For information about how to use AWS CodeStar Notifications, see link in the CodeStarNotifications User Guide. </p>"
}
]===]))
