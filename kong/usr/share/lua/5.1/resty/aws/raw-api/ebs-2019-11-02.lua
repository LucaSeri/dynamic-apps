local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-11-02",
    "endpointPrefix": "ebs",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "Amazon EBS",
    "serviceFullName": "Amazon Elastic Block Store",
    "serviceId": "EBS",
    "signatureVersion": "v4",
    "uid": "ebs-2019-11-02"
  },
  "operations": {
    "CompleteSnapshot": {
      "name": "CompleteSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/snapshots/completion/{snapshotId}",
        "responseCode": 202
      },
      "input": {
        "shape": "CompleteSnapshotRequest"
      },
      "output": {
        "shape": "CompleteSnapshotResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestThrottledException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Seals and completes the snapshot after all of the required blocks of data have been written to it. Completing the snapshot changes the status to <code>completed</code>. You cannot write new blocks to a snapshot after it has been completed.</p>"
    },
    "GetSnapshotBlock": {
      "name": "GetSnapshotBlock",
      "http": {
        "method": "GET",
        "requestUri": "/snapshots/{snapshotId}/blocks/{blockIndex}"
      },
      "input": {
        "shape": "GetSnapshotBlockRequest"
      },
      "output": {
        "shape": "GetSnapshotBlockResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestThrottledException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Returns the data in a block in an Amazon Elastic Block Store snapshot.</p>"
    },
    "ListChangedBlocks": {
      "name": "ListChangedBlocks",
      "http": {
        "method": "GET",
        "requestUri": "/snapshots/{secondSnapshotId}/changedblocks"
      },
      "input": {
        "shape": "ListChangedBlocksRequest"
      },
      "output": {
        "shape": "ListChangedBlocksResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestThrottledException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Returns information about the blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.</p>"
    },
    "ListSnapshotBlocks": {
      "name": "ListSnapshotBlocks",
      "http": {
        "method": "GET",
        "requestUri": "/snapshots/{snapshotId}/blocks"
      },
      "input": {
        "shape": "ListSnapshotBlocksRequest"
      },
      "output": {
        "shape": "ListSnapshotBlocksResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestThrottledException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Returns information about the blocks in an Amazon Elastic Block Store snapshot.</p>"
    },
    "PutSnapshotBlock": {
      "name": "PutSnapshotBlock",
      "http": {
        "method": "PUT",
        "requestUri": "/snapshots/{snapshotId}/blocks/{blockIndex}",
        "responseCode": 201
      },
      "input": {
        "shape": "PutSnapshotBlockRequest"
      },
      "output": {
        "shape": "PutSnapshotBlockResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "RequestThrottledException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Writes a block of data to a snapshot. If the specified block contains data, the existing data is overwritten. The target snapshot must be in the <code>pending</code> state.</p> <p>Data written to a snapshot must be aligned with 512-byte sectors.</p>",
      "authtype": "v4-unsigned-body"
    },
    "StartSnapshot": {
      "name": "StartSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/snapshots",
        "responseCode": 201
      },
      "input": {
        "shape": "StartSnapshotRequest"
      },
      "output": {
        "shape": "StartSnapshotResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "RequestThrottledException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ConcurrentLimitExceededException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Creates a new Amazon EBS snapshot. The new snapshot enters the <code>pending</code> state after the request completes. </p> <p>After creating the snapshot, use <a href=\"https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html\"> PutSnapshotBlock</a> to write blocks of data to the snapshot.</p>"
    }
  },
  "shapes": {
    "Block": {
      "type": "structure",
      "members": {
        "BlockIndex": {
          "shape": "BlockIndex",
          "documentation": "<p>The block index.</p>"
        },
        "BlockToken": {
          "shape": "BlockToken",
          "documentation": "<p>The block token for the block index.</p>"
        }
      },
      "documentation": "<p>A block of data in an Amazon Elastic Block Store snapshot.</p>"
    },
    "BlockData": {
      "type": "blob",
      "sensitive": true,
      "streaming": true
    },
    "BlockIndex": {
      "type": "integer",
      "min": 0
    },
    "BlockSize": {
      "type": "integer"
    },
    "BlockToken": {
      "type": "string",
      "max": 256,
      "pattern": "^[A-Za-z0-9+/=]+$"
    },
    "Blocks": {
      "type": "list",
      "member": {
        "shape": "Block"
      },
      "sensitive": true
    },
    "Boolean": {
      "type": "boolean"
    },
    "ChangedBlock": {
      "type": "structure",
      "members": {
        "BlockIndex": {
          "shape": "BlockIndex",
          "documentation": "<p>The block index.</p>"
        },
        "FirstBlockToken": {
          "shape": "BlockToken",
          "documentation": "<p>The block token for the block index of the <code>FirstSnapshotId</code> specified in the <code>ListChangedBlocks</code> operation. This value is absent if the first snapshot does not have the changed block that is on the second snapshot.</p>"
        },
        "SecondBlockToken": {
          "shape": "BlockToken",
          "documentation": "<p>The block token for the block index of the <code>SecondSnapshotId</code> specified in the <code>ListChangedBlocks</code> operation.</p>"
        }
      },
      "documentation": "<p>A block of data in an Amazon Elastic Block Store snapshot that is different from another snapshot of the same volume/snapshot lineage.</p>",
      "sensitive": true
    },
    "ChangedBlocks": {
      "type": "list",
      "member": {
        "shape": "ChangedBlock"
      }
    },
    "ChangedBlocksCount": {
      "type": "integer",
      "min": 0
    },
    "Checksum": {
      "type": "string",
      "max": 64,
      "pattern": "^[A-Za-z0-9+/=]+$"
    },
    "ChecksumAggregationMethod": {
      "type": "string",
      "enum": [
        "LINEAR"
      ],
      "max": 32,
      "pattern": "^[A-Za-z0-9]+$"
    },
    "ChecksumAlgorithm": {
      "type": "string",
      "enum": [
        "SHA256"
      ],
      "max": 32,
      "pattern": "^[A-Za-z0-9]+$"
    },
    "CompleteSnapshotRequest": {
      "type": "structure",
      "required": [
        "SnapshotId",
        "ChangedBlocksCount"
      ],
      "members": {
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the snapshot.</p>",
          "location": "uri",
          "locationName": "snapshotId"
        },
        "ChangedBlocksCount": {
          "shape": "ChangedBlocksCount",
          "documentation": "<p>The number of blocks that were written to the snapshot.</p>",
          "location": "header",
          "locationName": "x-amz-ChangedBlocksCount"
        },
        "Checksum": {
          "shape": "Checksum",
          "documentation": "<p>An aggregated Base-64 SHA256 checksum based on the checksums of each written block.</p> <p>To generate the aggregated checksum using the linear aggregation method, arrange the checksums for each written block in ascending order of their block index, concatenate them to form a single string, and then generate the checksum on the entire string using the SHA256 algorithm.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum"
        },
        "ChecksumAlgorithm": {
          "shape": "ChecksumAlgorithm",
          "documentation": "<p>The algorithm used to generate the checksum. Currently, the only supported algorithm is <code>SHA256</code>.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum-Algorithm"
        },
        "ChecksumAggregationMethod": {
          "shape": "ChecksumAggregationMethod",
          "documentation": "<p>The aggregation method used to generate the checksum. Currently, the only supported aggregation method is <code>LINEAR</code>.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum-Aggregation-Method"
        }
      }
    },
    "CompleteSnapshotResponse": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the snapshot.</p>"
        }
      }
    },
    "DataLength": {
      "type": "integer"
    },
    "Description": {
      "type": "string",
      "max": 255,
      "pattern": "^[\\S\\s]+$"
    },
    "GetSnapshotBlockRequest": {
      "type": "structure",
      "required": [
        "SnapshotId",
        "BlockIndex",
        "BlockToken"
      ],
      "members": {
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the snapshot containing the block from which to get data.</p>",
          "location": "uri",
          "locationName": "snapshotId"
        },
        "BlockIndex": {
          "shape": "BlockIndex",
          "documentation": "<p>The block index of the block from which to get data.</p> <p>Obtain the <code>BlockIndex</code> by running the <code>ListChangedBlocks</code> or <code>ListSnapshotBlocks</code> operations.</p>",
          "location": "uri",
          "locationName": "blockIndex"
        },
        "BlockToken": {
          "shape": "BlockToken",
          "documentation": "<p>The block token of the block from which to get data.</p> <p>Obtain the <code>BlockToken</code> by running the <code>ListChangedBlocks</code> or <code>ListSnapshotBlocks</code> operations.</p>",
          "location": "querystring",
          "locationName": "blockToken"
        }
      }
    },
    "GetSnapshotBlockResponse": {
      "type": "structure",
      "members": {
        "DataLength": {
          "shape": "DataLength",
          "documentation": "<p>The size of the data in the block.</p>",
          "location": "header",
          "locationName": "x-amz-Data-Length"
        },
        "BlockData": {
          "shape": "BlockData",
          "documentation": "<p>The data content of the block.</p>"
        },
        "Checksum": {
          "shape": "Checksum",
          "documentation": "<p>The checksum generated for the block, which is Base64 encoded.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum"
        },
        "ChecksumAlgorithm": {
          "shape": "ChecksumAlgorithm",
          "documentation": "<p>The algorithm used to generate the checksum for the block, such as SHA256.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum-Algorithm"
        }
      },
      "payload": "BlockData"
    },
    "IdempotencyToken": {
      "type": "string",
      "max": 255,
      "pattern": "^[\\S]+$"
    },
    "KmsKeyArn": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:aws[a-z\\-]*:kms:.*:[0-9]{12}:key/.*",
      "sensitive": true
    },
    "ListChangedBlocksRequest": {
      "type": "structure",
      "required": [
        "SecondSnapshotId"
      ],
      "members": {
        "FirstSnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the first snapshot to use for the comparison.</p> <important> <p>The <code>FirstSnapshotID</code> parameter must be specified with a <code>SecondSnapshotId</code> parameter; otherwise, an error occurs.</p> </important>",
          "location": "querystring",
          "locationName": "firstSnapshotId"
        },
        "SecondSnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the second snapshot to use for the comparison.</p> <important> <p>The <code>SecondSnapshotId</code> parameter must be specified with a <code>FirstSnapshotID</code> parameter; otherwise, an error occurs.</p> </important>",
          "location": "uri",
          "locationName": "secondSnapshotId"
        },
        "NextToken": {
          "shape": "PageToken",
          "documentation": "<p>The token to request the next page of results.</p>",
          "location": "querystring",
          "locationName": "pageToken"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "StartingBlockIndex": {
          "shape": "BlockIndex",
          "documentation": "<p>The block index from which the comparison should start.</p> <p>The list in the response will start from this block index or the next valid block index in the snapshots.</p>",
          "location": "querystring",
          "locationName": "startingBlockIndex"
        }
      }
    },
    "ListChangedBlocksResponse": {
      "type": "structure",
      "members": {
        "ChangedBlocks": {
          "shape": "ChangedBlocks",
          "documentation": "<p>An array of objects containing information about the changed blocks.</p>"
        },
        "ExpiryTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time when the <code>BlockToken</code> expires.</p>"
        },
        "VolumeSize": {
          "shape": "VolumeSize",
          "documentation": "<p>The size of the volume in GB.</p>"
        },
        "BlockSize": {
          "shape": "BlockSize",
          "documentation": "<p>The size of the block.</p>"
        },
        "NextToken": {
          "shape": "PageToken",
          "documentation": "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "ListSnapshotBlocksRequest": {
      "type": "structure",
      "required": [
        "SnapshotId"
      ],
      "members": {
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the snapshot from which to get block indexes and block tokens.</p>",
          "location": "uri",
          "locationName": "snapshotId"
        },
        "NextToken": {
          "shape": "PageToken",
          "documentation": "<p>The token to request the next page of results.</p>",
          "location": "querystring",
          "locationName": "pageToken"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The number of results to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "StartingBlockIndex": {
          "shape": "BlockIndex",
          "documentation": "<p>The block index from which the list should start. The list in the response will start from this block index or the next valid block index in the snapshot.</p>",
          "location": "querystring",
          "locationName": "startingBlockIndex"
        }
      }
    },
    "ListSnapshotBlocksResponse": {
      "type": "structure",
      "members": {
        "Blocks": {
          "shape": "Blocks",
          "documentation": "<p>An array of objects containing information about the blocks.</p>"
        },
        "ExpiryTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time when the <code>BlockToken</code> expires.</p>"
        },
        "VolumeSize": {
          "shape": "VolumeSize",
          "documentation": "<p>The size of the volume in GB.</p>"
        },
        "BlockSize": {
          "shape": "BlockSize",
          "documentation": "<p>The size of the block.</p>"
        },
        "NextToken": {
          "shape": "PageToken",
          "documentation": "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 10000,
      "min": 100
    },
    "OwnerId": {
      "type": "string",
      "max": 24,
      "min": 1,
      "pattern": "\\S+"
    },
    "PageToken": {
      "type": "string",
      "max": 256,
      "pattern": "^[A-Za-z0-9+/=]+$"
    },
    "Progress": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "PutSnapshotBlockRequest": {
      "type": "structure",
      "required": [
        "SnapshotId",
        "BlockIndex",
        "BlockData",
        "DataLength",
        "Checksum",
        "ChecksumAlgorithm"
      ],
      "members": {
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the snapshot.</p>",
          "location": "uri",
          "locationName": "snapshotId"
        },
        "BlockIndex": {
          "shape": "BlockIndex",
          "documentation": "<p>The block index of the block in which to write the data. A block index is a logical index in units of <code>512</code> KiB blocks. To identify the block index, divide the logical offset of the data in the logical volume by the block size (logical offset of data/<code>524288</code>). The logical offset of the data must be <code>512</code> KiB aligned.</p>",
          "location": "uri",
          "locationName": "blockIndex"
        },
        "BlockData": {
          "shape": "BlockData",
          "documentation": "<p>The data to write to the block.</p> <p>The block data is not signed as part of the Signature Version 4 signing process. As a result, you must generate and provide a Base64-encoded SHA256 checksum for the block data using the <b>x-amz-Checksum</b> header. Also, you must specify the checksum algorithm using the <b>x-amz-Checksum-Algorithm</b> header. The checksum that you provide is part of the Signature Version 4 signing process. It is validated against a checksum generated by Amazon EBS to ensure the validity and authenticity of the data. If the checksums do not correspond, the request fails. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-checksums\"> Using checksums with the EBS direct APIs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>"
        },
        "DataLength": {
          "shape": "DataLength",
          "documentation": "<p>The size of the data to write to the block, in bytes. Currently, the only supported size is <code>524288</code>.</p> <p>Valid values: <code>524288</code> </p>",
          "location": "header",
          "locationName": "x-amz-Data-Length"
        },
        "Progress": {
          "shape": "Progress",
          "documentation": "<p>The progress of the write process, as a percentage.</p>",
          "location": "header",
          "locationName": "x-amz-Progress"
        },
        "Checksum": {
          "shape": "Checksum",
          "documentation": "<p>A Base64-encoded SHA256 checksum of the data. Only SHA256 checksums are supported.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum"
        },
        "ChecksumAlgorithm": {
          "shape": "ChecksumAlgorithm",
          "documentation": "<p>The algorithm used to generate the checksum. Currently, the only supported algorithm is <code>SHA256</code>.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum-Algorithm"
        }
      },
      "payload": "BlockData"
    },
    "PutSnapshotBlockResponse": {
      "type": "structure",
      "members": {
        "Checksum": {
          "shape": "Checksum",
          "documentation": "<p>The SHA256 checksum generated for the block data by Amazon EBS.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum"
        },
        "ChecksumAlgorithm": {
          "shape": "ChecksumAlgorithm",
          "documentation": "<p>The algorithm used by Amazon EBS to generate the checksum.</p>",
          "location": "header",
          "locationName": "x-amz-Checksum-Algorithm"
        }
      }
    },
    "SnapshotId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^snap-[0-9a-f]+$"
    },
    "StartSnapshotRequest": {
      "type": "structure",
      "required": [
        "VolumeSize"
      ],
      "members": {
        "VolumeSize": {
          "shape": "VolumeSize",
          "documentation": "<p>The size of the volume, in GiB. The maximum size is <code>16384</code> GiB (16 TiB).</p>"
        },
        "ParentSnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the parent snapshot. If there is no parent snapshot, or if you are creating the first snapshot for an on-premises volume, omit this parameter.</p> <p>If your account is enabled for encryption by default, you cannot use an unencrypted snapshot as a parent snapshot. You must first create an encrypted copy of the parent snapshot using <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CopySnapshot.html\">CopySnapshot</a>.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to apply to the snapshot.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description for the snapshot.</p>"
        },
        "ClientToken": {
          "shape": "IdempotencyToken",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully. The subsequent retries with the same client token return the result from the original successful request and they have no additional effect.</p> <p>If you do not specify a client token, one is automatically generated by the AWS SDK.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-direct-api-idempotency.html\"> Idempotency for StartSnapshot API</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>",
          "idempotencyToken": true
        },
        "Encrypted": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether to encrypt the snapshot. To create an encrypted snapshot, specify <code>true</code>. To create an unencrypted snapshot, omit this parameter.</p> <p>If you specify a value for <b>ParentSnapshotId</b>, omit this parameter.</p> <p>If you specify <code>true</code>, the snapshot is encrypted using the CMK specified using the <b>KmsKeyArn</b> parameter. If no value is specified for <b>KmsKeyArn</b>, the default CMK for your account is used. If no default CMK has been specified for your account, the AWS managed CMK is used. To set a default CMK for your account, use <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyEbsDefaultKmsKeyId.html\"> ModifyEbsDefaultKmsKeyId</a>.</p> <p>If your account is enabled for encryption by default, you cannot set this parameter to <code>false</code>. In this case, you can omit this parameter.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapis-using-encryption\"> Using encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>"
        },
        "KmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) to be used to encrypt the snapshot. If you do not specify a CMK, the default AWS managed CMK is used.</p> <p>If you specify a <b>ParentSnapshotId</b>, omit this parameter; the snapshot will be encrypted using the same CMK that was used to encrypt the parent snapshot.</p> <p>If <b>Encrypted</b> is set to <code>true</code>, you must specify a CMK ARN. </p>"
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The amount of time (in minutes) after which the snapshot is automatically cancelled if:</p> <ul> <li> <p>No blocks are written to the snapshot.</p> </li> <li> <p>The snapshot is not completed after writing the last block of data.</p> </li> </ul> <p>If no value is specified, the timeout defaults to <code>60</code> minutes.</p>"
        }
      }
    },
    "StartSnapshotResponse": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the snapshot.</p>"
        },
        "SnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the snapshot.</p>"
        },
        "OwnerId": {
          "shape": "OwnerId",
          "documentation": "<p>The AWS account ID of the snapshot owner.</p>"
        },
        "Status": {
          "shape": "Status",
          "documentation": "<p>The status of the snapshot.</p>"
        },
        "StartTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The timestamp when the snapshot was created.</p>"
        },
        "VolumeSize": {
          "shape": "VolumeSize",
          "documentation": "<p>The size of the volume, in GiB.</p>"
        },
        "BlockSize": {
          "shape": "BlockSize",
          "documentation": "<p>The size of the blocks in the snapshot, in bytes.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags applied to the snapshot. You can specify up to 50 tags per snapshot. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html\"> Tagging your Amazon EC2 resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>"
        },
        "ParentSnapshotId": {
          "shape": "SnapshotId",
          "documentation": "<p>The ID of the parent snapshot.</p>"
        },
        "KmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) used to encrypt the snapshot.</p>"
        }
      }
    },
    "Status": {
      "type": "string",
      "enum": [
        "completed",
        "pending",
        "error"
      ],
      "max": 32
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>Describes a tag.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 127,
      "pattern": "^[\\S\\s]+$"
    },
    "TagValue": {
      "type": "string",
      "max": 255,
      "pattern": "^[\\S\\s]+$"
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TimeStamp": {
      "type": "timestamp"
    },
    "Timeout": {
      "type": "integer",
      "max": 60,
      "min": 10
    },
    "VolumeSize": {
      "type": "long",
      "min": 1
    }
  },
  "documentation": "<p>You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create EBS snapshots, write data directly to your snapshots, read data on your snapshots, and identify the differences or changes between two snapshots. If you’re an independent software vendor (ISV) who offers backup services for Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to track incremental changes on your EBS volumes through snapshots. This can be done without having to create new volumes from snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2) instances to compare the differences.</p> <p>You can create incremental snapshots directly from data on-premises into EBS volumes and the cloud to use for quick disaster recovery. With the ability to write and read snapshots, you can write your on-premises data to an EBS snapshot during a disaster. Then after recovery, you can restore it back to AWS or on-premises from the snapshot. You no longer need to build and maintain complex mechanisms to copy data to and from Amazon EBS.</p> <p>This API reference provides detailed information about the actions, data types, parameters, and errors of the EBS direct APIs. For more information about the elements that make up the EBS direct APIs, and examples of how to use them effectively, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html\">Accessing the Contents of an EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. For more information about the supported AWS Regions, endpoints, and service quotas for the EBS direct APIs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/ebs-service.html\">Amazon Elastic Block Store Endpoints and Quotas</a> in the <i>AWS General Reference</i>.</p>"
}
]===]))