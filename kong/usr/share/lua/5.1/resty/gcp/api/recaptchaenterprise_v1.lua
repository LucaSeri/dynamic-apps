return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://recaptchaenterprise.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Recaptcha Enterprise",
  description = "Help protect your website from fraudulent activity, spam, and abuse without creating friction.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/recaptcha-enterprise/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "recaptchaenterprise:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://recaptchaenterprise.mtls.googleapis.com/",
  name = "recaptchaenterprise",
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
    projects = {
      resources = {
        assessments = {
          methods = {
            annotate = {
              description = "Annotates a previously created Assessment to provide additional information on whether the event turned out to be authentic or fraudulent.",
              flatPath = "v1/projects/{projectsId}/assessments/{assessmentsId}:annotate",
              httpMethod = "POST",
              id = "recaptchaenterprise.projects.assessments.annotate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the Assessment, in the format \"projects/{project}/assessments/{assessment}\".",
                  location = "path",
                  pattern = "^projects/[^/]+/assessments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:annotate",
              request = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates an Assessment of the likelihood an event is legitimate.",
              flatPath = "v1/projects/{projectsId}/assessments",
              httpMethod = "POST",
              id = "recaptchaenterprise.projects.assessments.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in which the assessment will be created, in the format \"projects/{project}\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/assessments",
              request = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Assessment",
              },
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Assessment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        keys = {
          methods = {
            create = {
              description = "Creates a new reCAPTCHA Enterprise key.",
              flatPath = "v1/projects/{projectsId}/keys",
              httpMethod = "POST",
              id = "recaptchaenterprise.projects.keys.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the project in which the key will be created, in the format \"projects/{project}\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/keys",
              request = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Key",
              },
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Key",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes the specified key.",
              flatPath = "v1/projects/{projectsId}/keys/{keysId}",
              httpMethod = "DELETE",
              id = "recaptchaenterprise.projects.keys.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the key to be deleted, in the format \"projects/{project}/keys/{key}\".",
                  location = "path",
                  pattern = "^projects/[^/]+/keys/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Returns the specified key.",
              flatPath = "v1/projects/{projectsId}/keys/{keysId}",
              httpMethod = "GET",
              id = "recaptchaenterprise.projects.keys.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the requested key, in the format \"projects/{project}/keys/{key}\".",
                  location = "path",
                  pattern = "^projects/[^/]+/keys/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Key",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getMetrics = {
              description = "Get some aggregated metrics for a Key. This data can be used to build dashboards.",
              flatPath = "v1/projects/{projectsId}/keys/{keysId}/metrics",
              httpMethod = "GET",
              id = "recaptchaenterprise.projects.keys.getMetrics",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the requested metrics, in the format \"projects/{project}/keys/{key}/metrics\".",
                  location = "path",
                  pattern = "^projects/[^/]+/keys/[^/]+/metrics$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Metrics",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Returns the list of all keys that belong to a project.",
              flatPath = "v1/projects/{projectsId}/keys",
              httpMethod = "GET",
              id = "recaptchaenterprise.projects.keys.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of keys to return. Default is 10. Max limit is 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. The next_page_token value returned from a previous. ListKeysRequest, if any.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project that contains the keys that will be listed, in the format \"projects/{project}\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/keys",
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1ListKeysResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            migrate = {
              description = "Migrates an existing key from reCAPTCHA to reCAPTCHA Enterprise. Once a key is migrated, it can be used from either product. SiteVerify requests are billed as CreateAssessment calls. You must be authenticated as one of the current owners of the reCAPTCHA Site Key, and your user must have the reCAPTCHA Enterprise Admin IAM role in the destination project.",
              flatPath = "v1/projects/{projectsId}/keys/{keysId}:migrate",
              httpMethod = "POST",
              id = "recaptchaenterprise.projects.keys.migrate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the key to be migrated, in the format \"projects/{project}/keys/{key}\".",
                  location = "path",
                  pattern = "^projects/[^/]+/keys/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:migrate",
              request = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Key",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the specified key.",
              flatPath = "v1/projects/{projectsId}/keys/{keysId}",
              httpMethod = "PATCH",
              id = "recaptchaenterprise.projects.keys.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name for the Key in the format \"projects/{project}/keys/{key}\".",
                  location = "path",
                  pattern = "^projects/[^/]+/keys/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Optional. The mask to control which fields of the key get updated. If the mask is not present, all fields will be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Key",
              },
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Key",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            retrieveLegacySecretKey = {
              description = "Returns the secret key related to the specified public key. You must use the legacy secret key only in a 3rd party integration with legacy reCAPTCHA.",
              flatPath = "v1/projects/{projectsId}/keys/{keysId}:retrieveLegacySecretKey",
              httpMethod = "GET",
              id = "recaptchaenterprise.projects.keys.retrieveLegacySecretKey",
              parameterOrder = {
                "key",
              },
              parameters = {
                key = {
                  description = "Required. The public key name linked to the requested secret key in the format \"projects/{project}/keys/{key}\".",
                  location = "path",
                  pattern = "^projects/[^/]+/keys/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+key}:retrieveLegacySecretKey",
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        relatedaccountgroupmemberships = {
          methods = {
            search = {
              description = "Search group memberships related to a given account.",
              flatPath = "v1/projects/{projectsId}/relatedaccountgroupmemberships:search",
              httpMethod = "POST",
              id = "recaptchaenterprise.projects.relatedaccountgroupmemberships.search",
              parameterOrder = {
                "project",
              },
              parameters = {
                project = {
                  description = "Required. The name of the project to search related account group memberships from. Specify the project name in the following format: \"projects/{project}\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+project}/relatedaccountgroupmemberships:search",
              request = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        relatedaccountgroups = {
          methods = {
            list = {
              description = "List groups of related accounts.",
              flatPath = "v1/projects/{projectsId}/relatedaccountgroups",
              httpMethod = "GET",
              id = "recaptchaenterprise.projects.relatedaccountgroups.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of groups to return. The service might return fewer than this value. If unspecified, at most 50 groups are returned. The maximum value is 1000; values above 1000 are coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A page token, received from a previous `ListRelatedAccountGroups` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListRelatedAccountGroups` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the project to list related account groups from, in the format \"projects/{project}\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/relatedaccountgroups",
              response = {
                ["$ref"] = "GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            memberships = {
              methods = {
                list = {
                  description = "Get memberships in a group of related accounts.",
                  flatPath = "v1/projects/{projectsId}/relatedaccountgroups/{relatedaccountgroupsId}/memberships",
                  httpMethod = "GET",
                  id = "recaptchaenterprise.projects.relatedaccountgroups.memberships.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. The maximum number of accounts to return. The service might return fewer than this value. If unspecified, at most 50 accounts are returned. The maximum value is 1000; values above 1000 are coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A page token, received from a previous `ListRelatedAccountGroupMemberships` call. When paginating, all other parameters provided to `ListRelatedAccountGroupMemberships` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name for the related account group in the format `projects/{project}/relatedaccountgroups/{relatedaccountgroup}`.",
                      location = "path",
                      pattern = "^projects/[^/]+/relatedaccountgroups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/memberships",
                  response = {
                    ["$ref"] = "GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230107",
  rootUrl = "https://recaptchaenterprise.googleapis.com/",
  schemas = {
    GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment = {
      description = "Account defender risk assessment.",
      id = "GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment",
      properties = {
        labels = {
          description = "Labels for this request.",
          items = {
            enum = {
              "ACCOUNT_DEFENDER_LABEL_UNSPECIFIED",
              "PROFILE_MATCH",
              "SUSPICIOUS_LOGIN_ACTIVITY",
              "SUSPICIOUS_ACCOUNT_CREATION",
              "RELATED_ACCOUNTS_NUMBER_HIGH",
            },
            enumDescriptions = {
              "Default unspecified type.",
              "The request matches a known good profile for the user.",
              "The request is potentially a suspicious login event and must be further verified either through multi-factor authentication or another system.",
              "The request matched a profile that previously had suspicious account creation behavior. This can mean that this is a fake account.",
              "The account in the request has a high number of related accounts. It does not necessarily imply that the account is bad but can require further investigation.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo = {
      description = "Information about account verification, used for identity verification.",
      id = "GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo",
      properties = {
        endpoints = {
          description = "Endpoints that can be used for identity verification.",
          items = {
            ["$ref"] = "GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo",
          },
          type = "array",
        },
        languageCode = {
          description = "Language code preference for the verification message, set as a IETF BCP 47 language code.",
          type = "string",
        },
        latestVerificationResult = {
          description = "Output only. Result of the latest account verification challenge.",
          enum = {
            "RESULT_UNSPECIFIED",
            "SUCCESS_USER_VERIFIED",
            "ERROR_USER_NOT_VERIFIED",
            "ERROR_SITE_ONBOARDING_INCOMPLETE",
            "ERROR_RECIPIENT_NOT_ALLOWED",
            "ERROR_RECIPIENT_ABUSE_LIMIT_EXHAUSTED",
            "ERROR_CRITICAL_INTERNAL",
            "ERROR_CUSTOMER_QUOTA_EXHAUSTED",
            "ERROR_VERIFICATION_BYPASSED",
            "ERROR_VERDICT_MISMATCH",
          },
          enumDescriptions = {
            "No information about the latest account verification.",
            "The user was successfully verified. This means the account verification challenge was successfully completed.",
            "The user failed the verification challenge.",
            "The site is not properly onboarded to use the account verification feature.",
            "The recipient is not allowed for account verification. This can occur during integration but should not occur in production.",
            "The recipient has already been sent too many verification codes in a short amount of time.",
            "The verification flow could not be completed due to a critical internal error.",
            "The client has exceeded their two factor request quota for this period of time.",
            "The request cannot be processed at the time because of an incident. This bypass can be restricted to a problematic destination email domain, a customer, or could affect the entire service.",
            "The request parameters do not match with the token provided and cannot be processed.",
          },
          readOnly = true,
          type = "string",
        },
        username = {
          description = "Username of the account that is being verified. Deprecated. Customers should now provide the hashed account ID field in Event.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1AndroidKeySettings = {
      description = "Settings specific to keys that can be used by Android apps.",
      id = "GoogleCloudRecaptchaenterpriseV1AndroidKeySettings",
      properties = {
        allowAllPackageNames = {
          description = "If set to true, allowed_package_names are not enforced.",
          type = "boolean",
        },
        allowedPackageNames = {
          description = "Android package names of apps allowed to use the key. Example: 'com.companyname.appname'",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest = {
      description = "The request message to annotate an Assessment.",
      id = "GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest",
      properties = {
        annotation = {
          description = "Optional. The annotation that will be assigned to the Event. This field can be left empty to provide reasons that apply to an event without concluding whether the event is legitimate or fraudulent.",
          enum = {
            "ANNOTATION_UNSPECIFIED",
            "LEGITIMATE",
            "FRAUDULENT",
            "PASSWORD_CORRECT",
            "PASSWORD_INCORRECT",
          },
          enumDescriptions = {
            "Default unspecified type.",
            "Provides information that the event turned out to be legitimate.",
            "Provides information that the event turned out to be fraudulent.",
            "Provides information that the event was related to a login event in which the user typed the correct password. Deprecated, prefer indicating CORRECT_PASSWORD through the reasons field instead.",
            "Provides information that the event was related to a login event in which the user typed the incorrect password. Deprecated, prefer indicating INCORRECT_PASSWORD through the reasons field instead.",
          },
          type = "string",
        },
        hashedAccountId = {
          description = "Optional. Unique stable hashed user identifier to apply to the assessment. This is an alternative to setting the hashed_account_id in CreateAssessment, for example when the account identifier is not yet known in the initial request. It is recommended that the identifier is hashed using hmac-sha256 with stable secret.",
          format = "byte",
          type = "string",
        },
        reasons = {
          description = "Optional. Optional reasons for the annotation that will be assigned to the Event.",
          items = {
            enum = {
              "REASON_UNSPECIFIED",
              "CHARGEBACK",
              "CHARGEBACK_FRAUD",
              "CHARGEBACK_DISPUTE",
              "REFUND",
              "REFUND_FRAUD",
              "TRANSACTION_ACCEPTED",
              "TRANSACTION_DECLINED",
              "PAYMENT_HEURISTICS",
              "INITIATED_TWO_FACTOR",
              "PASSED_TWO_FACTOR",
              "FAILED_TWO_FACTOR",
              "CORRECT_PASSWORD",
              "INCORRECT_PASSWORD",
              "SOCIAL_SPAM",
            },
            enumDescriptions = {
              "Default unspecified reason.",
              "Indicates that the transaction had a chargeback issued with no other details. When possible, specify the type by using CHARGEBACK_FRAUD or CHARGEBACK_DISPUTE instead.",
              "Indicates that the transaction had a chargeback issued related to an alleged unauthorized transaction from the cardholder's perspective (for example, the card number was stolen).",
              "Indicates that the transaction had a chargeback issued related to the cardholder having provided their card details but allegedly not being satisfied with the purchase (for example, misrepresentation, attempted cancellation).",
              "Indicates that the completed payment transaction was refunded by the seller.",
              "Indicates that the completed payment transaction was determined to be fraudulent by the seller, and was cancelled and refunded as a result.",
              "Indicates that the payment transaction was accepted, and the user was charged.",
              "Indicates that the payment transaction was declined, for example due to invalid card details.",
              "Indicates the transaction associated with the assessment is suspected of being fraudulent based on the payment method, billing details, shipping address or other transaction information.",
              "Indicates that the user was served a 2FA challenge. An old assessment with `ENUM_VALUES.INITIATED_TWO_FACTOR` reason that has not been overwritten with `PASSED_TWO_FACTOR` is treated as an abandoned 2FA flow. This is equivalent to `FAILED_TWO_FACTOR`.",
              "Indicates that the user passed a 2FA challenge.",
              "Indicates that the user failed a 2FA challenge.",
              "Indicates the user provided the correct password.",
              "Indicates the user provided an incorrect password.",
              "Indicates that the user sent unwanted and abusive messages to other users of the platform, such as spam, scams, phishing, or social engineering.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse = {
      description = "Empty response for AnnotateAssessment.",
      id = "GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1Assessment = {
      description = "A recaptcha assessment resource.",
      id = "GoogleCloudRecaptchaenterpriseV1Assessment",
      properties = {
        accountDefenderAssessment = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment",
          description = "Assessment returned by account defender when a hashed_account_id is provided.",
        },
        accountVerification = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo",
          description = "Account verification information for identity verification. The assessment event must include a token and site key to use this feature.",
        },
        event = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Event",
          description = "The event being assessed.",
        },
        name = {
          description = "Output only. The resource name for the Assessment in the format \"projects/{project}/assessments/{assessment}\".",
          readOnly = true,
          type = "string",
        },
        privatePasswordLeakVerification = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification",
          description = "The private password leak verification field contains the parameters that are used to to check for leaks privately without sharing user credentials.",
        },
        riskAnalysis = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1RiskAnalysis",
          description = "Output only. The risk analysis result for the event being assessed.",
          readOnly = true,
        },
        tokenProperties = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1TokenProperties",
          description = "Output only. Properties of the provided event token.",
          readOnly = true,
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1ChallengeMetrics = {
      description = "Metrics related to challenges.",
      id = "GoogleCloudRecaptchaenterpriseV1ChallengeMetrics",
      properties = {
        failedCount = {
          description = "Count of submitted challenge solutions that were incorrect or otherwise deemed suspicious such that a subsequent challenge was triggered.",
          format = "int64",
          type = "string",
        },
        nocaptchaCount = {
          description = "Count of nocaptchas (successful verification without a challenge) issued.",
          format = "int64",
          type = "string",
        },
        pageloadCount = {
          description = "Count of reCAPTCHA checkboxes or badges rendered. This is mostly equivalent to a count of pageloads for pages that include reCAPTCHA.",
          format = "int64",
          type = "string",
        },
        passedCount = {
          description = "Count of nocaptchas (successful verification without a challenge) plus submitted challenge solutions that were correct and resulted in verification.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo = {
      description = "Information about a verification endpoint that can be used for 2FA.",
      id = "GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo",
      properties = {
        emailAddress = {
          description = "Email address for which to trigger a verification request.",
          type = "string",
        },
        lastVerificationTime = {
          description = "Output only. Timestamp of the last successful verification for the endpoint, if any.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        phoneNumber = {
          description = "Phone number for which to trigger a verification request. Should be given in E.164 format.",
          type = "string",
        },
        requestToken = {
          description = "Output only. Token to provide to the client to trigger endpoint verification. It must be used within 15 minutes.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1Event = {
      id = "GoogleCloudRecaptchaenterpriseV1Event",
      properties = {
        expectedAction = {
          description = "Optional. The expected action for this type of event. This should be the same action provided at token generation time on client-side platforms already integrated with recaptcha enterprise.",
          type = "string",
        },
        hashedAccountId = {
          description = "Optional. Unique stable hashed user identifier for the request. The identifier must be hashed using hmac-sha256 with stable secret.",
          format = "byte",
          type = "string",
        },
        siteKey = {
          description = "Optional. The site key that was used to invoke reCAPTCHA on your site and generate the token.",
          type = "string",
        },
        token = {
          description = "Optional. The user response token provided by the reCAPTCHA client-side integration on your site.",
          type = "string",
        },
        userAgent = {
          description = "Optional. The user agent present in the request from the user's device related to this event.",
          type = "string",
        },
        userIpAddress = {
          description = "Optional. The IP address in the request from the user's device related to this event.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1IOSKeySettings = {
      description = "Settings specific to keys that can be used by iOS apps.",
      id = "GoogleCloudRecaptchaenterpriseV1IOSKeySettings",
      properties = {
        allowAllBundleIds = {
          description = "If set to true, allowed_bundle_ids are not enforced.",
          type = "boolean",
        },
        allowedBundleIds = {
          description = "iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.productname.appname'",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1Key = {
      description = "A key used to identify and configure applications (web and/or mobile) that use reCAPTCHA Enterprise.",
      id = "GoogleCloudRecaptchaenterpriseV1Key",
      properties = {
        androidSettings = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1AndroidKeySettings",
          description = "Settings for keys that can be used by Android apps.",
        },
        createTime = {
          description = "The timestamp corresponding to the creation of this Key.",
          format = "google-datetime",
          type = "string",
        },
        displayName = {
          description = "Human-readable display name of this key. Modifiable by user.",
          type = "string",
        },
        iosSettings = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1IOSKeySettings",
          description = "Settings for keys that can be used by iOS apps.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "See Creating and managing labels.",
          type = "object",
        },
        name = {
          description = "The resource name for the Key in the format \"projects/{project}/keys/{key}\".",
          type = "string",
        },
        testingOptions = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1TestingOptions",
          description = "Options for user acceptance testing.",
        },
        wafSettings = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1WafSettings",
          description = "Settings for WAF",
        },
        webSettings = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1WebKeySettings",
          description = "Settings for keys that can be used by websites.",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1ListKeysResponse = {
      description = "Response to request to list keys in a project.",
      id = "GoogleCloudRecaptchaenterpriseV1ListKeysResponse",
      properties = {
        keys = {
          description = "Key details.",
          items = {
            ["$ref"] = "GoogleCloudRecaptchaenterpriseV1Key",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results. It is set to empty if no keys remain in results.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse = {
      description = "The response to a `ListRelatedAccountGroupMemberships` call.",
      id = "GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        relatedAccountGroupMemberships = {
          description = "The memberships listed by the query.",
          items = {
            ["$ref"] = "GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse = {
      description = "The response to a `ListRelatedAccountGroups` call.",
      id = "GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        relatedAccountGroups = {
          description = "The groups of related accounts listed by the query.",
          items = {
            ["$ref"] = "GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1Metrics = {
      description = "Metrics for a single Key.",
      id = "GoogleCloudRecaptchaenterpriseV1Metrics",
      properties = {
        challengeMetrics = {
          description = "Metrics will be continuous and in order by dates, and in the granularity of day. Only challenge-based keys (CHECKBOX, INVISIBLE), will have challenge-based data.",
          items = {
            ["$ref"] = "GoogleCloudRecaptchaenterpriseV1ChallengeMetrics",
          },
          type = "array",
        },
        name = {
          description = "Output only. The name of the metrics, in the format \"projects/{project}/keys/{key}/metrics\".",
          readOnly = true,
          type = "string",
        },
        scoreMetrics = {
          description = "Metrics will be continuous and in order by dates, and in the granularity of day. All Key types should have score-based data.",
          items = {
            ["$ref"] = "GoogleCloudRecaptchaenterpriseV1ScoreMetrics",
          },
          type = "array",
        },
        startTime = {
          description = "Inclusive start time aligned to a day (UTC).",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest = {
      description = "The migrate key request message.",
      id = "GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest",
      properties = {
        skipBillingCheck = {
          description = "Optional. If true, skips the billing check. A reCAPTCHA Enterprise key or migrated key behaves differently than a reCAPTCHA (non-Enterprise version) key when you reach a quota limit (see https://cloud.google.com/recaptcha-enterprise/quotas#quota_limit). To avoid any disruption of your usage, we check that a billing account is present. If your usage of reCAPTCHA is under the free quota, you can safely skip the billing check and proceed with the migration. See https://cloud.google.com/recaptcha-enterprise/docs/billing-information.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification = {
      description = "Private password leak verification info.",
      id = "GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification",
      properties = {
        encryptedLeakMatchPrefixes = {
          description = "Output only. List of prefixes of the encrypted potential password leaks that matched the given parameters. They must be compared with the client-side decryption prefix of `reencrypted_user_credentials_hash`",
          items = {
            format = "byte",
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        encryptedUserCredentialsHash = {
          description = "Optional. Encrypted Scrypt hash of the canonicalized username+password. It is re-encrypted by the server and returned through `reencrypted_user_credentials_hash`.",
          format = "byte",
          type = "string",
        },
        lookupHashPrefix = {
          description = "Optional. Exactly 26-bit prefix of the SHA-256 hash of the canonicalized username. It is used to look up password leaks associated with that hash prefix.",
          format = "byte",
          type = "string",
        },
        reencryptedUserCredentialsHash = {
          description = "Output only. Corresponds to the re-encryption of the `encrypted_user_credentials_hash` field. It is used to match potential password leaks within `encrypted_leak_match_prefixes`.",
          format = "byte",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup = {
      description = "A group of related accounts.",
      id = "GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup",
      properties = {
        name = {
          description = "Required. The resource name for the related account group in the format `projects/{project}/relatedaccountgroups/{related_account_group}`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership = {
      description = "A membership in a group of related accounts.",
      id = "GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership",
      properties = {
        hashedAccountId = {
          description = "The unique stable hashed user identifier of the member. The identifier corresponds to a `hashed_account_id` provided in a previous `CreateAssessment` or `AnnotateAssessment` call.",
          format = "byte",
          type = "string",
        },
        name = {
          description = "Required. The resource name for this membership in the format `projects/{project}/relatedaccountgroups/{relatedaccountgroup}/memberships/{membership}`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse = {
      description = "Secret key is used only in legacy reCAPTCHA. It must be used in a 3rd party integration with legacy reCAPTCHA.",
      id = "GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse",
      properties = {
        legacySecretKey = {
          description = "The secret key (also known as shared secret) authorizes communication between your application backend and the reCAPTCHA Enterprise server to create an assessment. The secret key needs to be kept safe for security purposes.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1RiskAnalysis = {
      description = "Risk analysis result for an event.",
      id = "GoogleCloudRecaptchaenterpriseV1RiskAnalysis",
      properties = {
        reasons = {
          description = "Reasons contributing to the risk analysis verdict.",
          items = {
            enum = {
              "CLASSIFICATION_REASON_UNSPECIFIED",
              "AUTOMATION",
              "UNEXPECTED_ENVIRONMENT",
              "TOO_MUCH_TRAFFIC",
              "UNEXPECTED_USAGE_PATTERNS",
              "LOW_CONFIDENCE_SCORE",
            },
            enumDescriptions = {
              "Default unspecified type.",
              "Interactions matched the behavior of an automated agent.",
              "The event originated from an illegitimate environment.",
              "Traffic volume from the event source is higher than normal.",
              "Interactions with the site were significantly different than expected patterns.",
              "Too little traffic has been received from this site thus far to generate quality risk analysis.",
            },
            type = "string",
          },
          type = "array",
        },
        score = {
          description = "Legitimate event score from 0.0 to 1.0. (1.0 means very likely legitimate traffic while 0.0 means very likely non-legitimate traffic).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1ScoreDistribution = {
      description = "Score distribution.",
      id = "GoogleCloudRecaptchaenterpriseV1ScoreDistribution",
      properties = {
        scoreBuckets = {
          additionalProperties = {
            format = "int64",
            type = "string",
          },
          description = "Map key is score value multiplied by 100. The scores are discrete values between [0, 1]. The maximum number of buckets is on order of a few dozen, but typically much lower (ie. 10).",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1ScoreMetrics = {
      description = "Metrics related to scoring.",
      id = "GoogleCloudRecaptchaenterpriseV1ScoreMetrics",
      properties = {
        actionMetrics = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudRecaptchaenterpriseV1ScoreDistribution",
          },
          description = "Action-based metrics. The map key is the action name which specified by the site owners at time of the \"execute\" client-side call.",
          type = "object",
        },
        overallMetrics = {
          ["$ref"] = "GoogleCloudRecaptchaenterpriseV1ScoreDistribution",
          description = "Aggregated score metrics for all traffic.",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest = {
      description = "The request message to search related account group memberships.",
      id = "GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest",
      properties = {
        hashedAccountId = {
          description = "Optional. The unique stable hashed user identifier we should search connections to. The identifier should correspond to a `hashed_account_id` provided in a previous `CreateAssessment` or `AnnotateAssessment` call.",
          format = "byte",
          type = "string",
        },
        pageSize = {
          description = "Optional. The maximum number of groups to return. The service might return fewer than this value. If unspecified, at most 50 groups are returned. The maximum value is 1000; values above 1000 are coerced to 1000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. A page token, received from a previous `SearchRelatedAccountGroupMemberships` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `SearchRelatedAccountGroupMemberships` must match the call that provided the page token.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse = {
      description = "The response to a `SearchRelatedAccountGroupMemberships` call.",
      id = "GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        relatedAccountGroupMemberships = {
          description = "The queried memberships.",
          items = {
            ["$ref"] = "GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1TestingOptions = {
      description = "Options for user acceptance testing.",
      id = "GoogleCloudRecaptchaenterpriseV1TestingOptions",
      properties = {
        testingChallenge = {
          description = "For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if CHALLENGE.",
          enum = {
            "TESTING_CHALLENGE_UNSPECIFIED",
            "NOCAPTCHA",
            "UNSOLVABLE_CHALLENGE",
          },
          enumDescriptions = {
            "Perform the normal risk analysis and return either nocaptcha or a challenge depending on risk and trust factors.",
            "Challenge requests for this key always return a nocaptcha, which does not require a solution.",
            "Challenge requests for this key always return an unsolvable challenge.",
          },
          type = "string",
        },
        testingScore = {
          description = "All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1TokenProperties = {
      id = "GoogleCloudRecaptchaenterpriseV1TokenProperties",
      properties = {
        action = {
          description = "Action name provided at token generation.",
          type = "string",
        },
        androidPackageName = {
          description = "The name of the Android package with which the token was generated (Android keys only).",
          type = "string",
        },
        createTime = {
          description = "The timestamp corresponding to the generation of the token.",
          format = "google-datetime",
          type = "string",
        },
        hostname = {
          description = "The hostname of the page on which the token was generated (Web keys only).",
          type = "string",
        },
        invalidReason = {
          description = "Reason associated with the response when valid = false.",
          enum = {
            "INVALID_REASON_UNSPECIFIED",
            "UNKNOWN_INVALID_REASON",
            "MALFORMED",
            "EXPIRED",
            "DUPE",
            "MISSING",
            "BROWSER_ERROR",
          },
          enumDescriptions = {
            "Default unspecified type.",
            "If the failure reason was not accounted for.",
            "The provided user verification token was malformed.",
            "The user verification token had expired.",
            "The user verification had already been seen.",
            "The user verification token was not present.",
            "A retriable error (such as network failure) occurred on the browser. Could easily be simulated by an attacker.",
          },
          type = "string",
        },
        iosBundleId = {
          description = "The ID of the iOS bundle with which the token was generated (iOS keys only).",
          type = "string",
        },
        valid = {
          description = "Whether the provided user response token is valid. When valid = false, the reason could be specified in invalid_reason or it could also be due to a user failing to solve a challenge or a sitekey mismatch (i.e the sitekey used to generate the token was different than the one specified in the assessment).",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1WafSettings = {
      description = "Settings specific to keys that can be used for WAF (Web Application Firewall).",
      id = "GoogleCloudRecaptchaenterpriseV1WafSettings",
      properties = {
        wafFeature = {
          description = "Required. The WAF feature for which this key is enabled.",
          enum = {
            "WAF_FEATURE_UNSPECIFIED",
            "CHALLENGE_PAGE",
            "SESSION_TOKEN",
            "ACTION_TOKEN",
          },
          enumDescriptions = {
            "Undefined feature.",
            "Redirects suspicious traffic to reCAPTCHA.",
            "Use reCAPTCHA session-tokens to protect the whole user session on the site's domain.",
            "Use reCAPTCHA action-tokens to protect user actions.",
          },
          type = "string",
        },
        wafService = {
          description = "Required. The WAF service that uses this key.",
          enum = {
            "WAF_SERVICE_UNSPECIFIED",
            "CA",
          },
          enumDescriptions = {
            "Undefined WAF",
            "Cloud Armor",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudRecaptchaenterpriseV1WebKeySettings = {
      description = "Settings specific to keys that can be used by websites.",
      id = "GoogleCloudRecaptchaenterpriseV1WebKeySettings",
      properties = {
        allowAllDomains = {
          description = "If set to true, it means allowed_domains will not be enforced.",
          type = "boolean",
        },
        allowAmpTraffic = {
          description = "If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type.",
          type = "boolean",
        },
        allowedDomains = {
          description = "Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com'",
          items = {
            type = "string",
          },
          type = "array",
        },
        challengeSecurityPreference = {
          description = "Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE.",
          enum = {
            "CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED",
            "USABILITY",
            "BALANCE",
            "SECURITY",
          },
          enumDescriptions = {
            "Default type that indicates this enum hasn't been specified.",
            "Key tends to show fewer and easier challenges.",
            "Key tends to show balanced (in amount and difficulty) challenges.",
            "Key tends to show more and harder challenges.",
          },
          type = "string",
        },
        integrationType = {
          description = "Required. Describes how this key is integrated with the website.",
          enum = {
            "INTEGRATION_TYPE_UNSPECIFIED",
            "SCORE",
            "CHECKBOX",
            "INVISIBLE",
          },
          enumDescriptions = {
            "Default type that indicates this enum hasn't been specified. This is not a valid IntegrationType, one of the other types must be specified instead.",
            "Only used to produce scores. It doesn't display the \"I'm not a robot\" checkbox and never shows captcha challenges.",
            "Displays the \"I'm not a robot\" checkbox and may show captcha challenges after it is checked.",
            "Doesn't display the \"I'm not a robot\" checkbox, but may show captcha challenges after risk analysis.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "reCAPTCHA Enterprise API",
  version = "v1",
  version_module = true,
}
