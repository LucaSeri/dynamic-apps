local decode = require("cjson").new().decode
return assert(decode([===[
{
  "documentation": "AWS Elemental MediaPackage",
  "metadata": {
    "apiVersion": "2017-10-12",
    "endpointPrefix": "mediapackage",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "MediaPackage",
    "serviceFullName": "AWS Elemental MediaPackage",
    "serviceId": "MediaPackage",
    "signatureVersion": "v4",
    "signingName": "mediapackage",
    "uid": "mediapackage-2017-10-12"
  },
  "operations": {
    "CreateChannel": {
      "documentation": "Creates a new Channel.",
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
        "requestUri": "/channels",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateChannelRequest"
      },
      "name": "CreateChannel",
      "output": {
        "documentation": "The new Channel record.",
        "shape": "CreateChannelResponse"
      }
    },
    "CreateHarvestJob": {
      "documentation": "Creates a new HarvestJob record.",
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
        "requestUri": "/harvest_jobs",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateHarvestJobRequest"
      },
      "name": "CreateHarvestJob",
      "output": {
        "documentation": "A new HarvestJob record.",
        "shape": "CreateHarvestJobResponse"
      }
    },
    "CreateOriginEndpoint": {
      "documentation": "Creates a new OriginEndpoint record.",
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
        "requestUri": "/origin_endpoints",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateOriginEndpointRequest"
      },
      "name": "CreateOriginEndpoint",
      "output": {
        "documentation": "A new OriginEndpoint record.",
        "shape": "CreateOriginEndpointResponse"
      }
    },
    "DeleteChannel": {
      "documentation": "Deletes an existing Channel.",
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
        "requestUri": "/channels/{id}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteChannelRequest"
      },
      "name": "DeleteChannel",
      "output": {
        "documentation": "The Channel has been deleted.",
        "shape": "DeleteChannelResponse"
      }
    },
    "DeleteOriginEndpoint": {
      "documentation": "Deletes an existing OriginEndpoint.",
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
        "requestUri": "/origin_endpoints/{id}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteOriginEndpointRequest"
      },
      "name": "DeleteOriginEndpoint",
      "output": {
        "documentation": "The OriginEndpoint has been deleted.",
        "shape": "DeleteOriginEndpointResponse"
      }
    },
    "DescribeChannel": {
      "documentation": "Gets details about a Channel.",
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
        "requestUri": "/channels/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeChannelRequest"
      },
      "name": "DescribeChannel",
      "output": {
        "documentation": "A Channel record.",
        "shape": "DescribeChannelResponse"
      }
    },
    "DescribeHarvestJob": {
      "documentation": "Gets details about an existing HarvestJob.",
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
        "requestUri": "/harvest_jobs/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeHarvestJobRequest"
      },
      "name": "DescribeHarvestJob",
      "output": {
        "documentation": "An HarvestJob record.",
        "shape": "DescribeHarvestJobResponse"
      }
    },
    "DescribeOriginEndpoint": {
      "documentation": "Gets details about an existing OriginEndpoint.",
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
        "requestUri": "/origin_endpoints/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeOriginEndpointRequest"
      },
      "name": "DescribeOriginEndpoint",
      "output": {
        "documentation": "An OriginEndpoint record.",
        "shape": "DescribeOriginEndpointResponse"
      }
    },
    "ListChannels": {
      "documentation": "Returns a collection of Channels.",
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
        "requestUri": "/channels",
        "responseCode": 200
      },
      "input": {
        "shape": "ListChannelsRequest"
      },
      "name": "ListChannels",
      "output": {
        "documentation": "A collection of Channel records.",
        "shape": "ListChannelsResponse"
      }
    },
    "ListHarvestJobs": {
      "documentation": "Returns a collection of HarvestJob records.",
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
        "requestUri": "/harvest_jobs",
        "responseCode": 200
      },
      "input": {
        "shape": "ListHarvestJobsRequest"
      },
      "name": "ListHarvestJobs",
      "output": {
        "documentation": "A collection of HarvestJob records.",
        "shape": "ListHarvestJobsResponse"
      }
    },
    "ListOriginEndpoints": {
      "documentation": "Returns a collection of OriginEndpoint records.",
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
        "requestUri": "/origin_endpoints",
        "responseCode": 200
      },
      "input": {
        "shape": "ListOriginEndpointsRequest"
      },
      "name": "ListOriginEndpoints",
      "output": {
        "documentation": "A collection of OriginEndpoint records.",
        "shape": "ListOriginEndpointsResponse"
      }
    },
    "ListTagsForResource": {
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
    "RotateChannelCredentials": {
      "deprecated": true,
      "deprecatedMessage": "This API is deprecated. Please use RotateIngestEndpointCredentials instead",
      "documentation": "Changes the Channel's first IngestEndpoint's username and password. WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials instead",
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
        "requestUri": "/channels/{id}/credentials",
        "responseCode": 200
      },
      "input": {
        "shape": "RotateChannelCredentialsRequest"
      },
      "name": "RotateChannelCredentials",
      "output": {
        "documentation": "The updated Channel record.",
        "shape": "RotateChannelCredentialsResponse"
      }
    },
    "RotateIngestEndpointCredentials": {
      "documentation": "Rotate the IngestEndpoint's username and password, as specified by the IngestEndpoint's id.",
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
        "requestUri": "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials",
        "responseCode": 200
      },
      "input": {
        "shape": "RotateIngestEndpointCredentialsRequest"
      },
      "name": "RotateIngestEndpointCredentials",
      "output": {
        "documentation": "The updated Channel record.",
        "shape": "RotateIngestEndpointCredentialsResponse"
      }
    },
    "TagResource": {
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
    "UpdateChannel": {
      "documentation": "Updates an existing Channel.",
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
        "requestUri": "/channels/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateChannelRequest"
      },
      "name": "UpdateChannel",
      "output": {
        "documentation": "The updated Channel record.",
        "shape": "UpdateChannelResponse"
      }
    },
    "UpdateOriginEndpoint": {
      "documentation": "Updates an existing OriginEndpoint.",
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
        "requestUri": "/origin_endpoints/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateOriginEndpointRequest"
      },
      "name": "UpdateOriginEndpoint",
      "output": {
        "documentation": "An updated OriginEndpoint record.",
        "shape": "UpdateOriginEndpointResponse"
      }
    }
  },
  "shapes": {
    "AdMarkers": {
      "enum": [
        "NONE",
        "SCTE35_ENHANCED",
        "PASSTHROUGH",
        "DATERANGE"
      ],
      "type": "string"
    },
    "AdTriggers": {
      "documentation": "A list of SCTE-35 message types that are treated as ad markers in the output.  If empty, no\nad markers are output.  Specify multiple items to create ad markers for all of the included\nmessage types.\n",
      "member": {
        "shape": "__AdTriggersElement"
      },
      "type": "list"
    },
    "AdsOnDeliveryRestrictions": {
      "documentation": "This setting allows the delivery restriction flags on SCTE-35 segmentation descriptors to\ndetermine whether a message signals an ad.  Choosing \"NONE\" means no SCTE-35 messages become\nads.  Choosing \"RESTRICTED\" means SCTE-35 messages of the types specified in AdTriggers that\ncontain delivery restrictions will be treated as ads.  Choosing \"UNRESTRICTED\" means SCTE-35\nmessages of the types specified in AdTriggers that do not contain delivery restrictions will\nbe treated as ads.  Choosing \"BOTH\" means all SCTE-35 messages of the types specified in\nAdTriggers will be treated as ads.  Note that Splice Insert messages do not have these flags\nand are always treated as ads if specified in AdTriggers.\n",
      "enum": [
        "NONE",
        "RESTRICTED",
        "UNRESTRICTED",
        "BOTH"
      ],
      "type": "string"
    },
    "Authorization": {
      "documentation": "CDN Authorization credentials",
      "members": {
        "CdnIdentifierSecret": {
          "documentation": "The Amazon Resource Name (ARN) for the secret in Secrets Manager that your Content Distribution Network (CDN) uses for authorization to access your endpoint.\n",
          "locationName": "cdnIdentifierSecret",
          "shape": "__string"
        },
        "SecretsRoleArn": {
          "documentation": "The Amazon Resource Name (ARN) for the IAM role that allows MediaPackage to communicate with AWS Secrets Manager.\n",
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
    "Channel": {
      "documentation": "A Channel resource configuration.",
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the Channel.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Description": {
          "documentation": "A short text description of the Channel.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsIngest": {
          "locationName": "hlsIngest",
          "shape": "HlsIngest"
        },
        "Id": {
          "documentation": "The ID of the Channel.",
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
    "CmafEncryption": {
      "documentation": "A Common Media Application Format (CMAF) encryption configuration.",
      "members": {
        "KeyRotationIntervalSeconds": {
          "documentation": "Time (in seconds) between each encryption key rotation.",
          "locationName": "keyRotationIntervalSeconds",
          "shape": "__integer"
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
    "CmafPackage": {
      "documentation": "A Common Media Application Format (CMAF) packaging configuration.",
      "members": {
        "Encryption": {
          "locationName": "encryption",
          "shape": "CmafEncryption"
        },
        "HlsManifests": {
          "documentation": "A list of HLS manifest configurations",
          "locationName": "hlsManifests",
          "shape": "__listOfHlsManifest"
        },
        "SegmentDurationSeconds": {
          "documentation": "Duration (in seconds) of each segment. Actual segments will be\nrounded to the nearest multiple of the source segment duration.\n",
          "locationName": "segmentDurationSeconds",
          "shape": "__integer"
        },
        "SegmentPrefix": {
          "documentation": "An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.",
          "locationName": "segmentPrefix",
          "shape": "__string"
        },
        "StreamSelection": {
          "locationName": "streamSelection",
          "shape": "StreamSelection"
        }
      },
      "type": "structure"
    },
    "CmafPackageCreateOrUpdateParameters": {
      "documentation": "A Common Media Application Format (CMAF) packaging configuration.",
      "members": {
        "Encryption": {
          "locationName": "encryption",
          "shape": "CmafEncryption"
        },
        "HlsManifests": {
          "documentation": "A list of HLS manifest configurations",
          "locationName": "hlsManifests",
          "shape": "__listOfHlsManifestCreateOrUpdateParameters"
        },
        "SegmentDurationSeconds": {
          "documentation": "Duration (in seconds) of each segment. Actual segments will be\nrounded to the nearest multiple of the source segment duration.\n",
          "locationName": "segmentDurationSeconds",
          "shape": "__integer"
        },
        "SegmentPrefix": {
          "documentation": "An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.",
          "locationName": "segmentPrefix",
          "shape": "__string"
        },
        "StreamSelection": {
          "locationName": "streamSelection",
          "shape": "StreamSelection"
        }
      },
      "type": "structure"
    },
    "CreateChannelRequest": {
      "documentation": "A new Channel configuration.",
      "members": {
        "Description": {
          "documentation": "A short text description of the Channel.",
          "locationName": "description",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the Channel. The ID must be unique within the region and it\ncannot be changed after a Channel is created.\n",
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
    "CreateChannelResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the Channel.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Description": {
          "documentation": "A short text description of the Channel.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsIngest": {
          "locationName": "hlsIngest",
          "shape": "HlsIngest"
        },
        "Id": {
          "documentation": "The ID of the Channel.",
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
    "CreateHarvestJobRequest": {
      "documentation": "Configuration parameters used to create a new HarvestJob.",
      "members": {
        "EndTime": {
          "documentation": "The end of the time-window which will be harvested\n",
          "locationName": "endTime",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted\n",
          "locationName": "id",
          "shape": "__string"
        },
        "OriginEndpointId": {
          "documentation": "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.\n",
          "locationName": "originEndpointId",
          "shape": "__string"
        },
        "S3Destination": {
          "locationName": "s3Destination",
          "shape": "S3Destination"
        },
        "StartTime": {
          "documentation": "The start of the time-window which will be harvested\n",
          "locationName": "startTime",
          "shape": "__string"
        }
      },
      "required": [
        "S3Destination",
        "EndTime",
        "OriginEndpointId",
        "StartTime",
        "Id"
      ],
      "type": "structure"
    },
    "CreateHarvestJobResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the HarvestJob.\n",
          "locationName": "arn",
          "shape": "__string"
        },
        "ChannelId": {
          "documentation": "The ID of the Channel that the HarvestJob will harvest from.\n",
          "locationName": "channelId",
          "shape": "__string"
        },
        "CreatedAt": {
          "documentation": "The time the HarvestJob was submitted\n",
          "locationName": "createdAt",
          "shape": "__string"
        },
        "EndTime": {
          "documentation": "The end of the time-window which will be harvested.\n",
          "locationName": "endTime",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted.\n",
          "locationName": "id",
          "shape": "__string"
        },
        "OriginEndpointId": {
          "documentation": "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.\n",
          "locationName": "originEndpointId",
          "shape": "__string"
        },
        "S3Destination": {
          "locationName": "s3Destination",
          "shape": "S3Destination"
        },
        "StartTime": {
          "documentation": "The start of the time-window which will be harvested.\n",
          "locationName": "startTime",
          "shape": "__string"
        },
        "Status": {
          "documentation": "The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for\nHarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will\ninclude an explanation of why the HarvestJob failed.\n",
          "locationName": "status",
          "shape": "Status"
        }
      },
      "type": "structure"
    },
    "CreateOriginEndpointRequest": {
      "documentation": "Configuration parameters used to create a new OriginEndpoint.",
      "members": {
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "ChannelId": {
          "documentation": "The ID of the Channel that the OriginEndpoint will be associated with.\nThis cannot be changed after the OriginEndpoint is created.\n",
          "locationName": "channelId",
          "shape": "__string"
        },
        "CmafPackage": {
          "locationName": "cmafPackage",
          "shape": "CmafPackageCreateOrUpdateParameters"
        },
        "DashPackage": {
          "locationName": "dashPackage",
          "shape": "DashPackage"
        },
        "Description": {
          "documentation": "A short text description of the OriginEndpoint.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the OriginEndpoint.  The ID must be unique within the region\nand it cannot be changed after the OriginEndpoint is created.\n",
          "locationName": "id",
          "shape": "__string"
        },
        "ManifestName": {
          "documentation": "A short string that will be used as the filename of the OriginEndpoint URL (defaults to \"index\").",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "Origination": {
          "documentation": "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination\n",
          "locationName": "origination",
          "shape": "Origination"
        },
        "StartoverWindowSeconds": {
          "documentation": "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.\n",
          "locationName": "startoverWindowSeconds",
          "shape": "__integer"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        },
        "TimeDelaySeconds": {
          "documentation": "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.\n",
          "locationName": "timeDelaySeconds",
          "shape": "__integer"
        },
        "Whitelist": {
          "documentation": "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.",
          "locationName": "whitelist",
          "shape": "__listOf__string"
        }
      },
      "required": [
        "ChannelId",
        "Id"
      ],
      "type": "structure"
    },
    "CreateOriginEndpointResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the OriginEndpoint.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "ChannelId": {
          "documentation": "The ID of the Channel the OriginEndpoint is associated with.",
          "locationName": "channelId",
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
        "Description": {
          "documentation": "A short text description of the OriginEndpoint.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the OriginEndpoint.",
          "locationName": "id",
          "shape": "__string"
        },
        "ManifestName": {
          "documentation": "A short string appended to the end of the OriginEndpoint URL.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "Origination": {
          "documentation": "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination\n",
          "locationName": "origination",
          "shape": "Origination"
        },
        "StartoverWindowSeconds": {
          "documentation": "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.\n",
          "locationName": "startoverWindowSeconds",
          "shape": "__integer"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        },
        "TimeDelaySeconds": {
          "documentation": "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.\n",
          "locationName": "timeDelaySeconds",
          "shape": "__integer"
        },
        "Url": {
          "documentation": "The URL of the packaged OriginEndpoint for consumption.",
          "locationName": "url",
          "shape": "__string"
        },
        "Whitelist": {
          "documentation": "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.",
          "locationName": "whitelist",
          "shape": "__listOf__string"
        }
      },
      "type": "structure"
    },
    "DashEncryption": {
      "documentation": "A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.",
      "members": {
        "KeyRotationIntervalSeconds": {
          "documentation": "Time (in seconds) between each encryption key rotation.",
          "locationName": "keyRotationIntervalSeconds",
          "shape": "__integer"
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
    "DashPackage": {
      "documentation": "A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.",
      "members": {
        "AdTriggers": {
          "locationName": "adTriggers",
          "shape": "AdTriggers"
        },
        "AdsOnDeliveryRestrictions": {
          "locationName": "adsOnDeliveryRestrictions",
          "shape": "AdsOnDeliveryRestrictions"
        },
        "Encryption": {
          "locationName": "encryption",
          "shape": "DashEncryption"
        },
        "ManifestLayout": {
          "documentation": "Determines the position of some tags in the Media Presentation Description (MPD).  When set to FULL, elements like SegmentTemplate and ContentProtection are included in each Representation.  When set to COMPACT, duplicate elements are combined and presented at the AdaptationSet level.",
          "locationName": "manifestLayout",
          "shape": "ManifestLayout"
        },
        "ManifestWindowSeconds": {
          "documentation": "Time window (in seconds) contained in each manifest.",
          "locationName": "manifestWindowSeconds",
          "shape": "__integer"
        },
        "MinBufferTimeSeconds": {
          "documentation": "Minimum duration (in seconds) that a player will buffer media before starting the presentation.",
          "locationName": "minBufferTimeSeconds",
          "shape": "__integer"
        },
        "MinUpdatePeriodSeconds": {
          "documentation": "Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).",
          "locationName": "minUpdatePeriodSeconds",
          "shape": "__integer"
        },
        "PeriodTriggers": {
          "documentation": "A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)\nMedia Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not\nbe partitioned into more than one period. If the list contains \"ADS\", new periods will be created where\nthe Channel source contains SCTE-35 ad markers.\n",
          "locationName": "periodTriggers",
          "shape": "__listOf__PeriodTriggersElement"
        },
        "Profile": {
          "documentation": "The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to \"HBBTV_1_5\", HbbTV 1.5 compliant output is enabled.",
          "locationName": "profile",
          "shape": "Profile"
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
        },
        "StreamSelection": {
          "locationName": "streamSelection",
          "shape": "StreamSelection"
        },
        "SuggestedPresentationDelaySeconds": {
          "documentation": "Duration (in seconds) to delay live content before presentation.",
          "locationName": "suggestedPresentationDelaySeconds",
          "shape": "__integer"
        },
        "UtcTiming": {
          "documentation": "Determines the type of UTCTiming included in the Media Presentation Description (MPD)",
          "locationName": "utcTiming",
          "shape": "UtcTiming"
        },
        "UtcTimingUri": {
          "documentation": "Specifies the value attribute of the UTCTiming field when utcTiming is set to HTTP-ISO or HTTP-HEAD",
          "locationName": "utcTimingUri",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "DeleteChannelRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of the Channel to delete.",
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
    "DeleteChannelResponse": {
      "members": {},
      "type": "structure"
    },
    "DeleteOriginEndpointRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of the OriginEndpoint to delete.",
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
    "DeleteOriginEndpointResponse": {
      "members": {},
      "type": "structure"
    },
    "DescribeChannelRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of a Channel.",
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
    "DescribeChannelResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the Channel.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Description": {
          "documentation": "A short text description of the Channel.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsIngest": {
          "locationName": "hlsIngest",
          "shape": "HlsIngest"
        },
        "Id": {
          "documentation": "The ID of the Channel.",
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
    "DescribeHarvestJobRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of the HarvestJob.",
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
    "DescribeHarvestJobResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the HarvestJob.\n",
          "locationName": "arn",
          "shape": "__string"
        },
        "ChannelId": {
          "documentation": "The ID of the Channel that the HarvestJob will harvest from.\n",
          "locationName": "channelId",
          "shape": "__string"
        },
        "CreatedAt": {
          "documentation": "The time the HarvestJob was submitted\n",
          "locationName": "createdAt",
          "shape": "__string"
        },
        "EndTime": {
          "documentation": "The end of the time-window which will be harvested.\n",
          "locationName": "endTime",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted.\n",
          "locationName": "id",
          "shape": "__string"
        },
        "OriginEndpointId": {
          "documentation": "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.\n",
          "locationName": "originEndpointId",
          "shape": "__string"
        },
        "S3Destination": {
          "locationName": "s3Destination",
          "shape": "S3Destination"
        },
        "StartTime": {
          "documentation": "The start of the time-window which will be harvested.\n",
          "locationName": "startTime",
          "shape": "__string"
        },
        "Status": {
          "documentation": "The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for\nHarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will\ninclude an explanation of why the HarvestJob failed.\n",
          "locationName": "status",
          "shape": "Status"
        }
      },
      "type": "structure"
    },
    "DescribeOriginEndpointRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of the OriginEndpoint.",
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
    "DescribeOriginEndpointResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the OriginEndpoint.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "ChannelId": {
          "documentation": "The ID of the Channel the OriginEndpoint is associated with.",
          "locationName": "channelId",
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
        "Description": {
          "documentation": "A short text description of the OriginEndpoint.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the OriginEndpoint.",
          "locationName": "id",
          "shape": "__string"
        },
        "ManifestName": {
          "documentation": "A short string appended to the end of the OriginEndpoint URL.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "Origination": {
          "documentation": "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination\n",
          "locationName": "origination",
          "shape": "Origination"
        },
        "StartoverWindowSeconds": {
          "documentation": "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.\n",
          "locationName": "startoverWindowSeconds",
          "shape": "__integer"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        },
        "TimeDelaySeconds": {
          "documentation": "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.\n",
          "locationName": "timeDelaySeconds",
          "shape": "__integer"
        },
        "Url": {
          "documentation": "The URL of the packaged OriginEndpoint for consumption.",
          "locationName": "url",
          "shape": "__string"
        },
        "Whitelist": {
          "documentation": "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.",
          "locationName": "whitelist",
          "shape": "__listOf__string"
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
    "HarvestJob": {
      "documentation": "A HarvestJob resource configuration",
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the HarvestJob.\n",
          "locationName": "arn",
          "shape": "__string"
        },
        "ChannelId": {
          "documentation": "The ID of the Channel that the HarvestJob will harvest from.\n",
          "locationName": "channelId",
          "shape": "__string"
        },
        "CreatedAt": {
          "documentation": "The time the HarvestJob was submitted\n",
          "locationName": "createdAt",
          "shape": "__string"
        },
        "EndTime": {
          "documentation": "The end of the time-window which will be harvested.\n",
          "locationName": "endTime",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the HarvestJob. The ID must be unique within the region\nand it cannot be changed after the HarvestJob is submitted.\n",
          "locationName": "id",
          "shape": "__string"
        },
        "OriginEndpointId": {
          "documentation": "The ID of the OriginEndpoint that the HarvestJob will harvest from.\nThis cannot be changed after the HarvestJob is submitted.\n",
          "locationName": "originEndpointId",
          "shape": "__string"
        },
        "S3Destination": {
          "locationName": "s3Destination",
          "shape": "S3Destination"
        },
        "StartTime": {
          "documentation": "The start of the time-window which will be harvested.\n",
          "locationName": "startTime",
          "shape": "__string"
        },
        "Status": {
          "documentation": "The current status of the HarvestJob. Consider setting up a CloudWatch Event to listen for\nHarvestJobs as they succeed or fail. In the event of failure, the CloudWatch Event will\ninclude an explanation of why the HarvestJob failed.\n",
          "locationName": "status",
          "shape": "Status"
        }
      },
      "type": "structure"
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
        "KeyRotationIntervalSeconds": {
          "documentation": "Interval (in seconds) between each encryption key rotation.",
          "locationName": "keyRotationIntervalSeconds",
          "shape": "__integer"
        },
        "RepeatExtXKey": {
          "documentation": "When enabled, the EXT-X-KEY tag will be repeated in output manifests.",
          "locationName": "repeatExtXKey",
          "shape": "__boolean"
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
    "HlsIngest": {
      "documentation": "An HTTP Live Streaming (HLS) ingest resource configuration.",
      "members": {
        "IngestEndpoints": {
          "documentation": "A list of endpoints to which the source stream should be sent.",
          "locationName": "ingestEndpoints",
          "shape": "__listOfIngestEndpoint"
        }
      },
      "type": "structure"
    },
    "HlsManifest": {
      "documentation": "A HTTP Live Streaming (HLS) manifest configuration.",
      "members": {
        "AdMarkers": {
          "documentation": "This setting controls how ad markers are included in the packaged OriginEndpoint.\n\"NONE\" will omit all SCTE-35 ad markers from the output.\n\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad\nmarkers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.\n\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35\nmessages in the input source.\n\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events \nin HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value \nthat is greater than 0.\n",
          "locationName": "adMarkers",
          "shape": "AdMarkers"
        },
        "Id": {
          "documentation": "The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.",
          "locationName": "id",
          "shape": "__string"
        },
        "IncludeIframeOnlyStream": {
          "documentation": "When enabled, an I-Frame only stream will be included in the output.",
          "locationName": "includeIframeOnlyStream",
          "shape": "__boolean"
        },
        "ManifestName": {
          "documentation": "An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "PlaylistType": {
          "documentation": "The HTTP Live Streaming (HLS) playlist type.\nWhen either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE\nentry will be included in the media playlist.\n",
          "locationName": "playlistType",
          "shape": "PlaylistType"
        },
        "PlaylistWindowSeconds": {
          "documentation": "Time window (in seconds) contained in each parent manifest.",
          "locationName": "playlistWindowSeconds",
          "shape": "__integer"
        },
        "ProgramDateTimeIntervalSeconds": {
          "documentation": "The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag\ninserted into manifests. Additionally, when an interval is specified\nID3Timed Metadata messages will be generated every 5 seconds using the\ningest time of the content.\nIf the interval is not specified, or set to 0, then\nno EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no\nID3Timed Metadata messages will be generated. Note that irrespective\nof this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,\nit will be passed through to HLS output.\n",
          "locationName": "programDateTimeIntervalSeconds",
          "shape": "__integer"
        },
        "Url": {
          "documentation": "The URL of the packaged OriginEndpoint for consumption.",
          "locationName": "url",
          "shape": "__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "HlsManifestCreateOrUpdateParameters": {
      "documentation": "A HTTP Live Streaming (HLS) manifest configuration.",
      "members": {
        "AdMarkers": {
          "documentation": "This setting controls how ad markers are included in the packaged OriginEndpoint.\n\"NONE\" will omit all SCTE-35 ad markers from the output.\n\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad\nmarkers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.\n\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35\nmessages in the input source.\n\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events \nin HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value \nthat is greater than 0.\n",
          "locationName": "adMarkers",
          "shape": "AdMarkers"
        },
        "AdTriggers": {
          "locationName": "adTriggers",
          "shape": "AdTriggers"
        },
        "AdsOnDeliveryRestrictions": {
          "locationName": "adsOnDeliveryRestrictions",
          "shape": "AdsOnDeliveryRestrictions"
        },
        "Id": {
          "documentation": "The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.",
          "locationName": "id",
          "shape": "__string"
        },
        "IncludeIframeOnlyStream": {
          "documentation": "When enabled, an I-Frame only stream will be included in the output.",
          "locationName": "includeIframeOnlyStream",
          "shape": "__boolean"
        },
        "ManifestName": {
          "documentation": "An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "PlaylistType": {
          "documentation": "The HTTP Live Streaming (HLS) playlist type.\nWhen either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE\nentry will be included in the media playlist.\n",
          "locationName": "playlistType",
          "shape": "PlaylistType"
        },
        "PlaylistWindowSeconds": {
          "documentation": "Time window (in seconds) contained in each parent manifest.",
          "locationName": "playlistWindowSeconds",
          "shape": "__integer"
        },
        "ProgramDateTimeIntervalSeconds": {
          "documentation": "The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag\ninserted into manifests. Additionally, when an interval is specified\nID3Timed Metadata messages will be generated every 5 seconds using the\ningest time of the content.\nIf the interval is not specified, or set to 0, then\nno EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no\nID3Timed Metadata messages will be generated. Note that irrespective\nof this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,\nit will be passed through to HLS output.\n",
          "locationName": "programDateTimeIntervalSeconds",
          "shape": "__integer"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "HlsPackage": {
      "documentation": "An HTTP Live Streaming (HLS) packaging configuration.",
      "members": {
        "AdMarkers": {
          "documentation": "This setting controls how ad markers are included in the packaged OriginEndpoint.\n\"NONE\" will omit all SCTE-35 ad markers from the output.\n\"PASSTHROUGH\" causes the manifest to contain a copy of the SCTE-35 ad\nmarkers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.\n\"SCTE35_ENHANCED\" generates ad markers and blackout tags based on SCTE-35\nmessages in the input source.\n\"DATERANGE\" inserts EXT-X-DATERANGE tags to signal ad and program transition events \nin HLS and CMAF manifests. For this option, you must set a programDateTimeIntervalSeconds value \nthat is greater than 0.\n",
          "locationName": "adMarkers",
          "shape": "AdMarkers"
        },
        "AdTriggers": {
          "locationName": "adTriggers",
          "shape": "AdTriggers"
        },
        "AdsOnDeliveryRestrictions": {
          "locationName": "adsOnDeliveryRestrictions",
          "shape": "AdsOnDeliveryRestrictions"
        },
        "Encryption": {
          "locationName": "encryption",
          "shape": "HlsEncryption"
        },
        "IncludeIframeOnlyStream": {
          "documentation": "When enabled, an I-Frame only stream will be included in the output.",
          "locationName": "includeIframeOnlyStream",
          "shape": "__boolean"
        },
        "PlaylistType": {
          "documentation": "The HTTP Live Streaming (HLS) playlist type.\nWhen either \"EVENT\" or \"VOD\" is specified, a corresponding EXT-X-PLAYLIST-TYPE\nentry will be included in the media playlist.\n",
          "locationName": "playlistType",
          "shape": "PlaylistType"
        },
        "PlaylistWindowSeconds": {
          "documentation": "Time window (in seconds) contained in each parent manifest.",
          "locationName": "playlistWindowSeconds",
          "shape": "__integer"
        },
        "ProgramDateTimeIntervalSeconds": {
          "documentation": "The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag\ninserted into manifests. Additionally, when an interval is specified\nID3Timed Metadata messages will be generated every 5 seconds using the\ningest time of the content.\nIf the interval is not specified, or set to 0, then\nno EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no\nID3Timed Metadata messages will be generated. Note that irrespective\nof this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,\nit will be passed through to HLS output.\n",
          "locationName": "programDateTimeIntervalSeconds",
          "shape": "__integer"
        },
        "SegmentDurationSeconds": {
          "documentation": "Duration (in seconds) of each fragment. Actual fragments will be\nrounded to the nearest multiple of the source fragment duration.\n",
          "locationName": "segmentDurationSeconds",
          "shape": "__integer"
        },
        "StreamSelection": {
          "locationName": "streamSelection",
          "shape": "StreamSelection"
        },
        "UseAudioRenditionGroup": {
          "documentation": "When enabled, audio streams will be placed in rendition groups in the output.",
          "locationName": "useAudioRenditionGroup",
          "shape": "__boolean"
        }
      },
      "type": "structure"
    },
    "IngestEndpoint": {
      "documentation": "An endpoint for ingesting source content for a Channel.",
      "members": {
        "Id": {
          "documentation": "The system generated unique identifier for the IngestEndpoint",
          "locationName": "id",
          "shape": "__string"
        },
        "Password": {
          "documentation": "The system generated password for ingest authentication.",
          "locationName": "password",
          "shape": "__string"
        },
        "Url": {
          "documentation": "The ingest URL to which the source stream should be sent.",
          "locationName": "url",
          "shape": "__string"
        },
        "Username": {
          "documentation": "The system generated username for ingest authentication.",
          "locationName": "username",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListChannelsRequest": {
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
    "ListChannelsResponse": {
      "members": {
        "Channels": {
          "documentation": "A list of Channel records.",
          "locationName": "channels",
          "shape": "__listOfChannel"
        },
        "NextToken": {
          "documentation": "A token that can be used to resume pagination from the end of the collection.",
          "locationName": "nextToken",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListHarvestJobsRequest": {
      "members": {
        "IncludeChannelId": {
          "documentation": "When specified, the request will return only HarvestJobs associated with the given Channel ID.",
          "location": "querystring",
          "locationName": "includeChannelId",
          "shape": "__string"
        },
        "IncludeStatus": {
          "documentation": "When specified, the request will return only HarvestJobs in the given status.",
          "location": "querystring",
          "locationName": "includeStatus",
          "shape": "__string"
        },
        "MaxResults": {
          "documentation": "The upper bound on the number of records to return.",
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
    "ListHarvestJobsResponse": {
      "members": {
        "HarvestJobs": {
          "documentation": "A list of HarvestJob records.",
          "locationName": "harvestJobs",
          "shape": "__listOfHarvestJob"
        },
        "NextToken": {
          "documentation": "A token that can be used to resume pagination from the end of the collection.",
          "locationName": "nextToken",
          "shape": "__string"
        }
      },
      "type": "structure"
    },
    "ListOriginEndpointsRequest": {
      "members": {
        "ChannelId": {
          "documentation": "When specified, the request will return only OriginEndpoints associated with the given Channel ID.",
          "location": "querystring",
          "locationName": "channelId",
          "shape": "__string"
        },
        "MaxResults": {
          "documentation": "The upper bound on the number of records to return.",
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
    "ListOriginEndpointsResponse": {
      "members": {
        "NextToken": {
          "documentation": "A token that can be used to resume pagination from the end of the collection.",
          "locationName": "nextToken",
          "shape": "__string"
        },
        "OriginEndpoints": {
          "documentation": "A list of OriginEndpoint records.",
          "locationName": "originEndpoints",
          "shape": "__listOfOriginEndpoint"
        }
      },
      "type": "structure"
    },
    "ListTagsForResourceRequest": {
      "members": {
        "ResourceArn": {
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
    "MssPackage": {
      "documentation": "A Microsoft Smooth Streaming (MSS) packaging configuration.",
      "members": {
        "Encryption": {
          "locationName": "encryption",
          "shape": "MssEncryption"
        },
        "ManifestWindowSeconds": {
          "documentation": "The time window (in seconds) contained in each manifest.",
          "locationName": "manifestWindowSeconds",
          "shape": "__integer"
        },
        "SegmentDurationSeconds": {
          "documentation": "The duration (in seconds) of each segment.",
          "locationName": "segmentDurationSeconds",
          "shape": "__integer"
        },
        "StreamSelection": {
          "locationName": "streamSelection",
          "shape": "StreamSelection"
        }
      },
      "type": "structure"
    },
    "OriginEndpoint": {
      "documentation": "An OriginEndpoint resource configuration.",
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the OriginEndpoint.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "ChannelId": {
          "documentation": "The ID of the Channel the OriginEndpoint is associated with.",
          "locationName": "channelId",
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
        "Description": {
          "documentation": "A short text description of the OriginEndpoint.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the OriginEndpoint.",
          "locationName": "id",
          "shape": "__string"
        },
        "ManifestName": {
          "documentation": "A short string appended to the end of the OriginEndpoint URL.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "Origination": {
          "documentation": "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination\n",
          "locationName": "origination",
          "shape": "Origination"
        },
        "StartoverWindowSeconds": {
          "documentation": "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.\n",
          "locationName": "startoverWindowSeconds",
          "shape": "__integer"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        },
        "TimeDelaySeconds": {
          "documentation": "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.\n",
          "locationName": "timeDelaySeconds",
          "shape": "__integer"
        },
        "Url": {
          "documentation": "The URL of the packaged OriginEndpoint for consumption.",
          "locationName": "url",
          "shape": "__string"
        },
        "Whitelist": {
          "documentation": "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.",
          "locationName": "whitelist",
          "shape": "__listOf__string"
        }
      },
      "type": "structure"
    },
    "Origination": {
      "enum": [
        "ALLOW",
        "DENY"
      ],
      "type": "string"
    },
    "PlaylistType": {
      "enum": [
        "NONE",
        "EVENT",
        "VOD"
      ],
      "type": "string"
    },
    "Profile": {
      "enum": [
        "NONE",
        "HBBTV_1_5"
      ],
      "type": "string"
    },
    "RotateChannelCredentialsRequest": {
      "deprecated": true,
      "members": {
        "Id": {
          "documentation": "The ID of the channel to update.",
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
    "RotateChannelCredentialsResponse": {
      "deprecated": true,
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the Channel.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Description": {
          "documentation": "A short text description of the Channel.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsIngest": {
          "locationName": "hlsIngest",
          "shape": "HlsIngest"
        },
        "Id": {
          "documentation": "The ID of the Channel.",
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
    "RotateIngestEndpointCredentialsRequest": {
      "members": {
        "Id": {
          "documentation": "The ID of the channel the IngestEndpoint is on.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        },
        "IngestEndpointId": {
          "documentation": "The id of the IngestEndpoint whose credentials should be rotated",
          "location": "uri",
          "locationName": "ingest_endpoint_id",
          "shape": "__string"
        }
      },
      "required": [
        "IngestEndpointId",
        "Id"
      ],
      "type": "structure"
    },
    "RotateIngestEndpointCredentialsResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the Channel.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Description": {
          "documentation": "A short text description of the Channel.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsIngest": {
          "locationName": "hlsIngest",
          "shape": "HlsIngest"
        },
        "Id": {
          "documentation": "The ID of the Channel.",
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
    "S3Destination": {
      "documentation": "Configuration parameters for where in an S3 bucket to place the harvested content\n",
      "members": {
        "BucketName": {
          "documentation": "The name of an S3 bucket within which harvested content will be exported\n",
          "locationName": "bucketName",
          "shape": "__string"
        },
        "ManifestKey": {
          "documentation": "The key in the specified S3 bucket where the harvested top-level manifest will be placed.\n",
          "locationName": "manifestKey",
          "shape": "__string"
        },
        "RoleArn": {
          "documentation": "The IAM role used to write to the specified S3 bucket\n",
          "locationName": "roleArn",
          "shape": "__string"
        }
      },
      "required": [
        "ManifestKey",
        "BucketName",
        "RoleArn"
      ],
      "type": "structure"
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
        "CertificateArn": {
          "documentation": "An Amazon Resource Name (ARN) of a Certificate Manager certificate\nthat MediaPackage will use for enforcing secure end-to-end data\ntransfer with the key provider service.\n",
          "locationName": "certificateArn",
          "shape": "__string"
        },
        "ResourceId": {
          "documentation": "The resource ID to include in key requests.",
          "locationName": "resourceId",
          "shape": "__string"
        },
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
        "ResourceId",
        "SystemIds",
        "Url",
        "RoleArn"
      ],
      "type": "structure"
    },
    "Status": {
      "enum": [
        "IN_PROGRESS",
        "SUCCEEDED",
        "FAILED"
      ],
      "type": "string"
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
          "location": "uri",
          "locationName": "resource-arn",
          "shape": "__string"
        },
        "Tags": {
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
          "location": "uri",
          "locationName": "resource-arn",
          "shape": "__string"
        },
        "TagKeys": {
          "documentation": "The key(s) of tag to be deleted",
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
    "UpdateChannelRequest": {
      "documentation": "Configuration parameters used to update the Channel.",
      "members": {
        "Description": {
          "documentation": "A short text description of the Channel.",
          "locationName": "description",
          "shape": "__string"
        },
        "Id": {
          "documentation": "The ID of the Channel to update.",
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
    "UpdateChannelResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the Channel.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Description": {
          "documentation": "A short text description of the Channel.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsIngest": {
          "locationName": "hlsIngest",
          "shape": "HlsIngest"
        },
        "Id": {
          "documentation": "The ID of the Channel.",
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
    "UpdateOriginEndpointRequest": {
      "documentation": "Configuration parameters used to update an existing OriginEndpoint.",
      "members": {
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "CmafPackage": {
          "locationName": "cmafPackage",
          "shape": "CmafPackageCreateOrUpdateParameters"
        },
        "DashPackage": {
          "locationName": "dashPackage",
          "shape": "DashPackage"
        },
        "Description": {
          "documentation": "A short text description of the OriginEndpoint.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the OriginEndpoint to update.",
          "location": "uri",
          "locationName": "id",
          "shape": "__string"
        },
        "ManifestName": {
          "documentation": "A short string that will be appended to the end of the Endpoint URL.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "Origination": {
          "documentation": "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination\n",
          "locationName": "origination",
          "shape": "Origination"
        },
        "StartoverWindowSeconds": {
          "documentation": "Maximum duration (in seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.\n",
          "locationName": "startoverWindowSeconds",
          "shape": "__integer"
        },
        "TimeDelaySeconds": {
          "documentation": "Amount of delay (in seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.\n",
          "locationName": "timeDelaySeconds",
          "shape": "__integer"
        },
        "Whitelist": {
          "documentation": "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.",
          "locationName": "whitelist",
          "shape": "__listOf__string"
        }
      },
      "required": [
        "Id"
      ],
      "type": "structure"
    },
    "UpdateOriginEndpointResponse": {
      "members": {
        "Arn": {
          "documentation": "The Amazon Resource Name (ARN) assigned to the OriginEndpoint.",
          "locationName": "arn",
          "shape": "__string"
        },
        "Authorization": {
          "locationName": "authorization",
          "shape": "Authorization"
        },
        "ChannelId": {
          "documentation": "The ID of the Channel the OriginEndpoint is associated with.",
          "locationName": "channelId",
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
        "Description": {
          "documentation": "A short text description of the OriginEndpoint.",
          "locationName": "description",
          "shape": "__string"
        },
        "HlsPackage": {
          "locationName": "hlsPackage",
          "shape": "HlsPackage"
        },
        "Id": {
          "documentation": "The ID of the OriginEndpoint.",
          "locationName": "id",
          "shape": "__string"
        },
        "ManifestName": {
          "documentation": "A short string appended to the end of the OriginEndpoint URL.",
          "locationName": "manifestName",
          "shape": "__string"
        },
        "MssPackage": {
          "locationName": "mssPackage",
          "shape": "MssPackage"
        },
        "Origination": {
          "documentation": "Control whether origination of video is allowed for this OriginEndpoint. If set to ALLOW, the OriginEndpoint\nmay by requested, pursuant to any other form of access control. If set to DENY, the OriginEndpoint may not be\nrequested. This can be helpful for Live to VOD harvesting, or for temporarily disabling origination\n",
          "locationName": "origination",
          "shape": "Origination"
        },
        "StartoverWindowSeconds": {
          "documentation": "Maximum duration (seconds) of content to retain for startover playback.\nIf not specified, startover playback will be disabled for the OriginEndpoint.\n",
          "locationName": "startoverWindowSeconds",
          "shape": "__integer"
        },
        "Tags": {
          "locationName": "tags",
          "shape": "Tags"
        },
        "TimeDelaySeconds": {
          "documentation": "Amount of delay (seconds) to enforce on the playback of live content.\nIf not specified, there will be no time delay in effect for the OriginEndpoint.\n",
          "locationName": "timeDelaySeconds",
          "shape": "__integer"
        },
        "Url": {
          "documentation": "The URL of the packaged OriginEndpoint for consumption.",
          "locationName": "url",
          "shape": "__string"
        },
        "Whitelist": {
          "documentation": "A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.",
          "locationName": "whitelist",
          "shape": "__listOf__string"
        }
      },
      "type": "structure"
    },
    "UtcTiming": {
      "enum": [
        "NONE",
        "HTTP-HEAD",
        "HTTP-ISO"
      ],
      "type": "string"
    },
    "__AdTriggersElement": {
      "enum": [
        "SPLICE_INSERT",
        "BREAK",
        "PROVIDER_ADVERTISEMENT",
        "DISTRIBUTOR_ADVERTISEMENT",
        "PROVIDER_PLACEMENT_OPPORTUNITY",
        "DISTRIBUTOR_PLACEMENT_OPPORTUNITY",
        "PROVIDER_OVERLAY_PLACEMENT_OPPORTUNITY",
        "DISTRIBUTOR_OVERLAY_PLACEMENT_OPPORTUNITY"
      ],
      "type": "string"
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
    "__listOfChannel": {
      "member": {
        "shape": "Channel"
      },
      "type": "list"
    },
    "__listOfHarvestJob": {
      "member": {
        "shape": "HarvestJob"
      },
      "type": "list"
    },
    "__listOfHlsManifest": {
      "member": {
        "shape": "HlsManifest"
      },
      "type": "list"
    },
    "__listOfHlsManifestCreateOrUpdateParameters": {
      "member": {
        "shape": "HlsManifestCreateOrUpdateParameters"
      },
      "type": "list"
    },
    "__listOfIngestEndpoint": {
      "member": {
        "shape": "IngestEndpoint"
      },
      "type": "list"
    },
    "__listOfOriginEndpoint": {
      "member": {
        "shape": "OriginEndpoint"
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