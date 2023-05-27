local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2013-12-02",
    "endpointPrefix": "kinesis",
    "jsonVersion": "1.1",
    "protocol": "json",
    "protocolSettings": {
      "h2": "eventstream"
    },
    "serviceAbbreviation": "Kinesis",
    "serviceFullName": "Amazon Kinesis",
    "serviceId": "Kinesis",
    "signatureVersion": "v4",
    "targetPrefix": "Kinesis_20131202",
    "uid": "kinesis-2013-12-02"
  },
  "operations": {
    "AddTagsToStream": {
      "name": "AddTagsToStream",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddTagsToStreamInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Adds or updates tags for the specified Kinesis data stream. Each time you invoke this operation, you can specify up to 10 tags. If you want to add more than 10 tags to your stream, you can invoke this operation multiple times. In total, each stream can have up to 50 tags.</p> <p>If tags have already been assigned to the stream, <code>AddTagsToStream</code> overwrites any existing tags that correspond to the specified tag keys.</p> <p> <a>AddTagsToStream</a> has a limit of five transactions per second per account.</p>"
    },
    "CreateStream": {
      "name": "CreateStream",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateStreamInput"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Creates a Kinesis data stream. A stream captures and transports data records that are continuously emitted from different data sources or <i>producers</i>. Scale-out within a stream is explicitly supported by means of shards, which are uniquely identified groups of data records in a stream.</p> <p>You specify and control the number of shards that a stream is composed of. Each shard can support reads up to five transactions per second, up to a maximum data read total of 2 MiB per second. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MiB per second. If the amount of data input increases or decreases, you can add or remove shards.</p> <p>The stream name identifies the stream. The name is scoped to the AWS account used by the application. It is also scoped by AWS Region. That is, two streams in two different accounts can have the same name, and two streams in the same account, but in two different Regions, can have the same name.</p> <p> <code>CreateStream</code> is an asynchronous operation. Upon receiving a <code>CreateStream</code> request, Kinesis Data Streams immediately returns and sets the stream status to <code>CREATING</code>. After the stream is created, Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. You should perform read and write operations only on an <code>ACTIVE</code> stream. </p> <p>You receive a <code>LimitExceededException</code> when making a <code>CreateStream</code> request when you try to do one of the following:</p> <ul> <li> <p>Have more than five streams in the <code>CREATING</code> state at any point in time.</p> </li> <li> <p>Create more shards than are authorized for your account.</p> </li> </ul> <p>For the default shard limit for an AWS account, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html\">Amazon Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To increase this limit, <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html\">contact AWS Support</a>.</p> <p>You can use <code>DescribeStream</code> to check the stream status, which is returned in <code>StreamStatus</code>.</p> <p> <a>CreateStream</a> has a limit of five transactions per second per account.</p>"
    },
    "DecreaseStreamRetentionPeriod": {
      "name": "DecreaseStreamRetentionPeriod",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DecreaseStreamRetentionPeriodInput"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Decreases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream. The minimum value of a stream's retention period is 24 hours.</p> <p>This operation may result in lost data. For example, if the stream's retention period is 48 hours and is decreased to 24 hours, any data already in the stream that is older than 24 hours is inaccessible.</p>"
    },
    "DeleteStream": {
      "name": "DeleteStream",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteStreamInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a Kinesis data stream and all its shards and data. You must shut down any applications that are operating on the stream before you delete the stream. If an application attempts to operate on a deleted stream, it receives the exception <code>ResourceNotFoundException</code>.</p> <p>If the stream is in the <code>ACTIVE</code> state, you can delete it. After a <code>DeleteStream</code> request, the specified stream is in the <code>DELETING</code> state until Kinesis Data Streams completes the deletion.</p> <p> <b>Note:</b> Kinesis Data Streams might continue to accept data read and write operations, such as <a>PutRecord</a>, <a>PutRecords</a>, and <a>GetRecords</a>, on a stream in the <code>DELETING</code> state until the stream deletion is complete.</p> <p>When you delete a stream, any shards in that stream are also deleted, and any tags are dissociated from the stream.</p> <p>You can use the <a>DescribeStream</a> operation to check the state of the stream, which is returned in <code>StreamStatus</code>.</p> <p> <a>DeleteStream</a> has a limit of five transactions per second per account.</p>"
    },
    "DeregisterStreamConsumer": {
      "name": "DeregisterStreamConsumer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterStreamConsumerInput"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>To deregister a consumer, provide its ARN. Alternatively, you can provide the ARN of the data stream and the name you gave the consumer when you registered it. You may also provide all three parameters, as long as they don't conflict with each other. If you don't know the name or ARN of the consumer that you want to deregister, you can use the <a>ListStreamConsumers</a> operation to get a list of the descriptions of all the consumers that are currently registered with a given data stream. The description of a consumer contains its name and ARN.</p> <p>This operation has a limit of five transactions per second per stream.</p>"
    },
    "DescribeLimits": {
      "name": "DescribeLimits",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLimitsInput"
      },
      "output": {
        "shape": "DescribeLimitsOutput"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Describes the shard limits and usage for the account.</p> <p>If you update your account limits, the old limits might be returned for a few minutes.</p> <p>This operation has a limit of one transaction per second per account.</p>"
    },
    "DescribeStream": {
      "name": "DescribeStream",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStreamInput"
      },
      "output": {
        "shape": "DescribeStreamOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Describes the specified Kinesis data stream.</p> <p>The information returned includes the stream name, Amazon Resource Name (ARN), creation time, enhanced metric configuration, and shard map. The shard map is an array of shard objects. For each shard object, there is the hash key and sequence number ranges that the shard spans, and the IDs of any earlier shards that played in a role in creating the shard. Every record ingested in the stream is identified by a sequence number, which is assigned when the record is put into the stream.</p> <p>You can limit the number of shards returned by each call. For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html\">Retrieving Shards from a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>There are no guarantees about the chronological order shards returned. To process shards in chronological order, use the ID of the parent shard to track the lineage to the oldest shard.</p> <p>This operation has a limit of 10 transactions per second per account.</p>"
    },
    "DescribeStreamConsumer": {
      "name": "DescribeStreamConsumer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStreamConsumerInput"
      },
      "output": {
        "shape": "DescribeStreamConsumerOutput"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>To get the description of a registered consumer, provide the ARN of the consumer. Alternatively, you can provide the ARN of the data stream and the name you gave the consumer when you registered it. You may also provide all three parameters, as long as they don't conflict with each other. If you don't know the name or ARN of the consumer that you want to describe, you can use the <a>ListStreamConsumers</a> operation to get a list of the descriptions of all the consumers that are currently registered with a given data stream.</p> <p>This operation has a limit of 20 transactions per second per stream.</p>"
    },
    "DescribeStreamSummary": {
      "name": "DescribeStreamSummary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStreamSummaryInput"
      },
      "output": {
        "shape": "DescribeStreamSummaryOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Provides a summarized description of the specified Kinesis data stream without the shard list.</p> <p>The information returned includes the stream name, Amazon Resource Name (ARN), status, record retention period, approximate creation time, monitoring, encryption details, and open shard count. </p> <p> <a>DescribeStreamSummary</a> has a limit of 20 transactions per second per account.</p>"
    },
    "DisableEnhancedMonitoring": {
      "name": "DisableEnhancedMonitoring",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableEnhancedMonitoringInput"
      },
      "output": {
        "shape": "EnhancedMonitoringOutput"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Disables enhanced monitoring.</p>"
    },
    "EnableEnhancedMonitoring": {
      "name": "EnableEnhancedMonitoring",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableEnhancedMonitoringInput"
      },
      "output": {
        "shape": "EnhancedMonitoringOutput"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Enables enhanced Kinesis data stream monitoring for shard-level metrics.</p>"
    },
    "GetRecords": {
      "name": "GetRecords",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRecordsInput"
      },
      "output": {
        "shape": "GetRecordsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "ExpiredIteratorException"
        },
        {
          "shape": "KMSDisabledException"
        },
        {
          "shape": "KMSInvalidStateException"
        },
        {
          "shape": "KMSAccessDeniedException"
        },
        {
          "shape": "KMSNotFoundException"
        },
        {
          "shape": "KMSOptInRequired"
        },
        {
          "shape": "KMSThrottlingException"
        }
      ],
      "documentation": "<p>Gets data records from a Kinesis data stream's shard.</p> <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator specifies the position in the shard from which you want to start reading data records sequentially. If there are no records available in the portion of the shard that the iterator points to, <a>GetRecords</a> returns an empty list. It might take multiple calls to get to a portion of the shard that contains records.</p> <p>You can scale by provisioning multiple shards per stream while considering service limits (for more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html\">Amazon Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>). Your application should have one thread per shard, each reading continuously from its stream. To read from a stream continually, call <a>GetRecords</a> in a loop. Use <a>GetShardIterator</a> to get the shard iterator to specify in the first <a>GetRecords</a> call. <a>GetRecords</a> returns a new shard iterator in <code>NextShardIterator</code>. Specify the shard iterator returned in <code>NextShardIterator</code> in subsequent calls to <a>GetRecords</a>. If the shard has been closed, the shard iterator can't return more data and <a>GetRecords</a> returns <code>null</code> in <code>NextShardIterator</code>. You can terminate the loop when the shard is closed, or when the shard iterator reaches the record with the sequence number or other attribute that marks it as the last record to process.</p> <p>Each data record can be up to 1 MiB in size, and each shard can read up to 2 MiB per second. You can ensure that your calls don't exceed the maximum supported size or throughput by using the <code>Limit</code> parameter to specify the maximum number of records that <a>GetRecords</a> can return. Consider your average record size when determining this limit. The maximum number of records that can be returned per call is 10,000.</p> <p>The size of the data returned by <a>GetRecords</a> varies depending on the utilization of the shard. The maximum size of data that <a>GetRecords</a> can return is 10 MiB. If a call returns this amount of data, subsequent calls made within the next 5 seconds throw <code>ProvisionedThroughputExceededException</code>. If there is insufficient provisioned throughput on the stream, subsequent calls made within the next 1 second throw <code>ProvisionedThroughputExceededException</code>. <a>GetRecords</a> doesn't return any data when it throws an exception. For this reason, we recommend that you wait 1 second between calls to <a>GetRecords</a>. However, it's possible that the application will get exceptions for longer than 1 second.</p> <p>To detect whether the application is falling behind in processing, you can use the <code>MillisBehindLatest</code> response attribute. You can also monitor the stream using CloudWatch metrics and other mechanisms (see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html\">Monitoring</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>).</p> <p>Each Amazon Kinesis record includes a value, <code>ApproximateArrivalTimestamp</code>, that is set when a stream successfully receives and stores a record. This is commonly referred to as a server-side time stamp, whereas a client-side time stamp is set when a data producer creates or sends the record to a stream (a data producer is any data source putting data records into a stream, for example with <a>PutRecords</a>). The time stamp has millisecond precision. There are no guarantees about the time stamp accuracy, or that the time stamp is always increasing. For example, records in a shard or across a stream might have time stamps that are out of order.</p> <p>This operation has a limit of five transactions per second per shard.</p>"
    },
    "GetShardIterator": {
      "name": "GetShardIterator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetShardIteratorInput"
      },
      "output": {
        "shape": "GetShardIteratorOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ProvisionedThroughputExceededException"
        }
      ],
      "documentation": "<p>Gets an Amazon Kinesis shard iterator. A shard iterator expires 5 minutes after it is returned to the requester.</p> <p>A shard iterator specifies the shard position from which to start reading data records sequentially. The position is specified using the sequence number of a data record in a shard. A sequence number is the identifier associated with every record ingested in the stream, and is assigned when a record is put into the stream. Each stream has one or more shards.</p> <p>You must specify the shard iterator type. For example, you can set the <code>ShardIteratorType</code> parameter to read exactly from the position denoted by a specific sequence number by using the <code>AT_SEQUENCE_NUMBER</code> shard iterator type. Alternatively, the parameter can read right after the sequence number by using the <code>AFTER_SEQUENCE_NUMBER</code> shard iterator type, using sequence numbers returned by earlier calls to <a>PutRecord</a>, <a>PutRecords</a>, <a>GetRecords</a>, or <a>DescribeStream</a>. In the request, you can specify the shard iterator type <code>AT_TIMESTAMP</code> to read records from an arbitrary point in time, <code>TRIM_HORIZON</code> to cause <code>ShardIterator</code> to point to the last untrimmed record in the shard in the system (the oldest data record in the shard), or <code>LATEST</code> so that you always read the most recent data in the shard. </p> <p>When you read repeatedly from a stream, use a <a>GetShardIterator</a> request to get the first shard iterator for use in your first <a>GetRecords</a> request and for subsequent reads use the shard iterator returned by the <a>GetRecords</a> request in <code>NextShardIterator</code>. A new shard iterator is returned by every <a>GetRecords</a> request in <code>NextShardIterator</code>, which you use in the <code>ShardIterator</code> parameter of the next <a>GetRecords</a> request. </p> <p>If a <a>GetShardIterator</a> request is made too often, you receive a <code>ProvisionedThroughputExceededException</code>. For more information about throughput limits, see <a>GetRecords</a>, and <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html\">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>If the shard is closed, <a>GetShardIterator</a> returns a valid iterator for the last sequence number of the shard. A shard can be closed as a result of using <a>SplitShard</a> or <a>MergeShards</a>.</p> <p> <a>GetShardIterator</a> has a limit of five transactions per second per account per open shard.</p>"
    },
    "IncreaseStreamRetentionPeriod": {
      "name": "IncreaseStreamRetentionPeriod",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "IncreaseStreamRetentionPeriodInput"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidArgumentException"
        }
      ],
      "documentation": "<p>Increases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours (7 days).</p> <p>If you choose a longer stream retention period, this operation increases the time period during which records that have not yet expired are accessible. However, it does not make previous, expired data (older than the stream's previous retention period) accessible after the operation has been called. For example, if a stream's retention period is set to 24 hours and is increased to 168 hours, any data that is older than 24 hours remains inaccessible to consumer applications.</p>"
    },
    "ListShards": {
      "name": "ListShards",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListShardsInput"
      },
      "output": {
        "shape": "ListShardsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ExpiredNextTokenException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Lists the shards in a stream and provides information about each shard. This operation has a limit of 100 transactions per second per data stream.</p> <important> <p>This API is a new operation that is used by the Amazon Kinesis Client Library (KCL). If you have a fine-grained IAM policy that only allows specific operations, you must update your policy to allow calls to this API. For more information, see <a href=\"https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html\">Controlling Access to Amazon Kinesis Data Streams Resources Using IAM</a>.</p> </important>"
    },
    "ListStreamConsumers": {
      "name": "ListStreamConsumers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListStreamConsumersInput"
      },
      "output": {
        "shape": "ListStreamConsumersOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ExpiredNextTokenException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Lists the consumers registered to receive data from a stream using enhanced fan-out, and provides information about each consumer.</p> <p>This operation has a limit of 5 transactions per second per stream.</p>"
    },
    "ListStreams": {
      "name": "ListStreams",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListStreamsInput"
      },
      "output": {
        "shape": "ListStreamsOutput"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Lists your Kinesis data streams.</p> <p>The number of streams may be too large to return from a single call to <code>ListStreams</code>. You can limit the number of returned streams using the <code>Limit</code> parameter. If you do not specify a value for the <code>Limit</code> parameter, Kinesis Data Streams uses the default limit, which is currently 10.</p> <p>You can detect if there are more streams available to list by using the <code>HasMoreStreams</code> flag from the returned output. If there are more streams available, you can request more streams by using the name of the last stream returned by the <code>ListStreams</code> request in the <code>ExclusiveStartStreamName</code> parameter in a subsequent request to <code>ListStreams</code>. The group of stream names returned by the subsequent request is then added to the list. You can continue this process until all the stream names have been collected in the list. </p> <p> <a>ListStreams</a> has a limit of five transactions per second per account.</p>"
    },
    "ListTagsForStream": {
      "name": "ListTagsForStream",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForStreamInput"
      },
      "output": {
        "shape": "ListTagsForStreamOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Lists the tags for the specified Kinesis data stream. This operation has a limit of five transactions per second per account.</p>"
    },
    "MergeShards": {
      "name": "MergeShards",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MergeShardsInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Merges two adjacent shards in a Kinesis data stream and combines them into a single shard to reduce the stream's capacity to ingest and transport data. Two shards are considered adjacent if the union of the hash key ranges for the two shards form a contiguous set with no gaps. For example, if you have two shards, one with a hash key range of 276...381 and the other with a hash key range of 382...454, then you could merge these two shards into a single shard that would have a hash key range of 276...454. After the merge, the single child shard receives data for all hash key values covered by the two parent shards.</p> <p> <code>MergeShards</code> is called when there is a need to reduce the overall capacity of a stream because of excess capacity that is not being used. You must specify the shard to be merged and the adjacent shard for a stream. For more information about merging shards, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html\">Merge Two Shards</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>If the stream is in the <code>ACTIVE</code> state, you can call <code>MergeShards</code>. If a stream is in the <code>CREATING</code>, <code>UPDATING</code>, or <code>DELETING</code> state, <code>MergeShards</code> returns a <code>ResourceInUseException</code>. If the specified stream does not exist, <code>MergeShards</code> returns a <code>ResourceNotFoundException</code>. </p> <p>You can use <a>DescribeStream</a> to check the state of the stream, which is returned in <code>StreamStatus</code>.</p> <p> <code>MergeShards</code> is an asynchronous operation. Upon receiving a <code>MergeShards</code> request, Amazon Kinesis Data Streams immediately returns a response and sets the <code>StreamStatus</code> to <code>UPDATING</code>. After the operation is completed, Kinesis Data Streams sets the <code>StreamStatus</code> to <code>ACTIVE</code>. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state. </p> <p>You use <a>DescribeStream</a> to determine the shard IDs that are specified in the <code>MergeShards</code> request. </p> <p>If you try to operate on too many streams in parallel using <a>CreateStream</a>, <a>DeleteStream</a>, <code>MergeShards</code>, or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p> <p> <code>MergeShards</code> has a limit of five transactions per second per account.</p>"
    },
    "PutRecord": {
      "name": "PutRecord",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRecordInput"
      },
      "output": {
        "shape": "PutRecordOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "KMSDisabledException"
        },
        {
          "shape": "KMSInvalidStateException"
        },
        {
          "shape": "KMSAccessDeniedException"
        },
        {
          "shape": "KMSNotFoundException"
        },
        {
          "shape": "KMSOptInRequired"
        },
        {
          "shape": "KMSThrottlingException"
        }
      ],
      "documentation": "<p>Writes a single data record into an Amazon Kinesis data stream. Call <code>PutRecord</code> to send data into the stream for real-time ingestion and subsequent processing, one record at a time. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MiB per second.</p> <p>You must specify the name of the stream that captures, stores, and transports the data; a partition key; and the data blob itself.</p> <p>The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.</p> <p>The partition key is used by Kinesis Data Streams to distribute data across shards. Kinesis Data Streams segregates the data records that belong to a stream into multiple shards, using the partition key associated with each data record to determine the shard to which a given data record belongs.</p> <p>Partition keys are Unicode strings, with a maximum length limit of 256 characters for each key. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards using the hash key ranges of the shards. You can override hashing the partition key to determine the shard by explicitly specifying a hash value using the <code>ExplicitHashKey</code> parameter. For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream\">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p> <code>PutRecord</code> returns the shard ID of where the data record was placed and the sequence number that was assigned to the data record.</p> <p>Sequence numbers increase over time and are specific to a shard within a stream, not across all shards within a stream. To guarantee strictly increasing ordering, write serially to a shard and use the <code>SequenceNumberForOrdering</code> parameter. For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream\">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <important> <p>After you write a record to a stream, you cannot modify that record or its order within the stream.</p> </important> <p>If a <code>PutRecord</code> request cannot be processed because of insufficient provisioned throughput on the shard involved in the request, <code>PutRecord</code> throws <code>ProvisionedThroughputExceededException</code>. </p> <p>By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>"
    },
    "PutRecords": {
      "name": "PutRecords",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRecordsInput"
      },
      "output": {
        "shape": "PutRecordsOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ProvisionedThroughputExceededException"
        },
        {
          "shape": "KMSDisabledException"
        },
        {
          "shape": "KMSInvalidStateException"
        },
        {
          "shape": "KMSAccessDeniedException"
        },
        {
          "shape": "KMSNotFoundException"
        },
        {
          "shape": "KMSOptInRequired"
        },
        {
          "shape": "KMSThrottlingException"
        }
      ],
      "documentation": "<p>Writes multiple data records into a Kinesis data stream in a single call (also referred to as a <code>PutRecords</code> request). Use this operation to send data into the stream for data ingestion and processing. </p> <p>Each <code>PutRecords</code> request can support up to 500 records. Each record in the request can be as large as 1 MiB, up to a limit of 5 MiB for the entire request, including partition keys. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MiB per second.</p> <p>You must specify the name of the stream that captures, stores, and transports the data; and an array of request <code>Records</code>, with each record in the array requiring a partition key and data blob. The record size limit applies to the total size of the partition key and data blob.</p> <p>The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.</p> <p>The partition key is used by Kinesis Data Streams as input to a hash function that maps the partition key and associated data to a specific shard. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream. For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream\">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>Each record in the <code>Records</code> array may include an optional parameter, <code>ExplicitHashKey</code>, which overrides the partition key to shard mapping. This parameter allows a data producer to determine explicitly the shard where the record is stored. For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords\">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>The <code>PutRecords</code> response includes an array of response <code>Records</code>. Each record in the response array directly correlates with a record in the request array using natural ordering, from the top to the bottom of the request and response. The response <code>Records</code> array always includes the same number of records as the request array.</p> <p>The response <code>Records</code> array includes both successfully and unsuccessfully processed records. Kinesis Data Streams attempts to process all records in each <code>PutRecords</code> request. A single record failure does not stop the processing of subsequent records. As a result, PutRecords doesn't guarantee the ordering of records. If you need to read records in the same order they are written to the stream, use <a>PutRecord</a> instead of <code>PutRecords</code>, and write to the same shard.</p> <p>A successfully processed record includes <code>ShardId</code> and <code>SequenceNumber</code> values. The <code>ShardId</code> parameter identifies the shard in the stream where the record is stored. The <code>SequenceNumber</code> parameter is an identifier assigned to the put record, unique to all records in the stream.</p> <p>An unsuccessfully processed record includes <code>ErrorCode</code> and <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error and can be one of the following values: <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>. <code>ErrorMessage</code> provides more detailed information about the <code>ProvisionedThroughputExceededException</code> exception including the account ID, stream name, and shard ID of the record that was throttled. For more information about partially successful responses, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords\">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <important> <p>After you write a record to a stream, you cannot modify that record or its order within the stream.</p> </important> <p>By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>"
    },
    "RegisterStreamConsumer": {
      "name": "RegisterStreamConsumer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterStreamConsumerInput"
      },
      "output": {
        "shape": "RegisterStreamConsumerOutput"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Registers a consumer with a Kinesis data stream. When you use this operation, the consumer you register can then call <a>SubscribeToShard</a> to receive data from the stream using enhanced fan-out, at a rate of up to 2 MiB per second for every shard you subscribe to. This rate is unaffected by the total number of consumers that read from the same stream.</p> <p>You can register up to 20 consumers per stream. A given consumer can only be registered with one stream at a time.</p> <p>For an example of how to use this operations, see <a href=\"/streams/latest/dev/building-enhanced-consumers-api.html\">Enhanced Fan-Out Using the Kinesis Data Streams API</a>.</p> <p>The use of this operation has a limit of five transactions per second per account. Also, only 5 consumers can be created simultaneously. In other words, you cannot have more than 5 consumers in a <code>CREATING</code> status at the same time. Registering a 6th consumer while there are 5 in a <code>CREATING</code> status results in a <code>LimitExceededException</code>.</p>"
    },
    "RemoveTagsFromStream": {
      "name": "RemoveTagsFromStream",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveTagsFromStreamInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Removes tags from the specified Kinesis data stream. Removed tags are deleted and cannot be recovered after this operation successfully completes.</p> <p>If you specify a tag that does not exist, it is ignored.</p> <p> <a>RemoveTagsFromStream</a> has a limit of five transactions per second per account.</p>"
    },
    "SplitShard": {
      "name": "SplitShard",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SplitShardInput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Splits a shard into two new shards in the Kinesis data stream, to increase the stream's capacity to ingest and transport data. <code>SplitShard</code> is called when there is a need to increase the overall capacity of a stream because of an expected increase in the volume of data records being ingested. </p> <p>You can also use <code>SplitShard</code> when a shard appears to be approaching its maximum utilization; for example, the producers sending data into the specific shard are suddenly sending more than previously anticipated. You can also call <code>SplitShard</code> to increase stream capacity, so that more Kinesis Data Streams applications can simultaneously read data from the stream for real-time processing. </p> <p>You must specify the shard to be split and the new hash key, which is the position in the shard where the shard gets split in two. In many cases, the new hash key might be the average of the beginning and ending hash key, but it can be any hash key value in the range being mapped into the shard. For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html\">Split a Shard</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>You can use <a>DescribeStream</a> to determine the shard ID and hash key values for the <code>ShardToSplit</code> and <code>NewStartingHashKey</code> parameters that are specified in the <code>SplitShard</code> request.</p> <p> <code>SplitShard</code> is an asynchronous operation. Upon receiving a <code>SplitShard</code> request, Kinesis Data Streams immediately returns a response and sets the stream status to <code>UPDATING</code>. After the operation is completed, Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state. </p> <p>You can use <code>DescribeStream</code> to check the status of the stream, which is returned in <code>StreamStatus</code>. If the stream is in the <code>ACTIVE</code> state, you can call <code>SplitShard</code>. If a stream is in <code>CREATING</code> or <code>UPDATING</code> or <code>DELETING</code> states, <code>DescribeStream</code> returns a <code>ResourceInUseException</code>.</p> <p>If the specified stream does not exist, <code>DescribeStream</code> returns a <code>ResourceNotFoundException</code>. If you try to create more shards than are authorized for your account, you receive a <code>LimitExceededException</code>. </p> <p>For the default shard limit for an AWS account, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html\">Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To increase this limit, <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html\">contact AWS Support</a>.</p> <p>If you try to operate on too many streams simultaneously using <a>CreateStream</a>, <a>DeleteStream</a>, <a>MergeShards</a>, and/or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p> <p> <code>SplitShard</code> has a limit of five transactions per second per account.</p>"
    },
    "StartStreamEncryption": {
      "name": "StartStreamEncryption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartStreamEncryptionInput"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "KMSDisabledException"
        },
        {
          "shape": "KMSInvalidStateException"
        },
        {
          "shape": "KMSAccessDeniedException"
        },
        {
          "shape": "KMSNotFoundException"
        },
        {
          "shape": "KMSOptInRequired"
        },
        {
          "shape": "KMSThrottlingException"
        }
      ],
      "documentation": "<p>Enables or updates server-side encryption using an AWS KMS key for a specified stream. </p> <p>Starting encryption is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Updating or applying encryption normally takes a few seconds to complete, but it can take minutes. You can continue to read and write data to your stream while its status is <code>UPDATING</code>. Once the status of the stream is <code>ACTIVE</code>, encryption begins for records written to the stream. </p> <p>API Limits: You can successfully apply a new AWS KMS key for server-side encryption 25 times in a rolling 24-hour period.</p> <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status before all records written to the stream are encrypted. After you enable encryption, you can verify that encryption is applied by inspecting the API response from <code>PutRecord</code> or <code>PutRecords</code>.</p>"
    },
    "StopStreamEncryption": {
      "name": "StopStreamEncryption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopStreamEncryptionInput"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Disables server-side encryption for a specified stream. </p> <p>Stopping encryption is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Stopping encryption normally takes a few seconds to complete, but it can take minutes. You can continue to read and write data to your stream while its status is <code>UPDATING</code>. Once the status of the stream is <code>ACTIVE</code>, records written to the stream are no longer encrypted by Kinesis Data Streams. </p> <p>API Limits: You can successfully disable server-side encryption 25 times in a rolling 24-hour period. </p> <p>Note: It can take up to 5 seconds after the stream is in an <code>ACTIVE</code> status before all records written to the stream are no longer subject to encryption. After you disabled encryption, you can verify that encryption is not applied by inspecting the API response from <code>PutRecord</code> or <code>PutRecords</code>.</p>"
    },
    "UpdateShardCount": {
      "name": "UpdateShardCount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateShardCountInput"
      },
      "output": {
        "shape": "UpdateShardCountOutput"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates the shard count of the specified stream to the specified number of shards.</p> <p>Updating the shard count is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Depending on the size of the stream, the scaling action could take a few minutes to complete. You can continue to read and write data to your stream while its status is <code>UPDATING</code>.</p> <p>To update the shard count, Kinesis Data Streams performs splits or merges on individual shards. This can cause short-lived shards to be created, in addition to the final shards. These short-lived shards count towards your total shard limit for your account in the Region.</p> <p>When using this operation, we recommend that you specify a target shard count that is a multiple of 25% (25%, 50%, 75%, 100%). You can specify any target value within your shard limit. However, if you specify a target that isn't a multiple of 25%, the scaling action might take longer to complete. </p> <p>This operation has the following default limits. By default, you cannot do the following:</p> <ul> <li> <p>Scale more than ten times per rolling 24-hour period per stream</p> </li> <li> <p>Scale up to more than double your current shard count for a stream</p> </li> <li> <p>Scale down below half your current shard count for a stream</p> </li> <li> <p>Scale up to more than 500 shards in a stream</p> </li> <li> <p>Scale a stream with more than 500 shards down unless the result is less than 500 shards</p> </li> <li> <p>Scale up to more than the shard limit for your account</p> </li> </ul> <p>For the default limits for an AWS account, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html\">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To request an increase in the call rate limit, the shard limit for this API, or your overall shard limit, use the <a href=\"https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&amp;limitType=service-code-kinesis\">limits form</a>.</p>"
    }
  },
  "shapes": {
    "AddTagsToStreamInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "Tags"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream.</p>"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>A set of up to 10 key-value pairs to use to create the tags.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>AddTagsToStream</code>.</p>"
    },
    "BooleanObject": {
      "type": "boolean"
    },
    "ChildShard": {
      "type": "structure",
      "required": [
        "ShardId",
        "ParentShards",
        "HashKeyRange"
      ],
      "members": {
        "ShardId": {
          "shape": "ShardId"
        },
        "ParentShards": {
          "shape": "ShardIdList"
        },
        "HashKeyRange": {
          "shape": "HashKeyRange"
        }
      }
    },
    "ChildShardList": {
      "type": "list",
      "member": {
        "shape": "ChildShard"
      }
    },
    "Consumer": {
      "type": "structure",
      "required": [
        "ConsumerName",
        "ConsumerARN",
        "ConsumerStatus",
        "ConsumerCreationTimestamp"
      ],
      "members": {
        "ConsumerName": {
          "shape": "ConsumerName",
          "documentation": "<p>The name of the consumer is something you choose when you register the consumer.</p>"
        },
        "ConsumerARN": {
          "shape": "ConsumerARN",
          "documentation": "<p>When you register a consumer, Kinesis Data Streams generates an ARN for it. You need this ARN to be able to call <a>SubscribeToShard</a>.</p> <p>If you delete a consumer and then create a new one with the same name, it won't have the same ARN. That's because consumer ARNs contain the creation timestamp. This is important to keep in mind if you have IAM policies that reference consumer ARNs.</p>"
        },
        "ConsumerStatus": {
          "shape": "ConsumerStatus",
          "documentation": "<p>A consumer can't read data while in the <code>CREATING</code> or <code>DELETING</code> states.</p>"
        },
        "ConsumerCreationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>An object that represents the details of the consumer you registered. This type of object is returned by <a>RegisterStreamConsumer</a>.</p>"
    },
    "ConsumerARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "^(arn):aws.*:kinesis:.*:\\d{12}:.*stream\\/[a-zA-Z0-9_.-]+\\/consumer\\/[a-zA-Z0-9_.-]+:[0-9]+"
    },
    "ConsumerCountObject": {
      "type": "integer",
      "max": 1000000,
      "min": 0
    },
    "ConsumerDescription": {
      "type": "structure",
      "required": [
        "ConsumerName",
        "ConsumerARN",
        "ConsumerStatus",
        "ConsumerCreationTimestamp",
        "StreamARN"
      ],
      "members": {
        "ConsumerName": {
          "shape": "ConsumerName",
          "documentation": "<p>The name of the consumer is something you choose when you register the consumer.</p>"
        },
        "ConsumerARN": {
          "shape": "ConsumerARN",
          "documentation": "<p>When you register a consumer, Kinesis Data Streams generates an ARN for it. You need this ARN to be able to call <a>SubscribeToShard</a>.</p> <p>If you delete a consumer and then create a new one with the same name, it won't have the same ARN. That's because consumer ARNs contain the creation timestamp. This is important to keep in mind if you have IAM policies that reference consumer ARNs.</p>"
        },
        "ConsumerStatus": {
          "shape": "ConsumerStatus",
          "documentation": "<p>A consumer can't read data while in the <code>CREATING</code> or <code>DELETING</code> states.</p>"
        },
        "ConsumerCreationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p/>"
        },
        "StreamARN": {
          "shape": "StreamARN",
          "documentation": "<p>The ARN of the stream with which you registered the consumer.</p>"
        }
      },
      "documentation": "<p>An object that represents the details of a registered consumer. This type of object is returned by <a>DescribeStreamConsumer</a>.</p>"
    },
    "ConsumerList": {
      "type": "list",
      "member": {
        "shape": "Consumer"
      }
    },
    "ConsumerName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "ConsumerStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "DELETING",
        "ACTIVE"
      ]
    },
    "CreateStreamInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "ShardCount"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>A name to identify the stream. The stream name is scoped to the AWS account used by the application that creates the stream. It is also scoped by AWS Region. That is, two streams in two different AWS accounts can have the same name. Two streams in the same AWS account but in two different Regions can also have the same name.</p>"
        },
        "ShardCount": {
          "shape": "PositiveIntegerObject",
          "documentation": "<p>The number of shards that the stream will use. The throughput of the stream is a function of the number of shards; more shards are required for greater provisioned throughput.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>CreateStream</code>.</p>"
    },
    "Data": {
      "type": "blob",
      "max": 1048576,
      "min": 0
    },
    "DecreaseStreamRetentionPeriodInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "RetentionPeriodHours"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream to modify.</p>"
        },
        "RetentionPeriodHours": {
          "shape": "RetentionPeriodHours",
          "documentation": "<p>The new retention period of the stream, in hours. Must be less than the current retention period.</p>"
        }
      },
      "documentation": "<p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>"
    },
    "DeleteStreamInput": {
      "type": "structure",
      "required": [
        "StreamName"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream to delete.</p>"
        },
        "EnforceConsumerDeletion": {
          "shape": "BooleanObject",
          "documentation": "<p>If this parameter is unset (<code>null</code>) or if you set it to <code>false</code>, and the stream has registered consumers, the call to <code>DeleteStream</code> fails with a <code>ResourceInUseException</code>. </p>"
        }
      },
      "documentation": "<p>Represents the input for <a>DeleteStream</a>.</p>"
    },
    "DeregisterStreamConsumerInput": {
      "type": "structure",
      "members": {
        "StreamARN": {
          "shape": "StreamARN",
          "documentation": "<p>The ARN of the Kinesis data stream that the consumer is registered with. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
        },
        "ConsumerName": {
          "shape": "ConsumerName",
          "documentation": "<p>The name that you gave to the consumer.</p>"
        },
        "ConsumerARN": {
          "shape": "ConsumerARN",
          "documentation": "<p>The ARN returned by Kinesis Data Streams when you registered the consumer. If you don't know the ARN of the consumer that you want to deregister, you can use the ListStreamConsumers operation to get a list of the descriptions of all the consumers that are currently registered with a given data stream. The description of a consumer contains its ARN.</p>"
        }
      }
    },
    "DescribeLimitsInput": {
      "type": "structure",
      "members": {}
    },
    "DescribeLimitsOutput": {
      "type": "structure",
      "required": [
        "ShardLimit",
        "OpenShardCount"
      ],
      "members": {
        "ShardLimit": {
          "shape": "ShardCountObject",
          "documentation": "<p>The maximum number of shards.</p>"
        },
        "OpenShardCount": {
          "shape": "ShardCountObject",
          "documentation": "<p>The number of open shards.</p>"
        }
      }
    },
    "DescribeStreamConsumerInput": {
      "type": "structure",
      "members": {
        "StreamARN": {
          "shape": "StreamARN",
          "documentation": "<p>The ARN of the Kinesis data stream that the consumer is registered with. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
        },
        "ConsumerName": {
          "shape": "ConsumerName",
          "documentation": "<p>The name that you gave to the consumer.</p>"
        },
        "ConsumerARN": {
          "shape": "ConsumerARN",
          "documentation": "<p>The ARN returned by Kinesis Data Streams when you registered the consumer.</p>"
        }
      }
    },
    "DescribeStreamConsumerOutput": {
      "type": "structure",
      "required": [
        "ConsumerDescription"
      ],
      "members": {
        "ConsumerDescription": {
          "shape": "ConsumerDescription",
          "documentation": "<p>An object that represents the details of the consumer.</p>"
        }
      }
    },
    "DescribeStreamInput": {
      "type": "structure",
      "required": [
        "StreamName"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream to describe.</p>"
        },
        "Limit": {
          "shape": "DescribeStreamInputLimit",
          "documentation": "<p>The maximum number of shards to return in a single call. The default value is 100. If you specify a value greater than 100, at most 100 shards are returned.</p>"
        },
        "ExclusiveStartShardId": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID of the shard to start with.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>DescribeStream</code>.</p>"
    },
    "DescribeStreamInputLimit": {
      "type": "integer",
      "max": 10000,
      "min": 1
    },
    "DescribeStreamOutput": {
      "type": "structure",
      "required": [
        "StreamDescription"
      ],
      "members": {
        "StreamDescription": {
          "shape": "StreamDescription",
          "documentation": "<p>The current status of the stream, the stream Amazon Resource Name (ARN), an array of shard objects that comprise the stream, and whether there are more shards available.</p>"
        }
      },
      "documentation": "<p>Represents the output for <code>DescribeStream</code>.</p>"
    },
    "DescribeStreamSummaryInput": {
      "type": "structure",
      "required": [
        "StreamName"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream to describe.</p>"
        }
      }
    },
    "DescribeStreamSummaryOutput": {
      "type": "structure",
      "required": [
        "StreamDescriptionSummary"
      ],
      "members": {
        "StreamDescriptionSummary": {
          "shape": "StreamDescriptionSummary",
          "documentation": "<p>A <a>StreamDescriptionSummary</a> containing information about the stream.</p>"
        }
      }
    },
    "DisableEnhancedMonitoringInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "ShardLevelMetrics"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the Kinesis data stream for which to disable enhanced monitoring.</p>"
        },
        "ShardLevelMetrics": {
          "shape": "MetricsNameList",
          "documentation": "<p>List of shard-level metrics to disable.</p> <p>The following are the valid shard-level metrics. The value \"<code>ALL</code>\" disables every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html\">Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>Represents the input for <a>DisableEnhancedMonitoring</a>.</p>"
    },
    "EnableEnhancedMonitoringInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "ShardLevelMetrics"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream for which to enable enhanced monitoring.</p>"
        },
        "ShardLevelMetrics": {
          "shape": "MetricsNameList",
          "documentation": "<p>List of shard-level metrics to enable.</p> <p>The following are the valid shard-level metrics. The value \"<code>ALL</code>\" enables every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html\">Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>Represents the input for <a>EnableEnhancedMonitoring</a>.</p>"
    },
    "EncryptionType": {
      "type": "string",
      "enum": [
        "NONE",
        "KMS"
      ]
    },
    "EnhancedMetrics": {
      "type": "structure",
      "members": {
        "ShardLevelMetrics": {
          "shape": "MetricsNameList",
          "documentation": "<p>List of shard-level metrics.</p> <p>The following are the valid shard-level metrics. The value \"<code>ALL</code>\" enhances every metric.</p> <ul> <li> <p> <code>IncomingBytes</code> </p> </li> <li> <p> <code>IncomingRecords</code> </p> </li> <li> <p> <code>OutgoingBytes</code> </p> </li> <li> <p> <code>OutgoingRecords</code> </p> </li> <li> <p> <code>WriteProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>ReadProvisionedThroughputExceeded</code> </p> </li> <li> <p> <code>IteratorAgeMilliseconds</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html\">Monitoring the Amazon Kinesis Data Streams Service with Amazon CloudWatch</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>Represents enhanced metrics types.</p>"
    },
    "EnhancedMonitoringList": {
      "type": "list",
      "member": {
        "shape": "EnhancedMetrics"
      }
    },
    "EnhancedMonitoringOutput": {
      "type": "structure",
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the Kinesis data stream.</p>"
        },
        "CurrentShardLevelMetrics": {
          "shape": "MetricsNameList",
          "documentation": "<p>Represents the current state of the metrics that are in the enhanced state before the operation.</p>"
        },
        "DesiredShardLevelMetrics": {
          "shape": "MetricsNameList",
          "documentation": "<p>Represents the list of all the metrics that would be in the enhanced state after the operation.</p>"
        }
      },
      "documentation": "<p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>"
    },
    "ErrorCode": {
      "type": "string"
    },
    "ErrorMessage": {
      "type": "string"
    },
    "GetRecordsInput": {
      "type": "structure",
      "required": [
        "ShardIterator"
      ],
      "members": {
        "ShardIterator": {
          "shape": "ShardIterator",
          "documentation": "<p>The position in the shard from which you want to start sequentially reading data records. A shard iterator specifies this position using the sequence number of a data record in the shard.</p>"
        },
        "Limit": {
          "shape": "GetRecordsInputLimit",
          "documentation": "<p>The maximum number of records to return. Specify a value of up to 10,000. If you specify a value that is greater than 10,000, <a>GetRecords</a> throws <code>InvalidArgumentException</code>. The default value is 10,000.</p>"
        }
      },
      "documentation": "<p>Represents the input for <a>GetRecords</a>.</p>"
    },
    "GetRecordsInputLimit": {
      "type": "integer",
      "max": 10000,
      "min": 1
    },
    "GetRecordsOutput": {
      "type": "structure",
      "required": [
        "Records"
      ],
      "members": {
        "Records": {
          "shape": "RecordList",
          "documentation": "<p>The data records retrieved from the shard.</p>"
        },
        "NextShardIterator": {
          "shape": "ShardIterator",
          "documentation": "<p>The next position in the shard from which to start sequentially reading data records. If set to <code>null</code>, the shard has been closed and the requested iterator does not return any more data. </p>"
        },
        "MillisBehindLatest": {
          "shape": "MillisBehindLatest",
          "documentation": "<p>The number of milliseconds the <a>GetRecords</a> response is from the tip of the stream, indicating how far behind current time the consumer is. A value of zero indicates that record processing is caught up, and there are no new records to process at this moment.</p>"
        },
        "ChildShards": {
          "shape": "ChildShardList"
        }
      },
      "documentation": "<p>Represents the output for <a>GetRecords</a>.</p>"
    },
    "GetShardIteratorInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "ShardId",
        "ShardIteratorType"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the Amazon Kinesis data stream.</p>"
        },
        "ShardId": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID of the Kinesis Data Streams shard to get the iterator for.</p>"
        },
        "ShardIteratorType": {
          "shape": "ShardIteratorType",
          "documentation": "<p>Determines how the shard iterator is used to start reading data records from the shard.</p> <p>The following are the valid Amazon Kinesis shard iterator types:</p> <ul> <li> <p>AT_SEQUENCE_NUMBER - Start reading from the position denoted by a specific sequence number, provided in the value <code>StartingSequenceNumber</code>.</p> </li> <li> <p>AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted by a specific sequence number, provided in the value <code>StartingSequenceNumber</code>.</p> </li> <li> <p>AT_TIMESTAMP - Start reading from the position denoted by a specific time stamp, provided in the value <code>Timestamp</code>.</p> </li> <li> <p>TRIM_HORIZON - Start reading at the last untrimmed record in the shard in the system, which is the oldest data record in the shard.</p> </li> <li> <p>LATEST - Start reading just after the most recent record in the shard, so that you always read the most recent data in the shard.</p> </li> </ul>"
        },
        "StartingSequenceNumber": {
          "shape": "SequenceNumber",
          "documentation": "<p>The sequence number of the data record in the shard from which to start reading. Used with shard iterator type AT_SEQUENCE_NUMBER and AFTER_SEQUENCE_NUMBER.</p>"
        },
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time stamp of the data record from which to start reading. Used with shard iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date with precision in milliseconds. For example, <code>2016-04-04T19:58:46.480-00:00</code> or <code>1459799926.480</code>. If a record with this exact time stamp does not exist, the iterator returned is for the next (later) record. If the time stamp is older than the current trim horizon, the iterator returned is for the oldest untrimmed data record (TRIM_HORIZON).</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>GetShardIterator</code>.</p>"
    },
    "GetShardIteratorOutput": {
      "type": "structure",
      "members": {
        "ShardIterator": {
          "shape": "ShardIterator",
          "documentation": "<p>The position in the shard from which to start reading data records sequentially. A shard iterator specifies this position using the sequence number of a data record in a shard.</p>"
        }
      },
      "documentation": "<p>Represents the output for <code>GetShardIterator</code>.</p>"
    },
    "HashKey": {
      "type": "string",
      "pattern": "0|([1-9]\\d{0,38})"
    },
    "HashKeyRange": {
      "type": "structure",
      "required": [
        "StartingHashKey",
        "EndingHashKey"
      ],
      "members": {
        "StartingHashKey": {
          "shape": "HashKey",
          "documentation": "<p>The starting hash key of the hash key range.</p>"
        },
        "EndingHashKey": {
          "shape": "HashKey",
          "documentation": "<p>The ending hash key of the hash key range.</p>"
        }
      },
      "documentation": "<p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>"
    },
    "IncreaseStreamRetentionPeriodInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "RetentionPeriodHours"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream to modify.</p>"
        },
        "RetentionPeriodHours": {
          "shape": "RetentionPeriodHours",
          "documentation": "<p>The new retention period of the stream, in hours. Must be more than the current retention period.</p>"
        }
      },
      "documentation": "<p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>"
    },
    "KeyId": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "ListShardsInput": {
      "type": "structure",
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the data stream whose shards you want to list. </p> <p>You cannot specify this parameter if you specify the <code>NextToken</code> parameter.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When the number of shards in the data stream is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of shards in the data stream, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to list the next set of shards.</p> <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you specify <code>NextToken</code> because the latter unambiguously identifies the stream.</p> <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is less than the number of shards that the operation returns if you don't specify <code>MaxResults</code>, the response will contain a new <code>NextToken</code> value. You can use the new <code>NextToken</code> value in a subsequent call to the <code>ListShards</code> operation.</p> <important> <p>Tokens expire after 300 seconds. When you obtain a value for <code>NextToken</code> in the response to a call to <code>ListShards</code>, you have 300 seconds to use that value. If you specify an expired token in a call to <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p> </important>"
        },
        "ExclusiveStartShardId": {
          "shape": "ShardId",
          "documentation": "<p>Specify this parameter to indicate that you want to list the shards starting with the shard whose ID immediately follows <code>ExclusiveStartShardId</code>.</p> <p>If you don't specify this parameter, the default behavior is for <code>ListShards</code> to list the shards starting with the first one in the stream.</p> <p>You cannot specify this parameter if you specify <code>NextToken</code>.</p>"
        },
        "MaxResults": {
          "shape": "ListShardsInputLimit",
          "documentation": "<p>The maximum number of shards to return in a single call to <code>ListShards</code>. The minimum value you can specify for this parameter is 1, and the maximum is 10,000, which is also the default.</p> <p>When the number of shards to be listed is greater than the value of <code>MaxResults</code>, the response contains a <code>NextToken</code> value that you can use in a subsequent call to <code>ListShards</code> to list the next set of shards.</p>"
        },
        "StreamCreationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>Specify this input parameter to distinguish data streams that have the same name. For example, if you create a data stream and then delete it, and you later create another data stream with the same name, you can use this input parameter to specify which of the two streams you want to list the shards for.</p> <p>You cannot specify this parameter if you specify the <code>NextToken</code> parameter.</p>"
        },
        "ShardFilter": {
          "shape": "ShardFilter"
        }
      }
    },
    "ListShardsInputLimit": {
      "type": "integer",
      "max": 10000,
      "min": 1
    },
    "ListShardsOutput": {
      "type": "structure",
      "members": {
        "Shards": {
          "shape": "ShardList",
          "documentation": "<p>An array of JSON objects. Each object represents one shard and specifies the IDs of the shard, the shard's parent, and the shard that's adjacent to the shard's parent. Each object also contains the starting and ending hash keys and the starting and ending sequence numbers for the shard.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When the number of shards in the data stream is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of shards in the data stream, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListShards</code> to list the next set of shards. For more information about the use of this pagination token when calling the <code>ListShards</code> operation, see <a>ListShardsInput$NextToken</a>.</p> <important> <p>Tokens expire after 300 seconds. When you obtain a value for <code>NextToken</code> in the response to a call to <code>ListShards</code>, you have 300 seconds to use that value. If you specify an expired token in a call to <code>ListShards</code>, you get <code>ExpiredNextTokenException</code>.</p> </important>"
        }
      }
    },
    "ListStreamConsumersInput": {
      "type": "structure",
      "required": [
        "StreamARN"
      ],
      "members": {
        "StreamARN": {
          "shape": "StreamARN",
          "documentation": "<p>The ARN of the Kinesis data stream for which you want to list the registered consumers. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When the number of consumers that are registered with the data stream is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of consumers that are registered with the data stream, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListStreamConsumers</code> to list the next set of registered consumers.</p> <p>Don't specify <code>StreamName</code> or <code>StreamCreationTimestamp</code> if you specify <code>NextToken</code> because the latter unambiguously identifies the stream.</p> <p>You can optionally specify a value for the <code>MaxResults</code> parameter when you specify <code>NextToken</code>. If you specify a <code>MaxResults</code> value that is less than the number of consumers that the operation returns if you don't specify <code>MaxResults</code>, the response will contain a new <code>NextToken</code> value. You can use the new <code>NextToken</code> value in a subsequent call to the <code>ListStreamConsumers</code> operation to list the next set of consumers.</p> <important> <p>Tokens expire after 300 seconds. When you obtain a value for <code>NextToken</code> in the response to a call to <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you specify an expired token in a call to <code>ListStreamConsumers</code>, you get <code>ExpiredNextTokenException</code>.</p> </important>"
        },
        "MaxResults": {
          "shape": "ListStreamConsumersInputLimit",
          "documentation": "<p>The maximum number of consumers that you want a single call of <code>ListStreamConsumers</code> to return.</p>"
        },
        "StreamCreationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>Specify this input parameter to distinguish data streams that have the same name. For example, if you create a data stream and then delete it, and you later create another data stream with the same name, you can use this input parameter to specify which of the two streams you want to list the consumers for. </p> <p>You can't specify this parameter if you specify the NextToken parameter. </p>"
        }
      }
    },
    "ListStreamConsumersInputLimit": {
      "type": "integer",
      "max": 10000,
      "min": 1
    },
    "ListStreamConsumersOutput": {
      "type": "structure",
      "members": {
        "Consumers": {
          "shape": "ConsumerList",
          "documentation": "<p>An array of JSON objects. Each object represents one registered consumer.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>When the number of consumers that are registered with the data stream is greater than the default value for the <code>MaxResults</code> parameter, or if you explicitly specify a value for <code>MaxResults</code> that is less than the number of registered consumers, the response includes a pagination token named <code>NextToken</code>. You can specify this <code>NextToken</code> value in a subsequent call to <code>ListStreamConsumers</code> to list the next set of registered consumers. For more information about the use of this pagination token when calling the <code>ListStreamConsumers</code> operation, see <a>ListStreamConsumersInput$NextToken</a>.</p> <important> <p>Tokens expire after 300 seconds. When you obtain a value for <code>NextToken</code> in the response to a call to <code>ListStreamConsumers</code>, you have 300 seconds to use that value. If you specify an expired token in a call to <code>ListStreamConsumers</code>, you get <code>ExpiredNextTokenException</code>.</p> </important>"
        }
      }
    },
    "ListStreamsInput": {
      "type": "structure",
      "members": {
        "Limit": {
          "shape": "ListStreamsInputLimit",
          "documentation": "<p>The maximum number of streams to list.</p>"
        },
        "ExclusiveStartStreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream to start the list with.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>ListStreams</code>.</p>"
    },
    "ListStreamsInputLimit": {
      "type": "integer",
      "max": 10000,
      "min": 1
    },
    "ListStreamsOutput": {
      "type": "structure",
      "required": [
        "StreamNames",
        "HasMoreStreams"
      ],
      "members": {
        "StreamNames": {
          "shape": "StreamNameList",
          "documentation": "<p>The names of the streams that are associated with the AWS account making the <code>ListStreams</code> request.</p>"
        },
        "HasMoreStreams": {
          "shape": "BooleanObject",
          "documentation": "<p>If set to <code>true</code>, there are more streams available to list.</p>"
        }
      },
      "documentation": "<p>Represents the output for <code>ListStreams</code>.</p>"
    },
    "ListTagsForStreamInput": {
      "type": "structure",
      "required": [
        "StreamName"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream.</p>"
        },
        "ExclusiveStartTagKey": {
          "shape": "TagKey",
          "documentation": "<p>The key to use as the starting point for the list of tags. If this parameter is set, <code>ListTagsForStream</code> gets all tags that occur after <code>ExclusiveStartTagKey</code>. </p>"
        },
        "Limit": {
          "shape": "ListTagsForStreamInputLimit",
          "documentation": "<p>The number of tags to return. If this number is less than the total number of tags associated with the stream, <code>HasMoreTags</code> is set to <code>true</code>. To list additional tags, set <code>ExclusiveStartTagKey</code> to the last key in the response.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>ListTagsForStream</code>.</p>"
    },
    "ListTagsForStreamInputLimit": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "ListTagsForStreamOutput": {
      "type": "structure",
      "required": [
        "Tags",
        "HasMoreTags"
      ],
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags associated with <code>StreamName</code>, starting with the first tag after <code>ExclusiveStartTagKey</code> and up to the specified <code>Limit</code>. </p>"
        },
        "HasMoreTags": {
          "shape": "BooleanObject",
          "documentation": "<p>If set to <code>true</code>, more tags are available. To request additional tags, set <code>ExclusiveStartTagKey</code> to the key of the last tag returned.</p>"
        }
      },
      "documentation": "<p>Represents the output for <code>ListTagsForStream</code>.</p>"
    },
    "MergeShardsInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "ShardToMerge",
        "AdjacentShardToMerge"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream for the merge.</p>"
        },
        "ShardToMerge": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID of the shard to combine with the adjacent shard for the merge.</p>"
        },
        "AdjacentShardToMerge": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID of the adjacent shard for the merge.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>MergeShards</code>.</p>"
    },
    "MetricsName": {
      "type": "string",
      "enum": [
        "IncomingBytes",
        "IncomingRecords",
        "OutgoingBytes",
        "OutgoingRecords",
        "WriteProvisionedThroughputExceeded",
        "ReadProvisionedThroughputExceeded",
        "IteratorAgeMilliseconds",
        "ALL"
      ]
    },
    "MetricsNameList": {
      "type": "list",
      "member": {
        "shape": "MetricsName"
      },
      "max": 7,
      "min": 1
    },
    "MillisBehindLatest": {
      "type": "long",
      "min": 0
    },
    "NextToken": {
      "type": "string",
      "max": 1048576,
      "min": 1
    },
    "PartitionKey": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "PositiveIntegerObject": {
      "type": "integer",
      "min": 1
    },
    "PutRecordInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "Data",
        "PartitionKey"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream to put the data record into.</p>"
        },
        "Data": {
          "shape": "Data",
          "documentation": "<p>The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MiB).</p>"
        },
        "PartitionKey": {
          "shape": "PartitionKey",
          "documentation": "<p>Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.</p>"
        },
        "ExplicitHashKey": {
          "shape": "HashKey",
          "documentation": "<p>The hash value used to explicitly determine the shard the data record is assigned to by overriding the partition key hash.</p>"
        },
        "SequenceNumberForOrdering": {
          "shape": "SequenceNumber",
          "documentation": "<p>Guarantees strictly increasing sequence numbers, for puts from the same client and to the same partition key. Usage: set the <code>SequenceNumberForOrdering</code> of record <i>n</i> to the sequence number of record <i>n-1</i> (as returned in the result when putting record <i>n-1</i>). If this parameter is not set, records are coarsely ordered based on arrival time.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>PutRecord</code>.</p>"
    },
    "PutRecordOutput": {
      "type": "structure",
      "required": [
        "ShardId",
        "SequenceNumber"
      ],
      "members": {
        "ShardId": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID of the shard where the data record was placed.</p>"
        },
        "SequenceNumber": {
          "shape": "SequenceNumber",
          "documentation": "<p>The sequence number identifier that was assigned to the put data record. The sequence number for the record is unique across all records in the stream. A sequence number is the identifier associated with every record put into the stream.</p>"
        },
        "EncryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The encryption type to use on the record. This parameter can be one of the following values:</p> <ul> <li> <p> <code>NONE</code>: Do not encrypt the records in the stream.</p> </li> <li> <p> <code>KMS</code>: Use server-side encryption on the records in the stream using a customer-managed AWS KMS key.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the output for <code>PutRecord</code>.</p>"
    },
    "PutRecordsInput": {
      "type": "structure",
      "required": [
        "Records",
        "StreamName"
      ],
      "members": {
        "Records": {
          "shape": "PutRecordsRequestEntryList",
          "documentation": "<p>The records associated with the request.</p>"
        },
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The stream name associated with the request.</p>"
        }
      },
      "documentation": "<p>A <code>PutRecords</code> request.</p>"
    },
    "PutRecordsOutput": {
      "type": "structure",
      "required": [
        "Records"
      ],
      "members": {
        "FailedRecordCount": {
          "shape": "PositiveIntegerObject",
          "documentation": "<p>The number of unsuccessfully processed records in a <code>PutRecords</code> request.</p>"
        },
        "Records": {
          "shape": "PutRecordsResultEntryList",
          "documentation": "<p>An array of successfully and unsuccessfully processed record results, correlated with the request by natural ordering. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to a stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>"
        },
        "EncryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The encryption type used on the records. This parameter can be one of the following values:</p> <ul> <li> <p> <code>NONE</code>: Do not encrypt the records.</p> </li> <li> <p> <code>KMS</code>: Use server-side encryption on the records using a customer-managed AWS KMS key.</p> </li> </ul>"
        }
      },
      "documentation": "<p> <code>PutRecords</code> results.</p>"
    },
    "PutRecordsRequestEntry": {
      "type": "structure",
      "required": [
        "Data",
        "PartitionKey"
      ],
      "members": {
        "Data": {
          "shape": "Data",
          "documentation": "<p>The data blob to put into the record, which is base64-encoded when the blob is serialized. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MiB).</p>"
        },
        "ExplicitHashKey": {
          "shape": "HashKey",
          "documentation": "<p>The hash value used to determine explicitly the shard that the data record is assigned to by overriding the partition key hash.</p>"
        },
        "PartitionKey": {
          "shape": "PartitionKey",
          "documentation": "<p>Determines which shard in the stream the data record is assigned to. Partition keys are Unicode strings with a maximum length limit of 256 characters for each key. Amazon Kinesis Data Streams uses the partition key as input to a hash function that maps the partition key and associated data to a specific shard. Specifically, an MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream.</p>"
        }
      },
      "documentation": "<p>Represents the output for <code>PutRecords</code>.</p>"
    },
    "PutRecordsRequestEntryList": {
      "type": "list",
      "member": {
        "shape": "PutRecordsRequestEntry"
      },
      "max": 500,
      "min": 1
    },
    "PutRecordsResultEntry": {
      "type": "structure",
      "members": {
        "SequenceNumber": {
          "shape": "SequenceNumber",
          "documentation": "<p>The sequence number for an individual record result.</p>"
        },
        "ShardId": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID for an individual record result.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code for an individual record result. <code>ErrorCodes</code> can be either <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message for an individual record result. An <code>ErrorCode</code> value of <code>ProvisionedThroughputExceededException</code> has an error message that includes the account ID, stream name, and shard ID. An <code>ErrorCode</code> value of <code>InternalFailure</code> has the error message <code>\"Internal Service Failure\"</code>.</p>"
        }
      },
      "documentation": "<p>Represents the result of an individual record from a <code>PutRecords</code> request. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to the stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>"
    },
    "PutRecordsResultEntryList": {
      "type": "list",
      "member": {
        "shape": "PutRecordsResultEntry"
      },
      "max": 500,
      "min": 1
    },
    "Record": {
      "type": "structure",
      "required": [
        "SequenceNumber",
        "Data",
        "PartitionKey"
      ],
      "members": {
        "SequenceNumber": {
          "shape": "SequenceNumber",
          "documentation": "<p>The unique identifier of the record within its shard.</p>"
        },
        "ApproximateArrivalTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The approximate time that the record was inserted into the stream.</p>"
        },
        "Data": {
          "shape": "Data",
          "documentation": "<p>The data blob. The data in the blob is both opaque and immutable to Kinesis Data Streams, which does not inspect, interpret, or change the data in the blob in any way. When the data blob (the payload before base64-encoding) is added to the partition key size, the total size must not exceed the maximum record size (1 MiB).</p>"
        },
        "PartitionKey": {
          "shape": "PartitionKey",
          "documentation": "<p>Identifies which shard in the stream the data record is assigned to.</p>"
        },
        "EncryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The encryption type used on the record. This parameter can be one of the following values:</p> <ul> <li> <p> <code>NONE</code>: Do not encrypt the records in the stream.</p> </li> <li> <p> <code>KMS</code>: Use server-side encryption on the records in the stream using a customer-managed AWS KMS key.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The unit of data of the Kinesis data stream, which is composed of a sequence number, a partition key, and a data blob.</p>"
    },
    "RecordList": {
      "type": "list",
      "member": {
        "shape": "Record"
      }
    },
    "RegisterStreamConsumerInput": {
      "type": "structure",
      "required": [
        "StreamARN",
        "ConsumerName"
      ],
      "members": {
        "StreamARN": {
          "shape": "StreamARN",
          "documentation": "<p>The ARN of the Kinesis data stream that you want to register the consumer with. For more info, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p>"
        },
        "ConsumerName": {
          "shape": "ConsumerName",
          "documentation": "<p>For a given Kinesis data stream, each consumer must have a unique name. However, consumer names don't have to be unique across data streams.</p>"
        }
      }
    },
    "RegisterStreamConsumerOutput": {
      "type": "structure",
      "required": [
        "Consumer"
      ],
      "members": {
        "Consumer": {
          "shape": "Consumer",
          "documentation": "<p>An object that represents the details of the consumer you registered. When you register a consumer, it gets an ARN that is generated by Kinesis Data Streams.</p>"
        }
      }
    },
    "RemoveTagsFromStreamInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "TagKeys"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of tag keys. Each corresponding tag is removed from the stream.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>RemoveTagsFromStream</code>.</p>"
    },
    "RetentionPeriodHours": {
      "type": "integer"
    },
    "ScalingType": {
      "type": "string",
      "enum": [
        "UNIFORM_SCALING"
      ]
    },
    "SequenceNumber": {
      "type": "string",
      "pattern": "0|([1-9]\\d{0,128})"
    },
    "SequenceNumberRange": {
      "type": "structure",
      "required": [
        "StartingSequenceNumber"
      ],
      "members": {
        "StartingSequenceNumber": {
          "shape": "SequenceNumber",
          "documentation": "<p>The starting sequence number for the range.</p>"
        },
        "EndingSequenceNumber": {
          "shape": "SequenceNumber",
          "documentation": "<p>The ending sequence number for the range. Shards that are in the OPEN state have an ending sequence number of <code>null</code>.</p>"
        }
      },
      "documentation": "<p>The range of possible sequence numbers for the shard.</p>"
    },
    "Shard": {
      "type": "structure",
      "required": [
        "ShardId",
        "HashKeyRange",
        "SequenceNumberRange"
      ],
      "members": {
        "ShardId": {
          "shape": "ShardId",
          "documentation": "<p>The unique identifier of the shard within the stream.</p>"
        },
        "ParentShardId": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID of the shard's parent.</p>"
        },
        "AdjacentParentShardId": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID of the shard adjacent to the shard's parent.</p>"
        },
        "HashKeyRange": {
          "shape": "HashKeyRange",
          "documentation": "<p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>"
        },
        "SequenceNumberRange": {
          "shape": "SequenceNumberRange",
          "documentation": "<p>The range of possible sequence numbers for the shard.</p>"
        }
      },
      "documentation": "<p>A uniquely identified group of data records in a Kinesis data stream.</p>"
    },
    "ShardCountObject": {
      "type": "integer",
      "max": 1000000,
      "min": 0
    },
    "ShardFilter": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "Type": {
          "shape": "ShardFilterType"
        },
        "ShardId": {
          "shape": "ShardId"
        },
        "Timestamp": {
          "shape": "Timestamp"
        }
      }
    },
    "ShardFilterType": {
      "type": "string",
      "enum": [
        "AFTER_SHARD_ID",
        "AT_TRIM_HORIZON",
        "FROM_TRIM_HORIZON",
        "AT_LATEST",
        "AT_TIMESTAMP",
        "FROM_TIMESTAMP"
      ]
    },
    "ShardId": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "ShardIdList": {
      "type": "list",
      "member": {
        "shape": "ShardId"
      }
    },
    "ShardIterator": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "ShardIteratorType": {
      "type": "string",
      "enum": [
        "AT_SEQUENCE_NUMBER",
        "AFTER_SEQUENCE_NUMBER",
        "TRIM_HORIZON",
        "LATEST",
        "AT_TIMESTAMP"
      ]
    },
    "ShardList": {
      "type": "list",
      "member": {
        "shape": "Shard"
      }
    },
    "SplitShardInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "ShardToSplit",
        "NewStartingHashKey"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream for the shard split.</p>"
        },
        "ShardToSplit": {
          "shape": "ShardId",
          "documentation": "<p>The shard ID of the shard to split.</p>"
        },
        "NewStartingHashKey": {
          "shape": "HashKey",
          "documentation": "<p>A hash key value for the starting hash key of one of the child shards created by the split. The hash key range for a given shard constitutes a set of ordered contiguous positive integers. The value for <code>NewStartingHashKey</code> must be in the range of hash keys being mapped into the shard. The <code>NewStartingHashKey</code> hash key value and all higher hash key values in hash key range are distributed to one of the child shards. All the lower hash key values in the range are distributed to the other child shard.</p>"
        }
      },
      "documentation": "<p>Represents the input for <code>SplitShard</code>.</p>"
    },
    "StartStreamEncryptionInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "EncryptionType",
        "KeyId"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream for which to start encrypting records.</p>"
        },
        "EncryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The encryption type to use. The only valid value is <code>KMS</code>.</p>"
        },
        "KeyId": {
          "shape": "KeyId",
          "documentation": "<p>The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified Amazon Resource Name (ARN) to either an alias or a key, or an alias name prefixed by \"alias/\".You can also use a master key owned by Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p> <ul> <li> <p>Key ARN example: <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias ARN example: <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code> </p> </li> <li> <p>Globally unique key ID example: <code>12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias name example: <code>alias/MyAliasName</code> </p> </li> <li> <p>Master key owned by Kinesis Data Streams: <code>alias/aws/kinesis</code> </p> </li> </ul>"
        }
      }
    },
    "StopStreamEncryptionInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "EncryptionType",
        "KeyId"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream on which to stop encrypting records.</p>"
        },
        "EncryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The encryption type. The only valid value is <code>KMS</code>.</p>"
        },
        "KeyId": {
          "shape": "KeyId",
          "documentation": "<p>The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified Amazon Resource Name (ARN) to either an alias or a key, or an alias name prefixed by \"alias/\".You can also use a master key owned by Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p> <ul> <li> <p>Key ARN example: <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias ARN example: <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code> </p> </li> <li> <p>Globally unique key ID example: <code>12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias name example: <code>alias/MyAliasName</code> </p> </li> <li> <p>Master key owned by Kinesis Data Streams: <code>alias/aws/kinesis</code> </p> </li> </ul>"
        }
      }
    },
    "StreamARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:aws.*:kinesis:.*:\\d{12}:stream/.+"
    },
    "StreamDescription": {
      "type": "structure",
      "required": [
        "StreamName",
        "StreamARN",
        "StreamStatus",
        "Shards",
        "HasMoreShards",
        "RetentionPeriodHours",
        "StreamCreationTimestamp",
        "EnhancedMonitoring"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream being described.</p>"
        },
        "StreamARN": {
          "shape": "StreamARN",
          "documentation": "<p>The Amazon Resource Name (ARN) for the stream being described.</p>"
        },
        "StreamStatus": {
          "shape": "StreamStatus",
          "documentation": "<p>The current status of the stream being described. The stream status is one of the following states:</p> <ul> <li> <p> <code>CREATING</code> - The stream is being created. Kinesis Data Streams immediately returns and sets <code>StreamStatus</code> to <code>CREATING</code>.</p> </li> <li> <p> <code>DELETING</code> - The stream is being deleted. The specified stream is in the <code>DELETING</code> state until Kinesis Data Streams completes the deletion.</p> </li> <li> <p> <code>ACTIVE</code> - The stream exists and is ready for read and write operations or deletion. You should perform read and write operations only on an <code>ACTIVE</code> stream.</p> </li> <li> <p> <code>UPDATING</code> - Shards in the stream are being merged or split. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state.</p> </li> </ul>"
        },
        "Shards": {
          "shape": "ShardList",
          "documentation": "<p>The shards that comprise the stream.</p>"
        },
        "HasMoreShards": {
          "shape": "BooleanObject",
          "documentation": "<p>If set to <code>true</code>, more shards in the stream are available to describe.</p>"
        },
        "RetentionPeriodHours": {
          "shape": "RetentionPeriodHours",
          "documentation": "<p>The current retention period, in hours. Minimum value of 24. Maximum value of 168.</p>"
        },
        "StreamCreationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The approximate time that the stream was created.</p>"
        },
        "EnhancedMonitoring": {
          "shape": "EnhancedMonitoringList",
          "documentation": "<p>Represents the current enhanced monitoring settings of the stream.</p>"
        },
        "EncryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The server-side encryption type used on the stream. This parameter can be one of the following values:</p> <ul> <li> <p> <code>NONE</code>: Do not encrypt the records in the stream.</p> </li> <li> <p> <code>KMS</code>: Use server-side encryption on the records in the stream using a customer-managed AWS KMS key.</p> </li> </ul>"
        },
        "KeyId": {
          "shape": "KeyId",
          "documentation": "<p>The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by \"alias/\".You can also use a master key owned by Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p> <ul> <li> <p>Key ARN example: <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias ARN example: <code>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code> </p> </li> <li> <p>Globally unique key ID example: <code>12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias name example: <code>alias/MyAliasName</code> </p> </li> <li> <p>Master key owned by Kinesis Data Streams: <code>alias/aws/kinesis</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p>Represents the output for <a>DescribeStream</a>.</p>"
    },
    "StreamDescriptionSummary": {
      "type": "structure",
      "required": [
        "StreamName",
        "StreamARN",
        "StreamStatus",
        "RetentionPeriodHours",
        "StreamCreationTimestamp",
        "EnhancedMonitoring",
        "OpenShardCount"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream being described.</p>"
        },
        "StreamARN": {
          "shape": "StreamARN",
          "documentation": "<p>The Amazon Resource Name (ARN) for the stream being described.</p>"
        },
        "StreamStatus": {
          "shape": "StreamStatus",
          "documentation": "<p>The current status of the stream being described. The stream status is one of the following states:</p> <ul> <li> <p> <code>CREATING</code> - The stream is being created. Kinesis Data Streams immediately returns and sets <code>StreamStatus</code> to <code>CREATING</code>.</p> </li> <li> <p> <code>DELETING</code> - The stream is being deleted. The specified stream is in the <code>DELETING</code> state until Kinesis Data Streams completes the deletion.</p> </li> <li> <p> <code>ACTIVE</code> - The stream exists and is ready for read and write operations or deletion. You should perform read and write operations only on an <code>ACTIVE</code> stream.</p> </li> <li> <p> <code>UPDATING</code> - Shards in the stream are being merged or split. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state.</p> </li> </ul>"
        },
        "RetentionPeriodHours": {
          "shape": "RetentionPeriodHours",
          "documentation": "<p>The current retention period, in hours.</p>"
        },
        "StreamCreationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The approximate time that the stream was created.</p>"
        },
        "EnhancedMonitoring": {
          "shape": "EnhancedMonitoringList",
          "documentation": "<p>Represents the current enhanced monitoring settings of the stream.</p>"
        },
        "EncryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The encryption type used. This value is one of the following:</p> <ul> <li> <p> <code>KMS</code> </p> </li> <li> <p> <code>NONE</code> </p> </li> </ul>"
        },
        "KeyId": {
          "shape": "KeyId",
          "documentation": "<p>The GUID for the customer-managed AWS KMS key to use for encryption. This value can be a globally unique identifier, a fully specified ARN to either an alias or a key, or an alias name prefixed by \"alias/\".You can also use a master key owned by Kinesis Data Streams by specifying the alias <code>aws/kinesis</code>.</p> <ul> <li> <p>Key ARN example: <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias ARN example: <code> arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</code> </p> </li> <li> <p>Globally unique key ID example: <code>12345678-1234-1234-1234-123456789012</code> </p> </li> <li> <p>Alias name example: <code>alias/MyAliasName</code> </p> </li> <li> <p>Master key owned by Kinesis Data Streams: <code>alias/aws/kinesis</code> </p> </li> </ul>"
        },
        "OpenShardCount": {
          "shape": "ShardCountObject",
          "documentation": "<p>The number of open shards in the stream.</p>"
        },
        "ConsumerCount": {
          "shape": "ConsumerCountObject",
          "documentation": "<p>The number of enhanced fan-out consumers registered with the stream.</p>"
        }
      },
      "documentation": "<p>Represents the output for <a>DescribeStreamSummary</a> </p>"
    },
    "StreamName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "StreamNameList": {
      "type": "list",
      "member": {
        "shape": "StreamName"
      }
    },
    "StreamStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "DELETING",
        "ACTIVE",
        "UPDATING"
      ]
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>A unique identifier for the tag. Maximum length: 128 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>An optional string, typically used to describe or define the tag. Maximum length: 256 characters. Valid characters: Unicode letters, digits, white space, _ . / = + - % @</p>"
        }
      },
      "documentation": "<p>Metadata assigned to the stream, consisting of a key-value pair.</p>"
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
      "max": 50,
      "min": 1
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 0
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 200,
      "min": 1
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UpdateShardCountInput": {
      "type": "structure",
      "required": [
        "StreamName",
        "TargetShardCount",
        "ScalingType"
      ],
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream.</p>"
        },
        "TargetShardCount": {
          "shape": "PositiveIntegerObject",
          "documentation": "<p>The new number of shards. This value has the following default limits. By default, you cannot do the following: </p> <ul> <li> <p>Set this value to more than double your current shard count for a stream.</p> </li> <li> <p>Set this value below half your current shard count for a stream.</p> </li> <li> <p>Set this value to more than 500 shards in a stream (the default limit for shard count per stream is 500 per account per region), unless you request a limit increase.</p> </li> <li> <p>Scale a stream with more than 500 shards down unless you set this value to less than 500 shards.</p> </li> </ul>"
        },
        "ScalingType": {
          "shape": "ScalingType",
          "documentation": "<p>The scaling type. Uniform scaling creates shards of equal size.</p>"
        }
      }
    },
    "UpdateShardCountOutput": {
      "type": "structure",
      "members": {
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name of the stream.</p>"
        },
        "CurrentShardCount": {
          "shape": "PositiveIntegerObject",
          "documentation": "<p>The current number of shards.</p>"
        },
        "TargetShardCount": {
          "shape": "PositiveIntegerObject",
          "documentation": "<p>The updated number of shards.</p>"
        }
      }
    }
  },
  "documentation": "<fullname>Amazon Kinesis Data Streams Service API Reference</fullname> <p>Amazon Kinesis Data Streams is a managed service that scales elastically for real-time processing of streaming big data.</p>"
}
]===]))