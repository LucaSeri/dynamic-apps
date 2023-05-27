local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-08-25",
    "endpointPrefix": "signer",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "signer",
    "serviceFullName": "AWS Signer",
    "serviceId": "signer",
    "signatureVersion": "v4",
    "signingName": "signer",
    "uid": "signer-2017-08-25"
  },
  "operations": {
    "CancelSigningProfile": {
      "name": "CancelSigningProfile",
      "http": {
        "method": "DELETE",
        "requestUri": "/signing-profiles/{profileName}"
      },
      "input": {
        "shape": "CancelSigningProfileRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Changes the state of an <code>ACTIVE</code> signing profile to <code>CANCELED</code>. A canceled profile is still viewable with the <code>ListSigningProfiles</code> operation, but it cannot perform new signing jobs, and is deleted two years after cancelation.</p>"
    },
    "DescribeSigningJob": {
      "name": "DescribeSigningJob",
      "http": {
        "method": "GET",
        "requestUri": "/signing-jobs/{jobId}"
      },
      "input": {
        "shape": "DescribeSigningJobRequest"
      },
      "output": {
        "shape": "DescribeSigningJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns information about a specific code signing job. You specify the job by using the <code>jobId</code> value that is returned by the <a>StartSigningJob</a> operation. </p>"
    },
    "GetSigningPlatform": {
      "name": "GetSigningPlatform",
      "http": {
        "method": "GET",
        "requestUri": "/signing-platforms/{platformId}"
      },
      "input": {
        "shape": "GetSigningPlatformRequest"
      },
      "output": {
        "shape": "GetSigningPlatformResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns information on a specific signing platform.</p>"
    },
    "GetSigningProfile": {
      "name": "GetSigningProfile",
      "http": {
        "method": "GET",
        "requestUri": "/signing-profiles/{profileName}"
      },
      "input": {
        "shape": "GetSigningProfileRequest"
      },
      "output": {
        "shape": "GetSigningProfileResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns information on a specific signing profile.</p>"
    },
    "ListSigningJobs": {
      "name": "ListSigningJobs",
      "http": {
        "method": "GET",
        "requestUri": "/signing-jobs"
      },
      "input": {
        "shape": "ListSigningJobsRequest"
      },
      "output": {
        "shape": "ListSigningJobsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Lists all your signing jobs. You can use the <code>maxResults</code> parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, code signing returns a <code>nextToken</code> value. Use this value in subsequent calls to <code>ListSigningJobs</code> to fetch the remaining values. You can continue calling <code>ListSigningJobs</code> with your <code>maxResults</code> parameter and with new values that code signing returns in the <code>nextToken</code> parameter until all of your signing jobs have been returned. </p>"
    },
    "ListSigningPlatforms": {
      "name": "ListSigningPlatforms",
      "http": {
        "method": "GET",
        "requestUri": "/signing-platforms"
      },
      "input": {
        "shape": "ListSigningPlatformsRequest"
      },
      "output": {
        "shape": "ListSigningPlatformsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Lists all signing platforms available in code signing that match the request parameters. If additional jobs remain to be listed, code signing returns a <code>nextToken</code> value. Use this value in subsequent calls to <code>ListSigningJobs</code> to fetch the remaining values. You can continue calling <code>ListSigningJobs</code> with your <code>maxResults</code> parameter and with new values that code signing returns in the <code>nextToken</code> parameter until all of your signing jobs have been returned.</p>"
    },
    "ListSigningProfiles": {
      "name": "ListSigningProfiles",
      "http": {
        "method": "GET",
        "requestUri": "/signing-profiles"
      },
      "input": {
        "shape": "ListSigningProfilesRequest"
      },
      "output": {
        "shape": "ListSigningProfilesResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Lists all available signing profiles in your AWS account. Returns only profiles with an <code>ACTIVE</code> status unless the <code>includeCanceled</code> request field is set to <code>true</code>. If additional jobs remain to be listed, code signing returns a <code>nextToken</code> value. Use this value in subsequent calls to <code>ListSigningJobs</code> to fetch the remaining values. You can continue calling <code>ListSigningJobs</code> with your <code>maxResults</code> parameter and with new values that code signing returns in the <code>nextToken</code> parameter until all of your signing jobs have been returned.</p>"
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
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of the tags associated with a signing profile resource.</p>"
    },
    "PutSigningProfile": {
      "name": "PutSigningProfile",
      "http": {
        "method": "PUT",
        "requestUri": "/signing-profiles/{profileName}"
      },
      "input": {
        "shape": "PutSigningProfileRequest"
      },
      "output": {
        "shape": "PutSigningProfileResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Creates a signing profile. A signing profile is a code signing template that can be used to carry out a pre-defined signing job. For more information, see <a href=\"http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html\">http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html</a> </p>"
    },
    "StartSigningJob": {
      "name": "StartSigningJob",
      "http": {
        "method": "POST",
        "requestUri": "/signing-jobs"
      },
      "input": {
        "shape": "StartSigningJobRequest"
      },
      "output": {
        "shape": "StartSigningJobResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Initiates a signing job to be performed on the code provided. Signing jobs are viewable by the <code>ListSigningJobs</code> operation for two years after they are performed. Note the following requirements: </p> <ul> <li> <p> You must create an Amazon S3 source bucket. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html\">Create a Bucket</a> in the <i>Amazon S3 Getting Started Guide</i>. </p> </li> <li> <p>Your S3 source bucket must be version enabled.</p> </li> <li> <p>You must create an S3 destination bucket. Code signing uses your S3 destination bucket to write your signed code.</p> </li> <li> <p>You specify the name of the source and destination buckets when calling the <code>StartSigningJob</code> operation.</p> </li> <li> <p>You must also specify a request token that identifies your request to code signing.</p> </li> </ul> <p>You can call the <a>DescribeSigningJob</a> and the <a>ListSigningJobs</a> actions after you call <code>StartSigningJob</code>.</p> <p>For a Java example that shows how to use this action, see <a href=\"http://docs.aws.amazon.com/acm/latest/userguide/\">http://docs.aws.amazon.com/acm/latest/userguide/</a> </p>"
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
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Adds one or more tags to a signing profile. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a key and an optional value. To specify the signing profile, use its Amazon Resource Name (ARN). To specify the tag, use a key-value pair.</p>"
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
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Removes one or more tags from a signing profile. To remove the tags, specify a list of tag keys.</p>"
    }
  },
  "shapes": {
    "key": {
      "type": "string"
    },
    "BucketName": {
      "type": "string"
    },
    "CancelSigningProfileRequest": {
      "type": "structure",
      "required": [
        "profileName"
      ],
      "members": {
        "profileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of the signing profile to be canceled.</p>",
          "location": "uri",
          "locationName": "profileName"
        }
      }
    },
    "Category": {
      "type": "string",
      "enum": [
        "AWSIoT"
      ]
    },
    "CertificateArn": {
      "type": "string"
    },
    "ClientRequestToken": {
      "type": "string"
    },
    "CompletedAt": {
      "type": "timestamp"
    },
    "CreatedAt": {
      "type": "timestamp"
    },
    "DescribeSigningJobRequest": {
      "type": "structure",
      "required": [
        "jobId"
      ],
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The ID of the signing job on input.</p>",
          "location": "uri",
          "locationName": "jobId"
        }
      }
    },
    "DescribeSigningJobResponse": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The ID of the signing job on output.</p>"
        },
        "source": {
          "shape": "Source",
          "documentation": "<p>The object that contains the name of your S3 bucket or your raw code.</p>"
        },
        "signingMaterial": {
          "shape": "SigningMaterial",
          "documentation": "<p>The Amazon Resource Name (ARN) of your code signing certificate.</p>"
        },
        "platformId": {
          "shape": "PlatformId",
          "documentation": "<p>The microcontroller platform to which your signed code image will be distributed.</p>"
        },
        "profileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of the profile that initiated the signing operation.</p>"
        },
        "overrides": {
          "shape": "SigningPlatformOverrides",
          "documentation": "<p>A list of any overrides that were applied to the signing operation.</p>"
        },
        "signingParameters": {
          "shape": "SigningParameters",
          "documentation": "<p>Map of user-assigned key-value pairs used during signing. These values contain any information that you specified for use in your signing job. </p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>Date and time that the signing job was created.</p>"
        },
        "completedAt": {
          "shape": "CompletedAt",
          "documentation": "<p>Date and time that the signing job was completed.</p>"
        },
        "requestedBy": {
          "shape": "RequestedBy",
          "documentation": "<p>The IAM principal that requested the signing job.</p>"
        },
        "status": {
          "shape": "SigningStatus",
          "documentation": "<p>Status of the signing job.</p>"
        },
        "statusReason": {
          "shape": "StatusReason",
          "documentation": "<p>String value that contains the status reason.</p>"
        },
        "signedObject": {
          "shape": "SignedObject",
          "documentation": "<p>Name of the S3 bucket where the signed code image is saved by code signing.</p>"
        }
      }
    },
    "Destination": {
      "type": "structure",
      "members": {
        "s3": {
          "shape": "S3Destination",
          "documentation": "<p>The <code>S3Destination</code> object.</p>"
        }
      },
      "documentation": "<p>Points to an <code>S3Destination</code> object that contains information about your S3 bucket.</p>"
    },
    "DisplayName": {
      "type": "string"
    },
    "EncryptionAlgorithm": {
      "type": "string",
      "enum": [
        "RSA",
        "ECDSA"
      ]
    },
    "EncryptionAlgorithmOptions": {
      "type": "structure",
      "required": [
        "allowedValues",
        "defaultValue"
      ],
      "members": {
        "allowedValues": {
          "shape": "EncryptionAlgorithms",
          "documentation": "<p>The set of accepted encryption algorithms that are allowed in a code signing job.</p>"
        },
        "defaultValue": {
          "shape": "EncryptionAlgorithm",
          "documentation": "<p>The default encryption algorithm that is used by a code signing job.</p>"
        }
      },
      "documentation": "<p>The encryption algorithm options that are available to a code signing job.</p>"
    },
    "EncryptionAlgorithms": {
      "type": "list",
      "member": {
        "shape": "EncryptionAlgorithm"
      }
    },
    "GetSigningPlatformRequest": {
      "type": "structure",
      "required": [
        "platformId"
      ],
      "members": {
        "platformId": {
          "shape": "PlatformId",
          "documentation": "<p>The ID of the target signing platform.</p>",
          "location": "uri",
          "locationName": "platformId"
        }
      }
    },
    "GetSigningPlatformResponse": {
      "type": "structure",
      "members": {
        "platformId": {
          "shape": "PlatformId",
          "documentation": "<p>The ID of the target signing platform.</p>"
        },
        "displayName": {
          "shape": "DisplayName",
          "documentation": "<p>The display name of the target signing platform.</p>"
        },
        "partner": {
          "shape": "String",
          "documentation": "<p>A list of partner entities that use the target signing platform.</p>"
        },
        "target": {
          "shape": "String",
          "documentation": "<p>The validation template that is used by the target signing platform.</p>"
        },
        "category": {
          "shape": "Category",
          "documentation": "<p>The category type of the target signing platform.</p>"
        },
        "signingConfiguration": {
          "shape": "SigningConfiguration",
          "documentation": "<p>A list of configurations applied to the target platform at signing.</p>"
        },
        "signingImageFormat": {
          "shape": "SigningImageFormat",
          "documentation": "<p>The format of the target platform's signing image.</p>"
        },
        "maxSizeInMB": {
          "shape": "MaxSizeInMB",
          "documentation": "<p>The maximum size (in MB) of the payload that can be signed by the target platform.</p>"
        }
      }
    },
    "GetSigningProfileRequest": {
      "type": "structure",
      "required": [
        "profileName"
      ],
      "members": {
        "profileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of the target signing profile.</p>",
          "location": "uri",
          "locationName": "profileName"
        }
      }
    },
    "GetSigningProfileResponse": {
      "type": "structure",
      "members": {
        "profileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of the target signing profile.</p>"
        },
        "signingMaterial": {
          "shape": "SigningMaterial",
          "documentation": "<p>The ARN of the certificate that the target profile uses for signing operations.</p>"
        },
        "platformId": {
          "shape": "PlatformId",
          "documentation": "<p>The ID of the platform that is used by the target signing profile.</p>"
        },
        "overrides": {
          "shape": "SigningPlatformOverrides",
          "documentation": "<p>A list of overrides applied by the target signing profile for signing operations.</p>"
        },
        "signingParameters": {
          "shape": "SigningParameters",
          "documentation": "<p>A map of key-value pairs for signing operations that is attached to the target signing profile.</p>"
        },
        "status": {
          "shape": "SigningProfileStatus",
          "documentation": "<p>The status of the target signing profile.</p>"
        },
        "arn": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) for the signing profile.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of tags associated with the signing profile.</p>"
        }
      }
    },
    "HashAlgorithm": {
      "type": "string",
      "enum": [
        "SHA1",
        "SHA256"
      ]
    },
    "HashAlgorithmOptions": {
      "type": "structure",
      "required": [
        "allowedValues",
        "defaultValue"
      ],
      "members": {
        "allowedValues": {
          "shape": "HashAlgorithms",
          "documentation": "<p>The set of accepted hash algorithms allowed in a code signing job.</p>"
        },
        "defaultValue": {
          "shape": "HashAlgorithm",
          "documentation": "<p>The default hash algorithm that is used in a code signing job.</p>"
        }
      },
      "documentation": "<p>The hash algorithms that are available to a code signing job.</p>"
    },
    "HashAlgorithms": {
      "type": "list",
      "member": {
        "shape": "HashAlgorithm"
      }
    },
    "ImageFormat": {
      "type": "string",
      "enum": [
        "JSON",
        "JSONEmbedded",
        "JSONDetached"
      ]
    },
    "ImageFormats": {
      "type": "list",
      "member": {
        "shape": "ImageFormat"
      }
    },
    "JobId": {
      "type": "string"
    },
    "Key": {
      "type": "string"
    },
    "ListSigningJobsRequest": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "SigningStatus",
          "documentation": "<p>A status value with which to filter your results.</p>",
          "location": "querystring",
          "locationName": "status"
        },
        "platformId": {
          "shape": "PlatformId",
          "documentation": "<p>The ID of microcontroller platform that you specified for the distribution of your code image.</p>",
          "location": "querystring",
          "locationName": "platformId"
        },
        "requestedBy": {
          "shape": "RequestedBy",
          "documentation": "<p>The IAM principal that requested the signing job.</p>",
          "location": "querystring",
          "locationName": "requestedBy"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Specifies the maximum number of items to return in the response. Use this parameter when paginating results. If additional items exist beyond the number you specify, the <code>nextToken</code> element is set in the response. Use the <code>nextToken</code> value in a subsequent request to retrieve additional items. </p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>String for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of <code>nextToken</code> from the response that you just received.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListSigningJobsResponse": {
      "type": "structure",
      "members": {
        "jobs": {
          "shape": "SigningJobs",
          "documentation": "<p>A list of your signing jobs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>String for specifying the next set of paginated results.</p>"
        }
      }
    },
    "ListSigningPlatformsRequest": {
      "type": "structure",
      "members": {
        "category": {
          "shape": "String",
          "documentation": "<p>The category type of a signing platform.</p>",
          "location": "querystring",
          "locationName": "category"
        },
        "partner": {
          "shape": "String",
          "documentation": "<p>Any partner entities connected to a signing platform.</p>",
          "location": "querystring",
          "locationName": "partner"
        },
        "target": {
          "shape": "String",
          "documentation": "<p>The validation template that is used by the target signing platform.</p>",
          "location": "querystring",
          "locationName": "target"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned by this operation.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of <code>nextToken</code> from the response that you just received.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListSigningPlatformsResponse": {
      "type": "structure",
      "members": {
        "platforms": {
          "shape": "SigningPlatforms",
          "documentation": "<p>A list of all platforms that match the request parameters.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Value for specifying the next set of paginated results to return.</p>"
        }
      }
    },
    "ListSigningProfilesRequest": {
      "type": "structure",
      "members": {
        "includeCanceled": {
          "shape": "bool",
          "documentation": "<p>Designates whether to include profiles with the status of <code>CANCELED</code>.</p>",
          "location": "querystring",
          "locationName": "includeCanceled"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of profiles to be returned.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>Value for specifying the next set of paginated results to return. After you receive a response with truncated results, use this parameter in a subsequent request. Set it to the value of <code>nextToken</code> from the response that you just received.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListSigningProfilesResponse": {
      "type": "structure",
      "members": {
        "profiles": {
          "shape": "SigningProfiles",
          "documentation": "<p>A list of profiles that are available in the AWS account. This includes profiles with the status of <code>CANCELED</code> if the <code>includeCanceled</code> parameter is set to <code>true</code>.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>Value for specifying the next set of paginated results to return.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the signing profile.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of tags associated with the signing profile.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 25,
      "min": 1
    },
    "MaxSizeInMB": {
      "type": "integer"
    },
    "NextToken": {
      "type": "string"
    },
    "PlatformId": {
      "type": "string"
    },
    "Prefix": {
      "type": "string"
    },
    "ProfileName": {
      "type": "string",
      "max": 64,
      "min": 2,
      "pattern": "^[a-zA-Z0-9_]{2,}"
    },
    "PutSigningProfileRequest": {
      "type": "structure",
      "required": [
        "profileName",
        "signingMaterial",
        "platformId"
      ],
      "members": {
        "profileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of the signing profile to be created.</p>",
          "location": "uri",
          "locationName": "profileName"
        },
        "signingMaterial": {
          "shape": "SigningMaterial",
          "documentation": "<p>The AWS Certificate Manager certificate that will be used to sign code with the new signing profile.</p>"
        },
        "platformId": {
          "shape": "PlatformId",
          "documentation": "<p>The ID of the signing platform to be created.</p>"
        },
        "overrides": {
          "shape": "SigningPlatformOverrides",
          "documentation": "<p>A subfield of <code>platform</code>. This specifies any different configuration options that you want to apply to the chosen platform (such as a different <code>hash-algorithm</code> or <code>signing-algorithm</code>).</p>"
        },
        "signingParameters": {
          "shape": "SigningParameters",
          "documentation": "<p>Map of key-value pairs for signing. These can include any information that you want to use during signing.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>Tags to be associated with the signing profile that is being created.</p>"
        }
      }
    },
    "PutSigningProfileResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the signing profile created.</p>"
        }
      }
    },
    "RequestedBy": {
      "type": "string"
    },
    "S3Destination": {
      "type": "structure",
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p>Name of the S3 bucket.</p>"
        },
        "prefix": {
          "shape": "Prefix",
          "documentation": "<p>An Amazon S3 prefix that you can use to limit responses to those that begin with the specified prefix.</p>"
        }
      },
      "documentation": "<p>The name and prefix of the S3 bucket where code signing saves your signed objects.</p>"
    },
    "S3SignedObject": {
      "type": "structure",
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p>Name of the S3 bucket.</p>"
        },
        "key": {
          "shape": "key",
          "documentation": "<p>Key name that uniquely identifies a signed code image in your bucket.</p>"
        }
      },
      "documentation": "<p>The S3 bucket name and key where code signing saved your signed code image.</p>"
    },
    "S3Source": {
      "type": "structure",
      "required": [
        "bucketName",
        "key",
        "version"
      ],
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p>Name of the S3 bucket.</p>"
        },
        "key": {
          "shape": "Key",
          "documentation": "<p>Key name of the bucket object that contains your unsigned code.</p>"
        },
        "version": {
          "shape": "Version",
          "documentation": "<p>Version of your source image in your version enabled S3 bucket.</p>"
        }
      },
      "documentation": "<p>Information about the S3 bucket where you saved your unsigned code.</p>"
    },
    "SignedObject": {
      "type": "structure",
      "members": {
        "s3": {
          "shape": "S3SignedObject",
          "documentation": "<p>The <code>S3SignedObject</code>.</p>"
        }
      },
      "documentation": "<p>Points to an <code>S3SignedObject</code> object that contains information about your signed code image.</p>"
    },
    "SigningConfiguration": {
      "type": "structure",
      "required": [
        "encryptionAlgorithmOptions",
        "hashAlgorithmOptions"
      ],
      "members": {
        "encryptionAlgorithmOptions": {
          "shape": "EncryptionAlgorithmOptions",
          "documentation": "<p>The encryption algorithm options that are available for a code signing job.</p>"
        },
        "hashAlgorithmOptions": {
          "shape": "HashAlgorithmOptions",
          "documentation": "<p>The hash algorithm options that are available for a code signing job.</p>"
        }
      },
      "documentation": "<p>The configuration of a code signing operation.</p>"
    },
    "SigningConfigurationOverrides": {
      "type": "structure",
      "members": {
        "encryptionAlgorithm": {
          "shape": "EncryptionAlgorithm",
          "documentation": "<p>A specified override of the default encryption algorithm that is used in a code signing job.</p>"
        },
        "hashAlgorithm": {
          "shape": "HashAlgorithm",
          "documentation": "<p>A specified override of the default hash algorithm that is used in a code signing job.</p>"
        }
      },
      "documentation": "<p>A signing configuration that overrides the default encryption or hash algorithm of a signing job.</p>"
    },
    "SigningImageFormat": {
      "type": "structure",
      "required": [
        "supportedFormats",
        "defaultFormat"
      ],
      "members": {
        "supportedFormats": {
          "shape": "ImageFormats",
          "documentation": "<p>The supported formats of a code signing image.</p>"
        },
        "defaultFormat": {
          "shape": "ImageFormat",
          "documentation": "<p>The default format of a code signing image.</p>"
        }
      },
      "documentation": "<p>The image format of a code signing platform or profile.</p>"
    },
    "SigningJob": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The ID of the signing job.</p>"
        },
        "source": {
          "shape": "Source",
          "documentation": "<p>A <code>Source</code> that contains information about a signing job's code image source.</p>"
        },
        "signedObject": {
          "shape": "SignedObject",
          "documentation": "<p>A <code>SignedObject</code> structure that contains information about a signing job's signed code image.</p>"
        },
        "signingMaterial": {
          "shape": "SigningMaterial",
          "documentation": "<p>A <code>SigningMaterial</code> object that contains the Amazon Resource Name (ARN) of the certificate used for the signing job.</p>"
        },
        "createdAt": {
          "shape": "CreatedAt",
          "documentation": "<p>The date and time that the signing job was created.</p>"
        },
        "status": {
          "shape": "SigningStatus",
          "documentation": "<p>The status of the signing job.</p>"
        }
      },
      "documentation": "<p>Contains information about a signing job.</p>"
    },
    "SigningJobs": {
      "type": "list",
      "member": {
        "shape": "SigningJob"
      }
    },
    "SigningMaterial": {
      "type": "structure",
      "required": [
        "certificateArn"
      ],
      "members": {
        "certificateArn": {
          "shape": "CertificateArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the certificates that is used to sign your code.</p>"
        }
      },
      "documentation": "<p>The ACM certificate that is used to sign your code.</p>"
    },
    "SigningParameterKey": {
      "type": "string"
    },
    "SigningParameterValue": {
      "type": "string"
    },
    "SigningParameters": {
      "type": "map",
      "key": {
        "shape": "SigningParameterKey"
      },
      "value": {
        "shape": "SigningParameterValue"
      }
    },
    "SigningPlatform": {
      "type": "structure",
      "members": {
        "platformId": {
          "shape": "String",
          "documentation": "<p>The ID of a code signing; platform.</p>"
        },
        "displayName": {
          "shape": "String",
          "documentation": "<p>The display name of a code signing platform.</p>"
        },
        "partner": {
          "shape": "String",
          "documentation": "<p>Any partner entities linked to a code signing platform.</p>"
        },
        "target": {
          "shape": "String",
          "documentation": "<p>The types of targets that can be signed by a code signing platform.</p>"
        },
        "category": {
          "shape": "Category",
          "documentation": "<p>The category of a code signing platform.</p>"
        },
        "signingConfiguration": {
          "shape": "SigningConfiguration",
          "documentation": "<p>The configuration of a code signing platform. This includes the designated hash algorithm and encryption algorithm of a signing platform.</p>"
        },
        "signingImageFormat": {
          "shape": "SigningImageFormat"
        },
        "maxSizeInMB": {
          "shape": "MaxSizeInMB",
          "documentation": "<p>The maximum size (in MB) of code that can be signed by a code signing platform.</p>"
        }
      },
      "documentation": "<p>Contains information about the signing configurations and parameters that are used to perform a code signing job.</p>"
    },
    "SigningPlatformOverrides": {
      "type": "structure",
      "members": {
        "signingConfiguration": {
          "shape": "SigningConfigurationOverrides",
          "documentation": "<p>A signing configuration that overrides the default encryption or hash algorithm of a signing job.</p>"
        },
        "signingImageFormat": {
          "shape": "ImageFormat",
          "documentation": "<p>A signed image is a JSON object. When overriding the default signing platform configuration, a customer can select either of two signing formats, <code>JSONEmbedded</code> or <code>JSONDetached</code>. (A third format value, <code>JSON</code>, is reserved for future use.) With <code>JSONEmbedded</code>, the signing image has the payload embedded in it. With <code>JSONDetached</code>, the payload is not be embedded in the signing image.</p>"
        }
      },
      "documentation": "<p>Any overrides that are applied to the signing configuration of a code signing platform.</p>"
    },
    "SigningPlatforms": {
      "type": "list",
      "member": {
        "shape": "SigningPlatform"
      }
    },
    "SigningProfile": {
      "type": "structure",
      "members": {
        "profileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of the signing profile.</p>"
        },
        "signingMaterial": {
          "shape": "SigningMaterial",
          "documentation": "<p>The ACM certificate that is available for use by a signing profile.</p>"
        },
        "platformId": {
          "shape": "PlatformId",
          "documentation": "<p>The ID of a platform that is available for use by a signing profile.</p>"
        },
        "signingParameters": {
          "shape": "SigningParameters",
          "documentation": "<p>The parameters that are available for use by a code signing user.</p>"
        },
        "status": {
          "shape": "SigningProfileStatus",
          "documentation": "<p>The status of a code signing profile.</p>"
        },
        "arn": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) for the signing profile.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of tags associated with the signing profile.</p>"
        }
      },
      "documentation": "<p>Contains information about the ACM certificates and code signing configuration parameters that can be used by a given code signing user.</p>"
    },
    "SigningProfileStatus": {
      "type": "string",
      "enum": [
        "Active",
        "Canceled"
      ]
    },
    "SigningProfiles": {
      "type": "list",
      "member": {
        "shape": "SigningProfile"
      }
    },
    "SigningStatus": {
      "type": "string",
      "enum": [
        "InProgress",
        "Failed",
        "Succeeded"
      ]
    },
    "Source": {
      "type": "structure",
      "members": {
        "s3": {
          "shape": "S3Source",
          "documentation": "<p>The <code>S3Source</code> object.</p>"
        }
      },
      "documentation": "<p>An <code>S3Source</code> object that contains information about the S3 bucket where you saved your unsigned code.</p>"
    },
    "StartSigningJobRequest": {
      "type": "structure",
      "required": [
        "source",
        "destination",
        "clientRequestToken"
      ],
      "members": {
        "source": {
          "shape": "Source",
          "documentation": "<p>The S3 bucket that contains the object to sign or a BLOB that contains your raw code.</p>"
        },
        "destination": {
          "shape": "Destination",
          "documentation": "<p>The S3 bucket in which to save your signed object. The destination contains the name of your bucket and an optional prefix.</p>"
        },
        "profileName": {
          "shape": "ProfileName",
          "documentation": "<p>The name of the signing profile.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>String that identifies the signing request. All calls after the first that use this token return the same response as the first call.</p>",
          "idempotencyToken": true
        }
      }
    },
    "StartSigningJobResponse": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The ID of your signing job.</p>"
        }
      }
    },
    "StatusReason": {
      "type": "string"
    },
    "String": {
      "type": "string"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^(?!aws:)[a-zA-Z+-=._:/]+$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 1
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
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the signing profile.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>One or more tags to be associated with the signing profile.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the signing profile.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of tag keys to be removed from the signing profile.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "Version": {
      "type": "string"
    },
    "bool": {
      "type": "boolean"
    },
    "string": {
      "type": "string"
    }
  },
  "documentation": "<p>With code signing for IoT, you can sign code that you create for any IoT device that is supported by Amazon Web Services (AWS). Code signing is available through <a href=\"http://docs.aws.amazon.com/freertos/latest/userguide/\">Amazon FreeRTOS</a> and <a href=\"http://docs.aws.amazon.com/iot/latest/developerguide/\">AWS IoT Device Management</a>, and integrated with <a href=\"http://docs.aws.amazon.com/acm/latest/userguide/\">AWS Certificate Manager (ACM)</a>. In order to sign code, you import a third-party code signing certificate with ACM that is used to sign updates in Amazon FreeRTOS and AWS IoT Device Management. For general information about using code signing, see the <a href=\"http://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html\">Code Signing for IoT Developer Guide</a>.</p>"
}
]===]))
