local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2020-05-31",
    "endpointPrefix": "cloudfront",
    "globalEndpoint": "cloudfront.amazonaws.com",
    "protocol": "rest-xml",
    "serviceAbbreviation": "CloudFront",
    "serviceFullName": "Amazon CloudFront",
    "serviceId": "CloudFront",
    "signatureVersion": "v4",
    "uid": "cloudfront-2020-05-31"
  },
  "operations": {
    "CreateCachePolicy": {
      "name": "CreateCachePolicy2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/cache-policy",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateCachePolicyRequest"
      },
      "output": {
        "shape": "CreateCachePolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "CachePolicyAlreadyExists"
        },
        {
          "shape": "TooManyCachePolicies"
        },
        {
          "shape": "TooManyHeadersInCachePolicy"
        },
        {
          "shape": "TooManyCookiesInCachePolicy"
        },
        {
          "shape": "TooManyQueryStringsInCachePolicy"
        }
      ],
      "documentation": "<p>Creates a cache policy.</p> <p>After you create a cache policy, you can attach it to one or more cache behaviors. When it’s attached to a cache behavior, the cache policy determines the following:</p> <ul> <li> <p>The values that CloudFront includes in the <i>cache key</i>. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.</p> </li> <li> <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache.</p> </li> </ul> <p>The headers, cookies, and query strings that are included in the cache key are automatically included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t find an object in its cache that matches the request’s cache key. If you want to send values to the origin but <i>not</i> include them in the cache key, use <code>OriginRequestPolicy</code>.</p> <p>For more information about cache policies, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html\">Controlling the cache key</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateCloudFrontOriginAccessIdentity": {
      "name": "CreateCloudFrontOriginAccessIdentity2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/origin-access-identity/cloudfront",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateCloudFrontOriginAccessIdentityRequest"
      },
      "output": {
        "shape": "CreateCloudFrontOriginAccessIdentityResult"
      },
      "errors": [
        {
          "shape": "CloudFrontOriginAccessIdentityAlreadyExists"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyCloudFrontOriginAccessIdentities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateDistribution": {
      "name": "CreateDistribution2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/distribution",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateDistributionRequest"
      },
      "output": {
        "shape": "CreateDistributionResult"
      },
      "errors": [
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "DistributionAlreadyExists"
        },
        {
          "shape": "InvalidOrigin"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "InvalidViewerCertificate"
        },
        {
          "shape": "InvalidMinimumProtocolVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyDistributionCNAMEs"
        },
        {
          "shape": "TooManyDistributions"
        },
        {
          "shape": "InvalidDefaultRootObject"
        },
        {
          "shape": "InvalidRelativePath"
        },
        {
          "shape": "InvalidErrorCode"
        },
        {
          "shape": "InvalidResponseCode"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidRequiredProtocol"
        },
        {
          "shape": "NoSuchOrigin"
        },
        {
          "shape": "TooManyOrigins"
        },
        {
          "shape": "TooManyOriginGroupsPerDistribution"
        },
        {
          "shape": "TooManyCacheBehaviors"
        },
        {
          "shape": "TooManyCookieNamesInWhiteList"
        },
        {
          "shape": "InvalidForwardCookies"
        },
        {
          "shape": "TooManyHeadersInForwardedValues"
        },
        {
          "shape": "InvalidHeadersForS3Origin"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "TooManyCertificates"
        },
        {
          "shape": "InvalidLocationCode"
        },
        {
          "shape": "InvalidGeoRestrictionParameter"
        },
        {
          "shape": "InvalidProtocolSettings"
        },
        {
          "shape": "InvalidTTLOrder"
        },
        {
          "shape": "InvalidWebACLId"
        },
        {
          "shape": "TooManyOriginCustomHeaders"
        },
        {
          "shape": "TooManyQueryStringParameters"
        },
        {
          "shape": "InvalidQueryStringParameters"
        },
        {
          "shape": "TooManyDistributionsWithLambdaAssociations"
        },
        {
          "shape": "TooManyDistributionsWithSingleFunctionARN"
        },
        {
          "shape": "TooManyLambdaFunctionAssociations"
        },
        {
          "shape": "InvalidLambdaFunctionAssociation"
        },
        {
          "shape": "InvalidOriginReadTimeout"
        },
        {
          "shape": "InvalidOriginKeepaliveTimeout"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"
        },
        {
          "shape": "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"
        },
        {
          "shape": "NoSuchCachePolicy"
        },
        {
          "shape": "TooManyDistributionsAssociatedToCachePolicy"
        },
        {
          "shape": "NoSuchOriginRequestPolicy"
        },
        {
          "shape": "TooManyDistributionsAssociatedToOriginRequestPolicy"
        }
      ],
      "documentation": "<p>Creates a new web distribution. You create a CloudFront distribution to tell CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery. Send a <code>POST</code> request to the <code>/<i>CloudFront API version</i>/distribution</code>/<code>distribution ID</code> resource.</p> <important> <p>When you update a distribution, there are more required fields than when you create a distribution. When you update your distribution by using <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html\">UpdateDistribution</a>, follow the steps included in the documentation to get the current configuration and then make your updates. This helps to make sure that you include all of the required fields. To view a summary, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html\">Required Fields for Create Distribution and Update Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </important>"
    },
    "CreateDistributionWithTags": {
      "name": "CreateDistributionWithTags2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/distribution?WithTags",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateDistributionWithTagsRequest"
      },
      "output": {
        "shape": "CreateDistributionWithTagsResult"
      },
      "errors": [
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "DistributionAlreadyExists"
        },
        {
          "shape": "InvalidOrigin"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "InvalidViewerCertificate"
        },
        {
          "shape": "InvalidMinimumProtocolVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyDistributionCNAMEs"
        },
        {
          "shape": "TooManyDistributions"
        },
        {
          "shape": "InvalidDefaultRootObject"
        },
        {
          "shape": "InvalidRelativePath"
        },
        {
          "shape": "InvalidErrorCode"
        },
        {
          "shape": "InvalidResponseCode"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidRequiredProtocol"
        },
        {
          "shape": "NoSuchOrigin"
        },
        {
          "shape": "TooManyOrigins"
        },
        {
          "shape": "TooManyOriginGroupsPerDistribution"
        },
        {
          "shape": "TooManyCacheBehaviors"
        },
        {
          "shape": "TooManyCookieNamesInWhiteList"
        },
        {
          "shape": "InvalidForwardCookies"
        },
        {
          "shape": "TooManyHeadersInForwardedValues"
        },
        {
          "shape": "InvalidHeadersForS3Origin"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "TooManyCertificates"
        },
        {
          "shape": "InvalidLocationCode"
        },
        {
          "shape": "InvalidGeoRestrictionParameter"
        },
        {
          "shape": "InvalidProtocolSettings"
        },
        {
          "shape": "InvalidTTLOrder"
        },
        {
          "shape": "InvalidWebACLId"
        },
        {
          "shape": "TooManyOriginCustomHeaders"
        },
        {
          "shape": "InvalidTagging"
        },
        {
          "shape": "TooManyQueryStringParameters"
        },
        {
          "shape": "InvalidQueryStringParameters"
        },
        {
          "shape": "TooManyDistributionsWithLambdaAssociations"
        },
        {
          "shape": "TooManyDistributionsWithSingleFunctionARN"
        },
        {
          "shape": "TooManyLambdaFunctionAssociations"
        },
        {
          "shape": "InvalidLambdaFunctionAssociation"
        },
        {
          "shape": "InvalidOriginReadTimeout"
        },
        {
          "shape": "InvalidOriginKeepaliveTimeout"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"
        },
        {
          "shape": "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"
        },
        {
          "shape": "NoSuchCachePolicy"
        },
        {
          "shape": "TooManyDistributionsAssociatedToCachePolicy"
        },
        {
          "shape": "NoSuchOriginRequestPolicy"
        },
        {
          "shape": "TooManyDistributionsAssociatedToOriginRequestPolicy"
        }
      ],
      "documentation": "<p>Create a new distribution with tags.</p>"
    },
    "CreateFieldLevelEncryptionConfig": {
      "name": "CreateFieldLevelEncryptionConfig2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/field-level-encryption",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateFieldLevelEncryptionConfigRequest"
      },
      "output": {
        "shape": "CreateFieldLevelEncryptionConfigResult"
      },
      "errors": [
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        },
        {
          "shape": "FieldLevelEncryptionConfigAlreadyExists"
        },
        {
          "shape": "TooManyFieldLevelEncryptionConfigs"
        },
        {
          "shape": "TooManyFieldLevelEncryptionQueryArgProfiles"
        },
        {
          "shape": "TooManyFieldLevelEncryptionContentTypeProfiles"
        },
        {
          "shape": "QueryArgProfileEmpty"
        }
      ],
      "documentation": "<p>Create a new field-level encryption configuration.</p>"
    },
    "CreateFieldLevelEncryptionProfile": {
      "name": "CreateFieldLevelEncryptionProfile2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/field-level-encryption-profile",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateFieldLevelEncryptionProfileRequest"
      },
      "output": {
        "shape": "CreateFieldLevelEncryptionProfileResult"
      },
      "errors": [
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "NoSuchPublicKey"
        },
        {
          "shape": "FieldLevelEncryptionProfileAlreadyExists"
        },
        {
          "shape": "FieldLevelEncryptionProfileSizeExceeded"
        },
        {
          "shape": "TooManyFieldLevelEncryptionProfiles"
        },
        {
          "shape": "TooManyFieldLevelEncryptionEncryptionEntities"
        },
        {
          "shape": "TooManyFieldLevelEncryptionFieldPatterns"
        }
      ],
      "documentation": "<p>Create a field-level encryption profile.</p>"
    },
    "CreateInvalidation": {
      "name": "CreateInvalidation2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/distribution/{DistributionId}/invalidation",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateInvalidationRequest"
      },
      "output": {
        "shape": "CreateInvalidationResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "BatchTooLarge"
        },
        {
          "shape": "TooManyInvalidationsInProgress"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Create a new invalidation. </p>"
    },
    "CreateMonitoringSubscription": {
      "name": "CreateMonitoringSubscription2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/distributions/{DistributionId}/monitoring-subscription"
      },
      "input": {
        "shape": "CreateMonitoringSubscriptionRequest"
      },
      "output": {
        "shape": "CreateMonitoringSubscriptionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchDistribution"
        }
      ],
      "documentation": "<p>Enables additional CloudWatch metrics for the specified CloudFront distribution. The additional metrics incur an additional cost.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional\">Viewing additional CloudFront distribution metrics</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateOriginRequestPolicy": {
      "name": "CreateOriginRequestPolicy2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/origin-request-policy",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateOriginRequestPolicyRequest"
      },
      "output": {
        "shape": "CreateOriginRequestPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "OriginRequestPolicyAlreadyExists"
        },
        {
          "shape": "TooManyOriginRequestPolicies"
        },
        {
          "shape": "TooManyHeadersInOriginRequestPolicy"
        },
        {
          "shape": "TooManyCookiesInOriginRequestPolicy"
        },
        {
          "shape": "TooManyQueryStringsInOriginRequestPolicy"
        }
      ],
      "documentation": "<p>Creates an origin request policy.</p> <p>After you create an origin request policy, you can attach it to one or more cache behaviors. When it’s attached to a cache behavior, the origin request policy determines the values that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to the origin includes the following:</p> <ul> <li> <p>The request body and the URL path (without the domain name) from the viewer request.</p> </li> <li> <p>The headers that CloudFront automatically includes in every origin request, including <code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p> </li> <li> <p>All HTTP headers, cookies, and URL query strings that are specified in the cache policy or the origin request policy. These can include items from the viewer request and, in the case of headers, additional ones that are added by CloudFront.</p> </li> </ul> <p>CloudFront sends a request when it can’t find a valid object in its cache that matches the request. If you want to send values to the origin and also include them in the cache key, use <code>CachePolicy</code>.</p> <p>For more information about origin request policies, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html\">Controlling origin requests</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreatePublicKey": {
      "name": "CreatePublicKey2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/public-key",
        "responseCode": 201
      },
      "input": {
        "shape": "CreatePublicKeyRequest"
      },
      "output": {
        "shape": "CreatePublicKeyResult"
      },
      "errors": [
        {
          "shape": "PublicKeyAlreadyExists"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "TooManyPublicKeys"
        }
      ],
      "documentation": "<p>Add a new public key to CloudFront to use, for example, for field-level encryption. You can add a maximum of 10 public keys with one AWS account.</p>"
    },
    "CreateRealtimeLogConfig": {
      "name": "CreateRealtimeLogConfig2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/realtime-log-config",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateRealtimeLogConfigRequest",
        "locationName": "CreateRealtimeLogConfigRequest",
        "xmlNamespace": {
          "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
        }
      },
      "output": {
        "shape": "CreateRealtimeLogConfigResult"
      },
      "errors": [
        {
          "shape": "RealtimeLogConfigAlreadyExists"
        },
        {
          "shape": "TooManyRealtimeLogConfigs"
        },
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Creates a real-time log configuration.</p> <p>After you create a real-time log configuration, you can attach it to one or more cache behaviors to send real-time log data to the specified Amazon Kinesis data stream.</p> <p>For more information about real-time log configurations, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html\">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateStreamingDistribution": {
      "name": "CreateStreamingDistribution2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/streaming-distribution",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateStreamingDistributionRequest"
      },
      "output": {
        "shape": "CreateStreamingDistributionResult"
      },
      "errors": [
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "StreamingDistributionAlreadyExists"
        },
        {
          "shape": "InvalidOrigin"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyStreamingDistributionCNAMEs"
        },
        {
          "shape": "TooManyStreamingDistributions"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Creates a new RTMP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP. </p> <p>To create a new distribution, submit a <code>POST</code> request to the <i>CloudFront API version</i>/distribution resource. The request body must include a document with a <i>StreamingDistributionConfig</i> element. The response echoes the <code>StreamingDistributionConfig</code> element and returns other information about the RTMP distribution.</p> <p>To get the status of your request, use the <i>GET StreamingDistribution</i> API action. When the value of <code>Enabled</code> is <code>true</code> and the value of <code>Status</code> is <code>Deployed</code>, your distribution is ready. A distribution usually deploys in less than 15 minutes.</p> <p>For more information about web distributions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html\">Working with RTMP Distributions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <important> <p>Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the <code>Quantity</code> element and the number of values specified.</p> </important>"
    },
    "CreateStreamingDistributionWithTags": {
      "name": "CreateStreamingDistributionWithTags2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/streaming-distribution?WithTags",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateStreamingDistributionWithTagsRequest"
      },
      "output": {
        "shape": "CreateStreamingDistributionWithTagsResult"
      },
      "errors": [
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "StreamingDistributionAlreadyExists"
        },
        {
          "shape": "InvalidOrigin"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyStreamingDistributionCNAMEs"
        },
        {
          "shape": "TooManyStreamingDistributions"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidTagging"
        }
      ],
      "documentation": "<p>Create a new streaming distribution with tags.</p>"
    },
    "DeleteCachePolicy": {
      "name": "DeleteCachePolicy2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/cache-policy/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteCachePolicyRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchCachePolicy"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "IllegalDelete"
        },
        {
          "shape": "CachePolicyInUse"
        }
      ],
      "documentation": "<p>Deletes a cache policy.</p> <p>You cannot delete a cache policy if it’s attached to a cache behavior. First update your distributions to remove the cache policy from all cache behaviors, then delete the cache policy.</p> <p>To delete a cache policy, you must provide the policy’s identifier and version. To get these values, you can use <code>ListCachePolicies</code> or <code>GetCachePolicy</code>.</p>"
    },
    "DeleteCloudFrontOriginAccessIdentity": {
      "name": "DeleteCloudFrontOriginAccessIdentity2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/origin-access-identity/cloudfront/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteCloudFrontOriginAccessIdentityRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchCloudFrontOriginAccessIdentity"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "CloudFrontOriginAccessIdentityInUse"
        }
      ],
      "documentation": "<p>Delete an origin access identity. </p>"
    },
    "DeleteDistribution": {
      "name": "DeleteDistribution2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/distribution/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteDistributionRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "DistributionNotDisabled"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "PreconditionFailed"
        }
      ],
      "documentation": "<p>Delete a distribution. </p>"
    },
    "DeleteFieldLevelEncryptionConfig": {
      "name": "DeleteFieldLevelEncryptionConfig2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/field-level-encryption/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteFieldLevelEncryptionConfigRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "FieldLevelEncryptionConfigInUse"
        }
      ],
      "documentation": "<p>Remove a field-level encryption configuration.</p>"
    },
    "DeleteFieldLevelEncryptionProfile": {
      "name": "DeleteFieldLevelEncryptionProfile2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/field-level-encryption-profile/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteFieldLevelEncryptionProfileRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "FieldLevelEncryptionProfileInUse"
        }
      ],
      "documentation": "<p>Remove a field-level encryption profile.</p>"
    },
    "DeleteMonitoringSubscription": {
      "name": "DeleteMonitoringSubscription2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/distributions/{DistributionId}/monitoring-subscription"
      },
      "input": {
        "shape": "DeleteMonitoringSubscriptionRequest"
      },
      "output": {
        "shape": "DeleteMonitoringSubscriptionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchDistribution"
        }
      ],
      "documentation": "<p>Disables additional CloudWatch metrics for the specified CloudFront distribution.</p>"
    },
    "DeleteOriginRequestPolicy": {
      "name": "DeleteOriginRequestPolicy2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/origin-request-policy/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteOriginRequestPolicyRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchOriginRequestPolicy"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "IllegalDelete"
        },
        {
          "shape": "OriginRequestPolicyInUse"
        }
      ],
      "documentation": "<p>Deletes an origin request policy.</p> <p>You cannot delete an origin request policy if it’s attached to any cache behaviors. First update your distributions to remove the origin request policy from all cache behaviors, then delete the origin request policy.</p> <p>To delete an origin request policy, you must provide the policy’s identifier and version. To get the identifier, you can use <code>ListOriginRequestPolicies</code> or <code>GetOriginRequestPolicy</code>.</p>"
    },
    "DeletePublicKey": {
      "name": "DeletePublicKey2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/public-key/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeletePublicKeyRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "PublicKeyInUse"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchPublicKey"
        },
        {
          "shape": "PreconditionFailed"
        }
      ],
      "documentation": "<p>Remove a public key you previously added to CloudFront.</p>"
    },
    "DeleteRealtimeLogConfig": {
      "name": "DeleteRealtimeLogConfig2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/delete-realtime-log-config/",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteRealtimeLogConfigRequest",
        "locationName": "DeleteRealtimeLogConfigRequest",
        "xmlNamespace": {
          "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
        }
      },
      "errors": [
        {
          "shape": "NoSuchRealtimeLogConfig"
        },
        {
          "shape": "RealtimeLogConfigInUse"
        },
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Deletes a real-time log configuration.</p> <p>You cannot delete a real-time log configuration if it’s attached to a cache behavior. First update your distributions to remove the real-time log configuration from all cache behaviors, then delete the real-time log configuration.</p> <p>To delete a real-time log configuration, you can provide the configuration’s name or its Amazon Resource Name (ARN). You must provide at least one. If you provide both, CloudFront uses the name to identify the real-time log configuration to delete.</p>"
    },
    "DeleteStreamingDistribution": {
      "name": "DeleteStreamingDistribution2020_05_31",
      "http": {
        "method": "DELETE",
        "requestUri": "/2020-05-31/streaming-distribution/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteStreamingDistributionRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "StreamingDistributionNotDisabled"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchStreamingDistribution"
        },
        {
          "shape": "PreconditionFailed"
        }
      ],
      "documentation": "<p>Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete an RTMP distribution using the CloudFront API</b>:</p> <ol> <li> <p>Disable the RTMP distribution.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution. </p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Streaming Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Streaming Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Streaming Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Streaming Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to your <code>DELETE Streaming Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html\">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "GetCachePolicy": {
      "name": "GetCachePolicy2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/cache-policy/{Id}"
      },
      "input": {
        "shape": "GetCachePolicyRequest"
      },
      "output": {
        "shape": "GetCachePolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchCachePolicy"
        }
      ],
      "documentation": "<p>Gets a cache policy, including the following metadata:</p> <ul> <li> <p>The policy’s identifier.</p> </li> <li> <p>The date and time when the policy was last modified.</p> </li> </ul> <p>To get a cache policy, you must provide the policy’s identifier. If the cache policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>"
    },
    "GetCachePolicyConfig": {
      "name": "GetCachePolicyConfig2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/cache-policy/{Id}/config"
      },
      "input": {
        "shape": "GetCachePolicyConfigRequest"
      },
      "output": {
        "shape": "GetCachePolicyConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchCachePolicy"
        }
      ],
      "documentation": "<p>Gets a cache policy configuration.</p> <p>To get a cache policy configuration, you must provide the policy’s identifier. If the cache policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>"
    },
    "GetCloudFrontOriginAccessIdentity": {
      "name": "GetCloudFrontOriginAccessIdentity2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/origin-access-identity/cloudfront/{Id}"
      },
      "input": {
        "shape": "GetCloudFrontOriginAccessIdentityRequest"
      },
      "output": {
        "shape": "GetCloudFrontOriginAccessIdentityResult"
      },
      "errors": [
        {
          "shape": "NoSuchCloudFrontOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the information about an origin access identity. </p>"
    },
    "GetCloudFrontOriginAccessIdentityConfig": {
      "name": "GetCloudFrontOriginAccessIdentityConfig2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/origin-access-identity/cloudfront/{Id}/config"
      },
      "input": {
        "shape": "GetCloudFrontOriginAccessIdentityConfigRequest"
      },
      "output": {
        "shape": "GetCloudFrontOriginAccessIdentityConfigResult"
      },
      "errors": [
        {
          "shape": "NoSuchCloudFrontOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the configuration information about an origin access identity. </p>"
    },
    "GetDistribution": {
      "name": "GetDistribution2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distribution/{Id}"
      },
      "input": {
        "shape": "GetDistributionRequest"
      },
      "output": {
        "shape": "GetDistributionResult"
      },
      "errors": [
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the information about a distribution.</p>"
    },
    "GetDistributionConfig": {
      "name": "GetDistributionConfig2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distribution/{Id}/config"
      },
      "input": {
        "shape": "GetDistributionConfigRequest"
      },
      "output": {
        "shape": "GetDistributionConfigResult"
      },
      "errors": [
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the configuration information about a distribution. </p>"
    },
    "GetFieldLevelEncryption": {
      "name": "GetFieldLevelEncryption2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/field-level-encryption/{Id}"
      },
      "input": {
        "shape": "GetFieldLevelEncryptionRequest"
      },
      "output": {
        "shape": "GetFieldLevelEncryptionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        }
      ],
      "documentation": "<p>Get the field-level encryption configuration information.</p>"
    },
    "GetFieldLevelEncryptionConfig": {
      "name": "GetFieldLevelEncryptionConfig2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/field-level-encryption/{Id}/config"
      },
      "input": {
        "shape": "GetFieldLevelEncryptionConfigRequest"
      },
      "output": {
        "shape": "GetFieldLevelEncryptionConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        }
      ],
      "documentation": "<p>Get the field-level encryption configuration information.</p>"
    },
    "GetFieldLevelEncryptionProfile": {
      "name": "GetFieldLevelEncryptionProfile2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/field-level-encryption-profile/{Id}"
      },
      "input": {
        "shape": "GetFieldLevelEncryptionProfileRequest"
      },
      "output": {
        "shape": "GetFieldLevelEncryptionProfileResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        }
      ],
      "documentation": "<p>Get the field-level encryption profile information.</p>"
    },
    "GetFieldLevelEncryptionProfileConfig": {
      "name": "GetFieldLevelEncryptionProfileConfig2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/field-level-encryption-profile/{Id}/config"
      },
      "input": {
        "shape": "GetFieldLevelEncryptionProfileConfigRequest"
      },
      "output": {
        "shape": "GetFieldLevelEncryptionProfileConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        }
      ],
      "documentation": "<p>Get the field-level encryption profile configuration information.</p>"
    },
    "GetInvalidation": {
      "name": "GetInvalidation2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distribution/{DistributionId}/invalidation/{Id}"
      },
      "input": {
        "shape": "GetInvalidationRequest"
      },
      "output": {
        "shape": "GetInvalidationResult"
      },
      "errors": [
        {
          "shape": "NoSuchInvalidation"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the information about an invalidation. </p>"
    },
    "GetMonitoringSubscription": {
      "name": "GetMonitoringSubscription2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distributions/{DistributionId}/monitoring-subscription"
      },
      "input": {
        "shape": "GetMonitoringSubscriptionRequest"
      },
      "output": {
        "shape": "GetMonitoringSubscriptionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchDistribution"
        }
      ],
      "documentation": "<p>Gets information about whether additional CloudWatch metrics are enabled for the specified CloudFront distribution.</p>"
    },
    "GetOriginRequestPolicy": {
      "name": "GetOriginRequestPolicy2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/origin-request-policy/{Id}"
      },
      "input": {
        "shape": "GetOriginRequestPolicyRequest"
      },
      "output": {
        "shape": "GetOriginRequestPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchOriginRequestPolicy"
        }
      ],
      "documentation": "<p>Gets an origin request policy, including the following metadata:</p> <ul> <li> <p>The policy’s identifier.</p> </li> <li> <p>The date and time when the policy was last modified.</p> </li> </ul> <p>To get an origin request policy, you must provide the policy’s identifier. If the origin request policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>"
    },
    "GetOriginRequestPolicyConfig": {
      "name": "GetOriginRequestPolicyConfig2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/origin-request-policy/{Id}/config"
      },
      "input": {
        "shape": "GetOriginRequestPolicyConfigRequest"
      },
      "output": {
        "shape": "GetOriginRequestPolicyConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchOriginRequestPolicy"
        }
      ],
      "documentation": "<p>Gets an origin request policy configuration.</p> <p>To get an origin request policy configuration, you must provide the policy’s identifier. If the origin request policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>"
    },
    "GetPublicKey": {
      "name": "GetPublicKey2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/public-key/{Id}"
      },
      "input": {
        "shape": "GetPublicKeyRequest"
      },
      "output": {
        "shape": "GetPublicKeyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchPublicKey"
        }
      ],
      "documentation": "<p>Get the public key information.</p>"
    },
    "GetPublicKeyConfig": {
      "name": "GetPublicKeyConfig2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/public-key/{Id}/config"
      },
      "input": {
        "shape": "GetPublicKeyConfigRequest"
      },
      "output": {
        "shape": "GetPublicKeyConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchPublicKey"
        }
      ],
      "documentation": "<p>Return public key configuration informaation</p>"
    },
    "GetRealtimeLogConfig": {
      "name": "GetRealtimeLogConfig2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/get-realtime-log-config/"
      },
      "input": {
        "shape": "GetRealtimeLogConfigRequest",
        "locationName": "GetRealtimeLogConfigRequest",
        "xmlNamespace": {
          "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
        }
      },
      "output": {
        "shape": "GetRealtimeLogConfigResult"
      },
      "errors": [
        {
          "shape": "NoSuchRealtimeLogConfig"
        },
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Gets a real-time log configuration.</p> <p>To get a real-time log configuration, you can provide the configuration’s name or its Amazon Resource Name (ARN). You must provide at least one. If you provide both, CloudFront uses the name to identify the real-time log configuration to get.</p>"
    },
    "GetStreamingDistribution": {
      "name": "GetStreamingDistribution2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/streaming-distribution/{Id}"
      },
      "input": {
        "shape": "GetStreamingDistributionRequest"
      },
      "output": {
        "shape": "GetStreamingDistributionResult"
      },
      "errors": [
        {
          "shape": "NoSuchStreamingDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Gets information about a specified RTMP distribution, including the distribution configuration.</p>"
    },
    "GetStreamingDistributionConfig": {
      "name": "GetStreamingDistributionConfig2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/streaming-distribution/{Id}/config"
      },
      "input": {
        "shape": "GetStreamingDistributionConfigRequest"
      },
      "output": {
        "shape": "GetStreamingDistributionConfigResult"
      },
      "errors": [
        {
          "shape": "NoSuchStreamingDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the configuration information about a streaming distribution. </p>"
    },
    "ListCachePolicies": {
      "name": "ListCachePolicies2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/cache-policy"
      },
      "input": {
        "shape": "ListCachePoliciesRequest"
      },
      "output": {
        "shape": "ListCachePoliciesResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchCachePolicy"
        },
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Gets a list of cache policies.</p> <p>You can optionally apply a filter to return only the managed policies created by AWS, or only the custom policies created in your AWS account.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>"
    },
    "ListCloudFrontOriginAccessIdentities": {
      "name": "ListCloudFrontOriginAccessIdentities2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/origin-access-identity/cloudfront"
      },
      "input": {
        "shape": "ListCloudFrontOriginAccessIdentitiesRequest"
      },
      "output": {
        "shape": "ListCloudFrontOriginAccessIdentitiesResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Lists origin access identities.</p>"
    },
    "ListDistributions": {
      "name": "ListDistributions2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distribution"
      },
      "input": {
        "shape": "ListDistributionsRequest"
      },
      "output": {
        "shape": "ListDistributionsResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>List CloudFront distributions.</p>"
    },
    "ListDistributionsByCachePolicyId": {
      "name": "ListDistributionsByCachePolicyId2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distributionsByCachePolicyId/{CachePolicyId}"
      },
      "input": {
        "shape": "ListDistributionsByCachePolicyIdRequest"
      },
      "output": {
        "shape": "ListDistributionsByCachePolicyIdResult"
      },
      "errors": [
        {
          "shape": "NoSuchCachePolicy"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Gets a list of distribution IDs for distributions that have a cache behavior that’s associated with the specified cache policy.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>"
    },
    "ListDistributionsByOriginRequestPolicyId": {
      "name": "ListDistributionsByOriginRequestPolicyId2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distributionsByOriginRequestPolicyId/{OriginRequestPolicyId}"
      },
      "input": {
        "shape": "ListDistributionsByOriginRequestPolicyIdRequest"
      },
      "output": {
        "shape": "ListDistributionsByOriginRequestPolicyIdResult"
      },
      "errors": [
        {
          "shape": "NoSuchOriginRequestPolicy"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Gets a list of distribution IDs for distributions that have a cache behavior that’s associated with the specified origin request policy.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>"
    },
    "ListDistributionsByRealtimeLogConfig": {
      "name": "ListDistributionsByRealtimeLogConfig2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/distributionsByRealtimeLogConfig/"
      },
      "input": {
        "shape": "ListDistributionsByRealtimeLogConfigRequest",
        "locationName": "ListDistributionsByRealtimeLogConfigRequest",
        "xmlNamespace": {
          "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
        }
      },
      "output": {
        "shape": "ListDistributionsByRealtimeLogConfigResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Gets a list of distributions that have a cache behavior that’s associated with the specified real-time log configuration.</p> <p>You can specify the real-time log configuration by its name or its Amazon Resource Name (ARN). You must provide at least one. If you provide both, CloudFront uses the name to identify the real-time log configuration to list distributions for.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request. </p>"
    },
    "ListDistributionsByWebACLId": {
      "name": "ListDistributionsByWebACLId2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distributionsByWebACLId/{WebACLId}"
      },
      "input": {
        "shape": "ListDistributionsByWebACLIdRequest"
      },
      "output": {
        "shape": "ListDistributionsByWebACLIdResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidWebACLId"
        }
      ],
      "documentation": "<p>List the distributions that are associated with a specified AWS WAF web ACL. </p>"
    },
    "ListFieldLevelEncryptionConfigs": {
      "name": "ListFieldLevelEncryptionConfigs2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/field-level-encryption"
      },
      "input": {
        "shape": "ListFieldLevelEncryptionConfigsRequest"
      },
      "output": {
        "shape": "ListFieldLevelEncryptionConfigsResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>List all field-level encryption configurations that have been created in CloudFront for this account.</p>"
    },
    "ListFieldLevelEncryptionProfiles": {
      "name": "ListFieldLevelEncryptionProfiles2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/field-level-encryption-profile"
      },
      "input": {
        "shape": "ListFieldLevelEncryptionProfilesRequest"
      },
      "output": {
        "shape": "ListFieldLevelEncryptionProfilesResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Request a list of field-level encryption profiles that have been created in CloudFront for this account.</p>"
    },
    "ListInvalidations": {
      "name": "ListInvalidations2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/distribution/{DistributionId}/invalidation"
      },
      "input": {
        "shape": "ListInvalidationsRequest"
      },
      "output": {
        "shape": "ListInvalidationsResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Lists invalidation batches. </p>"
    },
    "ListOriginRequestPolicies": {
      "name": "ListOriginRequestPolicies2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/origin-request-policy"
      },
      "input": {
        "shape": "ListOriginRequestPoliciesRequest"
      },
      "output": {
        "shape": "ListOriginRequestPoliciesResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchOriginRequestPolicy"
        },
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Gets a list of origin request policies.</p> <p>You can optionally apply a filter to return only the managed policies created by AWS, or only the custom policies created in your AWS account.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request.</p>"
    },
    "ListPublicKeys": {
      "name": "ListPublicKeys2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/public-key"
      },
      "input": {
        "shape": "ListPublicKeysRequest"
      },
      "output": {
        "shape": "ListPublicKeysResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>List all public keys that have been added to CloudFront for this account.</p>"
    },
    "ListRealtimeLogConfigs": {
      "name": "ListRealtimeLogConfigs2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/realtime-log-config"
      },
      "input": {
        "shape": "ListRealtimeLogConfigsRequest"
      },
      "output": {
        "shape": "ListRealtimeLogConfigsResult"
      },
      "documentation": "<p>Gets a list of real-time log configurations.</p> <p>You can optionally specify the maximum number of items to receive in the response. If the total number of items in the list exceeds the maximum that you specify, or the default maximum, the response is paginated. To get the next page of items, send a subsequent request that specifies the <code>NextMarker</code> value from the current response as the <code>Marker</code> value in the subsequent request. </p>"
    },
    "ListStreamingDistributions": {
      "name": "ListStreamingDistributions2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/streaming-distribution"
      },
      "input": {
        "shape": "ListStreamingDistributionsRequest"
      },
      "output": {
        "shape": "ListStreamingDistributionsResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>List streaming distributions. </p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource2020_05_31",
      "http": {
        "method": "GET",
        "requestUri": "/2020-05-31/tagging"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidTagging"
        },
        {
          "shape": "NoSuchResource"
        }
      ],
      "documentation": "<p>List tags for a CloudFront resource.</p>"
    },
    "TagResource": {
      "name": "TagResource2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/tagging?Operation=Tag",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidTagging"
        },
        {
          "shape": "NoSuchResource"
        }
      ],
      "documentation": "<p>Add tags to a CloudFront resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource2020_05_31",
      "http": {
        "method": "POST",
        "requestUri": "/2020-05-31/tagging?Operation=Untag",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidTagging"
        },
        {
          "shape": "NoSuchResource"
        }
      ],
      "documentation": "<p>Remove tags from a CloudFront resource.</p>"
    },
    "UpdateCachePolicy": {
      "name": "UpdateCachePolicy2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/cache-policy/{Id}"
      },
      "input": {
        "shape": "UpdateCachePolicyRequest"
      },
      "output": {
        "shape": "UpdateCachePolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchCachePolicy"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "CachePolicyAlreadyExists"
        },
        {
          "shape": "TooManyHeadersInCachePolicy"
        },
        {
          "shape": "TooManyCookiesInCachePolicy"
        },
        {
          "shape": "TooManyQueryStringsInCachePolicy"
        }
      ],
      "documentation": "<p>Updates a cache policy configuration.</p> <p>When you update a cache policy configuration, all the fields are updated with the values provided in the request. You cannot update some fields independent of others. To update a cache policy configuration:</p> <ol> <li> <p>Use <code>GetCachePolicyConfig</code> to get the current configuration.</p> </li> <li> <p>Locally modify the fields in the cache policy configuration that you want to update.</p> </li> <li> <p>Call <code>UpdateCachePolicy</code> by providing the entire cache policy configuration, including the fields that you modified and those that you didn’t.</p> </li> </ol>"
    },
    "UpdateCloudFrontOriginAccessIdentity": {
      "name": "UpdateCloudFrontOriginAccessIdentity2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/origin-access-identity/cloudfront/{Id}/config"
      },
      "input": {
        "shape": "UpdateCloudFrontOriginAccessIdentityRequest"
      },
      "output": {
        "shape": "UpdateCloudFrontOriginAccessIdentityResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "NoSuchCloudFrontOriginAccessIdentity"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Update an origin access identity. </p>"
    },
    "UpdateDistribution": {
      "name": "UpdateDistribution2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/distribution/{Id}/config"
      },
      "input": {
        "shape": "UpdateDistributionRequest"
      },
      "output": {
        "shape": "UpdateDistributionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "TooManyDistributionCNAMEs"
        },
        {
          "shape": "InvalidDefaultRootObject"
        },
        {
          "shape": "InvalidRelativePath"
        },
        {
          "shape": "InvalidErrorCode"
        },
        {
          "shape": "InvalidResponseCode"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "InvalidViewerCertificate"
        },
        {
          "shape": "InvalidMinimumProtocolVersion"
        },
        {
          "shape": "InvalidRequiredProtocol"
        },
        {
          "shape": "NoSuchOrigin"
        },
        {
          "shape": "TooManyOrigins"
        },
        {
          "shape": "TooManyOriginGroupsPerDistribution"
        },
        {
          "shape": "TooManyCacheBehaviors"
        },
        {
          "shape": "TooManyCookieNamesInWhiteList"
        },
        {
          "shape": "InvalidForwardCookies"
        },
        {
          "shape": "TooManyHeadersInForwardedValues"
        },
        {
          "shape": "InvalidHeadersForS3Origin"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "TooManyCertificates"
        },
        {
          "shape": "InvalidLocationCode"
        },
        {
          "shape": "InvalidGeoRestrictionParameter"
        },
        {
          "shape": "InvalidTTLOrder"
        },
        {
          "shape": "InvalidWebACLId"
        },
        {
          "shape": "TooManyOriginCustomHeaders"
        },
        {
          "shape": "TooManyQueryStringParameters"
        },
        {
          "shape": "InvalidQueryStringParameters"
        },
        {
          "shape": "TooManyDistributionsWithLambdaAssociations"
        },
        {
          "shape": "TooManyDistributionsWithSingleFunctionARN"
        },
        {
          "shape": "TooManyLambdaFunctionAssociations"
        },
        {
          "shape": "InvalidLambdaFunctionAssociation"
        },
        {
          "shape": "InvalidOriginReadTimeout"
        },
        {
          "shape": "InvalidOriginKeepaliveTimeout"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"
        },
        {
          "shape": "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"
        },
        {
          "shape": "NoSuchCachePolicy"
        },
        {
          "shape": "TooManyDistributionsAssociatedToCachePolicy"
        },
        {
          "shape": "NoSuchOriginRequestPolicy"
        },
        {
          "shape": "TooManyDistributionsAssociatedToOriginRequestPolicy"
        }
      ],
      "documentation": "<p>Updates the configuration for a web distribution. </p> <important> <p>When you update a distribution, there are more required fields than when you create a distribution. When you update your distribution by using this API action, follow the steps here to get the current configuration and then make your updates, to make sure that you include all of the required fields. To view a summary, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html\">Required Fields for Create Distribution and Update Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </important> <p>The update process includes getting the current distribution configuration, updating the XML document that is returned to make your changes, and then submitting an <code>UpdateDistribution</code> request to make the updates.</p> <p>For information about updating a distribution using the CloudFront console instead, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html\">Creating a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p> <b>To update a web distribution using the CloudFront API</b> </p> <ol> <li> <p>Submit a <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistributionConfig.html\">GetDistributionConfig</a> request to get the current configuration and an <code>Etag</code> header for the distribution.</p> <note> <p>If you update the distribution again, you must get a new <code>Etag</code> header.</p> </note> </li> <li> <p>Update the XML document that was returned in the response to your <code>GetDistributionConfig</code> request to include your changes. </p> <important> <p>When you edit the XML file, be aware of the following:</p> <ul> <li> <p>You must strip out the ETag parameter that is returned.</p> </li> <li> <p>Additional fields are required when you update a distribution. There may be fields included in the XML file for features that you haven't configured for your distribution. This is expected and required to successfully update the distribution.</p> </li> <li> <p>You can't change the value of <code>CallerReference</code>. If you try to change this value, CloudFront returns an <code>IllegalUpdate</code> error. </p> </li> <li> <p>The new configuration replaces the existing configuration; the values that you specify in an <code>UpdateDistribution</code> request are not merged into your existing configuration. When you add, delete, or replace values in an element that allows multiple values (for example, <code>CNAME</code>), you must specify all of the values that you want to appear in the updated distribution. In addition, you must update the corresponding <code>Quantity</code> element.</p> </li> </ul> </important> </li> <li> <p>Submit an <code>UpdateDistribution</code> request to update the configuration for your distribution:</p> <ul> <li> <p>In the request body, include the XML document that you updated in Step 2. The request body must include an XML document with a <code>DistributionConfig</code> element.</p> </li> <li> <p>Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GetDistributionConfig</code> request in Step 1.</p> </li> </ul> </li> <li> <p>Review the response to the <code>UpdateDistribution</code> request to confirm that the configuration was successfully updated.</p> </li> <li> <p>Optional: Submit a <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_GetDistribution.html\">GetDistribution</a> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> </ol>"
    },
    "UpdateFieldLevelEncryptionConfig": {
      "name": "UpdateFieldLevelEncryptionConfig2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/field-level-encryption/{Id}/config"
      },
      "input": {
        "shape": "UpdateFieldLevelEncryptionConfigRequest"
      },
      "output": {
        "shape": "UpdateFieldLevelEncryptionConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "TooManyFieldLevelEncryptionQueryArgProfiles"
        },
        {
          "shape": "TooManyFieldLevelEncryptionContentTypeProfiles"
        },
        {
          "shape": "QueryArgProfileEmpty"
        }
      ],
      "documentation": "<p>Update a field-level encryption configuration. </p>"
    },
    "UpdateFieldLevelEncryptionProfile": {
      "name": "UpdateFieldLevelEncryptionProfile2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/field-level-encryption-profile/{Id}/config"
      },
      "input": {
        "shape": "UpdateFieldLevelEncryptionProfileRequest"
      },
      "output": {
        "shape": "UpdateFieldLevelEncryptionProfileResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "FieldLevelEncryptionProfileAlreadyExists"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchPublicKey"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "FieldLevelEncryptionProfileSizeExceeded"
        },
        {
          "shape": "TooManyFieldLevelEncryptionEncryptionEntities"
        },
        {
          "shape": "TooManyFieldLevelEncryptionFieldPatterns"
        }
      ],
      "documentation": "<p>Update a field-level encryption profile. </p>"
    },
    "UpdateOriginRequestPolicy": {
      "name": "UpdateOriginRequestPolicy2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/origin-request-policy/{Id}"
      },
      "input": {
        "shape": "UpdateOriginRequestPolicyRequest"
      },
      "output": {
        "shape": "UpdateOriginRequestPolicyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchOriginRequestPolicy"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "OriginRequestPolicyAlreadyExists"
        },
        {
          "shape": "TooManyHeadersInOriginRequestPolicy"
        },
        {
          "shape": "TooManyCookiesInOriginRequestPolicy"
        },
        {
          "shape": "TooManyQueryStringsInOriginRequestPolicy"
        }
      ],
      "documentation": "<p>Updates an origin request policy configuration.</p> <p>When you update an origin request policy configuration, all the fields are updated with the values provided in the request. You cannot update some fields independent of others. To update an origin request policy configuration:</p> <ol> <li> <p>Use <code>GetOriginRequestPolicyConfig</code> to get the current configuration.</p> </li> <li> <p>Locally modify the fields in the origin request policy configuration that you want to update.</p> </li> <li> <p>Call <code>UpdateOriginRequestPolicy</code> by providing the entire origin request policy configuration, including the fields that you modified and those that you didn’t.</p> </li> </ol>"
    },
    "UpdatePublicKey": {
      "name": "UpdatePublicKey2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/public-key/{Id}/config"
      },
      "input": {
        "shape": "UpdatePublicKeyRequest"
      },
      "output": {
        "shape": "UpdatePublicKeyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "CannotChangeImmutablePublicKeyFields"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "NoSuchPublicKey"
        },
        {
          "shape": "PreconditionFailed"
        }
      ],
      "documentation": "<p>Update public key information. Note that the only value you can change is the comment.</p>"
    },
    "UpdateRealtimeLogConfig": {
      "name": "UpdateRealtimeLogConfig2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/realtime-log-config/"
      },
      "input": {
        "shape": "UpdateRealtimeLogConfigRequest",
        "locationName": "UpdateRealtimeLogConfigRequest",
        "xmlNamespace": {
          "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
        }
      },
      "output": {
        "shape": "UpdateRealtimeLogConfigResult"
      },
      "errors": [
        {
          "shape": "NoSuchRealtimeLogConfig"
        },
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Updates a real-time log configuration.</p> <p>When you update a real-time log configuration, all the parameters are updated with the values provided in the request. You cannot update some parameters independent of others. To update a real-time log configuration:</p> <ol> <li> <p>Call <code>GetRealtimeLogConfig</code> to get the current real-time log configuration.</p> </li> <li> <p>Locally modify the parameters in the real-time log configuration that you want to update.</p> </li> <li> <p>Call this API (<code>UpdateRealtimeLogConfig</code>) by providing the entire real-time log configuration, including the parameters that you modified and those that you didn’t.</p> </li> </ol> <p>You cannot update a real-time log configuration’s <code>Name</code> or <code>ARN</code>.</p>"
    },
    "UpdateStreamingDistribution": {
      "name": "UpdateStreamingDistribution2020_05_31",
      "http": {
        "method": "PUT",
        "requestUri": "/2020-05-31/streaming-distribution/{Id}/config"
      },
      "input": {
        "shape": "UpdateStreamingDistributionRequest"
      },
      "output": {
        "shape": "UpdateStreamingDistributionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "NoSuchStreamingDistribution"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "TooManyStreamingDistributionCNAMEs"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Update a streaming distribution. </p>"
    }
  },
  "shapes": {
    "ActiveTrustedSigners": {
      "type": "structure",
      "required": [
        "Enabled",
        "Quantity"
      ],
      "members": {
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Enabled is <code>true</code> if any of the AWS accounts listed in the <code>TrustedSigners</code> complex type for this distribution have active CloudFront key pairs. If not, <code>Enabled</code> is <code>false</code>.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of trusted signers specified in the <code>TrustedSigners</code> complex type.</p>"
        },
        "Items": {
          "shape": "SignerList",
          "documentation": "<p>A complex type that contains one <code>Signer</code> complex type for each trusted signer that is specified in the <code>TrustedSigners</code> complex type.</p>"
        }
      },
      "documentation": "<p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "AliasICPRecordal": {
      "type": "structure",
      "members": {
        "CNAME": {
          "shape": "string",
          "documentation": "<p>A domain name associated with a distribution. </p>"
        },
        "ICPRecordalStatus": {
          "shape": "ICPRecordalStatus",
          "documentation": "<p>The Internet Content Provider (ICP) recordal status for a CNAME. The ICPRecordalStatus is set to APPROVED for all CNAMEs (aliases) in regions outside of China. </p> <p>The status values returned are the following:</p> <ul> <li> <p> <b>APPROVED</b> indicates that the associated CNAME has a valid ICP recordal number. Multiple CNAMEs can be associated with a distribution, and CNAMEs can correspond to different ICP recordals. To be marked as APPROVED, that is, valid to use with China region, a CNAME must have one ICP recordal number associated with it.</p> </li> <li> <p> <b>SUSPENDED</b> indicates that the associated CNAME does not have a valid ICP recordal number.</p> </li> <li> <p> <b>PENDING</b> indicates that CloudFront can't determine the ICP recordal status of the CNAME associated with the distribution because there was an error in trying to determine the status. You can try again to see if the error is resolved in which case CloudFront returns an APPROVED or SUSPENDED status.</p> </li> </ul>"
        }
      },
      "documentation": "<p>AWS services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP recordal status for CNAMEs associated with distributions. The status is returned in the CloudFront response; you can't configure it yourself.</p> <p>For more information about ICP recordals, see <a href=\"https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
    },
    "AliasICPRecordals": {
      "type": "list",
      "member": {
        "shape": "AliasICPRecordal",
        "locationName": "AliasICPRecordal"
      }
    },
    "AliasList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "CNAME"
      }
    },
    "Aliases": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of CNAME aliases, if any, that you want to associate with this distribution.</p>"
        },
        "Items": {
          "shape": "AliasList",
          "documentation": "<p>A complex type that contains the CNAME aliases, if any, that you want to associate with this distribution.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. </p>"
    },
    "AllowedMethods": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>"
        },
        "Items": {
          "shape": "MethodsList",
          "documentation": "<p>A complex type that contains the HTTP methods that you want CloudFront to process and forward to your origin.</p>"
        },
        "CachedMethods": {
          "shape": "CachedMethods"
        }
      },
      "documentation": "<p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>"
    },
    "AwsAccountNumberList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "AwsAccountNumber"
      }
    },
    "CacheBehavior": {
      "type": "structure",
      "required": [
        "PathPattern",
        "TargetOriginId",
        "TrustedSigners",
        "ViewerProtocolPolicy"
      ],
      "members": {
        "PathPattern": {
          "shape": "string",
          "documentation": "<p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to apply the behavior to. When CloudFront receives a viewer request, the requested path is compared with path patterns in the order in which cache behaviors are listed in the distribution.</p> <note> <p>You can optionally include a slash (<code>/</code>) at the beginning of the path pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without the leading <code>/</code>.</p> </note> <p>The path pattern for the default cache behavior is <code>*</code> and cannot be changed. If the request for an object does not match the path pattern for any cache behaviors, CloudFront applies the behavior in the default cache behavior.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern\">Path Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>"
        },
        "TargetOriginId": {
          "shape": "string",
          "documentation": "<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when they match this cache behavior.</p>"
        },
        "TrustedSigners": {
          "shape": "TrustedSigners",
          "documentation": "<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content with Signed URLs and Signed Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>. </p> <p>If you don’t want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it’s currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>"
        },
        "ViewerProtocolPolicy": {
          "shape": "ViewerProtocolPolicy",
          "documentation": "<p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL. </p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden). </p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html\">Requiring HTTPS Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects’ cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing Cache Expiration</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>"
        },
        "AllowedMethods": {
          "shape": "AllowedMethods"
        },
        "SmoothStreaming": {
          "shape": "boolean",
          "documentation": "<p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>"
        },
        "Compress": {
          "shape": "boolean",
          "documentation": "<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify true; if not, specify false. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "LambdaFunctionAssociations": {
          "shape": "LambdaFunctionAssociations",
          "documentation": "<p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>"
        },
        "FieldLevelEncryptionId": {
          "shape": "string",
          "documentation": "<p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for this cache behavior.</p>"
        },
        "RealtimeLogConfigArn": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html\">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "CachePolicyId": {
          "shape": "string",
          "documentation": "<p>The unique identifier of the cache policy that is attached to this cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "OriginRequestPolicyId": {
          "shape": "string",
          "documentation": "<p>The unique identifier of the origin request policy that is attached to this cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "ForwardedValues": {
          "shape": "ForwardedValues",
          "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html\">Working with policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to include values in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>",
          "deprecated": true
        },
        "MinTTL": {
          "shape": "long",
          "documentation": "<p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\"> Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i> Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>",
          "deprecated": true
        },
        "DefaultTTL": {
          "shape": "long",
          "documentation": "<p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>",
          "deprecated": true
        },
        "MaxTTL": {
          "shape": "long",
          "documentation": "<p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>",
          "deprecated": true
        }
      },
      "documentation": "<p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to serve objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current quota (formerly known as limit) on the number of cache behaviors that you can add to a distribution, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html\">Quotas</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you don’t want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don’t include an empty <code>CacheBehavior</code> element because this is invalid.</p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <p>For more information about cache behaviors, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior\">Cache Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CacheBehaviorList": {
      "type": "list",
      "member": {
        "shape": "CacheBehavior",
        "locationName": "CacheBehavior"
      }
    },
    "CacheBehaviors": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of cache behaviors for this distribution. </p>"
        },
        "Items": {
          "shape": "CacheBehaviorList",
          "documentation": "<p>Optional: A complex type that contains cache behaviors for this distribution. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>"
    },
    "CachePolicy": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime",
        "CachePolicyConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the cache policy.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time when the cache policy was last modified.</p>"
        },
        "CachePolicyConfig": {
          "shape": "CachePolicyConfig",
          "documentation": "<p>The cache policy configuration.</p>"
        }
      },
      "documentation": "<p>A cache policy.</p> <p>When it’s attached to a cache behavior, the cache policy determines the following:</p> <ul> <li> <p>The values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.</p> </li> <li> <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache.</p> </li> </ul> <p>The headers, cookies, and query strings that are included in the cache key are automatically included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t find a valid object in its cache that matches the request’s cache key. If you want to send values to the origin but <i>not</i> include them in the cache key, use <code>OriginRequestPolicy</code>.</p>"
    },
    "CachePolicyConfig": {
      "type": "structure",
      "required": [
        "Name",
        "MinTTL"
      ],
      "members": {
        "Comment": {
          "shape": "string",
          "documentation": "<p>A comment to describe the cache policy.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>A unique name to identify the cache policy.</p>"
        },
        "DefaultTTL": {
          "shape": "long",
          "documentation": "<p>The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value as the object’s time to live (TTL) only when the origin does <i>not</i> send <code>Cache-Control</code> or <code>Expires</code> headers with the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default value for this field is 86400 seconds (one day). If the value of <code>MinTTL</code> is more than 86400 seconds, then the default value for this field is the same as the value of <code>MinTTL</code>.</p>"
        },
        "MaxTTL": {
          "shape": "long",
          "documentation": "<p>The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value only when the origin sends <code>Cache-Control</code> or <code>Expires</code> headers with the object. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default value for this field is 31536000 seconds (one year). If the value of <code>MinTTL</code> or <code>DefaultTTL</code> is more than 31536000 seconds, then the default value for this field is the same as the value of <code>DefaultTTL</code>.</p>"
        },
        "MinTTL": {
          "shape": "long",
          "documentation": "<p>The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "ParametersInCacheKeyAndForwardedToOrigin": {
          "shape": "ParametersInCacheKeyAndForwardedToOrigin",
          "documentation": "<p>The HTTP headers, cookies, and URL query strings to include in the cache key. The values included in the cache key are automatically included in requests that CloudFront sends to the origin.</p>"
        }
      },
      "documentation": "<p>A cache policy configuration.</p> <p>This configuration determines the following:</p> <ul> <li> <p>The values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.</p> </li> <li> <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache.</p> </li> </ul> <p>The headers, cookies, and query strings that are included in the cache key are automatically included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t find a valid object in its cache that matches the request’s cache key. If you want to send values to the origin but <i>not</i> include them in the cache key, use <code>OriginRequestPolicy</code>.</p>"
    },
    "CachePolicyCookieBehavior": {
      "type": "string",
      "enum": [
        "none",
        "whitelist",
        "allExcept",
        "all"
      ]
    },
    "CachePolicyCookiesConfig": {
      "type": "structure",
      "required": [
        "CookieBehavior"
      ],
      "members": {
        "CookieBehavior": {
          "shape": "CachePolicyCookieBehavior",
          "documentation": "<p>Determines whether any cookies in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – Cookies in viewer requests are not included in the cache key and are not automatically included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any cookies that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – The cookies in viewer requests that are listed in the <code>CookieNames</code> type are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All cookies in viewer requests that are <i> <b>not</b> </i> listed in the <code>CookieNames</code> type are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>all</code> – All cookies in viewer requests are included in the cache key and are automatically included in requests that CloudFront sends to the origin.</p> </li> </ul>"
        },
        "Cookies": {
          "shape": "CookieNames"
        }
      },
      "documentation": "<p>An object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p>"
    },
    "CachePolicyHeaderBehavior": {
      "type": "string",
      "enum": [
        "none",
        "whitelist"
      ]
    },
    "CachePolicyHeadersConfig": {
      "type": "structure",
      "required": [
        "HeaderBehavior"
      ],
      "members": {
        "HeaderBehavior": {
          "shape": "CachePolicyHeaderBehavior",
          "documentation": "<p>Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – HTTP headers are not included in the cache key and are not automatically included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any headers that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – The HTTP headers that are listed in the <code>Headers</code> type are included in the cache key and are automatically included in requests that CloudFront sends to the origin.</p> </li> </ul>"
        },
        "Headers": {
          "shape": "Headers"
        }
      },
      "documentation": "<p>An object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p>"
    },
    "CachePolicyList": {
      "type": "structure",
      "required": [
        "MaxItems",
        "Quantity"
      ],
      "members": {
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing cache policies where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of cache policies requested.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The total number of cache policies returned in the response.</p>"
        },
        "Items": {
          "shape": "CachePolicySummaryList",
          "documentation": "<p>Contains the cache policies in the list.</p>"
        }
      },
      "documentation": "<p>A list of cache policies.</p>"
    },
    "CachePolicyQueryStringBehavior": {
      "type": "string",
      "enum": [
        "none",
        "whitelist",
        "allExcept",
        "all"
      ]
    },
    "CachePolicyQueryStringsConfig": {
      "type": "structure",
      "required": [
        "QueryStringBehavior"
      ],
      "members": {
        "QueryStringBehavior": {
          "shape": "CachePolicyQueryStringBehavior",
          "documentation": "<p>Determines whether any URL query strings in viewer requests are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – Query strings in viewer requests are not included in the cache key and are not automatically included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any query strings that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – The query strings in viewer requests that are listed in the <code>QueryStringNames</code> type are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All query strings in viewer requests that are <i> <b>not</b> </i> listed in the <code>QueryStringNames</code> type are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>all</code> – All query strings in viewer requests are included in the cache key and are automatically included in requests that CloudFront sends to the origin.</p> </li> </ul>"
        },
        "QueryStrings": {
          "shape": "QueryStringNames",
          "documentation": "<p>Contains the specific query strings in viewer requests that either <i> <b>are</b> </i> or <i> <b>are not</b> </i> included in the cache key and automatically included in requests that CloudFront sends to the origin. The behavior depends on whether the <code>QueryStringBehavior</code> field in the <code>CachePolicyQueryStringsConfig</code> type is set to <code>whitelist</code> (the listed query strings <i> <b>are</b> </i> included) or <code>allExcept</code> (the listed query strings <i> <b>are not</b> </i> included, but all other query strings are).</p>"
        }
      },
      "documentation": "<p>An object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p>"
    },
    "CachePolicySummary": {
      "type": "structure",
      "required": [
        "Type",
        "CachePolicy"
      ],
      "members": {
        "Type": {
          "shape": "CachePolicyType",
          "documentation": "<p>The type of cache policy, either <code>managed</code> (created by AWS) or <code>custom</code> (created in this AWS account).</p>"
        },
        "CachePolicy": {
          "shape": "CachePolicy",
          "documentation": "<p>The cache policy.</p>"
        }
      },
      "documentation": "<p>Contains a cache policy.</p>"
    },
    "CachePolicySummaryList": {
      "type": "list",
      "member": {
        "shape": "CachePolicySummary",
        "locationName": "CachePolicySummary"
      }
    },
    "CachePolicyType": {
      "type": "string",
      "enum": [
        "managed",
        "custom"
      ]
    },
    "CachedMethods": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are <code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests) and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests).</p>"
        },
        "Items": {
          "shape": "MethodsList",
          "documentation": "<p>A complex type that contains the HTTP methods that you want CloudFront to cache responses to.</p>"
        }
      },
      "documentation": "<p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. </p>"
    },
    "CertificateSource": {
      "type": "string",
      "enum": [
        "cloudfront",
        "iam",
        "acm"
      ]
    },
    "CloudFrontOriginAccessIdentity": {
      "type": "structure",
      "required": [
        "Id",
        "S3CanonicalUserId"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID for the origin access identity, for example, <code>E74FTE3AJFJ256A</code>. </p>"
        },
        "S3CanonicalUserId": {
          "shape": "string",
          "documentation": "<p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin access identity read permission to an object in Amazon S3. </p>"
        },
        "CloudFrontOriginAccessIdentityConfig": {
          "shape": "CloudFrontOriginAccessIdentityConfig",
          "documentation": "<p>The current configuration information for the identity. </p>"
        }
      },
      "documentation": "<p>CloudFront origin access identity.</p>"
    },
    "CloudFrontOriginAccessIdentityConfig": {
      "type": "structure",
      "required": [
        "CallerReference",
        "Comment"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is created.</p> <p>If the <code>CallerReference</code> is a value already sent in a previous identity request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request. </p> <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity, but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>Any comments you want to include about the origin access identity. </p>"
        }
      },
      "documentation": "<p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. </p>"
    },
    "CloudFrontOriginAccessIdentityList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page). </p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your origin access identities where they left off. </p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of origin access identities you want in the response body. </p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more origin access identities remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more items in the list.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of CloudFront origin access identities that were created by the current AWS account. </p>"
        },
        "Items": {
          "shape": "CloudFrontOriginAccessIdentitySummaryList",
          "documentation": "<p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code> element for each origin access identity that was created by the current AWS account.</p>"
        }
      },
      "documentation": "<p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "CloudFrontOriginAccessIdentitySummary": {
      "type": "structure",
      "required": [
        "Id",
        "S3CanonicalUserId",
        "Comment"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>.</p>"
        },
        "S3CanonicalUserId": {
          "shape": "string",
          "documentation": "<p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>The comment for this origin access identity, as originally specified when created.</p>"
        }
      },
      "documentation": "<p>Summary of the information about a CloudFront origin access identity.</p>"
    },
    "CloudFrontOriginAccessIdentitySummaryList": {
      "type": "list",
      "member": {
        "shape": "CloudFrontOriginAccessIdentitySummary",
        "locationName": "CloudFrontOriginAccessIdentitySummary"
      }
    },
    "CommentType": {
      "type": "string",
      "sensitive": true
    },
    "ContentTypeProfile": {
      "type": "structure",
      "required": [
        "Format",
        "ContentType"
      ],
      "members": {
        "Format": {
          "shape": "Format",
          "documentation": "<p>The format for a field-level encryption content type-profile mapping. </p>"
        },
        "ProfileId": {
          "shape": "string",
          "documentation": "<p>The profile ID for a field-level encryption content type-profile mapping. </p>"
        },
        "ContentType": {
          "shape": "string",
          "documentation": "<p>The content type for a field-level encryption content type-profile mapping. </p>"
        }
      },
      "documentation": "<p>A field-level encryption content type profile. </p>"
    },
    "ContentTypeProfileConfig": {
      "type": "structure",
      "required": [
        "ForwardWhenContentTypeIsUnknown"
      ],
      "members": {
        "ForwardWhenContentTypeIsUnknown": {
          "shape": "boolean",
          "documentation": "<p>The setting in a field-level encryption content type-profile mapping that specifies what to do when an unknown content type is provided for the profile. If true, content is forwarded without being encrypted when the content type is unknown. If false (the default), an error is returned when the content type is unknown. </p>"
        },
        "ContentTypeProfiles": {
          "shape": "ContentTypeProfiles",
          "documentation": "<p>The configuration for a field-level encryption content type-profile. </p>"
        }
      },
      "documentation": "<p>The configuration for a field-level encryption content type-profile mapping. </p>"
    },
    "ContentTypeProfileList": {
      "type": "list",
      "member": {
        "shape": "ContentTypeProfile",
        "locationName": "ContentTypeProfile"
      }
    },
    "ContentTypeProfiles": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of field-level encryption content type-profile mappings. </p>"
        },
        "Items": {
          "shape": "ContentTypeProfileList",
          "documentation": "<p>Items in a field-level encryption content type-profile mapping. </p>"
        }
      },
      "documentation": "<p>Field-level encryption content type-profile. </p>"
    },
    "CookieNameList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Name"
      }
    },
    "CookieNames": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of cookie names in the <code>Items</code> list.</p>"
        },
        "Items": {
          "shape": "CookieNameList",
          "documentation": "<p>A list of cookie names.</p>"
        }
      },
      "documentation": "<p>Contains a list of cookie names.</p>"
    },
    "CookiePreference": {
      "type": "structure",
      "required": [
        "Forward"
      ],
      "members": {
        "Forward": {
          "shape": "ItemSelection",
          "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p> <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the <code>Forward</code> element.</p>"
        },
        "WhitelistedNames": {
          "shape": "CookieNames",
          "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Required if you specify <code>whitelist</code> for the value of <code>Forward</code>. A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.</p> <p>If you specify <code>all</code> or <code>none</code> for the value of <code>Forward</code>, omit <code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from <code>whitelist</code> to <code>all</code> or <code>none</code> and you don't delete the <code>WhitelistedNames</code> element and its child elements, CloudFront deletes them automatically.</p> <p>For the current limit on the number of cookie names that you can whitelist for each cache behavior, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/xrefaws_service_limits.html#limits_cloudfront\"> CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>"
        }
      },
      "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use <code>CookiesConfig</code> in a cache policy. See <code>CachePolicy</code>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use <code>CookiesConfig</code> in an origin request policy. See <code>OriginRequestPolicy</code>.</p> <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">Caching Content Based on Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateCachePolicyRequest": {
      "type": "structure",
      "required": [
        "CachePolicyConfig"
      ],
      "members": {
        "CachePolicyConfig": {
          "shape": "CachePolicyConfig",
          "documentation": "<p>A cache policy configuration.</p>",
          "locationName": "CachePolicyConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "payload": "CachePolicyConfig"
    },
    "CreateCachePolicyResult": {
      "type": "structure",
      "members": {
        "CachePolicy": {
          "shape": "CachePolicy",
          "documentation": "<p>A cache policy.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the cache policy just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the cache policy.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "CachePolicy"
    },
    "CreateCloudFrontOriginAccessIdentityRequest": {
      "type": "structure",
      "required": [
        "CloudFrontOriginAccessIdentityConfig"
      ],
      "members": {
        "CloudFrontOriginAccessIdentityConfig": {
          "shape": "CloudFrontOriginAccessIdentityConfig",
          "documentation": "<p>The current configuration information for the identity.</p>",
          "locationName": "CloudFrontOriginAccessIdentityConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "documentation": "<p>The request to create a new origin access identity (OAI). An origin access identity is a special CloudFront user that you can associate with Amazon S3 origins, so that you can secure all or just some of your Amazon S3 content. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html\"> Restricting Access to Amazon S3 Content by Using an Origin Access Identity</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>",
      "payload": "CloudFrontOriginAccessIdentityConfig"
    },
    "CreateCloudFrontOriginAccessIdentityResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentity": {
          "shape": "CloudFrontOriginAccessIdentity",
          "documentation": "<p>The origin access identity's information.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new origin access identity just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the origin access identity created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "CloudFrontOriginAccessIdentity"
    },
    "CreateDistributionRequest": {
      "type": "structure",
      "required": [
        "DistributionConfig"
      ],
      "members": {
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>The distribution's configuration information.</p>",
          "locationName": "DistributionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "documentation": "<p>The request to create a new distribution.</p>",
      "payload": "DistributionConfig"
    },
    "CreateDistributionResult": {
      "type": "structure",
      "members": {
        "Distribution": {
          "shape": "Distribution",
          "documentation": "<p>The distribution's information.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new distribution resource just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the distribution created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Distribution"
    },
    "CreateDistributionWithTagsRequest": {
      "type": "structure",
      "required": [
        "DistributionConfigWithTags"
      ],
      "members": {
        "DistributionConfigWithTags": {
          "shape": "DistributionConfigWithTags",
          "documentation": "<p>The distribution's configuration information. </p>",
          "locationName": "DistributionConfigWithTags",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "documentation": "<p>The request to create a new distribution with tags. </p>",
      "payload": "DistributionConfigWithTags"
    },
    "CreateDistributionWithTagsResult": {
      "type": "structure",
      "members": {
        "Distribution": {
          "shape": "Distribution",
          "documentation": "<p>The distribution's information. </p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new distribution resource just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the distribution created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "Distribution"
    },
    "CreateFieldLevelEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "FieldLevelEncryptionConfig"
      ],
      "members": {
        "FieldLevelEncryptionConfig": {
          "shape": "FieldLevelEncryptionConfig",
          "documentation": "<p>The request to create a new field-level encryption configuration.</p>",
          "locationName": "FieldLevelEncryptionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "payload": "FieldLevelEncryptionConfig"
    },
    "CreateFieldLevelEncryptionConfigResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryption": {
          "shape": "FieldLevelEncryption",
          "documentation": "<p>Returned when you create a new field-level encryption configuration.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new configuration resource just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryption"
    },
    "CreateFieldLevelEncryptionProfileRequest": {
      "type": "structure",
      "required": [
        "FieldLevelEncryptionProfileConfig"
      ],
      "members": {
        "FieldLevelEncryptionProfileConfig": {
          "shape": "FieldLevelEncryptionProfileConfig",
          "documentation": "<p>The request to create a field-level encryption profile.</p>",
          "locationName": "FieldLevelEncryptionProfileConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "payload": "FieldLevelEncryptionProfileConfig"
    },
    "CreateFieldLevelEncryptionProfileResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfile": {
          "shape": "FieldLevelEncryptionProfile",
          "documentation": "<p>Returned when you create a new field-level encryption profile.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new profile resource just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionProfile"
    },
    "CreateInvalidationRequest": {
      "type": "structure",
      "required": [
        "DistributionId",
        "InvalidationBatch"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The distribution's id.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        },
        "InvalidationBatch": {
          "shape": "InvalidationBatch",
          "documentation": "<p>The batch information for the invalidation.</p>",
          "locationName": "InvalidationBatch",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "documentation": "<p>The request to create an invalidation.</p>",
      "payload": "InvalidationBatch"
    },
    "CreateInvalidationResult": {
      "type": "structure",
      "members": {
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the distribution and invalidation batch request, including the <code>Invalidation ID</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "Invalidation": {
          "shape": "Invalidation",
          "documentation": "<p>The invalidation's information.</p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Invalidation"
    },
    "CreateMonitoringSubscriptionRequest": {
      "type": "structure",
      "required": [
        "MonitoringSubscription",
        "DistributionId"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The ID of the distribution that you are enabling metrics for.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        },
        "MonitoringSubscription": {
          "shape": "MonitoringSubscription",
          "documentation": "<p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>",
          "locationName": "MonitoringSubscription",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "payload": "MonitoringSubscription"
    },
    "CreateMonitoringSubscriptionResult": {
      "type": "structure",
      "members": {
        "MonitoringSubscription": {
          "shape": "MonitoringSubscription",
          "documentation": "<p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>"
        }
      },
      "payload": "MonitoringSubscription"
    },
    "CreateOriginRequestPolicyRequest": {
      "type": "structure",
      "required": [
        "OriginRequestPolicyConfig"
      ],
      "members": {
        "OriginRequestPolicyConfig": {
          "shape": "OriginRequestPolicyConfig",
          "documentation": "<p>An origin request policy configuration.</p>",
          "locationName": "OriginRequestPolicyConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "payload": "OriginRequestPolicyConfig"
    },
    "CreateOriginRequestPolicyResult": {
      "type": "structure",
      "members": {
        "OriginRequestPolicy": {
          "shape": "OriginRequestPolicy",
          "documentation": "<p>An origin request policy.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the origin request policy just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the origin request policy.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "OriginRequestPolicy"
    },
    "CreatePublicKeyRequest": {
      "type": "structure",
      "required": [
        "PublicKeyConfig"
      ],
      "members": {
        "PublicKeyConfig": {
          "shape": "PublicKeyConfig",
          "documentation": "<p>The request to add a public key to CloudFront.</p>",
          "locationName": "PublicKeyConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "payload": "PublicKeyConfig"
    },
    "CreatePublicKeyResult": {
      "type": "structure",
      "members": {
        "PublicKey": {
          "shape": "PublicKey",
          "documentation": "<p>Returned when you add a public key.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new public key resource just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the public key. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "PublicKey"
    },
    "CreateRealtimeLogConfigRequest": {
      "type": "structure",
      "required": [
        "EndPoints",
        "Fields",
        "Name",
        "SamplingRate"
      ],
      "members": {
        "EndPoints": {
          "shape": "EndPointList",
          "documentation": "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>"
        },
        "Fields": {
          "shape": "FieldList",
          "documentation": "<p>A list of fields to include in each real-time log record.</p> <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>A unique name to identify this real-time log configuration.</p>"
        },
        "SamplingRate": {
          "shape": "long",
          "documentation": "<p>The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. You must provide an integer between 1 and 100, inclusive.</p>"
        }
      }
    },
    "CreateRealtimeLogConfigResult": {
      "type": "structure",
      "members": {
        "RealtimeLogConfig": {
          "shape": "RealtimeLogConfig",
          "documentation": "<p>A real-time log configuration.</p>"
        }
      }
    },
    "CreateStreamingDistributionRequest": {
      "type": "structure",
      "required": [
        "StreamingDistributionConfig"
      ],
      "members": {
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>The streaming distribution's configuration information.</p>",
          "locationName": "StreamingDistributionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "documentation": "<p>The request to create a new streaming distribution.</p>",
      "payload": "StreamingDistributionConfig"
    },
    "CreateStreamingDistributionResult": {
      "type": "structure",
      "members": {
        "StreamingDistribution": {
          "shape": "StreamingDistribution",
          "documentation": "<p>The streaming distribution's information.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new streaming distribution resource just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the streaming distribution created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "StreamingDistribution"
    },
    "CreateStreamingDistributionWithTagsRequest": {
      "type": "structure",
      "required": [
        "StreamingDistributionConfigWithTags"
      ],
      "members": {
        "StreamingDistributionConfigWithTags": {
          "shape": "StreamingDistributionConfigWithTags",
          "documentation": "<p> The streaming distribution's configuration information. </p>",
          "locationName": "StreamingDistributionConfigWithTags",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "documentation": "<p>The request to create a new streaming distribution with tags.</p>",
      "payload": "StreamingDistributionConfigWithTags"
    },
    "CreateStreamingDistributionWithTagsResult": {
      "type": "structure",
      "members": {
        "StreamingDistribution": {
          "shape": "StreamingDistribution",
          "documentation": "<p>The streaming distribution's information. </p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new streaming distribution resource just created.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the distribution created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "StreamingDistribution"
    },
    "CustomErrorResponse": {
      "type": "structure",
      "required": [
        "ErrorCode"
      ],
      "members": {
        "ErrorCode": {
          "shape": "integer",
          "documentation": "<p>The HTTP status code for which you want to specify a custom error page and/or a caching duration.</p>"
        },
        "ResponsePagePath": {
          "shape": "string",
          "documentation": "<p>The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by <code>ErrorCode</code>, for example, <code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your custom error pages in different locations, your distribution must include a cache behavior for which the following is true:</p> <ul> <li> <p>The value of <code>PathPattern</code> matches the path to your custom error messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a cache behavior for which the path pattern routes requests for your custom error pages to that location, for example, <code>/4xx-errors/*</code>. </p> </li> <li> <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code> element for the origin that contains your custom error pages.</p> </li> </ul> <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value for <code>ResponseCode</code>.</p> <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the files that you want to return to viewers because the origin server is unavailable.</p>"
        },
        "ResponseCode": {
          "shape": "string",
          "documentation": "<p>The HTTP status code that you want CloudFront to return to the viewer along with the custom error page. There are a variety of reasons that you might want CloudFront to return a status code different from the status code that your origin returned to CloudFront, for example:</p> <ul> <li> <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you substitute <code>200</code>, the response typically won't be intercepted.</p> </li> <li> <p>If you don't care about distinguishing among different client errors or server errors, you can specify <code>400</code> or <code>500</code> as the <code>ResponseCode</code> for all 4xx or 5xx errors.</p> </li> <li> <p>You might want to return a <code>200</code> status code (OK) and static website so your customers don't know that your website is down.</p> </li> </ul> <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for <code>ResponsePagePath</code>.</p>"
        },
        "ErrorCachingMinTTL": {
          "shape": "long",
          "documentation": "<p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your origin to see whether the problem that caused the error has been resolved and the requested object is now available.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. </p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CustomErrorResponseList": {
      "type": "list",
      "member": {
        "shape": "CustomErrorResponse",
        "locationName": "CustomErrorResponse"
      }
    },
    "CustomErrorResponses": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of HTTP status codes for which you want to specify a custom error page and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        },
        "Items": {
          "shape": "CustomErrorResponseList",
          "documentation": "<p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP status code for which you want to specify a custom error page and/or a caching duration. </p>"
        }
      },
      "documentation": "<p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CustomHeaders": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of custom headers, if any, for this distribution.</p>"
        },
        "Items": {
          "shape": "OriginCustomHeadersList",
          "documentation": "<p> <b>Optional</b>: A list that contains one <code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that contains the list of Custom Headers for each origin. </p>"
    },
    "CustomOriginConfig": {
      "type": "structure",
      "required": [
        "HTTPPort",
        "HTTPSPort",
        "OriginProtocolPolicy"
      ],
      "members": {
        "HTTPPort": {
          "shape": "integer",
          "documentation": "<p>The HTTP port that CloudFront uses to connect to the origin. Specify the HTTP port that the origin listens on.</p>"
        },
        "HTTPSPort": {
          "shape": "integer",
          "documentation": "<p>The HTTPS port that CloudFront uses to connect to the origin. Specify the HTTPS port that the origin listens on.</p>"
        },
        "OriginProtocolPolicy": {
          "shape": "OriginProtocolPolicy",
          "documentation": "<p>Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect to the origin. Valid values are:</p> <ul> <li> <p> <code>http-only</code> – CloudFront always uses HTTP to connect to the origin.</p> </li> <li> <p> <code>match-viewer</code> – CloudFront connects to the origin using the same protocol that the viewer used to connect to CloudFront.</p> </li> <li> <p> <code>https-only</code> – CloudFront always uses HTTPS to connect to the origin.</p> </li> </ul>"
        },
        "OriginSslProtocols": {
          "shape": "OriginSslProtocols",
          "documentation": "<p>Specifies the minimum SSL/TLS protocol that CloudFront uses when connecting to your origin over HTTPS. Valid values include <code>SSLv3</code>, <code>TLSv1</code>, <code>TLSv1.1</code>, and <code>TLSv1.2</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols\">Minimum Origin SSL Protocol</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "OriginReadTimeout": {
          "shape": "integer",
          "documentation": "<p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the <i>origin response timeout</i>. The minimum timeout is 1 second, the maximum is 60 seconds, and the default (if you don’t specify otherwise) is 30 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout\">Origin Response Timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "OriginKeepaliveTimeout": {
          "shape": "integer",
          "documentation": "<p>Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum timeout is 1 second, the maximum is 60 seconds, and the default (if you don’t specify otherwise) is 5 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginKeepaliveTimeout\">Origin Keep-alive Timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A custom origin. A custom origin is any origin that is <i>not</i> an Amazon S3 bucket, with one exception. An Amazon S3 bucket that is <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html\">configured with static website hosting</a> <i>is</i> a custom origin.</p>"
    },
    "DefaultCacheBehavior": {
      "type": "structure",
      "required": [
        "TargetOriginId",
        "TrustedSigners",
        "ViewerProtocolPolicy"
      ],
      "members": {
        "TargetOriginId": {
          "shape": "string",
          "documentation": "<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when they use the default cache behavior.</p>"
        },
        "TrustedSigners": {
          "shape": "TrustedSigners",
          "documentation": "<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content with Signed URLs and Signed Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you don’t want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it’s currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>"
        },
        "ViewerProtocolPolicy": {
          "shape": "ViewerProtocolPolicy",
          "documentation": "<p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html\">Requiring HTTPS Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects’ cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing Cache Expiration</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>"
        },
        "AllowedMethods": {
          "shape": "AllowedMethods"
        },
        "SmoothStreaming": {
          "shape": "boolean",
          "documentation": "<p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>"
        },
        "Compress": {
          "shape": "boolean",
          "documentation": "<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "LambdaFunctionAssociations": {
          "shape": "LambdaFunctionAssociations",
          "documentation": "<p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>"
        },
        "FieldLevelEncryptionId": {
          "shape": "string",
          "documentation": "<p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for the default cache behavior.</p>"
        },
        "RealtimeLogConfigArn": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html\">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "CachePolicyId": {
          "shape": "string",
          "documentation": "<p>The unique identifier of the cache policy that is attached to the default cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "OriginRequestPolicyId": {
          "shape": "string",
          "documentation": "<p>The unique identifier of the origin request policy that is attached to the default cache behavior. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "ForwardedValues": {
          "shape": "ForwardedValues",
          "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html\">Working with policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to include values in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html\">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>",
          "deprecated": true
        },
        "MinTTL": {
          "shape": "long",
          "documentation": "<p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>",
          "deprecated": true
        },
        "DefaultTTL": {
          "shape": "long",
          "documentation": "<p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>",
          "deprecated": true
        },
        "MaxTTL": {
          "shape": "long",
          "documentation": "<p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache policy instead of this field. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> or <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html\">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>",
          "deprecated": true
        }
      },
      "documentation": "<p>A complex type that describes the default cache behavior if you don’t specify a <code>CacheBehavior</code> element or if request URLs don’t match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
    },
    "DeleteCachePolicyRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the cache policy that you are deleting. To get the identifier, you can use <code>ListCachePolicies</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The version of the cache policy that you are deleting. The version is the cache policy’s <code>ETag</code> value, which you can get using <code>ListCachePolicies</code>, <code>GetCachePolicy</code>, or <code>GetCachePolicyConfig</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      }
    },
    "DeleteCloudFrontOriginAccessIdentityRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The origin access identity's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>Deletes a origin access identity.</p>"
    },
    "DeleteDistributionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution ID. </p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when you disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>. </p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete a web distribution using the CloudFront API:</b> </p> <ol> <li> <p>Disable the web distribution </p> </li> <li> <p>Submit a <code>GET Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution.</p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Distribution</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 6.</p> </li> <li> <p>Review the response to your <code>DELETE Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html\">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "DeleteFieldLevelEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID of the configuration you want to delete from CloudFront.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      }
    },
    "DeleteFieldLevelEncryptionProfileRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID of the profile you want to delete from CloudFront.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      }
    },
    "DeleteMonitoringSubscriptionRequest": {
      "type": "structure",
      "required": [
        "DistributionId"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The ID of the distribution that you are disabling metrics for.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        }
      }
    },
    "DeleteMonitoringSubscriptionResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteOriginRequestPolicyRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the origin request policy that you are deleting. To get the identifier, you can use <code>ListOriginRequestPolicies</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The version of the origin request policy that you are deleting. The version is the origin request policy’s <code>ETag</code> value, which you can get using <code>ListOriginRequestPolicies</code>, <code>GetOriginRequestPolicy</code>, or <code>GetOriginRequestPolicyConfig</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      }
    },
    "DeletePublicKeyRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID of the public key you want to remove from CloudFront.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      }
    },
    "DeleteRealtimeLogConfigRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "string",
          "documentation": "<p>The name of the real-time log configuration to delete.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the real-time log configuration to delete.</p>"
        }
      }
    },
    "DeleteStreamingDistributionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution ID. </p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when you disabled the streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>The request to delete a streaming distribution.</p>"
    },
    "Distribution": {
      "type": "structure",
      "required": [
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "InProgressInvalidationBatches",
        "DomainName",
        "ActiveTrustedSigners",
        "DistributionConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>. </p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>This response element indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge locations. </p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time the distribution was last modified. </p>"
        },
        "InProgressInvalidationBatches": {
          "shape": "integer",
          "documentation": "<p>The number of invalidation batches currently in progress. </p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>. </p>"
        },
        "ActiveTrustedSigners": {
          "shape": "ActiveTrustedSigners",
          "documentation": "<p>CloudFront automatically adds this element to the response only if you've set up the distribution to serve private content with signed URLs. The element lists the key pair IDs that CloudFront is aware of for each trusted signer. The <code>Signer</code> child element lists the AWS account number of the trusted signer (or an empty <code>Self</code> element if the signer is you). The <code>Signer</code> element also includes the IDs of any active key pairs associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create working signed URLs.</p>"
        },
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>The current configuration information for the distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution ID/config</code> resource.</p>"
        },
        "AliasICPRecordals": {
          "shape": "AliasICPRecordals",
          "documentation": "<p>AWS services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP recordal status for CNAMEs associated with distributions.</p> <p>For more information about ICP recordals, see <a href=\"https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
        }
      },
      "documentation": "<p>A distribution tells CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery.</p>"
    },
    "DistributionConfig": {
      "type": "structure",
      "required": [
        "CallerReference",
        "Origins",
        "DefaultCacheBehavior",
        "Comment",
        "Enabled"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>DistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value that you already sent in a previous request to create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>"
        },
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>"
        },
        "DefaultRootObject": {
          "shape": "string",
          "documentation": "<p>The object that you want CloudFront to request from your origin (for example, <code>index.html</code>) when a viewer requests the root URL for your distribution (<code>http://www.example.com</code>) instead of an object in your distribution (<code>http://www.example.com/product-description.html</code>). Specifying a default root object avoids exposing the contents of your distribution.</p> <p>Specify only the object name, for example, <code>index.html</code>. Don't add a <code>/</code> before the object name.</p> <p>If you don't want to specify a default root object when you create a distribution, include an empty <code>DefaultRootObject</code> element.</p> <p>To delete the default root object from an existing distribution, update the distribution configuration and include an empty <code>DefaultRootObject</code> element.</p> <p>To replace the default root object, update the distribution configuration and specify the new object.</p> <p>For more information about the default root object, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html\">Creating a Default Root Object</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Origins": {
          "shape": "Origins",
          "documentation": "<p>A complex type that contains information about origins for this distribution. </p>"
        },
        "OriginGroups": {
          "shape": "OriginGroups",
          "documentation": "<p> A complex type that contains information about origin groups for this distribution.</p>"
        },
        "DefaultCacheBehavior": {
          "shape": "DefaultCacheBehavior",
          "documentation": "<p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
        },
        "CacheBehaviors": {
          "shape": "CacheBehaviors",
          "documentation": "<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>"
        },
        "CustomErrorResponses": {
          "shape": "CustomErrorResponses",
          "documentation": "<p>A complex type that controls the following:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Comment": {
          "shape": "CommentType",
          "documentation": "<p>Any comments you want to include about the distribution.</p> <p>If you don't want to specify a comment, include an empty <code>Comment</code> element.</p> <p>To delete an existing comment, update the distribution configuration and include an empty <code>Comment</code> element.</p> <p>To add or change a comment, update the distribution configuration and specify the new comment.</p>"
        },
        "Logging": {
          "shape": "LoggingConfig",
          "documentation": "<p>A complex type that controls whether access logs are written for the distribution.</p> <p>For more information about logging, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html\">Access Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "PriceClass": {
          "shape": "PriceClass",
          "documentation": "<p>The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your objects from all CloudFront edge locations.</p> <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance.</p> <p>For more information about price classes, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html\">Choosing the Price Class for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For information about CloudFront pricing, including how price classes (such as Price Class 100) map to CloudFront regions, see <a href=\"http://aws.amazon.com/cloudfront/pricing/\">Amazon CloudFront Pricing</a>. For price class information, scroll down to see the table at the bottom of the page.</p>"
        },
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>From this field, you can enable or disable the selected distribution.</p>"
        },
        "ViewerCertificate": {
          "shape": "ViewerCertificate",
          "documentation": "<p>A complex type that determines the distribution’s SSL/TLS configuration for communicating with viewers.</p>"
        },
        "Restrictions": {
          "shape": "Restrictions",
          "documentation": "<p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>"
        },
        "WebACLId": {
          "shape": "string",
          "documentation": "<p>A unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF, use the ACL ARN, for example <code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a</code>. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example <code>473e64fd-f30b-4765-81a0-62ad96dd167a</code>.</p> <p>AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about AWS WAF, see the <a href=\"https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html\">AWS WAF Developer Guide</a>. </p>"
        },
        "HttpVersion": {
          "shape": "HttpVersion",
          "documentation": "<p>(Optional) Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is http2. Viewers that don't support HTTP/2 automatically use an earlier HTTP version.</p> <p>For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or later, and must support Server Name Identification (SNI).</p> <p>In general, configuring CloudFront to communicate with viewers using HTTP/2 reduces latency. You can improve performance by optimizing for HTTP/2. For more information, do an Internet search for \"http/2 optimization.\" </p>"
        },
        "IsIPV6Enabled": {
          "shape": "boolean",
          "documentation": "<p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution. </p> <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the <code>IpAddress</code> parameter to restrict the IP addresses that can access your content, don't enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html\">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you're using an Amazon Route 53 alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:</p> <ul> <li> <p>You enable IPv6 for the distribution</p> </li> <li> <p>You're using alternate domain names in the URLs for your objects</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html\">Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you created a CNAME resource record set, either with Amazon Route 53 or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.</p>"
        }
      },
      "documentation": "<p>A distribution configuration.</p>"
    },
    "DistributionConfigWithTags": {
      "type": "structure",
      "required": [
        "DistributionConfig",
        "Tags"
      ],
      "members": {
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>A distribution configuration.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation": "<p>A distribution Configuration and a list of tags to be associated with the distribution.</p>"
    },
    "DistributionIdList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value provided in the <code>Marker</code> request field.</p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>Contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing distribution IDs where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of distribution IDs requested.</p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more distribution IDs remain to be listed. If your results were truncated, you can make a subsequent request using the <code>Marker</code> request field to retrieve more distribution IDs in the list.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The total number of distribution IDs returned in the response.</p>"
        },
        "Items": {
          "shape": "DistributionIdListSummary",
          "documentation": "<p>Contains the distribution IDs in the list.</p>"
        }
      },
      "documentation": "<p>A list of distribution IDs.</p>"
    },
    "DistributionIdListSummary": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "DistributionId"
      }
    },
    "DistributionList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value you provided for the <code>Marker</code> request parameter.</p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your distributions where they left off. </p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The value you provided for the <code>MaxItems</code> request parameter.</p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of distributions that were created by the current AWS account. </p>"
        },
        "Items": {
          "shape": "DistributionSummaryList",
          "documentation": "<p>A complex type that contains one <code>DistributionSummary</code> element for each distribution that was created by the current AWS account.</p>"
        }
      },
      "documentation": "<p>A distribution list.</p>"
    },
    "DistributionSummary": {
      "type": "structure",
      "required": [
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "DomainName",
        "Aliases",
        "Origins",
        "DefaultCacheBehavior",
        "CacheBehaviors",
        "CustomErrorResponses",
        "Comment",
        "PriceClass",
        "Enabled",
        "ViewerCertificate",
        "Restrictions",
        "WebACLId",
        "HttpVersion",
        "IsIPV6Enabled"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>The current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time the distribution was last modified.</p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name that corresponds to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>"
        },
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>"
        },
        "Origins": {
          "shape": "Origins",
          "documentation": "<p>A complex type that contains information about origins for this distribution.</p>"
        },
        "OriginGroups": {
          "shape": "OriginGroups",
          "documentation": "<p> A complex type that contains information about origin groups for this distribution.</p>"
        },
        "DefaultCacheBehavior": {
          "shape": "DefaultCacheBehavior",
          "documentation": "<p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
        },
        "CacheBehaviors": {
          "shape": "CacheBehaviors",
          "documentation": "<p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>"
        },
        "CustomErrorResponses": {
          "shape": "CustomErrorResponses",
          "documentation": "<p>A complex type that contains zero or more <code>CustomErrorResponses</code> elements.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>The comment originally specified when this distribution was created.</p>"
        },
        "PriceClass": {
          "shape": "PriceClass",
          "documentation": "<p>A complex type that contains information about price class for this streaming distribution. </p>"
        },
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Whether the distribution is enabled to accept user requests for content.</p>"
        },
        "ViewerCertificate": {
          "shape": "ViewerCertificate",
          "documentation": "<p>A complex type that determines the distribution’s SSL/TLS configuration for communicating with viewers.</p>"
        },
        "Restrictions": {
          "shape": "Restrictions",
          "documentation": "<p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>"
        },
        "WebACLId": {
          "shape": "string",
          "documentation": "<p>The Web ACL Id (if any) associated with the distribution.</p>"
        },
        "HttpVersion": {
          "shape": "HttpVersion",
          "documentation": "<p> Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support <code>HTTP/2</code> will automatically use an earlier version.</p>"
        },
        "IsIPV6Enabled": {
          "shape": "boolean",
          "documentation": "<p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution.</p>"
        },
        "AliasICPRecordals": {
          "shape": "AliasICPRecordals",
          "documentation": "<p>AWS services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP recordal status for CNAMEs associated with distributions.</p> <p>For more information about ICP recordals, see <a href=\"https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html\"> Signup, Accounts, and Credentials</a> in <i>Getting Started with AWS services in China</i>.</p>"
        }
      },
      "documentation": "<p>A summary of the information about a CloudFront distribution.</p>"
    },
    "DistributionSummaryList": {
      "type": "list",
      "member": {
        "shape": "DistributionSummary",
        "locationName": "DistributionSummary"
      }
    },
    "EncryptionEntities": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>Number of field pattern items in a field-level encryption content type-profile mapping. </p>"
        },
        "Items": {
          "shape": "EncryptionEntityList",
          "documentation": "<p>An array of field patterns in a field-level encryption content type-profile mapping. </p>"
        }
      },
      "documentation": "<p>Complex data type for field-level encryption profiles that includes all of the encryption entities. </p>"
    },
    "EncryptionEntity": {
      "type": "structure",
      "required": [
        "PublicKeyId",
        "ProviderId",
        "FieldPatterns"
      ],
      "members": {
        "PublicKeyId": {
          "shape": "string",
          "documentation": "<p>The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns. </p>"
        },
        "ProviderId": {
          "shape": "string",
          "documentation": "<p>The provider associated with the public key being used for encryption. This value must also be provided with the private key for applications to be able to decrypt data.</p>"
        },
        "FieldPatterns": {
          "shape": "FieldPatterns",
          "documentation": "<p>Field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted. You can provide the full field name, or any beginning characters followed by a wildcard (*). You can't overlap field patterns. For example, you can't have both ABC* and AB*. Note that field patterns are case-sensitive. </p>"
        }
      },
      "documentation": "<p>Complex data type for field-level encryption profiles that includes the encryption key and field pattern specifications. </p>"
    },
    "EncryptionEntityList": {
      "type": "list",
      "member": {
        "shape": "EncryptionEntity",
        "locationName": "EncryptionEntity"
      }
    },
    "EndPoint": {
      "type": "structure",
      "required": [
        "StreamType"
      ],
      "members": {
        "StreamType": {
          "shape": "string",
          "documentation": "<p>The type of data stream where you are sending real-time log data. The only valid value is <code>Kinesis</code>.</p>"
        },
        "KinesisStreamConfig": {
          "shape": "KinesisStreamConfig",
          "documentation": "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>"
        }
      },
      "documentation": "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data in a real-time log configuration.</p>"
    },
    "EndPointList": {
      "type": "list",
      "member": {
        "shape": "EndPoint"
      }
    },
    "EventType": {
      "type": "string",
      "enum": [
        "viewer-request",
        "viewer-response",
        "origin-request",
        "origin-response"
      ]
    },
    "FieldLevelEncryption": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime",
        "FieldLevelEncryptionConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The configuration ID for a field-level encryption configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The last time the field-level encryption configuration was changed. </p>"
        },
        "FieldLevelEncryptionConfig": {
          "shape": "FieldLevelEncryptionConfig",
          "documentation": "<p>A complex data type that includes the profile configurations specified for field-level encryption. </p>"
        }
      },
      "documentation": "<p>A complex data type that includes the profile configurations and other options specified for field-level encryption. </p>"
    },
    "FieldLevelEncryptionConfig": {
      "type": "structure",
      "required": [
        "CallerReference"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique number that ensures the request can't be replayed.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment about the configuration.</p>"
        },
        "QueryArgProfileConfig": {
          "shape": "QueryArgProfileConfig",
          "documentation": "<p>A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.</p>"
        },
        "ContentTypeProfileConfig": {
          "shape": "ContentTypeProfileConfig",
          "documentation": "<p>A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.</p>"
        }
      },
      "documentation": "<p>A complex data type that includes the profile configurations specified for field-level encryption. </p>"
    },
    "FieldLevelEncryptionList": {
      "type": "structure",
      "required": [
        "MaxItems",
        "Quantity"
      ],
      "members": {
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your configurations where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of elements you want in the response body. </p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of field-level encryption items.</p>"
        },
        "Items": {
          "shape": "FieldLevelEncryptionSummaryList",
          "documentation": "<p>An array of field-level encryption items.</p>"
        }
      },
      "documentation": "<p>List of field-level encrpytion configurations.</p>"
    },
    "FieldLevelEncryptionProfile": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime",
        "FieldLevelEncryptionProfileConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID for a field-level encryption profile configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The last time the field-level encryption profile was updated.</p>"
        },
        "FieldLevelEncryptionProfileConfig": {
          "shape": "FieldLevelEncryptionProfileConfig",
          "documentation": "<p>A complex data type that includes the profile name and the encryption entities for the field-level encryption profile.</p>"
        }
      },
      "documentation": "<p>A complex data type for field-level encryption profiles.</p>"
    },
    "FieldLevelEncryptionProfileConfig": {
      "type": "structure",
      "required": [
        "Name",
        "CallerReference",
        "EncryptionEntities"
      ],
      "members": {
        "Name": {
          "shape": "string",
          "documentation": "<p>Profile name for the field-level encryption profile.</p>"
        },
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique number that ensures that the request can't be replayed.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment for the field-level encryption profile.</p>"
        },
        "EncryptionEntities": {
          "shape": "EncryptionEntities",
          "documentation": "<p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>"
        }
      },
      "documentation": "<p>A complex data type of profiles for the field-level encryption.</p>"
    },
    "FieldLevelEncryptionProfileList": {
      "type": "structure",
      "required": [
        "MaxItems",
        "Quantity"
      ],
      "members": {
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your profiles where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of field-level encryption profiles you want in the response body. </p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of field-level encryption profiles.</p>"
        },
        "Items": {
          "shape": "FieldLevelEncryptionProfileSummaryList",
          "documentation": "<p>The field-level encryption profile items.</p>"
        }
      },
      "documentation": "<p>List of field-level encryption profiles.</p>"
    },
    "FieldLevelEncryptionProfileSummary": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime",
        "Name",
        "EncryptionEntities"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>ID for the field-level encryption profile summary.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The time when the the field-level encryption profile summary was last updated.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>Name for the field-level encryption profile summary.</p>"
        },
        "EncryptionEntities": {
          "shape": "EncryptionEntities",
          "documentation": "<p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment for the field-level encryption profile summary.</p>"
        }
      },
      "documentation": "<p>The field-level encryption profile summary.</p>"
    },
    "FieldLevelEncryptionProfileSummaryList": {
      "type": "list",
      "member": {
        "shape": "FieldLevelEncryptionProfileSummary",
        "locationName": "FieldLevelEncryptionProfileSummary"
      }
    },
    "FieldLevelEncryptionSummary": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique ID of a field-level encryption item.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The last time that the summary of field-level encryption items was modified.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment about the field-level encryption item.</p>"
        },
        "QueryArgProfileConfig": {
          "shape": "QueryArgProfileConfig",
          "documentation": "<p> A summary of a query argument-profile mapping. </p>"
        },
        "ContentTypeProfileConfig": {
          "shape": "ContentTypeProfileConfig",
          "documentation": "<p> A summary of a content type-profile mapping. </p>"
        }
      },
      "documentation": "<p>A summary of a field-level encryption item.</p>"
    },
    "FieldLevelEncryptionSummaryList": {
      "type": "list",
      "member": {
        "shape": "FieldLevelEncryptionSummary",
        "locationName": "FieldLevelEncryptionSummary"
      }
    },
    "FieldList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Field"
      }
    },
    "FieldPatternList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "FieldPattern"
      }
    },
    "FieldPatterns": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of field-level encryption field patterns.</p>"
        },
        "Items": {
          "shape": "FieldPatternList",
          "documentation": "<p>An array of the field-level encryption field patterns.</p>"
        }
      },
      "documentation": "<p>A complex data type that includes the field patterns to match for field-level encryption.</p>"
    },
    "Format": {
      "type": "string",
      "enum": [
        "URLEncoded"
      ]
    },
    "ForwardedValues": {
      "type": "structure",
      "required": [
        "QueryString",
        "Cookies"
      ],
      "members": {
        "QueryString": {
          "shape": "boolean",
          "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include query strings in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send query strings to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of <code>QueryString</code> and on the values that you specify for <code>QueryStringCacheKeys</code>, if any:</p> <p>If you specify true for <code>QueryString</code> and you don't specify any values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.</p> <p>If you specify true for <code>QueryString</code> and you specify one or more values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.</p> <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html\">Configuring CloudFront to Cache Based on Query String Parameters</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Cookies": {
          "shape": "CookiePreference",
          "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Headers": {
          "shape": "Headers",
          "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include headers in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send headers to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to forward to the origin for this cache behavior (whitelisted headers). For the headers that you specify, CloudFront also caches separate versions of a specified object that is based on the header values in viewer requests.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html\"> Caching Content Based on Request Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "QueryStringCacheKeys": {
          "shape": "QueryStringCacheKeys",
          "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include query strings in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send query strings to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.</p>"
        }
      },
      "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include values in the cache key, use a cache policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy\">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy\">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>"
    },
    "GeoRestriction": {
      "type": "structure",
      "required": [
        "RestrictionType",
        "Quantity"
      ],
      "members": {
        "RestrictionType": {
          "shape": "GeoRestrictionType",
          "documentation": "<p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geo restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you don't want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>When geo restriction is <code>enabled</code>, this is the number of countries in your <code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled, <code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>"
        },
        "Items": {
          "shape": "LocationList",
          "documentation": "<p> A complex type that contains a <code>Location</code> element for each country in which you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute your content (<code>blacklist</code>).</p> <p>The <code>Location</code> element is a two-letter, uppercase country code for a country that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one <code>Location</code> element for each country.</p> <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code> code on the <i>International Organization for Standardization</i> website. You can also refer to the country list on the CloudFront console, which includes both country names and codes.</p>"
        }
      },
      "documentation": "<p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>"
    },
    "GeoRestrictionType": {
      "type": "string",
      "enum": [
        "blacklist",
        "whitelist",
        "none"
      ]
    },
    "GetCachePolicyConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the cache policy. If the cache policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetCachePolicyConfigResult": {
      "type": "structure",
      "members": {
        "CachePolicyConfig": {
          "shape": "CachePolicyConfig",
          "documentation": "<p>The cache policy configuration.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the cache policy.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "CachePolicyConfig"
    },
    "GetCachePolicyRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the cache policy. If the cache policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetCachePolicyResult": {
      "type": "structure",
      "members": {
        "CachePolicy": {
          "shape": "CachePolicy",
          "documentation": "<p>The cache policy.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the cache policy.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "CachePolicy"
    },
    "GetCloudFrontOriginAccessIdentityConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identity's ID. </p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The origin access identity's configuration information. For more information, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CloudFrontOriginAccessIdentityConfig.html\">CloudFrontOriginAccessIdentityConfig</a>.</p>"
    },
    "GetCloudFrontOriginAccessIdentityConfigResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentityConfig": {
          "shape": "CloudFrontOriginAccessIdentityConfig",
          "documentation": "<p>The origin access identity's configuration information. </p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "CloudFrontOriginAccessIdentityConfig"
    },
    "GetCloudFrontOriginAccessIdentityRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identity's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get an origin access identity's information.</p>"
    },
    "GetCloudFrontOriginAccessIdentityResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentity": {
          "shape": "CloudFrontOriginAccessIdentity",
          "documentation": "<p>The origin access identity's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the origin access identity's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "CloudFrontOriginAccessIdentity"
    },
    "GetDistributionConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get a distribution configuration.</p>"
    },
    "GetDistributionConfigResult": {
      "type": "structure",
      "members": {
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>The distribution's configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "DistributionConfig"
    },
    "GetDistributionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get a distribution's information.</p>"
    },
    "GetDistributionResult": {
      "type": "structure",
      "members": {
        "Distribution": {
          "shape": "Distribution",
          "documentation": "<p>The distribution's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Distribution"
    },
    "GetFieldLevelEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID for the field-level encryption configuration information.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetFieldLevelEncryptionConfigResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionConfig": {
          "shape": "FieldLevelEncryptionConfig",
          "documentation": "<p>Return the field-level encryption configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionConfig"
    },
    "GetFieldLevelEncryptionProfileConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Get the ID for the field-level encryption profile configuration information.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetFieldLevelEncryptionProfileConfigResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfileConfig": {
          "shape": "FieldLevelEncryptionProfileConfig",
          "documentation": "<p>Return the field-level encryption profile configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field-level encryption profile configuration result. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionProfileConfig"
    },
    "GetFieldLevelEncryptionProfileRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Get the ID for the field-level encryption profile information.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetFieldLevelEncryptionProfileResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfile": {
          "shape": "FieldLevelEncryptionProfile",
          "documentation": "<p>Return the field-level encryption profile information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionProfile"
    },
    "GetFieldLevelEncryptionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID for the field-level encryption configuration information.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetFieldLevelEncryptionResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryption": {
          "shape": "FieldLevelEncryption",
          "documentation": "<p>Return the field-level encryption configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryption"
    },
    "GetInvalidationRequest": {
      "type": "structure",
      "required": [
        "DistributionId",
        "Id"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The distribution's ID.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the invalidation request, for example, <code>IDFDVBD632BHDS5</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get an invalidation's information. </p>"
    },
    "GetInvalidationResult": {
      "type": "structure",
      "members": {
        "Invalidation": {
          "shape": "Invalidation",
          "documentation": "<p>The invalidation's information. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html\">Invalidation Complex Type</a>. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Invalidation"
    },
    "GetMonitoringSubscriptionRequest": {
      "type": "structure",
      "required": [
        "DistributionId"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The ID of the distribution that you are getting metrics information for.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        }
      }
    },
    "GetMonitoringSubscriptionResult": {
      "type": "structure",
      "members": {
        "MonitoringSubscription": {
          "shape": "MonitoringSubscription",
          "documentation": "<p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>"
        }
      },
      "payload": "MonitoringSubscription"
    },
    "GetOriginRequestPolicyConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the origin request policy. If the origin request policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetOriginRequestPolicyConfigResult": {
      "type": "structure",
      "members": {
        "OriginRequestPolicyConfig": {
          "shape": "OriginRequestPolicyConfig",
          "documentation": "<p>The origin request policy configuration.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the origin request policy.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "OriginRequestPolicyConfig"
    },
    "GetOriginRequestPolicyRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the origin request policy. If the origin request policy is attached to a distribution’s cache behavior, you can get the policy’s identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetOriginRequestPolicyResult": {
      "type": "structure",
      "members": {
        "OriginRequestPolicy": {
          "shape": "OriginRequestPolicy",
          "documentation": "<p>The origin request policy.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the origin request policy.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "OriginRequestPolicy"
    },
    "GetPublicKeyConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID for the public key configuration.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetPublicKeyConfigResult": {
      "type": "structure",
      "members": {
        "PublicKeyConfig": {
          "shape": "PublicKeyConfig",
          "documentation": "<p>Return the result for the public key configuration.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the public key configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "PublicKeyConfig"
    },
    "GetPublicKeyRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID for the public key.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetPublicKeyResult": {
      "type": "structure",
      "members": {
        "PublicKey": {
          "shape": "PublicKey",
          "documentation": "<p>Return the public key.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the public key. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "PublicKey"
    },
    "GetRealtimeLogConfigRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "string",
          "documentation": "<p>The name of the real-time log configuration to get.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the real-time log configuration to get.</p>"
        }
      }
    },
    "GetRealtimeLogConfigResult": {
      "type": "structure",
      "members": {
        "RealtimeLogConfig": {
          "shape": "RealtimeLogConfig",
          "documentation": "<p>A real-time log configuration.</p>"
        }
      }
    },
    "GetStreamingDistributionConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The streaming distribution's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>To request to get a streaming distribution configuration.</p>"
    },
    "GetStreamingDistributionConfigResult": {
      "type": "structure",
      "members": {
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>The streaming distribution's configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>. </p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "StreamingDistributionConfig"
    },
    "GetStreamingDistributionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The streaming distribution's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get a streaming distribution's information.</p>"
    },
    "GetStreamingDistributionResult": {
      "type": "structure",
      "members": {
        "StreamingDistribution": {
          "shape": "StreamingDistribution",
          "documentation": "<p>The streaming distribution's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the streaming distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "StreamingDistribution"
    },
    "HeaderList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Name"
      }
    },
    "Headers": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of header names in the <code>Items</code> list.</p>"
        },
        "Items": {
          "shape": "HeaderList",
          "documentation": "<p>A list of HTTP header names.</p>"
        }
      },
      "documentation": "<p>Contains a list of HTTP header names.</p>"
    },
    "HttpVersion": {
      "type": "string",
      "enum": [
        "http1.1",
        "http2"
      ]
    },
    "ICPRecordalStatus": {
      "type": "string",
      "enum": [
        "APPROVED",
        "SUSPENDED",
        "PENDING"
      ]
    },
    "Invalidation": {
      "type": "structure",
      "required": [
        "Id",
        "Status",
        "CreateTime",
        "InvalidationBatch"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the invalidation request. For example: <code>IDFDVBD632BHDS5</code>.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>The status of the invalidation request. When the invalidation batch is finished, the status is <code>Completed</code>.</p>"
        },
        "CreateTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time the invalidation request was first made. </p>"
        },
        "InvalidationBatch": {
          "shape": "InvalidationBatch",
          "documentation": "<p>The current invalidation information for the batch request. </p>"
        }
      },
      "documentation": "<p>An invalidation. </p>"
    },
    "InvalidationBatch": {
      "type": "structure",
      "required": [
        "Paths",
        "CallerReference"
      ],
      "members": {
        "Paths": {
          "shape": "Paths",
          "documentation": "<p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the value to prevent you from accidentally resubmitting an identical request. Whenever you create a new invalidation request, you must specify a new value for <code>CallerReference</code> and change other values in the request as applicable. One way to ensure that the value of <code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example, <code>20120301090000</code>.</p> <p>If you make a second invalidation request with the same value for <code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't create a new invalidation request. Instead, CloudFront returns information about the invalidation request that you previously created with the same <code>CallerReference</code>.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation batch request but the content of any <code>Path</code> is different from the original request, CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>"
        }
      },
      "documentation": "<p>An invalidation batch.</p>"
    },
    "InvalidationList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value that you provided for the <code>Marker</code> request parameter.</p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your invalidation batches where they left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more invalidation batches in the list.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of invalidation batches that were created by the current AWS account. </p>"
        },
        "Items": {
          "shape": "InvalidationSummaryList",
          "documentation": "<p>A complex type that contains one <code>InvalidationSummary</code> element for each invalidation batch created by the current AWS account.</p>"
        }
      },
      "documentation": "<p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html\">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "InvalidationSummary": {
      "type": "structure",
      "required": [
        "Id",
        "CreateTime",
        "Status"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique ID for an invalidation request.</p>"
        },
        "CreateTime": {
          "shape": "timestamp",
          "documentation": "<p>The time that an invalidation request was created.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>The status of an invalidation request.</p>"
        }
      },
      "documentation": "<p>A summary of an invalidation request.</p>"
    },
    "InvalidationSummaryList": {
      "type": "list",
      "member": {
        "shape": "InvalidationSummary",
        "locationName": "InvalidationSummary"
      }
    },
    "ItemSelection": {
      "type": "string",
      "enum": [
        "none",
        "whitelist",
        "all"
      ]
    },
    "KeyPairIdList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "KeyPairId"
      }
    },
    "KeyPairIds": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of active CloudFront key pairs for <code>AwsAccountNumber</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ActiveTrustedSigners.html\">ActiveTrustedSigners</a>.</p>"
        },
        "Items": {
          "shape": "KeyPairIdList",
          "documentation": "<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ActiveTrustedSigners.html\">ActiveTrustedSigners</a>.</p>"
        }
      },
      "documentation": "<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ActiveTrustedSigners.html\">ActiveTrustedSigners</a>.</p>"
    },
    "KinesisStreamConfig": {
      "type": "structure",
      "required": [
        "RoleARN",
        "StreamARN"
      ],
      "members": {
        "RoleARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that CloudFront can use to send real-time log data to your Kinesis data stream.</p> <p>For more information the IAM role, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role\">Real-time log configuration IAM role</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "StreamARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Kinesis data stream where you are sending real-time log data.</p>"
        }
      },
      "documentation": "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>"
    },
    "LambdaFunctionARN": {
      "type": "string"
    },
    "LambdaFunctionAssociation": {
      "type": "structure",
      "required": [
        "LambdaFunctionARN",
        "EventType"
      ],
      "members": {
        "LambdaFunctionARN": {
          "shape": "LambdaFunctionARN",
          "documentation": "<p>The ARN of the Lambda function. You must specify the ARN of a function version; you can't specify a Lambda alias or $LATEST.</p>"
        },
        "EventType": {
          "shape": "EventType",
          "documentation": "<p>Specifies the event type that triggers a Lambda function invocation. You can specify the following values:</p> <ul> <li> <p> <code>viewer-request</code>: The function executes when CloudFront receives a request from a viewer and before it checks to see whether the requested object is in the edge cache. </p> </li> <li> <p> <code>origin-request</code>: The function executes only when CloudFront sends a request to your origin. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>origin-response</code>: The function executes after CloudFront receives a response from the origin and before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>viewer-response</code>: The function executes before CloudFront returns the requested object to the viewer. The function executes regardless of whether the object was already in the edge cache.</p> <p>If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.</p> </li> </ul>"
        },
        "IncludeBody": {
          "shape": "boolean",
          "documentation": "<p>A flag that allows a Lambda function to have read access to the body content. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html\">Accessing the Request Body by Choosing the Include Body Option</a> in the Amazon CloudFront Developer Guide.</p>"
        }
      },
      "documentation": "<p>A complex type that contains a Lambda function association.</p>"
    },
    "LambdaFunctionAssociationList": {
      "type": "list",
      "member": {
        "shape": "LambdaFunctionAssociation",
        "locationName": "LambdaFunctionAssociation"
      }
    },
    "LambdaFunctionAssociations": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of Lambda function associations for this cache behavior.</p>"
        },
        "Items": {
          "shape": "LambdaFunctionAssociationList",
          "documentation": "<p> <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that specifies a list of Lambda functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with the Lambda function only once.</p> <p>If you don't want to invoke any Lambda functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. </p>"
    },
    "ListCachePoliciesRequest": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "CachePolicyType",
          "documentation": "<p>A filter to return only the specified kinds of cache policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Returns only the managed policies created by AWS.</p> </li> <li> <p> <code>custom</code> – Returns only the custom policies created in your AWS account.</p> </li> </ul>",
          "location": "querystring",
          "locationName": "Type"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this field when paginating results to indicate where to begin in your list of cache policies. The response includes cache policies in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of <code>NextMarker</code> from the current page’s response.</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of cache policies that you want in the response.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      }
    },
    "ListCachePoliciesResult": {
      "type": "structure",
      "members": {
        "CachePolicyList": {
          "shape": "CachePolicyList",
          "documentation": "<p>A list of cache policies.</p>"
        }
      },
      "payload": "CachePolicyList"
    },
    "ListCloudFrontOriginAccessIdentitiesRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of origin access identities you want in the response body. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      },
      "documentation": "<p>The request to list origin access identities. </p>"
    },
    "ListCloudFrontOriginAccessIdentitiesResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentityList": {
          "shape": "CloudFrontOriginAccessIdentityList",
          "documentation": "<p>The <code>CloudFrontOriginAccessIdentityList</code> type. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "CloudFrontOriginAccessIdentityList"
    },
    "ListDistributionsByCachePolicyIdRequest": {
      "type": "structure",
      "required": [
        "CachePolicyId"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of <code>NextMarker</code> from the current page’s response.</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of distribution IDs that you want in the response.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        },
        "CachePolicyId": {
          "shape": "string",
          "documentation": "<p>The ID of the cache policy whose associated distribution IDs you want to list.</p>",
          "location": "uri",
          "locationName": "CachePolicyId"
        }
      }
    },
    "ListDistributionsByCachePolicyIdResult": {
      "type": "structure",
      "members": {
        "DistributionIdList": {
          "shape": "DistributionIdList",
          "documentation": "<p>A list of distribution IDs.</p>"
        }
      },
      "payload": "DistributionIdList"
    },
    "ListDistributionsByOriginRequestPolicyIdRequest": {
      "type": "structure",
      "required": [
        "OriginRequestPolicyId"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of <code>NextMarker</code> from the current page’s response.</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of distribution IDs that you want in the response.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        },
        "OriginRequestPolicyId": {
          "shape": "string",
          "documentation": "<p>The ID of the origin request policy whose associated distribution IDs you want to list.</p>",
          "location": "uri",
          "locationName": "OriginRequestPolicyId"
        }
      }
    },
    "ListDistributionsByOriginRequestPolicyIdResult": {
      "type": "structure",
      "members": {
        "DistributionIdList": {
          "shape": "DistributionIdList",
          "documentation": "<p>A list of distribution IDs.</p>"
        }
      },
      "payload": "DistributionIdList"
    },
    "ListDistributionsByRealtimeLogConfigRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this field when paginating results to indicate where to begin in your list of distributions. The response includes distributions in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of <code>NextMarker</code> from the current page’s response.</p>"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of distributions that you want in the response.</p>"
        },
        "RealtimeLogConfigName": {
          "shape": "string",
          "documentation": "<p>The name of the real-time log configuration whose associated distributions you want to list.</p>"
        },
        "RealtimeLogConfigArn": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of the real-time log configuration whose associated distributions you want to list.</p>"
        }
      }
    },
    "ListDistributionsByRealtimeLogConfigResult": {
      "type": "structure",
      "members": {
        "DistributionList": {
          "shape": "DistributionList"
        }
      },
      "payload": "DistributionList"
    },
    "ListDistributionsByWebACLIdRequest": {
      "type": "structure",
      "required": [
        "WebACLId"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If you have more than <code>MaxItems</code> distributions that satisfy the request, the response includes a <code>NextMarker</code> element. To get the next page of results, submit another request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> from the last response. (For the first request, omit <code>Marker</code>.) </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        },
        "WebACLId": {
          "shape": "string",
          "documentation": "<p>The ID of the AWS WAF web ACL that you want to list the associated distributions. If you specify \"null\" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. </p>",
          "location": "uri",
          "locationName": "WebACLId"
        }
      },
      "documentation": "<p>The request to list distributions that are associated with a specified AWS WAF web ACL. </p>"
    },
    "ListDistributionsByWebACLIdResult": {
      "type": "structure",
      "members": {
        "DistributionList": {
          "shape": "DistributionList",
          "documentation": "<p>The <code>DistributionList</code> type. </p>"
        }
      },
      "documentation": "<p>The response to a request to list the distributions that are associated with a specified AWS WAF web ACL. </p>",
      "payload": "DistributionList"
    },
    "ListDistributionsRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last distribution on that page).</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of distributions you want in the response body.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      },
      "documentation": "<p>The request to list your distributions. </p>"
    },
    "ListDistributionsResult": {
      "type": "structure",
      "members": {
        "DistributionList": {
          "shape": "DistributionList",
          "documentation": "<p>The <code>DistributionList</code> type. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "DistributionList"
    },
    "ListFieldLevelEncryptionConfigsRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page). </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of field-level encryption configurations you want in the response body. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      }
    },
    "ListFieldLevelEncryptionConfigsResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionList": {
          "shape": "FieldLevelEncryptionList",
          "documentation": "<p>Returns a list of all field-level encryption configurations that have been created in CloudFront for this account.</p>"
        }
      },
      "payload": "FieldLevelEncryptionList"
    },
    "ListFieldLevelEncryptionProfilesRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page). </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of field-level encryption profiles you want in the response body. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      }
    },
    "ListFieldLevelEncryptionProfilesResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfileList": {
          "shape": "FieldLevelEncryptionProfileList",
          "documentation": "<p>Returns a list of the field-level encryption profiles that have been created in CloudFront for this account.</p>"
        }
      },
      "payload": "FieldLevelEncryptionProfileList"
    },
    "ListInvalidationsRequest": {
      "type": "structure",
      "required": [
        "DistributionId"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The distribution's ID.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page. </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of invalidation batches that you want in the response body.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      },
      "documentation": "<p>The request to list invalidations. </p>"
    },
    "ListInvalidationsResult": {
      "type": "structure",
      "members": {
        "InvalidationList": {
          "shape": "InvalidationList",
          "documentation": "<p>Information about invalidation batches. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "InvalidationList"
    },
    "ListOriginRequestPoliciesRequest": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "OriginRequestPolicyType",
          "documentation": "<p>A filter to return only the specified kinds of origin request policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Returns only the managed policies created by AWS.</p> </li> <li> <p> <code>custom</code> – Returns only the custom policies created in your AWS account.</p> </li> </ul>",
          "location": "querystring",
          "locationName": "Type"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this field when paginating results to indicate where to begin in your list of origin request policies. The response includes origin request policies in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of <code>NextMarker</code> from the current page’s response.</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of origin request policies that you want in the response.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      }
    },
    "ListOriginRequestPoliciesResult": {
      "type": "structure",
      "members": {
        "OriginRequestPolicyList": {
          "shape": "OriginRequestPolicyList",
          "documentation": "<p>A list of origin request policies.</p>"
        }
      },
      "payload": "OriginRequestPolicyList"
    },
    "ListPublicKeysRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page). </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of public keys you want in the response body. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      }
    },
    "ListPublicKeysResult": {
      "type": "structure",
      "members": {
        "PublicKeyList": {
          "shape": "PublicKeyList",
          "documentation": "<p>Returns a list of all public keys that have been added to CloudFront for this account.</p>"
        }
      },
      "payload": "PublicKeyList"
    },
    "ListRealtimeLogConfigsRequest": {
      "type": "structure",
      "members": {
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of real-time log configurations that you want in the response.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this field when paginating results to indicate where to begin in your list of real-time log configurations. The response includes real-time log configurations in the list that occur after the marker. To get the next page of the list, set this field’s value to the value of <code>NextMarker</code> from the current page’s response.</p>",
          "location": "querystring",
          "locationName": "Marker"
        }
      }
    },
    "ListRealtimeLogConfigsResult": {
      "type": "structure",
      "members": {
        "RealtimeLogConfigs": {
          "shape": "RealtimeLogConfigs",
          "documentation": "<p>A list of real-time log configurations.</p>"
        }
      },
      "payload": "RealtimeLogConfigs"
    },
    "ListStreamingDistributionsRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value that you provided for the <code>Marker</code> request parameter.</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      },
      "documentation": "<p>The request to list your streaming distributions. </p>"
    },
    "ListStreamingDistributionsResult": {
      "type": "structure",
      "members": {
        "StreamingDistributionList": {
          "shape": "StreamingDistributionList",
          "documentation": "<p>The <code>StreamingDistributionList</code> type. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "StreamingDistributionList"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "Resource"
      ],
      "members": {
        "Resource": {
          "shape": "ResourceARN",
          "documentation": "<p> An ARN of a CloudFront resource.</p>",
          "location": "querystring",
          "locationName": "Resource"
        }
      },
      "documentation": "<p> The request to list tags for a CloudFront resource.</p>"
    },
    "ListTagsForResourceResult": {
      "type": "structure",
      "required": [
        "Tags"
      ],
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation": "<p> The returned result of the corresponding request.</p>",
      "payload": "Tags"
    },
    "LocationList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Location"
      }
    },
    "LoggingConfig": {
      "type": "structure",
      "required": [
        "Enabled",
        "IncludeCookies",
        "Bucket",
        "Prefix"
      ],
      "members": {
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a distribution or if you want to disable logging for an existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty <code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code>, <code>prefix</code>, and <code>IncludeCookies</code>, the values are automatically deleted.</p>"
        },
        "IncludeCookies": {
          "shape": "boolean",
          "documentation": "<p>Specifies whether you want CloudFront to include cookies in access logs, specify <code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify <code>false</code> for <code>IncludeCookies</code>.</p>"
        },
        "Bucket": {
          "shape": "string",
          "documentation": "<p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>"
        },
        "Prefix": {
          "shape": "string",
          "documentation": "<p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>"
        }
      },
      "documentation": "<p>A complex type that controls whether access logs are written for the distribution.</p>"
    },
    "Method": {
      "type": "string",
      "enum": [
        "GET",
        "HEAD",
        "POST",
        "PUT",
        "PATCH",
        "OPTIONS",
        "DELETE"
      ]
    },
    "MethodsList": {
      "type": "list",
      "member": {
        "shape": "Method",
        "locationName": "Method"
      }
    },
    "MinimumProtocolVersion": {
      "type": "string",
      "enum": [
        "SSLv3",
        "TLSv1",
        "TLSv1_2016",
        "TLSv1.1_2016",
        "TLSv1.2_2018",
        "TLSv1.2_2019"
      ]
    },
    "MonitoringSubscription": {
      "type": "structure",
      "members": {
        "RealtimeMetricsSubscriptionConfig": {
          "shape": "RealtimeMetricsSubscriptionConfig",
          "documentation": "<p>A subscription configuration for additional CloudWatch metrics.</p>"
        }
      },
      "documentation": "<p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>"
    },
    "Origin": {
      "type": "structure",
      "required": [
        "Id",
        "DomainName"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>A unique identifier for the origin. This value must be unique within the distribution.</p> <p>Use this value to specify the <code>TargetOriginId</code> in a <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>.</p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name for the origin.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName\">Origin Domain Name</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "OriginPath": {
          "shape": "string",
          "documentation": "<p>An optional path that CloudFront appends to the origin domain name when CloudFront requests content from the origin.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath\">Origin Path</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "CustomHeaders": {
          "shape": "CustomHeaders",
          "documentation": "<p>A list of HTTP header names and values that CloudFront adds to requests it sends to the origin.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html\">Adding Custom Headers to Origin Requests</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "S3OriginConfig": {
          "shape": "S3OriginConfig",
          "documentation": "<p>Use this type to specify an origin that is an Amazon S3 bucket that is <i> <b>not</b> </i> configured with static website hosting. To specify any other type of origin, including an Amazon S3 bucket that is configured with static website hosting, use the <code>CustomOriginConfig</code> type instead.</p>"
        },
        "CustomOriginConfig": {
          "shape": "CustomOriginConfig",
          "documentation": "<p>Use this type to specify an origin that is a content container or HTTP server, including an Amazon S3 bucket that is configured with static website hosting. To specify an Amazon S3 bucket that is <i> <b>not</b> </i> configured with static website hosting, use the <code>S3OriginConfig</code> type instead.</p>"
        },
        "ConnectionAttempts": {
          "shape": "integer",
          "documentation": "<p>The number of times that CloudFront attempts to connect to the origin. The minimum number is 1, the maximum is 3, and the default (if you don’t specify otherwise) is 3.</p> <p>For a custom origin (including an Amazon S3 bucket that’s configured with static website hosting), this value also specifies the number of times that CloudFront attempts to get a response from the origin, in the case of an <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout\">Origin Response Timeout</a>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts\">Origin Connection Attempts</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "ConnectionTimeout": {
          "shape": "integer",
          "documentation": "<p>The number of seconds that CloudFront waits when trying to establish a connection to the origin. The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you don’t specify otherwise) is 10 seconds.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout\">Origin Connection Timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>An origin.</p> <p>An origin is the location where content is stored, and from which CloudFront gets content to serve to viewers. To specify an origin:</p> <ul> <li> <p>Use the <code>S3OriginConfig</code> type to specify an Amazon S3 bucket that is <i> <b>not</b> </i> configured with static website hosting.</p> </li> <li> <p>Use the <code>CustomOriginConfig</code> type to specify various other kinds of content containers or HTTP servers, including:</p> <ul> <li> <p>An Amazon S3 bucket that is configured with static website hosting</p> </li> <li> <p>An Elastic Load Balancing load balancer</p> </li> <li> <p>An AWS Elemental MediaPackage origin</p> </li> <li> <p>An AWS Elemental MediaStore container</p> </li> <li> <p>Any other HTTP server, running on an Amazon EC2 instance or any other kind of host</p> </li> </ul> </li> </ul> <p>For the current maximum number of origins that you can specify per distribution, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html#limits-web-distributions\">General Quotas on Web Distributions</a> in the <i>Amazon CloudFront Developer Guide</i> (quotas were formerly referred to as limits).</p>"
    },
    "OriginCustomHeader": {
      "type": "structure",
      "required": [
        "HeaderName",
        "HeaderValue"
      ],
      "members": {
        "HeaderName": {
          "shape": "string",
          "documentation": "<p>The name of a header that you want CloudFront to send to your origin. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html\">Adding Custom Headers to Origin Requests</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>"
        },
        "HeaderValue": {
          "shape": "string",
          "documentation": "<p>The value for the header that you specified in the <code>HeaderName</code> field.</p>"
        }
      },
      "documentation": "<p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution. </p>"
    },
    "OriginCustomHeadersList": {
      "type": "list",
      "member": {
        "shape": "OriginCustomHeader",
        "locationName": "OriginCustomHeader"
      }
    },
    "OriginGroup": {
      "type": "structure",
      "required": [
        "Id",
        "FailoverCriteria",
        "Members"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The origin group's ID.</p>"
        },
        "FailoverCriteria": {
          "shape": "OriginGroupFailoverCriteria",
          "documentation": "<p>A complex type that contains information about the failover criteria for an origin group.</p>"
        },
        "Members": {
          "shape": "OriginGroupMembers",
          "documentation": "<p>A complex type that contains information about the origins in an origin group.</p>"
        }
      },
      "documentation": "<p>An origin group includes two origins (a primary origin and a second origin to failover to) and a failover criteria that you specify. You create an origin group to support origin failover in CloudFront. When you create or update a distribution, you can specifiy the origin group instead of a single origin, and CloudFront will failover from the primary origin to the second origin under the failover conditions that you've chosen.</p>"
    },
    "OriginGroupFailoverCriteria": {
      "type": "structure",
      "required": [
        "StatusCodes"
      ],
      "members": {
        "StatusCodes": {
          "shape": "StatusCodes",
          "documentation": "<p>The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin.</p>"
        }
      },
      "documentation": "<p>A complex data type that includes information about the failover criteria for an origin group, including the status codes for which CloudFront will failover from the primary origin to the second origin.</p>"
    },
    "OriginGroupList": {
      "type": "list",
      "member": {
        "shape": "OriginGroup",
        "locationName": "OriginGroup"
      },
      "documentation": "<p>List of origin groups for a distribution.</p>"
    },
    "OriginGroupMember": {
      "type": "structure",
      "required": [
        "OriginId"
      ],
      "members": {
        "OriginId": {
          "shape": "string",
          "documentation": "<p>The ID for an origin in an origin group.</p>"
        }
      },
      "documentation": "<p>An origin in an origin group.</p>"
    },
    "OriginGroupMemberList": {
      "type": "list",
      "member": {
        "shape": "OriginGroupMember",
        "locationName": "OriginGroupMember"
      },
      "documentation": "<p>List of origins in an origin group.</p>",
      "max": 2,
      "min": 2
    },
    "OriginGroupMembers": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of origins in an origin group.</p>"
        },
        "Items": {
          "shape": "OriginGroupMemberList",
          "documentation": "<p>Items (origins) in an origin group.</p>"
        }
      },
      "documentation": "<p>A complex data type for the origins included in an origin group.</p>"
    },
    "OriginGroups": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of origin groups.</p>"
        },
        "Items": {
          "shape": "OriginGroupList",
          "documentation": "<p>The items (origin groups) in a distribution.</p>"
        }
      },
      "documentation": "<p>A complex data type for the origin groups specified for a distribution.</p>"
    },
    "OriginList": {
      "type": "list",
      "member": {
        "shape": "Origin",
        "locationName": "Origin"
      },
      "min": 1
    },
    "OriginProtocolPolicy": {
      "type": "string",
      "enum": [
        "http-only",
        "match-viewer",
        "https-only"
      ]
    },
    "OriginRequestPolicy": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime",
        "OriginRequestPolicyConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the origin request policy.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time when the origin request policy was last modified.</p>"
        },
        "OriginRequestPolicyConfig": {
          "shape": "OriginRequestPolicyConfig",
          "documentation": "<p>The origin request policy configuration.</p>"
        }
      },
      "documentation": "<p>An origin request policy.</p> <p>When it’s attached to a cache behavior, the origin request policy determines the values that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to the origin includes the following:</p> <ul> <li> <p>The request body and the URL path (without the domain name) from the viewer request.</p> </li> <li> <p>The headers that CloudFront automatically includes in every origin request, including <code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p> </li> <li> <p>All HTTP headers, cookies, and URL query strings that are specified in the cache policy or the origin request policy. These can include items from the viewer request and, in the case of headers, additional ones that are added by CloudFront.</p> </li> </ul> <p>CloudFront sends a request when it can’t find an object in its cache that matches the request. If you want to send values to the origin and also include them in the cache key, use <code>CachePolicy</code>.</p>"
    },
    "OriginRequestPolicyConfig": {
      "type": "structure",
      "required": [
        "Name",
        "HeadersConfig",
        "CookiesConfig",
        "QueryStringsConfig"
      ],
      "members": {
        "Comment": {
          "shape": "string",
          "documentation": "<p>A comment to describe the origin request policy.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>A unique name to identify the origin request policy.</p>"
        },
        "HeadersConfig": {
          "shape": "OriginRequestPolicyHeadersConfig",
          "documentation": "<p>The HTTP headers to include in origin requests. These can include headers from viewer requests and additional headers added by CloudFront.</p>"
        },
        "CookiesConfig": {
          "shape": "OriginRequestPolicyCookiesConfig",
          "documentation": "<p>The cookies from viewer requests to include in origin requests.</p>"
        },
        "QueryStringsConfig": {
          "shape": "OriginRequestPolicyQueryStringsConfig",
          "documentation": "<p>The URL query strings from viewer requests to include in origin requests.</p>"
        }
      },
      "documentation": "<p>An origin request policy configuration.</p> <p>This configuration determines the values that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to the origin includes the following:</p> <ul> <li> <p>The request body and the URL path (without the domain name) from the viewer request.</p> </li> <li> <p>The headers that CloudFront automatically includes in every origin request, including <code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p> </li> <li> <p>All HTTP headers, cookies, and URL query strings that are specified in the cache policy or the origin request policy. These can include items from the viewer request and, in the case of headers, additional ones that are added by CloudFront.</p> </li> </ul> <p>CloudFront sends a request when it can’t find an object in its cache that matches the request. If you want to send values to the origin and also include them in the cache key, use <code>CachePolicy</code>.</p>"
    },
    "OriginRequestPolicyCookieBehavior": {
      "type": "string",
      "enum": [
        "none",
        "whitelist",
        "all"
      ]
    },
    "OriginRequestPolicyCookiesConfig": {
      "type": "structure",
      "required": [
        "CookieBehavior"
      ],
      "members": {
        "CookieBehavior": {
          "shape": "OriginRequestPolicyCookieBehavior",
          "documentation": "<p>Determines whether cookies in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – Cookies in viewer requests are not included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any cookies that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – The cookies in viewer requests that are listed in the <code>CookieNames</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>all</code> – All cookies in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> </ul>"
        },
        "Cookies": {
          "shape": "CookieNames"
        }
      },
      "documentation": "<p>An object that determines whether any cookies in viewer requests (and if so, which cookies) are included in requests that CloudFront sends to the origin.</p>"
    },
    "OriginRequestPolicyHeaderBehavior": {
      "type": "string",
      "enum": [
        "none",
        "whitelist",
        "allViewer",
        "allViewerAndWhitelistCloudFront"
      ]
    },
    "OriginRequestPolicyHeadersConfig": {
      "type": "structure",
      "required": [
        "HeaderBehavior"
      ],
      "members": {
        "HeaderBehavior": {
          "shape": "OriginRequestPolicyHeaderBehavior",
          "documentation": "<p>Determines whether any HTTP headers are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – HTTP headers are not included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any headers that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – The HTTP headers that are listed in the <code>Headers</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allViewer</code> – All HTTP headers in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allViewerAndWhitelistCloudFront</code> – All HTTP headers in viewer requests and the additional CloudFront headers that are listed in the <code>Headers</code> type are included in requests that CloudFront sends to the origin. The additional headers are added by CloudFront.</p> </li> </ul>"
        },
        "Headers": {
          "shape": "Headers"
        }
      },
      "documentation": "<p>An object that determines whether any HTTP headers (and if so, which headers) are included in requests that CloudFront sends to the origin.</p>"
    },
    "OriginRequestPolicyList": {
      "type": "structure",
      "required": [
        "MaxItems",
        "Quantity"
      ],
      "members": {
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing origin request policies where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of origin request policies requested.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The total number of origin request policies returned in the response.</p>"
        },
        "Items": {
          "shape": "OriginRequestPolicySummaryList",
          "documentation": "<p>Contains the origin request policies in the list.</p>"
        }
      },
      "documentation": "<p>A list of origin request policies.</p>"
    },
    "OriginRequestPolicyQueryStringBehavior": {
      "type": "string",
      "enum": [
        "none",
        "whitelist",
        "all"
      ]
    },
    "OriginRequestPolicyQueryStringsConfig": {
      "type": "structure",
      "required": [
        "QueryStringBehavior"
      ],
      "members": {
        "QueryStringBehavior": {
          "shape": "OriginRequestPolicyQueryStringBehavior",
          "documentation": "<p>Determines whether any URL query strings in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – Query strings in viewer requests are not included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any query strings that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – The query strings in viewer requests that are listed in the <code>QueryStringNames</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>all</code> – All query strings in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> </ul>"
        },
        "QueryStrings": {
          "shape": "QueryStringNames",
          "documentation": "<p>Contains a list of the query strings in viewer requests that are included in requests that CloudFront sends to the origin.</p>"
        }
      },
      "documentation": "<p>An object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in requests that CloudFront sends to the origin.</p>"
    },
    "OriginRequestPolicySummary": {
      "type": "structure",
      "required": [
        "Type",
        "OriginRequestPolicy"
      ],
      "members": {
        "Type": {
          "shape": "OriginRequestPolicyType",
          "documentation": "<p>The type of origin request policy, either <code>managed</code> (created by AWS) or <code>custom</code> (created in this AWS account).</p>"
        },
        "OriginRequestPolicy": {
          "shape": "OriginRequestPolicy",
          "documentation": "<p>The origin request policy.</p>"
        }
      },
      "documentation": "<p>Contains an origin request policy.</p>"
    },
    "OriginRequestPolicySummaryList": {
      "type": "list",
      "member": {
        "shape": "OriginRequestPolicySummary",
        "locationName": "OriginRequestPolicySummary"
      }
    },
    "OriginRequestPolicyType": {
      "type": "string",
      "enum": [
        "managed",
        "custom"
      ]
    },
    "OriginSslProtocols": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an HTTPS connection with this origin. </p>"
        },
        "Items": {
          "shape": "SslProtocolsList",
          "documentation": "<p>A list that contains allowed SSL/TLS protocols for this distribution.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. </p>"
    },
    "Origins": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of origins or origin groups for this distribution.</p>"
        },
        "Items": {
          "shape": "OriginList",
          "documentation": "<p>A complex type that contains origins or origin groups for this distribution.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about origins and origin groups for this distribution. </p>"
    },
    "ParametersInCacheKeyAndForwardedToOrigin": {
      "type": "structure",
      "required": [
        "EnableAcceptEncodingGzip",
        "HeadersConfig",
        "CookiesConfig",
        "QueryStringsConfig"
      ],
      "members": {
        "EnableAcceptEncodingGzip": {
          "shape": "boolean",
          "documentation": "<p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.</p> <p>This field is related to the <code>EnableAcceptEncodingBrotli</code> field. If one or both of these fields is <code>true</code> <i>and</i> the viewer request includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p> <ul> <li> <p>Normalizes the value of the viewer’s <code>Accept-Encoding</code> header</p> </li> <li> <p>Includes the normalized header in the cache key</p> </li> <li> <p>Includes the normalized header in the request to the origin</p> </li> </ul> <p>If one or both of these fields are <code>true</code>, you should not whitelist the <code>Accept-Encoding</code> header in the cache policy or in an origin request policy attached to the same cache behavior.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects\">Cache compressed objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If both of these fields are <code>false</code>, then CloudFront treats the <code>Accept-Encoding</code> header the same as any other HTTP header in the viewer request. By default, it’s not included in the cache key and it’s not included in origin requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers whitelist like any other HTTP header.</p>"
        },
        "EnableAcceptEncodingBrotli": {
          "shape": "boolean",
          "documentation": "<p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.</p> <p>This field is related to the <code>EnableAcceptEncodingGzip</code> field. If one or both of these fields is <code>true</code> <i>and</i> the viewer request includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p> <ul> <li> <p>Normalizes the value of the viewer’s <code>Accept-Encoding</code> header</p> </li> <li> <p>Includes the normalized header in the cache key</p> </li> <li> <p>Includes the normalized header in the request to the origin</p> </li> </ul> <p>If one or both of these fields are <code>true</code>, you should not whitelist the <code>Accept-Encoding</code> header in the cache policy or in an origin request policy attached to the same cache behavior.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects\">Cache compressed objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If both of these fields are <code>false</code>, then CloudFront treats the <code>Accept-Encoding</code> header the same as any other HTTP header in the viewer request. By default, it’s not included in the cache key and it’s not included in origin requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers whitelist like any other HTTP header.</p>"
        },
        "HeadersConfig": {
          "shape": "CachePolicyHeadersConfig",
          "documentation": "<p>An object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p>"
        },
        "CookiesConfig": {
          "shape": "CachePolicyCookiesConfig",
          "documentation": "<p>An object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p>"
        },
        "QueryStringsConfig": {
          "shape": "CachePolicyQueryStringsConfig",
          "documentation": "<p>An object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and automatically included in requests that CloudFront sends to the origin.</p>"
        }
      },
      "documentation": "<p>This object determines the values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.</p> <p>The headers, cookies, and query strings that are included in the cache key are automatically included in requests that CloudFront sends to the origin. CloudFront sends a request when it can’t find an object in its cache that matches the request’s cache key. If you want to send values to the origin but <i>not</i> include them in the cache key, use <code>OriginRequestPolicy</code>.</p>"
    },
    "PathList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Path"
      }
    },
    "Paths": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of invalidation paths specified for the objects that you want to invalidate.</p>"
        },
        "Items": {
          "shape": "PathList",
          "documentation": "<p>A complex type that contains a list of the paths that you want to invalidate.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
    },
    "PriceClass": {
      "type": "string",
      "enum": [
        "PriceClass_100",
        "PriceClass_200",
        "PriceClass_All"
      ]
    },
    "PublicKey": {
      "type": "structure",
      "required": [
        "Id",
        "CreatedTime",
        "PublicKeyConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>A unique ID assigned to a public key you've added to CloudFront.</p>"
        },
        "CreatedTime": {
          "shape": "timestamp",
          "documentation": "<p>A time you added a public key to CloudFront.</p>"
        },
        "PublicKeyConfig": {
          "shape": "PublicKeyConfig",
          "documentation": "<p>A complex data type for a public key you add to CloudFront to use with features like field-level encryption.</p>"
        }
      },
      "documentation": "<p>A complex data type of public keys you add to CloudFront to use with features like field-level encryption.</p>"
    },
    "PublicKeyConfig": {
      "type": "structure",
      "required": [
        "CallerReference",
        "Name",
        "EncodedKey"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique number that ensures that the request can't be replayed.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>The name for a public key you add to CloudFront to use with features like field-level encryption.</p>"
        },
        "EncodedKey": {
          "shape": "string",
          "documentation": "<p>The encoded public key that you want to add to CloudFront to use with features like field-level encryption.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment about a public key.</p>"
        }
      },
      "documentation": "<p>Information about a public key you add to CloudFront to use with features like field-level encryption.</p>"
    },
    "PublicKeyList": {
      "type": "structure",
      "required": [
        "MaxItems",
        "Quantity"
      ],
      "members": {
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your public keys where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of public keys you want in the response body. </p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of public keys you added to CloudFront to use with features like field-level encryption.</p>"
        },
        "Items": {
          "shape": "PublicKeySummaryList",
          "documentation": "<p>An array of information about a public key you add to CloudFront to use with features like field-level encryption.</p>"
        }
      },
      "documentation": "<p>A list of public keys you've added to CloudFront to use with features like field-level encryption.</p>"
    },
    "PublicKeySummary": {
      "type": "structure",
      "required": [
        "Id",
        "Name",
        "CreatedTime",
        "EncodedKey"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p> ID for public key information summary. </p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p> Name for public key information summary. </p>"
        },
        "CreatedTime": {
          "shape": "timestamp",
          "documentation": "<p> Creation time for public key information summary. </p>"
        },
        "EncodedKey": {
          "shape": "string",
          "documentation": "<p> Encoded key for public key information summary. </p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p> Comment for public key information summary. </p>"
        }
      },
      "documentation": "<p>A complex data type for public key information. </p>"
    },
    "PublicKeySummaryList": {
      "type": "list",
      "member": {
        "shape": "PublicKeySummary",
        "locationName": "PublicKeySummary"
      }
    },
    "QueryArgProfile": {
      "type": "structure",
      "required": [
        "QueryArg",
        "ProfileId"
      ],
      "members": {
        "QueryArg": {
          "shape": "string",
          "documentation": "<p>Query argument for field-level encryption query argument-profile mapping.</p>"
        },
        "ProfileId": {
          "shape": "string",
          "documentation": "<p>ID of profile to use for field-level encryption query argument-profile mapping</p>"
        }
      },
      "documentation": "<p>Query argument-profile mapping for field-level encryption.</p>"
    },
    "QueryArgProfileConfig": {
      "type": "structure",
      "required": [
        "ForwardWhenQueryArgProfileIsUnknown"
      ],
      "members": {
        "ForwardWhenQueryArgProfileIsUnknown": {
          "shape": "boolean",
          "documentation": "<p>Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.</p>"
        },
        "QueryArgProfiles": {
          "shape": "QueryArgProfiles",
          "documentation": "<p>Profiles specified for query argument-profile mapping for field-level encryption.</p>"
        }
      },
      "documentation": "<p>Configuration for query argument-profile mapping for field-level encryption.</p>"
    },
    "QueryArgProfileList": {
      "type": "list",
      "member": {
        "shape": "QueryArgProfile",
        "locationName": "QueryArgProfile"
      }
    },
    "QueryArgProfiles": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>Number of profiles for query argument-profile mapping for field-level encryption.</p>"
        },
        "Items": {
          "shape": "QueryArgProfileList",
          "documentation": "<p>Number of items for query argument-profile mapping for field-level encryption.</p>"
        }
      },
      "documentation": "<p>Query argument-profile mapping for field-level encryption.</p>"
    },
    "QueryStringCacheKeys": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of <code>whitelisted</code> query string parameters for a cache behavior.</p>"
        },
        "Items": {
          "shape": "QueryStringCacheKeysList",
          "documentation": "<p>A list that contains the query string parameters that you want CloudFront to use as a basis for caching for a cache behavior. If <code>Quantity</code> is 0, you can omit <code>Items</code>. </p>"
        }
      },
      "documentation": "<p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include query strings in the cache key, use <code>QueryStringsConfig</code> in a cache policy. See <code>CachePolicy</code>.</p> <p>If you want to send query strings to the origin but not include them in the cache key, use <code>QueryStringsConfig</code> in an origin request policy. See <code>OriginRequestPolicy</code>.</p> <p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for a cache behavior. </p>"
    },
    "QueryStringCacheKeysList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Name"
      }
    },
    "QueryStringNames": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of query string names in the <code>Items</code> list.</p>"
        },
        "Items": {
          "shape": "QueryStringNamesList",
          "documentation": "<p>A list of query string names.</p>"
        }
      },
      "documentation": "<p>Contains a list of query string names.</p>"
    },
    "QueryStringNamesList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Name"
      }
    },
    "RealtimeLogConfig": {
      "type": "structure",
      "required": [
        "ARN",
        "Name",
        "SamplingRate",
        "EndPoints",
        "Fields"
      ],
      "members": {
        "ARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) of this real-time log configuration.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>The unique name of this real-time log configuration.</p>"
        },
        "SamplingRate": {
          "shape": "long",
          "documentation": "<p>The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. The sampling rate is an integer between 1 and 100, inclusive.</p>"
        },
        "EndPoints": {
          "shape": "EndPointList",
          "documentation": "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data for this real-time log configuration.</p>"
        },
        "Fields": {
          "shape": "FieldList",
          "documentation": "<p>A list of fields that are included in each real-time log record. In an API response, the fields are provided in the same order in which they are sent to the Amazon Kinesis data stream.</p> <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A real-time log configuration.</p>"
    },
    "RealtimeLogConfigList": {
      "type": "list",
      "member": {
        "shape": "RealtimeLogConfig"
      }
    },
    "RealtimeLogConfigs": {
      "type": "structure",
      "required": [
        "MaxItems",
        "IsTruncated",
        "Marker"
      ],
      "members": {
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of real-time log configurations requested.</p>"
        },
        "Items": {
          "shape": "RealtimeLogConfigList",
          "documentation": "<p>Contains the list of real-time log configurations.</p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether there are more real-time log configurations than are contained in this list.</p>"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>This parameter indicates where this list of real-time log configurations begins. This list includes real-time log configurations that occur after the marker.</p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing real-time log configurations where you left off. </p>"
        }
      },
      "documentation": "<p>A list of real-time log configurations.</p>"
    },
    "RealtimeMetricsSubscriptionConfig": {
      "type": "structure",
      "required": [
        "RealtimeMetricsSubscriptionStatus"
      ],
      "members": {
        "RealtimeMetricsSubscriptionStatus": {
          "shape": "RealtimeMetricsSubscriptionStatus",
          "documentation": "<p>A flag that indicates whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>"
        }
      },
      "documentation": "<p>A subscription configuration for additional CloudWatch metrics.</p>"
    },
    "RealtimeMetricsSubscriptionStatus": {
      "type": "string",
      "enum": [
        "Enabled",
        "Disabled"
      ]
    },
    "ResourceARN": {
      "type": "string",
      "pattern": "arn:aws(-cn)?:cloudfront::[0-9]+:.*"
    },
    "Restrictions": {
      "type": "structure",
      "required": [
        "GeoRestriction"
      ],
      "members": {
        "GeoRestriction": {
          "shape": "GeoRestriction",
          "documentation": "<p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases.</p>"
        }
      },
      "documentation": "<p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>"
    },
    "S3Origin": {
      "type": "structure",
      "required": [
        "DomainName",
        "OriginAccessIdentity"
      ],
      "members": {
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The DNS name of the Amazon S3 origin. </p>"
        },
        "OriginAccessIdentity": {
          "shape": "string",
          "documentation": "<p>The CloudFront origin access identity to associate with the distribution. Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.</p> <p>If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html\">Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>"
    },
    "S3OriginConfig": {
      "type": "structure",
      "required": [
        "OriginAccessIdentity"
      ],
      "members": {
        "OriginAccessIdentity": {
          "shape": "string",
          "documentation": "<p>The CloudFront origin access identity to associate with the origin. Use an origin access identity to configure the origin so that viewers can <i>only</i> access objects in an Amazon S3 bucket through CloudFront. The format of the value is:</p> <p>origin-access-identity/cloudfront/<i>ID-of-origin-access-identity</i> </p> <p>where <code> <i>ID-of-origin-access-identity</i> </code> is the value that CloudFront returned in the <code>ID</code> element when you created the origin access identity.</p> <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information about the origin access identity, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin or an S3 bucket that is configured as a website endpoint, use the <code>CustomOriginConfig</code> element instead.</p>"
    },
    "SSLSupportMethod": {
      "type": "string",
      "enum": [
        "sni-only",
        "vip",
        "static-ip"
      ]
    },
    "Signer": {
      "type": "structure",
      "members": {
        "AwsAccountNumber": {
          "shape": "string",
          "documentation": "<p>An AWS account that is included in the <code>TrustedSigners</code> complex type for this distribution. Valid values include:</p> <ul> <li> <p> <code>self</code>, which is the AWS account used to create the distribution.</p> </li> <li> <p>An AWS account number.</p> </li> </ul>"
        },
        "KeyPairIds": {
          "shape": "KeyPairIds",
          "documentation": "<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that lists the AWS accounts that were included in the <code>TrustedSigners</code> complex type, as well as their active CloudFront key pair IDs, if any. </p>"
    },
    "SignerList": {
      "type": "list",
      "member": {
        "shape": "Signer",
        "locationName": "Signer"
      }
    },
    "SslProtocol": {
      "type": "string",
      "enum": [
        "SSLv3",
        "TLSv1",
        "TLSv1.1",
        "TLSv1.2"
      ]
    },
    "SslProtocolsList": {
      "type": "list",
      "member": {
        "shape": "SslProtocol",
        "locationName": "SslProtocol"
      }
    },
    "StatusCodeList": {
      "type": "list",
      "member": {
        "shape": "integer",
        "locationName": "StatusCode"
      },
      "documentation": "<p>List of status codes for origin failover.</p>",
      "min": 1
    },
    "StatusCodes": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of status codes.</p>"
        },
        "Items": {
          "shape": "StatusCodeList",
          "documentation": "<p>The items (status codes) for an origin group.</p>"
        }
      },
      "documentation": "<p>A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.</p>"
    },
    "StreamingDistribution": {
      "type": "structure",
      "required": [
        "Id",
        "ARN",
        "Status",
        "DomainName",
        "ActiveTrustedSigners",
        "StreamingDistributionConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the RTMP distribution. For example: <code>EGTXBD79EXAMPLE</code>.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>The current status of the RTMP distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time that the distribution was last modified. </p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name that corresponds to the streaming distribution, for example, <code>s5c39gqb8ow64r.cloudfront.net</code>. </p>"
        },
        "ActiveTrustedSigners": {
          "shape": "ActiveTrustedSigners",
          "documentation": "<p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>The current configuration information for the RTMP distribution.</p>"
        }
      },
      "documentation": "<p>A streaming distribution tells CloudFront where you want RTMP content to be delivered from, and the details about how to track and manage content delivery.</p>"
    },
    "StreamingDistributionConfig": {
      "type": "structure",
      "required": [
        "CallerReference",
        "S3Origin",
        "Comment",
        "TrustedSigners",
        "Enabled"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>StreamingDistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value that you already sent in a previous request to create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>"
        },
        "S3Origin": {
          "shape": "S3Origin",
          "documentation": "<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution. </p>"
        },
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution. </p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>Any comments you want to include about the streaming distribution. </p>"
        },
        "Logging": {
          "shape": "StreamingLoggingConfig",
          "documentation": "<p>A complex type that controls whether access logs are written for the streaming distribution. </p>"
        },
        "TrustedSigners": {
          "shape": "TrustedSigners",
          "documentation": "<p>A complex type that specifies any AWS accounts that you want to permit to create signed URLs for private content. If you want the distribution to use signed URLs, include this element; if you want the distribution to use public URLs, remove this element. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "PriceClass": {
          "shape": "PriceClass",
          "documentation": "<p>A complex type that contains information about price class for this streaming distribution. </p>"
        },
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Whether the streaming distribution is enabled to accept user requests for content.</p>"
        }
      },
      "documentation": "<p>The RTMP distribution's configuration information.</p>"
    },
    "StreamingDistributionConfigWithTags": {
      "type": "structure",
      "required": [
        "StreamingDistributionConfig",
        "Tags"
      ],
      "members": {
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>A streaming distribution Configuration.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation": "<p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>"
    },
    "StreamingDistributionList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value you provided for the <code>Marker</code> request parameter. </p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your RTMP distributions where they left off. </p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The value you provided for the <code>MaxItems</code> request parameter. </p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list. </p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of streaming distributions that were created by the current AWS account. </p>"
        },
        "Items": {
          "shape": "StreamingDistributionSummaryList",
          "documentation": "<p>A complex type that contains one <code>StreamingDistributionSummary</code> element for each distribution that was created by the current AWS account.</p>"
        }
      },
      "documentation": "<p>A streaming distribution list. </p>"
    },
    "StreamingDistributionSummary": {
      "type": "structure",
      "required": [
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "DomainName",
        "S3Origin",
        "Aliases",
        "TrustedSigners",
        "Comment",
        "PriceClass",
        "Enabled"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the distribution, for example, <code>EDFDVBD632BHDS5</code>.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p> The ARN (Amazon Resource Name) for the streaming distribution. For example: <code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p> Indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated throughout the Amazon CloudFront system.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time the distribution was last modified.</p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>"
        },
        "S3Origin": {
          "shape": "S3Origin",
          "documentation": "<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>"
        },
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>"
        },
        "TrustedSigners": {
          "shape": "TrustedSigners",
          "documentation": "<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>. To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>The comment originally specified when this distribution was created.</p>"
        },
        "PriceClass": {
          "shape": "PriceClass",
          "documentation": "<p>A complex type that contains information about price class for this streaming distribution. </p>"
        },
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Whether the distribution is enabled to accept end user requests for content.</p>"
        }
      },
      "documentation": "<p> A summary of the information for a CloudFront streaming distribution.</p>"
    },
    "StreamingDistributionSummaryList": {
      "type": "list",
      "member": {
        "shape": "StreamingDistributionSummary",
        "locationName": "StreamingDistributionSummary"
      }
    },
    "StreamingLoggingConfig": {
      "type": "structure",
      "required": [
        "Enabled",
        "Bucket",
        "Prefix"
      ],
      "members": {
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a streaming distribution or if you want to disable logging for an existing streaming distribution, specify <code>false</code> for <code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted. </p>"
        },
        "Bucket": {
          "shape": "string",
          "documentation": "<p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>"
        },
        "Prefix": {
          "shape": "string",
          "documentation": "<p>An optional string that you want CloudFront to prefix to the access log filenames for this streaming distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>"
        }
      },
      "documentation": "<p>A complex type that controls whether access logs are written for this streaming distribution.</p>"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p> A string that contains an optional <code>Tag</code> value.</p> <p>The string length should be between 0 and 256 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>"
        }
      },
      "documentation": "<p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>"
    },
    "TagKey": {
      "type": "string",
      "documentation": "<p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey",
        "locationName": "Key"
      }
    },
    "TagKeys": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "TagKeyList",
          "documentation": "<p> A complex type that contains <code>Tag</code> key elements.</p>"
        }
      },
      "documentation": "<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag",
        "locationName": "Tag"
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "Resource",
        "Tags"
      ],
      "members": {
        "Resource": {
          "shape": "ResourceARN",
          "documentation": "<p> An ARN of a CloudFront resource.</p>",
          "location": "querystring",
          "locationName": "Resource"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p> A complex type that contains zero or more <code>Tag</code> elements.</p>",
          "locationName": "Tags",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "documentation": "<p> The request to add tags to a CloudFront resource.</p>",
      "payload": "Tags"
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "TagList",
          "documentation": "<p> A complex type that contains <code>Tag</code> elements.</p>"
        }
      },
      "documentation": "<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
    },
    "TrustedSigners": {
      "type": "structure",
      "required": [
        "Enabled",
        "Quantity"
      ],
      "members": {
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Specifies whether you want to require viewers to use signed URLs to access the files specified by <code>PathPattern</code> and <code>TargetOriginId</code>.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of trusted signers for this cache behavior.</p>"
        },
        "Items": {
          "shape": "AwsAccountNumberList",
          "documentation": "<p> <b>Optional</b>: A complex type that contains trusted signers for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i> Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information about updating the distribution configuration, see <a href=\"https://docs.aws.amazon.com/cloudfront/latest/APIReference/DistributionConfig.html\">DistributionConfig</a> in the <i>Amazon CloudFront API Reference</i>.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "Resource",
        "TagKeys"
      ],
      "members": {
        "Resource": {
          "shape": "ResourceARN",
          "documentation": "<p> An ARN of a CloudFront resource.</p>",
          "location": "querystring",
          "locationName": "Resource"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p> A complex type that contains zero or more <code>Tag</code> key elements.</p>",
          "locationName": "TagKeys",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        }
      },
      "documentation": "<p> The request to remove tags from a CloudFront resource.</p>",
      "payload": "TagKeys"
    },
    "UpdateCachePolicyRequest": {
      "type": "structure",
      "required": [
        "CachePolicyConfig",
        "Id"
      ],
      "members": {
        "CachePolicyConfig": {
          "shape": "CachePolicyConfig",
          "documentation": "<p>A cache policy configuration.</p>",
          "locationName": "CachePolicyConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the cache policy that you are updating. The identifier is returned in a cache behavior’s <code>CachePolicyId</code> field in the response to <code>GetDistributionConfig</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The version of the cache policy that you are updating. The version is returned in the cache policy’s <code>ETag</code> field in the response to <code>GetCachePolicyConfig</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "payload": "CachePolicyConfig"
    },
    "UpdateCachePolicyResult": {
      "type": "structure",
      "members": {
        "CachePolicy": {
          "shape": "CachePolicy",
          "documentation": "<p>A cache policy.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the cache policy.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "CachePolicy"
    },
    "UpdateCloudFrontOriginAccessIdentityRequest": {
      "type": "structure",
      "required": [
        "CloudFrontOriginAccessIdentityConfig",
        "Id"
      ],
      "members": {
        "CloudFrontOriginAccessIdentityConfig": {
          "shape": "CloudFrontOriginAccessIdentityConfig",
          "documentation": "<p>The identity's configuration information.</p>",
          "locationName": "CloudFrontOriginAccessIdentityConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The identity's id.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>The request to update an origin access identity.</p>",
      "payload": "CloudFrontOriginAccessIdentityConfig"
    },
    "UpdateCloudFrontOriginAccessIdentityResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentity": {
          "shape": "CloudFrontOriginAccessIdentity",
          "documentation": "<p>The origin access identity's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "CloudFrontOriginAccessIdentity"
    },
    "UpdateDistributionRequest": {
      "type": "structure",
      "required": [
        "DistributionConfig",
        "Id"
      ],
      "members": {
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>The distribution's configuration information.</p>",
          "locationName": "DistributionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution's id.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>The request to update a distribution.</p>",
      "payload": "DistributionConfig"
    },
    "UpdateDistributionResult": {
      "type": "structure",
      "members": {
        "Distribution": {
          "shape": "Distribution",
          "documentation": "<p>The distribution's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Distribution"
    },
    "UpdateFieldLevelEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "FieldLevelEncryptionConfig",
        "Id"
      ],
      "members": {
        "FieldLevelEncryptionConfig": {
          "shape": "FieldLevelEncryptionConfig",
          "documentation": "<p>Request to update a field-level encryption configuration. </p>",
          "locationName": "FieldLevelEncryptionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID of the configuration you want to update.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "payload": "FieldLevelEncryptionConfig"
    },
    "UpdateFieldLevelEncryptionConfigResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryption": {
          "shape": "FieldLevelEncryption",
          "documentation": "<p>Return the results of updating the configuration.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when updating the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryption"
    },
    "UpdateFieldLevelEncryptionProfileRequest": {
      "type": "structure",
      "required": [
        "FieldLevelEncryptionProfileConfig",
        "Id"
      ],
      "members": {
        "FieldLevelEncryptionProfileConfig": {
          "shape": "FieldLevelEncryptionProfileConfig",
          "documentation": "<p>Request to update a field-level encryption profile. </p>",
          "locationName": "FieldLevelEncryptionProfileConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID of the field-level encryption profile request. </p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "payload": "FieldLevelEncryptionProfileConfig"
    },
    "UpdateFieldLevelEncryptionProfileResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfile": {
          "shape": "FieldLevelEncryptionProfile",
          "documentation": "<p>Return the results of updating the profile.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The result of the field-level encryption profile request. </p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionProfile"
    },
    "UpdateOriginRequestPolicyRequest": {
      "type": "structure",
      "required": [
        "OriginRequestPolicyConfig",
        "Id"
      ],
      "members": {
        "OriginRequestPolicyConfig": {
          "shape": "OriginRequestPolicyConfig",
          "documentation": "<p>An origin request policy configuration.</p>",
          "locationName": "OriginRequestPolicyConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique identifier for the origin request policy that you are updating. The identifier is returned in a cache behavior’s <code>OriginRequestPolicyId</code> field in the response to <code>GetDistributionConfig</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The version of the origin request policy that you are updating. The version is returned in the origin request policy’s <code>ETag</code> field in the response to <code>GetOriginRequestPolicyConfig</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "payload": "OriginRequestPolicyConfig"
    },
    "UpdateOriginRequestPolicyResult": {
      "type": "structure",
      "members": {
        "OriginRequestPolicy": {
          "shape": "OriginRequestPolicy",
          "documentation": "<p>An origin request policy.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the origin request policy.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "OriginRequestPolicy"
    },
    "UpdatePublicKeyRequest": {
      "type": "structure",
      "required": [
        "PublicKeyConfig",
        "Id"
      ],
      "members": {
        "PublicKeyConfig": {
          "shape": "PublicKeyConfig",
          "documentation": "<p>Request to update public key information.</p>",
          "locationName": "PublicKeyConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>ID of the public key to be updated.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the public key to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "payload": "PublicKeyConfig"
    },
    "UpdatePublicKeyResult": {
      "type": "structure",
      "members": {
        "PublicKey": {
          "shape": "PublicKey",
          "documentation": "<p>Return the results of updating the public key.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the update public key result. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "PublicKey"
    },
    "UpdateRealtimeLogConfigRequest": {
      "type": "structure",
      "members": {
        "EndPoints": {
          "shape": "EndPointList",
          "documentation": "<p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>"
        },
        "Fields": {
          "shape": "FieldList",
          "documentation": "<p>A list of fields to include in each real-time log record.</p> <p>For more information about fields, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields\">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>The name for this real-time log configuration.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The Amazon Resource Name (ARN) for this real-time log configuration.</p>"
        },
        "SamplingRate": {
          "shape": "long",
          "documentation": "<p>The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. You must provide an integer between 1 and 100, inclusive.</p>"
        }
      }
    },
    "UpdateRealtimeLogConfigResult": {
      "type": "structure",
      "members": {
        "RealtimeLogConfig": {
          "shape": "RealtimeLogConfig",
          "documentation": "<p>A real-time log configuration.</p>"
        }
      }
    },
    "UpdateStreamingDistributionRequest": {
      "type": "structure",
      "required": [
        "StreamingDistributionConfig",
        "Id"
      ],
      "members": {
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>The streaming distribution's configuration information.</p>",
          "locationName": "StreamingDistributionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2020-05-31/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The streaming distribution's id.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>The request to update a streaming distribution.</p>",
      "payload": "StreamingDistributionConfig"
    },
    "UpdateStreamingDistributionResult": {
      "type": "structure",
      "members": {
        "StreamingDistribution": {
          "shape": "StreamingDistribution",
          "documentation": "<p>The streaming distribution's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "StreamingDistribution"
    },
    "ViewerCertificate": {
      "type": "structure",
      "members": {
        "CloudFrontDefaultCertificate": {
          "shape": "boolean",
          "documentation": "<p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code>, set this field to <code>true</code>.</p> <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), set this field to <code>false</code> and specify values for the following fields:</p> <ul> <li> <p> <code>ACMCertificateArn</code> or <code>IAMCertificateId</code> (specify a value for one, not both)</p> </li> <li> <p> <code>MinimumProtocolVersion</code> </p> </li> <li> <p> <code>SSLSupportMethod</code> </p> </li> </ul>"
        },
        "IAMCertificateId": {
          "shape": "string",
          "documentation": "<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">AWS Identity and Access Management (AWS IAM)</a>, provide the ID of the IAM certificate.</p> <p>If you specify an IAM certificate ID, you must also specify values for <code>MinimumProtocolVerison</code> and <code>SSLSupportMethod</code>. </p>"
        },
        "ACMCertificateArn": {
          "shape": "string",
          "documentation": "<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html\">AWS Certificate Manager (ACM)</a>, provide the Amazon Resource Name (ARN) of the ACM certificate. CloudFront only supports ACM certificates in the US East (N. Virginia) Region (<code>us-east-1</code>).</p> <p>If you specify an ACM certificate ARN, you must also specify values for <code>MinimumProtocolVerison</code> and <code>SSLSupportMethod</code>. </p>"
        },
        "SSLSupportMethod": {
          "shape": "SSLSupportMethod",
          "documentation": "<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), specify which viewers the distribution accepts HTTPS connections from.</p> <ul> <li> <p> <code>sni-only</code> – The distribution accepts HTTPS connections from only viewers that support <a href=\"https://en.wikipedia.org/wiki/Server_Name_Indication\">server name indication (SNI)</a>. This is recommended. Most browsers and clients support SNI.</p> </li> <li> <p> <code>vip</code> – The distribution accepts HTTPS connections from all viewers including those that don’t support SNI. This is not recommended, and results in additional monthly charges from CloudFront.</p> </li> <li> <p> <code>static-ip</code> - Do not specify this value unless your distribution has been enabled for this feature by the CloudFront team. If you have a use case that requires static IP addresses for a distribution, contact CloudFront through the <a href=\"https://console.aws.amazon.com/support/home\">AWS Support Center</a>.</p> </li> </ul> <p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code>, don’t set a value for this field.</p>"
        },
        "MinimumProtocolVersion": {
          "shape": "MinimumProtocolVersion",
          "documentation": "<p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), specify the security policy that you want CloudFront to use for HTTPS connections with viewers. The security policy determines two settings:</p> <ul> <li> <p>The minimum SSL/TLS protocol that CloudFront can use to communicate with viewers.</p> </li> <li> <p>The ciphers that CloudFront can use to encrypt the content that it returns to viewers.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy\">Security Policy</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers\">Supported Protocols and Ciphers Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>On the CloudFront console, this setting is called <b>Security Policy</b>.</p> </note> <p>When you’re using SNI only (you set <code>SSLSupportMethod</code> to <code>sni-only</code>), you must specify <code>TLSv1</code> or higher. </p> <p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code> (you set <code>CloudFrontDefaultCertificate</code> to <code>true</code>), CloudFront automatically sets the security policy to <code>TLSv1</code> regardless of the value that you set here.</p>"
        },
        "Certificate": {
          "shape": "string",
          "documentation": "<p>This field is deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> <li> <p> <code>CloudFrontDefaultCertificate</code> </p> </li> </ul>",
          "deprecated": true
        },
        "CertificateSource": {
          "shape": "CertificateSource",
          "documentation": "<p>This field is deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> <li> <p> <code>CloudFrontDefaultCertificate</code> </p> </li> </ul>",
          "deprecated": true
        }
      },
      "documentation": "<p>A complex type that determines the distribution’s SSL/TLS configuration for communicating with viewers.</p> <p>If the distribution doesn’t use <code>Aliases</code> (also known as alternate domain names or CNAMEs)—that is, if the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code>—set <code>CloudFrontDefaultCertificate</code> to <code>true</code> and leave all other fields empty.</p> <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), use the fields in this type to specify the following settings:</p> <ul> <li> <p>Which viewers the distribution accepts HTTPS connections from: only viewers that support <a href=\"https://en.wikipedia.org/wiki/Server_Name_Indication\">server name indication (SNI)</a> (recommended), or all viewers including those that don’t support SNI.</p> <ul> <li> <p>To accept HTTPS connections from only viewers that support SNI, set <code>SSLSupportMethod</code> to <code>sni-only</code>. This is recommended. Most browsers and clients support SNI. </p> </li> <li> <p>To accept HTTPS connections from all viewers, including those that don’t support SNI, set <code>SSLSupportMethod</code> to <code>vip</code>. This is not recommended, and results in additional monthly charges from CloudFront. </p> </li> </ul> </li> <li> <p>The minimum SSL/TLS protocol version that the distribution can use to communicate with viewers. To specify a minimum version, choose a value for <code>MinimumProtocolVersion</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy\">Security Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </li> <li> <p>The location of the SSL/TLS certificate, <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html\">AWS Certificate Manager (ACM)</a> (recommended) or <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">AWS Identity and Access Management (AWS IAM)</a>. You specify the location by setting a value in one of the following fields (not both):</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> </ul> </li> </ul> <p>All distributions support HTTPS connections from viewers. To require viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use <code>ViewerProtocolPolicy</code> in the <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>. To specify how CloudFront should use SSL/TLS to communicate with your custom origin, use <code>CustomOriginConfig</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html\">Using HTTPS with CloudFront</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html\"> Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "ViewerProtocolPolicy": {
      "type": "string",
      "enum": [
        "allow-all",
        "https-only",
        "redirect-to-https"
      ]
    },
    "boolean": {
      "type": "boolean"
    },
    "integer": {
      "type": "integer"
    },
    "long": {
      "type": "long"
    },
    "string": {
      "type": "string"
    },
    "timestamp": {
      "type": "timestamp"
    }
  },
  "documentation": "<fullname>Amazon CloudFront</fullname> <p>This is the <i>Amazon CloudFront API Reference</i>. This guide is for developers who need detailed information about CloudFront API actions, data types, and errors. For detailed information about CloudFront features, see the <i>Amazon CloudFront Developer Guide</i>.</p>"
}
]===]))
