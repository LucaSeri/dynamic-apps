local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2013-11-01",
    "endpointPrefix": "cloudtrail",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "CloudTrail",
    "serviceFullName": "AWS CloudTrail",
    "serviceId": "CloudTrail",
    "signatureVersion": "v4",
    "targetPrefix": "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
    "uid": "cloudtrail-2013-11-01"
  },
  "operations": {
    "AddTags": {
      "name": "AddTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddTagsRequest"
      },
      "output": {
        "shape": "AddTagsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "CloudTrailARNInvalidException"
        },
        {
          "shape": "ResourceTypeNotSupportedException"
        },
        {
          "shape": "TagsLimitExceededException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "InvalidTagParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        }
      ],
      "documentation": "<p>Adds one or more tags to a trail, up to a limit of 50. Overwrites an existing tag's value when a new value is specified for an existing tag key. Tag key names must be unique for a trail; you cannot have two keys with the same name but different values. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all AWS Regions only from the Region in which the trail was created (also known as its home region).</p>",
      "idempotent": true
    },
    "CreateTrail": {
      "name": "CreateTrail",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTrailRequest"
      },
      "output": {
        "shape": "CreateTrailResponse"
      },
      "errors": [
        {
          "shape": "MaximumNumberOfTrailsExceededException"
        },
        {
          "shape": "TrailAlreadyExistsException"
        },
        {
          "shape": "S3BucketDoesNotExistException"
        },
        {
          "shape": "InsufficientS3BucketPolicyException"
        },
        {
          "shape": "InsufficientSnsTopicPolicyException"
        },
        {
          "shape": "InsufficientEncryptionPolicyException"
        },
        {
          "shape": "InvalidS3BucketNameException"
        },
        {
          "shape": "InvalidS3PrefixException"
        },
        {
          "shape": "InvalidSnsTopicNameException"
        },
        {
          "shape": "InvalidKmsKeyIdException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "TrailNotProvidedException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        },
        {
          "shape": "KmsKeyNotFoundException"
        },
        {
          "shape": "KmsKeyDisabledException"
        },
        {
          "shape": "KmsException"
        },
        {
          "shape": "InvalidCloudWatchLogsLogGroupArnException"
        },
        {
          "shape": "InvalidCloudWatchLogsRoleArnException"
        },
        {
          "shape": "CloudWatchLogsDeliveryUnavailableException"
        },
        {
          "shape": "InvalidTagParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "CloudTrailAccessNotEnabledException"
        },
        {
          "shape": "InsufficientDependencyServiceAccessPermissionException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        },
        {
          "shape": "OrganizationsNotInUseException"
        },
        {
          "shape": "OrganizationNotInAllFeaturesModeException"
        }
      ],
      "documentation": "<p>Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. </p>",
      "idempotent": true
    },
    "DeleteTrail": {
      "name": "DeleteTrail",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTrailRequest"
      },
      "output": {
        "shape": "DeleteTrailResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "InvalidHomeRegionException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        },
        {
          "shape": "InsufficientDependencyServiceAccessPermissionException"
        }
      ],
      "documentation": "<p>Deletes a trail. This operation must be called from the region in which the trail was created. <code>DeleteTrail</code> cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>",
      "idempotent": true
    },
    "DescribeTrails": {
      "name": "DescribeTrails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTrailsRequest"
      },
      "output": {
        "shape": "DescribeTrailsResponse"
      },
      "errors": [
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "InvalidTrailNameException"
        }
      ],
      "documentation": "<p>Retrieves settings for one or more trails associated with the current region for your account.</p>",
      "idempotent": true
    },
    "GetEventSelectors": {
      "name": "GetEventSelectors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEventSelectorsRequest"
      },
      "output": {
        "shape": "GetEventSelectorsResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:</p> <ul> <li> <p>If your event selector includes read-only events, write-only events, or all events. This applies to both management events and data events.</p> </li> <li> <p>If your event selector includes management events.</p> </li> <li> <p>If your event selector includes data events, the Amazon S3 objects or AWS Lambda functions that you are logging for data events.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html\">Logging Data and Management Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>",
      "idempotent": true
    },
    "GetInsightSelectors": {
      "name": "GetInsightSelectors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInsightSelectorsRequest"
      },
      "output": {
        "shape": "GetInsightSelectorsResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "InsightNotEnabledException"
        }
      ],
      "documentation": "<p>Describes the settings for the Insights event selectors that you configured for your trail. <code>GetInsightSelectors</code> shows if CloudTrail Insights event logging is enabled on the trail, and if it is, which insight types are enabled. If you run <code>GetInsightSelectors</code> on a trail that does not have Insights events enabled, the operation throws the exception <code>InsightNotEnabledException</code> </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html\">Logging CloudTrail Insights Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>",
      "idempotent": true
    },
    "GetTrail": {
      "name": "GetTrail",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTrailRequest"
      },
      "output": {
        "shape": "GetTrailResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Returns settings information for a specified trail.</p>",
      "idempotent": true
    },
    "GetTrailStatus": {
      "name": "GetTrailStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTrailStatusRequest"
      },
      "output": {
        "shape": "GetTrailStatusResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.</p>",
      "idempotent": true
    },
    "ListPublicKeys": {
      "name": "ListPublicKeys",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPublicKeysRequest"
      },
      "output": {
        "shape": "ListPublicKeysResponse"
      },
      "errors": [
        {
          "shape": "InvalidTimeRangeException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "InvalidTokenException"
        }
      ],
      "documentation": "<p>Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.</p> <note> <p>CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key.</p> </note>",
      "idempotent": true
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "CloudTrailARNInvalidException"
        },
        {
          "shape": "ResourceTypeNotSupportedException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "InvalidTokenException"
        }
      ],
      "documentation": "<p>Lists the tags for the trail in the current region.</p>",
      "idempotent": true
    },
    "ListTrails": {
      "name": "ListTrails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTrailsRequest"
      },
      "output": {
        "shape": "ListTrailsResponse"
      },
      "errors": [
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Lists trails that are in the current account.</p>",
      "idempotent": true
    },
    "LookupEvents": {
      "name": "LookupEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "LookupEventsRequest"
      },
      "output": {
        "shape": "LookupEventsResponse"
      },
      "errors": [
        {
          "shape": "InvalidLookupAttributesException"
        },
        {
          "shape": "InvalidTimeRangeException"
        },
        {
          "shape": "InvalidMaxResultsException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidEventCategoryException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Looks up <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events\">management events</a> or <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events\">CloudTrail Insights events</a> that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:</p> <ul> <li> <p>AWS access key</p> </li> <li> <p>Event ID</p> </li> <li> <p>Event name</p> </li> <li> <p>Event source</p> </li> <li> <p>Read only</p> </li> <li> <p>Resource name</p> </li> <li> <p>Resource type</p> </li> <li> <p>User name</p> </li> </ul> <p>Lookup supports the following attributes for Insights events:</p> <ul> <li> <p>Event ID</p> </li> <li> <p>Event name</p> </li> <li> <p>Event source</p> </li> </ul> <p>All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.</p> <important> <p>The rate of lookup requests is limited to two per second per account. If this limit is exceeded, a throttling error occurs.</p> </important>",
      "idempotent": true
    },
    "PutEventSelectors": {
      "name": "PutEventSelectors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutEventSelectorsRequest"
      },
      "output": {
        "shape": "PutEventSelectorsResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "InvalidHomeRegionException"
        },
        {
          "shape": "InvalidEventSelectorsException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        },
        {
          "shape": "InsufficientDependencyServiceAccessPermissionException"
        }
      ],
      "documentation": "<p>Configures an event selector for your trail. Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events. </p> <p>When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify that you want write-only events.</p> </li> <li> <p>The EC2 <code>GetConsoleOutput</code> and <code>RunInstances</code> API operations occur in your account.</p> </li> <li> <p>CloudTrail evaluates whether the events match your event selectors.</p> </li> <li> <p>The <code>RunInstances</code> is a write-only event and it matches your event selector. The trail logs the event.</p> </li> <li> <p>The <code>GetConsoleOutput</code> is a read-only event but it doesn't match your event selector. The trail doesn't log the event. </p> </li> </ol> <p>The <code>PutEventSelectors</code> operation must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p> <p>You can configure up to five event selectors for each trail. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html\">Logging Data and Management Events for Trails </a> and <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html\">Limits in AWS CloudTrail</a> in the <i>AWS CloudTrail User Guide</i>.</p>",
      "idempotent": true
    },
    "PutInsightSelectors": {
      "name": "PutInsightSelectors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutInsightSelectorsRequest"
      },
      "output": {
        "shape": "PutInsightSelectorsResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "InvalidHomeRegionException"
        },
        {
          "shape": "InvalidInsightSelectorsException"
        },
        {
          "shape": "InsufficientS3BucketPolicyException"
        },
        {
          "shape": "InsufficientEncryptionPolicyException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        }
      ],
      "documentation": "<p>Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail. You also use <code>PutInsightSelectors</code> to turn off Insights event logging, by passing an empty list of insight types. In this release, only <code>ApiCallRateInsight</code> is supported as an Insights selector.</p>",
      "idempotent": true
    },
    "RemoveTags": {
      "name": "RemoveTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveTagsRequest"
      },
      "output": {
        "shape": "RemoveTagsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "CloudTrailARNInvalidException"
        },
        {
          "shape": "ResourceTypeNotSupportedException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "InvalidTagParameterException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        }
      ],
      "documentation": "<p>Removes the specified tags from a trail.</p>",
      "idempotent": true
    },
    "StartLogging": {
      "name": "StartLogging",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartLoggingRequest"
      },
      "output": {
        "shape": "StartLoggingResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "InvalidHomeRegionException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        },
        {
          "shape": "InsufficientDependencyServiceAccessPermissionException"
        }
      ],
      "documentation": "<p>Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>",
      "idempotent": true
    },
    "StopLogging": {
      "name": "StopLogging",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopLoggingRequest"
      },
      "output": {
        "shape": "StopLoggingResponse"
      },
      "errors": [
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "InvalidHomeRegionException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        },
        {
          "shape": "InsufficientDependencyServiceAccessPermissionException"
        }
      ],
      "documentation": "<p>Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an <code>InvalidHomeRegionException</code> will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.</p>",
      "idempotent": true
    },
    "UpdateTrail": {
      "name": "UpdateTrail",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTrailRequest"
      },
      "output": {
        "shape": "UpdateTrailResponse"
      },
      "errors": [
        {
          "shape": "S3BucketDoesNotExistException"
        },
        {
          "shape": "InsufficientS3BucketPolicyException"
        },
        {
          "shape": "InsufficientSnsTopicPolicyException"
        },
        {
          "shape": "InsufficientEncryptionPolicyException"
        },
        {
          "shape": "TrailNotFoundException"
        },
        {
          "shape": "InvalidS3BucketNameException"
        },
        {
          "shape": "InvalidS3PrefixException"
        },
        {
          "shape": "InvalidSnsTopicNameException"
        },
        {
          "shape": "InvalidKmsKeyIdException"
        },
        {
          "shape": "InvalidTrailNameException"
        },
        {
          "shape": "TrailNotProvidedException"
        },
        {
          "shape": "InvalidEventSelectorsException"
        },
        {
          "shape": "InvalidParameterCombinationException"
        },
        {
          "shape": "InvalidHomeRegionException"
        },
        {
          "shape": "KmsKeyNotFoundException"
        },
        {
          "shape": "KmsKeyDisabledException"
        },
        {
          "shape": "KmsException"
        },
        {
          "shape": "InvalidCloudWatchLogsLogGroupArnException"
        },
        {
          "shape": "InvalidCloudWatchLogsRoleArnException"
        },
        {
          "shape": "CloudWatchLogsDeliveryUnavailableException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "CloudTrailAccessNotEnabledException"
        },
        {
          "shape": "InsufficientDependencyServiceAccessPermissionException"
        },
        {
          "shape": "OrganizationsNotInUseException"
        },
        {
          "shape": "NotOrganizationMasterAccountException"
        },
        {
          "shape": "OrganizationNotInAllFeaturesModeException"
        }
      ],
      "documentation": "<p>Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. <code>UpdateTrail</code> must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p>",
      "idempotent": true
    }
  },
  "shapes": {
    "AddTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "ResourceId": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the trail to which one or more tags will be added. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "TagsList": {
          "shape": "TagsList",
          "documentation": "<p>Contains a list of CloudTrail tags, up to a limit of 50</p>"
        }
      },
      "documentation": "<p>Specifies the tags to add to a trail.</p>"
    },
    "AddTagsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "ByteBuffer": {
      "type": "blob"
    },
    "CreateTrailRequest": {
      "type": "structure",
      "required": [
        "Name",
        "S3BucketName"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the trail. The name must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html\">Amazon S3 Bucket Naming Requirements</a>.</p>"
        },
        "S3KeyPrefix": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>"
        },
        "SnsTopicName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>"
        },
        "IncludeGlobalServiceEvents": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"
        },
        "IsMultiRegionTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is created in the current region or in all regions. The default is false, which creates a trail only in the region where you are signed in. As a best practice, consider creating trails that log events in all regions.</p>"
        },
        "EnableLogFileValidation": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether log file integrity validation is enabled. The default is false.</p> <note> <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p> </note>"
        },
        "CloudWatchLogsLogGroupArn": {
          "shape": "String",
          "documentation": "<p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.</p>"
        },
        "CloudWatchLogsRoleArn": {
          "shape": "String",
          "documentation": "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.</p> <p>Examples:</p> <ul> <li> <p>alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>12345678-1234-1234-1234-123456789012</p> </li> </ul>"
        },
        "IsOrganizationTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is created for all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations.</p>"
        },
        "TagsList": {
          "shape": "TagsList"
        }
      },
      "documentation": "<p>Specifies the settings for each trail.</p>"
    },
    "CreateTrailResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the trail.</p>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>"
        },
        "S3KeyPrefix": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>.</p>"
        },
        "SnsTopicName": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use. Use SnsTopicARN.</p>",
          "deprecated": true
        },
        "SnsTopicARN": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code> </p>"
        },
        "IncludeGlobalServiceEvents": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"
        },
        "IsMultiRegionTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail exists in one region or in all regions.</p>"
        },
        "TrailARN": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the trail that was created. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "LogFileValidationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether log file integrity validation is enabled.</p>"
        },
        "CloudWatchLogsLogGroupArn": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>"
        },
        "CloudWatchLogsRoleArn": {
          "shape": "String",
          "documentation": "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>"
        },
        "IsOrganizationTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is an organization trail.</p>"
        }
      },
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "DataResource": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "String",
          "documentation": "<p>The resource type in which you want to log data events. You can specify <code>AWS::S3::Object</code> or <code>AWS::Lambda::Function</code> resources.</p>"
        },
        "Values": {
          "shape": "DataResourceValues",
          "documentation": "<p>An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.</p> <ul> <li> <p>To log data events for all objects in all S3 buckets in your AWS account, specify the prefix as <code>arn:aws:s3:::</code>. </p> <note> <p>This will also enable logging of data event activity performed by any user or role in your AWS account, even if that activity is performed on a bucket that belongs to another AWS account. </p> </note> </li> <li> <p>To log data events for all objects in an S3 bucket, specify the bucket and an empty object prefix such as <code>arn:aws:s3:::bucket-1/</code>. The trail logs data events for all objects in this S3 bucket.</p> </li> <li> <p>To log data events for specific objects, specify the S3 bucket and object prefix such as <code>arn:aws:s3:::bucket-1/example-images</code>. The trail logs data events for objects in this S3 bucket that match the prefix.</p> </li> <li> <p>To log data events for all functions in your AWS account, specify the prefix as <code>arn:aws:lambda</code>.</p> <note> <p>This will also enable logging of <code>Invoke</code> activity performed by any user or role in your AWS account, even if that activity is performed on a function that belongs to another AWS account. </p> </note> </li> <li> <p>To log data events for a specific Lambda function, specify the function ARN.</p> <note> <p>Lambda function ARNs are exact. For example, if you specify a function ARN <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>, data events will only be logged for <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>. They will not be logged for <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld2</i>.</p> </note> </li> </ul>"
        }
      },
      "documentation": "<p>The Amazon S3 buckets or AWS Lambda functions that you specify in your event selectors for your trail to log data events. Data events provide information about the resource operations performed on or within a resource itself. These are also known as data plane operations. You can specify up to 250 data resources for a trail.</p> <note> <p>The total number of allowed data resources is 250. This number can be distributed between 1 and 5 event selectors, but the total cannot exceed 250 across all selectors.</p> </note> <p>The following example demonstrates how logging works when you configure logging of all data events for an S3 bucket named <code>bucket-1</code>. In this example, the CloudTrail user specified an empty prefix, and the option to log both <code>Read</code> and <code>Write</code> data events.</p> <ol> <li> <p>A user uploads an image file to <code>bucket-1</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation is an Amazon S3 object-level API. It is recorded as a data event in CloudTrail. Because the CloudTrail user specified an S3 bucket with an empty prefix, events that occur on any object in that bucket are logged. The trail processes and logs the event.</p> </li> <li> <p>A user uploads an object to an Amazon S3 bucket named <code>arn:aws:s3:::bucket-2</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation occurred for an object in an S3 bucket that the CloudTrail user didn't specify for the trail. The trail doesn’t log the event.</p> </li> </ol> <p>The following example demonstrates how logging works when you configure logging of AWS Lambda data events for a Lambda function named <i>MyLambdaFunction</i>, but not for all AWS Lambda functions.</p> <ol> <li> <p>A user runs a script that includes a call to the <i>MyLambdaFunction</i> function and the <i>MyOtherLambdaFunction</i> function.</p> </li> <li> <p>The <code>Invoke</code> API operation on <i>MyLambdaFunction</i> is an AWS Lambda API. It is recorded as a data event in CloudTrail. Because the CloudTrail user specified logging data events for <i>MyLambdaFunction</i>, any invocations of that function are logged. The trail processes and logs the event. </p> </li> <li> <p>The <code>Invoke</code> API operation on <i>MyOtherLambdaFunction</i> is an AWS Lambda API. Because the CloudTrail user did not specify logging data events for all Lambda functions, the <code>Invoke</code> operation for <i>MyOtherLambdaFunction</i> does not match the function specified for the trail. The trail doesn’t log the event. </p> </li> </ol>"
    },
    "DataResourceValues": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "DataResources": {
      "type": "list",
      "member": {
        "shape": "DataResource"
      }
    },
    "Date": {
      "type": "timestamp"
    },
    "DeleteTrailRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The format of a trail ARN is: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        }
      },
      "documentation": "<p>The request that specifies the name of a trail to delete.</p>"
    },
    "DeleteTrailResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "DescribeTrailsRequest": {
      "type": "structure",
      "members": {
        "trailNameList": {
          "shape": "TrailNameList",
          "documentation": "<p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p> <p>If an empty list is specified, information for the trail in the current region is returned.</p> <ul> <li> <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then information for all trails in the current region is returned.</p> </li> <li> <p>If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.</p> </li> </ul> <note> <p>If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN.</p> </note>"
        },
        "includeShadowTrails": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region, or in the case of an organization trail, the replication of an organization trail in member accounts. If you do not include shadow trails, organization trails in a member account and region replication trails will not be returned. The default is true.</p>"
        }
      },
      "documentation": "<p>Returns information about the trail.</p>"
    },
    "DescribeTrailsResponse": {
      "type": "structure",
      "members": {
        "trailList": {
          "shape": "TrailList",
          "documentation": "<p>The list of trail objects. Trail objects with string values are only returned if values for the objects exist in a trail's configuration. For example, <code>SNSTopicName</code> and <code>SNSTopicARN</code> are only returned in results if a trail is configured to send SNS notifications. Similarly, <code>KMSKeyId</code> only appears in results if a trail's log files are encrypted with AWS KMS-managed keys.</p>"
        }
      },
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "Event": {
      "type": "structure",
      "members": {
        "EventId": {
          "shape": "String",
          "documentation": "<p>The CloudTrail ID of the event returned.</p>"
        },
        "EventName": {
          "shape": "String",
          "documentation": "<p>The name of the event returned.</p>"
        },
        "ReadOnly": {
          "shape": "String",
          "documentation": "<p>Information about whether the event is a write event or a read event. </p>"
        },
        "AccessKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS access key ID that was used to sign the request. If the request was made with temporary security credentials, this is the access key ID of the temporary credentials.</p>"
        },
        "EventTime": {
          "shape": "Date",
          "documentation": "<p>The date and time of the event returned.</p>"
        },
        "EventSource": {
          "shape": "String",
          "documentation": "<p>The AWS service that the request was made to.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>A user name or role name of the requester that called the API in the event returned.</p>"
        },
        "Resources": {
          "shape": "ResourceList",
          "documentation": "<p>A list of resources referenced by the event returned.</p>"
        },
        "CloudTrailEvent": {
          "shape": "String",
          "documentation": "<p>A JSON string that contains a representation of the event returned.</p>"
        }
      },
      "documentation": "<p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>"
    },
    "EventCategory": {
      "type": "string",
      "enum": [
        "insight"
      ]
    },
    "EventSelector": {
      "type": "structure",
      "members": {
        "ReadWriteType": {
          "shape": "ReadWriteType",
          "documentation": "<p>Specify if you want your trail to log read-only events, write-only events, or all. For example, the EC2 <code>GetConsoleOutput</code> is a read-only API operation and <code>RunInstances</code> is a write-only API operation.</p> <p> By default, the value is <code>All</code>.</p>"
        },
        "IncludeManagementEvents": {
          "shape": "Boolean",
          "documentation": "<p>Specify if you want your event selector to include management events for your trail.</p> <p> For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events\">Management Events</a> in the <i>AWS CloudTrail User Guide</i>.</p> <p>By default, the value is <code>true</code>.</p>"
        },
        "DataResources": {
          "shape": "DataResources",
          "documentation": "<p>CloudTrail supports data event logging for Amazon S3 objects and AWS Lambda functions. You can specify up to 250 resources for an individual event selector, but the total number of data resources cannot exceed 250 across all event selectors in a trail. This limit does not apply if you configure resource logging for all data events. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events\">Data Events</a> and <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html\">Limits in AWS CloudTrail</a> in the <i>AWS CloudTrail User Guide</i>.</p>"
        },
        "ExcludeManagementEventSources": {
          "shape": "ExcludeManagementEventSources",
          "documentation": "<p>An optional list of service event sources from which you do not want management events to be logged on your trail. In this release, the list can be empty (disables the filter), or it can filter out AWS Key Management Service events by containing <code>\"kms.amazonaws.com\"</code>. By default, <code>ExcludeManagementEventSources</code> is empty, and AWS KMS events are included in events that are logged to your trail. </p>"
        }
      },
      "documentation": "<p>Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.</p> <p>You can configure up to five event selectors for a trail.</p>"
    },
    "EventSelectors": {
      "type": "list",
      "member": {
        "shape": "EventSelector"
      }
    },
    "EventsList": {
      "type": "list",
      "member": {
        "shape": "Event"
      }
    },
    "ExcludeManagementEventSources": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "GetEventSelectorsRequest": {
      "type": "structure",
      "required": [
        "TrailName"
      ],
      "members": {
        "TrailName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If you specify a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        }
      }
    },
    "GetEventSelectorsResponse": {
      "type": "structure",
      "members": {
        "TrailARN": {
          "shape": "String",
          "documentation": "<p>The specified trail ARN that has the event selectors.</p>"
        },
        "EventSelectors": {
          "shape": "EventSelectors",
          "documentation": "<p>The event selectors that are configured for the trail.</p>"
        }
      }
    },
    "GetInsightSelectorsRequest": {
      "type": "structure",
      "required": [
        "TrailName"
      ],
      "members": {
        "TrailName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If you specify a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        }
      }
    },
    "GetInsightSelectorsResponse": {
      "type": "structure",
      "members": {
        "TrailARN": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of a trail for which you want to get Insights selectors.</p>"
        },
        "InsightSelectors": {
          "shape": "InsightSelectors",
          "documentation": "<p>A JSON string that contains the insight types you want to log on a trail. In this release, only <code>ApiCallRateInsight</code> is supported as an insight type.</p>"
        }
      }
    },
    "GetTrailRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name or the Amazon Resource Name (ARN) of the trail for which you want to retrieve settings information.</p>"
        }
      }
    },
    "GetTrailResponse": {
      "type": "structure",
      "members": {
        "Trail": {
          "shape": "Trail"
        }
      }
    },
    "GetTrailStatusRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        }
      },
      "documentation": "<p>The name of a trail about which you want the current status.</p>"
    },
    "GetTrailStatusResponse": {
      "type": "structure",
      "members": {
        "IsLogging": {
          "shape": "Boolean",
          "documentation": "<p>Whether the CloudTrail is currently logging AWS API calls.</p>"
        },
        "LatestDeliveryError": {
          "shape": "String",
          "documentation": "<p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files to the designated bucket. For more information see the topic <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html\">Error Responses</a> in the Amazon S3 API Reference. </p> <note> <p>This error occurs only when there is a problem with the destination S3 bucket and will not occur for timeouts. To resolve the issue, create a new bucket and call <code>UpdateTrail</code> to specify the new bucket, or fix the existing objects so that CloudTrail can again write to the bucket.</p> </note>"
        },
        "LatestNotificationError": {
          "shape": "String",
          "documentation": "<p>Displays any Amazon SNS error that CloudTrail encountered when attempting to send a notification. For more information about Amazon SNS errors, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/welcome.html\">Amazon SNS Developer Guide</a>. </p>"
        },
        "LatestDeliveryTime": {
          "shape": "Date",
          "documentation": "<p>Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.</p>"
        },
        "LatestNotificationTime": {
          "shape": "Date",
          "documentation": "<p>Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.</p>"
        },
        "StartLoggingTime": {
          "shape": "Date",
          "documentation": "<p>Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.</p>"
        },
        "StopLoggingTime": {
          "shape": "Date",
          "documentation": "<p>Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.</p>"
        },
        "LatestCloudWatchLogsDeliveryError": {
          "shape": "String",
          "documentation": "<p>Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.</p>"
        },
        "LatestCloudWatchLogsDeliveryTime": {
          "shape": "Date",
          "documentation": "<p>Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.</p>"
        },
        "LatestDigestDeliveryTime": {
          "shape": "Date",
          "documentation": "<p>Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.</p>"
        },
        "LatestDigestDeliveryError": {
          "shape": "String",
          "documentation": "<p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest file to the designated bucket. For more information see the topic <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html\">Error Responses</a> in the Amazon S3 API Reference. </p> <note> <p>This error occurs only when there is a problem with the destination S3 bucket and will not occur for timeouts. To resolve the issue, create a new bucket and call <code>UpdateTrail</code> to specify the new bucket, or fix the existing objects so that CloudTrail can again write to the bucket.</p> </note>"
        },
        "LatestDeliveryAttemptTime": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use.</p>"
        },
        "LatestNotificationAttemptTime": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use.</p>"
        },
        "LatestNotificationAttemptSucceeded": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use.</p>"
        },
        "LatestDeliveryAttemptSucceeded": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use.</p>"
        },
        "TimeLoggingStarted": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use.</p>"
        },
        "TimeLoggingStopped": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use.</p>"
        }
      },
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "InsightSelector": {
      "type": "structure",
      "members": {
        "InsightType": {
          "shape": "InsightType",
          "documentation": "<p>The type of insights to log on a trail. In this release, only <code>ApiCallRateInsight</code> is supported as an insight type.</p>"
        }
      },
      "documentation": "<p>A JSON string that contains a list of insight types that are logged on a trail.</p>"
    },
    "InsightSelectors": {
      "type": "list",
      "member": {
        "shape": "InsightSelector"
      }
    },
    "InsightType": {
      "type": "string",
      "enum": [
        "ApiCallRateInsight"
      ]
    },
    "ListPublicKeysRequest": {
      "type": "structure",
      "members": {
        "StartTime": {
          "shape": "Date",
          "documentation": "<p>Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.</p>"
        },
        "EndTime": {
          "shape": "Date",
          "documentation": "<p>Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Reserved for future use.</p>"
        }
      },
      "documentation": "<p>Requests the public keys for a specified time range.</p>"
    },
    "ListPublicKeysResponse": {
      "type": "structure",
      "members": {
        "PublicKeyList": {
          "shape": "PublicKeyList",
          "documentation": "<p>Contains an array of PublicKey objects.</p> <note> <p>The returned public keys may have validity time ranges that overlap.</p> </note>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Reserved for future use.</p>"
        }
      },
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "ListTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceIdList"
      ],
      "members": {
        "ResourceIdList": {
          "shape": "ResourceIdList",
          "documentation": "<p>Specifies a list of trail ARNs whose tags will be listed. The list has a limit of 20 ARNs. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Reserved for future use.</p>"
        }
      },
      "documentation": "<p>Specifies a list of trail tags to return.</p>"
    },
    "ListTagsResponse": {
      "type": "structure",
      "members": {
        "ResourceTagList": {
          "shape": "ResourceTagList",
          "documentation": "<p>A list of resource tags.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Reserved for future use.</p>"
        }
      },
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "ListTrailsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>"
        }
      }
    },
    "ListTrailsResponse": {
      "type": "structure",
      "members": {
        "Trails": {
          "shape": "Trails",
          "documentation": "<p>Returns the name, ARN, and home region of trails in the current account.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token to use to get the next page of results after a previous API call. If the token does not appear, there are no more results to return. The token must be passed in with the same parameters as the previous call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>"
        }
      }
    },
    "LookupAttribute": {
      "type": "structure",
      "required": [
        "AttributeKey",
        "AttributeValue"
      ],
      "members": {
        "AttributeKey": {
          "shape": "LookupAttributeKey",
          "documentation": "<p>Specifies an attribute on which to filter the events returned.</p>"
        },
        "AttributeValue": {
          "shape": "String",
          "documentation": "<p>Specifies a value for the specified AttributeKey.</p>"
        }
      },
      "documentation": "<p>Specifies an attribute and value that filter the events returned.</p>"
    },
    "LookupAttributeKey": {
      "type": "string",
      "enum": [
        "EventId",
        "EventName",
        "ReadOnly",
        "Username",
        "ResourceType",
        "ResourceName",
        "EventSource",
        "AccessKeyId"
      ]
    },
    "LookupAttributesList": {
      "type": "list",
      "member": {
        "shape": "LookupAttribute"
      }
    },
    "LookupEventsRequest": {
      "type": "structure",
      "members": {
        "LookupAttributes": {
          "shape": "LookupAttributesList",
          "documentation": "<p>Contains a list of lookup attributes. Currently the list can contain only one item.</p>"
        },
        "StartTime": {
          "shape": "Date",
          "documentation": "<p>Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.</p>"
        },
        "EndTime": {
          "shape": "Date",
          "documentation": "<p>Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.</p>"
        },
        "EventCategory": {
          "shape": "EventCategory",
          "documentation": "<p>Specifies the event category. If you do not specify an event category, events of the category are not returned in the response. For example, if you do not specify <code>insight</code> as the value of <code>EventCategory</code>, no Insights events are returned.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of events to return. Possible values are 1 through 50. The default is 50.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>"
        }
      },
      "documentation": "<p>Contains a request for LookupEvents.</p>"
    },
    "LookupEventsResponse": {
      "type": "structure",
      "members": {
        "Events": {
          "shape": "EventsList",
          "documentation": "<p>A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed first.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to get the next page of results after a previous API call. If the token does not appear, there are no more results to return. The token must be passed in with the same parameters as the previous call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>"
        }
      },
      "documentation": "<p>Contains a response to a LookupEvents action.</p>"
    },
    "MaxResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "NextToken": {
      "type": "string"
    },
    "PublicKey": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "ByteBuffer",
          "documentation": "<p>The DER encoded public key value in PKCS#1 format.</p>"
        },
        "ValidityStartTime": {
          "shape": "Date",
          "documentation": "<p>The starting time of validity of the public key.</p>"
        },
        "ValidityEndTime": {
          "shape": "Date",
          "documentation": "<p>The ending time of validity of the public key.</p>"
        },
        "Fingerprint": {
          "shape": "String",
          "documentation": "<p>The fingerprint of the public key.</p>"
        }
      },
      "documentation": "<p>Contains information about a returned public key.</p>"
    },
    "PublicKeyList": {
      "type": "list",
      "member": {
        "shape": "PublicKey"
      }
    },
    "PutEventSelectorsRequest": {
      "type": "structure",
      "required": [
        "TrailName",
        "EventSelectors"
      ],
      "members": {
        "TrailName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If you specify a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "EventSelectors": {
          "shape": "EventSelectors",
          "documentation": "<p>Specifies the settings for your event selectors. You can configure up to five event selectors for a trail.</p>"
        }
      }
    },
    "PutEventSelectorsResponse": {
      "type": "structure",
      "members": {
        "TrailARN": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the trail that was updated with event selectors. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "EventSelectors": {
          "shape": "EventSelectors",
          "documentation": "<p>Specifies the event selectors configured for your trail.</p>"
        }
      }
    },
    "PutInsightSelectorsRequest": {
      "type": "structure",
      "required": [
        "TrailName",
        "InsightSelectors"
      ],
      "members": {
        "TrailName": {
          "shape": "String",
          "documentation": "<p>The name of the CloudTrail trail for which you want to change or add Insights selectors.</p>"
        },
        "InsightSelectors": {
          "shape": "InsightSelectors",
          "documentation": "<p>A JSON string that contains the insight types you want to log on a trail. In this release, only <code>ApiCallRateInsight</code> is supported as an insight type.</p>"
        }
      }
    },
    "PutInsightSelectorsResponse": {
      "type": "structure",
      "members": {
        "TrailARN": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of a trail for which you want to change or add Insights selectors.</p>"
        },
        "InsightSelectors": {
          "shape": "InsightSelectors",
          "documentation": "<p>A JSON string that contains the insight types you want to log on a trail. In this release, only <code>ApiCallRateInsight</code> is supported as an insight type.</p>"
        }
      }
    },
    "ReadWriteType": {
      "type": "string",
      "enum": [
        "ReadOnly",
        "WriteOnly",
        "All"
      ]
    },
    "RemoveTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "ResourceId": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the trail from which tags should be removed. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "TagsList": {
          "shape": "TagsList",
          "documentation": "<p>Specifies a list of tags to be removed.</p>"
        }
      },
      "documentation": "<p>Specifies the tags to remove from a trail.</p>"
    },
    "RemoveTagsResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "Resource": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "String",
          "documentation": "<p>The type of a resource referenced by the event returned. When the resource type cannot be determined, null is returned. Some examples of resource types are: <b>Instance</b> for EC2, <b>Trail</b> for CloudTrail, <b>DBInstance</b> for RDS, and <b>AccessKey</b> for IAM. To learn more about how to look up and filter events by the resource types supported for a service, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html#filtering-cloudtrail-events\">Filtering CloudTrail Events</a>.</p>"
        },
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The name of the resource referenced by the event returned. These are user-created names whose values will depend on the environment. For example, the resource name might be \"auto-scaling-test-group\" for an Auto Scaling Group or \"i-1234567\" for an EC2 Instance.</p>"
        }
      },
      "documentation": "<p>Specifies the type and name of a resource referenced by an event.</p>"
    },
    "ResourceIdList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ResourceList": {
      "type": "list",
      "member": {
        "shape": "Resource"
      },
      "documentation": "<p>A list of resources referenced by the event returned.</p>"
    },
    "ResourceTag": {
      "type": "structure",
      "members": {
        "ResourceId": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the resource.</p>"
        },
        "TagsList": {
          "shape": "TagsList",
          "documentation": "<p>A list of tags.</p>"
        }
      },
      "documentation": "<p>A resource tag.</p>"
    },
    "ResourceTagList": {
      "type": "list",
      "member": {
        "shape": "ResourceTag"
      }
    },
    "StartLoggingRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs AWS API calls. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        }
      },
      "documentation": "<p>The request to CloudTrail to start logging AWS API calls for an account.</p>"
    },
    "StartLoggingResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "StopLoggingRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging AWS API calls. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        }
      },
      "documentation": "<p>Passes the request to CloudTrail to stop logging AWS API calls for the specified account.</p>"
    },
    "StopLoggingResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    },
    "String": {
      "type": "string"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>The key in a key-value pair. The key must be must be no longer than 128 Unicode characters. The key must be unique for the resource to which it applies.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The value in a key-value pair of a tag. The value must be no longer than 256 Unicode characters.</p>"
        }
      },
      "documentation": "<p>A custom key-value pair associated with a resource such as a CloudTrail trail.</p>"
    },
    "TagsList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "documentation": "<p>A list of tags.</p>"
    },
    "Trail": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Name of the trail set by calling <a>CreateTrail</a>. The maximum length is 128 characters.</p>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>Name of the Amazon S3 bucket into which CloudTrail delivers your trail files. See <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html\">Amazon S3 Bucket Naming Requirements</a>.</p>"
        },
        "S3KeyPrefix": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>.The maximum length is 200 characters.</p>"
        },
        "SnsTopicName": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use. Use SnsTopicARN.</p>",
          "deprecated": true
        },
        "SnsTopicARN": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code> </p>"
        },
        "IncludeGlobalServiceEvents": {
          "shape": "Boolean",
          "documentation": "<p>Set to <b>True</b> to include AWS API calls from AWS global services such as IAM. Otherwise, <b>False</b>.</p>"
        },
        "IsMultiRegionTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail exists only in one region or exists in all regions.</p>"
        },
        "HomeRegion": {
          "shape": "String",
          "documentation": "<p>The region in which the trail was created.</p>"
        },
        "TrailARN": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the trail. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "LogFileValidationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether log file validation is enabled.</p>"
        },
        "CloudWatchLogsLogGroupArn": {
          "shape": "String",
          "documentation": "<p>Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered.</p>"
        },
        "CloudWatchLogsRoleArn": {
          "shape": "String",
          "documentation": "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>"
        },
        "HasCustomEventSelectors": {
          "shape": "Boolean",
          "documentation": "<p>Specifies if the trail has custom event selectors.</p>"
        },
        "HasInsightSelectors": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether a trail has insight types specified in an <code>InsightSelector</code> list.</p>"
        },
        "IsOrganizationTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is an organization trail.</p>"
        }
      },
      "documentation": "<p>The settings for a trail.</p>"
    },
    "TrailInfo": {
      "type": "structure",
      "members": {
        "TrailARN": {
          "shape": "String",
          "documentation": "<p>The ARN of a trail.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of a trail.</p>"
        },
        "HomeRegion": {
          "shape": "String",
          "documentation": "<p>The AWS region in which a trail was created.</p>"
        }
      },
      "documentation": "<p>Information about a CloudTrail trail, including the trail's name, home region, and Amazon Resource Name (ARN).</p>"
    },
    "TrailList": {
      "type": "list",
      "member": {
        "shape": "Trail"
      }
    },
    "TrailNameList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Trails": {
      "type": "list",
      "member": {
        "shape": "TrailInfo"
      }
    },
    "UpdateTrailRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If <code>Name</code> is a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html\">Amazon S3 Bucket Naming Requirements</a>.</p>"
        },
        "S3KeyPrefix": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>"
        },
        "SnsTopicName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>"
        },
        "IncludeGlobalServiceEvents": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"
        },
        "IsMultiRegionTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider using trails that log events in all regions.</p>"
        },
        "EnableLogFileValidation": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether log file validation is enabled. The default is false.</p> <note> <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p> </note>"
        },
        "CloudWatchLogsLogGroupArn": {
          "shape": "String",
          "documentation": "<p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.</p>"
        },
        "CloudWatchLogsRoleArn": {
          "shape": "String",
          "documentation": "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.</p> <p>Examples:</p> <ul> <li> <p>alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>12345678-1234-1234-1234-123456789012</p> </li> </ul>"
        },
        "IsOrganizationTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is applied to all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations. If the trail is not an organization trail and this is set to true, the trail will be created in all AWS accounts that belong to the organization. If the trail is an organization trail and this is set to false, the trail will remain in the current AWS account but be deleted from all member accounts in the organization.</p>"
        }
      },
      "documentation": "<p>Specifies settings to update for the trail.</p>"
    },
    "UpdateTrailResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the trail.</p>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>"
        },
        "S3KeyPrefix": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>.</p>"
        },
        "SnsTopicName": {
          "shape": "String",
          "documentation": "<p>This field is no longer in use. Use SnsTopicARN.</p>",
          "deprecated": true
        },
        "SnsTopicARN": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code> </p>"
        },
        "IncludeGlobalServiceEvents": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"
        },
        "IsMultiRegionTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail exists in one region or in all regions.</p>"
        },
        "TrailARN": {
          "shape": "String",
          "documentation": "<p>Specifies the ARN of the trail that was updated. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>"
        },
        "LogFileValidationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether log file integrity validation is enabled.</p>"
        },
        "CloudWatchLogsLogGroupArn": {
          "shape": "String",
          "documentation": "<p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>"
        },
        "CloudWatchLogsRoleArn": {
          "shape": "String",
          "documentation": "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>"
        },
        "IsOrganizationTrail": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the trail is an organization trail.</p>"
        }
      },
      "documentation": "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
    }
  },
  "documentation": "<fullname>AWS CloudTrail</fullname> <p>This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail.</p> <p>CloudTrail is a web service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the AWS API call, the source IP address, the request parameters, and the response elements returned by the service.</p> <note> <p>As an alternative to the API, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWSCloudTrail. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services page</a>.</p> </note> <p>See the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html\">AWS CloudTrail User Guide</a> for information about the data that is included with each AWS API call listed in the log files.</p>"
}
]===]))