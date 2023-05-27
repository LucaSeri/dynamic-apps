local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-01-02",
    "endpointPrefix": "qldb",
    "jsonVersion": "1.0",
    "protocol": "rest-json",
    "serviceAbbreviation": "QLDB",
    "serviceFullName": "Amazon QLDB",
    "serviceId": "QLDB",
    "signatureVersion": "v4",
    "signingName": "qldb",
    "uid": "qldb-2019-01-02"
  },
  "operations": {
    "CancelJournalKinesisStream": {
      "name": "CancelJournalKinesisStream",
      "http": {
        "method": "DELETE",
        "requestUri": "/ledgers/{name}/journal-kinesis-streams/{streamId}"
      },
      "input": {
        "shape": "CancelJournalKinesisStreamRequest"
      },
      "output": {
        "shape": "CancelJournalKinesisStreamResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current status must be <code>ACTIVE</code>.</p> <p>You can't restart a stream after you cancel it. Canceled QLDB stream resources are subject to a 7-day retention period, so they are automatically deleted after this limit expires.</p>"
    },
    "CreateLedger": {
      "name": "CreateLedger",
      "http": {
        "method": "POST",
        "requestUri": "/ledgers"
      },
      "input": {
        "shape": "CreateLedgerRequest"
      },
      "output": {
        "shape": "CreateLedgerResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Creates a new ledger in your AWS account.</p>"
    },
    "DeleteLedger": {
      "name": "DeleteLedger",
      "http": {
        "method": "DELETE",
        "requestUri": "/ledgers/{name}"
      },
      "input": {
        "shape": "DeleteLedgerRequest"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Deletes a ledger and all of its contents. This action is irreversible.</p> <p>If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB console disables deletion protection for you when you use it to delete a ledger.</p>"
    },
    "DescribeJournalKinesisStream": {
      "name": "DescribeJournalKinesisStream",
      "http": {
        "method": "GET",
        "requestUri": "/ledgers/{name}/journal-kinesis-streams/{streamId}"
      },
      "input": {
        "shape": "DescribeJournalKinesisStreamRequest"
      },
      "output": {
        "shape": "DescribeJournalKinesisStreamResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Returns detailed information about a given Amazon QLDB journal stream. The output includes the Amazon Resource Name (ARN), stream name, current status, creation time, and the parameters of your original stream creation request.</p>"
    },
    "DescribeJournalS3Export": {
      "name": "DescribeJournalS3Export",
      "http": {
        "method": "GET",
        "requestUri": "/ledgers/{name}/journal-s3-exports/{exportId}"
      },
      "input": {
        "shape": "DescribeJournalS3ExportRequest"
      },
      "output": {
        "shape": "DescribeJournalS3ExportResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters.</p> <p>This action does not return any expired export jobs. For more information, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration\">Export Job Expiration</a> in the <i>Amazon QLDB Developer Guide</i>.</p> <p>If the export job with the given <code>ExportId</code> doesn't exist, then throws <code>ResourceNotFoundException</code>.</p> <p>If the ledger with the given <code>Name</code> doesn't exist, then throws <code>ResourceNotFoundException</code>.</p>"
    },
    "DescribeLedger": {
      "name": "DescribeLedger",
      "http": {
        "method": "GET",
        "requestUri": "/ledgers/{name}"
      },
      "input": {
        "shape": "DescribeLedgerRequest"
      },
      "output": {
        "shape": "DescribeLedgerResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns information about a ledger, including its state and when it was created.</p>"
    },
    "ExportJournalToS3": {
      "name": "ExportJournalToS3",
      "http": {
        "method": "POST",
        "requestUri": "/ledgers/{name}/journal-s3-exports"
      },
      "input": {
        "shape": "ExportJournalToS3Request"
      },
      "output": {
        "shape": "ExportJournalToS3Response"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. The data is written as files in Amazon Ion format.</p> <p>If the ledger with the given <code>Name</code> doesn't exist, then throws <code>ResourceNotFoundException</code>.</p> <p>If the ledger with the given <code>Name</code> is in <code>CREATING</code> status, then throws <code>ResourcePreconditionNotMetException</code>.</p> <p>You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw <code>LimitExceededException</code>.</p>"
    },
    "GetBlock": {
      "name": "GetBlock",
      "http": {
        "method": "POST",
        "requestUri": "/ledgers/{name}/block"
      },
      "input": {
        "shape": "GetBlockRequest"
      },
      "output": {
        "shape": "GetBlockResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Returns a block object at a specified address in a journal. Also returns a proof of the specified block for verification if <code>DigestTipAddress</code> is provided.</p> <p>For information about the data contents in a block, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html\">Journal contents</a> in the <i>Amazon QLDB Developer Guide</i>.</p> <p>If the specified ledger doesn't exist or is in <code>DELETING</code> status, then throws <code>ResourceNotFoundException</code>.</p> <p>If the specified ledger is in <code>CREATING</code> status, then throws <code>ResourcePreconditionNotMetException</code>.</p> <p>If no block exists with the specified address, then throws <code>InvalidParameterException</code>.</p>"
    },
    "GetDigest": {
      "name": "GetDigest",
      "http": {
        "method": "POST",
        "requestUri": "/ledgers/{name}/digest"
      },
      "input": {
        "shape": "GetDigestRequest"
      },
      "output": {
        "shape": "GetDigestResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.</p>"
    },
    "GetRevision": {
      "name": "GetRevision",
      "http": {
        "method": "POST",
        "requestUri": "/ledgers/{name}/revision"
      },
      "input": {
        "shape": "GetRevisionRequest"
      },
      "output": {
        "shape": "GetRevisionResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if <code>DigestTipAddress</code> is provided.</p>"
    },
    "ListJournalKinesisStreamsForLedger": {
      "name": "ListJournalKinesisStreamsForLedger",
      "http": {
        "method": "GET",
        "requestUri": "/ledgers/{name}/journal-kinesis-streams"
      },
      "input": {
        "shape": "ListJournalKinesisStreamsForLedgerRequest"
      },
      "output": {
        "shape": "ListJournalKinesisStreamsForLedgerResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by <code>DescribeJournalKinesisStream</code>.</p> <p>This action returns a maximum of <code>MaxResults</code> items. It is paginated so that you can retrieve all the items by calling <code>ListJournalKinesisStreamsForLedger</code> multiple times.</p>"
    },
    "ListJournalS3Exports": {
      "name": "ListJournalS3Exports",
      "http": {
        "method": "GET",
        "requestUri": "/journal-s3-exports"
      },
      "input": {
        "shape": "ListJournalS3ExportsRequest"
      },
      "output": {
        "shape": "ListJournalS3ExportsResponse"
      },
      "documentation": "<p>Returns an array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region.</p> <p>This action returns a maximum of <code>MaxResults</code> items, and is paginated so that you can retrieve all the items by calling <code>ListJournalS3Exports</code> multiple times.</p> <p>This action does not return any expired export jobs. For more information, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration\">Export Job Expiration</a> in the <i>Amazon QLDB Developer Guide</i>.</p>"
    },
    "ListJournalS3ExportsForLedger": {
      "name": "ListJournalS3ExportsForLedger",
      "http": {
        "method": "GET",
        "requestUri": "/ledgers/{name}/journal-s3-exports"
      },
      "input": {
        "shape": "ListJournalS3ExportsForLedgerRequest"
      },
      "output": {
        "shape": "ListJournalS3ExportsForLedgerResponse"
      },
      "documentation": "<p>Returns an array of journal export job descriptions for a specified ledger.</p> <p>This action returns a maximum of <code>MaxResults</code> items, and is paginated so that you can retrieve all the items by calling <code>ListJournalS3ExportsForLedger</code> multiple times.</p> <p>This action does not return any expired export jobs. For more information, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration\">Export Job Expiration</a> in the <i>Amazon QLDB Developer Guide</i>.</p>"
    },
    "ListLedgers": {
      "name": "ListLedgers",
      "http": {
        "method": "GET",
        "requestUri": "/ledgers"
      },
      "input": {
        "shape": "ListLedgersRequest"
      },
      "output": {
        "shape": "ListLedgersResponse"
      },
      "documentation": "<p>Returns an array of ledger summaries that are associated with the current AWS account and Region.</p> <p>This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling <code>ListLedgers</code> multiple times.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns all tags for a specified Amazon QLDB resource.</p>"
    },
    "StreamJournalToKinesis": {
      "name": "StreamJournalToKinesis",
      "http": {
        "method": "POST",
        "requestUri": "/ledgers/{name}/journal-kinesis-streams"
      },
      "input": {
        "shape": "StreamJournalToKinesisRequest"
      },
      "output": {
        "shape": "StreamJournalToKinesisResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourcePreconditionNotMetException"
        }
      ],
      "documentation": "<p>Creates a journal stream for a given Amazon QLDB ledger. The stream captures every document revision that is committed to the ledger's journal and delivers the data to a specified Amazon Kinesis Data Streams resource.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Adds one or more tags to a specified Amazon QLDB resource.</p> <p>A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.</p>"
    },
    "UpdateLedger": {
      "name": "UpdateLedger",
      "http": {
        "method": "PATCH",
        "requestUri": "/ledgers/{name}"
      },
      "input": {
        "shape": "UpdateLedgerRequest"
      },
      "output": {
        "shape": "UpdateLedgerResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates properties on a ledger.</p>"
    }
  },
  "shapes": {
    "Arn": {
      "type": "string",
      "max": 1600,
      "min": 20
    },
    "Boolean": {
      "type": "boolean"
    },
    "CancelJournalKinesisStreamRequest": {
      "type": "structure",
      "required": [
        "LedgerName",
        "StreamId"
      ],
      "members": {
        "LedgerName": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "StreamId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>",
          "location": "uri",
          "locationName": "streamId"
        }
      }
    },
    "CancelJournalKinesisStreamResponse": {
      "type": "structure",
      "members": {
        "StreamId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>"
        }
      }
    },
    "CreateLedgerRequest": {
      "type": "structure",
      "required": [
        "Name",
        "PermissionsMode"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger that you want to create. The name must be unique among all of your ledgers in the current AWS Region.</p> <p>Naming constraints for ledger names are defined in <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming\">Quotas in Amazon QLDB</a> in the <i>Amazon QLDB Developer Guide</i>.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The key-value pairs to add as tags to the ledger that you want to create. Tag keys are case sensitive. Tag values are case sensitive and can be null.</p>"
        },
        "PermissionsMode": {
          "shape": "PermissionsMode",
          "documentation": "<p>The permissions mode to assign to the ledger that you want to create.</p>"
        },
        "DeletionProtection": {
          "shape": "DeletionProtection",
          "documentation": "<p>The flag that prevents a ledger from being deleted by any user. If not provided on ledger creation, this feature is enabled (<code>true</code>) by default.</p> <p>If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB console disables deletion protection for you when you use it to delete a ledger.</p>"
        }
      }
    },
    "CreateLedgerResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the ledger.</p>"
        },
        "State": {
          "shape": "LedgerState",
          "documentation": "<p>The current status of the ledger.</p>"
        },
        "CreationDateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"
        },
        "DeletionProtection": {
          "shape": "DeletionProtection",
          "documentation": "<p>The flag that prevents a ledger from being deleted by any user. If not provided on ledger creation, this feature is enabled (<code>true</code>) by default.</p> <p>If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB console disables deletion protection for you when you use it to delete a ledger.</p>"
        }
      }
    },
    "DeleteLedgerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger that you want to delete.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DeletionProtection": {
      "type": "boolean"
    },
    "DescribeJournalKinesisStreamRequest": {
      "type": "structure",
      "required": [
        "LedgerName",
        "StreamId"
      ],
      "members": {
        "LedgerName": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "StreamId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>",
          "location": "uri",
          "locationName": "streamId"
        }
      }
    },
    "DescribeJournalKinesisStreamResponse": {
      "type": "structure",
      "members": {
        "Stream": {
          "shape": "JournalKinesisStreamDescription",
          "documentation": "<p>Information about the QLDB journal stream returned by a <code>DescribeJournalS3Export</code> request.</p>"
        }
      }
    },
    "DescribeJournalS3ExportRequest": {
      "type": "structure",
      "required": [
        "Name",
        "ExportId"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "ExportId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID of the journal export job that you want to describe.</p>",
          "location": "uri",
          "locationName": "exportId"
        }
      }
    },
    "DescribeJournalS3ExportResponse": {
      "type": "structure",
      "required": [
        "ExportDescription"
      ],
      "members": {
        "ExportDescription": {
          "shape": "JournalS3ExportDescription",
          "documentation": "<p>Information about the journal export job returned by a <code>DescribeJournalS3Export</code> request.</p>"
        }
      }
    },
    "DescribeLedgerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger that you want to describe.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DescribeLedgerResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the ledger.</p>"
        },
        "State": {
          "shape": "LedgerState",
          "documentation": "<p>The current status of the ledger.</p>"
        },
        "CreationDateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"
        },
        "DeletionProtection": {
          "shape": "DeletionProtection",
          "documentation": "<p>The flag that prevents a ledger from being deleted by any user. If not provided on ledger creation, this feature is enabled (<code>true</code>) by default.</p> <p>If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB console disables deletion protection for you when you use it to delete a ledger.</p>"
        }
      }
    },
    "Digest": {
      "type": "blob",
      "max": 32,
      "min": 32
    },
    "ErrorCause": {
      "type": "string",
      "enum": [
        "KINESIS_STREAM_NOT_FOUND",
        "IAM_PERMISSION_REVOKED"
      ]
    },
    "ExportJournalToS3Request": {
      "type": "structure",
      "required": [
        "Name",
        "InclusiveStartTime",
        "ExclusiveEndTime",
        "S3ExportConfiguration",
        "RoleArn"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "InclusiveStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The inclusive start date and time for the range of journal contents that you want to export.</p> <p>The <code>InclusiveStartTime</code> must be in <code>ISO 8601</code> date and time format and in Universal Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code> </p> <p>The <code>InclusiveStartTime</code> must be before <code>ExclusiveEndTime</code>.</p> <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's <code>CreationDateTime</code>, Amazon QLDB defaults it to the ledger's <code>CreationDateTime</code>.</p>"
        },
        "ExclusiveEndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The exclusive end date and time for the range of journal contents that you want to export.</p> <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format and in Universal Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code> </p> <p>The <code>ExclusiveEndTime</code> must be less than or equal to the current UTC date and time.</p>"
        },
        "S3ExportConfiguration": {
          "shape": "S3ExportConfiguration",
          "documentation": "<p>The configuration settings of the Amazon S3 bucket destination for your export request.</p>"
        },
        "RoleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal export job to do the following:</p> <ul> <li> <p>Write objects into your Amazon Simple Storage Service (Amazon S3) bucket.</p> </li> <li> <p>(Optional) Use your customer master key (CMK) in AWS Key Management Service (AWS KMS) for server-side encryption of your exported data.</p> </li> </ul>"
        }
      }
    },
    "ExportJournalToS3Response": {
      "type": "structure",
      "required": [
        "ExportId"
      ],
      "members": {
        "ExportId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID that QLDB assigns to each journal export job.</p> <p>To describe your export request and check the status of the job, you can use <code>ExportId</code> to call <code>DescribeJournalS3Export</code>.</p>"
        }
      }
    },
    "ExportStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "COMPLETED",
        "CANCELLED"
      ]
    },
    "GetBlockRequest": {
      "type": "structure",
      "required": [
        "Name",
        "BlockAddress"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "BlockAddress": {
          "shape": "ValueHolder",
          "documentation": "<p>The location of the block that you want to request. An address is an Amazon Ion structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p> <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}</code> </p>"
        },
        "DigestTipAddress": {
          "shape": "ValueHolder",
          "documentation": "<p>The latest block location covered by the digest for which to request a proof. An address is an Amazon Ion structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p> <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}</code> </p>"
        }
      }
    },
    "GetBlockResponse": {
      "type": "structure",
      "required": [
        "Block"
      ],
      "members": {
        "Block": {
          "shape": "ValueHolder",
          "documentation": "<p>The block data object in Amazon Ion format.</p>"
        },
        "Proof": {
          "shape": "ValueHolder",
          "documentation": "<p>The proof object in Amazon Ion format returned by a <code>GetBlock</code> request. A proof contains the list of hash values required to recalculate the specified digest using a Merkle tree, starting with the specified block.</p>"
        }
      }
    },
    "GetDigestRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "GetDigestResponse": {
      "type": "structure",
      "required": [
        "Digest",
        "DigestTipAddress"
      ],
      "members": {
        "Digest": {
          "shape": "Digest",
          "documentation": "<p>The 256-bit hash value representing the digest returned by a <code>GetDigest</code> request.</p>"
        },
        "DigestTipAddress": {
          "shape": "ValueHolder",
          "documentation": "<p>The latest block location covered by the digest that you requested. An address is an Amazon Ion structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>"
        }
      }
    },
    "GetRevisionRequest": {
      "type": "structure",
      "required": [
        "Name",
        "BlockAddress",
        "DocumentId"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "BlockAddress": {
          "shape": "ValueHolder",
          "documentation": "<p>The block location of the document revision to be verified. An address is an Amazon Ion structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p> <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}</code> </p>"
        },
        "DocumentId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID of the document to be verified.</p>"
        },
        "DigestTipAddress": {
          "shape": "ValueHolder",
          "documentation": "<p>The latest block location covered by the digest for which to request a proof. An address is an Amazon Ion structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p> <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}</code> </p>"
        }
      }
    },
    "GetRevisionResponse": {
      "type": "structure",
      "required": [
        "Revision"
      ],
      "members": {
        "Proof": {
          "shape": "ValueHolder",
          "documentation": "<p>The proof object in Amazon Ion format returned by a <code>GetRevision</code> request. A proof contains the list of hash values that are required to recalculate the specified digest using a Merkle tree, starting with the specified document revision.</p>"
        },
        "Revision": {
          "shape": "ValueHolder",
          "documentation": "<p>The document revision data object in Amazon Ion format.</p>"
        }
      }
    },
    "IonText": {
      "type": "string",
      "max": 1048576,
      "min": 1,
      "sensitive": true
    },
    "JournalKinesisStreamDescription": {
      "type": "structure",
      "required": [
        "LedgerName",
        "RoleArn",
        "StreamId",
        "Status",
        "KinesisConfiguration",
        "StreamName"
      ],
      "members": {
        "LedgerName": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time, in epoch time format, when the QLDB journal stream was created. (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"
        },
        "InclusiveStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The inclusive start date and time from which to start streaming journal data.</p>"
        },
        "ExclusiveEndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The exclusive date and time that specifies when the stream ends. If this parameter is blank, the stream runs indefinitely until you cancel it.</p>"
        },
        "RoleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.</p>"
        },
        "StreamId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the QLDB journal stream.</p>"
        },
        "Status": {
          "shape": "StreamStatus",
          "documentation": "<p>The current state of the QLDB journal stream.</p>"
        },
        "KinesisConfiguration": {
          "shape": "KinesisConfiguration",
          "documentation": "<p>The configuration settings of the Amazon Kinesis Data Streams destination for your QLDB journal stream.</p>"
        },
        "ErrorCause": {
          "shape": "ErrorCause",
          "documentation": "<p>The error message that describes the reason that a stream has a status of <code>IMPAIRED</code> or <code>FAILED</code>. This is not applicable to streams that have other status values.</p>"
        },
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The user-defined name of the QLDB journal stream.</p>"
        }
      },
      "documentation": "<p>The information about an Amazon QLDB journal stream, including the Amazon Resource Name (ARN), stream name, creation time, current status, and the parameters of your original stream creation request.</p>"
    },
    "JournalKinesisStreamDescriptionList": {
      "type": "list",
      "member": {
        "shape": "JournalKinesisStreamDescription"
      }
    },
    "JournalS3ExportDescription": {
      "type": "structure",
      "required": [
        "LedgerName",
        "ExportId",
        "ExportCreationTime",
        "Status",
        "InclusiveStartTime",
        "ExclusiveEndTime",
        "S3ExportConfiguration",
        "RoleArn"
      ],
      "members": {
        "LedgerName": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>"
        },
        "ExportId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID of the journal export job.</p>"
        },
        "ExportCreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time, in epoch time format, when the export job was created. (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"
        },
        "Status": {
          "shape": "ExportStatus",
          "documentation": "<p>The current state of the journal export job.</p>"
        },
        "InclusiveStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The inclusive start date and time for the range of journal contents that are specified in the original export request.</p>"
        },
        "ExclusiveEndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The exclusive end date and time for the range of journal contents that are specified in the original export request.</p>"
        },
        "S3ExportConfiguration": {
          "shape": "S3ExportConfiguration"
        },
        "RoleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal export job to do the following:</p> <ul> <li> <p>Write objects into your Amazon Simple Storage Service (Amazon S3) bucket.</p> </li> <li> <p>(Optional) Use your customer master key (CMK) in AWS Key Management Service (AWS KMS) for server-side encryption of your exported data.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The information about a journal export job, including the ledger name, export ID, when it was created, current status, and its start and end time export parameters.</p>"
    },
    "JournalS3ExportList": {
      "type": "list",
      "member": {
        "shape": "JournalS3ExportDescription"
      }
    },
    "KinesisConfiguration": {
      "type": "structure",
      "required": [
        "StreamArn"
      ],
      "members": {
        "StreamArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Kinesis data stream resource.</p>"
        },
        "AggregationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>Enables QLDB to publish multiple data records in a single Kinesis Data Streams record. To learn more, see <a href=\"https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html\">KPL Key Concepts</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The configuration settings of the Amazon Kinesis Data Streams destination for your Amazon QLDB journal stream.</p>"
    },
    "LedgerList": {
      "type": "list",
      "member": {
        "shape": "LedgerSummary"
      }
    },
    "LedgerName": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$"
    },
    "LedgerState": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "DELETING",
        "DELETED"
      ]
    },
    "LedgerSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>"
        },
        "State": {
          "shape": "LedgerState",
          "documentation": "<p>The current status of the ledger.</p>"
        },
        "CreationDateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"
        }
      },
      "documentation": "<p>Information about a ledger, including its name, state, and when it was created.</p>"
    },
    "ListJournalKinesisStreamsForLedgerRequest": {
      "type": "structure",
      "required": [
        "LedgerName"
      ],
      "members": {
        "LedgerName": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single <code>ListJournalKinesisStreamsForLedger</code> request. (The actual number of results returned might be fewer.)</p>",
          "location": "querystring",
          "locationName": "max_results"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token, indicating that you want to retrieve the next page of results. If you received a value for <code>NextToken</code> in the response from a previous <code>ListJournalKinesisStreamsForLedger</code> call, you should use that value as input here.</p>",
          "location": "querystring",
          "locationName": "next_token"
        }
      }
    },
    "ListJournalKinesisStreamsForLedgerResponse": {
      "type": "structure",
      "members": {
        "Streams": {
          "shape": "JournalKinesisStreamDescriptionList",
          "documentation": "<p>The array of QLDB journal stream descriptors that are associated with the given ledger.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<ul> <li> <p>If <code>NextToken</code> is empty, the last page of results has been processed and there are no more results to be retrieved.</p> </li> <li> <p>If <code>NextToken</code> is <i>not</i> empty, more results are available. To retrieve the next page of results, use the value of <code>NextToken</code> in a subsequent <code>ListJournalKinesisStreamsForLedger</code> call.</p> </li> </ul>"
        }
      }
    },
    "ListJournalS3ExportsForLedgerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single <code>ListJournalS3ExportsForLedger</code> request. (The actual number of results returned might be fewer.)</p>",
          "location": "querystring",
          "locationName": "max_results"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token, indicating that you want to retrieve the next page of results. If you received a value for <code>NextToken</code> in the response from a previous <code>ListJournalS3ExportsForLedger</code> call, then you should use that value as input here.</p>",
          "location": "querystring",
          "locationName": "next_token"
        }
      }
    },
    "ListJournalS3ExportsForLedgerResponse": {
      "type": "structure",
      "members": {
        "JournalS3Exports": {
          "shape": "JournalS3ExportList",
          "documentation": "<p>The array of journal export job descriptions that are associated with the specified ledger.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<ul> <li> <p>If <code>NextToken</code> is empty, then the last page of results has been processed and there are no more results to be retrieved.</p> </li> <li> <p>If <code>NextToken</code> is <i>not</i> empty, then there are more results available. To retrieve the next page of results, use the value of <code>NextToken</code> in a subsequent <code>ListJournalS3ExportsForLedger</code> call.</p> </li> </ul>"
        }
      }
    },
    "ListJournalS3ExportsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single <code>ListJournalS3Exports</code> request. (The actual number of results returned might be fewer.)</p>",
          "location": "querystring",
          "locationName": "max_results"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token, indicating that you want to retrieve the next page of results. If you received a value for <code>NextToken</code> in the response from a previous <code>ListJournalS3Exports</code> call, then you should use that value as input here.</p>",
          "location": "querystring",
          "locationName": "next_token"
        }
      }
    },
    "ListJournalS3ExportsResponse": {
      "type": "structure",
      "members": {
        "JournalS3Exports": {
          "shape": "JournalS3ExportList",
          "documentation": "<p>The array of journal export job descriptions for all ledgers that are associated with the current AWS account and Region.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<ul> <li> <p>If <code>NextToken</code> is empty, then the last page of results has been processed and there are no more results to be retrieved.</p> </li> <li> <p>If <code>NextToken</code> is <i>not</i> empty, then there are more results available. To retrieve the next page of results, use the value of <code>NextToken</code> in a subsequent <code>ListJournalS3Exports</code> call.</p> </li> </ul>"
        }
      }
    },
    "ListLedgersRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single <code>ListLedgers</code> request. (The actual number of results returned might be fewer.)</p>",
          "location": "querystring",
          "locationName": "max_results"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token, indicating that you want to retrieve the next page of results. If you received a value for <code>NextToken</code> in the response from a previous <code>ListLedgers</code> call, then you should use that value as input here.</p>",
          "location": "querystring",
          "locationName": "next_token"
        }
      }
    },
    "ListLedgersResponse": {
      "type": "structure",
      "members": {
        "Ledgers": {
          "shape": "LedgerList",
          "documentation": "<p>The array of ledger summaries that are associated with the current AWS account and Region.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A pagination token, indicating whether there are more results available:</p> <ul> <li> <p>If <code>NextToken</code> is empty, then the last page of results has been processed and there are no more results to be retrieved.</p> </li> <li> <p>If <code>NextToken</code> is <i>not</i> empty, then there are more results available. To retrieve the next page of results, use the value of <code>NextToken</code> in a subsequent <code>ListLedgers</code> call.</p> </li> </ul>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for which you want to list the tags. For example:</p> <p> <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code> </p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags that are currently associated with the specified Amazon QLDB resource.</p>"
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
      "max": 1024,
      "min": 4,
      "pattern": "^[A-Za-z-0-9+/=]+$"
    },
    "PermissionsMode": {
      "type": "string",
      "enum": [
        "ALLOW_ALL"
      ]
    },
    "S3Bucket": {
      "type": "string",
      "max": 255,
      "min": 3,
      "pattern": "^[A-Za-z-0-9-_.]+$"
    },
    "S3EncryptionConfiguration": {
      "type": "structure",
      "required": [
        "ObjectEncryptionType"
      ],
      "members": {
        "ObjectEncryptionType": {
          "shape": "S3ObjectEncryptionType",
          "documentation": "<p>The Amazon S3 object encryption type.</p> <p>To learn more about server-side encryption options in Amazon S3, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html\">Protecting Data Using Server-Side Encryption</a> in the <i>Amazon S3 Developer Guide</i>.</p>"
        },
        "KmsKeyArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for a symmetric customer master key (CMK) in AWS Key Management Service (AWS KMS). Amazon QLDB does not support asymmetric CMKs.</p> <p>You must provide a <code>KmsKeyArn</code> if you specify <code>SSE_KMS</code> as the <code>ObjectEncryptionType</code>.</p> <p> <code>KmsKeyArn</code> is not required if you specify <code>SSE_S3</code> as the <code>ObjectEncryptionType</code>.</p>"
        }
      },
      "documentation": "<p>The encryption settings that are used by a journal export job to write data in an Amazon Simple Storage Service (Amazon S3) bucket.</p>"
    },
    "S3ExportConfiguration": {
      "type": "structure",
      "required": [
        "Bucket",
        "Prefix",
        "EncryptionConfiguration"
      ],
      "members": {
        "Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The Amazon S3 bucket name in which a journal export job writes the journal contents.</p> <p>The bucket name must comply with the Amazon S3 bucket naming conventions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html\">Bucket Restrictions and Limitations</a> in the <i>Amazon S3 Developer Guide</i>.</p>"
        },
        "Prefix": {
          "shape": "S3Prefix",
          "documentation": "<p>The prefix for the Amazon S3 bucket in which a journal export job writes the journal contents.</p> <p>The prefix must comply with Amazon S3 key naming rules and restrictions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html\">Object Key and Metadata</a> in the <i>Amazon S3 Developer Guide</i>.</p> <p>The following are examples of valid <code>Prefix</code> values:</p> <ul> <li> <p> <code>JournalExports-ForMyLedger/Testing/</code> </p> </li> <li> <p> <code>JournalExports</code> </p> </li> <li> <p> <code>My:Tests/</code> </p> </li> </ul>"
        },
        "EncryptionConfiguration": {
          "shape": "S3EncryptionConfiguration",
          "documentation": "<p>The encryption settings that are used by a journal export job to write data in an Amazon S3 bucket.</p>"
        }
      },
      "documentation": "<p>The Amazon Simple Storage Service (Amazon S3) bucket location in which a journal export job writes the journal contents.</p>"
    },
    "S3ObjectEncryptionType": {
      "type": "string",
      "enum": [
        "SSE_KMS",
        "SSE_S3",
        "NO_ENCRYPTION"
      ]
    },
    "S3Prefix": {
      "type": "string",
      "max": 128,
      "min": 0
    },
    "StreamJournalToKinesisRequest": {
      "type": "structure",
      "required": [
        "LedgerName",
        "RoleArn",
        "InclusiveStartTime",
        "KinesisConfiguration",
        "StreamName"
      ],
      "members": {
        "LedgerName": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "RoleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The key-value pairs to add as tags to the stream that you want to create. Tag keys are case sensitive. Tag values are case sensitive and can be null.</p>"
        },
        "InclusiveStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The inclusive start date and time from which to start streaming journal data. This parameter must be in <code>ISO 8601</code> date and time format and in Universal Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code> </p> <p>The <code>InclusiveStartTime</code> cannot be in the future and must be before <code>ExclusiveEndTime</code>.</p> <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's <code>CreationDateTime</code>, QLDB effectively defaults it to the ledger's <code>CreationDateTime</code>.</p>"
        },
        "ExclusiveEndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it.</p> <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format and in Universal Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code> </p>"
        },
        "KinesisConfiguration": {
          "shape": "KinesisConfiguration",
          "documentation": "<p>The configuration settings of the Kinesis Data Streams destination for your stream request.</p>"
        },
        "StreamName": {
          "shape": "StreamName",
          "documentation": "<p>The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.</p> <p>Your stream name must be unique among other <i>active</i> streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming\">Quotas in Amazon QLDB</a> in the <i>Amazon QLDB Developer Guide</i>.</p>"
        }
      }
    },
    "StreamJournalToKinesisResponse": {
      "type": "structure",
      "members": {
        "StreamId": {
          "shape": "UniqueId",
          "documentation": "<p>The unique ID that QLDB assigns to each QLDB journal stream.</p>"
        }
      }
    },
    "StreamName": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$"
    },
    "StreamStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "COMPLETED",
        "CANCELED",
        "FAILED",
        "IMPAIRED"
      ]
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
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) to which you want to add the tags. For example:</p> <p> <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code> </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The key-value pairs to add as tags to the specified QLDB resource. Tag keys are case sensitive. If you specify a key that already exists for the resource, your request fails and returns an error. Tag values are case sensitive and can be null.</p>"
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
    "Tags": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 200,
      "min": 0
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UniqueId": {
      "type": "string",
      "max": 22,
      "min": 22,
      "pattern": "^[A-Za-z-0-9]+$"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) from which you want to remove the tags. For example:</p> <p> <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code> </p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The list of tag keys that you want to remove.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateLedgerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "DeletionProtection": {
          "shape": "DeletionProtection",
          "documentation": "<p>The flag that prevents a ledger from being deleted by any user. If not provided on ledger creation, this feature is enabled (<code>true</code>) by default.</p> <p>If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB console disables deletion protection for you when you use it to delete a ledger.</p>"
        }
      }
    },
    "UpdateLedgerResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "LedgerName",
          "documentation": "<p>The name of the ledger.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the ledger.</p>"
        },
        "State": {
          "shape": "LedgerState",
          "documentation": "<p>The current status of the ledger.</p>"
        },
        "CreationDateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"
        },
        "DeletionProtection": {
          "shape": "DeletionProtection",
          "documentation": "<p>The flag that prevents a ledger from being deleted by any user. If not provided on ledger creation, this feature is enabled (<code>true</code>) by default.</p> <p>If deletion protection is enabled, you must first disable it before you can delete the ledger using the QLDB API or the AWS Command Line Interface (AWS CLI). You can disable it by calling the <code>UpdateLedger</code> operation to set the flag to <code>false</code>. The QLDB console disables deletion protection for you when you use it to delete a ledger.</p>"
        }
      }
    },
    "ValueHolder": {
      "type": "structure",
      "members": {
        "IonText": {
          "shape": "IonText",
          "documentation": "<p>An Amazon Ion plaintext value contained in a <code>ValueHolder</code> structure.</p>"
        }
      },
      "documentation": "<p>A structure that can contain a value in multiple encoding formats.</p>",
      "sensitive": true
    }
  },
  "documentation": "<p>The control plane for Amazon QLDB</p>"
}
]===]))