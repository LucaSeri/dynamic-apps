local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2017-07-25",
    "endpointPrefix": "dataexchange",
    "signingName": "dataexchange",
    "serviceFullName": "AWS Data Exchange",
    "serviceId": "DataExchange",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "dataexchange-2017-07-25",
    "signatureVersion": "v4"
  },
  "operations": {
    "CancelJob": {
      "name": "CancelJob",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/jobs/{JobId}",
        "responseCode": 204
      },
      "input": {
        "shape": "CancelJobRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.</p>"
    },
    "CreateDataSet": {
      "name": "CreateDataSet",
      "http": {
        "method": "POST",
        "requestUri": "/v1/data-sets",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateDataSetRequest"
      },
      "output": {
        "shape": "CreateDataSetResponse",
        "documentation": "<p>201 response</p>"
      },
      "errors": [
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "ServiceLimitExceededException",
          "documentation": "<p>402 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        }
      ],
      "documentation": "<p>This operation creates a data set.</p>"
    },
    "CreateJob": {
      "name": "CreateJob",
      "http": {
        "method": "POST",
        "requestUri": "/v1/jobs",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateJobRequest"
      },
      "output": {
        "shape": "CreateJobResponse",
        "documentation": "<p>201 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        }
      ],
      "documentation": "<p>This operation creates a job.</p>"
    },
    "CreateRevision": {
      "name": "CreateRevision",
      "http": {
        "method": "POST",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateRevisionRequest"
      },
      "output": {
        "shape": "CreateRevisionResponse",
        "documentation": "<p>201 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        }
      ],
      "documentation": "<p>This operation creates a revision for a data set.</p>"
    },
    "DeleteAsset": {
      "name": "DeleteAsset",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteAssetRequest"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>This operation deletes an asset.</p>"
    },
    "DeleteDataSet": {
      "name": "DeleteDataSet",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/data-sets/{DataSetId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteDataSetRequest"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>This operation deletes a data set.</p>"
    },
    "DeleteRevision": {
      "name": "DeleteRevision",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteRevisionRequest"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>This operation deletes a revision.</p>"
    },
    "GetAsset": {
      "name": "GetAsset",
      "http": {
        "method": "GET",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetAssetRequest"
      },
      "output": {
        "shape": "GetAssetResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>This operation returns information about an asset.</p>"
    },
    "GetDataSet": {
      "name": "GetDataSet",
      "http": {
        "method": "GET",
        "requestUri": "/v1/data-sets/{DataSetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDataSetRequest"
      },
      "output": {
        "shape": "GetDataSetResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>This operation returns information about a data set.</p>"
    },
    "GetJob": {
      "name": "GetJob",
      "http": {
        "method": "GET",
        "requestUri": "/v1/jobs/{JobId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetJobRequest"
      },
      "output": {
        "shape": "GetJobResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>This operation returns information about a job.</p>"
    },
    "GetRevision": {
      "name": "GetRevision",
      "http": {
        "method": "GET",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetRevisionRequest"
      },
      "output": {
        "shape": "GetRevisionResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>This operation returns information about a revision.</p>"
    },
    "ListDataSetRevisions": {
      "name": "ListDataSetRevisions",
      "http": {
        "method": "GET",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDataSetRevisionsRequest"
      },
      "output": {
        "shape": "ListDataSetRevisionsResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>This operation lists a data set's revisions sorted by CreatedAt in descending order.</p>"
    },
    "ListDataSets": {
      "name": "ListDataSets",
      "http": {
        "method": "GET",
        "requestUri": "/v1/data-sets",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDataSetsRequest"
      },
      "output": {
        "shape": "ListDataSetsResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.</p>"
    },
    "ListJobs": {
      "name": "ListJobs",
      "http": {
        "method": "GET",
        "requestUri": "/v1/jobs",
        "responseCode": 200
      },
      "input": {
        "shape": "ListJobsRequest"
      },
      "output": {
        "shape": "ListJobsResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>This operation lists your jobs sorted by CreatedAt in descending order.</p>"
    },
    "ListRevisionAssets": {
      "name": "ListRevisionAssets",
      "http": {
        "method": "GET",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets",
        "responseCode": 200
      },
      "input": {
        "shape": "ListRevisionAssetsRequest"
      },
      "output": {
        "shape": "ListRevisionAssetsResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>This operation lists a revision's assets sorted alphabetically in descending order.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [],
      "documentation": "<p>This operation lists the tags on the resource.</p>"
    },
    "StartJob": {
      "name": "StartJob",
      "http": {
        "method": "PATCH",
        "requestUri": "/v1/jobs/{JobId}",
        "responseCode": 202
      },
      "input": {
        "shape": "StartJobRequest"
      },
      "output": {
        "shape": "StartJobResponse",
        "documentation": "<p>202 response</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>This operation starts a job.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "errors": [],
      "documentation": "<p>This operation tags a resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [],
      "documentation": "<p>This operation removes one or more tags from a resource.</p>"
    },
    "UpdateAsset": {
      "name": "UpdateAsset",
      "http": {
        "method": "PATCH",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateAssetRequest"
      },
      "output": {
        "shape": "UpdateAssetResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>This operation updates an asset.</p>"
    },
    "UpdateDataSet": {
      "name": "UpdateDataSet",
      "http": {
        "method": "PATCH",
        "requestUri": "/v1/data-sets/{DataSetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDataSetRequest"
      },
      "output": {
        "shape": "UpdateDataSetResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        }
      ],
      "documentation": "<p>This operation updates a data set.</p>"
    },
    "UpdateRevision": {
      "name": "UpdateRevision",
      "http": {
        "method": "PATCH",
        "requestUri": "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateRevisionRequest"
      },
      "output": {
        "shape": "UpdateRevisionResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>403 response</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>429 response</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>This operation updates a revision.</p>"
    }
  },
  "shapes": {
    "Arn": {
      "type": "string",
      "documentation": "<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>"
    },
    "AssetDestinationEntry": {
      "type": "structure",
      "members": {
        "AssetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the asset.</p>"
        },
        "Bucket": {
          "shape": "__string",
          "documentation": "<p>The S3 bucket that is the destination for the asset.</p>"
        },
        "Key": {
          "shape": "__string",
          "documentation": "<p>The name of the object in Amazon S3 for the asset.</p>"
        }
      },
      "documentation": "<p>The destination for the asset.</p>",
      "required": [
        "Bucket",
        "AssetId"
      ]
    },
    "AssetDetails": {
      "type": "structure",
      "members": {
        "S3SnapshotAsset": {
          "shape": "S3SnapshotAsset"
        }
      }
    },
    "AssetEntry": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the asset.</p>"
        },
        "AssetDetails": {
          "shape": "AssetDetails",
          "documentation": "<p>Information about the asset, including its size.</p>"
        },
        "AssetType": {
          "shape": "AssetType",
          "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the asset was created, in ISO 8601 format.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this asset.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the asset.</p>"
        },
        "Name": {
          "shape": "AssetName",
          "documentation": "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this asset.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the asset was last updated, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>An asset in AWS Data Exchange is a piece of data that can be stored as an S3 object. The asset can be a structured data file, an image file, or some other data file. When you create an import job for your files, you create an asset in AWS Data Exchange for each of those files.</p>",
      "required": [
        "AssetType",
        "CreatedAt",
        "DataSetId",
        "Id",
        "Arn",
        "AssetDetails",
        "UpdatedAt",
        "RevisionId",
        "Name"
      ]
    },
    "AssetName": {
      "type": "string",
      "documentation": "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key.</p>"
    },
    "AssetSourceEntry": {
      "type": "structure",
      "members": {
        "Bucket": {
          "shape": "__string",
          "documentation": "<p>The S3 bucket that's part of the source of the asset.</p>"
        },
        "Key": {
          "shape": "__string",
          "documentation": "<p>The name of the object in Amazon S3 for the asset.</p>"
        }
      },
      "documentation": "<p>The source of the assets.</p>",
      "required": [
        "Bucket",
        "Key"
      ]
    },
    "AssetType": {
      "type": "string",
      "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>",
      "enum": [
        "S3_SNAPSHOT"
      ]
    },
    "CancelJobRequest": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "JobId",
          "documentation": "<p>The unique identifier for a job.</p>"
        }
      },
      "required": [
        "JobId"
      ]
    },
    "Code": {
      "type": "string",
      "enum": [
        "ACCESS_DENIED_EXCEPTION",
        "INTERNAL_SERVER_EXCEPTION",
        "MALWARE_DETECTED",
        "RESOURCE_NOT_FOUND_EXCEPTION",
        "SERVICE_QUOTA_EXCEEDED_EXCEPTION",
        "VALIDATION_EXCEPTION",
        "MALWARE_SCAN_ENCRYPTED_FILE"
      ]
    },
    "CreateDataSetRequest": {
      "type": "structure",
      "members": {
        "AssetType": {
          "shape": "AssetType",
          "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description for the data set. This value can be up to 16,348 characters long.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the data set.</p>"
        },
        "Tags": {
          "shape": "MapOf__string",
          "documentation": "<p>A data set tag is an optional label that you can assign to a data set when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to these data sets and revisions.</p>"
        }
      },
      "documentation": "<p>The request body for CreateDataSet.</p>",
      "required": [
        "AssetType",
        "Description",
        "Name"
      ]
    },
    "CreateDataSetResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the data set.</p>"
        },
        "AssetType": {
          "shape": "AssetType",
          "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the data set was created, in ISO 8601 format.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description for the data set.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the data set.</p>"
        },
        "Origin": {
          "shape": "Origin",
          "documentation": "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
        },
        "OriginDetails": {
          "shape": "OriginDetails",
          "documentation": "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>"
        },
        "Tags": {
          "shape": "MapOf__string",
          "documentation": "<p>The tags for the data set.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the data set was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "CreateJobRequest": {
      "type": "structure",
      "members": {
        "Details": {
          "shape": "RequestDetails",
          "documentation": "<p>The details for the CreateJob request.</p>"
        },
        "Type": {
          "shape": "Type",
          "documentation": "<p>The type of job to be created.</p>"
        }
      },
      "documentation": "<p>The request body for CreateJob.</p>",
      "required": [
        "Type",
        "Details"
      ]
    },
    "CreateJobResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the job.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the job was created, in ISO 8601 format.</p>"
        },
        "Details": {
          "shape": "ResponseDetails",
          "documentation": "<p>Details about the job.</p>"
        },
        "Errors": {
          "shape": "ListOfJobError",
          "documentation": "<p>The errors associated with jobs.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the job.</p>"
        },
        "State": {
          "shape": "State",
          "documentation": "<p>The state of the job.</p>"
        },
        "Type": {
          "shape": "Type",
          "documentation": "<p>The job type.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the job was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "CreateRevisionRequest": {
      "type": "structure",
      "members": {
        "Comment": {
          "shape": "__stringMin0Max16384",
          "documentation": "<p>An optional comment about the revision.</p>"
        },
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "Tags": {
          "shape": "MapOf__string",
          "documentation": "<p>A revision tag is an optional label that you can assign to a revision when you create it. Each tag consists of a key and an optional value, both of which you define. When you use tagging, you can also use tag-based access control in IAM policies to control access to these data sets and revisions.</p>"
        }
      },
      "documentation": "<p>The request body for CreateRevision.</p>",
      "required": [
        "DataSetId"
      ]
    },
    "CreateRevisionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the revision</p>"
        },
        "Comment": {
          "shape": "__stringMin0Max16384",
          "documentation": "<p>An optional comment about the revision.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the revision was created, in ISO 8601 format.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this revision.</p>"
        },
        "Finalized": {
          "shape": "__boolean",
          "documentation": "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
        },
        "Tags": {
          "shape": "MapOf__string",
          "documentation": "<p>The tags for the revision.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "DataSetEntry": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the data set.</p>"
        },
        "AssetType": {
          "shape": "AssetType",
          "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the data set was created, in ISO 8601 format.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description for the data set.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the data set.</p>"
        },
        "Origin": {
          "shape": "Origin",
          "documentation": "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
        },
        "OriginDetails": {
          "shape": "OriginDetails",
          "documentation": "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the data set was last updated, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>A data set is an AWS resource with one or more revisions.</p>",
      "required": [
        "Origin",
        "AssetType",
        "Description",
        "CreatedAt",
        "Id",
        "Arn",
        "UpdatedAt",
        "Name"
      ]
    },
    "DeleteAssetRequest": {
      "type": "structure",
      "members": {
        "AssetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "AssetId",
          "documentation": "<p>The unique identifier for an asset.</p>"
        },
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "RevisionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "RevisionId",
          "documentation": "<p>The unique identifier for a revision.</p>"
        }
      },
      "required": [
        "RevisionId",
        "AssetId",
        "DataSetId"
      ]
    },
    "DeleteDataSetRequest": {
      "type": "structure",
      "members": {
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        }
      },
      "required": [
        "DataSetId"
      ]
    },
    "DeleteRevisionRequest": {
      "type": "structure",
      "members": {
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "RevisionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "RevisionId",
          "documentation": "<p>The unique identifier for a revision.</p>"
        }
      },
      "required": [
        "RevisionId",
        "DataSetId"
      ]
    },
    "Description": {
      "type": "string",
      "documentation": "<p>A description of a resource.</p>"
    },
    "Details": {
      "type": "structure",
      "members": {
        "ImportAssetFromSignedUrlJobErrorDetails": {
          "shape": "ImportAssetFromSignedUrlJobErrorDetails"
        },
        "ImportAssetsFromS3JobErrorDetails": {
          "shape": "ListOfAssetSourceEntry"
        }
      }
    },
    "ExportAssetToSignedUrlRequestDetails": {
      "type": "structure",
      "members": {
        "AssetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the asset that is exported to a signed URL.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this export job.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this export request.</p>"
        }
      },
      "documentation": "<p>Details of the operation to be performed by the job.</p>",
      "required": [
        "DataSetId",
        "AssetId",
        "RevisionId"
      ]
    },
    "ExportAssetToSignedUrlResponseDetails": {
      "type": "structure",
      "members": {
        "AssetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the asset associated with this export job.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this export job.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this export response.</p>"
        },
        "SignedUrl": {
          "shape": "__string",
          "documentation": "<p>The signed URL for the export request.</p>"
        },
        "SignedUrlExpiresAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the signed URL expires, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>The details of the export to signed URL response.</p>",
      "required": [
        "DataSetId",
        "AssetId",
        "RevisionId"
      ]
    },
    "ExportAssetsToS3RequestDetails": {
      "type": "structure",
      "members": {
        "AssetDestinations": {
          "shape": "ListOfAssetDestinationEntry",
          "documentation": "<p>The destination for the asset.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this export job.</p>"
        },
        "Encryption": {
          "shape": "ExportServerSideEncryption",
          "documentation": "<p>Encryption configuration for the export job.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this export request.</p>"
        }
      },
      "documentation": "<p>Details of the operation to be performed by the job.</p>",
      "required": [
        "AssetDestinations",
        "DataSetId",
        "RevisionId"
      ]
    },
    "ExportAssetsToS3ResponseDetails": {
      "type": "structure",
      "members": {
        "AssetDestinations": {
          "shape": "ListOfAssetDestinationEntry",
          "documentation": "<p>The destination in Amazon S3 where the asset is exported.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this export job.</p>"
        },
        "Encryption": {
          "shape": "ExportServerSideEncryption",
          "documentation": "<p>Encryption configuration of the export job.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this export response.</p>"
        }
      },
      "documentation": "<p>Details about the export to Amazon S3 response.</p>",
      "required": [
        "AssetDestinations",
        "DataSetId",
        "RevisionId"
      ]
    },
    "ExportServerSideEncryption": {
      "type": "structure",
      "members": {
        "KmsKeyArn": {
          "shape": "__string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the the AWS KMS key you want to use to encrypt the Amazon S3 objects. This parameter is required if you choose aws:kms as an encryption type.</p>"
        },
        "Type": {
          "shape": "ServerSideEncryptionTypes",
          "documentation": "<p>The type of server side encryption used for encrypting the objects in Amazon S3.</p>"
        }
      },
      "documentation": "<p>Encryption configuration of the export job. Includes the encryption type as well as the AWS KMS key. The KMS key is only necessary if you chose the KMS encryption type.</p>",
      "required": [
        "Type"
      ]
    },
    "GetAssetRequest": {
      "type": "structure",
      "members": {
        "AssetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "AssetId",
          "documentation": "<p>The unique identifier for an asset.</p>"
        },
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "RevisionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "RevisionId",
          "documentation": "<p>The unique identifier for a revision.</p>"
        }
      },
      "required": [
        "RevisionId",
        "AssetId",
        "DataSetId"
      ]
    },
    "GetAssetResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the asset.</p>"
        },
        "AssetDetails": {
          "shape": "AssetDetails",
          "documentation": "<p>Information about the asset, including its size.</p>"
        },
        "AssetType": {
          "shape": "AssetType",
          "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the asset was created, in ISO 8601 format.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this asset.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the asset.</p>"
        },
        "Name": {
          "shape": "AssetName",
          "documentation": "<p>The name of the asset When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this asset.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the asset was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "GetDataSetRequest": {
      "type": "structure",
      "members": {
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        }
      },
      "required": [
        "DataSetId"
      ]
    },
    "GetDataSetResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the data set.</p>"
        },
        "AssetType": {
          "shape": "AssetType",
          "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the data set was created, in ISO 8601 format.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description for the data set.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the data set.</p>"
        },
        "Origin": {
          "shape": "Origin",
          "documentation": "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
        },
        "OriginDetails": {
          "shape": "OriginDetails",
          "documentation": "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>"
        },
        "Tags": {
          "shape": "MapOf__string",
          "documentation": "<p>The tags for the data set.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the data set was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "GetJobRequest": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "JobId",
          "documentation": "<p>The unique identifier for a job.</p>"
        }
      },
      "required": [
        "JobId"
      ]
    },
    "GetJobResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the job.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the job was created, in ISO 8601 format.</p>"
        },
        "Details": {
          "shape": "ResponseDetails",
          "documentation": "<p>Details about the job.</p>"
        },
        "Errors": {
          "shape": "ListOfJobError",
          "documentation": "<p>The errors associated with jobs.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the job.</p>"
        },
        "State": {
          "shape": "State",
          "documentation": "<p>The state of the job.</p>"
        },
        "Type": {
          "shape": "Type",
          "documentation": "<p>The job type.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the job was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "GetRevisionRequest": {
      "type": "structure",
      "members": {
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "RevisionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "RevisionId",
          "documentation": "<p>The unique identifier for a revision.</p>"
        }
      },
      "required": [
        "RevisionId",
        "DataSetId"
      ]
    },
    "GetRevisionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the revision</p>"
        },
        "Comment": {
          "shape": "__stringMin0Max16384",
          "documentation": "<p>An optional comment about the revision.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the revision was created, in ISO 8601 format.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this revision.</p>"
        },
        "Finalized": {
          "shape": "__boolean",
          "documentation": "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
        },
        "Tags": {
          "shape": "MapOf__string",
          "documentation": "<p>The tags for the revision.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "Id": {
      "type": "string",
      "documentation": "<p>A unique identifier.</p>"
    },
    "ImportAssetFromSignedUrlJobErrorDetails": {
      "type": "structure",
      "members": {
        "AssetName": {
          "shape": "AssetName"
        }
      },
      "required": [
        "AssetName"
      ]
    },
    "ImportAssetFromSignedUrlRequestDetails": {
      "type": "structure",
      "members": {
        "AssetName": {
          "shape": "AssetName",
          "documentation": "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this import job.</p>"
        },
        "Md5Hash": {
          "shape": "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093",
          "documentation": "<p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at that location.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this import request.</p>"
        }
      },
      "documentation": "<p>Details of the operation to be performed by the job.</p>",
      "required": [
        "DataSetId",
        "Md5Hash",
        "RevisionId",
        "AssetName"
      ]
    },
    "ImportAssetFromSignedUrlResponseDetails": {
      "type": "structure",
      "members": {
        "AssetName": {
          "shape": "AssetName",
          "documentation": "<p>The name for the asset associated with this import response.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this import job.</p>"
        },
        "Md5Hash": {
          "shape": "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093",
          "documentation": "<p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at that location.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this import response.</p>"
        },
        "SignedUrl": {
          "shape": "__string",
          "documentation": "<p>The signed URL.</p>"
        },
        "SignedUrlExpiresAt": {
          "shape": "Timestamp",
          "documentation": "<p>The time and date at which the signed URL expires, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>The details in the response for an import request, including the signed URL and other information.</p>",
      "required": [
        "DataSetId",
        "AssetName",
        "RevisionId"
      ]
    },
    "ImportAssetsFromS3RequestDetails": {
      "type": "structure",
      "members": {
        "AssetSources": {
          "shape": "ListOfAssetSourceEntry",
          "documentation": "<p>Is a list of S3 bucket and object key pairs.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this import job.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this import request.</p>"
        }
      },
      "documentation": "<p>Details of the operation to be performed by the job.</p>",
      "required": [
        "DataSetId",
        "AssetSources",
        "RevisionId"
      ]
    },
    "ImportAssetsFromS3ResponseDetails": {
      "type": "structure",
      "members": {
        "AssetSources": {
          "shape": "ListOfAssetSourceEntry",
          "documentation": "<p>Is a list of Amazon S3 bucket and object key pairs.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this import job.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this import response.</p>"
        }
      },
      "documentation": "<p>Details from an import from Amazon S3 response.</p>",
      "required": [
        "DataSetId",
        "AssetSources",
        "RevisionId"
      ]
    },
    "JobEntry": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the job.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the job was created, in ISO 8601 format.</p>"
        },
        "Details": {
          "shape": "ResponseDetails",
          "documentation": "<p>Details of the operation to be performed by the job, such as export destination details or import source details.</p>"
        },
        "Errors": {
          "shape": "ListOfJobError",
          "documentation": "<p>Errors for jobs.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the job.</p>"
        },
        "State": {
          "shape": "State",
          "documentation": "<p>The state of the job.</p>"
        },
        "Type": {
          "shape": "Type",
          "documentation": "<p>The job type.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the job was last updated, in ISO 8601 format.</p>"
        }
      },
      "documentation": "AWS Data Exchange Jobs are asynchronous import or export operations used to create or copy assets. A data set owner can both import and export as they see fit. Someone with an entitlement to a data set can only export. Jobs are deleted 90 days after they are created.",
      "required": [
        "Type",
        "Details",
        "State",
        "CreatedAt",
        "Id",
        "Arn",
        "UpdatedAt"
      ]
    },
    "JobError": {
      "type": "structure",
      "members": {
        "Code": {
          "shape": "Code",
          "documentation": "The code for the job error."
        },
        "Details": {
          "shape": "Details"
        },
        "LimitName": {
          "shape": "JobErrorLimitName",
          "documentation": "<p>The name of the limit that was reached.</p>"
        },
        "LimitValue": {
          "shape": "__double",
          "documentation": "The value of the exceeded limit."
        },
        "Message": {
          "shape": "__string",
          "documentation": "The message related to the job error."
        },
        "ResourceId": {
          "shape": "__string",
          "documentation": "The unique identifier for the resource related to the error."
        },
        "ResourceType": {
          "shape": "JobErrorResourceTypes",
          "documentation": "The type of resource related to the error."
        }
      },
      "documentation": "An error that occurred with the job request.",
      "required": [
        "Message",
        "Code"
      ]
    },
    "JobErrorLimitName": {
      "type": "string",
      "documentation": "The name of the limit that was reached.",
      "enum": [
        "Assets per revision",
        "Asset size in GB"
      ]
    },
    "JobErrorResourceTypes": {
      "type": "string",
      "documentation": "The types of resource which the job error can apply to.",
      "enum": [
        "REVISION",
        "ASSET"
      ]
    },
    "ListDataSetRevisionsRequest": {
      "type": "structure",
      "members": {
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of results returned by a single call.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
        }
      },
      "required": [
        "DataSetId"
      ]
    },
    "ListDataSetRevisionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
        },
        "Revisions": {
          "shape": "ListOfRevisionEntry",
          "documentation": "<p>The asset objects listed by the request.</p>"
        }
      }
    },
    "ListDataSetsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of results returned by a single call.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
        },
        "Origin": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "origin",
          "documentation": "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
        }
      }
    },
    "ListDataSetsResponse": {
      "type": "structure",
      "members": {
        "DataSets": {
          "shape": "ListOfDataSetEntry",
          "documentation": "<p>The data set objects listed by the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
        }
      }
    },
    "ListJobsRequest": {
      "type": "structure",
      "members": {
        "DataSetId": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "dataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of results returned by a single call.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
        },
        "RevisionId": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "revisionId",
          "documentation": "<p>The unique identifier for a revision.</p>"
        }
      }
    },
    "ListJobsResponse": {
      "type": "structure",
      "members": {
        "Jobs": {
          "shape": "ListOfJobEntry",
          "documentation": "<p>The jobs listed by the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
        }
      }
    },
    "ListOfAssetDestinationEntry": {
      "type": "list",
      "documentation": "<p>The destination where the assets will be exported.</p>",
      "member": {
        "shape": "AssetDestinationEntry"
      }
    },
    "ListOfAssetSourceEntry": {
      "type": "list",
      "documentation": "<p>The list of sources for the assets.</p>",
      "member": {
        "shape": "AssetSourceEntry"
      }
    },
    "ListRevisionAssetsRequest": {
      "type": "structure",
      "members": {
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of results returned by a single call.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
        },
        "RevisionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "RevisionId",
          "documentation": "<p>The unique identifier for a revision.</p>"
        }
      },
      "required": [
        "RevisionId",
        "DataSetId"
      ]
    },
    "ListRevisionAssetsResponse": {
      "type": "structure",
      "members": {
        "Assets": {
          "shape": "ListOfAssetEntry",
          "documentation": "<p>The asset objects listed by the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>"
        }
      },
      "required": [
        "ResourceArn"
      ]
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "MapOf__string",
          "locationName": "tags",
          "documentation": "A label that consists of a customer-defined key and an optional value."
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "min": 1,
      "max": 25
    },
    "Name": {
      "type": "string",
      "documentation": "The name of the model."
    },
    "NextToken": {
      "type": "string",
      "documentation": "<p>The token value retrieved from a previous call to access the next page of results.</p>"
    },
    "Origin": {
      "type": "string",
      "documentation": "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers). When an owned data set is published in a product, AWS Data Exchange creates a copy of the data set. Subscribers can access that copy of the data set as an entitled data set.</p>",
      "enum": [
        "OWNED",
        "ENTITLED"
      ]
    },
    "OriginDetails": {
      "type": "structure",
      "members": {
        "ProductId": {
          "shape": "__string"
        }
      },
      "required": [
        "ProductId"
      ]
    },
    "RequestDetails": {
      "type": "structure",
      "members": {
        "ExportAssetToSignedUrl": {
          "shape": "ExportAssetToSignedUrlRequestDetails",
          "documentation": "<p>Details about the export to signed URL request.</p>"
        },
        "ExportAssetsToS3": {
          "shape": "ExportAssetsToS3RequestDetails",
          "documentation": "<p>Details about the export to Amazon S3 request.</p>"
        },
        "ImportAssetFromSignedUrl": {
          "shape": "ImportAssetFromSignedUrlRequestDetails",
          "documentation": "<p>Details about the import from signed URL request.</p>"
        },
        "ImportAssetsFromS3": {
          "shape": "ImportAssetsFromS3RequestDetails",
          "documentation": "<p>Details about the import from Amazon S3 request.</p>"
        }
      },
      "documentation": "<p>The details for the request.</p>"
    },
    "ResponseDetails": {
      "type": "structure",
      "members": {
        "ExportAssetToSignedUrl": {
          "shape": "ExportAssetToSignedUrlResponseDetails",
          "documentation": "<p>Details for the export to signed URL response.</p>"
        },
        "ExportAssetsToS3": {
          "shape": "ExportAssetsToS3ResponseDetails",
          "documentation": "<p>Details for the export to Amazon S3 response.</p>"
        },
        "ImportAssetFromSignedUrl": {
          "shape": "ImportAssetFromSignedUrlResponseDetails",
          "documentation": "<p>Details for the import from signed URL response.</p>"
        },
        "ImportAssetsFromS3": {
          "shape": "ImportAssetsFromS3ResponseDetails",
          "documentation": "<p>Details for the import from Amazon S3 response.</p>"
        }
      },
      "documentation": "<p>Details for the response.</p>"
    },
    "RevisionEntry": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the revision.</p>"
        },
        "Comment": {
          "shape": "__stringMin0Max16384",
          "documentation": "<p>An optional comment about the revision.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the revision was created, in ISO 8601 format.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this revision.</p>"
        },
        "Finalized": {
          "shape": "__boolean",
          "documentation": "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>"
        }
      },
      "documentation": "<p>A revision is a container for one or more assets.</p>",
      "required": [
        "CreatedAt",
        "DataSetId",
        "Id",
        "Arn",
        "UpdatedAt"
      ]
    },
    "S3SnapshotAsset": {
      "type": "structure",
      "members": {
        "Size": {
          "shape": "__doubleMin0",
          "documentation": "<p>The size of the S3 object that is the object.</p>"
        }
      },
      "documentation": "<p>The S3 object that is the asset.</p>",
      "required": [
        "Size"
      ]
    },
    "ServerSideEncryptionTypes": {
      "type": "string",
      "documentation": "<p>The types of encryption supported in export jobs to Amazon S3.</p>",
      "enum": [
        "aws:kms",
        "AES256"
      ]
    },
    "StartJobRequest": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "JobId",
          "documentation": "<p>The unique identifier for a job.</p>"
        }
      },
      "required": [
        "JobId"
      ]
    },
    "StartJobResponse": {
      "type": "structure",
      "members": {}
    },
    "State": {
      "type": "string",
      "enum": [
        "WAITING",
        "IN_PROGRESS",
        "ERROR",
        "COMPLETED",
        "CANCELLED",
        "TIMED_OUT"
      ]
    },
    "TagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>"
        },
        "Tags": {
          "shape": "MapOf__string",
          "locationName": "tags",
          "documentation": "A label that consists of a customer-defined key and an optional value."
        }
      },
      "documentation": "<p>The request body for TagResource.</p>",
      "required": [
        "ResourceArn",
        "Tags"
      ]
    },
    "Timestamp": {
      "type": "timestamp",
      "documentation": "<p>Dates and times in AWS Data Exchange are recorded in ISO 8601 format.</p>",
      "timestampFormat": "iso8601"
    },
    "Type": {
      "type": "string",
      "enum": [
        "IMPORT_ASSETS_FROM_S3",
        "IMPORT_ASSET_FROM_SIGNED_URL",
        "EXPORT_ASSETS_TO_S3",
        "EXPORT_ASSET_TO_SIGNED_URL"
      ]
    },
    "UntagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>"
        },
        "TagKeys": {
          "shape": "ListOf__string",
          "location": "querystring",
          "locationName": "tagKeys",
          "documentation": "The key tags."
        }
      },
      "required": [
        "TagKeys",
        "ResourceArn"
      ]
    },
    "UpdateAssetRequest": {
      "type": "structure",
      "members": {
        "AssetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "AssetId",
          "documentation": "<p>The unique identifier for an asset.</p>"
        },
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "Name": {
          "shape": "AssetName",
          "documentation": "<p>The name of the asset. When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key.</p>"
        },
        "RevisionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "RevisionId",
          "documentation": "<p>The unique identifier for a revision.</p>"
        }
      },
      "documentation": "<p>The request body for UpdateAsset.</p>",
      "required": [
        "RevisionId",
        "AssetId",
        "DataSetId",
        "Name"
      ]
    },
    "UpdateAssetResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the asset.</p>"
        },
        "AssetDetails": {
          "shape": "AssetDetails",
          "documentation": "<p>Information about the asset, including its size.</p>"
        },
        "AssetType": {
          "shape": "AssetType",
          "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the asset was created, in ISO 8601 format.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this asset.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the asset.</p>"
        },
        "Name": {
          "shape": "AssetName",
          "documentation": "<p>The name of the asset When importing from Amazon S3, the S3 object key is used as the asset name. When exporting to Amazon S3, the asset name is used as default target S3 object key.</p>"
        },
        "RevisionId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision associated with this asset.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This parameter is returned when an asset owner is viewing the entitled copy of its owned asset.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the asset was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "UpdateDataSetRequest": {
      "type": "structure",
      "members": {
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description for the data set.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the data set.</p>"
        }
      },
      "documentation": "<p>The request body for UpdateDataSet.</p>",
      "required": [
        "DataSetId"
      ]
    },
    "UpdateDataSetResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the data set.</p>"
        },
        "AssetType": {
          "shape": "AssetType",
          "documentation": "<p>The type of file your data is stored in. Currently, the supported asset type is S3_SNAPSHOT.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the data set was created, in ISO 8601 format.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description for the data set.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the data set.</p>"
        },
        "Origin": {
          "shape": "Origin",
          "documentation": "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED to the account (for subscribers).</p>"
        },
        "OriginDetails": {
          "shape": "OriginDetails",
          "documentation": "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS Marketplace.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The data set ID of the owned data set corresponding to the entitled data set being viewed. This parameter is returned when a data set owner is viewing the entitled copy of its owned data set.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the data set was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "UpdateRevisionRequest": {
      "type": "structure",
      "members": {
        "Comment": {
          "shape": "__stringMin0Max16384",
          "documentation": "<p>An optional comment about the revision.</p>"
        },
        "DataSetId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "DataSetId",
          "documentation": "<p>The unique identifier for a data set.</p>"
        },
        "Finalized": {
          "shape": "__boolean",
          "documentation": "<p>Finalizing a revision tells AWS Data Exchange that your changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p>"
        },
        "RevisionId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "RevisionId",
          "documentation": "<p>The unique identifier for a revision.</p>"
        }
      },
      "documentation": "<p>The request body for UpdateRevision.</p>",
      "required": [
        "RevisionId",
        "DataSetId"
      ]
    },
    "UpdateRevisionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the revision.</p>"
        },
        "Comment": {
          "shape": "__stringMin0Max16384",
          "documentation": "<p>An optional comment about the revision.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the revision was created, in ISO 8601 format.</p>"
        },
        "DataSetId": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the data set associated with this revision.</p>"
        },
        "Finalized": {
          "shape": "__boolean",
          "documentation": "<p>To publish a revision to a data set in a product, the revision must first be finalized. Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision are complete. After it's in this read-only state, you can publish the revision to your products.</p> <p>Finalized revisions can be published through the AWS Data Exchange console or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action. When using the API, revisions are uniquely identified by their ARN.</p>"
        },
        "Id": {
          "shape": "Id",
          "documentation": "<p>The unique identifier for the revision.</p>"
        },
        "SourceId": {
          "shape": "Id",
          "documentation": "<p>The revision ID of the owned revision corresponding to the entitled revision being viewed. This parameter is returned when a revision owner is viewing the entitled copy of its owned revision.</p>"
        },
        "UpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>"
        }
      }
    },
    "__boolean": {
      "type": "boolean"
    },
    "__double": {
      "type": "double"
    },
    "__doubleMin0": {
      "type": "double"
    },
    "ListOfAssetEntry": {
      "type": "list",
      "member": {
        "shape": "AssetEntry"
      }
    },
    "ListOfDataSetEntry": {
      "type": "list",
      "member": {
        "shape": "DataSetEntry"
      }
    },
    "ListOfJobEntry": {
      "type": "list",
      "member": {
        "shape": "JobEntry"
      }
    },
    "ListOfJobError": {
      "type": "list",
      "member": {
        "shape": "JobError"
      }
    },
    "ListOfRevisionEntry": {
      "type": "list",
      "member": {
        "shape": "RevisionEntry"
      }
    },
    "ListOf__string": {
      "type": "list",
      "member": {
        "shape": "__string"
      }
    },
    "MapOf__string": {
      "type": "map",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "__string"
      }
    },
    "__string": {
      "type": "string"
    },
    "__stringMin0Max16384": {
      "type": "string",
      "min": 0,
      "max": 16384
    },
    "__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093": {
      "type": "string",
      "min": 24,
      "max": 24,
      "pattern": "/^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$/"
    }
  },
  "documentation": "<p>AWS Data Exchange is a service that makes it easy for AWS customers to exchange data in the cloud. You can use the AWS Data Exchange APIs to create, update, manage, and access file-based data set in the AWS Cloud.</p><p>As a subscriber, you can view and access the data sets that you have an entitlement to through a subscription. You can use the APIS to download or copy your entitled data sets to Amazon S3 for use across a variety of AWS analytics and machine learning services.</p><p>As a provider, you can create and manage your data sets that you would like to publish to a product. Being able to package and provide your data sets into products requires a few steps to determine eligibility. For more information, visit the AWS Data Exchange User Guide.</p><p>A data set is a collection of data that can be changed or updated over time. Data sets can be updated using revisions, which represent a new version or incremental change to a data set.  A revision contains one or more assets. An asset in AWS Data Exchange is a piece of data that can be stored as an Amazon S3 object. The asset can be a structured data file, an image file, or some other data file. Jobs are asynchronous import or export operations used to create or copy assets.</p>"
}
]===]))