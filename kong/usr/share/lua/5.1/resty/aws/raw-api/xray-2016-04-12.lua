local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-04-12",
    "endpointPrefix": "xray",
    "protocol": "rest-json",
    "serviceFullName": "AWS X-Ray",
    "serviceId": "XRay",
    "signatureVersion": "v4",
    "uid": "xray-2016-04-12"
  },
  "operations": {
    "BatchGetTraces": {
      "name": "BatchGetTraces",
      "http": {
        "method": "POST",
        "requestUri": "/Traces"
      },
      "input": {
        "shape": "BatchGetTracesRequest"
      },
      "output": {
        "shape": "BatchGetTracesResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use <code>GetTraceSummaries</code> to get a list of trace IDs.</p>"
    },
    "CreateGroup": {
      "name": "CreateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/CreateGroup"
      },
      "input": {
        "shape": "CreateGroupRequest"
      },
      "output": {
        "shape": "CreateGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Creates a group resource with a name and a filter expression. </p>"
    },
    "CreateSamplingRule": {
      "name": "CreateSamplingRule",
      "http": {
        "method": "POST",
        "requestUri": "/CreateSamplingRule"
      },
      "input": {
        "shape": "CreateSamplingRuleRequest"
      },
      "output": {
        "shape": "CreateSamplingRuleResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        },
        {
          "shape": "RuleLimitExceededException"
        }
      ],
      "documentation": "<p>Creates a rule to control sampling behavior for instrumented applications. Services retrieve rules with <a>GetSamplingRules</a>, and evaluate each rule in ascending order of <i>priority</i> for each request. If a rule matches, the service records a trace, borrowing it from the reservoir size. After 10 seconds, the service reports back to X-Ray with <a>GetSamplingTargets</a> to get updated versions of each in-use rule. The updated rule contains a trace quota that the service can use instead of borrowing from the reservoir.</p>"
    },
    "DeleteGroup": {
      "name": "DeleteGroup",
      "http": {
        "method": "POST",
        "requestUri": "/DeleteGroup"
      },
      "input": {
        "shape": "DeleteGroupRequest"
      },
      "output": {
        "shape": "DeleteGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Deletes a group resource.</p>"
    },
    "DeleteSamplingRule": {
      "name": "DeleteSamplingRule",
      "http": {
        "method": "POST",
        "requestUri": "/DeleteSamplingRule"
      },
      "input": {
        "shape": "DeleteSamplingRuleRequest"
      },
      "output": {
        "shape": "DeleteSamplingRuleResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Deletes a sampling rule.</p>"
    },
    "GetEncryptionConfig": {
      "name": "GetEncryptionConfig",
      "http": {
        "method": "POST",
        "requestUri": "/EncryptionConfig"
      },
      "input": {
        "shape": "GetEncryptionConfigRequest"
      },
      "output": {
        "shape": "GetEncryptionConfigResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves the current encryption configuration for X-Ray data.</p>"
    },
    "GetGroup": {
      "name": "GetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/GetGroup"
      },
      "input": {
        "shape": "GetGroupRequest"
      },
      "output": {
        "shape": "GetGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves group resource details.</p>"
    },
    "GetGroups": {
      "name": "GetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/Groups"
      },
      "input": {
        "shape": "GetGroupsRequest"
      },
      "output": {
        "shape": "GetGroupsResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves all active group details.</p>"
    },
    "GetSamplingRules": {
      "name": "GetSamplingRules",
      "http": {
        "method": "POST",
        "requestUri": "/GetSamplingRules"
      },
      "input": {
        "shape": "GetSamplingRulesRequest"
      },
      "output": {
        "shape": "GetSamplingRulesResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves all sampling rules.</p>"
    },
    "GetSamplingStatisticSummaries": {
      "name": "GetSamplingStatisticSummaries",
      "http": {
        "method": "POST",
        "requestUri": "/SamplingStatisticSummaries"
      },
      "input": {
        "shape": "GetSamplingStatisticSummariesRequest"
      },
      "output": {
        "shape": "GetSamplingStatisticSummariesResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves information about recent sampling results for all sampling rules.</p>"
    },
    "GetSamplingTargets": {
      "name": "GetSamplingTargets",
      "http": {
        "method": "POST",
        "requestUri": "/SamplingTargets"
      },
      "input": {
        "shape": "GetSamplingTargetsRequest"
      },
      "output": {
        "shape": "GetSamplingTargetsResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Requests a sampling quota for rules that the service is using to sample requests. </p>"
    },
    "GetServiceGraph": {
      "name": "GetServiceGraph",
      "http": {
        "method": "POST",
        "requestUri": "/ServiceGraph"
      },
      "input": {
        "shape": "GetServiceGraphRequest"
      },
      "output": {
        "shape": "GetServiceGraphResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the <a href=\"https://docs.aws.amazon.com/xray/index.html\">AWS X-Ray SDK</a>. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.</p>"
    },
    "GetTimeSeriesServiceStatistics": {
      "name": "GetTimeSeriesServiceStatistics",
      "http": {
        "method": "POST",
        "requestUri": "/TimeSeriesServiceStatistics"
      },
      "input": {
        "shape": "GetTimeSeriesServiceStatisticsRequest"
      },
      "output": {
        "shape": "GetTimeSeriesServiceStatisticsResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Get an aggregation of service statistics defined by a specific time range.</p>"
    },
    "GetTraceGraph": {
      "name": "GetTraceGraph",
      "http": {
        "method": "POST",
        "requestUri": "/TraceGraph"
      },
      "input": {
        "shape": "GetTraceGraphRequest"
      },
      "output": {
        "shape": "GetTraceGraphResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves a service graph for one or more specific trace IDs.</p>"
    },
    "GetTraceSummaries": {
      "name": "GetTraceSummaries",
      "http": {
        "method": "POST",
        "requestUri": "/TraceSummaries"
      },
      "input": {
        "shape": "GetTraceSummariesRequest"
      },
      "output": {
        "shape": "GetTraceSummariesResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Retrieves IDs and annotations for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to <code>BatchGetTraces</code>.</p> <p>A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through <code>api.example.com</code>:</p> <p> <code>service(\"api.example.com\")</code> </p> <p>This filter expression finds traces that have an annotation named <code>account</code> with the value <code>12345</code>:</p> <p> <code>annotation.account = \"12345\"</code> </p> <p>For a full list of indexed fields and keywords that you can use in filter expressions, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html\">Using Filter Expressions</a> in the <i>AWS X-Ray Developer Guide</i>.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/ListTagsForResource"
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
          "shape": "ThrottledException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of tags that are applied to the specified AWS X-Ray group or sampling rule.</p>"
    },
    "PutEncryptionConfig": {
      "name": "PutEncryptionConfig",
      "http": {
        "method": "POST",
        "requestUri": "/PutEncryptionConfig"
      },
      "input": {
        "shape": "PutEncryptionConfigRequest"
      },
      "output": {
        "shape": "PutEncryptionConfigResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Updates the encryption configuration for X-Ray data.</p>"
    },
    "PutTelemetryRecords": {
      "name": "PutTelemetryRecords",
      "http": {
        "method": "POST",
        "requestUri": "/TelemetryRecords"
      },
      "input": {
        "shape": "PutTelemetryRecordsRequest"
      },
      "output": {
        "shape": "PutTelemetryRecordsResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Used by the AWS X-Ray daemon to upload telemetry.</p>"
    },
    "PutTraceSegments": {
      "name": "PutTraceSegments",
      "http": {
        "method": "POST",
        "requestUri": "/TraceSegments"
      },
      "input": {
        "shape": "PutTraceSegmentsRequest"
      },
      "output": {
        "shape": "PutTraceSegmentsResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Uploads segment documents to AWS X-Ray. The <a href=\"https://docs.aws.amazon.com/xray/index.html\">X-Ray SDK</a> generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments.</p> <p>Segments must include the following fields. For the full segment document schema, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html\">AWS X-Ray Segment Documents</a> in the <i>AWS X-Ray Developer Guide</i>.</p> <p class=\"title\"> <b>Required Segment Document Fields</b> </p> <ul> <li> <p> <code>name</code> - The name of the service that handled the request.</p> </li> <li> <p> <code>id</code> - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.</p> </li> <li> <p> <code>trace_id</code> - A unique identifier that connects all segments and subsegments originating from a single client request.</p> </li> <li> <p> <code>start_time</code> - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, <code>1480615200.010</code> or <code>1.480615200010E9</code>.</p> </li> <li> <p> <code>end_time</code> - Time the segment or subsegment was closed. For example, <code>1480615200.090</code> or <code>1.480615200090E9</code>. Specify either an <code>end_time</code> or <code>in_progress</code>.</p> </li> <li> <p> <code>in_progress</code> - Set to <code>true</code> instead of specifying an <code>end_time</code> to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.</p> </li> </ul> <p>A <code>trace_id</code> consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:</p> <p class=\"title\"> <b>Trace ID Format</b> </p> <ul> <li> <p>The version number, i.e. <code>1</code>.</p> </li> <li> <p>The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is <code>1480615200</code> seconds, or <code>58406520</code> in hexadecimal.</p> </li> <li> <p>A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.</p> </li> </ul>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/TagResource"
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
          "shape": "ThrottledException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Applies tags to an existing AWS X-Ray group or sampling rule.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/UntagResource"
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
          "shape": "ThrottledException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes tags from an AWS X-Ray group or sampling rule. You cannot edit or delete system tags (those with an <code>aws:</code> prefix).</p>"
    },
    "UpdateGroup": {
      "name": "UpdateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/UpdateGroup"
      },
      "input": {
        "shape": "UpdateGroupRequest"
      },
      "output": {
        "shape": "UpdateGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Updates a group resource.</p>"
    },
    "UpdateSamplingRule": {
      "name": "UpdateSamplingRule",
      "http": {
        "method": "POST",
        "requestUri": "/UpdateSamplingRule"
      },
      "input": {
        "shape": "UpdateSamplingRuleRequest"
      },
      "output": {
        "shape": "UpdateSamplingRuleResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Modifies a sampling rule's configuration.</p>"
    }
  },
  "shapes": {
    "Alias": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The canonical name of the alias.</p>"
        },
        "Names": {
          "shape": "AliasNames",
          "documentation": "<p>A list of names for the alias, including the canonical name.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of the alias.</p>"
        }
      },
      "documentation": "<p>An alias for an edge.</p>"
    },
    "AliasList": {
      "type": "list",
      "member": {
        "shape": "Alias"
      }
    },
    "AliasNames": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "AnnotationKey": {
      "type": "string"
    },
    "AnnotationValue": {
      "type": "structure",
      "members": {
        "NumberValue": {
          "shape": "NullableDouble",
          "documentation": "<p>Value for a Number annotation.</p>"
        },
        "BooleanValue": {
          "shape": "NullableBoolean",
          "documentation": "<p>Value for a Boolean annotation.</p>"
        },
        "StringValue": {
          "shape": "String",
          "documentation": "<p>Value for a String annotation.</p>"
        }
      },
      "documentation": "<p>Value of a segment annotation. Has one of three value types: Number, Boolean or String.</p>"
    },
    "Annotations": {
      "type": "map",
      "key": {
        "shape": "AnnotationKey"
      },
      "value": {
        "shape": "ValuesWithServiceIds"
      }
    },
    "AttributeKey": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "AttributeMap": {
      "type": "map",
      "key": {
        "shape": "AttributeKey"
      },
      "value": {
        "shape": "AttributeValue"
      },
      "max": 5
    },
    "AttributeValue": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "AvailabilityZoneDetail": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of a corresponding availability zone.</p>"
        }
      },
      "documentation": "<p>A list of availability zones corresponding to the segments in a trace.</p>"
    },
    "BackendConnectionErrors": {
      "type": "structure",
      "members": {
        "TimeoutCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "ConnectionRefusedCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "HTTPCode4XXCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "HTTPCode5XXCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "UnknownHostCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "OtherCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "BatchGetTracesRequest": {
      "type": "structure",
      "required": [
        "TraceIds"
      ],
      "members": {
        "TraceIds": {
          "shape": "TraceIdList",
          "documentation": "<p>Specify the trace IDs of requests for which to retrieve segments.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "BatchGetTracesResult": {
      "type": "structure",
      "members": {
        "Traces": {
          "shape": "TraceList",
          "documentation": "<p>Full traces for the specified requests.</p>"
        },
        "UnprocessedTraceIds": {
          "shape": "UnprocessedTraceIdList",
          "documentation": "<p>Trace IDs of requests that haven't been processed.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BorrowCount": {
      "type": "integer",
      "min": 0
    },
    "ClientID": {
      "type": "string",
      "max": 24,
      "min": 24
    },
    "CreateGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName"
      ],
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The case-sensitive name of the new group. Default is a reserved name and names must be unique.</p>"
        },
        "FilterExpression": {
          "shape": "FilterExpression",
          "documentation": "<p>The filter expression defining criteria by which to group traces.</p>"
        },
        "InsightsConfiguration": {
          "shape": "InsightsConfiguration",
          "documentation": "<p>The structure containing configurations related to insights. The InsightsEnabled boolean can be set to true to enable insights for the new group or false to disable insights for the new group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A map that contains one or more tag keys and tag values to attach to an X-Ray group. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS resources</a> in the <i>AWS General Reference</i>.</p> <p>The following restrictions apply to tags:</p> <ul> <li> <p>Maximum number of user-applied tags per resource: 50</p> </li> <li> <p>Maximum tag key length: 128 Unicode characters</p> </li> <li> <p>Maximum tag value length: 256 Unicode characters</p> </li> <li> <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . : / = + - and @</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for AWS use.</p> </li> </ul>"
        }
      }
    },
    "CreateGroupResult": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>The group that was created. Contains the name of the group that was created, the ARN of the group that was generated based on the group name, the filter expression, and the insight configuration that was assigned to the group.</p>"
        }
      }
    },
    "CreateSamplingRuleRequest": {
      "type": "structure",
      "required": [
        "SamplingRule"
      ],
      "members": {
        "SamplingRule": {
          "shape": "SamplingRule",
          "documentation": "<p>The rule definition.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A map that contains one or more tag keys and tag values to attach to an X-Ray sampling rule. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS resources</a> in the <i>AWS General Reference</i>.</p> <p>The following restrictions apply to tags:</p> <ul> <li> <p>Maximum number of user-applied tags per resource: 50</p> </li> <li> <p>Maximum tag key length: 128 Unicode characters</p> </li> <li> <p>Maximum tag value length: 256 Unicode characters</p> </li> <li> <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . : / = + - and @</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for AWS use.</p> </li> </ul>"
        }
      }
    },
    "CreateSamplingRuleResult": {
      "type": "structure",
      "members": {
        "SamplingRuleRecord": {
          "shape": "SamplingRuleRecord",
          "documentation": "<p>The saved rule definition and metadata.</p>"
        }
      }
    },
    "DeleteGroupRequest": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The case-sensitive name of the group.</p>"
        },
        "GroupARN": {
          "shape": "GroupARN",
          "documentation": "<p>The ARN of the group that was generated on creation.</p>"
        }
      }
    },
    "DeleteGroupResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteSamplingRuleRequest": {
      "type": "structure",
      "members": {
        "RuleName": {
          "shape": "String",
          "documentation": "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
        },
        "RuleARN": {
          "shape": "String",
          "documentation": "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
        }
      }
    },
    "DeleteSamplingRuleResult": {
      "type": "structure",
      "members": {
        "SamplingRuleRecord": {
          "shape": "SamplingRuleRecord",
          "documentation": "<p>The deleted rule definition and metadata.</p>"
        }
      }
    },
    "Double": {
      "type": "double"
    },
    "EC2InstanceId": {
      "type": "string",
      "max": 20
    },
    "Edge": {
      "type": "structure",
      "members": {
        "ReferenceId": {
          "shape": "NullableInteger",
          "documentation": "<p>Identifier of the edge. Unique within a service map.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the first segment on the edge.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end time of the last segment on the edge.</p>"
        },
        "SummaryStatistics": {
          "shape": "EdgeStatistics",
          "documentation": "<p>Response statistics for segments on the edge.</p>"
        },
        "ResponseTimeHistogram": {
          "shape": "Histogram",
          "documentation": "<p>A histogram that maps the spread of client response times on an edge.</p>"
        },
        "Aliases": {
          "shape": "AliasList",
          "documentation": "<p>Aliases for the edge.</p>"
        }
      },
      "documentation": "<p>Information about a connection between two services.</p>"
    },
    "EdgeList": {
      "type": "list",
      "member": {
        "shape": "Edge"
      }
    },
    "EdgeStatistics": {
      "type": "structure",
      "members": {
        "OkCount": {
          "shape": "NullableLong",
          "documentation": "<p>The number of requests that completed with a 2xx Success status code.</p>"
        },
        "ErrorStatistics": {
          "shape": "ErrorStatistics",
          "documentation": "<p>Information about requests that failed with a 4xx Client Error status code.</p>"
        },
        "FaultStatistics": {
          "shape": "FaultStatistics",
          "documentation": "<p>Information about requests that failed with a 5xx Server Error status code.</p>"
        },
        "TotalCount": {
          "shape": "NullableLong",
          "documentation": "<p>The total number of completed requests.</p>"
        },
        "TotalResponseTime": {
          "shape": "NullableDouble",
          "documentation": "<p>The aggregate response time of completed requests.</p>"
        }
      },
      "documentation": "<p>Response statistics for an edge.</p>"
    },
    "EncryptionConfig": {
      "type": "structure",
      "members": {
        "KeyId": {
          "shape": "String",
          "documentation": "<p>The ID of the customer master key (CMK) used for encryption, if applicable.</p>"
        },
        "Status": {
          "shape": "EncryptionStatus",
          "documentation": "<p>The encryption status. While the status is <code>UPDATING</code>, X-Ray may encrypt data with a combination of the new and old settings.</p>"
        },
        "Type": {
          "shape": "EncryptionType",
          "documentation": "<p>The type of encryption. Set to <code>KMS</code> for encryption with CMKs. Set to <code>NONE</code> for default encryption.</p>"
        }
      },
      "documentation": "<p>A configuration document that specifies encryption configuration settings.</p>"
    },
    "EncryptionKeyId": {
      "type": "string",
      "max": 3000,
      "min": 1
    },
    "EncryptionStatus": {
      "type": "string",
      "enum": [
        "UPDATING",
        "ACTIVE"
      ]
    },
    "EncryptionType": {
      "type": "string",
      "enum": [
        "NONE",
        "KMS"
      ]
    },
    "EntitySelectorExpression": {
      "type": "string",
      "max": 500,
      "min": 1
    },
    "ErrorRootCause": {
      "type": "structure",
      "members": {
        "Services": {
          "shape": "ErrorRootCauseServices",
          "documentation": "<p>A list of services corresponding to an error. A service identifies a segment and it contains a name, account ID, type, and inferred flag.</p>"
        },
        "ClientImpacting": {
          "shape": "NullableBoolean",
          "documentation": "<p>A flag that denotes that the root cause impacts the trace client.</p>"
        }
      },
      "documentation": "<p>The root cause of a trace summary error.</p>"
    },
    "ErrorRootCauseEntity": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the entity.</p>"
        },
        "Exceptions": {
          "shape": "RootCauseExceptions",
          "documentation": "<p>The types and messages of the exceptions.</p>"
        },
        "Remote": {
          "shape": "NullableBoolean",
          "documentation": "<p>A flag that denotes a remote subsegment.</p>"
        }
      },
      "documentation": "<p>A collection of segments and corresponding subsegments associated to a trace summary error.</p>"
    },
    "ErrorRootCauseEntityPath": {
      "type": "list",
      "member": {
        "shape": "ErrorRootCauseEntity"
      }
    },
    "ErrorRootCauseService": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The service name.</p>"
        },
        "Names": {
          "shape": "ServiceNames",
          "documentation": "<p>A collection of associated service names.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type associated to the service.</p>"
        },
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The account ID associated to the service.</p>"
        },
        "EntityPath": {
          "shape": "ErrorRootCauseEntityPath",
          "documentation": "<p>The path of root cause entities found on the service. </p>"
        },
        "Inferred": {
          "shape": "NullableBoolean",
          "documentation": "<p>A Boolean value indicating if the service is inferred from the trace.</p>"
        }
      },
      "documentation": "<p>A collection of fields identifying the services in a trace summary error.</p>"
    },
    "ErrorRootCauseServices": {
      "type": "list",
      "member": {
        "shape": "ErrorRootCauseService"
      }
    },
    "ErrorRootCauses": {
      "type": "list",
      "member": {
        "shape": "ErrorRootCause"
      }
    },
    "ErrorStatistics": {
      "type": "structure",
      "members": {
        "ThrottleCount": {
          "shape": "NullableLong",
          "documentation": "<p>The number of requests that failed with a 419 throttling status code.</p>"
        },
        "OtherCount": {
          "shape": "NullableLong",
          "documentation": "<p>The number of requests that failed with untracked 4xx Client Error status codes.</p>"
        },
        "TotalCount": {
          "shape": "NullableLong",
          "documentation": "<p>The total number of requests that failed with a 4xx Client Error status code.</p>"
        }
      },
      "documentation": "<p>Information about requests that failed with a 4xx Client Error status code.</p>"
    },
    "FaultRootCause": {
      "type": "structure",
      "members": {
        "Services": {
          "shape": "FaultRootCauseServices",
          "documentation": "<p>A list of corresponding services. A service identifies a segment and it contains a name, account ID, type, and inferred flag.</p>"
        },
        "ClientImpacting": {
          "shape": "NullableBoolean",
          "documentation": "<p>A flag that denotes that the root cause impacts the trace client.</p>"
        }
      },
      "documentation": "<p>The root cause information for a trace summary fault.</p>"
    },
    "FaultRootCauseEntity": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the entity.</p>"
        },
        "Exceptions": {
          "shape": "RootCauseExceptions",
          "documentation": "<p>The types and messages of the exceptions.</p>"
        },
        "Remote": {
          "shape": "NullableBoolean",
          "documentation": "<p>A flag that denotes a remote subsegment.</p>"
        }
      },
      "documentation": "<p>A collection of segments and corresponding subsegments associated to a trace summary fault error.</p>"
    },
    "FaultRootCauseEntityPath": {
      "type": "list",
      "member": {
        "shape": "FaultRootCauseEntity"
      }
    },
    "FaultRootCauseService": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The service name.</p>"
        },
        "Names": {
          "shape": "ServiceNames",
          "documentation": "<p>A collection of associated service names.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type associated to the service.</p>"
        },
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The account ID associated to the service.</p>"
        },
        "EntityPath": {
          "shape": "FaultRootCauseEntityPath",
          "documentation": "<p>The path of root cause entities found on the service. </p>"
        },
        "Inferred": {
          "shape": "NullableBoolean",
          "documentation": "<p>A Boolean value indicating if the service is inferred from the trace.</p>"
        }
      },
      "documentation": "<p>A collection of fields identifying the services in a trace summary fault.</p>"
    },
    "FaultRootCauseServices": {
      "type": "list",
      "member": {
        "shape": "FaultRootCauseService"
      }
    },
    "FaultRootCauses": {
      "type": "list",
      "member": {
        "shape": "FaultRootCause"
      }
    },
    "FaultStatistics": {
      "type": "structure",
      "members": {
        "OtherCount": {
          "shape": "NullableLong",
          "documentation": "<p>The number of requests that failed with untracked 5xx Server Error status codes.</p>"
        },
        "TotalCount": {
          "shape": "NullableLong",
          "documentation": "<p>The total number of requests that failed with a 5xx Server Error status code.</p>"
        }
      },
      "documentation": "<p>Information about requests that failed with a 5xx Server Error status code.</p>"
    },
    "FilterExpression": {
      "type": "string"
    },
    "FixedRate": {
      "type": "double",
      "max": 1,
      "min": 0
    },
    "GetEncryptionConfigRequest": {
      "type": "structure",
      "members": {}
    },
    "GetEncryptionConfigResult": {
      "type": "structure",
      "members": {
        "EncryptionConfig": {
          "shape": "EncryptionConfig",
          "documentation": "<p>The encryption configuration document.</p>"
        }
      }
    },
    "GetGroupRequest": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The case-sensitive name of the group.</p>"
        },
        "GroupARN": {
          "shape": "GroupARN",
          "documentation": "<p>The ARN of the group that was generated on creation.</p>"
        }
      }
    },
    "GetGroupResult": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>The group that was requested. Contains the name of the group, the ARN of the group, and the filter expression that assigned to the group.</p>"
        }
      }
    },
    "GetGroupsNextToken": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "GetGroupsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "GetGroupsNextToken",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetGroupsResult": {
      "type": "structure",
      "members": {
        "Groups": {
          "shape": "GroupSummaryList",
          "documentation": "<p>The collection of all active groups.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetSamplingRulesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetSamplingRulesResult": {
      "type": "structure",
      "members": {
        "SamplingRuleRecords": {
          "shape": "SamplingRuleRecordList",
          "documentation": "<p>Rule definitions and metadata.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetSamplingStatisticSummariesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetSamplingStatisticSummariesResult": {
      "type": "structure",
      "members": {
        "SamplingStatisticSummaries": {
          "shape": "SamplingStatisticSummaryList",
          "documentation": "<p>Information about the number of requests instrumented for each sampling rule.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetSamplingTargetsRequest": {
      "type": "structure",
      "required": [
        "SamplingStatisticsDocuments"
      ],
      "members": {
        "SamplingStatisticsDocuments": {
          "shape": "SamplingStatisticsDocumentList",
          "documentation": "<p>Information about rules that the service is using to sample requests.</p>"
        }
      }
    },
    "GetSamplingTargetsResult": {
      "type": "structure",
      "members": {
        "SamplingTargetDocuments": {
          "shape": "SamplingTargetDocumentList",
          "documentation": "<p>Updated rules that the service should use to sample requests.</p>"
        },
        "LastRuleModification": {
          "shape": "Timestamp",
          "documentation": "<p>The last time a user changed the sampling rule configuration. If the sampling rule configuration changed since the service last retrieved it, the service should call <a>GetSamplingRules</a> to get the latest version.</p>"
        },
        "UnprocessedStatistics": {
          "shape": "UnprocessedStatisticsList",
          "documentation": "<p>Information about <a>SamplingStatisticsDocument</a> that X-Ray could not process.</p>"
        }
      }
    },
    "GetServiceGraphRequest": {
      "type": "structure",
      "required": [
        "StartTime",
        "EndTime"
      ],
      "members": {
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start of the time frame for which to generate a graph.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end of the timeframe for which to generate a graph.</p>"
        },
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of a group to generate a graph based on.</p>"
        },
        "GroupARN": {
          "shape": "GroupARN",
          "documentation": "<p>The ARN of a group to generate a graph based on.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetServiceGraphResult": {
      "type": "structure",
      "members": {
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start of the time frame for which the graph was generated.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end of the time frame for which the graph was generated.</p>"
        },
        "Services": {
          "shape": "ServiceList",
          "documentation": "<p>The services that have processed a traced request during the specified time frame.</p>"
        },
        "ContainsOldGroupVersions": {
          "shape": "Boolean",
          "documentation": "<p>A flag indicating whether the group's filter expression has been consistent, or if the returned service graph may show traces from an older version of the group's filter expression.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetTimeSeriesServiceStatisticsRequest": {
      "type": "structure",
      "required": [
        "StartTime",
        "EndTime"
      ],
      "members": {
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start of the time frame for which to aggregate statistics.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end of the time frame for which to aggregate statistics.</p>"
        },
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The case-sensitive name of the group for which to pull statistics from.</p>"
        },
        "GroupARN": {
          "shape": "GroupARN",
          "documentation": "<p>The ARN of the group for which to pull statistics from.</p>"
        },
        "EntitySelectorExpression": {
          "shape": "EntitySelectorExpression",
          "documentation": "<p>A filter expression defining entities that will be aggregated for statistics. Supports ID, service, and edge functions. If no selector expression is specified, edge statistics are returned. </p>"
        },
        "Period": {
          "shape": "NullableInteger",
          "documentation": "<p>Aggregation period in seconds.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetTimeSeriesServiceStatisticsResult": {
      "type": "structure",
      "members": {
        "TimeSeriesServiceStatistics": {
          "shape": "TimeSeriesServiceStatisticsList",
          "documentation": "<p>The collection of statistics.</p>"
        },
        "ContainsOldGroupVersions": {
          "shape": "Boolean",
          "documentation": "<p>A flag indicating whether or not a group's filter expression has been consistent, or if a returned aggregation may show statistics from an older version of the group's filter expression.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetTraceGraphRequest": {
      "type": "structure",
      "required": [
        "TraceIds"
      ],
      "members": {
        "TraceIds": {
          "shape": "TraceIdList",
          "documentation": "<p>Trace IDs of requests for which to generate a service graph.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetTraceGraphResult": {
      "type": "structure",
      "members": {
        "Services": {
          "shape": "ServiceList",
          "documentation": "<p>The services that have processed one of the specified requests.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Pagination token.</p>"
        }
      }
    },
    "GetTraceSummariesRequest": {
      "type": "structure",
      "required": [
        "StartTime",
        "EndTime"
      ],
      "members": {
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start of the time frame for which to retrieve traces.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end of the time frame for which to retrieve traces.</p>"
        },
        "TimeRangeType": {
          "shape": "TimeRangeType",
          "documentation": "<p>A parameter to indicate whether to query trace summaries by TraceId or Event time.</p>"
        },
        "Sampling": {
          "shape": "NullableBoolean",
          "documentation": "<p>Set to <code>true</code> to get summaries for only a subset of available traces.</p>"
        },
        "SamplingStrategy": {
          "shape": "SamplingStrategy",
          "documentation": "<p>A paramater to indicate whether to enable sampling on trace summaries. Input parameters are Name and Value.</p>"
        },
        "FilterExpression": {
          "shape": "FilterExpression",
          "documentation": "<p>Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Specify the pagination token returned by a previous request to retrieve the next page of results.</p>"
        }
      }
    },
    "GetTraceSummariesResult": {
      "type": "structure",
      "members": {
        "TraceSummaries": {
          "shape": "TraceSummaryList",
          "documentation": "<p>Trace IDs and annotations for traces that were found in the specified time frame.</p>"
        },
        "ApproximateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of this page of results.</p>"
        },
        "TracesProcessedCount": {
          "shape": "NullableLong",
          "documentation": "<p>The total number of traces processed, including traces that did not match the specified filter expression.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>If the requested time frame contained more than one page of results, you can use this token to retrieve the next page. The first page contains the most most recent results, closest to the end of the time frame.</p>"
        }
      }
    },
    "Group": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "String",
          "documentation": "<p>The unique case-sensitive name of the group.</p>"
        },
        "GroupARN": {
          "shape": "String",
          "documentation": "<p>The ARN of the group generated based on the GroupName.</p>"
        },
        "FilterExpression": {
          "shape": "String",
          "documentation": "<p>The filter expression defining the parameters to include traces.</p>"
        },
        "InsightsConfiguration": {
          "shape": "InsightsConfiguration",
          "documentation": "<p>The structure containing configurations related to insights. The InsightsEnabled boolean can be set to true to enable insights for the group or false to disable insights for the group.</p>"
        }
      },
      "documentation": "<p>Details and metadata for a group.</p>"
    },
    "GroupARN": {
      "type": "string",
      "max": 400,
      "min": 1
    },
    "GroupName": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "GroupSummary": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "String",
          "documentation": "<p>The unique case-sensitive name of the group.</p>"
        },
        "GroupARN": {
          "shape": "String",
          "documentation": "<p>The ARN of the group generated based on the GroupName.</p>"
        },
        "FilterExpression": {
          "shape": "String",
          "documentation": "<p>The filter expression defining the parameters to include traces.</p>"
        },
        "InsightsConfiguration": {
          "shape": "InsightsConfiguration",
          "documentation": "<p>The structure containing configurations related to insights. The InsightsEnabled boolean can be set to true to enable insights for the groups or false to disable insights for the groups.</p>"
        }
      },
      "documentation": "<p>Details for a group without metadata.</p>"
    },
    "GroupSummaryList": {
      "type": "list",
      "member": {
        "shape": "GroupSummary"
      }
    },
    "HTTPMethod": {
      "type": "string",
      "max": 10
    },
    "Histogram": {
      "type": "list",
      "member": {
        "shape": "HistogramEntry"
      }
    },
    "HistogramEntry": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "Double",
          "documentation": "<p>The value of the entry.</p>"
        },
        "Count": {
          "shape": "Integer",
          "documentation": "<p>The prevalence of the entry.</p>"
        }
      },
      "documentation": "<p>An entry in a histogram for a statistic. A histogram maps the range of observed values on the X axis, and the prevalence of each value on the Y axis.</p>"
    },
    "Host": {
      "type": "string",
      "max": 64
    },
    "Hostname": {
      "type": "string",
      "max": 255
    },
    "Http": {
      "type": "structure",
      "members": {
        "HttpURL": {
          "shape": "String",
          "documentation": "<p>The request URL.</p>"
        },
        "HttpStatus": {
          "shape": "NullableInteger",
          "documentation": "<p>The response status.</p>"
        },
        "HttpMethod": {
          "shape": "String",
          "documentation": "<p>The request method.</p>"
        },
        "UserAgent": {
          "shape": "String",
          "documentation": "<p>The request's user agent string.</p>"
        },
        "ClientIp": {
          "shape": "String",
          "documentation": "<p>The IP address of the requestor.</p>"
        }
      },
      "documentation": "<p>Information about an HTTP request.</p>"
    },
    "InsightsConfiguration": {
      "type": "structure",
      "members": {
        "InsightsEnabled": {
          "shape": "NullableBoolean",
          "documentation": "<p>Set the InsightsEnabled value to true to enable insights or false to disable insights.</p>"
        }
      },
      "documentation": "<p>The structure containing configurations related to insights.</p>"
    },
    "InstanceIdDetail": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>The ID of a corresponding EC2 instance.</p>"
        }
      },
      "documentation": "<p>A list of EC2 instance IDs corresponding to the segments in a trace. </p>"
    },
    "Integer": {
      "type": "integer"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with the current page of results as the value of this parameter to get the next page of results.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags, as key and value pairs, that is associated with the specified X-Ray group or sampling rule.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token. If multiple pages of results are returned, use the <code>NextToken</code> value returned with the current page of results to get the next page of results.</p>"
        }
      }
    },
    "NullableBoolean": {
      "type": "boolean"
    },
    "NullableDouble": {
      "type": "double"
    },
    "NullableInteger": {
      "type": "integer"
    },
    "NullableLong": {
      "type": "long"
    },
    "Priority": {
      "type": "integer",
      "max": 9999,
      "min": 1
    },
    "PutEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "KeyId": {
          "shape": "EncryptionKeyId",
          "documentation": "<p>An AWS KMS customer master key (CMK) in one of the following formats:</p> <ul> <li> <p> <b>Alias</b> - The name of the key. For example, <code>alias/MyKey</code>.</p> </li> <li> <p> <b>Key ID</b> - The KMS key ID of the key. For example, <code>ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>. AWS X-Ray does not support asymmetric CMKs.</p> </li> <li> <p> <b>ARN</b> - The full Amazon Resource Name of the key ID or alias. For example, <code>arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456</code>. Use this format to specify a key in a different account.</p> </li> </ul> <p>Omit this key if you set <code>Type</code> to <code>NONE</code>.</p>"
        },
        "Type": {
          "shape": "EncryptionType",
          "documentation": "<p>The type of encryption. Set to <code>KMS</code> to use your own key for encryption. Set to <code>NONE</code> for default encryption.</p>"
        }
      }
    },
    "PutEncryptionConfigResult": {
      "type": "structure",
      "members": {
        "EncryptionConfig": {
          "shape": "EncryptionConfig",
          "documentation": "<p>The new encryption configuration.</p>"
        }
      }
    },
    "PutTelemetryRecordsRequest": {
      "type": "structure",
      "required": [
        "TelemetryRecords"
      ],
      "members": {
        "TelemetryRecords": {
          "shape": "TelemetryRecordList",
          "documentation": "<p/>"
        },
        "EC2InstanceId": {
          "shape": "EC2InstanceId",
          "documentation": "<p/>"
        },
        "Hostname": {
          "shape": "Hostname",
          "documentation": "<p/>"
        },
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p/>"
        }
      }
    },
    "PutTelemetryRecordsResult": {
      "type": "structure",
      "members": {}
    },
    "PutTraceSegmentsRequest": {
      "type": "structure",
      "required": [
        "TraceSegmentDocuments"
      ],
      "members": {
        "TraceSegmentDocuments": {
          "shape": "TraceSegmentDocumentList",
          "documentation": "<p>A string containing a JSON document defining one or more segments or subsegments.</p>"
        }
      }
    },
    "PutTraceSegmentsResult": {
      "type": "structure",
      "members": {
        "UnprocessedTraceSegments": {
          "shape": "UnprocessedTraceSegmentList",
          "documentation": "<p>Segments that failed processing.</p>"
        }
      }
    },
    "RequestCount": {
      "type": "integer",
      "min": 0
    },
    "ReservoirSize": {
      "type": "integer",
      "min": 0
    },
    "ResourceARN": {
      "type": "string",
      "max": 500
    },
    "ResourceARNDetail": {
      "type": "structure",
      "members": {
        "ARN": {
          "shape": "String",
          "documentation": "<p>The ARN of a corresponding resource.</p>"
        }
      },
      "documentation": "<p>A list of resources ARNs corresponding to the segments in a trace.</p>"
    },
    "ResponseTimeRootCause": {
      "type": "structure",
      "members": {
        "Services": {
          "shape": "ResponseTimeRootCauseServices",
          "documentation": "<p>A list of corresponding services. A service identifies a segment and contains a name, account ID, type, and inferred flag.</p>"
        },
        "ClientImpacting": {
          "shape": "NullableBoolean",
          "documentation": "<p>A flag that denotes that the root cause impacts the trace client.</p>"
        }
      },
      "documentation": "<p>The root cause information for a response time warning.</p>"
    },
    "ResponseTimeRootCauseEntity": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the entity.</p>"
        },
        "Coverage": {
          "shape": "NullableDouble",
          "documentation": "<p>The types and messages of the exceptions.</p>"
        },
        "Remote": {
          "shape": "NullableBoolean",
          "documentation": "<p>A flag that denotes a remote subsegment.</p>"
        }
      },
      "documentation": "<p>A collection of segments and corresponding subsegments associated to a response time warning.</p>"
    },
    "ResponseTimeRootCauseEntityPath": {
      "type": "list",
      "member": {
        "shape": "ResponseTimeRootCauseEntity"
      }
    },
    "ResponseTimeRootCauseService": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The service name.</p>"
        },
        "Names": {
          "shape": "ServiceNames",
          "documentation": "<p>A collection of associated service names.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type associated to the service.</p>"
        },
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The account ID associated to the service.</p>"
        },
        "EntityPath": {
          "shape": "ResponseTimeRootCauseEntityPath",
          "documentation": "<p>The path of root cause entities found on the service. </p>"
        },
        "Inferred": {
          "shape": "NullableBoolean",
          "documentation": "<p>A Boolean value indicating if the service is inferred from the trace.</p>"
        }
      },
      "documentation": "<p>A collection of fields identifying the service in a response time warning.</p>"
    },
    "ResponseTimeRootCauseServices": {
      "type": "list",
      "member": {
        "shape": "ResponseTimeRootCauseService"
      }
    },
    "ResponseTimeRootCauses": {
      "type": "list",
      "member": {
        "shape": "ResponseTimeRootCause"
      }
    },
    "RootCauseException": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the exception.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>The message of the exception.</p>"
        }
      },
      "documentation": "<p>The exception associated with a root cause.</p>"
    },
    "RootCauseExceptions": {
      "type": "list",
      "member": {
        "shape": "RootCauseException"
      }
    },
    "RuleName": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "SampledCount": {
      "type": "integer",
      "min": 0
    },
    "SamplingRule": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Priority",
        "FixedRate",
        "ReservoirSize",
        "ServiceName",
        "ServiceType",
        "Host",
        "HTTPMethod",
        "URLPath",
        "Version"
      ],
      "members": {
        "RuleName": {
          "shape": "RuleName",
          "documentation": "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
        },
        "RuleARN": {
          "shape": "String",
          "documentation": "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
        },
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Matches the ARN of the AWS resource on which the service runs.</p>"
        },
        "Priority": {
          "shape": "Priority",
          "documentation": "<p>The priority of the sampling rule.</p>"
        },
        "FixedRate": {
          "shape": "FixedRate",
          "documentation": "<p>The percentage of matching requests to instrument, after the reservoir is exhausted.</p>"
        },
        "ReservoirSize": {
          "shape": "ReservoirSize",
          "documentation": "<p>A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>"
        },
        "ServiceType": {
          "shape": "ServiceType",
          "documentation": "<p>Matches the <code>origin</code> that the service uses to identify its type in segments.</p>"
        },
        "Host": {
          "shape": "Host",
          "documentation": "<p>Matches the hostname from a request URL.</p>"
        },
        "HTTPMethod": {
          "shape": "HTTPMethod",
          "documentation": "<p>Matches the HTTP method of a request.</p>"
        },
        "URLPath": {
          "shape": "URLPath",
          "documentation": "<p>Matches the path from a request URL.</p>"
        },
        "Version": {
          "shape": "Version",
          "documentation": "<p>The version of the sampling rule format (<code>1</code>).</p>"
        },
        "Attributes": {
          "shape": "AttributeMap",
          "documentation": "<p>Matches attributes derived from the request.</p>"
        }
      },
      "documentation": "<p>A sampling rule that services use to decide whether to instrument a request. Rule fields can match properties of the service, or properties of a request. The service can ignore rules that don't match its properties.</p>"
    },
    "SamplingRuleRecord": {
      "type": "structure",
      "members": {
        "SamplingRule": {
          "shape": "SamplingRule",
          "documentation": "<p>The sampling rule.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>When the rule was created.</p>"
        },
        "ModifiedAt": {
          "shape": "Timestamp",
          "documentation": "<p>When the rule was last modified.</p>"
        }
      },
      "documentation": "<p>A <a>SamplingRule</a> and its metadata.</p>"
    },
    "SamplingRuleRecordList": {
      "type": "list",
      "member": {
        "shape": "SamplingRuleRecord"
      }
    },
    "SamplingRuleUpdate": {
      "type": "structure",
      "members": {
        "RuleName": {
          "shape": "RuleName",
          "documentation": "<p>The name of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
        },
        "RuleARN": {
          "shape": "String",
          "documentation": "<p>The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.</p>"
        },
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Matches the ARN of the AWS resource on which the service runs.</p>"
        },
        "Priority": {
          "shape": "NullableInteger",
          "documentation": "<p>The priority of the sampling rule.</p>"
        },
        "FixedRate": {
          "shape": "NullableDouble",
          "documentation": "<p>The percentage of matching requests to instrument, after the reservoir is exhausted.</p>"
        },
        "ReservoirSize": {
          "shape": "NullableInteger",
          "documentation": "<p>A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.</p>"
        },
        "Host": {
          "shape": "Host",
          "documentation": "<p>Matches the hostname from a request URL.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>Matches the <code>name</code> that the service uses to identify itself in segments.</p>"
        },
        "ServiceType": {
          "shape": "ServiceType",
          "documentation": "<p>Matches the <code>origin</code> that the service uses to identify its type in segments.</p>"
        },
        "HTTPMethod": {
          "shape": "HTTPMethod",
          "documentation": "<p>Matches the HTTP method of a request.</p>"
        },
        "URLPath": {
          "shape": "URLPath",
          "documentation": "<p>Matches the path from a request URL.</p>"
        },
        "Attributes": {
          "shape": "AttributeMap",
          "documentation": "<p>Matches attributes derived from the request.</p>"
        }
      },
      "documentation": "<p>A document specifying changes to a sampling rule's configuration.</p>"
    },
    "SamplingStatisticSummary": {
      "type": "structure",
      "members": {
        "RuleName": {
          "shape": "String",
          "documentation": "<p>The name of the sampling rule.</p>"
        },
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the reporting window.</p>"
        },
        "RequestCount": {
          "shape": "Integer",
          "documentation": "<p>The number of requests that matched the rule.</p>"
        },
        "BorrowCount": {
          "shape": "Integer",
          "documentation": "<p>The number of requests recorded with borrowed reservoir quota.</p>"
        },
        "SampledCount": {
          "shape": "Integer",
          "documentation": "<p>The number of requests recorded.</p>"
        }
      },
      "documentation": "<p>Aggregated request sampling data for a sampling rule across all services for a 10 second window.</p>"
    },
    "SamplingStatisticSummaryList": {
      "type": "list",
      "member": {
        "shape": "SamplingStatisticSummary"
      }
    },
    "SamplingStatisticsDocument": {
      "type": "structure",
      "required": [
        "RuleName",
        "ClientID",
        "Timestamp",
        "RequestCount",
        "SampledCount"
      ],
      "members": {
        "RuleName": {
          "shape": "RuleName",
          "documentation": "<p>The name of the sampling rule.</p>"
        },
        "ClientID": {
          "shape": "ClientID",
          "documentation": "<p>A unique identifier for the service in hexadecimal.</p>"
        },
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The current time.</p>"
        },
        "RequestCount": {
          "shape": "RequestCount",
          "documentation": "<p>The number of requests that matched the rule.</p>"
        },
        "SampledCount": {
          "shape": "SampledCount",
          "documentation": "<p>The number of requests recorded.</p>"
        },
        "BorrowCount": {
          "shape": "BorrowCount",
          "documentation": "<p>The number of requests recorded with borrowed reservoir quota.</p>"
        }
      },
      "documentation": "<p>Request sampling results for a single rule from a service. Results are for the last 10 seconds unless the service has been assigned a longer reporting interval after a previous call to <a>GetSamplingTargets</a>.</p>"
    },
    "SamplingStatisticsDocumentList": {
      "type": "list",
      "member": {
        "shape": "SamplingStatisticsDocument"
      },
      "max": 25
    },
    "SamplingStrategy": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "SamplingStrategyName",
          "documentation": "<p>The name of a sampling rule.</p>"
        },
        "Value": {
          "shape": "NullableDouble",
          "documentation": "<p>The value of a sampling rule.</p>"
        }
      },
      "documentation": "<p>The name and value of a sampling rule to apply to a trace summary.</p>"
    },
    "SamplingStrategyName": {
      "type": "string",
      "enum": [
        "PartialScan",
        "FixedRate"
      ]
    },
    "SamplingTargetDocument": {
      "type": "structure",
      "members": {
        "RuleName": {
          "shape": "String",
          "documentation": "<p>The name of the sampling rule.</p>"
        },
        "FixedRate": {
          "shape": "Double",
          "documentation": "<p>The percentage of matching requests to instrument, after the reservoir is exhausted.</p>"
        },
        "ReservoirQuota": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of requests per second that X-Ray allocated this service.</p>"
        },
        "ReservoirQuotaTTL": {
          "shape": "Timestamp",
          "documentation": "<p>When the reservoir quota expires.</p>"
        },
        "Interval": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of seconds for the service to wait before getting sampling targets again.</p>"
        }
      },
      "documentation": "<p>Temporary changes to a sampling rule configuration. To meet the global sampling target for a rule, X-Ray calculates a new reservoir for each service based on the recent sampling results of all services that called <a>GetSamplingTargets</a>.</p>"
    },
    "SamplingTargetDocumentList": {
      "type": "list",
      "member": {
        "shape": "SamplingTargetDocument"
      }
    },
    "Segment": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "SegmentId",
          "documentation": "<p>The segment's ID.</p>"
        },
        "Document": {
          "shape": "SegmentDocument",
          "documentation": "<p>The segment document.</p>"
        }
      },
      "documentation": "<p>A segment from a trace that has been ingested by the X-Ray service. The segment can be compiled from documents uploaded with <a>PutTraceSegments</a>, or an <code>inferred</code> segment for a downstream service, generated from a subsegment sent by the service that called it.</p> <p>For the full segment document schema, see <a href=\"https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html\">AWS X-Ray Segment Documents</a> in the <i>AWS X-Ray Developer Guide</i>.</p>"
    },
    "SegmentDocument": {
      "type": "string",
      "min": 1
    },
    "SegmentId": {
      "type": "string"
    },
    "SegmentList": {
      "type": "list",
      "member": {
        "shape": "Segment"
      }
    },
    "Service": {
      "type": "structure",
      "members": {
        "ReferenceId": {
          "shape": "NullableInteger",
          "documentation": "<p>Identifier for the service. Unique within the service map.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The canonical name of the service.</p>"
        },
        "Names": {
          "shape": "ServiceNames",
          "documentation": "<p>A list of names for the service, including the canonical name.</p>"
        },
        "Root": {
          "shape": "NullableBoolean",
          "documentation": "<p>Indicates that the service was the first service to process a request.</p>"
        },
        "AccountId": {
          "shape": "String",
          "documentation": "<p>Identifier of the AWS account in which the service runs.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of service.</p> <ul> <li> <p>AWS Resource - The type of an AWS resource. For example, <code>AWS::EC2::Instance</code> for a application running on Amazon EC2 or <code>AWS::DynamoDB::Table</code> for an Amazon DynamoDB table that the application used.</p> </li> <li> <p>AWS Service - The type of an AWS service. For example, <code>AWS::DynamoDB</code> for downstream calls to Amazon DynamoDB that didn't target a specific table.</p> </li> <li> <p> <code>client</code> - Represents the clients that sent requests to a root service.</p> </li> <li> <p> <code>remote</code> - A downstream service of indeterminate type.</p> </li> </ul>"
        },
        "State": {
          "shape": "String",
          "documentation": "<p>The service's state.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the first segment that the service generated.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The end time of the last segment that the service generated.</p>"
        },
        "Edges": {
          "shape": "EdgeList",
          "documentation": "<p>Connections to downstream services.</p>"
        },
        "SummaryStatistics": {
          "shape": "ServiceStatistics",
          "documentation": "<p>Aggregated statistics for the service.</p>"
        },
        "DurationHistogram": {
          "shape": "Histogram",
          "documentation": "<p>A histogram that maps the spread of service durations.</p>"
        },
        "ResponseTimeHistogram": {
          "shape": "Histogram",
          "documentation": "<p>A histogram that maps the spread of service response times.</p>"
        }
      },
      "documentation": "<p>Information about an application that processed requests, users that made requests, or downstream services, resources and applications that an application used.</p>"
    },
    "ServiceId": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p/>"
        },
        "Names": {
          "shape": "ServiceNames",
          "documentation": "<p/>"
        },
        "AccountId": {
          "shape": "String",
          "documentation": "<p/>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "ServiceIds": {
      "type": "list",
      "member": {
        "shape": "ServiceId"
      }
    },
    "ServiceList": {
      "type": "list",
      "member": {
        "shape": "Service"
      }
    },
    "ServiceName": {
      "type": "string",
      "max": 64
    },
    "ServiceNames": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ServiceStatistics": {
      "type": "structure",
      "members": {
        "OkCount": {
          "shape": "NullableLong",
          "documentation": "<p>The number of requests that completed with a 2xx Success status code.</p>"
        },
        "ErrorStatistics": {
          "shape": "ErrorStatistics",
          "documentation": "<p>Information about requests that failed with a 4xx Client Error status code.</p>"
        },
        "FaultStatistics": {
          "shape": "FaultStatistics",
          "documentation": "<p>Information about requests that failed with a 5xx Server Error status code.</p>"
        },
        "TotalCount": {
          "shape": "NullableLong",
          "documentation": "<p>The total number of completed requests.</p>"
        },
        "TotalResponseTime": {
          "shape": "NullableDouble",
          "documentation": "<p>The aggregate response time of completed requests.</p>"
        }
      },
      "documentation": "<p>Response statistics for a service.</p>"
    },
    "ServiceType": {
      "type": "string",
      "max": 64
    },
    "String": {
      "type": "string"
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
          "documentation": "<p>A tag key, such as <code>Stage</code> or <code>Name</code>. A tag key cannot be empty. The key can be a maximum of 128 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>An optional tag value, such as <code>Production</code> or <code>test-only</code>. The value can be a maximum of 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p>"
        }
      },
      "documentation": "<p>A map that contains tag keys and tag values to attach to an AWS X-Ray group or sampling rule. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS resources</a> in the <i>AWS General Reference</i>.</p> <p>The following restrictions apply to tags:</p> <ul> <li> <p>Maximum number of user-applied tags per resource: 50</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for AWS use. You cannot edit or delete system tags.</p> </li> </ul>"
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
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A map that contains one or more tag keys and tag values to attach to an X-Ray group or sampling rule. For more information about ways to use tags, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS resources</a> in the <i>AWS General Reference</i>.</p> <p>The following restrictions apply to tags:</p> <ul> <li> <p>Maximum number of user-applied tags per resource: 50</p> </li> <li> <p>Maximum tag key length: 128 Unicode characters</p> </li> <li> <p>Maximum tag value length: 256 Unicode characters</p> </li> <li> <p>Valid values for key and value: a-z, A-Z, 0-9, space, and the following characters: _ . : / = + - and @</p> </li> <li> <p>Tag keys and values are case sensitive.</p> </li> <li> <p>Don't use <code>aws:</code> as a prefix for keys; it's reserved for AWS use. You cannot edit or delete system tags.</p> </li> </ul>"
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
    "TelemetryRecord": {
      "type": "structure",
      "required": [
        "Timestamp"
      ],
      "members": {
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p/>"
        },
        "SegmentsReceivedCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "SegmentsSentCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "SegmentsSpilloverCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "SegmentsRejectedCount": {
          "shape": "NullableInteger",
          "documentation": "<p/>"
        },
        "BackendConnectionErrors": {
          "shape": "BackendConnectionErrors",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "TelemetryRecordList": {
      "type": "list",
      "member": {
        "shape": "TelemetryRecord"
      }
    },
    "TimeRangeType": {
      "type": "string",
      "enum": [
        "TraceId",
        "Event"
      ]
    },
    "TimeSeriesServiceStatistics": {
      "type": "structure",
      "members": {
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>Timestamp of the window for which statistics are aggregated.</p>"
        },
        "EdgeSummaryStatistics": {
          "shape": "EdgeStatistics"
        },
        "ServiceSummaryStatistics": {
          "shape": "ServiceStatistics"
        },
        "ResponseTimeHistogram": {
          "shape": "Histogram",
          "documentation": "<p>The response time histogram for the selected entities.</p>"
        }
      },
      "documentation": "<p>A list of TimeSeriesStatistic structures.</p>"
    },
    "TimeSeriesServiceStatisticsList": {
      "type": "list",
      "member": {
        "shape": "TimeSeriesServiceStatistics"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Trace": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "TraceId",
          "documentation": "<p>The unique identifier for the request that generated the trace's segments and subsegments.</p>"
        },
        "Duration": {
          "shape": "NullableDouble",
          "documentation": "<p>The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.</p>"
        },
        "Segments": {
          "shape": "SegmentList",
          "documentation": "<p>Segment documents for the segments and subsegments that comprise the trace.</p>"
        }
      },
      "documentation": "<p>A collection of segment documents with matching trace IDs.</p>"
    },
    "TraceAvailabilityZones": {
      "type": "list",
      "member": {
        "shape": "AvailabilityZoneDetail"
      }
    },
    "TraceId": {
      "type": "string",
      "max": 35,
      "min": 1
    },
    "TraceIdList": {
      "type": "list",
      "member": {
        "shape": "TraceId"
      }
    },
    "TraceInstanceIds": {
      "type": "list",
      "member": {
        "shape": "InstanceIdDetail"
      }
    },
    "TraceList": {
      "type": "list",
      "member": {
        "shape": "Trace"
      }
    },
    "TraceResourceARNs": {
      "type": "list",
      "member": {
        "shape": "ResourceARNDetail"
      }
    },
    "TraceSegmentDocument": {
      "type": "string"
    },
    "TraceSegmentDocumentList": {
      "type": "list",
      "member": {
        "shape": "TraceSegmentDocument"
      }
    },
    "TraceSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "TraceId",
          "documentation": "<p>The unique identifier for the request that generated the trace's segments and subsegments.</p>"
        },
        "Duration": {
          "shape": "NullableDouble",
          "documentation": "<p>The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.</p>"
        },
        "ResponseTime": {
          "shape": "NullableDouble",
          "documentation": "<p>The length of time in seconds between the start and end times of the root segment. If the service performs work asynchronously, the response time measures the time before the response is sent to the user, while the duration measures the amount of time before the last traced activity completes.</p>"
        },
        "HasFault": {
          "shape": "NullableBoolean",
          "documentation": "<p>The root segment document has a 500 series error.</p>"
        },
        "HasError": {
          "shape": "NullableBoolean",
          "documentation": "<p>The root segment document has a 400 series error.</p>"
        },
        "HasThrottle": {
          "shape": "NullableBoolean",
          "documentation": "<p>One or more of the segment documents has a 429 throttling error.</p>"
        },
        "IsPartial": {
          "shape": "NullableBoolean",
          "documentation": "<p>One or more of the segment documents is in progress.</p>"
        },
        "Http": {
          "shape": "Http",
          "documentation": "<p>Information about the HTTP request served by the trace.</p>"
        },
        "Annotations": {
          "shape": "Annotations",
          "documentation": "<p>Annotations from the trace's segment documents.</p>"
        },
        "Users": {
          "shape": "TraceUsers",
          "documentation": "<p>Users from the trace's segment documents.</p>"
        },
        "ServiceIds": {
          "shape": "ServiceIds",
          "documentation": "<p>Service IDs from the trace's segment documents.</p>"
        },
        "ResourceARNs": {
          "shape": "TraceResourceARNs",
          "documentation": "<p>A list of resource ARNs for any resource corresponding to the trace segments.</p>"
        },
        "InstanceIds": {
          "shape": "TraceInstanceIds",
          "documentation": "<p>A list of EC2 instance IDs for any instance corresponding to the trace segments.</p>"
        },
        "AvailabilityZones": {
          "shape": "TraceAvailabilityZones",
          "documentation": "<p>A list of availability zones for any zone corresponding to the trace segments.</p>"
        },
        "EntryPoint": {
          "shape": "ServiceId",
          "documentation": "<p>The root of a trace.</p>"
        },
        "FaultRootCauses": {
          "shape": "FaultRootCauses",
          "documentation": "<p>A collection of FaultRootCause structures corresponding to the the trace segments.</p>"
        },
        "ErrorRootCauses": {
          "shape": "ErrorRootCauses",
          "documentation": "<p>A collection of ErrorRootCause structures corresponding to the trace segments.</p>"
        },
        "ResponseTimeRootCauses": {
          "shape": "ResponseTimeRootCauses",
          "documentation": "<p>A collection of ResponseTimeRootCause structures corresponding to the trace segments.</p>"
        },
        "Revision": {
          "shape": "Integer",
          "documentation": "<p>The revision number of a trace.</p>"
        },
        "MatchedEventTime": {
          "shape": "Timestamp",
          "documentation": "<p>The matched time stamp of a defined event.</p>"
        }
      },
      "documentation": "<p>Metadata generated from the segment documents in a trace.</p>"
    },
    "TraceSummaryList": {
      "type": "list",
      "member": {
        "shape": "TraceSummary"
      }
    },
    "TraceUser": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "String",
          "documentation": "<p>The user's name.</p>"
        },
        "ServiceIds": {
          "shape": "ServiceIds",
          "documentation": "<p>Services that the user's request hit.</p>"
        }
      },
      "documentation": "<p>Information about a user recorded in segment documents.</p>"
    },
    "TraceUsers": {
      "type": "list",
      "member": {
        "shape": "TraceUser"
      }
    },
    "URLPath": {
      "type": "string",
      "max": 128
    },
    "UnprocessedStatistics": {
      "type": "structure",
      "members": {
        "RuleName": {
          "shape": "String",
          "documentation": "<p>The name of the sampling rule.</p>"
        },
        "ErrorCode": {
          "shape": "String",
          "documentation": "<p>The error code.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>Sampling statistics from a call to <a>GetSamplingTargets</a> that X-Ray could not process.</p>"
    },
    "UnprocessedStatisticsList": {
      "type": "list",
      "member": {
        "shape": "UnprocessedStatistics"
      }
    },
    "UnprocessedTraceIdList": {
      "type": "list",
      "member": {
        "shape": "TraceId"
      }
    },
    "UnprocessedTraceSegment": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>The segment's ID.</p>"
        },
        "ErrorCode": {
          "shape": "String",
          "documentation": "<p>The error that caused processing to fail.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>Information about a segment that failed processing.</p>"
    },
    "UnprocessedTraceSegmentList": {
      "type": "list",
      "member": {
        "shape": "UnprocessedTraceSegment"
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>Keys for one or more tags that you want to remove from an X-Ray group or sampling rule.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateGroupRequest": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The case-sensitive name of the group.</p>"
        },
        "GroupARN": {
          "shape": "GroupARN",
          "documentation": "<p>The ARN that was generated upon creation.</p>"
        },
        "FilterExpression": {
          "shape": "FilterExpression",
          "documentation": "<p>The updated filter expression defining criteria by which to group traces.</p>"
        },
        "InsightsConfiguration": {
          "shape": "InsightsConfiguration",
          "documentation": "<p>The structure containing configurations related to insights. The InsightsEnabled boolean can be set to true to enable insights for the group or false to disable insights for the group.</p>"
        }
      }
    },
    "UpdateGroupResult": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>The group that was updated. Contains the name of the group that was updated, the ARN of the group that was updated, the updated filter expression, and the updated insight configuration assigned to the group.</p>"
        }
      }
    },
    "UpdateSamplingRuleRequest": {
      "type": "structure",
      "required": [
        "SamplingRuleUpdate"
      ],
      "members": {
        "SamplingRuleUpdate": {
          "shape": "SamplingRuleUpdate",
          "documentation": "<p>The rule and fields to change.</p>"
        }
      }
    },
    "UpdateSamplingRuleResult": {
      "type": "structure",
      "members": {
        "SamplingRuleRecord": {
          "shape": "SamplingRuleRecord",
          "documentation": "<p>The updated rule definition and metadata.</p>"
        }
      }
    },
    "ValueWithServiceIds": {
      "type": "structure",
      "members": {
        "AnnotationValue": {
          "shape": "AnnotationValue",
          "documentation": "<p>Values of the annotation.</p>"
        },
        "ServiceIds": {
          "shape": "ServiceIds",
          "documentation": "<p>Services to which the annotation applies.</p>"
        }
      },
      "documentation": "<p>Information about a segment annotation.</p>"
    },
    "ValuesWithServiceIds": {
      "type": "list",
      "member": {
        "shape": "ValueWithServiceIds"
      }
    },
    "Version": {
      "type": "integer",
      "min": 1
    }
  },
  "documentation": "<p>AWS X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.</p>"
}
]===]))
