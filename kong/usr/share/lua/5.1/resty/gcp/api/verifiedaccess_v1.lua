return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/verifiedaccess"] = {
          description = "Verify your enterprise credentials",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://verifiedaccess.googleapis.com/",
  batchPath = "batch",
  canonicalName = "verifiedaccess",
  description = "API for Verified Access chrome extension to provide credential verification for chrome devices connecting to an enterprise network",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/chrome/verified-access",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "verifiedaccess:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://verifiedaccess.mtls.googleapis.com/",
  name = "verifiedaccess",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    ["$.xgafv"] = {
      description = "V1 error format.",
      enum = {
        "1",
        "2",
      },
      enumDescriptions = {
        "v1 error format",
        "v2 error format",
      },
      location = "query",
      type = "string",
    },
    access_token = {
      description = "OAuth access token.",
      location = "query",
      type = "string",
    },
    alt = {
      default = "json",
      description = "Data format for response.",
      enum = {
        "json",
        "media",
        "proto",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
        "Media download with context-dependent Content-Type",
        "Responses with Content-Type of application/x-protobuf",
      },
      location = "query",
      type = "string",
    },
    callback = {
      description = "JSONP",
      location = "query",
      type = "string",
    },
    fields = {
      description = "Selector specifying which fields to include in a partial response.",
      location = "query",
      type = "string",
    },
    key = {
      description = "API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.",
      location = "query",
      type = "string",
    },
    oauth_token = {
      description = "OAuth 2.0 token for the current user.",
      location = "query",
      type = "string",
    },
    prettyPrint = {
      default = "true",
      description = "Returns response with indentations and line breaks.",
      location = "query",
      type = "boolean",
    },
    quotaUser = {
      description = "Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    uploadType = {
      description = "Legacy upload protocol for media (e.g. \"media\", \"multipart\").",
      location = "query",
      type = "string",
    },
    upload_protocol = {
      description = "Upload protocol for media (e.g. \"raw\", \"multipart\").",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    challenge = {
      methods = {
        create = {
          description = "CreateChallenge API",
          flatPath = "v1/challenge",
          httpMethod = "POST",
          id = "verifiedaccess.challenge.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/challenge",
          request = {
            ["$ref"] = "Empty",
          },
          response = {
            ["$ref"] = "Challenge",
          },
          scopes = {
            "https://www.googleapis.com/auth/verifiedaccess",
          },
        },
        verify = {
          description = "VerifyChallengeResponse API",
          flatPath = "v1/challenge:verify",
          httpMethod = "POST",
          id = "verifiedaccess.challenge.verify",
          parameterOrder = {},
          parameters = {},
          path = "v1/challenge:verify",
          request = {
            ["$ref"] = "VerifyChallengeResponseRequest",
          },
          response = {
            ["$ref"] = "VerifyChallengeResponseResult",
          },
          scopes = {
            "https://www.googleapis.com/auth/verifiedaccess",
          },
        },
      },
    },
  },
  revision = "20221214",
  rootUrl = "https://verifiedaccess.googleapis.com/",
  schemas = {
    Challenge = {
      description = "Result message for VerifiedAccess.CreateChallenge.",
      id = "Challenge",
      properties = {
        alternativeChallenge = {
          ["$ref"] = "SignedData",
          description = "Challenge generated with the old signing key (this will only be present during key rotation)",
        },
        challenge = {
          ["$ref"] = "SignedData",
          description = "Generated challenge",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    SignedData = {
      description = "The wrapper message of any data and its signature.",
      id = "SignedData",
      properties = {
        data = {
          description = "The data to be signed.",
          format = "byte",
          type = "string",
        },
        signature = {
          description = "The signature of the data field.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    VerifyChallengeResponseRequest = {
      description = "signed ChallengeResponse",
      id = "VerifyChallengeResponseRequest",
      properties = {
        challengeResponse = {
          ["$ref"] = "SignedData",
          description = "The generated response to the challenge",
        },
        expectedIdentity = {
          description = "Service can optionally provide identity information about the device or user associated with the key. For an EMK, this value is the enrolled domain. For an EUK, this value is the user's email address. If present, this value will be checked against contents of the response, and verification will fail if there is no match.",
          type = "string",
        },
      },
      type = "object",
    },
    VerifyChallengeResponseResult = {
      description = "Result message for VerifiedAccess.VerifyChallengeResponse.",
      id = "VerifyChallengeResponseResult",
      properties = {
        deviceEnrollmentId = {
          description = "Device enrollment id is returned in this field (for the machine response only).",
          type = "string",
        },
        devicePermanentId = {
          description = "Device permanent id is returned in this field (for the machine response only).",
          type = "string",
        },
        signedPublicKeyAndChallenge = {
          description = "Certificate Signing Request (in the SPKAC format, base64 encoded) is returned in this field. This field will be set only if device has included CSR in its challenge response. (the option to include CSR is now available for both user and machine responses)",
          type = "string",
        },
        verificationOutput = {
          description = "For EMCert check, device permanent id is returned here. For EUCert check, signed_public_key_and_challenge [base64 encoded] is returned if present, otherwise empty string is returned. This field is deprecated, please use device_permanent_id or signed_public_key_and_challenge fields.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Chrome Verified Access API",
  version = "v1",
  version_module = true,
}
