local decode = require("cjson").new().decode
return assert(decode([===[
{
  "documentation": "AWS Elemental MediaPackage VOD",
  "metadata": {
    "apiVersion": "2018-11-07",
    "endpointPrefix": "mediapackage-vod",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "MediaPackage Vod",
    "serviceFullName": "AWS Elemental MediaPackage VOD",
    "serviceId": "MediaPackage Vod",
    "signatureVersion": "v4",
    "signingName": "mediapackage-vod",
    "uid": "mediapackage-vod-2018-11-07"
  },
  "operations": {
    "CreateAsset": {
      "documentation": "Creates a new MediaPackage VOD Asset resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "POST",
        "requestUri": "/assets",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateAssetRequest"
      },
      "name": "CreateAsset",
      "output": {
        "documentation": "The new MediaPackage VOD Asset resource.",
        "shape": "CreateAssetResponse"
      }
    },
    "CreatePackagingConfiguration": {
      "documentation": "Creates a new MediaPackage VOD PackagingConfiguration resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "POST",
        "requestUri": "/packaging_configurations",
        "responseCode": 200
      },
      "input": {
        "shape": "CreatePackagingConfigurationRequest"
      },
      "name": "CreatePackagingConfiguration",
      "output": {
        "documentation": "The new MediaPackage VOD PackagingConfiguration resource.",
        "shape": "CreatePackagingConfigurationResponse"
      }
    },
    "CreatePackagingGroup": {
      "documentation": "Creates a new MediaPackage VOD PackagingGroup resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "POST",
        "requestUri": "/packaging_groups",
        "responseCode": 200
      },
      "input": {
        "shape": "CreatePackagingGroupRequest"
      },
      "name": "CreatePackagingGroup",
      "output": {
        "documentation": "The new MediaPackage VOD PackagingGroup resource.",
        "shape": "CreatePackagingGroupResponse"
      }
    },
    "DeleteAsset": {
      "documentation": "Deletes an existing MediaPackage VOD Asset resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "DELETE",
        "requestUri": "/assets/{id}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteAssetRequest"
      },
      "name": "DeleteAsset",
      "output": {
        "documentation": "The MediaPackage VOD Asset resource has been deleted.",
        "shape": "DeleteAssetResponse"
      }
    },
    "DeletePackagingConfiguration": {
      "documentation": "Deletes a MediaPackage VOD PackagingConfiguration resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "DELETE",
        "requestUri": "/packaging_configurations/{id}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeletePackagingConfigurationRequest"
      },
      "name": "DeletePackagingConfiguration",
      "output": {
        "documentation": "The MediaPackage VOD PackagingConfiguration resource has been deleted.",
        "shape": "DeletePackagingConfigurationResponse"
      }
    },
    "DeletePackagingGroup": {
      "documentation": "Deletes a MediaPackage VOD PackagingGroup resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "DELETE",
        "requestUri": "/packaging_groups/{id}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeletePackagingGroupRequest"
      },
      "name": "DeletePackagingGroup",
      "output": {
        "documentation": "The MediaPackage VOD PackagingGroup resource has been deleted.",
        "shape": "DeletePackagingGroupResponse"
      }
    },
    "DescribeAsset": {
      "documentation": "Returns a description of a MediaPackage VOD Asset resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "GET",
        "requestUri": "/assets/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeAssetRequest"
      },
      "name": "DescribeAsset",
      "output": {
        "documentation": "A MediaPackage VOD Asset resource.",
        "shape": "DescribeAssetResponse"
      }
    },
    "DescribePackagingConfiguration": {
      "documentation": "Returns a description of a MediaPackage VOD PackagingConfiguration resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "GET",
        "requestUri": "/packaging_configurations/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribePackagingConfigurationRequest"
      },
      "name": "DescribePackagingConfiguration",
      "output": {
        "documentation": "A MediaPackage VOD PackagingConfiguration resource.",
        "shape": "DescribePackagingConfigurationResponse"
      }
    },
    "DescribePackagingGroup": {
      "documentation": "Returns a description of a MediaPackage VOD PackagingGroup resource.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "GET",
        "requestUri": "/packaging_groups/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribePackagingGroupRequest"
      },
      "name": "DescribePackagingGroup",
      "output": {
        "documentation": "A MediaPackage VOD PackagingGroup resource.",
        "shape": "DescribePackagingGroupResponse"
      }
    },
    "ListAssets": {
      "documentation": "Returns a collection of MediaPackage VOD Asset resources.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "GET",
        "requestUri": "/assets",
        "responseCode": 200
      },
      "input": {
        "shape": "ListAssetsRequest"
      },
      "name": "ListAssets",
      "output": {
        "documentation": "A collection of MediaPackage VOD Asset resources.",
        "shape": "ListAssetsResponse"
      }
    },
    "ListPackagingConfigurations": {
      "documentation": "Returns a collection of MediaPackage VOD PackagingConfiguration resources.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "GET",
        "requestUri": "/packaging_configurations",
        "responseCode": 200
      },
      "input": {
        "shape": "ListPackagingConfigurationsRequest"
      },
      "name": "ListPackagingConfigurations",
      "output": {
        "documentation": "A collection of MediaPackage VOD PackagingConfiguration resources.",
        "shape": "ListPackagingConfigurationsResponse"
      }
    },
    "ListPackagingGroups": {
      "documentation": "Returns a collection of MediaPackage VOD PackagingGroup resources.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "GET",
        "requestUri": "/packaging_groups",
        "responseCode": 200
      },
      "input": {
        "shape": "ListPackagingGroupsRequest"
      },
      "name": "ListPackagingGroups",
      "output": {
        "documentation": "A collection of MediaPackage VOD PackagingGroup resources.",
        "shape": "ListPackagingGroupsResponse"
      }
    },
    "ListTagsForResource": {
      "documentation": "Returns a list of the tags assigned to the specified resource.",
      "errors": [],
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "name": "ListTagsForResource",
      "output": {
        "documentation": "200 response",
        "shape": "ListTagsForResourceResponse"
      }
    },
    "TagResource": {
      "documentation": "Adds tags to the specified resource. You can specify one or more tags to add.",
      "errors": [],
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "name": "TagResource"
    },
    "UntagResource": {
      "documentation": "Removes tags from the specified resource. You can specify one or more tags to remove.",
      "errors": [],
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "name": "UntagResource"
    },
    "UpdatePackagingGroup": {
      "documentation": "Updates a specific packaging group. You can't change the id attribute or any other system-generated attributes.",
      "errors": [
        {
          "shape": "UnprocessableEntityException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "ForbiddenException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "http": {
        "method": "PUT",
        "requestUri": "/packaging_groups/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdatePackagingGroupRequest"
      },
      "name": "UpdatePackagingGroup",
      "output": {
        "documentation": "The updated MediaPackage VOD PackagingGroup resource.",
        "shape": "UpdatePackagingGroupResponse"
      }
    }
  },
  "shapes": {
    "AdMarkers": {
      "enum": [
        "NONE",
        "SCTE35_ENHANCED",
        "PASSTHROUGH"
      ],
      "type": "string"
    },
    "AssetShallow": {
      "documentation": "A MediaPackage VOD Asset resource.",
      "members": {
        "Arn": {
          "documentation": "The ARN of the Asset.",
          "locationName": "arn",
          "shape": "__string"
        },
        "CreatedAt": {
          "documentation": "The time the Asset was initially submitted for Ingest.",
          "locationName": "createdAt",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The unique identifier for the Asset.",
          "locationName": "id",
          "shape": "__string"
        },
        "PackagingGroupId": {
          "documentation": "The ID of the PackagingGroup for the Asset.",
          "locationName": "packagingGroupId",
          "shape": "__string"
        },
        "ResourceId": {
          "documentation": "The resource ID to include in SPEKE key requests.",
          "locationName": "resourceId",
          "shape": "__string"
        },
        "SourceArn": {
          "documentation": "ARN of the source object in S3.",
          "locationName": "sourceArn",
          "shape": "__string"
        },
        "SourceRoleArn": {
          "documentation": "The IAM role ARN used to access the source S3 bucket.",
          "locationName": "sourceRoleArn",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "Authorization": {
      "documentation": "CDN Authorization credentials",
      "members": {
        "CdnIdentifierSecret": {
          "documentation": "The Amazon Resource Name (ARN) for the secret in AWS Secrets Manager that is used for CDN authorization.",
          "locationName": "cdnIdentifierSecret",
          "shape": "__string"
        },
        "SecretsRoleArn": {
          "documentation": "The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.",
          "locationName": "secretsRoleArn",
          "shape": "__string"
        }
      },
      "required": [
        "SecretsRoleArn",
        "CdnIdentifierSecret"
      ],
      "type": "structure"
    },
    "CmafEncryption": {
      "documentation": "A CMAF encryption configuration.",
      "members": {
        "SpekeKeyProvider": {
          "locationName": "spekeKeyProvider",
          "shape": "SpekeKeyProvider"
        }
      },
      "required": [
        "SpekeKeyProvider"
      ],
      "type": "structure"
    },
    "CmafPackage": {
      "documentation": "A CMAF packaging configuration.",
      "members": {
        "Encryption": {
          "locationName": "encryption",
          "shape": "CmafEncryption"
        },
        "HlsManifests": {
          "documentation": "A list of HLS manifest configurations.",
          "locationName": "hlsManifests",
          "shape": "__listOfHlsManifest"
        },
        "SegmentDurationSeconds": {
          "documentation": "Duration (in seconds) of each fragment. Actual fragments will be\nrounded to the nearest multiple of the source fragment duration.\n",
          "locationName": "segmentDurationSeconds",
          "shape": "__integer"
        }
      },
      "required": [
        "HlsManifests"
      ],
      "type": "structure"
    },
    "CreateAssetRequest": {
      "documentation": "A new MediaPackage VOD Asset configuration.",
      "members": {
        "Id": {
          "documentation": "The unique identifier for the Asset.",
          "locationName": "id",
          "shape": "__string"
        },
        "PackagingGroupId": {
          "documentation": "The ID of the PackagingGroup for the Asset.",
          "locationName": "packagingGroupId",
          "shape": "__string"
        },
        "ResourceId": {
          "documentation": "The resource ID to include in SPEKE key requests.",
          "locationName": "resourceId",
          "shape": "__string"
        },
        "SourceArn": {
          "documentation": "ARN of the source object in S3.",
          "locationName": "sourceArn",
          "shape": "__string"
        },
        "SourceRoleArn": {
          "documentation": "The IAM role ARN used to access the source S3 bucket.",
          "locationName": "sourceRoleArn",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "required": [
        "SourceArn",
        "Id",
        "PackagingGroupId",
        "SourceRoleArn"
      ],
      "type": "structure"
    },
    "CreateAssetResponse": {
      "members": {
        "Arn": {
          "documentation": "The ARN of the Asset.",
          "locationName": "arn",
          "shape": "__string"
        },
        "CreatedAt": {
          "documentation": "The time the Asset was initially submitted for Ingest.",
          "locationName": "createdAt",
          "shape": "__string"
        },
        "EgressEndpoints": {
          "documentation": "The list of egress endpoints available for the Asset.",
          "locationName": "egressEndpoints",
          "shape": "__listOfEgressEndpoint"
        },
        "Id": {
          "documentation": "The unique identifier for the Asset.",
          "locationName": "id",
          "shape": "__string"
        },
        "PackagingGroupId": {
          "documentation": "The ID of the PackagingGroup for the Asset.",
          "locationName": "packagingGroupId",
          "shape": "__string"
        },
        "ResourceId": {
          "documentation": "The resource ID to include in SPEKE key requests.",
          "locationName": "resourceId",
          "shape": "__string"
        },
        "SourceArn": {
          "documentation": "ARN of the source object in S3.",
          "locationName": "sourceArn",
          "shape": "__string"
        },
        "SourceRoleArn": {
          "documentation": "The IAM role_arn used to access the source S3 bucket.",
          "locationName": "sourceRoleArn",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "CreatePackagingConfigurationRequest": {
      "documentation": "A new MediaPackage VOD PackagingConfiguration resource configuration.",
      "members": {
        "CmafPackage": {
          "locationName": "cmafPackage",
          "shape": "CmafPackage"
        },
        "DashPackage": {
          "locationName": "dashPackage",
          "shape": "DashPackage"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the PackagingConfiguration.",
          "locationName": "id",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "PackagingGroupId": {
          "documentation": "The ID of a PackagingGroup.",
          "locationName": "packagingGroupId",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "required": [
        "Id",
        "PackagingGroupId"
      ],
      "type": "structure"
    },
    "CreatePackagingConfigurationResponse": {
      "members": {
        "Arn": {
          "documentation": "The ARN of the PackagingConfiguration.",
          "locationName": "arn",
          "shape": "__string"
        },
        "CmafPackage": {
          "locationName": "cmafPackage",
          "shape": "CmafPackage"
        },
        "DashPackage": {
          "locationName": "dashPackage",
          "shape": "DashPackage"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the PackagingConfiguration.",
          "locationName": "id",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "PackagingGroupId": {
          "documentation": "The ID of a PackagingGroup.",
          "locationName": "packagingGroupId",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "CreatePackagingGroupRequest": {
      "documentation": "A new MediaPackage VOD PackagingGroup resource configuration.",
      "members": {
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "Id": {
          "documentation": "The ID of the PackagingGroup.",
          "locationName": "id",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "CreatePackagingGroupResponse": {
      "members": {
        "Arn": {
          "documentation": "The ARN of the PackagingGroup.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "DomainName": {
          "documentation": "The fully qualified domain name for Assets in the PackagingGroup.",
          "locationName": "domainName",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the PackagingGroup.",
          "locationName": "id",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "DashEncryption": {
      "documentation": "A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.",
      "members": {
        "SpekeKeyProvider": {
          "locationName": "spekeKeyProvider",
          "shape": "SpekeKeyProvider"
        }
      },
      "required": [
        "SpekeKeyProvider"
      ],
      "type": "structure"
    },
    "DashManifest": {
      "documentation": "A DASH manifest configuration.",
      "members": {
        "ManifestLayout": {
          "documentation": "Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level.",
          "locationName": "manifestLayout",
          "shape": "ManifestLayout"
        },
        "ManifestName": {
          "documentation": "An optional string to include in the name of the manifest.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "MinBufferTimeSeconds": {
          "documentation": "Minimum duration (in seconds) that a player will buffer media before starting the presentation.",
          "locationName": "minBufferTimeSeconds",
          "shape": "__integer"
        },
        "Profile": {
          "documentation": "The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to \"HBBTV_1_5\", HbbTV 1.5 compliant output is enabled.",
          "locationName": "profile",
          "shape": "Profile"
        },
        "StreamSelection": {
          "locationName": "streamSelection",
          "shape": "StreamSelection"
        }
      },
      "type": "structure"
    },
    "DashPackage": {
      "documentation": "A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.",
      "members": {
        "DashManifests": {
          "documentation": "A list of DASH manifest configurations.",
          "locationName": "dashManifests",
          "shape": "__listOfDashManifest"
        },
        "Encryption": {
          "locationName": "encryption",
          "shape": "DashEncryption"
        },
        "PeriodTriggers": {
          "documentation": "A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)\nMedia Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not\nbe partitioned into more than one period. If the list contains \"ADS\", new periods will be created where\nthe Asset contains SCTE-35 ad markers.\n",
          "locationName": "periodTriggers",
          "shape": "__listOf__PeriodTriggersElement"
        },
        "SegmentDurationSeconds": {
          "documentation": "Duration (in seconds) of each segment. Actual segments will be\nrounded to the nearest multiple of the source segment duration.\n",
          "locationName": "segmentDurationSeconds",
          "shape": "__integer"
        },
        "SegmentTemplateFormat": {
          "documentation": "Determines the type of SegmentTemplate included in the Media Presentation Description (MPD).  When set to NUMBER_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Number$ media URLs.  When set to TIME_WITH_TIMELINE, a full timeline is presented in each SegmentTemplate, with $Time$ media URLs. When set to NUMBER_WITH_DURATION, only a duration is included in each SegmentTemplate, with $Number$ media URLs.",
          "locationName": "segmentTemplateFormat",
          "shape": "SegmentTemplateFormat"
        }
      },
      "required": [
        "DashManifests"
      ],
      "type": "structure"
    },
    "DeleteAssetRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of the MediaPackage VOD Asset resource to delete.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "DeleteAssetResponse": {
      "members": {},
      "type": "structure"
    },
    "DeletePackagingConfigurationRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of the MediaPackage VOD PackagingConfiguration resource to delete.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "DeletePackagingConfigurationResponse": {
      "members": {},
      "type": "structure"
    },
    "DeletePackagingGroupRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of the MediaPackage VOD PackagingGroup resource to delete.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "DeletePackagingGroupResponse": {
      "members": {},
      "type": "structure"
    },
    "DescribeAssetRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of an MediaPackage VOD Asset resource.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "DescribeAssetResponse": {
      "members": {
        "Arn": {
          "documentation": "The ARN of the Asset.",
          "locationName": "arn",
          "shape": "__string"
        },
        "CreatedAt": {
          "documentation": "The time the Asset was initially submitted for Ingest.",
          "locationName": "createdAt",
          "shape": "__string"
        },
        "EgressEndpoints": {
          "documentation": "The list of egress endpoints available for the Asset.",
          "locationName": "egressEndpoints",
          "shape": "__listOfEgressEndpoint"
        },
        "Id": {
          "documentation": "The unique identifier for the Asset.",
          "locationName": "id",
          "shape": "__string"
        },
        "PackagingGroupId": {
          "documentation": "The ID of the PackagingGroup for the Asset.",
          "locationName": "packagingGroupId",
          "shape": "__string"
        },
        "ResourceId": {
          "documentation": "The resource ID to include in SPEKE key requests.",
          "locationName": "resourceId",
          "shape": "__string"
        },
        "SourceArn": {
          "documentation": "ARN of the source object in S3.",
          "locationName": "sourceArn",
          "shape": "__string"
        },
        "SourceRoleArn": {
          "documentation": "The IAM role_arn used to access the source S3 bucket.",
          "locationName": "sourceRoleArn",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "DescribePackagingConfigurationRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of a MediaPackage VOD PackagingConfiguration resource.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "DescribePackagingConfigurationResponse": {
      "members": {
        "Arn": {
          "documentation": "The ARN of the PackagingConfiguration.",
          "locationName": "arn",
          "shape": "__string"
        },
        "CmafPackage": {
          "locationName": "cmafPackage",
          "shape": "CmafPackage"
        },
        "DashPackage": {
          "locationName": "dashPackage",
          "shape": "DashPackage"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the PackagingConfiguration.",
          "locationName": "id",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "PackagingGroupId": {
          "documentation": "The ID of a PackagingGroup.",
          "locationName": "packagingGroupId",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "DescribePackagingGroupRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of a MediaPackage VOD PackagingGroup resource.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "DescribePackagingGroupResponse": {
      "members": {
        "Arn": {
          "documentation": "The ARN of the PackagingGroup.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "DomainName": {
          "documentation": "The fully qualified domain name for Assets in the PackagingGroup.",
          "locationName": "domainName",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the PackagingGroup.",
          "locationName": "id",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "EgressEndpoint": {
      "documentation": "The endpoint URL used to access an Asset using one PackagingConfiguration.",
      "members": {
        "PackagingConfigurationId": {
          "documentation": "The ID of the PackagingConfiguration being applied to the Asset.",
          "locationName": "packagingConfigurationId",
          "shape": "__string"
        },
        "Url": {
          "documentation": "The URL of the parent manifest for the repackaged Asset.",
          "locationName": "url",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "EncryptionMethod": {
      "enum": [
        "AES_128",
        "SAMPLE_AES"
      ],
      "type": "string"
    },
    "HlsEncryption": {
      "documentation": "An HTTP Live Streaming (HLS) encryption configuration.",
      "members": {
        "ConstantInitializationVector": {
          "documentation": "A constant initialization vector for encryption (optional).\nWhen not specified the initialization vector will be periodically rotated.\n",
          "locationName": "constantInitializationVector",
          "shape": "__string"
        },
        "EncryptionMethod": {
          "documentation": "The encryption method to use.",
          "locationName": "encryptionMethod",
          "shape": "EncryptionMethod"
        },
        "SpekeKeyProvider": {
          "locationName": "spekeKeyProvider",
          "shape": "SpekeKeyProvider"
        }
      },
      "required": [
        "SpekeKeyProvider"
      ],
      "type": "structure"
    },
    "HlsManifest": {
      "documentation": "An HTTP Live Streaming (HLS) manifest configuration.",
      "members": {
        "AdMarkers": {
          "documentation": "This setting controls how ad markers are included in the packaged OriginEndpoint.\n\"NONE\" will omit all SCTE-35 ad markers from the output.\n\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad\nmarkers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.\n\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35\nmessages in the input source.\n",
          "locationName": "adMarkers",
          "shape": "AdMarkers"
        },
        "IncludeIframeOnlyStream": {
          "documentation": "When enabled, an I-Frame only stream will be included in the output.",
          "locationName": "includeIframeOnlyStream",
          "shape": "__boolean"
        },
        "ManifestName": {
          "documentation": "An optional string to include in the name of the manifest.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "ProgramDateTimeIntervalSeconds": {
          "documentation": "The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag\ninserted into manifests. Additionally, when an interval is specified\nID3Timed Metadata messages will be generated every 5 seconds using the\ningest time of the content.\nIf the interval is not specified, or set to 0, then\nno EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no\nID3Timed Metadata messages will be generated. Note that irrespective\nof this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,\nit will be passed through to HLS output.\n",
          "locationName": "programDateTimeIntervalSeconds",
          "shape": "__integer"
        },
        "RepeatExtXKey": {
          "documentation": "When enabled, the EXT-X-KEY tag will be repeated in output manifests.",
          "locationName": "repeatExtXKey",
          "shape": "__boolean"
        },
        "StreamSelection": {
          "locationName": "streamSelection",
          "shape": "StreamSelection"
        }
      },
      "type": "structure"
    },
    "HlsPackage": {
      "documentation": "An HTTP Live Streaming (HLS) packaging configuration.",
      "members": {
        "Encryption": {
          "locationName": "encryption",
          "shape": "HlsEncryption"
        },
        "HlsManifests": {
          "documentation": "A list of HLS manifest configurations.",
          "locationName": "hlsManifests",
          "shape": "__listOfHlsManifest"
        },
        "SegmentDurationSeconds": {
          "documentation": "Duration (in seconds) of each fragment. Actual fragments will be\nrounded to the nearest multiple of the source fragment duration.\n",
          "locationName": "segmentDurationSeconds",
          "shape": "__integer"
        },
        "UseAudioRenditionGroup": {
          "documentation": "When enabled, audio streams will be placed in rendition groups in the output.",
          "locationName": "useAudioRenditionGroup",
          "shape": "__boolean"
        }
      },
      "required": [
        "HlsManifests"
      ],
      "type": "structure"
    },
    "ListAssetsRequest": {
      "members": {
        "MaxResults": {
          "documentation": "Upper bound on number of records to return.",
          "location": "querystring",
          "locationName": "maxResults",
          "shape": "MaxResults"
        },
        "NextToken": {
          "documentation": "A token used to resume pagination from the end of a previous request.",
          "location": "querystring",
          "locationName": "nextToken",
          "shape": "__string"
        },
        "PackagingGroupId": {
          "documentation": "Returns Assets associated with the specified PackagingGroup.",
          "location": "querystring",
          "locationName": "packagingGroupId",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListAssetsResponse": {
      "members": {
        "Assets": {
          "documentation": "A list of MediaPackage VOD Asset resources.",
          "locationName": "assets",
          "shape": "__listOfAssetShallow"
        },
        "NextToken": {
          "documentation": "A token that can be used to resume pagination from the end of the collection.",
          "locationName": "nextToken",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListPackagingConfigurationsRequest": {
      "members": {
        "MaxResults": {
          "documentation": "Upper bound on number of records to return.",
          "location": "querystring",
          "locationName": "maxResults",
          "shape": "MaxResults"
        },
        "NextToken": {
          "documentation": "A token used to resume pagination from the end of a previous request.",
          "location": "querystring",
          "locationName": "nextToken",
          "shape": "__string"
        },
        "PackagingGroupId": {
          "documentation": "Returns MediaPackage VOD PackagingConfigurations associated with the specified PackagingGroup.",
          "location": "querystring",
          "locationName": "packagingGroupId",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListPackagingConfigurationsResponse": {
      "members": {
        "NextToken": {
          "documentation": "A token that can be used to resume pagination from the end of the collection.",
          "locationName": "nextToken",
          "shape": "__string"
        },
        "PackagingConfigurations": {
          "documentation": "A list of MediaPackage VOD PackagingConfiguration resources.",
          "locationName": "packagingConfigurations",
          "shape": "__listOfPackagingConfiguration"
        }
      },
      "type": "structure"
    },
    "ListPackagingGroupsRequest": {
      "members": {
        "MaxResults": {
          "documentation": "Upper bound on number of records to return.",
          "location": "querystring",
          "locationName": "maxResults",
          "shape": "MaxResults"
        },
        "NextToken": {
          "documentation": "A token used to resume pagination from the end of a previous request.",
          "location": "querystring",
          "locationName": "nextToken",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListPackagingGroupsResponse": {
      "members": {
        "NextToken": {
          "documentation": "A token that can be used to resume pagination from the end of the collection.",
          "locationName": "nextToken",
          "shape": "__string"
        },
        "PackagingGroups": {
          "documentation": "A list of MediaPackage VOD PackagingGroup resources.",
          "locationName": "packagingGroups",
          "shape": "__listOfPackagingGroup"
        }
      },
      "type": "structure"
    },
    "ListTagsForResourceRequest": {
      "members": {
        "ResourceArn": {
          "documentation": "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.",
          "location": "uri",
          "locationName": "resource-arn",
          "shape": "__string"
        }
      },
      "required": [
        "ResourceArn"
      ],
      "type": "structure"
    },
    "ListTagsForResourceResponse": {
      "members": {
        "Tags": {
          "documentation": "A collection of tags associated with a resource",
          "locationName": "tags",
          "shape": "__mapOf__string"
        }
      },
      "type": "structure"
    },
    "ManifestLayout": {
      "enum": [
        "FULL",
        "COMPACT"
      ],
      "type": "string"
    },
    "MaxResults": {
      "max": 1000,
      "min": 1,
      "type": "integer"
    },
    "MssEncryption": {
      "documentation": "A Microsoft Smooth Streaming (MSS) encryption configuration.",
      "members": {
        "SpekeKeyProvider": {
          "locationName": "spekeKeyProvider",
          "shape": "SpekeKeyProvider"
        }
      },
      "required": [
        "SpekeKeyProvider"
      ],
      "type": "structure"
    },
    "MssManifest": {
      "documentation": "A Microsoft Smooth Streaming (MSS) manifest configuration.",
      "members": {
        "ManifestName": {
          "documentation": "An optional string to include in the name of the manifest.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "StreamSelection": {
          "locationName": "streamSelection",
          "shape": "StreamSelection"
        }
      },
      "type": "structure"
    },
    "MssPackage": {
      "documentation": "A Microsoft Smooth Streaming (MSS) PackagingConfiguration.",
      "members": {
        "Encryption": {
          "locationName": "encryption",
          "shape": "MssEncryption"
        },
        "MssManifests": {
          "documentation": "A list of MSS manifest configurations.",
          "locationName": "mssManifests",
          "shape": "__listOfMssManifest"
        },
        "SegmentDurationSeconds": {
          "documentation": "The duration (in seconds) of each segment.",
          "locationName": "segmentDurationSeconds",
          "shape": "__integer"
        }
      },
      "required": [
        "MssManifests"
      ],
      "type": "structure"
    },
    "PackagingConfiguration": {
      "documentation": "A MediaPackage VOD PackagingConfiguration resource.",
      "members": {
        "Arn": {
          "documentation": "The ARN of the PackagingConfiguration.",
          "locationName": "arn",
          "shape": "__string"
        },
        "CmafPackage": {
          "locationName": "cmafPackage",
          "shape": "CmafPackage"
        },
        "DashPackage": {
          "locationName": "dashPackage",
          "shape": "DashPackage"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the PackagingConfiguration.",
          "locationName": "id",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "PackagingGroupId": {
          "documentation": "The ID of a PackagingGroup.",
          "locationName": "packagingGroupId",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "PackagingGroup": {
      "documentation": "A MediaPackage VOD PackagingGroup resource.",
      "members": {
        "Arn": {
          "documentation": "The ARN of the PackagingGroup.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "DomainName": {
          "documentation": "The fully qualified domain name for Assets in the PackagingGroup.",
          "locationName": "domainName",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the PackagingGroup.",
          "locationName": "id",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "Profile": {
      "enum": [
        "NONE",
        "HBBTV_1_5"
      ],
      "type": "string"
    },
    "SegmentTemplateFormat": {
      "enum": [
        "NUMBER_WITH_TIMELINE",
        "TIME_WITH_TIMELINE",
        "NUMBER_WITH_DURATION"
      ],
      "type": "string"
    },
    "SpekeKeyProvider": {
      "documentation": "A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.",
      "members": {
        "RoleArn": {
          "documentation": "An Amazon Resource Name (ARN) of an IAM role that AWS Elemental\nMediaPackage will assume when accessing the key provider service.\n",
          "locationName": "roleArn",
          "shape": "__string"
        },
        "SystemIds": {
          "documentation": "The system IDs to include in key requests.",
          "locationName": "systemIds",
          "shape": "__listOf__string"
        },
        "Url": {
          "documentation": "The URL of the external key provider service.",
          "locationName": "url",
          "shape": "__string"
        }
      },
      "required": [
        "SystemIds",
        "Url",
        "RoleArn"
      ],
      "type": "structure"
    },
    "StreamOrder": {
      "enum": [
        "ORIGINAL",
        "VIDEO_BITRATE_ASCENDING",
        "VIDEO_BITRATE_DESCENDING"
      ],
      "type": "string"
    },
    "StreamSelection": {
      "documentation": "A StreamSelection configuration.",
      "members": {
        "MaxVideoBitsPerSecond": {
          "documentation": "The maximum video bitrate (bps) to include in output.",
          "locationName": "maxVideoBitsPerSecond",
          "shape": "__integer"
        },
        "MinVideoBitsPerSecond": {
          "documentation": "The minimum video bitrate (bps) to include in output.",
          "locationName": "minVideoBitsPerSecond",
          "shape": "__integer"
        },
        "StreamOrder": {
          "documentation": "A directive that determines the order of streams in the output.",
          "locationName": "streamOrder",
          "shape": "StreamOrder"
        }
      },
      "type": "structure"
    },
    "TagResourceRequest": {
      "members": {
        "ResourceArn": {
          "documentation": "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.",
          "location": "uri",
          "locationName": "resource-arn",
          "shape": "__string"
        },
        "Tags": {
          "documentation": "A collection of tags associated with a resource",
          "locationName": "tags",
          "shape": "__mapOf__string"
        }
      },
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "type": "structure"
    },
    "Tags": {
      "documentation": "A collection of tags associated with a resource",
      "key": {
        "shape": "__string"
      },
      "type": "map",
      "value": {
        "shape": "__string"
      }
    },
    "UntagResourceRequest": {
      "members": {
        "ResourceArn": {
          "documentation": "The Amazon Resource Name (ARN) for the resource. You can get this from the response to any request to the resource.",
          "location": "uri",
          "locationName": "resource-arn",
          "shape": "__string"
        },
        "TagKeys": {
          "documentation": "A comma-separated list of the tag keys to remove from the resource.",
          "location": "querystring",
          "locationName": "tagKeys",
          "shape": "__listOf__string"
        }
      },
      "required": [
        "TagKeys",
        "ResourceArn"
      ],
      "type": "structure"
    },
    "UpdatePackagingGroupRequest": {
      "documentation": "A MediaPackage VOD PackagingGroup resource configuration.",
      "members": {
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "Id": {
          "documentation": "The ID of a MediaPackage VOD PackagingGroup resource.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "UpdatePackagingGroupResponse": {
      "members": {
        "Arn": {
          "documentation": "The ARN of the PackagingGroup.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "DomainName": {
          "documentation": "The fully qualified domain name for Assets in the PackagingGroup.",
          "locationName": "domainName",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the PackagingGroup.",
          "locationName": "id",
          "shape": "__string"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        }
      },
      "type": "structure"
    },
    "__PeriodTriggersElement": {
      "enum": [
        "ADS"
      ],
      "type": "string"
    },
    "__boolean": {
      "type": "boolean"
    },
    "__integer": {
      "type": "integer"
    },
    "__listOfAssetShallow": {
      "member": {
        "shape": "AssetShallow"
      },
      "type": "list"
    },
    "__listOfDashManifest": {
      "member": {
        "shape": "DashManifest"
      },
      "type": "list"
    },
    "__listOfEgressEndpoint": {
      "member": {
        "shape": "EgressEndpoint"
      },
      "type": "list"
    },
    "__listOfHlsManifest": {
      "member": {
        "shape": "HlsManifest"
      },
      "type": "list"
    },
    "__listOfMssManifest": {
      "member": {
        "shape": "MssManifest"
      },
      "type": "list"
    },
    "__listOfPackagingConfiguration": {
      "member": {
        "shape": "PackagingConfiguration"
      },
      "type": "list"
    },
    "__listOfPackagingGroup": {
      "member": {
        "shape": "PackagingGroup"
      },
      "type": "list"
    },
    "__listOf__PeriodTriggersElement": {
      "member": {
        "shape": "__PeriodTriggersElement"
      },
      "type": "list"
    },
    "__listOf__string": {
      "member": {
        "shape": "__string"
      },
      "type": "list"
    },
    "__mapOf__string": {
      "key": {
        "shape": "__string"
      },
      "type": "map",
      "value": {
        "shape": "__string"
      }
    },
    "__string": {
      "type": "string"
    }
  }
}
]===]))