return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/content"] = {
          description = "Manage your product listings and accounts for Google Shopping",
        },
      },
    },
  },
  basePath = "/content/v2.1/",
  baseUrl = "https://shoppingcontent.googleapis.com/content/v2.1/",
  batchPath = "batch",
  canonicalName = "Shopping Content",
  description = "Manage your product listings and accounts for Google Shopping",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/shopping-content/v2/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "content:v2.1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://shoppingcontent.mtls.googleapis.com/",
  name = "content",
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
    accounts = {
      methods = {
        authinfo = {
          description = "Returns information about the authenticated user.",
          flatPath = "accounts/authinfo",
          httpMethod = "GET",
          id = "content.accounts.authinfo",
          parameterOrder = {},
          parameters = {},
          path = "accounts/authinfo",
          response = {
            ["$ref"] = "AccountsAuthInfoResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        claimwebsite = {
          description = "Claims the website of a Merchant Center sub-account.",
          flatPath = "{merchantId}/accounts/{accountId}/claimwebsite",
          httpMethod = "POST",
          id = "content.accounts.claimwebsite",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account whose website is claimed.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            overwrite = {
              description = "Only available to selected merchants, for example multi-client accounts (MCAs) and their sub-accounts. When set to `True`, this option removes any existing claim on the requested website and replaces it with a claim from the account that makes the request.",
              location = "query",
              type = "boolean",
            },
          },
          path = "{merchantId}/accounts/{accountId}/claimwebsite",
          response = {
            ["$ref"] = "AccountsClaimWebsiteResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        custombatch = {
          description = "Retrieves, inserts, updates, and deletes multiple Merchant Center (sub-)accounts in a single request.",
          flatPath = "accounts/batch",
          httpMethod = "POST",
          id = "content.accounts.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "accounts/batch",
          request = {
            ["$ref"] = "AccountsCustomBatchRequest",
          },
          response = {
            ["$ref"] = "AccountsCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a Merchant Center sub-account.",
          flatPath = "{merchantId}/accounts/{accountId}",
          httpMethod = "DELETE",
          id = "content.accounts.delete",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            force = {
              default = "false",
              description = "Option to delete sub-accounts with products. The default value is false.",
              location = "query",
              type = "boolean",
            },
            merchantId = {
              description = "The ID of the managing account. This must be a multi-client account, and accountId must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounts/{accountId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves a Merchant Center account.",
          flatPath = "{merchantId}/accounts/{accountId}",
          httpMethod = "GET",
          id = "content.accounts.get",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              description = "Controls which fields will be populated. Acceptable values are: \"merchant\" and \"css\". The default value is \"merchant\".",
              enum = {
                "MERCHANT",
                "CSS",
              },
              enumDescriptions = {
                "Default. View is populated with Merchant Center fields.",
                "View is populated with Comparison Shopping Services fields.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/accounts/{accountId}",
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        insert = {
          description = "Creates a Merchant Center sub-account.",
          flatPath = "{merchantId}/accounts",
          httpMethod = "POST",
          id = "content.accounts.insert",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the managing account. This must be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounts",
          request = {
            ["$ref"] = "Account",
          },
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        link = {
          description = "Performs an action on a link between two Merchant Center accounts, namely accountId and linkedAccountId.",
          flatPath = "{merchantId}/accounts/{accountId}/link",
          httpMethod = "POST",
          id = "content.accounts.link",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account that should be linked.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounts/{accountId}/link",
          request = {
            ["$ref"] = "AccountsLinkRequest",
          },
          response = {
            ["$ref"] = "AccountsLinkResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the sub-accounts in your Merchant Center account.",
          flatPath = "{merchantId}/accounts",
          httpMethod = "GET",
          id = "content.accounts.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            label = {
              description = "If view is set to \"css\", only return accounts that are assigned label with given ID.",
              format = "uint64",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of accounts to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the managing account. This must be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            name = {
              description = "If set, only the accounts with the given name (case sensitive) will be returned.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            view = {
              description = "Controls which fields will be populated. Acceptable values are: \"merchant\" and \"css\". The default value is \"merchant\".",
              enum = {
                "MERCHANT",
                "CSS",
              },
              enumDescriptions = {
                "Default. View is populated with Merchant Center fields.",
                "View is populated with Comparison Shopping Services fields.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/accounts",
          response = {
            ["$ref"] = "AccountsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        listlinks = {
          description = "Returns the list of accounts linked to your Merchant Center account.",
          flatPath = "{merchantId}/accounts/{accountId}/listlinks",
          httpMethod = "GET",
          id = "content.accounts.listlinks",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to list links.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of links to return in the response, used for pagination. The minimum allowed value is 5 results per page. If provided value is lower than 5, it will be automatically increased to 5.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/accounts/{accountId}/listlinks",
          response = {
            ["$ref"] = "AccountsListLinksResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        requestphoneverification = {
          description = "Request verification code to start phone verification.",
          flatPath = "{merchantId}/accounts/{accountId}/requestphoneverification",
          httpMethod = "POST",
          id = "content.accounts.requestphoneverification",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "Required. The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounts/{accountId}/requestphoneverification",
          request = {
            ["$ref"] = "RequestPhoneVerificationRequest",
          },
          response = {
            ["$ref"] = "RequestPhoneVerificationResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        update = {
          description = "Updates a Merchant Center account. Any fields that are not provided are deleted from the resource.",
          flatPath = "{merchantId}/accounts/{accountId}",
          httpMethod = "PUT",
          id = "content.accounts.update",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounts/{accountId}",
          request = {
            ["$ref"] = "Account",
          },
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        updatelabels = {
          description = "Updates labels that are assigned to the Merchant Center account by CSS user.",
          flatPath = "{merchantId}/accounts/{accountId}/updatelabels",
          httpMethod = "POST",
          id = "content.accounts.updatelabels",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account whose labels are updated.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounts/{accountId}/updatelabels",
          request = {
            ["$ref"] = "AccountsUpdateLabelsRequest",
          },
          response = {
            ["$ref"] = "AccountsUpdateLabelsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        verifyphonenumber = {
          description = "Validates verification code to verify phone number for the account. If successful this will overwrite the value of `accounts.businessinformation.phoneNumber`. Only verified phone number will replace an existing verified phone number.",
          flatPath = "{merchantId}/accounts/{accountId}/verifyphonenumber",
          httpMethod = "POST",
          id = "content.accounts.verifyphonenumber",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "Required. The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounts/{accountId}/verifyphonenumber",
          request = {
            ["$ref"] = "VerifyPhoneNumberRequest",
          },
          response = {
            ["$ref"] = "VerifyPhoneNumberResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
      resources = {
        credentials = {
          methods = {
            create = {
              description = "Uploads credentials for the Merchant Center account. If credentials already exist for this Merchant Center account and purpose, this method updates them.",
              flatPath = "accounts/{accountId}/credentials",
              httpMethod = "POST",
              id = "content.accounts.credentials.create",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Required. The merchant id of the account these credentials belong to.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/credentials",
              request = {
                ["$ref"] = "AccountCredentials",
              },
              response = {
                ["$ref"] = "AccountCredentials",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
          },
        },
        labels = {
          methods = {
            create = {
              description = "Creates a new label, not assigned to any account.",
              flatPath = "accounts/{accountId}/labels",
              httpMethod = "POST",
              id = "content.accounts.labels.create",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Required. The id of the account this label belongs to.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/labels",
              request = {
                ["$ref"] = "AccountLabel",
              },
              response = {
                ["$ref"] = "AccountLabel",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
            delete = {
              description = "Deletes a label and removes it from all accounts to which it was assigned.",
              flatPath = "accounts/{accountId}/labels/{labelId}",
              httpMethod = "DELETE",
              id = "content.accounts.labels.delete",
              parameterOrder = {
                "accountId",
                "labelId",
              },
              parameters = {
                accountId = {
                  description = "Required. The id of the account that owns the label.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                labelId = {
                  description = "Required. The id of the label to delete.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/labels/{labelId}",
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
            list = {
              description = "Lists the labels assigned to an account.",
              flatPath = "accounts/{accountId}/labels",
              httpMethod = "GET",
              id = "content.accounts.labels.list",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Required. The account id for whose labels are to be listed.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of labels to return. The service may return fewer than this value. If unspecified, at most 50 labels will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListAccountLabels` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListAccountLabels` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
              },
              path = "accounts/{accountId}/labels",
              response = {
                ["$ref"] = "ListAccountLabelsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
            patch = {
              description = "Updates a label.",
              flatPath = "accounts/{accountId}/labels/{labelId}",
              httpMethod = "PATCH",
              id = "content.accounts.labels.patch",
              parameterOrder = {
                "accountId",
                "labelId",
              },
              parameters = {
                accountId = {
                  description = "Required. The id of the account this label belongs to.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                labelId = {
                  description = "Required. The id of the label to update.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/labels/{labelId}",
              request = {
                ["$ref"] = "AccountLabel",
              },
              response = {
                ["$ref"] = "AccountLabel",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
          },
        },
        returncarrier = {
          methods = {
            create = {
              description = "Links return carrier to a merchant account.",
              flatPath = "accounts/{accountId}/returncarrier",
              httpMethod = "POST",
              id = "content.accounts.returncarrier.create",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Required. The Merchant Center Account Id under which the Return Carrier is to be linked.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/returncarrier",
              request = {
                ["$ref"] = "AccountReturnCarrier",
              },
              response = {
                ["$ref"] = "AccountReturnCarrier",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
            delete = {
              description = "Delete a return carrier in the merchant account.",
              flatPath = "accounts/{accountId}/returncarrier/{carrierAccountId}",
              httpMethod = "DELETE",
              id = "content.accounts.returncarrier.delete",
              parameterOrder = {
                "accountId",
                "carrierAccountId",
              },
              parameters = {
                accountId = {
                  description = "Required. The Merchant Center Account Id under which the Return Carrier is to be linked.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                carrierAccountId = {
                  description = "Required. The Google-provided unique carrier ID, used to update the resource.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/returncarrier/{carrierAccountId}",
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
            list = {
              description = "Lists available return carriers in the merchant account.",
              flatPath = "accounts/{accountId}/returncarrier",
              httpMethod = "GET",
              id = "content.accounts.returncarrier.list",
              parameterOrder = {
                "accountId",
              },
              parameters = {
                accountId = {
                  description = "Required. The Merchant Center Account Id under which the Return Carrier is to be linked.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/returncarrier",
              response = {
                ["$ref"] = "ListAccountReturnCarrierResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
            patch = {
              description = "Updates a return carrier in the merchant account.",
              flatPath = "accounts/{accountId}/returncarrier/{carrierAccountId}",
              httpMethod = "PATCH",
              id = "content.accounts.returncarrier.patch",
              parameterOrder = {
                "accountId",
                "carrierAccountId",
              },
              parameters = {
                accountId = {
                  description = "Required. The Merchant Center Account Id under which the Return Carrier is to be linked.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                carrierAccountId = {
                  description = "Required. The Google-provided unique carrier ID, used to update the resource.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "accounts/{accountId}/returncarrier/{carrierAccountId}",
              request = {
                ["$ref"] = "AccountReturnCarrier",
              },
              response = {
                ["$ref"] = "AccountReturnCarrier",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
          },
        },
      },
    },
    accountstatuses = {
      methods = {
        custombatch = {
          description = "Retrieves multiple Merchant Center account statuses in a single request.",
          flatPath = "accountstatuses/batch",
          httpMethod = "POST",
          id = "content.accountstatuses.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "accountstatuses/batch",
          request = {
            ["$ref"] = "AccountstatusesCustomBatchRequest",
          },
          response = {
            ["$ref"] = "AccountstatusesCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves the status of a Merchant Center account. No itemLevelIssues are returned for multi-client accounts.",
          flatPath = "{merchantId}/accountstatuses/{accountId}",
          httpMethod = "GET",
          id = "content.accountstatuses.get",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            destinations = {
              description = "If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.",
              location = "query",
              repeated = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accountstatuses/{accountId}",
          response = {
            ["$ref"] = "AccountStatus",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the statuses of the sub-accounts in your Merchant Center account.",
          flatPath = "{merchantId}/accountstatuses",
          httpMethod = "GET",
          id = "content.accountstatuses.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            destinations = {
              description = "If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of account statuses to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the managing account. This must be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            name = {
              description = "If set, only the accounts with the given name (case sensitive) will be returned.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/accountstatuses",
          response = {
            ["$ref"] = "AccountstatusesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    accounttax = {
      methods = {
        custombatch = {
          description = "Retrieves and updates tax settings of multiple accounts in a single request.",
          flatPath = "accounttax/batch",
          httpMethod = "POST",
          id = "content.accounttax.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "accounttax/batch",
          request = {
            ["$ref"] = "AccounttaxCustomBatchRequest",
          },
          response = {
            ["$ref"] = "AccounttaxCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves the tax settings of the account.",
          flatPath = "{merchantId}/accounttax/{accountId}",
          httpMethod = "GET",
          id = "content.accounttax.get",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to get/update account tax settings.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounttax/{accountId}",
          response = {
            ["$ref"] = "AccountTax",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the tax settings of the sub-accounts in your Merchant Center account.",
          flatPath = "{merchantId}/accounttax",
          httpMethod = "GET",
          id = "content.accounttax.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            maxResults = {
              description = "The maximum number of tax settings to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the managing account. This must be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/accounttax",
          response = {
            ["$ref"] = "AccounttaxListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        update = {
          description = "Updates the tax settings of the account. Any fields that are not provided are deleted from the resource.",
          flatPath = "{merchantId}/accounttax/{accountId}",
          httpMethod = "PUT",
          id = "content.accounttax.update",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to get/update account tax settings.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/accounttax/{accountId}",
          request = {
            ["$ref"] = "AccountTax",
          },
          response = {
            ["$ref"] = "AccountTax",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    buyongoogleprograms = {
      methods = {
        activate = {
          description = "Reactivates the BoG program in your Merchant Center account. Moves the program to the active state when allowed, for example, when paused. This method is only available to selected merchants.",
          flatPath = "{merchantId}/buyongoogleprograms/{regionCode}/activate",
          httpMethod = "POST",
          id = "content.buyongoogleprograms.activate",
          parameterOrder = {
            "merchantId",
            "regionCode",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionCode = {
              description = "Required. The program region code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently only US is available.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/buyongoogleprograms/{regionCode}/activate",
          request = {
            ["$ref"] = "ActivateBuyOnGoogleProgramRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves a status of the BoG program for your Merchant Center account.",
          flatPath = "{merchantId}/buyongoogleprograms/{regionCode}",
          httpMethod = "GET",
          id = "content.buyongoogleprograms.get",
          parameterOrder = {
            "merchantId",
            "regionCode",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionCode = {
              description = "Required. The Program region code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently only US is available.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/buyongoogleprograms/{regionCode}",
          response = {
            ["$ref"] = "BuyOnGoogleProgramStatus",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        onboard = {
          description = "Onboards the BoG program in your Merchant Center account. By using this method, you agree to the [Terms of Service](https://merchants.google.com/mc/termsofservice/transactions/US/latest). Calling this method is only possible if the authenticated account is the same as the merchant id in the request. Calling this method multiple times will only accept Terms of Service if the latest version is not currently signed.",
          flatPath = "{merchantId}/buyongoogleprograms/{regionCode}/onboard",
          httpMethod = "POST",
          id = "content.buyongoogleprograms.onboard",
          parameterOrder = {
            "merchantId",
            "regionCode",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionCode = {
              description = "Required. The program region code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently only US is available.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/buyongoogleprograms/{regionCode}/onboard",
          request = {
            ["$ref"] = "OnboardBuyOnGoogleProgramRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        patch = {
          description = "Updates the status of the BoG program for your Merchant Center account.",
          flatPath = "{merchantId}/buyongoogleprograms/{regionCode}",
          httpMethod = "PATCH",
          id = "content.buyongoogleprograms.patch",
          parameterOrder = {
            "merchantId",
            "regionCode",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionCode = {
              description = "Required. The program region code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently only US is available.",
              location = "path",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The list of fields to update. If the update mask is not provided, then all the fields set in buyOnGoogleProgramStatus will be updated. Clearing fields is only possible if update mask is provided.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/buyongoogleprograms/{regionCode}",
          request = {
            ["$ref"] = "BuyOnGoogleProgramStatus",
          },
          response = {
            ["$ref"] = "BuyOnGoogleProgramStatus",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        pause = {
          description = "Pauses the BoG program in your Merchant Center account. This method is only available to selected merchants.",
          flatPath = "{merchantId}/buyongoogleprograms/{regionCode}/pause",
          httpMethod = "POST",
          id = "content.buyongoogleprograms.pause",
          parameterOrder = {
            "merchantId",
            "regionCode",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionCode = {
              description = "Required. The program region code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently only US is available.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/buyongoogleprograms/{regionCode}/pause",
          request = {
            ["$ref"] = "PauseBuyOnGoogleProgramRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        requestreview = {
          description = "Requests review and then activates the BoG program in your Merchant Center account for the first time. Moves the program to the REVIEW_PENDING state. This method is only available to selected merchants.",
          flatPath = "{merchantId}/buyongoogleprograms/{regionCode}/requestreview",
          httpMethod = "POST",
          id = "content.buyongoogleprograms.requestreview",
          parameterOrder = {
            "merchantId",
            "regionCode",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionCode = {
              description = "Required. The program region code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Currently only US is available.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/buyongoogleprograms/{regionCode}/requestreview",
          request = {
            ["$ref"] = "RequestReviewBuyOnGoogleProgramRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    collections = {
      methods = {
        create = {
          description = "Uploads a collection to your Merchant Center account. If a collection with the same collectionId already exists, this method updates that entry. In each update, the collection is completely replaced by the fields in the body of the update request.",
          flatPath = "{merchantId}/collections",
          httpMethod = "POST",
          id = "content.collections.create",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account that contains the collection. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/collections",
          request = {
            ["$ref"] = "Collection",
          },
          response = {
            ["$ref"] = "Collection",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a collection from your Merchant Center account.",
          flatPath = "{merchantId}/collections/{collectionId}",
          httpMethod = "DELETE",
          id = "content.collections.delete",
          parameterOrder = {
            "merchantId",
            "collectionId",
          },
          parameters = {
            collectionId = {
              description = "Required. The collectionId of the collection. CollectionId is the same as the REST ID of the collection.",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "Required. The ID of the account that contains the collection. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/collections/{collectionId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves a collection from your Merchant Center account.",
          flatPath = "{merchantId}/collections/{collectionId}",
          httpMethod = "GET",
          id = "content.collections.get",
          parameterOrder = {
            "merchantId",
            "collectionId",
          },
          parameters = {
            collectionId = {
              description = "Required. The REST ID of the collection.",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "Required. The ID of the account that contains the collection. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/collections/{collectionId}",
          response = {
            ["$ref"] = "Collection",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the collections in your Merchant Center account. The response might contain fewer items than specified by page_size. Rely on next_page_token to determine if there are more items to be requested.",
          flatPath = "{merchantId}/collections",
          httpMethod = "GET",
          id = "content.collections.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account that contains the collection. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The maximum number of collections to return in the response, used for paging. Defaults to 50; values above 1000 will be coerced to 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided the page token.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/collections",
          response = {
            ["$ref"] = "ListCollectionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    collectionstatuses = {
      methods = {
        get = {
          description = "Gets the status of a collection from your Merchant Center account.",
          flatPath = "{merchantId}/collectionstatuses/{collectionId}",
          httpMethod = "GET",
          id = "content.collectionstatuses.get",
          parameterOrder = {
            "merchantId",
            "collectionId",
          },
          parameters = {
            collectionId = {
              description = "Required. The collectionId of the collection. CollectionId is the same as the REST ID of the collection.",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "Required. The ID of the account that contains the collection. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/collectionstatuses/{collectionId}",
          response = {
            ["$ref"] = "CollectionStatus",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the statuses of the collections in your Merchant Center account.",
          flatPath = "{merchantId}/collectionstatuses",
          httpMethod = "GET",
          id = "content.collectionstatuses.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account that contains the collection. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The maximum number of collection statuses to return in the response, used for paging. Defaults to 50; values above 1000 will be coerced to 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided the page token.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/collectionstatuses",
          response = {
            ["$ref"] = "ListCollectionStatusesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    csses = {
      methods = {
        get = {
          description = "Retrieves a single CSS domain by ID.",
          flatPath = "{cssGroupId}/csses/{cssDomainId}",
          httpMethod = "GET",
          id = "content.csses.get",
          parameterOrder = {
            "cssGroupId",
            "cssDomainId",
          },
          parameters = {
            cssDomainId = {
              description = "Required. The ID of the CSS domain to return.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            cssGroupId = {
              description = "Required. The ID of the managing account. If this parameter is not the same as [cssDomainId](#cssDomainId), then this ID must be a CSS group ID and `cssDomainId` must be the ID of a CSS domain affiliated with this group.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{cssGroupId}/csses/{cssDomainId}",
          response = {
            ["$ref"] = "Css",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists CSS domains affiliated with a CSS group.",
          flatPath = "{cssGroupId}/csses",
          httpMethod = "GET",
          id = "content.csses.list",
          parameterOrder = {
            "cssGroupId",
          },
          parameters = {
            cssGroupId = {
              description = "Required. The CSS group ID of CSS domains to be listed.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The maximum number of CSS domains to return. The service may return fewer than this value. If unspecified, at most 50 CSS domains will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A page token, received from a previous `ListCsses` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListCsses` must match the call that provided the page token.",
              location = "query",
              type = "string",
            },
          },
          path = "{cssGroupId}/csses",
          response = {
            ["$ref"] = "ListCssesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        updatelabels = {
          description = "Updates labels that are assigned to a CSS domain by its CSS group.",
          flatPath = "{cssGroupId}/csses/{cssDomainId}/updatelabels",
          httpMethod = "POST",
          id = "content.csses.updatelabels",
          parameterOrder = {
            "cssGroupId",
            "cssDomainId",
          },
          parameters = {
            cssDomainId = {
              description = "Required. The ID of the updated CSS domain.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            cssGroupId = {
              description = "Required. The CSS group ID of the updated CSS domain.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{cssGroupId}/csses/{cssDomainId}/updatelabels",
          request = {
            ["$ref"] = "LabelIds",
          },
          response = {
            ["$ref"] = "Css",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    datafeeds = {
      methods = {
        custombatch = {
          description = "Deletes, fetches, gets, inserts and updates multiple datafeeds in a single request.",
          flatPath = "datafeeds/batch",
          httpMethod = "POST",
          id = "content.datafeeds.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "datafeeds/batch",
          request = {
            ["$ref"] = "DatafeedsCustomBatchRequest",
          },
          response = {
            ["$ref"] = "DatafeedsCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a datafeed configuration from your Merchant Center account.",
          flatPath = "{merchantId}/datafeeds/{datafeedId}",
          httpMethod = "DELETE",
          id = "content.datafeeds.delete",
          parameterOrder = {
            "merchantId",
            "datafeedId",
          },
          parameters = {
            datafeedId = {
              description = "The ID of the datafeed.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that manages the datafeed. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/datafeeds/{datafeedId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        fetchnow = {
          description = "Invokes a fetch for the datafeed in your Merchant Center account. If you need to call this method more than once per day, we recommend you use the [Products service](https://developers.google.com/shopping-content/reference/rest/v2.1/products) to update your product data.",
          flatPath = "{merchantId}/datafeeds/{datafeedId}/fetchNow",
          httpMethod = "POST",
          id = "content.datafeeds.fetchnow",
          parameterOrder = {
            "merchantId",
            "datafeedId",
          },
          parameters = {
            datafeedId = {
              description = "The ID of the datafeed to be fetched.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that manages the datafeed. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/datafeeds/{datafeedId}/fetchNow",
          response = {
            ["$ref"] = "DatafeedsFetchNowResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves a datafeed configuration from your Merchant Center account.",
          flatPath = "{merchantId}/datafeeds/{datafeedId}",
          httpMethod = "GET",
          id = "content.datafeeds.get",
          parameterOrder = {
            "merchantId",
            "datafeedId",
          },
          parameters = {
            datafeedId = {
              description = "The ID of the datafeed.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that manages the datafeed. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/datafeeds/{datafeedId}",
          response = {
            ["$ref"] = "Datafeed",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        insert = {
          description = "Registers a datafeed configuration with your Merchant Center account.",
          flatPath = "{merchantId}/datafeeds",
          httpMethod = "POST",
          id = "content.datafeeds.insert",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the datafeed. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/datafeeds",
          request = {
            ["$ref"] = "Datafeed",
          },
          response = {
            ["$ref"] = "Datafeed",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the configurations for datafeeds in your Merchant Center account.",
          flatPath = "{merchantId}/datafeeds",
          httpMethod = "GET",
          id = "content.datafeeds.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            maxResults = {
              description = "The maximum number of products to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the account that manages the datafeeds. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/datafeeds",
          response = {
            ["$ref"] = "DatafeedsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        update = {
          description = "Updates a datafeed configuration of your Merchant Center account. Any fields that are not provided are deleted from the resource.",
          flatPath = "{merchantId}/datafeeds/{datafeedId}",
          httpMethod = "PUT",
          id = "content.datafeeds.update",
          parameterOrder = {
            "merchantId",
            "datafeedId",
          },
          parameters = {
            datafeedId = {
              description = "The ID of the datafeed.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that manages the datafeed. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/datafeeds/{datafeedId}",
          request = {
            ["$ref"] = "Datafeed",
          },
          response = {
            ["$ref"] = "Datafeed",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    datafeedstatuses = {
      methods = {
        custombatch = {
          description = "Gets multiple Merchant Center datafeed statuses in a single request.",
          flatPath = "datafeedstatuses/batch",
          httpMethod = "POST",
          id = "content.datafeedstatuses.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "datafeedstatuses/batch",
          request = {
            ["$ref"] = "DatafeedstatusesCustomBatchRequest",
          },
          response = {
            ["$ref"] = "DatafeedstatusesCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves the status of a datafeed from your Merchant Center account.",
          flatPath = "{merchantId}/datafeedstatuses/{datafeedId}",
          httpMethod = "GET",
          id = "content.datafeedstatuses.get",
          parameterOrder = {
            "merchantId",
            "datafeedId",
          },
          parameters = {
            country = {
              description = "Deprecated. Use `feedLabel` instead. The country to get the datafeed status for. If this parameter is provided then `language` must also be provided. Note that this parameter is required for feeds targeting multiple countries and languages, since a feed may have a different status for each target.",
              location = "query",
              type = "string",
            },
            datafeedId = {
              description = "The ID of the datafeed.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            feedLabel = {
              description = "The feed label to get the datafeed status for. If this parameter is provided then `language` must also be provided. Note that this parameter is required for feeds targeting multiple countries and languages, since a feed may have a different status for each target.",
              location = "query",
              type = "string",
            },
            language = {
              description = "The language to get the datafeed status for. If this parameter is provided then `country` must also be provided. Note that this parameter is required for feeds targeting multiple countries and languages, since a feed may have a different status for each target.",
              location = "query",
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that manages the datafeed. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/datafeedstatuses/{datafeedId}",
          response = {
            ["$ref"] = "DatafeedStatus",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the statuses of the datafeeds in your Merchant Center account.",
          flatPath = "{merchantId}/datafeedstatuses",
          httpMethod = "GET",
          id = "content.datafeedstatuses.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            maxResults = {
              description = "The maximum number of products to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the account that manages the datafeeds. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/datafeedstatuses",
          response = {
            ["$ref"] = "DatafeedstatusesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    freelistingsprogram = {
      methods = {
        get = {
          description = "Retrieves the status and review eligibility for the free listing program. Returns errors and warnings if they require action to resolve, will become disapprovals, or impact impressions. Use `accountstatuses` to view all issues for an account.",
          flatPath = "{merchantId}/freelistingsprogram",
          httpMethod = "GET",
          id = "content.freelistingsprogram.get",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/freelistingsprogram",
          response = {
            ["$ref"] = "FreeListingsProgramStatus",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        requestreview = {
          description = "Requests a review of free listings in a specific region. This method is only available to selected merchants.",
          flatPath = "{merchantId}/freelistingsprogram/requestreview",
          httpMethod = "POST",
          id = "content.freelistingsprogram.requestreview",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/freelistingsprogram/requestreview",
          request = {
            ["$ref"] = "RequestReviewFreeListingsRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    liasettings = {
      methods = {
        custombatch = {
          description = "Retrieves and/or updates the LIA settings of multiple accounts in a single request.",
          flatPath = "liasettings/batch",
          httpMethod = "POST",
          id = "content.liasettings.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "liasettings/batch",
          request = {
            ["$ref"] = "LiasettingsCustomBatchRequest",
          },
          response = {
            ["$ref"] = "LiasettingsCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves the LIA settings of the account.",
          flatPath = "{merchantId}/liasettings/{accountId}",
          httpMethod = "GET",
          id = "content.liasettings.get",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to get or update LIA settings.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/liasettings/{accountId}",
          response = {
            ["$ref"] = "LiaSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        getaccessiblegmbaccounts = {
          description = "Retrieves the list of accessible Business Profiles.",
          flatPath = "{merchantId}/liasettings/{accountId}/accessiblegmbaccounts",
          httpMethod = "GET",
          id = "content.liasettings.getaccessiblegmbaccounts",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to retrieve accessible Business Profiles.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/liasettings/{accountId}/accessiblegmbaccounts",
          response = {
            ["$ref"] = "LiasettingsGetAccessibleGmbAccountsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the LIA settings of the sub-accounts in your Merchant Center account.",
          flatPath = "{merchantId}/liasettings",
          httpMethod = "GET",
          id = "content.liasettings.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            maxResults = {
              description = "The maximum number of LIA settings to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the managing account. This must be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/liasettings",
          response = {
            ["$ref"] = "LiasettingsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        listposdataproviders = {
          description = "Retrieves the list of POS data providers that have active settings for the all eiligible countries.",
          flatPath = "liasettings/posdataproviders",
          httpMethod = "GET",
          id = "content.liasettings.listposdataproviders",
          parameterOrder = {},
          parameters = {},
          path = "liasettings/posdataproviders",
          response = {
            ["$ref"] = "LiasettingsListPosDataProvidersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        requestgmbaccess = {
          description = "Requests access to a specified Business Profile.",
          flatPath = "{merchantId}/liasettings/{accountId}/requestgmbaccess",
          httpMethod = "POST",
          id = "content.liasettings.requestgmbaccess",
          parameterOrder = {
            "merchantId",
            "accountId",
            "gmbEmail",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which Business Profile access is requested.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            gmbEmail = {
              description = "The email of the Business Profile.",
              location = "query",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/liasettings/{accountId}/requestgmbaccess",
          response = {
            ["$ref"] = "LiasettingsRequestGmbAccessResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        requestinventoryverification = {
          description = "Requests inventory validation for the specified country.",
          flatPath = "{merchantId}/liasettings/{accountId}/requestinventoryverification/{country}",
          httpMethod = "POST",
          id = "content.liasettings.requestinventoryverification",
          parameterOrder = {
            "merchantId",
            "accountId",
            "country",
          },
          parameters = {
            accountId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            country = {
              description = "The country for which inventory validation is requested.",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/liasettings/{accountId}/requestinventoryverification/{country}",
          response = {
            ["$ref"] = "LiasettingsRequestInventoryVerificationResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        setinventoryverificationcontact = {
          description = "Sets the inventory verification contract for the specified country.",
          flatPath = "{merchantId}/liasettings/{accountId}/setinventoryverificationcontact",
          httpMethod = "POST",
          id = "content.liasettings.setinventoryverificationcontact",
          parameterOrder = {
            "merchantId",
            "accountId",
            "country",
            "language",
            "contactName",
            "contactEmail",
          },
          parameters = {
            accountId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            contactEmail = {
              description = "The email of the inventory verification contact.",
              location = "query",
              required = true,
              type = "string",
            },
            contactName = {
              description = "The name of the inventory verification contact.",
              location = "query",
              required = true,
              type = "string",
            },
            country = {
              description = "The country for which inventory verification is requested.",
              location = "query",
              required = true,
              type = "string",
            },
            language = {
              description = "The language for which inventory verification is requested.",
              location = "query",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/liasettings/{accountId}/setinventoryverificationcontact",
          response = {
            ["$ref"] = "LiasettingsSetInventoryVerificationContactResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        setposdataprovider = {
          description = "Sets the POS data provider for the specified country.",
          flatPath = "{merchantId}/liasettings/{accountId}/setposdataprovider",
          httpMethod = "POST",
          id = "content.liasettings.setposdataprovider",
          parameterOrder = {
            "merchantId",
            "accountId",
            "country",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to retrieve accessible Business Profiles.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            country = {
              description = "The country for which the POS data provider is selected.",
              location = "query",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            posDataProviderId = {
              description = "The ID of POS data provider.",
              format = "uint64",
              location = "query",
              type = "string",
            },
            posExternalAccountId = {
              description = "The account ID by which this merchant is known to the POS data provider.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/liasettings/{accountId}/setposdataprovider",
          response = {
            ["$ref"] = "LiasettingsSetPosDataProviderResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        update = {
          description = "Updates the LIA settings of the account. Any fields that are not provided are deleted from the resource.",
          flatPath = "{merchantId}/liasettings/{accountId}",
          httpMethod = "PUT",
          id = "content.liasettings.update",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to get or update LIA settings.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/liasettings/{accountId}",
          request = {
            ["$ref"] = "LiaSettings",
          },
          response = {
            ["$ref"] = "LiaSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    localinventory = {
      methods = {
        custombatch = {
          description = "Updates local inventory for multiple products or stores in a single request.",
          flatPath = "localinventory/batch",
          httpMethod = "POST",
          id = "content.localinventory.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "localinventory/batch",
          request = {
            ["$ref"] = "LocalinventoryCustomBatchRequest",
          },
          response = {
            ["$ref"] = "LocalinventoryCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        insert = {
          description = "Updates the local inventory of a product in your Merchant Center account.",
          flatPath = "{merchantId}/products/{productId}/localinventory",
          httpMethod = "POST",
          id = "content.localinventory.insert",
          parameterOrder = {
            "merchantId",
            "productId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The REST ID of the product for which to update local inventory.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/products/{productId}/localinventory",
          request = {
            ["$ref"] = "LocalInventory",
          },
          response = {
            ["$ref"] = "LocalInventory",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    orderinvoices = {
      methods = {
        createchargeinvoice = {
          description = "Creates a charge invoice for a shipment group, and triggers a charge capture for orderinvoice enabled orders.",
          flatPath = "{merchantId}/orderinvoices/{orderId}/createChargeInvoice",
          httpMethod = "POST",
          id = "content.orderinvoices.createchargeinvoice",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orderinvoices/{orderId}/createChargeInvoice",
          request = {
            ["$ref"] = "OrderinvoicesCreateChargeInvoiceRequest",
          },
          response = {
            ["$ref"] = "OrderinvoicesCreateChargeInvoiceResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        createrefundinvoice = {
          description = "Creates a refund invoice for one or more shipment groups, and triggers a refund for orderinvoice enabled orders. This can only be used for line items that have previously been charged using `createChargeInvoice`. All amounts (except for the summary) are incremental with respect to the previous invoice.",
          flatPath = "{merchantId}/orderinvoices/{orderId}/createRefundInvoice",
          httpMethod = "POST",
          id = "content.orderinvoices.createrefundinvoice",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orderinvoices/{orderId}/createRefundInvoice",
          request = {
            ["$ref"] = "OrderinvoicesCreateRefundInvoiceRequest",
          },
          response = {
            ["$ref"] = "OrderinvoicesCreateRefundInvoiceResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    orderreports = {
      methods = {
        listdisbursements = {
          description = "Retrieves a report for disbursements from your Merchant Center account.",
          flatPath = "{merchantId}/orderreports/disbursements",
          httpMethod = "GET",
          id = "content.orderreports.listdisbursements",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            disbursementEndDate = {
              description = "The last date which disbursements occurred. In ISO 8601 format. Default: current date.",
              location = "query",
              type = "string",
            },
            disbursementStartDate = {
              description = "The first date which disbursements occurred. In ISO 8601 format.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of disbursements to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/orderreports/disbursements",
          response = {
            ["$ref"] = "OrderreportsListDisbursementsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        listtransactions = {
          description = "Retrieves a list of transactions for a disbursement from your Merchant Center account.",
          flatPath = "{merchantId}/orderreports/disbursements/{disbursementId}/transactions",
          httpMethod = "GET",
          id = "content.orderreports.listtransactions",
          parameterOrder = {
            "merchantId",
            "disbursementId",
          },
          parameters = {
            disbursementId = {
              description = "The Google-provided ID of the disbursement (found in Wallet).",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of disbursements to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            transactionEndDate = {
              description = "The last date in which transaction occurred. In ISO 8601 format. Default: current date.",
              location = "query",
              type = "string",
            },
            transactionStartDate = {
              description = "The first date in which transaction occurred. In ISO 8601 format.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/orderreports/disbursements/{disbursementId}/transactions",
          response = {
            ["$ref"] = "OrderreportsListTransactionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    orderreturns = {
      methods = {
        acknowledge = {
          description = "Acks an order return in your Merchant Center account.",
          flatPath = "{merchantId}/orderreturns/{returnId}/acknowledge",
          httpMethod = "POST",
          id = "content.orderreturns.acknowledge",
          parameterOrder = {
            "merchantId",
            "returnId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            returnId = {
              description = "The ID of the return.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orderreturns/{returnId}/acknowledge",
          request = {
            ["$ref"] = "OrderreturnsAcknowledgeRequest",
          },
          response = {
            ["$ref"] = "OrderreturnsAcknowledgeResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        createorderreturn = {
          description = "Create return in your Merchant Center account.",
          flatPath = "{merchantId}/orderreturns/createOrderReturn",
          httpMethod = "POST",
          id = "content.orderreturns.createorderreturn",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orderreturns/createOrderReturn",
          request = {
            ["$ref"] = "OrderreturnsCreateOrderReturnRequest",
          },
          response = {
            ["$ref"] = "OrderreturnsCreateOrderReturnResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves an order return from your Merchant Center account.",
          flatPath = "{merchantId}/orderreturns/{returnId}",
          httpMethod = "GET",
          id = "content.orderreturns.get",
          parameterOrder = {
            "merchantId",
            "returnId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            returnId = {
              description = "Merchant order return ID generated by Google.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orderreturns/{returnId}",
          response = {
            ["$ref"] = "MerchantOrderReturn",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists order returns in your Merchant Center account.",
          flatPath = "{merchantId}/orderreturns",
          httpMethod = "GET",
          id = "content.orderreturns.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            acknowledged = {
              description = "Obtains order returns that match the acknowledgement status. When set to true, obtains order returns that have been acknowledged. When false, obtains order returns that have not been acknowledged. When not provided, obtains order returns regardless of their acknowledgement status. We recommend using this filter set to `false`, in conjunction with the `acknowledge` call, such that only un-acknowledged order returns are returned. ",
              location = "query",
              type = "boolean",
            },
            createdEndDate = {
              description = "Obtains order returns created before this date (inclusively), in ISO 8601 format.",
              location = "query",
              type = "string",
            },
            createdStartDate = {
              description = "Obtains order returns created after this date (inclusively), in ISO 8601 format.",
              location = "query",
              type = "string",
            },
            googleOrderIds = {
              description = "Obtains order returns with the specified order ids. If this parameter is provided, createdStartDate, createdEndDate, shipmentType, shipmentStatus, shipmentState and acknowledged parameters must be not set. Note: if googleOrderId and shipmentTrackingNumber parameters are provided, the obtained results will include all order returns that either match the specified order id or the specified tracking number.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of order returns to return in the response, used for paging. The default value is 25 returns per page, and the maximum allowed value is 250 returns per page.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderBy = {
              description = "Return the results in the specified order.",
              enum = {
                "RETURN_CREATION_TIME_DESC",
                "RETURN_CREATION_TIME_ASC",
              },
              enumDescriptions = {
                "Return results in descending order.",
                "Return results in ascending order.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            shipmentStates = {
              description = "Obtains order returns that match any shipment state provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment states.",
              enum = {
                "NEW",
                "SHIPPED",
                "COMPLETED",
                "UNDELIVERABLE",
                "PENDING",
              },
              enumDescriptions = {
                "Return shipments with `new` state only.",
                "Return shipments with `shipped` state only.",
                "Return shipments with `completed` state only.",
                "Return shipments with `undeliverable` state only.",
                "Return shipments with `pending` state only.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            shipmentStatus = {
              description = "Obtains order returns that match any shipment status provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment statuses.",
              enum = {
                "NEW",
                "IN_PROGRESS",
                "PROCESSED",
              },
              enumDescriptions = {
                "Return shipments with `new` status only.",
                "Return shipments with `inProgress` status only.",
                "Return shipments with `processed` status only.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            shipmentTrackingNumbers = {
              description = "Obtains order returns with the specified tracking numbers. If this parameter is provided, createdStartDate, createdEndDate, shipmentType, shipmentStatus, shipmentState and acknowledged parameters must be not set. Note: if googleOrderId and shipmentTrackingNumber parameters are provided, the obtained results will include all order returns that either match the specified order id or the specified tracking number.",
              location = "query",
              repeated = true,
              type = "string",
            },
            shipmentTypes = {
              description = "Obtains order returns that match any shipment type provided in this parameter. When this parameter is not provided, order returns are obtained regardless of their shipment types.",
              enum = {
                "BY_MAIL",
                "RETURNLESS",
                "CONTACT_CUSTOMER_SUPPORT",
              },
              enumDescriptions = {
                "Return shipments with type `byMail` only.",
                "Return shipments with type `returnless` only.",
                "Return shipments with type `contactCustomerSupport` only.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "{merchantId}/orderreturns",
          response = {
            ["$ref"] = "OrderreturnsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        process = {
          description = "Processes return in your Merchant Center account.",
          flatPath = "{merchantId}/orderreturns/{returnId}/process",
          httpMethod = "POST",
          id = "content.orderreturns.process",
          parameterOrder = {
            "merchantId",
            "returnId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            returnId = {
              description = "The ID of the return.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orderreturns/{returnId}/process",
          request = {
            ["$ref"] = "OrderreturnsProcessRequest",
          },
          response = {
            ["$ref"] = "OrderreturnsProcessResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
      resources = {
        labels = {
          methods = {
            create = {
              description = "Links a return shipping label to a return id. You can only create one return label per return id. Since the label is sent to the buyer, the linked return label cannot be updated or deleted. If you try to create multiple return shipping labels for a single return id, every create request except the first will fail.",
              flatPath = "{merchantId}/orderreturns/{returnId}/labels",
              httpMethod = "POST",
              id = "content.orderreturns.labels.create",
              parameterOrder = {
                "merchantId",
                "returnId",
              },
              parameters = {
                merchantId = {
                  description = "Required. The merchant the Return Shipping Label belongs to.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                returnId = {
                  description = "Required. Provide the Google-generated merchant order return ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "{merchantId}/orderreturns/{returnId}/labels",
              request = {
                ["$ref"] = "ReturnShippingLabel",
              },
              response = {
                ["$ref"] = "ReturnShippingLabel",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
          },
        },
      },
    },
    orders = {
      methods = {
        acknowledge = {
          description = "Marks an order as acknowledged.",
          flatPath = "{merchantId}/orders/{orderId}/acknowledge",
          httpMethod = "POST",
          id = "content.orders.acknowledge",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/acknowledge",
          request = {
            ["$ref"] = "OrdersAcknowledgeRequest",
          },
          response = {
            ["$ref"] = "OrdersAcknowledgeResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        advancetestorder = {
          description = "Sandbox only. Moves a test order from state \"`inProgress`\" to state \"`pendingShipment`\".",
          flatPath = "{merchantId}/testorders/{orderId}/advance",
          httpMethod = "POST",
          id = "content.orders.advancetestorder",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the test order to modify.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/testorders/{orderId}/advance",
          response = {
            ["$ref"] = "OrdersAdvanceTestOrderResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        cancel = {
          description = "Cancels all line items in an order, making a full refund.",
          flatPath = "{merchantId}/orders/{orderId}/cancel",
          httpMethod = "POST",
          id = "content.orders.cancel",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order to cancel.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/cancel",
          request = {
            ["$ref"] = "OrdersCancelRequest",
          },
          response = {
            ["$ref"] = "OrdersCancelResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        cancellineitem = {
          description = "Cancels a line item, making a full refund.",
          flatPath = "{merchantId}/orders/{orderId}/cancelLineItem",
          httpMethod = "POST",
          id = "content.orders.cancellineitem",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/cancelLineItem",
          request = {
            ["$ref"] = "OrdersCancelLineItemRequest",
          },
          response = {
            ["$ref"] = "OrdersCancelLineItemResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        canceltestorderbycustomer = {
          description = "Sandbox only. Cancels a test order for customer-initiated cancellation.",
          flatPath = "{merchantId}/testorders/{orderId}/cancelByCustomer",
          httpMethod = "POST",
          id = "content.orders.canceltestorderbycustomer",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the test order to cancel.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/testorders/{orderId}/cancelByCustomer",
          request = {
            ["$ref"] = "OrdersCancelTestOrderByCustomerRequest",
          },
          response = {
            ["$ref"] = "OrdersCancelTestOrderByCustomerResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        captureOrder = {
          description = "Capture funds from the customer for the current order total. This method should be called after the merchant verifies that they are able and ready to start shipping the order. This method blocks until a response is received from the payment processsor. If this method succeeds, the merchant is guaranteed to receive funds for the order after shipment. If the request fails, it can be retried or the order may be cancelled. This method cannot be called after the entire order is already shipped. A rejected error code is returned when the payment service provider has declined the charge. This indicates a problem between the PSP and either the merchant's or customer's account. Sometimes this error will be resolved by the customer. We recommend retrying these errors once per day or cancelling the order with reason `failedToCaptureFunds` if the items cannot be held.",
          flatPath = "{merchantId}/orders/{orderId}/captureOrder",
          httpMethod = "POST",
          id = "content.orders.captureOrder",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "Required. The ID of the Order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/captureOrder",
          request = {
            ["$ref"] = "CaptureOrderRequest",
          },
          response = {
            ["$ref"] = "CaptureOrderResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        createtestorder = {
          description = "Sandbox only. Creates a test order.",
          flatPath = "{merchantId}/testorders",
          httpMethod = "POST",
          id = "content.orders.createtestorder",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that should manage the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/testorders",
          request = {
            ["$ref"] = "OrdersCreateTestOrderRequest",
          },
          response = {
            ["$ref"] = "OrdersCreateTestOrderResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        createtestreturn = {
          description = "Sandbox only. Creates a test return.",
          flatPath = "{merchantId}/orders/{orderId}/testreturn",
          httpMethod = "POST",
          id = "content.orders.createtestreturn",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/testreturn",
          request = {
            ["$ref"] = "OrdersCreateTestReturnRequest",
          },
          response = {
            ["$ref"] = "OrdersCreateTestReturnResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves an order from your Merchant Center account.",
          flatPath = "{merchantId}/orders/{orderId}",
          httpMethod = "GET",
          id = "content.orders.get",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}",
          response = {
            ["$ref"] = "Order",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        getbymerchantorderid = {
          description = "Retrieves an order using merchant order ID.",
          flatPath = "{merchantId}/ordersbymerchantid/{merchantOrderId}",
          httpMethod = "GET",
          id = "content.orders.getbymerchantorderid",
          parameterOrder = {
            "merchantId",
            "merchantOrderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantOrderId = {
              description = "The merchant order ID to be looked for.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/ordersbymerchantid/{merchantOrderId}",
          response = {
            ["$ref"] = "OrdersGetByMerchantOrderIdResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        gettestordertemplate = {
          description = "Sandbox only. Retrieves an order template that can be used to quickly create a new order in sandbox.",
          flatPath = "{merchantId}/testordertemplates/{templateName}",
          httpMethod = "GET",
          id = "content.orders.gettestordertemplate",
          parameterOrder = {
            "merchantId",
            "templateName",
          },
          parameters = {
            country = {
              description = "The country of the template to retrieve. Defaults to \"`US`\".",
              location = "query",
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that should manage the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            templateName = {
              description = "The name of the template to retrieve.",
              enum = {
                "TEMPLATE1",
                "TEMPLATE2",
                "TEMPLATE1A",
                "TEMPLATE1B",
                "TEMPLATE3",
                "TEMPLATE4",
              },
              enumDescriptions = {
                "Get `template1`.",
                "Get `template2`.",
                "Get `template1A`.",
                "Get `template1B`.",
                "Get `template3`.",
                "Get `template4`.",
              },
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/testordertemplates/{templateName}",
          response = {
            ["$ref"] = "OrdersGetTestOrderTemplateResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        instorerefundlineitem = {
          description = "Deprecated. Notifies that item return and refund was handled directly by merchant outside of Google payments processing (for example, cash refund done in store). Note: We recommend calling the returnrefundlineitem method to refund in-store returns. We will issue the refund directly to the customer. This helps to prevent possible differences arising between merchant and Google transaction records. We also recommend having the point of sale system communicate with Google to ensure that customers do not receive a double refund by first refunding through Google then through an in-store return.",
          flatPath = "{merchantId}/orders/{orderId}/inStoreRefundLineItem",
          httpMethod = "POST",
          id = "content.orders.instorerefundlineitem",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/inStoreRefundLineItem",
          request = {
            ["$ref"] = "OrdersInStoreRefundLineItemRequest",
          },
          response = {
            ["$ref"] = "OrdersInStoreRefundLineItemResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the orders in your Merchant Center account.",
          flatPath = "{merchantId}/orders",
          httpMethod = "GET",
          id = "content.orders.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            acknowledged = {
              description = "Obtains orders that match the acknowledgement status. When set to true, obtains orders that have been acknowledged. When false, obtains orders that have not been acknowledged. We recommend using this filter set to `false`, in conjunction with the `acknowledge` call, such that only un-acknowledged orders are returned. ",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              description = "The maximum number of orders to return in the response, used for paging. The default value is 25 orders per page, and the maximum allowed value is 250 orders per page.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderBy = {
              description = "Order results by placement date in descending or ascending order. Acceptable values are: - placedDateAsc - placedDateDesc ",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            placedDateEnd = {
              description = "Obtains orders placed before this date (exclusively), in ISO 8601 format.",
              location = "query",
              type = "string",
            },
            placedDateStart = {
              description = "Obtains orders placed after this date (inclusively), in ISO 8601 format.",
              location = "query",
              type = "string",
            },
            statuses = {
              description = "Obtains orders that match any of the specified statuses. Note that `active` is a shortcut for `pendingShipment` and `partiallyShipped`, and `completed` is a shortcut for `shipped`, `partiallyDelivered`, `delivered`, `partiallyReturned`, `returned`, and `canceled`.",
              enum = {
                "ACTIVE",
                "COMPLETED",
                "CANCELED",
                "IN_PROGRESS",
                "PENDING_SHIPMENT",
                "PARTIALLY_SHIPPED",
                "SHIPPED",
                "PARTIALLY_DELIVERED",
                "DELIVERED",
                "PARTIALLY_RETURNED",
                "RETURNED",
              },
              enumDescriptions = {
                "Return orders with status `active`. The `active` status includes `pendingShipment` and `partiallyShipped` orders.",
                "Return orders with status `completed`. The `completed` status includes `shipped`, `partiallyDelivered`, `delivered`, `partiallyReturned`, `returned`, and `canceled` orders.",
                "Return orders with status `canceled`.",
                "Return orders with status `inProgress`.",
                "Return orders with status `pendingShipment`.",
                "Return orders with status `partiallyShipped`.",
                "Return orders with status `shipped`.",
                "Return orders with status `partiallyDelivered`.",
                "Return orders with status `delivered`.",
                "Return orders with status `partiallyReturned`.",
                "Return orders with status `returned`.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders",
          response = {
            ["$ref"] = "OrdersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        refunditem = {
          description = "Issues a partial or total refund for items and shipment.",
          flatPath = "{merchantId}/orders/{orderId}/refunditem",
          httpMethod = "POST",
          id = "content.orders.refunditem",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order to refund.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/refunditem",
          request = {
            ["$ref"] = "OrdersRefundItemRequest",
          },
          response = {
            ["$ref"] = "OrdersRefundItemResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        refundorder = {
          description = "Issues a partial or total refund for an order.",
          flatPath = "{merchantId}/orders/{orderId}/refundorder",
          httpMethod = "POST",
          id = "content.orders.refundorder",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order to refund.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/refundorder",
          request = {
            ["$ref"] = "OrdersRefundOrderRequest",
          },
          response = {
            ["$ref"] = "OrdersRefundOrderResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        rejectreturnlineitem = {
          description = "Rejects return on an line item.",
          flatPath = "{merchantId}/orders/{orderId}/rejectReturnLineItem",
          httpMethod = "POST",
          id = "content.orders.rejectreturnlineitem",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/rejectReturnLineItem",
          request = {
            ["$ref"] = "OrdersRejectReturnLineItemRequest",
          },
          response = {
            ["$ref"] = "OrdersRejectReturnLineItemResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        returnrefundlineitem = {
          description = "Returns and refunds a line item. Note that this method can only be called on fully shipped orders. The Orderreturns API is the preferred way to handle returns after you receive a return from a customer. You can use Orderreturns.list or Orderreturns.get to search for the return, and then use Orderreturns.processreturn to issue the refund. If the return cannot be found, then we recommend using this API to issue a refund.",
          flatPath = "{merchantId}/orders/{orderId}/returnRefundLineItem",
          httpMethod = "POST",
          id = "content.orders.returnrefundlineitem",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/returnRefundLineItem",
          request = {
            ["$ref"] = "OrdersReturnRefundLineItemRequest",
          },
          response = {
            ["$ref"] = "OrdersReturnRefundLineItemResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        setlineitemmetadata = {
          description = "Sets (or overrides if it already exists) merchant provided annotations in the form of key-value pairs. A common use case would be to supply us with additional structured information about a line item that cannot be provided through other methods. Submitted key-value pairs can be retrieved as part of the orders resource.",
          flatPath = "{merchantId}/orders/{orderId}/setLineItemMetadata",
          httpMethod = "POST",
          id = "content.orders.setlineitemmetadata",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/setLineItemMetadata",
          request = {
            ["$ref"] = "OrdersSetLineItemMetadataRequest",
          },
          response = {
            ["$ref"] = "OrdersSetLineItemMetadataResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        shiplineitems = {
          description = "Marks line item(s) as shipped.",
          flatPath = "{merchantId}/orders/{orderId}/shipLineItems",
          httpMethod = "POST",
          id = "content.orders.shiplineitems",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/shipLineItems",
          request = {
            ["$ref"] = "OrdersShipLineItemsRequest",
          },
          response = {
            ["$ref"] = "OrdersShipLineItemsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        updatelineitemshippingdetails = {
          description = "Updates ship by and delivery by dates for a line item.",
          flatPath = "{merchantId}/orders/{orderId}/updateLineItemShippingDetails",
          httpMethod = "POST",
          id = "content.orders.updatelineitemshippingdetails",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/updateLineItemShippingDetails",
          request = {
            ["$ref"] = "OrdersUpdateLineItemShippingDetailsRequest",
          },
          response = {
            ["$ref"] = "OrdersUpdateLineItemShippingDetailsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        updatemerchantorderid = {
          description = "Updates the merchant order ID for a given order.",
          flatPath = "{merchantId}/orders/{orderId}/updateMerchantOrderId",
          httpMethod = "POST",
          id = "content.orders.updatemerchantorderid",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/updateMerchantOrderId",
          request = {
            ["$ref"] = "OrdersUpdateMerchantOrderIdRequest",
          },
          response = {
            ["$ref"] = "OrdersUpdateMerchantOrderIdResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        updateshipment = {
          description = "Updates a shipment's status, carrier, and/or tracking ID.",
          flatPath = "{merchantId}/orders/{orderId}/updateShipment",
          httpMethod = "POST",
          id = "content.orders.updateshipment",
          parameterOrder = {
            "merchantId",
            "orderId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that manages the order. This cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            orderId = {
              description = "The ID of the order.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/orders/{orderId}/updateShipment",
          request = {
            ["$ref"] = "OrdersUpdateShipmentRequest",
          },
          response = {
            ["$ref"] = "OrdersUpdateShipmentResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    ordertrackingsignals = {
      methods = {
        create = {
          description = "Creates new order tracking signal.",
          flatPath = "{merchantId}/ordertrackingsignals",
          httpMethod = "POST",
          id = "content.ordertrackingsignals.create",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the merchant for which the order signal is created.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/ordertrackingsignals",
          request = {
            ["$ref"] = "OrderTrackingSignal",
          },
          response = {
            ["$ref"] = "OrderTrackingSignal",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    pos = {
      methods = {
        custombatch = {
          description = "Batches multiple POS-related calls in a single request.",
          flatPath = "pos/batch",
          httpMethod = "POST",
          id = "content.pos.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "pos/batch",
          request = {
            ["$ref"] = "PosCustomBatchRequest",
          },
          response = {
            ["$ref"] = "PosCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a store for the given merchant.",
          flatPath = "{merchantId}/pos/{targetMerchantId}/store/{storeCode}",
          httpMethod = "DELETE",
          id = "content.pos.delete",
          parameterOrder = {
            "merchantId",
            "targetMerchantId",
            "storeCode",
          },
          parameters = {
            merchantId = {
              description = "The ID of the POS or inventory data provider.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            storeCode = {
              description = "A store code that is unique per merchant.",
              location = "path",
              required = true,
              type = "string",
            },
            targetMerchantId = {
              description = "The ID of the target merchant.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/pos/{targetMerchantId}/store/{storeCode}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves information about the given store.",
          flatPath = "{merchantId}/pos/{targetMerchantId}/store/{storeCode}",
          httpMethod = "GET",
          id = "content.pos.get",
          parameterOrder = {
            "merchantId",
            "targetMerchantId",
            "storeCode",
          },
          parameters = {
            merchantId = {
              description = "The ID of the POS or inventory data provider.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            storeCode = {
              description = "A store code that is unique per merchant.",
              location = "path",
              required = true,
              type = "string",
            },
            targetMerchantId = {
              description = "The ID of the target merchant.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/pos/{targetMerchantId}/store/{storeCode}",
          response = {
            ["$ref"] = "PosStore",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        insert = {
          description = "Creates a store for the given merchant.",
          flatPath = "{merchantId}/pos/{targetMerchantId}/store",
          httpMethod = "POST",
          id = "content.pos.insert",
          parameterOrder = {
            "merchantId",
            "targetMerchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the POS or inventory data provider.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            targetMerchantId = {
              description = "The ID of the target merchant.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/pos/{targetMerchantId}/store",
          request = {
            ["$ref"] = "PosStore",
          },
          response = {
            ["$ref"] = "PosStore",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        inventory = {
          description = "Submit inventory for the given merchant.",
          flatPath = "{merchantId}/pos/{targetMerchantId}/inventory",
          httpMethod = "POST",
          id = "content.pos.inventory",
          parameterOrder = {
            "merchantId",
            "targetMerchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the POS or inventory data provider.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            targetMerchantId = {
              description = "The ID of the target merchant.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/pos/{targetMerchantId}/inventory",
          request = {
            ["$ref"] = "PosInventoryRequest",
          },
          response = {
            ["$ref"] = "PosInventoryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the stores of the target merchant.",
          flatPath = "{merchantId}/pos/{targetMerchantId}/store",
          httpMethod = "GET",
          id = "content.pos.list",
          parameterOrder = {
            "merchantId",
            "targetMerchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the POS or inventory data provider.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            targetMerchantId = {
              description = "The ID of the target merchant.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/pos/{targetMerchantId}/store",
          response = {
            ["$ref"] = "PosListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        sale = {
          description = "Submit a sale event for the given merchant.",
          flatPath = "{merchantId}/pos/{targetMerchantId}/sale",
          httpMethod = "POST",
          id = "content.pos.sale",
          parameterOrder = {
            "merchantId",
            "targetMerchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the POS or inventory data provider.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            targetMerchantId = {
              description = "The ID of the target merchant.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/pos/{targetMerchantId}/sale",
          request = {
            ["$ref"] = "PosSaleRequest",
          },
          response = {
            ["$ref"] = "PosSaleResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    productdeliverytime = {
      methods = {
        create = {
          description = "Creates or updates the delivery time of a product.",
          flatPath = "{merchantId}/productdeliverytime",
          httpMethod = "POST",
          id = "content.productdeliverytime.create",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The Google merchant ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/productdeliverytime",
          request = {
            ["$ref"] = "ProductDeliveryTime",
          },
          response = {
            ["$ref"] = "ProductDeliveryTime",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes the delivery time of a product.",
          flatPath = "{merchantId}/productdeliverytime/{productId}",
          httpMethod = "DELETE",
          id = "content.productdeliverytime.delete",
          parameterOrder = {
            "merchantId",
            "productId",
          },
          parameters = {
            merchantId = {
              description = "Required. The Google merchant ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "Required. The Content API ID of the product, in the form `channel:contentLanguage:targetCountry:offerId`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/productdeliverytime/{productId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Gets `productDeliveryTime` by `productId`.",
          flatPath = "{merchantId}/productdeliverytime/{productId}",
          httpMethod = "GET",
          id = "content.productdeliverytime.get",
          parameterOrder = {
            "merchantId",
            "productId",
          },
          parameters = {
            merchantId = {
              description = "Required. The Google merchant ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "Required. The Content API ID of the product, in the form `channel:contentLanguage:targetCountry:offerId`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/productdeliverytime/{productId}",
          response = {
            ["$ref"] = "ProductDeliveryTime",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    products = {
      methods = {
        custombatch = {
          description = "Retrieves, inserts, and deletes multiple products in a single request.",
          flatPath = "products/batch",
          httpMethod = "POST",
          id = "content.products.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "products/batch",
          request = {
            ["$ref"] = "ProductsCustomBatchRequest",
          },
          response = {
            ["$ref"] = "ProductsCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a product from your Merchant Center account.",
          flatPath = "{merchantId}/products/{productId}",
          httpMethod = "DELETE",
          id = "content.products.delete",
          parameterOrder = {
            "merchantId",
            "productId",
          },
          parameters = {
            feedId = {
              description = "The Content API Supplemental Feed ID. If present then product deletion applies to the data in a supplemental feed. If absent, entire product will be deleted.",
              format = "uint64",
              location = "query",
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The REST ID of the product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/products/{productId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves a product from your Merchant Center account.",
          flatPath = "{merchantId}/products/{productId}",
          httpMethod = "GET",
          id = "content.products.get",
          parameterOrder = {
            "merchantId",
            "productId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The REST ID of the product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/products/{productId}",
          response = {
            ["$ref"] = "Product",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        insert = {
          description = "Uploads a product to your Merchant Center account. If an item with the same channel, contentLanguage, offerId, and targetCountry already exists, this method updates that entry.",
          flatPath = "{merchantId}/products",
          httpMethod = "POST",
          id = "content.products.insert",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            feedId = {
              description = "The Content API Supplemental Feed ID. If present then product insertion applies to the data in a supplemental feed.",
              format = "uint64",
              location = "query",
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/products",
          request = {
            ["$ref"] = "Product",
          },
          response = {
            ["$ref"] = "Product",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the products in your Merchant Center account. The response might contain fewer items than specified by maxResults. Rely on nextPageToken to determine if there are more items to be requested.",
          flatPath = "{merchantId}/products",
          httpMethod = "GET",
          id = "content.products.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            maxResults = {
              description = "The maximum number of products to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the account that contains the products. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/products",
          response = {
            ["$ref"] = "ProductsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        update = {
          description = "Updates an existing product in your Merchant Center account. Only updates attributes provided in the request.",
          flatPath = "{merchantId}/products/{productId}",
          httpMethod = "PATCH",
          id = "content.products.update",
          parameterOrder = {
            "merchantId",
            "productId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The REST ID of the product for which to update.",
              location = "path",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The comma-separated list of product attributes to be updated. Example: `\"title,salePrice\"`. Attributes specified in the update mask without a value specified in the body will be deleted from the product. *You must specify the update mask to delete attributes.* Only top-level product attributes can be updated. If not defined, product attributes with set values will be updated and other attributes will stay unchanged.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/products/{productId}",
          request = {
            ["$ref"] = "Product",
          },
          response = {
            ["$ref"] = "Product",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    productstatuses = {
      methods = {
        custombatch = {
          description = "Gets the statuses of multiple products in a single request.",
          flatPath = "productstatuses/batch",
          httpMethod = "POST",
          id = "content.productstatuses.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "productstatuses/batch",
          request = {
            ["$ref"] = "ProductstatusesCustomBatchRequest",
          },
          response = {
            ["$ref"] = "ProductstatusesCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Gets the status of a product from your Merchant Center account.",
          flatPath = "{merchantId}/productstatuses/{productId}",
          httpMethod = "GET",
          id = "content.productstatuses.get",
          parameterOrder = {
            "merchantId",
            "productId",
          },
          parameters = {
            destinations = {
              description = "If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.",
              location = "query",
              repeated = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The REST ID of the product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/productstatuses/{productId}",
          response = {
            ["$ref"] = "ProductStatus",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the statuses of the products in your Merchant Center account.",
          flatPath = "{merchantId}/productstatuses",
          httpMethod = "GET",
          id = "content.productstatuses.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            destinations = {
              description = "If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of product statuses to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the account that contains the products. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/productstatuses",
          response = {
            ["$ref"] = "ProductstatusesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
      resources = {
        repricingreports = {
          methods = {
            list = {
              description = "Lists the metrics report for a given Repricing product.",
              flatPath = "{merchantId}/productstatuses/{productId}/repricingreports",
              httpMethod = "GET",
              id = "content.productstatuses.repricingreports.list",
              parameterOrder = {
                "merchantId",
                "productId",
              },
              parameters = {
                endDate = {
                  description = "Gets Repricing reports on and before this date in the merchant's timezone. You can only retrieve data up to 7 days ago (default) or earlier. Format is YYYY-MM-DD.",
                  location = "query",
                  type = "string",
                },
                merchantId = {
                  description = "Required. Id of the merchant who owns the Repricing rule.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of days of reports to return. There can be more than one rule report returned per day. For example, if 3 rule types got applied to the same product within a 24-hour period, then a page_size of 1 will return 3 rule reports. The page size defaults to 50 and values above 1000 are coerced to 1000. This service may return fewer days of reports than this value, for example, if the time between your start and end date is less than the page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                productId = {
                  description = "Required. Id of the Repricing product. Also known as the [REST_ID](https://developers.google.com/shopping-content/reference/rest/v2.1/products#Product.FIELDS.id)",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ruleId = {
                  description = "Id of the Repricing rule. If specified, only gets this rule's reports.",
                  location = "query",
                  type = "string",
                },
                startDate = {
                  description = "Gets Repricing reports on and after this date in the merchant's timezone, up to one year ago. Do not use a start date later than 7 days ago (default). Format is YYYY-MM-DD.",
                  location = "query",
                  type = "string",
                },
              },
              path = "{merchantId}/productstatuses/{productId}/repricingreports",
              response = {
                ["$ref"] = "ListRepricingProductReportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
          },
        },
      },
    },
    promotions = {
      methods = {
        create = {
          description = "Inserts a promotion for your Merchant Center account. If the promotion already exists, then it updates the promotion instead. To [end or delete] (https://developers.google.com/shopping-content/guides/promotions#end_a_promotion) a promotion update the time period of the promotion to a time that has already passed.",
          flatPath = "{merchantId}/promotions",
          httpMethod = "POST",
          id = "content.promotions.create",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account that contains the collection.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/promotions",
          request = {
            ["$ref"] = "Promotion",
          },
          response = {
            ["$ref"] = "Promotion",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves a promotion from your Merchant Center account.",
          flatPath = "{merchantId}/promotions/{id}",
          httpMethod = "GET",
          id = "content.promotions.get",
          parameterOrder = {
            "merchantId",
            "id",
          },
          parameters = {
            id = {
              description = "Required. REST ID of the promotion to retrieve.",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "Required. The ID of the account that contains the collection.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/promotions/{id}",
          response = {
            ["$ref"] = "Promotion",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    pubsubnotificationsettings = {
      methods = {
        get = {
          description = "Retrieves a Merchant Center account's pubsub notification settings.",
          flatPath = "{merchantId}/pubsubnotificationsettings",
          httpMethod = "GET",
          id = "content.pubsubnotificationsettings.get",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account for which to get pubsub notification settings.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/pubsubnotificationsettings",
          response = {
            ["$ref"] = "PubsubNotificationSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        update = {
          description = "Register a Merchant Center account for pubsub notifications. Note that cloud topic name shouldn't be provided as part of the request.",
          flatPath = "{merchantId}/pubsubnotificationsettings",
          httpMethod = "PUT",
          id = "content.pubsubnotificationsettings.update",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/pubsubnotificationsettings",
          request = {
            ["$ref"] = "PubsubNotificationSettings",
          },
          response = {
            ["$ref"] = "PubsubNotificationSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    quotas = {
      methods = {
        list = {
          description = "Lists the daily call quota and usage per method for your Merchant Center account.",
          flatPath = "{merchantId}/quotas",
          httpMethod = "GET",
          id = "content.quotas.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account that has quota. This account must be an admin.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The maximum number of quotas to return in the response, used for paging. Defaults to 500; values above 1000 will be coerced to 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided the page token.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/quotas",
          response = {
            ["$ref"] = "ListMethodQuotasResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    regionalinventory = {
      methods = {
        custombatch = {
          description = "Updates regional inventory for multiple products or regions in a single request.",
          flatPath = "regionalinventory/batch",
          httpMethod = "POST",
          id = "content.regionalinventory.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "regionalinventory/batch",
          request = {
            ["$ref"] = "RegionalinventoryCustomBatchRequest",
          },
          response = {
            ["$ref"] = "RegionalinventoryCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        insert = {
          description = "Updates the regional inventory of a product in your Merchant Center account. If a regional inventory with the same region ID already exists, this method updates that entry.",
          flatPath = "{merchantId}/products/{productId}/regionalinventory",
          httpMethod = "POST",
          id = "content.regionalinventory.insert",
          parameterOrder = {
            "merchantId",
            "productId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account that contains the product. This account cannot be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The REST ID of the product for which to update the regional inventory.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/products/{productId}/regionalinventory",
          request = {
            ["$ref"] = "RegionalInventory",
          },
          response = {
            ["$ref"] = "RegionalInventory",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    regions = {
      methods = {
        create = {
          description = "Creates a region definition in your Merchant Center account.",
          flatPath = "{merchantId}/regions",
          httpMethod = "POST",
          id = "content.regions.create",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to create region definition.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionId = {
              description = "Required. The id of the region to create.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/regions",
          request = {
            ["$ref"] = "Region",
          },
          response = {
            ["$ref"] = "Region",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a region definition from your Merchant Center account.",
          flatPath = "{merchantId}/regions/{regionId}",
          httpMethod = "DELETE",
          id = "content.regions.delete",
          parameterOrder = {
            "merchantId",
            "regionId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to delete region definition.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionId = {
              description = "Required. The id of the region to delete.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/regions/{regionId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves a region defined in your Merchant Center account.",
          flatPath = "{merchantId}/regions/{regionId}",
          httpMethod = "GET",
          id = "content.regions.get",
          parameterOrder = {
            "merchantId",
            "regionId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to retrieve region definition.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionId = {
              description = "Required. The id of the region to retrieve.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/regions/{regionId}",
          response = {
            ["$ref"] = "Region",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the regions in your Merchant Center account.",
          flatPath = "{merchantId}/regions",
          httpMethod = "GET",
          id = "content.regions.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to list region definitions.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The maximum number of regions to return. The service may return fewer than this value. If unspecified, at most 50 rules will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A page token, received from a previous `ListRegions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListRegions` must match the call that provided the page token.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/regions",
          response = {
            ["$ref"] = "ListRegionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        patch = {
          description = "Updates a region definition in your Merchant Center account.",
          flatPath = "{merchantId}/regions/{regionId}",
          httpMethod = "PATCH",
          id = "content.regions.patch",
          parameterOrder = {
            "merchantId",
            "regionId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to update region definition.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionId = {
              description = "Required. The id of the region to update.",
              location = "path",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. The comma-separated field mask indicating the fields to update. Example: `\"displayName,postalCodeArea.regionCode\"`.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/regions/{regionId}",
          request = {
            ["$ref"] = "Region",
          },
          response = {
            ["$ref"] = "Region",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    reports = {
      methods = {
        search = {
          description = "Retrieves merchant performance mertrics matching the search query and optionally segmented by selected dimensions.",
          flatPath = "{merchantId}/reports/search",
          httpMethod = "POST",
          id = "content.reports.search",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. Id of the merchant making the call. Must be a standalone account or an MCA subaccount.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/reports/search",
          request = {
            ["$ref"] = "SearchRequest",
          },
          response = {
            ["$ref"] = "SearchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    repricingrules = {
      methods = {
        create = {
          description = "Creates a repricing rule for your Merchant Center account.",
          flatPath = "{merchantId}/repricingrules",
          httpMethod = "POST",
          id = "content.repricingrules.create",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant who owns the repricing rule.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            ruleId = {
              description = "Required. The id of the rule to create.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/repricingrules",
          request = {
            ["$ref"] = "RepricingRule",
          },
          response = {
            ["$ref"] = "RepricingRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a repricing rule in your Merchant Center account.",
          flatPath = "{merchantId}/repricingrules/{ruleId}",
          httpMethod = "DELETE",
          id = "content.repricingrules.delete",
          parameterOrder = {
            "merchantId",
            "ruleId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant who owns the repricing rule.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            ruleId = {
              description = "Required. The id of the rule to Delete.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/repricingrules/{ruleId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves a repricing rule from your Merchant Center account.",
          flatPath = "{merchantId}/repricingrules/{ruleId}",
          httpMethod = "GET",
          id = "content.repricingrules.get",
          parameterOrder = {
            "merchantId",
            "ruleId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant who owns the repricing rule.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            ruleId = {
              description = "Required. The id of the rule to retrieve.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/repricingrules/{ruleId}",
          response = {
            ["$ref"] = "RepricingRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the repricing rules in your Merchant Center account.",
          flatPath = "{merchantId}/repricingrules",
          httpMethod = "GET",
          id = "content.repricingrules.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            countryCode = {
              description = "[CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) (e.g. \"US\"), used as a filter on repricing rules.",
              location = "query",
              type = "string",
            },
            languageCode = {
              description = "The two-letter ISO 639-1 language code associated with the repricing rule, used as a filter.",
              location = "query",
              type = "string",
            },
            merchantId = {
              description = "Required. The id of the merchant who owns the repricing rule.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The maximum number of repricing rules to return. The service may return fewer than this value. If unspecified, at most 50 rules will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A page token, received from a previous `ListRepricingRules` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListRepricingRules` must match the call that provided the page token.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/repricingrules",
          response = {
            ["$ref"] = "ListRepricingRulesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        patch = {
          description = "Updates a repricing rule in your Merchant Center account. All mutable fields will be overwritten in each update request. In each update, you must provide all required mutable fields, or an error will be thrown. If you do not provide an optional field in the update request, if that field currently exists, it will be deleted from the rule.",
          flatPath = "{merchantId}/repricingrules/{ruleId}",
          httpMethod = "PATCH",
          id = "content.repricingrules.patch",
          parameterOrder = {
            "merchantId",
            "ruleId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant who owns the repricing rule.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            ruleId = {
              description = "Required. The id of the rule to update.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/repricingrules/{ruleId}",
          request = {
            ["$ref"] = "RepricingRule",
          },
          response = {
            ["$ref"] = "RepricingRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
      resources = {
        repricingreports = {
          methods = {
            list = {
              description = "Lists the metrics report for a given Repricing rule.",
              flatPath = "{merchantId}/repricingrules/{ruleId}/repricingreports",
              httpMethod = "GET",
              id = "content.repricingrules.repricingreports.list",
              parameterOrder = {
                "merchantId",
                "ruleId",
              },
              parameters = {
                endDate = {
                  description = "Gets Repricing reports on and before this date in the merchant's timezone. You can only retrieve data up to 7 days ago (default) or earlier. Format: YYYY-MM-DD.",
                  location = "query",
                  type = "string",
                },
                merchantId = {
                  description = "Required. Id of the merchant who owns the Repricing rule.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum number of daily reports to return. Each report includes data from a single 24-hour period. The page size defaults to 50 and values above 1000 are coerced to 1000. This service may return fewer days than this value, for example, if the time between your start and end date is less than page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token (if provided) to retrieve the subsequent page. All other parameters must match the original call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                ruleId = {
                  description = "Required. Id of the Repricing rule.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                startDate = {
                  description = "Gets Repricing reports on and after this date in the merchant's timezone, up to one year ago. Do not use a start date later than 7 days ago (default). Format: YYYY-MM-DD.",
                  location = "query",
                  type = "string",
                },
              },
              path = "{merchantId}/repricingrules/{ruleId}/repricingreports",
              response = {
                ["$ref"] = "ListRepricingRuleReportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/content",
              },
            },
          },
        },
      },
    },
    returnaddress = {
      methods = {
        custombatch = {
          description = "Batches multiple return address related calls in a single request.",
          flatPath = "returnaddress/batch",
          httpMethod = "POST",
          id = "content.returnaddress.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "returnaddress/batch",
          request = {
            ["$ref"] = "ReturnaddressCustomBatchRequest",
          },
          response = {
            ["$ref"] = "ReturnaddressCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a return address for the given Merchant Center account.",
          flatPath = "{merchantId}/returnaddress/{returnAddressId}",
          httpMethod = "DELETE",
          id = "content.returnaddress.delete",
          parameterOrder = {
            "merchantId",
            "returnAddressId",
          },
          parameters = {
            merchantId = {
              description = "The Merchant Center account from which to delete the given return address.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            returnAddressId = {
              description = "Return address ID generated by Google.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnaddress/{returnAddressId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Gets a return address of the Merchant Center account.",
          flatPath = "{merchantId}/returnaddress/{returnAddressId}",
          httpMethod = "GET",
          id = "content.returnaddress.get",
          parameterOrder = {
            "merchantId",
            "returnAddressId",
          },
          parameters = {
            merchantId = {
              description = "The Merchant Center account to get a return address for.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            returnAddressId = {
              description = "Return address ID generated by Google.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnaddress/{returnAddressId}",
          response = {
            ["$ref"] = "ReturnAddress",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        insert = {
          description = "Inserts a return address for the Merchant Center account.",
          flatPath = "{merchantId}/returnaddress",
          httpMethod = "POST",
          id = "content.returnaddress.insert",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The Merchant Center account to insert a return address for.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnaddress",
          request = {
            ["$ref"] = "ReturnAddress",
          },
          response = {
            ["$ref"] = "ReturnAddress",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the return addresses of the Merchant Center account.",
          flatPath = "{merchantId}/returnaddress",
          httpMethod = "GET",
          id = "content.returnaddress.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            country = {
              description = "List only return addresses applicable to the given country of sale. When omitted, all return addresses are listed.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of addresses in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The Merchant Center account to list return addresses for.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/returnaddress",
          response = {
            ["$ref"] = "ReturnaddressListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    returnpolicy = {
      methods = {
        custombatch = {
          description = "Batches multiple return policy related calls in a single request.",
          flatPath = "returnpolicy/batch",
          httpMethod = "POST",
          id = "content.returnpolicy.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "returnpolicy/batch",
          request = {
            ["$ref"] = "ReturnpolicyCustomBatchRequest",
          },
          response = {
            ["$ref"] = "ReturnpolicyCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes a return policy for the given Merchant Center account.",
          flatPath = "{merchantId}/returnpolicy/{returnPolicyId}",
          httpMethod = "DELETE",
          id = "content.returnpolicy.delete",
          parameterOrder = {
            "merchantId",
            "returnPolicyId",
          },
          parameters = {
            merchantId = {
              description = "The Merchant Center account from which to delete the given return policy.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            returnPolicyId = {
              description = "Return policy ID generated by Google.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicy/{returnPolicyId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Gets a return policy of the Merchant Center account.",
          flatPath = "{merchantId}/returnpolicy/{returnPolicyId}",
          httpMethod = "GET",
          id = "content.returnpolicy.get",
          parameterOrder = {
            "merchantId",
            "returnPolicyId",
          },
          parameters = {
            merchantId = {
              description = "The Merchant Center account to get a return policy for.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            returnPolicyId = {
              description = "Return policy ID generated by Google.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicy/{returnPolicyId}",
          response = {
            ["$ref"] = "ReturnPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        insert = {
          description = "Inserts a return policy for the Merchant Center account.",
          flatPath = "{merchantId}/returnpolicy",
          httpMethod = "POST",
          id = "content.returnpolicy.insert",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The Merchant Center account to insert a return policy for.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicy",
          request = {
            ["$ref"] = "ReturnPolicy",
          },
          response = {
            ["$ref"] = "ReturnPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the return policies of the Merchant Center account.",
          flatPath = "{merchantId}/returnpolicy",
          httpMethod = "GET",
          id = "content.returnpolicy.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The Merchant Center account to list return policies for.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicy",
          response = {
            ["$ref"] = "ReturnpolicyListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    returnpolicyonline = {
      methods = {
        create = {
          description = "Creates a new return policy.",
          flatPath = "{merchantId}/returnpolicyonline",
          httpMethod = "POST",
          id = "content.returnpolicyonline.create",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to retrieve the return policy online object.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicyonline",
          request = {
            ["$ref"] = "ReturnPolicyOnline",
          },
          response = {
            ["$ref"] = "ReturnPolicyOnline",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        delete = {
          description = "Deletes an existing return policy.",
          flatPath = "{merchantId}/returnpolicyonline/{returnPolicyId}",
          httpMethod = "DELETE",
          id = "content.returnpolicyonline.delete",
          parameterOrder = {
            "merchantId",
            "returnPolicyId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to retrieve the return policy online object.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            returnPolicyId = {
              description = "Required. The id of the return policy to delete.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicyonline/{returnPolicyId}",
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Gets an existing return policy.",
          flatPath = "{merchantId}/returnpolicyonline/{returnPolicyId}",
          httpMethod = "GET",
          id = "content.returnpolicyonline.get",
          parameterOrder = {
            "merchantId",
            "returnPolicyId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to retrieve the return policy online object.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            returnPolicyId = {
              description = "Required. The id of the return policy to retrieve.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicyonline/{returnPolicyId}",
          response = {
            ["$ref"] = "ReturnPolicyOnline",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists all existing return policies.",
          flatPath = "{merchantId}/returnpolicyonline",
          httpMethod = "GET",
          id = "content.returnpolicyonline.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to retrieve the return policy online object.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicyonline",
          response = {
            ["$ref"] = "ListReturnPolicyOnlineResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        patch = {
          description = "Updates an existing return policy.",
          flatPath = "{merchantId}/returnpolicyonline/{returnPolicyId}",
          httpMethod = "PATCH",
          id = "content.returnpolicyonline.patch",
          parameterOrder = {
            "merchantId",
            "returnPolicyId",
          },
          parameters = {
            merchantId = {
              description = "Required. The id of the merchant for which to retrieve the return policy online object.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            returnPolicyId = {
              description = "Required. The id of the return policy to update.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/returnpolicyonline/{returnPolicyId}",
          request = {
            ["$ref"] = "ReturnPolicyOnline",
          },
          response = {
            ["$ref"] = "ReturnPolicyOnline",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    settlementreports = {
      methods = {
        get = {
          description = "Retrieves a settlement report from your Merchant Center account.",
          flatPath = "{merchantId}/settlementreports/{settlementId}",
          httpMethod = "GET",
          id = "content.settlementreports.get",
          parameterOrder = {
            "merchantId",
            "settlementId",
          },
          parameters = {
            merchantId = {
              description = "The Merchant Center account of the settlement report.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            settlementId = {
              description = "The Google-provided ID of the settlement.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/settlementreports/{settlementId}",
          response = {
            ["$ref"] = "SettlementReport",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Retrieves a list of settlement reports from your Merchant Center account.",
          flatPath = "{merchantId}/settlementreports",
          httpMethod = "GET",
          id = "content.settlementreports.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            maxResults = {
              description = "The maximum number of settlements to return in the response, used for paging. The default value is 200 returns per page, and the maximum allowed value is 5000 returns per page.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The Merchant Center account to list settlements for.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            transferEndDate = {
              description = "Obtains settlements which have transactions before this date (inclusively), in ISO 8601 format.",
              location = "query",
              type = "string",
            },
            transferStartDate = {
              description = "Obtains settlements which have transactions after this date (inclusively), in ISO 8601 format.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/settlementreports",
          response = {
            ["$ref"] = "SettlementreportsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    settlementtransactions = {
      methods = {
        list = {
          description = "Retrieves a list of transactions for the settlement.",
          flatPath = "{merchantId}/settlementreports/{settlementId}/transactions",
          httpMethod = "GET",
          id = "content.settlementtransactions.list",
          parameterOrder = {
            "merchantId",
            "settlementId",
          },
          parameters = {
            maxResults = {
              description = "The maximum number of transactions to return in the response, used for paging. The default value is 200 transactions per page, and the maximum allowed value is 5000 transactions per page.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The Merchant Center account to list transactions for.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
            settlementId = {
              description = "The Google-provided ID of the settlement.",
              location = "path",
              required = true,
              type = "string",
            },
            transactionIds = {
              description = "The list of transactions to return. If not set, all transactions will be returned.",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "{merchantId}/settlementreports/{settlementId}/transactions",
          response = {
            ["$ref"] = "SettlementtransactionsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    shippingsettings = {
      methods = {
        custombatch = {
          description = "Retrieves and updates the shipping settings of multiple accounts in a single request.",
          flatPath = "shippingsettings/batch",
          httpMethod = "POST",
          id = "content.shippingsettings.custombatch",
          parameterOrder = {},
          parameters = {},
          path = "shippingsettings/batch",
          request = {
            ["$ref"] = "ShippingsettingsCustomBatchRequest",
          },
          response = {
            ["$ref"] = "ShippingsettingsCustomBatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        get = {
          description = "Retrieves the shipping settings of the account.",
          flatPath = "{merchantId}/shippingsettings/{accountId}",
          httpMethod = "GET",
          id = "content.shippingsettings.get",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to get/update shipping settings.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/shippingsettings/{accountId}",
          response = {
            ["$ref"] = "ShippingSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        getsupportedcarriers = {
          description = "Retrieves supported carriers and carrier services for an account.",
          flatPath = "{merchantId}/supportedCarriers",
          httpMethod = "GET",
          id = "content.shippingsettings.getsupportedcarriers",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account for which to retrieve the supported carriers.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/supportedCarriers",
          response = {
            ["$ref"] = "ShippingsettingsGetSupportedCarriersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        getsupportedholidays = {
          description = "Retrieves supported holidays for an account.",
          flatPath = "{merchantId}/supportedHolidays",
          httpMethod = "GET",
          id = "content.shippingsettings.getsupportedholidays",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account for which to retrieve the supported holidays.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/supportedHolidays",
          response = {
            ["$ref"] = "ShippingsettingsGetSupportedHolidaysResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        getsupportedpickupservices = {
          description = "Retrieves supported pickup services for an account.",
          flatPath = "{merchantId}/supportedPickupServices",
          httpMethod = "GET",
          id = "content.shippingsettings.getsupportedpickupservices",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "The ID of the account for which to retrieve the supported pickup services.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/supportedPickupServices",
          response = {
            ["$ref"] = "ShippingsettingsGetSupportedPickupServicesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        list = {
          description = "Lists the shipping settings of the sub-accounts in your Merchant Center account.",
          flatPath = "{merchantId}/shippingsettings",
          httpMethod = "GET",
          id = "content.shippingsettings.list",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            maxResults = {
              description = "The maximum number of shipping settings to return in the response, used for paging.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            merchantId = {
              description = "The ID of the managing account. This must be a multi-client account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "{merchantId}/shippingsettings",
          response = {
            ["$ref"] = "ShippingsettingsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        update = {
          description = "Updates the shipping settings of the account. Any fields that are not provided are deleted from the resource.",
          flatPath = "{merchantId}/shippingsettings/{accountId}",
          httpMethod = "PUT",
          id = "content.shippingsettings.update",
          parameterOrder = {
            "merchantId",
            "accountId",
          },
          parameters = {
            accountId = {
              description = "The ID of the account for which to get/update shipping settings.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
            merchantId = {
              description = "The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and `accountId` must be the ID of a sub-account of this account.",
              format = "uint64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/shippingsettings/{accountId}",
          request = {
            ["$ref"] = "ShippingSettings",
          },
          response = {
            ["$ref"] = "ShippingSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
    shoppingadsprogram = {
      methods = {
        get = {
          description = "Retrieves the status and review eligibility for the Shopping Ads program. Returns errors and warnings if they require action to resolve, will become disapprovals, or impact impressions. Use `accountstatuses` to view all issues for an account.",
          flatPath = "{merchantId}/shoppingadsprogram",
          httpMethod = "GET",
          id = "content.shoppingadsprogram.get",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/shoppingadsprogram",
          response = {
            ["$ref"] = "ShoppingAdsProgramStatus",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
        requestreview = {
          description = "Requests a review of Shopping ads in a specific region. This method is only available to selected merchants.",
          flatPath = "{merchantId}/shoppingadsprogram/requestreview",
          httpMethod = "POST",
          id = "content.shoppingadsprogram.requestreview",
          parameterOrder = {
            "merchantId",
          },
          parameters = {
            merchantId = {
              description = "Required. The ID of the account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "{merchantId}/shoppingadsprogram/requestreview",
          request = {
            ["$ref"] = "RequestReviewShoppingAdsRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/content",
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://shoppingcontent.googleapis.com/",
  schemas = {
    Account = {
      description = "Account data. After the creation of a new account it may take a few minutes before it's fully operational. The methods delete, insert, and update require the admin role.",
      id = "Account",
      properties = {
        accountManagement = {
          description = "Output only. How the account is managed. Acceptable values are: - \"`manual`\" - \"`automatic`\" ",
          readOnly = true,
          type = "string",
        },
        adsLinks = {
          description = "Linked Ads accounts that are active or pending approval. To create a new link request, add a new link with status `active` to the list. It will remain in a `pending` state until approved or rejected either in the Ads interface or through the Google Ads API. To delete an active link, or to cancel a link request, remove it from the list.",
          items = {
            ["$ref"] = "AccountAdsLink",
          },
          type = "array",
        },
        adultContent = {
          description = "Indicates whether the merchant sells adult content.",
          type = "boolean",
        },
        automaticImprovements = {
          ["$ref"] = "AccountAutomaticImprovements",
          description = "The automatic improvements of the account can be used to automatically update items, improve images and shipping. Each section inside AutomaticImprovements is updated separately.",
        },
        automaticLabelIds = {
          description = "Automatically created label IDs that are assigned to the account by CSS Center.",
          items = {
            format = "uint64",
            type = "string",
          },
          type = "array",
        },
        businessInformation = {
          ["$ref"] = "AccountBusinessInformation",
          description = "The business information of the account.",
        },
        cssId = {
          description = "ID of CSS the account belongs to.",
          format = "uint64",
          type = "string",
        },
        googleMyBusinessLink = {
          ["$ref"] = "AccountGoogleMyBusinessLink",
          description = "The Business Profile which is linked or in the process of being linked with the Merchant Center account.",
        },
        id = {
          description = "Required. 64-bit Merchant Center account ID.",
          format = "uint64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#account`\".",
          type = "string",
        },
        labelIds = {
          description = "Manually created label IDs that are assigned to the account by CSS.",
          items = {
            format = "uint64",
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. Display name for the account.",
          type = "string",
        },
        sellerId = {
          description = "Client-specific, locally-unique, internal ID for the child account.",
          type = "string",
        },
        users = {
          description = "Users with access to the account. Every account (except for subaccounts) must have at least one admin user.",
          items = {
            ["$ref"] = "AccountUser",
          },
          type = "array",
        },
        websiteUrl = {
          description = "The merchant's website.",
          type = "string",
        },
        youtubeChannelLinks = {
          description = "Linked YouTube channels that are active or pending approval. To create a new link request, add a new link with status `active` to the list. It will remain in a `pending` state until approved or rejected in the YT Creator Studio interface. To delete an active link, or to cancel a link request, remove it from the list.",
          items = {
            ["$ref"] = "AccountYouTubeChannelLink",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountAddress = {
      id = "AccountAddress",
      properties = {
        country = {
          description = "CLDR country code (for example, \"US\"). All MCA sub-accounts inherit the country of their parent MCA by default, however the country can be updated for individual sub-accounts.",
          type = "string",
        },
        locality = {
          description = "City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).",
          type = "string",
        },
        postalCode = {
          description = "Postal code or ZIP (for example, \"94043\").",
          type = "string",
        },
        region = {
          description = "Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").",
          type = "string",
        },
        streetAddress = {
          description = "Street-level part of the address. Use `\\n` to add a second line.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountAdsLink = {
      id = "AccountAdsLink",
      properties = {
        adsId = {
          description = "Customer ID of the Ads account.",
          format = "uint64",
          type = "string",
        },
        status = {
          description = "Status of the link between this Merchant Center account and the Ads account. Upon retrieval, it represents the actual status of the link and can be either `active` if it was approved in Google Ads or `pending` if it's pending approval. Upon insertion, it represents the *intended* status of the link. Re-uploading a link with status `active` when it's still pending or with status `pending` when it's already active will have no effect: the status will remain unchanged. Re-uploading a link with deprecated status `inactive` is equivalent to not submitting the link at all and will delete the link if it was active or cancel the link request if it was pending. Acceptable values are: - \"`active`\" - \"`pending`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    AccountAutomaticImprovements = {
      description = "The automatic improvements of the account can be used to automatically update items, improve images and shipping.",
      id = "AccountAutomaticImprovements",
      properties = {
        imageImprovements = {
          ["$ref"] = "AccountImageImprovements",
          description = "This improvement will attempt to automatically correct submitted images if they don't meet the [image requirements](https://support.google.com/merchants/answer/6324350), for example, removing overlays. If successful, the image will be replaced and approved. This improvement is only applied to images of disapproved offers. For more information see: [Automatic image improvements](https://support.google.com/merchants/answer/9242973) This field is only updated (cleared) if provided.",
        },
        itemUpdates = {
          ["$ref"] = "AccountItemUpdates",
          description = "Turning on [item updates](https://support.google.com/merchants/answer/3246284) allows Google to automatically update items for you. When item updates are on, Google uses the structured data markup on the website and advanced data extractors to update the price and availability of the items. When the item updates are off, items with mismatched data aren't shown. This field is only updated (cleared) if provided.",
        },
        shippingImprovements = {
          ["$ref"] = "AccountShippingImprovements",
          description = "Not available for MCAs [accounts](https://support.google.com/merchants/answer/188487). By turning on [automatic shipping improvements](https://support.google.com/merchants/answer/10027038), you are allowing Google to improve the accuracy of your delivery times shown to shoppers using Google. More accurate delivery times, especially when faster, typically lead to better conversion rates. Google will improve your estimated delivery times based on various factors: - Delivery address of an order - Current handling time and shipping time settings - Estimated weekdays or business days - Parcel tracking data This field is only updated (cleared) if provided.",
        },
      },
      type = "object",
    },
    AccountBusinessInformation = {
      id = "AccountBusinessInformation",
      properties = {
        address = {
          ["$ref"] = "AccountAddress",
          description = "The address of the business. Use `\\n` to add a second address line.",
        },
        customerService = {
          ["$ref"] = "AccountCustomerService",
          description = "The customer service information of the business.",
        },
        koreanBusinessRegistrationNumber = {
          description = "The 10-digit [Korean business registration number](https://support.google.com/merchants/answer/9037766) separated with dashes in the format: XXX-XX-XXXXX. This field will only be updated if explicitly set.",
          type = "string",
        },
        phoneNumber = {
          description = "The phone number of the business. This can only be updated if a verified phone number is not already set. To replace a verified phone number use the `Accounts.requestphoneverification` and `Accounts.verifyphonenumber`.",
          type = "string",
        },
        phoneVerificationStatus = {
          description = "Verification status of the phone number of the business. This status is read only and can be updated only by successful phone verification. Acceptable values are: - \"`verified`\" - \"`unverified`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    AccountCredentials = {
      description = "Credentials allowing Google to call a partner's API on behalf of a merchant.",
      id = "AccountCredentials",
      properties = {
        accessToken = {
          description = "An OAuth access token.",
          type = "string",
        },
        expiresIn = {
          description = "The amount of time, in seconds, after which the access token is no longer valid.",
          format = "int64",
          type = "string",
        },
        purpose = {
          description = "Indicates to Google how Google should use these OAuth tokens.",
          enum = {
            "ACCOUNT_CREDENTIALS_PURPOSE_UNSPECIFIED",
            "SHOPIFY_ORDER_MANAGEMENT",
            "SHOPIFY_INTEGRATION",
          },
          enumDescriptions = {
            "Unknown purpose.",
            "The credentials allow Google to manage Shopify orders on behalf of the merchant (deprecated).",
            "The credentials allow Google to manage Shopify integration on behalf of the merchant.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AccountCustomerService = {
      id = "AccountCustomerService",
      properties = {
        email = {
          description = "Customer service email.",
          type = "string",
        },
        phoneNumber = {
          description = "Customer service phone number.",
          type = "string",
        },
        url = {
          description = "Customer service URL.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountGoogleMyBusinessLink = {
      id = "AccountGoogleMyBusinessLink",
      properties = {
        gmbAccountId = {
          description = "The ID of the Business Profile. If this is provided, then `gmbEmail` is ignored. The value of this field should match the `accountId` used by the Business Profile API.",
          type = "string",
        },
        gmbEmail = {
          description = "The Business Profile email address of a specific account within a Business Profile. A sample account within a Business Profile could be a business account with set of locations, managed under the Business Profile.",
          type = "string",
        },
        status = {
          description = "Status of the link between this Merchant Center account and the Business Profile. Acceptable values are: - \"`active`\" - \"`pending`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    AccountIdentifier = {
      id = "AccountIdentifier",
      properties = {
        aggregatorId = {
          description = "The aggregator ID, set for aggregators and subaccounts (in that case, it represents the aggregator of the subaccount).",
          format = "uint64",
          type = "string",
        },
        merchantId = {
          description = "The merchant account ID, set for individual accounts and subaccounts.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    AccountImageImprovements = {
      description = "This improvement will attempt to automatically correct submitted images if they don't meet the [image requirements](https://support.google.com/merchants/answer/6324350), for example, removing overlays. If successful, the image will be replaced and approved. This improvement is only applied to images of disapproved offers. For more information see: [Automatic image improvements](https://support.google.com/merchants/answer/9242973)",
      id = "AccountImageImprovements",
      properties = {
        accountImageImprovementsSettings = {
          ["$ref"] = "AccountImageImprovementsSettings",
          description = "Determines how the images should be automatically updated. If this field is not present, then the settings will be deleted. If there are no settings for subaccount, they are inherited from aggregator.",
        },
        effectiveAllowAutomaticImageImprovements = {
          description = "Output only. The effective value of allow_automatic_image_improvements. If account_image_improvements_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountImageImprovementsSettings = {
      description = "Settings for the Automatic Image Improvements.",
      id = "AccountImageImprovementsSettings",
      properties = {
        allowAutomaticImageImprovements = {
          description = "Enables automatic image improvements.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountItemUpdates = {
      description = "Turning on [item updates](https://support.google.com/merchants/answer/3246284) allows Google to automatically update items for you. When item updates are on, Google uses the structured data markup on the website and advanced data extractors to update the price and availability of the items. When the item updates are off, items with mismatched data aren't shown.",
      id = "AccountItemUpdates",
      properties = {
        accountItemUpdatesSettings = {
          ["$ref"] = "AccountItemUpdatesSettings",
          description = "Determines which attributes of the items should be automatically updated. If this field is not present, then the settings will be deleted. If there are no settings for subaccount, they are inherited from aggregator.",
        },
        effectiveAllowAvailabilityUpdates = {
          description = "Output only. The effective value of allow_availability_updates. If account_item_updates_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.",
          readOnly = true,
          type = "boolean",
        },
        effectiveAllowConditionUpdates = {
          description = "Output only. The effective value of allow_condition_updates. If account_item_updates_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.",
          readOnly = true,
          type = "boolean",
        },
        effectiveAllowPriceUpdates = {
          description = "Output only. The effective value of allow_price_updates. If account_item_updates_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.",
          readOnly = true,
          type = "boolean",
        },
        effectiveAllowStrictAvailabilityUpdates = {
          description = "Output only. The effective value of allow_strict_availability_updates. If account_item_updates_settings is present, then this value is the same. Otherwise, it represents the inherited value of the parent account. Read-only.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountItemUpdatesSettings = {
      description = "Settings for the Automatic Item Updates.",
      id = "AccountItemUpdatesSettings",
      properties = {
        allowAvailabilityUpdates = {
          description = "If availability updates are enabled, any previous availability values get overwritten if Google finds an out-of-stock annotation on the offer's page. If additionally `allow_availability_updates` field is set to true, values get overwritten if Google finds an in-stock annotation on the offer’s page.",
          type = "boolean",
        },
        allowConditionUpdates = {
          description = "If condition updates are enabled, Google always updates item condition with the condition detected from the details of your product.",
          type = "boolean",
        },
        allowPriceUpdates = {
          description = "If price updates are enabled, Google always updates the active price with the crawled information.",
          type = "boolean",
        },
        allowStrictAvailabilityUpdates = {
          description = "If allow_availability_updates is enabled, items are automatically updated in all your Shopping target countries. By default, availability updates will only be applied to items that are 'out of stock' on your website but 'in stock' on Shopping. Set this to true to also update items that are 'in stock' on your website, but 'out of stock' on Google Shopping. In order for this field to have an effect, you must also allow availability updates.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountLabel = {
      description = "Label assigned by CSS domain or CSS group to one of its sub-accounts.",
      id = "AccountLabel",
      properties = {
        accountId = {
          description = "Immutable. The ID of account this label belongs to.",
          format = "int64",
          type = "string",
        },
        description = {
          description = "The description of this label.",
          type = "string",
        },
        labelId = {
          description = "Output only. The ID of the label.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        labelType = {
          description = "Output only. The type of this label.",
          enum = {
            "LABEL_TYPE_UNSPECIFIED",
            "MANUAL",
            "AUTOMATIC",
          },
          enumDescriptions = {
            "Unknown label type.",
            "Indicates that the label was created manually.",
            "Indicates that the label was created automatically by CSS Center.",
          },
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The display name of this label.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountReturnCarrier = {
      description = " The return carrier information. This service is designed for merchants enrolled in the Buy on Google program. ",
      id = "AccountReturnCarrier",
      properties = {
        carrierAccountId = {
          description = "Output only. Immutable. The Google-provided unique carrier ID, used to update the resource.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        carrierAccountName = {
          description = "Name of the carrier account.",
          type = "string",
        },
        carrierAccountNumber = {
          description = "Number of the carrier account.",
          type = "string",
        },
        carrierCode = {
          description = "The carrier code enum. Accepts the values FEDEX or UPS.",
          enum = {
            "CARRIER_CODE_UNSPECIFIED",
            "FEDEX",
            "UPS",
          },
          enumDescriptions = {
            "Carrier not specified",
            "FedEx carrier",
            "UPS carrier",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AccountShippingImprovements = {
      description = "Not available for MCAs [accounts](https://support.google.com/merchants/answer/188487). By turning on [automatic shipping improvements](https://support.google.com/merchants/answer/10027038), you are allowing Google to improve the accuracy of your delivery times shown to shoppers using Google. More accurate delivery times, especially when faster, typically lead to better conversion rates. Google will improve your estimated delivery times based on various factors: * Delivery address of an order * Current handling time and shipping time settings * Estimated weekdays or business days * Parcel tracking data",
      id = "AccountShippingImprovements",
      properties = {
        allowShippingImprovements = {
          description = "Enables automatic shipping improvements.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountStatus = {
      description = "The status of an account, that is, information about its products, which is computed offline and not returned immediately at insertion time.",
      id = "AccountStatus",
      properties = {
        accountId = {
          description = "The ID of the account for which the status is reported.",
          type = "string",
        },
        accountLevelIssues = {
          description = "A list of account level issues.",
          items = {
            ["$ref"] = "AccountStatusAccountLevelIssue",
          },
          type = "array",
        },
        accountManagement = {
          description = "How the account is managed. Acceptable values are: - \"`manual`\" - \"`automatic`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountStatus`\"",
          type = "string",
        },
        products = {
          description = "List of product-related data by channel, destination, and country. Data in this field may be delayed by up to 30 minutes.",
          items = {
            ["$ref"] = "AccountStatusProducts",
          },
          type = "array",
        },
        websiteClaimed = {
          description = "Whether the account's website is claimed or not.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountStatusAccountLevelIssue = {
      id = "AccountStatusAccountLevelIssue",
      properties = {
        country = {
          description = "Country for which this issue is reported.",
          type = "string",
        },
        destination = {
          description = "The destination the issue applies to. If this field is empty then the issue applies to all available destinations.",
          type = "string",
        },
        detail = {
          description = "Additional details about the issue.",
          type = "string",
        },
        documentation = {
          description = "The URL of a web page to help resolving this issue.",
          type = "string",
        },
        id = {
          description = "Issue identifier.",
          type = "string",
        },
        severity = {
          description = "Severity of the issue. Acceptable values are: - \"`critical`\" - \"`error`\" - \"`suggestion`\" ",
          type = "string",
        },
        title = {
          description = "Short description of the issue.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountStatusItemLevelIssue = {
      id = "AccountStatusItemLevelIssue",
      properties = {
        attributeName = {
          description = "The attribute's name, if the issue is caused by a single attribute.",
          type = "string",
        },
        code = {
          description = "The error code of the issue.",
          type = "string",
        },
        description = {
          description = "A short issue description in English.",
          type = "string",
        },
        detail = {
          description = "A detailed issue description in English.",
          type = "string",
        },
        documentation = {
          description = "The URL of a web page to help with resolving this issue.",
          type = "string",
        },
        numItems = {
          description = "Number of items with this issue.",
          format = "int64",
          type = "string",
        },
        resolution = {
          description = "Whether the issue can be resolved by the merchant.",
          type = "string",
        },
        servability = {
          description = "How this issue affects serving of the offer.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountStatusProducts = {
      id = "AccountStatusProducts",
      properties = {
        channel = {
          description = "The channel the data applies to. Acceptable values are: - \"`local`\" - \"`online`\" ",
          type = "string",
        },
        country = {
          description = "The country the data applies to.",
          type = "string",
        },
        destination = {
          description = "The destination the data applies to.",
          type = "string",
        },
        itemLevelIssues = {
          description = "List of item-level issues.",
          items = {
            ["$ref"] = "AccountStatusItemLevelIssue",
          },
          type = "array",
        },
        statistics = {
          ["$ref"] = "AccountStatusStatistics",
          description = "Aggregated product statistics.",
        },
      },
      type = "object",
    },
    AccountStatusStatistics = {
      id = "AccountStatusStatistics",
      properties = {
        active = {
          description = "Number of active offers.",
          format = "int64",
          type = "string",
        },
        disapproved = {
          description = "Number of disapproved offers.",
          format = "int64",
          type = "string",
        },
        expiring = {
          description = "Number of expiring offers.",
          format = "int64",
          type = "string",
        },
        pending = {
          description = "Number of pending offers.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AccountTax = {
      description = "The tax settings of a merchant account. All methods require the admin role.",
      id = "AccountTax",
      properties = {
        accountId = {
          description = "Required. The ID of the account to which these account tax settings belong.",
          format = "uint64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountTax`\".",
          type = "string",
        },
        rules = {
          description = "Tax rules. Updating the tax rules will enable \"US\" taxes (not reversible). Defining no rules is equivalent to not charging tax at all.",
          items = {
            ["$ref"] = "AccountTaxTaxRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountTaxTaxRule = {
      description = "Tax calculation rule to apply in a state or province (US only).",
      id = "AccountTaxTaxRule",
      properties = {
        country = {
          description = "Country code in which tax is applicable.",
          type = "string",
        },
        locationId = {
          description = "Required. State (or province) is which the tax is applicable, described by its location ID (also called criteria ID).",
          format = "uint64",
          type = "string",
        },
        ratePercent = {
          description = "Explicit tax rate in percent, represented as a floating point number without the percentage character. Must not be negative.",
          type = "string",
        },
        shippingTaxed = {
          description = "If true, shipping charges are also taxed.",
          type = "boolean",
        },
        useGlobalRate = {
          description = "Whether the tax rate is taken from a global tax table or specified explicitly.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountUser = {
      id = "AccountUser",
      properties = {
        admin = {
          description = "Whether user is an admin.",
          type = "boolean",
        },
        emailAddress = {
          description = "User's email address.",
          type = "string",
        },
        orderManager = {
          description = "Whether user is an order manager.",
          type = "boolean",
        },
        paymentsAnalyst = {
          description = "Whether user can access payment statements.",
          type = "boolean",
        },
        paymentsManager = {
          description = "Whether user can manage payment settings.",
          type = "boolean",
        },
        reportingManager = {
          description = "Whether user is a reporting manager.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AccountYouTubeChannelLink = {
      id = "AccountYouTubeChannelLink",
      properties = {
        channelId = {
          description = "Channel ID.",
          type = "string",
        },
        status = {
          description = "Status of the link between this Merchant Center account and the YouTube channel. Upon retrieval, it represents the actual status of the link and can be either `active` if it was approved in YT Creator Studio or `pending` if it's pending approval. Upon insertion, it represents the *intended* status of the link. Re-uploading a link with status `active` when it's still pending or with status `pending` when it's already active will have no effect: the status will remain unchanged. Re-uploading a link with deprecated status `inactive` is equivalent to not submitting the link at all and will delete the link if it was active or cancel the link request if it was pending.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsAuthInfoResponse = {
      id = "AccountsAuthInfoResponse",
      properties = {
        accountIdentifiers = {
          description = "The account identifiers corresponding to the authenticated user. - For an individual account: only the merchant ID is defined - For an aggregator: only the aggregator ID is defined - For a subaccount of an MCA: both the merchant ID and the aggregator ID are defined. ",
          items = {
            ["$ref"] = "AccountIdentifier",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountsAuthInfoResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsClaimWebsiteResponse = {
      id = "AccountsClaimWebsiteResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountsClaimWebsiteResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsCustomBatchRequest = {
      id = "AccountsCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "AccountsCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountsCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch accounts request.",
      id = "AccountsCustomBatchRequestEntry",
      properties = {
        account = {
          ["$ref"] = "Account",
          description = "The account to create or update. Only defined if the method is `insert` or `update`.",
        },
        accountId = {
          description = "The ID of the targeted account. Only defined if the method is not `insert`.",
          format = "uint64",
          type = "string",
        },
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        force = {
          description = "Whether the account should be deleted if the account has offers. Only applicable if the method is `delete`.",
          type = "boolean",
        },
        labelIds = {
          description = "Label IDs for the 'updatelabels' request.",
          items = {
            format = "uint64",
            type = "string",
          },
          type = "array",
        },
        linkRequest = {
          ["$ref"] = "AccountsCustomBatchRequestEntryLinkRequest",
          description = "Details about the `link` request.",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`claimWebsite`\" - \"`delete`\" - \"`get`\" - \"`insert`\" - \"`link`\" - \"`update`\" ",
          type = "string",
        },
        overwrite = {
          description = "Only applicable if the method is `claimwebsite`. Indicates whether or not to take the claim from another account in case there is a conflict.",
          type = "boolean",
        },
        view = {
          description = "Controls which fields are visible. Only applicable if the method is 'get'.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsCustomBatchRequestEntryLinkRequest = {
      id = "AccountsCustomBatchRequestEntryLinkRequest",
      properties = {
        action = {
          description = "Action to perform for this link. The `\"request\"` action is only available to select merchants. Acceptable values are: - \"`approve`\" - \"`remove`\" - \"`request`\" ",
          type = "string",
        },
        linkType = {
          description = "Type of the link between the two accounts. Acceptable values are: - \"`channelPartner`\" - \"`eCommercePlatform`\" - \"`paymentServiceProvider`\" ",
          type = "string",
        },
        linkedAccountId = {
          description = "The ID of the linked account.",
          type = "string",
        },
        services = {
          description = "Provided services. Acceptable values are: - \"`shoppingAdsProductManagement`\" - \"`shoppingActionsProductManagement`\" - \"`shoppingActionsOrderManagement`\" - \"`paymentProcessing`\" ",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountsCustomBatchResponse = {
      id = "AccountsCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "AccountsCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountsCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch accounts response.",
      id = "AccountsCustomBatchResponseEntry",
      properties = {
        account = {
          ["$ref"] = "Account",
          description = "The retrieved, created, or updated account. Not defined if the method was `delete`, `claimwebsite` or `link`.",
        },
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountsCustomBatchResponseEntry`\"",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsLinkRequest = {
      id = "AccountsLinkRequest",
      properties = {
        action = {
          description = "Action to perform for this link. The `\"request\"` action is only available to select merchants. Acceptable values are: - \"`approve`\" - \"`remove`\" - \"`request`\" ",
          type = "string",
        },
        eCommercePlatformLinkInfo = {
          ["$ref"] = "ECommercePlatformLinkInfo",
          description = "Additional information required for `eCommercePlatform` link type.",
        },
        linkType = {
          description = "Type of the link between the two accounts. Acceptable values are: - \"`channelPartner`\" - \"`eCommercePlatform`\" - \"`paymentServiceProvider`\" ",
          type = "string",
        },
        linkedAccountId = {
          description = "The ID of the linked account.",
          type = "string",
        },
        paymentServiceProviderLinkInfo = {
          ["$ref"] = "PaymentServiceProviderLinkInfo",
          description = "Additional information required for `paymentServiceProvider` link type.",
        },
        services = {
          description = " Acceptable values are: - \"`shoppingAdsProductManagement`\" - \"`shoppingActionsProductManagement`\" - \"`shoppingActionsOrderManagement`\" - \"`paymentProcessing`\" ",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountsLinkResponse = {
      id = "AccountsLinkResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountsLinkResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsListLinksResponse = {
      id = "AccountsListLinksResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountsListLinksResponse`\".",
          type = "string",
        },
        links = {
          description = "The list of available links.",
          items = {
            ["$ref"] = "LinkedAccount",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of links.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsListResponse = {
      id = "AccountsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountsListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of accounts.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "Account",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountsUpdateLabelsRequest = {
      id = "AccountsUpdateLabelsRequest",
      properties = {
        labelIds = {
          description = "The IDs of labels that should be assigned to the account.",
          items = {
            format = "uint64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountsUpdateLabelsResponse = {
      id = "AccountsUpdateLabelsResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountsUpdateLabelsResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountstatusesCustomBatchRequest = {
      id = "AccountstatusesCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "AccountstatusesCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccountstatusesCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch accountstatuses request.",
      id = "AccountstatusesCustomBatchRequestEntry",
      properties = {
        accountId = {
          description = "The ID of the (sub-)account whose status to get.",
          format = "uint64",
          type = "string",
        },
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        destinations = {
          description = "If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.",
          items = {
            type = "string",
          },
          type = "array",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`get`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    AccountstatusesCustomBatchResponse = {
      id = "AccountstatusesCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "AccountstatusesCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountstatusesCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountstatusesCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch accountstatuses response.",
      id = "AccountstatusesCustomBatchResponseEntry",
      properties = {
        accountStatus = {
          ["$ref"] = "AccountStatus",
          description = "The requested account status. Defined if and only if the request was successful.",
        },
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
      },
      type = "object",
    },
    AccountstatusesListResponse = {
      id = "AccountstatusesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accountstatusesListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of account statuses.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "AccountStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccounttaxCustomBatchRequest = {
      id = "AccounttaxCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "AccounttaxCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccounttaxCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch accounttax request.",
      id = "AccounttaxCustomBatchRequestEntry",
      properties = {
        accountId = {
          description = "The ID of the account for which to get/update account tax settings.",
          format = "uint64",
          type = "string",
        },
        accountTax = {
          ["$ref"] = "AccountTax",
          description = "The account tax settings to update. Only defined if the method is `update`.",
        },
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`get`\" - \"`update`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    AccounttaxCustomBatchResponse = {
      id = "AccounttaxCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "AccounttaxCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accounttaxCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccounttaxCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch accounttax response.",
      id = "AccounttaxCustomBatchResponseEntry",
      properties = {
        accountTax = {
          ["$ref"] = "AccountTax",
          description = "The retrieved or updated account tax settings.",
        },
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accounttaxCustomBatchResponseEntry`\"",
          type = "string",
        },
      },
      type = "object",
    },
    AccounttaxListResponse = {
      id = "AccounttaxListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#accounttaxListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of account tax settings.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "AccountTax",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ActivateBuyOnGoogleProgramRequest = {
      description = "Request message for the ActivateProgram method.",
      id = "ActivateBuyOnGoogleProgramRequest",
      properties = {},
      type = "object",
    },
    Address = {
      id = "Address",
      properties = {
        administrativeArea = {
          description = "Required. Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").",
          type = "string",
        },
        city = {
          description = "Required. City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).",
          type = "string",
        },
        country = {
          description = "Required. [CLDR country code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml) (for example, \"US\").",
          type = "string",
        },
        postalCode = {
          description = "Required. Postal code or ZIP (for example, \"94043\").",
          type = "string",
        },
        streetAddress = {
          description = "Street-level part of the address. Use `\\n` to add a second line.",
          type = "string",
        },
      },
      type = "object",
    },
    Amount = {
      id = "Amount",
      properties = {
        priceAmount = {
          ["$ref"] = "Price",
          description = "[required] The pre-tax or post-tax price depending on the location of the order.",
        },
        taxAmount = {
          ["$ref"] = "Price",
          description = "[required] Tax value.",
        },
      },
      type = "object",
    },
    BestSellers = {
      description = "Fields related to the [Best Sellers reports](https://support.google.com/merchants/answer/9488679).",
      id = "BestSellers",
      properties = {
        categoryId = {
          description = "Google product category ID to calculate the ranking for, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436). If a `WHERE` condition on `best_sellers.category_id` is not specified in the query, rankings for all top-level categories are returned.",
          format = "int64",
          type = "string",
        },
        countryCode = {
          description = "Country where the ranking is calculated. A `WHERE` condition on `best_sellers.country_code` is required in the query.",
          type = "string",
        },
        previousRank = {
          description = "Popularity rank in the previous week or month.",
          format = "int64",
          type = "string",
        },
        previousRelativeDemand = {
          description = "Estimated demand in relation to the item with the highest popularity rank in the same category and country in the previous week or month.",
          enum = {
            "RELATIVE_DEMAND_UNSPECIFIED",
            "VERY_LOW",
            "LOW",
            "MEDIUM",
            "HIGH",
            "VERY_HIGH",
          },
          enumDescriptions = {
            "Relative demand is unknown.",
            "Demand is 0-5% of the demand of the highest ranked product clusters or brands.",
            "Demand is 6-10% of the demand of the highest ranked product clusters or brands.",
            "Demand is 11-20% of the demand of the highest ranked product clusters or brands.",
            "Demand is 21-50% of the demand of the highest ranked product clusters or brands.",
            "Demand is 51-100% of the demand of the highest ranked product clusters or brands.",
          },
          type = "string",
        },
        rank = {
          description = "Popularity on Shopping ads and free listings, in the selected category and country, based on the estimated number of units sold.",
          format = "int64",
          type = "string",
        },
        relativeDemand = {
          description = "Estimated demand in relation to the item with the highest popularity rank in the same category and country.",
          enum = {
            "RELATIVE_DEMAND_UNSPECIFIED",
            "VERY_LOW",
            "LOW",
            "MEDIUM",
            "HIGH",
            "VERY_HIGH",
          },
          enumDescriptions = {
            "Relative demand is unknown.",
            "Demand is 0-5% of the demand of the highest ranked product clusters or brands.",
            "Demand is 6-10% of the demand of the highest ranked product clusters or brands.",
            "Demand is 11-20% of the demand of the highest ranked product clusters or brands.",
            "Demand is 21-50% of the demand of the highest ranked product clusters or brands.",
            "Demand is 51-100% of the demand of the highest ranked product clusters or brands.",
          },
          type = "string",
        },
        relativeDemandChange = {
          description = "Change in the estimated demand. Whether it rose, sank or remained flat.",
          enum = {
            "RELATIVE_DEMAND_CHANGE_TYPE_UNSPECIFIED",
            "SINKER",
            "FLAT",
            "RISER",
          },
          enumDescriptions = {
            "Relative demand change is unknown.",
            "Relative demand is lower than previous time period.",
            "Relative demand is equal to previous time period.",
            "Relative demand is higher than the previous time period.",
          },
          type = "string",
        },
        reportDate = {
          ["$ref"] = "Date",
          description = "Report date. The value of this field can only be one of the following: * The first day of the week (Monday) for weekly reports. * The first day of the month for monthly reports. If a `WHERE` condition on `best_sellers.report_date` is not specified in the query, the latest available weekly or monthly report is returned.",
        },
        reportGranularity = {
          description = "Granularity of the report. The ranking can be done over a week or a month timeframe. A `WHERE` condition on `best_sellers.report_granularity` is required in the query.",
          enum = {
            "REPORT_GRANULARITY_UNSPECIFIED",
            "WEEKLY",
            "MONTHLY",
          },
          enumDescriptions = {
            "Report granularity is unknown.",
            "Ranking is done over a week timeframe.",
            "Ranking is done over a month timeframe.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Brand = {
      description = "Brand fields. Values are only set for fields requested explicitly in the request's search query.",
      id = "Brand",
      properties = {
        name = {
          description = "Name of the brand.",
          type = "string",
        },
      },
      type = "object",
    },
    BusinessDayConfig = {
      id = "BusinessDayConfig",
      properties = {
        businessDays = {
          description = "Regular business days, such as '\"monday\"'. May not be empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BuyOnGoogleProgramStatus = {
      description = "Response message for the GetProgramStatus method.",
      id = "BuyOnGoogleProgramStatus",
      properties = {
        businessModel = {
          description = "The business models in which merchant participates.",
          items = {
            enum = {
              "BUSINESS_MODEL_UNSPECIFIED",
              "MANUFACTURER",
              "IMPORTER",
              "RESELLER",
              "OTHER",
            },
            enumDescriptions = {
              "Default value when business model is not set.",
              "Merchant is a manufacturer.",
              "Merchant is an importer.",
              "Merchant is a reseller.",
              "Merchant has a different business model.",
            },
            type = "string",
          },
          type = "array",
        },
        customerServicePendingEmail = {
          description = "The customer service pending email. After verification this field becomes empty.",
          type = "string",
        },
        customerServicePendingPhoneNumber = {
          description = "The pending phone number specified for BuyOnGoogle program. It might be different than account level phone number. In order to update this field the customer_service_pending_phone_region_code must also be set. After verification this field becomes empty.",
          type = "string",
        },
        customerServicePendingPhoneRegionCode = {
          description = "Two letter country code for the pending phone number, for example `CA` for Canadian numbers. See the [ISO 3166-1 alpha-2](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) officially assigned codes. In order to update this field the customer_service_pending_phone_number must also be set. After verification this field becomes empty.",
          type = "string",
        },
        customerServiceVerifiedEmail = {
          description = "Output only. The customer service verified email.",
          readOnly = true,
          type = "string",
        },
        customerServiceVerifiedPhoneNumber = {
          description = "Output only. The verified phone number specified for BuyOnGoogle program. It might be different than account level phone number.",
          readOnly = true,
          type = "string",
        },
        customerServiceVerifiedPhoneRegionCode = {
          description = "Output only. Two letter country code for the verified phone number, for example `CA` for Canadian numbers. See the [ISO 3166-1 alpha-2](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) officially assigned codes.",
          readOnly = true,
          type = "string",
        },
        onlineSalesChannel = {
          description = "The channels through which the merchant is selling.",
          enum = {
            "ONLINE_SALES_CHANNEL_UNSPECIFIED",
            "GOOGLE_EXCLUSIVE",
            "GOOGLE_AND_OTHER_WEBSITES",
          },
          enumDescriptions = {
            "Default value when online sales channel is not set.",
            "Merchant is selling exclusively on Google.",
            "Merchant is selling on Google and other websites.",
          },
          type = "string",
        },
        participationStage = {
          description = "Output only. The current participation stage for the program.",
          enum = {
            "PROGRAM_PARTICIPATION_STAGE_UNSPECIFIED",
            "NOT_ELIGIBLE",
            "ELIGIBLE",
            "ONBOARDING",
            "ELIGIBLE_FOR_REVIEW",
            "PENDING_REVIEW",
            "REVIEW_DISAPPROVED",
            "ACTIVE",
            "PAUSED",
          },
          enumDescriptions = {
            "Default value when participation stage is not set.",
            "Merchant is not eligible for onboarding to a given program in a specific region code.",
            "Merchant is eligible for onboarding to a given program in a specific region code.",
            "Merchant is onboarding to a given program in a specific region code.",
            "Merchant fulfilled all the requirements and is ready to request review in a specific region code.",
            "Merchant is waiting for the review to be completed in a specific region code.",
            "The review for a merchant has been rejected in a specific region code.",
            "Merchant's program participation is active for a specific region code.",
            "Participation has been paused.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CaptureOrderRequest = {
      description = "Request message for the CaptureOrder method.",
      id = "CaptureOrderRequest",
      properties = {},
      type = "object",
    },
    CaptureOrderResponse = {
      description = "Response message for the CaptureOrder method.",
      id = "CaptureOrderResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Only defined if the request was successful. Acceptable values are: * \"duplicate\" * \"executed\"",
          enum = {
            "EXECUTION_STATUS_UNSPECIFIED",
            "EXECUTED",
            "DUPLICATE",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The request was completed successfully.",
            "The request was not performed because it already executed once successfully.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CarrierRate = {
      id = "CarrierRate",
      properties = {
        carrierName = {
          description = "Carrier service, such as `\"UPS\"` or `\"Fedex\"`. The list of supported carriers can be retrieved through the `getSupportedCarriers` method. Required.",
          type = "string",
        },
        carrierService = {
          description = "Carrier service, such as `\"ground\"` or `\"2 days\"`. The list of supported services for a carrier can be retrieved through the `getSupportedCarriers` method. Required.",
          type = "string",
        },
        flatAdjustment = {
          ["$ref"] = "Price",
          description = "Additive shipping rate modifier. Can be negative. For example `{ \"value\": \"1\", \"currency\" : \"USD\" }` adds $1 to the rate, `{ \"value\": \"-3\", \"currency\" : \"USD\" }` removes $3 from the rate. Optional.",
        },
        name = {
          description = "Name of the carrier rate. Must be unique per rate group. Required.",
          type = "string",
        },
        originPostalCode = {
          description = "Shipping origin for this carrier rate. Required.",
          type = "string",
        },
        percentageAdjustment = {
          description = "Multiplicative shipping rate modifier as a number in decimal notation. Can be negative. For example `\"5.4\"` increases the rate by 5.4%, `\"-3\"` decreases the rate by 3%. Optional.",
          type = "string",
        },
      },
      type = "object",
    },
    CarriersCarrier = {
      id = "CarriersCarrier",
      properties = {
        country = {
          description = "The CLDR country code of the carrier (for example, \"US\"). Always present.",
          type = "string",
        },
        eddServices = {
          description = "A list of services supported for EDD (Estimated Delivery Date) calculation. This is the list of valid values for WarehouseBasedDeliveryTime.carrierService.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The name of the carrier (for example, `\"UPS\"`). Always present.",
          type = "string",
        },
        services = {
          description = "A list of supported services (for example, `\"ground\"`) for that carrier. Contains at least one service. This is the list of valid values for CarrierRate.carrierService.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Collection = {
      description = "The collection message.",
      id = "Collection",
      properties = {
        customLabel0 = {
          description = "Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns. [Custom label](https://support.google.com/merchants/answer/9674217)",
          type = "string",
        },
        customLabel1 = {
          description = "Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns.",
          type = "string",
        },
        customLabel2 = {
          description = "Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns.",
          type = "string",
        },
        customLabel3 = {
          description = "Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns.",
          type = "string",
        },
        customLabel4 = {
          description = "Label that you assign to a collection to help organize bidding and reporting in Shopping campaigns.",
          type = "string",
        },
        featuredProduct = {
          description = "This identifies one or more products associated with the collection. Used as a lookup to the corresponding product ID in your product feeds. Provide a maximum of 100 featuredProduct (for collections). Provide up to 10 featuredProduct (for Shoppable Images only) with ID and X and Y coordinates. [featured_product attribute](https://support.google.com/merchants/answer/9703736)",
          items = {
            ["$ref"] = "CollectionFeaturedProduct",
          },
          type = "array",
        },
        headline = {
          description = "Your collection's name. [headline attribute](https://support.google.com/merchants/answer/9673580)",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "Required. The REST ID of the collection. Content API methods that operate on collections take this as their collectionId parameter. The REST ID for a collection is of the form collectionId. [id attribute](https://support.google.com/merchants/answer/9649290)",
          type = "string",
        },
        imageLink = {
          description = "The URL of a collection’s image. [image_link attribute](https://support.google.com/merchants/answer/9703236)",
          items = {
            type = "string",
          },
          type = "array",
        },
        language = {
          description = "The language of a collection and the language of any featured products linked to the collection. [language attribute](https://support.google.com/merchants/answer/9673781)",
          type = "string",
        },
        link = {
          description = "A collection’s landing page. URL directly linking to your collection's page on your website. [link attribute](https://support.google.com/merchants/answer/9673983)",
          type = "string",
        },
        mobileLink = {
          description = "A collection’s mobile-optimized landing page when you have a different URL for mobile and desktop traffic. [mobile_link attribute](https://support.google.com/merchants/answer/9646123)",
          type = "string",
        },
        productCountry = {
          description = "[product_country attribute](https://support.google.com/merchants/answer/9674155)",
          type = "string",
        },
      },
      type = "object",
    },
    CollectionFeaturedProduct = {
      description = "The message for FeaturedProduct. [FeaturedProduct](https://support.google.com/merchants/answer/9703736)",
      id = "CollectionFeaturedProduct",
      properties = {
        offerId = {
          description = "The unique identifier for the product item.",
          type = "string",
        },
        x = {
          description = "Required. X-coordinate of the product callout on the Shoppable Image.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Required. Y-coordinate of the product callout on the Shoppable Image.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    CollectionStatus = {
      description = "The collectionstatus message.",
      id = "CollectionStatus",
      properties = {
        collectionLevelIssuses = {
          description = "A list of all issues associated with the collection.",
          items = {
            ["$ref"] = "CollectionStatusItemLevelIssue",
          },
          type = "array",
        },
        creationDate = {
          description = "Date on which the collection has been created in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and offset, for example \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"",
          type = "string",
        },
        destinationStatuses = {
          description = "The intended destinations for the collection.",
          items = {
            ["$ref"] = "CollectionStatusDestinationStatus",
          },
          type = "array",
        },
        id = {
          description = "Required. The ID of the collection for which status is reported.",
          type = "string",
        },
        lastUpdateDate = {
          description = "Date on which the collection has been last updated in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and offset, for example \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"",
          type = "string",
        },
      },
      type = "object",
    },
    CollectionStatusDestinationStatus = {
      description = "Destination status message.",
      id = "CollectionStatusDestinationStatus",
      properties = {
        approvedCountries = {
          description = "Country codes (ISO 3166-1 alpha-2) where the collection is approved.",
          items = {
            type = "string",
          },
          type = "array",
        },
        destination = {
          description = "The name of the destination",
          type = "string",
        },
        disapprovedCountries = {
          description = "Country codes (ISO 3166-1 alpha-2) where the collection is disapproved.",
          items = {
            type = "string",
          },
          type = "array",
        },
        pendingCountries = {
          description = "Country codes (ISO 3166-1 alpha-2) where the collection is pending approval.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "The status for the specified destination in the collections target country.",
          type = "string",
        },
      },
      type = "object",
    },
    CollectionStatusItemLevelIssue = {
      description = "Issue associated with the collection.",
      id = "CollectionStatusItemLevelIssue",
      properties = {
        applicableCountries = {
          description = "Country codes (ISO 3166-1 alpha-2) where issue applies to the offer.",
          items = {
            type = "string",
          },
          type = "array",
        },
        attributeName = {
          description = "The attribute's name, if the issue is caused by a single attribute.",
          type = "string",
        },
        code = {
          description = "The error code of the issue.",
          type = "string",
        },
        description = {
          description = "A short issue description in English.",
          type = "string",
        },
        destination = {
          description = "The destination the issue applies to.",
          type = "string",
        },
        detail = {
          description = "A detailed issue description in English.",
          type = "string",
        },
        documentation = {
          description = "The URL of a web page to help with resolving this issue.",
          type = "string",
        },
        resolution = {
          description = "Whether the issue can be resolved by the merchant.",
          type = "string",
        },
        servability = {
          description = "How this issue affects the serving of the collection.",
          type = "string",
        },
      },
      type = "object",
    },
    Css = {
      description = "Information about CSS domain.",
      id = "Css",
      properties = {
        cssDomainId = {
          description = "Output only. Immutable. The CSS domain ID.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        cssGroupId = {
          description = "Output only. Immutable. The ID of the CSS group this CSS domain is affiliated with. Only populated for CSS group users.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. Immutable. The CSS domain's display name, used when space is constrained.",
          readOnly = true,
          type = "string",
        },
        fullName = {
          description = "Output only. Immutable. The CSS domain's full name.",
          readOnly = true,
          type = "string",
        },
        homepageUri = {
          description = "Output only. Immutable. The CSS domain's homepage.",
          readOnly = true,
          type = "string",
        },
        labelIds = {
          description = "A list of label IDs that are assigned to this CSS domain by its CSS group. Only populated for CSS group users.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomAttribute = {
      id = "CustomAttribute",
      properties = {
        groupValues = {
          description = "Subattributes within this attribute group. Exactly one of value or groupValues must be provided.",
          items = {
            ["$ref"] = "CustomAttribute",
          },
          type = "array",
        },
        name = {
          description = "The name of the attribute. Underscores will be replaced by spaces upon insertion.",
          type = "string",
        },
        value = {
          description = "The value of the attribute.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomerReturnReason = {
      id = "CustomerReturnReason",
      properties = {
        description = {
          description = "Description of the reason.",
          type = "string",
        },
        reasonCode = {
          description = "Code of the return reason. Acceptable values are: - \"`betterPriceFound`\" - \"`changedMind`\" - \"`damagedOrDefectiveItem`\" - \"`didNotMatchDescription`\" - \"`doesNotFit`\" - \"`expiredItem`\" - \"`incorrectItemReceived`\" - \"`noLongerNeeded`\" - \"`notSpecified`\" - \"`orderedWrongItem`\" - \"`other`\" - \"`qualityNotExpected`\" - \"`receivedTooLate`\" - \"`undeliverable`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    CutoffTime = {
      id = "CutoffTime",
      properties = {
        hour = {
          description = "Hour of the cutoff time until which an order has to be placed to be processed in the same day. Required.",
          format = "uint32",
          type = "integer",
        },
        minute = {
          description = "Minute of the cutoff time until which an order has to be placed to be processed in the same day. Required.",
          format = "uint32",
          type = "integer",
        },
        timezone = {
          description = "Timezone identifier for the cutoff time (for example, \"Europe/Zurich\"). List of identifiers. Required.",
          type = "string",
        },
      },
      type = "object",
    },
    Datafeed = {
      description = "Datafeed configuration data.",
      id = "Datafeed",
      properties = {
        attributeLanguage = {
          description = "The two-letter ISO 639-1 language in which the attributes are defined in the data feed.",
          type = "string",
        },
        contentType = {
          description = "Required. The type of data feed. For product inventory feeds, only feeds for local stores, not online stores, are supported. Acceptable values are: - \"`local products`\" - \"`product inventory`\" - \"`products`\" ",
          type = "string",
        },
        fetchSchedule = {
          ["$ref"] = "DatafeedFetchSchedule",
          description = "Fetch schedule for the feed file.",
        },
        fileName = {
          description = "Required. The filename of the feed. All feeds must have a unique file name.",
          type = "string",
        },
        format = {
          ["$ref"] = "DatafeedFormat",
          description = "Format of the feed file.",
        },
        id = {
          description = "Required for update. The ID of the data feed.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#datafeed`\"",
          type = "string",
        },
        name = {
          description = "Required for insert. A descriptive name of the data feed.",
          type = "string",
        },
        targets = {
          description = "The targets this feed should apply to (country, language, destinations).",
          items = {
            ["$ref"] = "DatafeedTarget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatafeedFetchSchedule = {
      description = "The required fields vary based on the frequency of fetching. For a monthly fetch schedule, day_of_month and hour are required. For a weekly fetch schedule, weekday and hour are required. For a daily fetch schedule, only hour is required.",
      id = "DatafeedFetchSchedule",
      properties = {
        dayOfMonth = {
          description = "The day of the month the feed file should be fetched (1-31).",
          format = "uint32",
          type = "integer",
        },
        fetchUrl = {
          description = "The URL where the feed file can be fetched. Google Merchant Center will support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP protocols, so the value will need to be a valid link using one of those four protocols.",
          type = "string",
        },
        hour = {
          description = "The hour of the day the feed file should be fetched (0-23).",
          format = "uint32",
          type = "integer",
        },
        minuteOfHour = {
          description = "The minute of the hour the feed file should be fetched (0-59). Read-only.",
          format = "uint32",
          type = "integer",
        },
        password = {
          description = "An optional password for fetch_url.",
          type = "string",
        },
        paused = {
          description = "Whether the scheduled fetch is paused or not.",
          type = "boolean",
        },
        timeZone = {
          description = "Time zone used for schedule. UTC by default. For example, \"America/Los_Angeles\".",
          type = "string",
        },
        username = {
          description = "An optional user name for fetch_url.",
          type = "string",
        },
        weekday = {
          description = "The day of the week the feed file should be fetched. Acceptable values are: - \"`monday`\" - \"`tuesday`\" - \"`wednesday`\" - \"`thursday`\" - \"`friday`\" - \"`saturday`\" - \"`sunday`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedFormat = {
      id = "DatafeedFormat",
      properties = {
        columnDelimiter = {
          description = "Delimiter for the separation of values in a delimiter-separated values feed. If not specified, the delimiter will be auto-detected. Ignored for non-DSV data feeds. Acceptable values are: - \"`pipe`\" - \"`tab`\" - \"`tilde`\" ",
          type = "string",
        },
        fileEncoding = {
          description = "Character encoding scheme of the data feed. If not specified, the encoding will be auto-detected. Acceptable values are: - \"`latin-1`\" - \"`utf-16be`\" - \"`utf-16le`\" - \"`utf-8`\" - \"`windows-1252`\" ",
          type = "string",
        },
        quotingMode = {
          description = "Specifies how double quotes are interpreted. If not specified, the mode will be auto-detected. Ignored for non-DSV data feeds. Acceptable values are: - \"`normal character`\" - \"`value quoting`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedStatus = {
      description = "The status of a datafeed, that is, the result of the last retrieval of the datafeed computed asynchronously when the feed processing is finished.",
      id = "DatafeedStatus",
      properties = {
        country = {
          description = "The country for which the status is reported, represented as a CLDR territory code.",
          type = "string",
        },
        datafeedId = {
          description = "The ID of the feed for which the status is reported.",
          format = "uint64",
          type = "string",
        },
        errors = {
          description = "The list of errors occurring in the feed.",
          items = {
            ["$ref"] = "DatafeedStatusError",
          },
          type = "array",
        },
        feedLabel = {
          description = "The feed label status is reported for.",
          type = "string",
        },
        itemsTotal = {
          description = "The number of items in the feed that were processed.",
          format = "uint64",
          type = "string",
        },
        itemsValid = {
          description = "The number of items in the feed that were valid.",
          format = "uint64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#datafeedStatus`\"",
          type = "string",
        },
        language = {
          description = "The two-letter ISO 639-1 language for which the status is reported.",
          type = "string",
        },
        lastUploadDate = {
          description = "The last date at which the feed was uploaded.",
          type = "string",
        },
        processingStatus = {
          description = "The processing status of the feed. Acceptable values are: - \"`\"`failure`\": The feed could not be processed or all items had errors.`\" - \"`in progress`\": The feed is being processed. - \"`none`\": The feed has not yet been processed. For example, a feed that has never been uploaded will have this processing status. - \"`success`\": The feed was processed successfully, though some items might have had errors. ",
          type = "string",
        },
        warnings = {
          description = "The list of errors occurring in the feed.",
          items = {
            ["$ref"] = "DatafeedStatusError",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatafeedStatusError = {
      description = "An error occurring in the feed, like \"invalid price\".",
      id = "DatafeedStatusError",
      properties = {
        code = {
          description = "The code of the error, for example, \"validation/invalid_value\".",
          type = "string",
        },
        count = {
          description = "The number of occurrences of the error in the feed.",
          format = "uint64",
          type = "string",
        },
        examples = {
          description = "A list of example occurrences of the error, grouped by product.",
          items = {
            ["$ref"] = "DatafeedStatusExample",
          },
          type = "array",
        },
        message = {
          description = "The error message, for example, \"Invalid price\".",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedStatusExample = {
      description = "An example occurrence for a particular error.",
      id = "DatafeedStatusExample",
      properties = {
        itemId = {
          description = "The ID of the example item.",
          type = "string",
        },
        lineNumber = {
          description = "Line number in the data feed where the example is found.",
          format = "uint64",
          type = "string",
        },
        value = {
          description = "The problematic value.",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedTarget = {
      id = "DatafeedTarget",
      properties = {
        country = {
          description = "Deprecated. Use `feedLabel` instead. The country where the items in the feed will be included in the search index, represented as a CLDR territory code.",
          type = "string",
        },
        excludedDestinations = {
          description = "The list of destinations to exclude for this target (corresponds to cleared check boxes in Merchant Center). Products that are excluded from all destinations for more than 7 days are automatically deleted.",
          items = {
            type = "string",
          },
          type = "array",
        },
        feedLabel = {
          description = "Feed label for the DatafeedTarget. Either `country` or `feedLabel` is required. If both `feedLabel` and `country` is specified, the values must match.",
          type = "string",
        },
        includedDestinations = {
          description = "The list of destinations to include for this target (corresponds to checked check boxes in Merchant Center). Default destinations are always included unless provided in `excludedDestinations`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        language = {
          description = "The two-letter ISO 639-1 language of the items in the feed. Must be a valid language for `targets[].country`.",
          type = "string",
        },
        targetCountries = {
          description = "The countries where the items may be displayed. Represented as a CLDR territory code. Will be ignored for \"product inventory\" feeds.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatafeedsCustomBatchRequest = {
      id = "DatafeedsCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "DatafeedsCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatafeedsCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch datafeeds request.",
      id = "DatafeedsCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        datafeed = {
          ["$ref"] = "Datafeed",
          description = "The data feed to insert.",
        },
        datafeedId = {
          description = "The ID of the data feed to get, delete or fetch.",
          format = "uint64",
          type = "string",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`delete`\" - \"`fetchNow`\" - \"`get`\" - \"`insert`\" - \"`update`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedsCustomBatchResponse = {
      id = "DatafeedsCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "DatafeedsCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#datafeedsCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedsCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch datafeeds response.",
      id = "DatafeedsCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        datafeed = {
          ["$ref"] = "Datafeed",
          description = "The requested data feed. Defined if and only if the request was successful.",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
      },
      type = "object",
    },
    DatafeedsFetchNowResponse = {
      id = "DatafeedsFetchNowResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#datafeedsFetchNowResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedsListResponse = {
      id = "DatafeedsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#datafeedsListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of datafeeds.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "Datafeed",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatafeedstatusesCustomBatchRequest = {
      id = "DatafeedstatusesCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "DatafeedstatusesCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DatafeedstatusesCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch datafeedstatuses request.",
      id = "DatafeedstatusesCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        country = {
          description = "Deprecated. Use `feedLabel` instead. The country to get the datafeed status for. If this parameter is provided, then `language` must also be provided. Note that for multi-target datafeeds this parameter is required.",
          type = "string",
        },
        datafeedId = {
          description = "The ID of the data feed to get.",
          format = "uint64",
          type = "string",
        },
        feedLabel = {
          description = "The feed label to get the datafeed status for. If this parameter is provided, then `language` must also be provided. Note that for multi-target datafeeds this parameter is required.",
          type = "string",
        },
        language = {
          description = "The language to get the datafeed status for. If this parameter is provided then `country` must also be provided. Note that for multi-target datafeeds this parameter is required.",
          type = "string",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`get`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedstatusesCustomBatchResponse = {
      id = "DatafeedstatusesCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "DatafeedstatusesCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#datafeedstatusesCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    DatafeedstatusesCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch datafeedstatuses response.",
      id = "DatafeedstatusesCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        datafeedStatus = {
          ["$ref"] = "DatafeedStatus",
          description = "The requested data feed status. Defined if and only if the request was successful.",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
      },
      type = "object",
    },
    DatafeedstatusesListResponse = {
      id = "DatafeedstatusesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#datafeedstatusesListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of datafeed statuses.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "DatafeedStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "Date",
      properties = {
        day = {
          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
          format = "int32",
          type = "integer",
        },
        year = {
          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DateTime = {
      description = "Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.",
      id = "DateTime",
      properties = {
        day = {
          description = "Optional. Day of month. Must be from 1 to 31 and valid for the year and month, or 0 if specifying a datetime without a day.",
          format = "int32",
          type = "integer",
        },
        hours = {
          description = "Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to 0 (midnight). An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime without a month.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999, defaults to 0.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Optional. Seconds of minutes of the time. Must normally be from 0 to 59, defaults to 0. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
        timeZone = {
          ["$ref"] = "TimeZone",
          description = "Time zone.",
        },
        utcOffset = {
          description = "UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be represented as { seconds: -14400 }.",
          format = "google-duration",
          type = "string",
        },
        year = {
          description = "Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeliveryArea = {
      description = "A delivery area for the product. Only one of `countryCode` or `postalCodeRange` must be set.",
      id = "DeliveryArea",
      properties = {
        countryCode = {
          description = "Required. The country that the product can be delivered to. Submit a [unicode CLDR region](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) such as `US` or `CH`.",
          type = "string",
        },
        postalCodeRange = {
          ["$ref"] = "DeliveryAreaPostalCodeRange",
          description = "A postal code, postal code range or postal code prefix that defines this area. Limited to US and AUS.",
        },
        regionCode = {
          description = "A state, territory, or prefecture. This is supported for the United States, Australia, and Japan. Provide a subdivision code from the ISO 3166-2 code tables ([US](https://en.wikipedia.org/wiki/ISO_3166-2:US), [AU](https://en.wikipedia.org/wiki/ISO_3166-2:AU), or [JP](https://en.wikipedia.org/wiki/ISO_3166-2:JP)) without country prefix (for example, `\"NY\"`, `\"NSW\"`, `\"03\"`).",
          type = "string",
        },
      },
      type = "object",
    },
    DeliveryAreaPostalCodeRange = {
      description = "A range of postal codes that defines the delivery area. Only set `firstPostalCode` when specifying a single postal code.",
      id = "DeliveryAreaPostalCodeRange",
      properties = {
        firstPostalCode = {
          description = "Required. A postal code or a pattern of the form prefix* denoting the inclusive lower bound of the range defining the area. Examples values: `\"94108\"`, `\"9410*\"`, `\"9*\"`.",
          type = "string",
        },
        lastPostalCode = {
          description = "A postal code or a pattern of the form prefix* denoting the inclusive upper bound of the range defining the area (for example [070* - 078*] results in the range [07000 - 07899]). It must have the same length as `firstPostalCode`: if `firstPostalCode` is a postal code then `lastPostalCode` must be a postal code too; if firstPostalCode is a pattern then `lastPostalCode` must be a pattern with the same prefix length. Ignored if not set, then the area is defined as being all the postal codes matching `firstPostalCode`.",
          type = "string",
        },
      },
      type = "object",
    },
    DeliveryTime = {
      id = "DeliveryTime",
      properties = {
        cutoffTime = {
          ["$ref"] = "CutoffTime",
          description = "Business days cutoff time definition. If not configured the cutoff time will be defaulted to 8AM PST.",
        },
        handlingBusinessDayConfig = {
          ["$ref"] = "BusinessDayConfig",
          description = "The business days during which orders can be handled. If not provided, Monday to Friday business days will be assumed.",
        },
        holidayCutoffs = {
          description = "Holiday cutoff definitions. If configured, they specify order cutoff times for holiday-specific shipping.",
          items = {
            ["$ref"] = "HolidayCutoff",
          },
          type = "array",
        },
        maxHandlingTimeInDays = {
          description = "Maximum number of business days spent before an order is shipped. 0 means same day shipped, 1 means next day shipped. Must be greater than or equal to `minHandlingTimeInDays`.",
          format = "uint32",
          type = "integer",
        },
        maxTransitTimeInDays = {
          description = "Maximum number of business days that are spent in transit. 0 means same day delivery, 1 means next day delivery. Must be greater than or equal to `minTransitTimeInDays`.",
          format = "uint32",
          type = "integer",
        },
        minHandlingTimeInDays = {
          description = "Minimum number of business days spent before an order is shipped. 0 means same day shipped, 1 means next day shipped.",
          format = "uint32",
          type = "integer",
        },
        minTransitTimeInDays = {
          description = "Minimum number of business days that are spent in transit. 0 means same day delivery, 1 means next day delivery. Either `{min,max}TransitTimeInDays` or `transitTimeTable` must be set, but not both.",
          format = "uint32",
          type = "integer",
        },
        transitBusinessDayConfig = {
          ["$ref"] = "BusinessDayConfig",
          description = "The business days during which orders can be in-transit. If not provided, Monday to Friday business days will be assumed.",
        },
        transitTimeTable = {
          ["$ref"] = "TransitTable",
          description = "Transit time table, number of business days spent in transit based on row and column dimensions. Either `{min,max}TransitTimeInDays` or `transitTimeTable` can be set, but not both.",
        },
        warehouseBasedDeliveryTimes = {
          description = "Indicates that the delivery time should be calculated per warehouse (shipping origin location) based on the settings of the selected carrier. When set, no other transit time related field in DeliveryTime should be set.",
          items = {
            ["$ref"] = "WarehouseBasedDeliveryTime",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ECommercePlatformLinkInfo = {
      description = "Additional information required for E_COMMERCE_PLATFORM link type.",
      id = "ECommercePlatformLinkInfo",
      properties = {
        externalAccountId = {
          description = "The id used by the third party service provider to identify the merchant.",
          type = "string",
        },
      },
      type = "object",
    },
    Error = {
      description = "An error returned by the API.",
      id = "Error",
      properties = {
        domain = {
          description = "The domain of the error.",
          type = "string",
        },
        message = {
          description = "A description of the error.",
          type = "string",
        },
        reason = {
          description = "The error code.",
          type = "string",
        },
      },
      type = "object",
    },
    Errors = {
      description = "A list of errors returned by a failed batch entry.",
      id = "Errors",
      properties = {
        code = {
          description = "The HTTP status of the first error in `errors`.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          description = "A list of errors.",
          items = {
            ["$ref"] = "Error",
          },
          type = "array",
        },
        message = {
          description = "The message of the first error in `errors`.",
          type = "string",
        },
      },
      type = "object",
    },
    FreeListingsProgramStatus = {
      description = "Response message for GetFreeListingsProgramStatus.",
      id = "FreeListingsProgramStatus",
      properties = {
        globalState = {
          description = "State of the program. `ENABLED` if there are offers for at least one region.",
          enum = {
            "PROGRAM_STATE_UNSPECIFIED",
            "NOT_ENABLED",
            "NO_OFFERS_UPLOADED",
            "ENABLED",
          },
          enumDescriptions = {
            "State is unknown.",
            "Program is not enabled for any country.",
            "No products have been uploaded for any region. Upload products to Merchant Center.",
            "Program is enabled and offers are uploaded for at least one country.",
          },
          type = "string",
        },
        regionStatuses = {
          description = "Status of the program in each region. Regions with the same status and review eligibility are grouped together in `regionCodes`.",
          items = {
            ["$ref"] = "FreeListingsProgramStatusRegionStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FreeListingsProgramStatusRegionStatus = {
      description = "Status of program and region.",
      id = "FreeListingsProgramStatusRegionStatus",
      properties = {
        disapprovalDate = {
          description = "Date by which eligibilityStatus will go from `WARNING` to `DISAPPROVED`. Only visible when your eligibilityStatus is WARNING. In [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DD`.",
          type = "string",
        },
        eligibilityStatus = {
          description = "Eligibility status of the standard free listing program.",
          enum = {
            "STATE_UNSPECIFIED",
            "APPROVED",
            "DISAPPROVED",
            "WARNING",
            "UNDER_REVIEW",
            "PENDING_REVIEW",
            "ONBOARDING",
          },
          enumDescriptions = {
            "State is not known.",
            "If the account has no issues and review is completed successfully.",
            "There are one or more issues that needs to be resolved for account to be active for the program. Detailed list of account issues are available in [accountstatuses](https://developers.google.com/shopping-content/reference/rest/v2.1/accountstatuses) API.",
            "If account has issues but offers are servable. Some of the issue can make account DISAPPROVED after a certain deadline.",
            "Account is under review.",
            "Account is waiting for review to start.",
            "Program is currently onboarding. Upload valid offers to complete onboarding.",
          },
          type = "string",
        },
        onboardingIssues = {
          description = "Issues that must be fixed to be eligible for review.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regionCodes = {
          description = "The two-letter [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for all the regions with the same `eligibilityStatus` and `reviewEligibility`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        reviewEligibilityStatus = {
          description = "If a program is eligible for review in a specific region. Only visible if `eligibilityStatus` is `DISAPPROVED`.",
          enum = {
            "REVIEW_ELIGIBILITY_UNSPECIFIED",
            "ELIGIBLE",
            "INELIGIBLE",
          },
          enumDescriptions = {
            "Review eligibility state is unknown.",
            "Account is eligible for review for a specified region code.",
            "Account is not eligible for review for a specified region code.",
          },
          type = "string",
        },
        reviewIneligibilityReason = {
          description = "Review ineligibility reason if account is not eligible for review.",
          enum = {
            "REVIEW_INELIGIBILITY_REASON_UNSPECIFIED",
            "ONBOARDING_ISSUES",
            "NOT_ENOUGH_OFFERS",
            "IN_COOLDOWN_PERIOD",
            "ALREADY_UNDER_REVIEW",
            "NO_REVIEW_REQUIRED",
            "WILL_BE_REVIEWED_AUTOMATICALLY",
            "IS_RETIRED",
            "ALREADY_REVIEWED",
          },
          enumDescriptions = {
            "Requesting a review from Google is not possible.",
            "All onboarding issues needs to be fixed.",
            "Not enough offers uploaded for this country.",
            "Cooldown period applies. Wait until cooldown period ends.",
            "Account is already under review.",
            "No issues available to review.",
            "Account will be automatically reviewed at the end of the grace period.",
            "Account is retired. Should not appear in MC.",
            "Account was already reviewd.",
          },
          type = "string",
        },
        reviewIneligibilityReasonDescription = {
          description = "Reason a program in a specific region isn’t eligible for review. Only visible if `reviewEligibilityStatus` is `INELIGIBLE`.",
          type = "string",
        },
        reviewIneligibilityReasonDetails = {
          ["$ref"] = "FreeListingsProgramStatusReviewIneligibilityReasonDetails",
          description = "Additional information for ineligibility. If `reviewIneligibilityReason` is `IN_COOLDOWN_PERIOD`, a timestamp for the end of the cooldown period is provided.",
        },
        reviewIssues = {
          description = "Issues evaluated in the review process. Fix all issues before requesting a review.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FreeListingsProgramStatusReviewIneligibilityReasonDetails = {
      description = "Additional details for review ineligibility reasons.",
      id = "FreeListingsProgramStatusReviewIneligibilityReasonDetails",
      properties = {
        cooldownTime = {
          description = "This timestamp represents end of cooldown period for review ineligbility reason `IN_COOLDOWN_PERIOD`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GmbAccounts = {
      id = "GmbAccounts",
      properties = {
        accountId = {
          description = "The ID of the Merchant Center account.",
          format = "uint64",
          type = "string",
        },
        gmbAccounts = {
          description = "A list of Business Profiles which are available to the merchant.",
          items = {
            ["$ref"] = "GmbAccountsGmbAccount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GmbAccountsGmbAccount = {
      id = "GmbAccountsGmbAccount",
      properties = {
        email = {
          description = "The email which identifies the Business Profile.",
          type = "string",
        },
        listingCount = {
          description = "Number of listings under this account.",
          format = "uint64",
          type = "string",
        },
        name = {
          description = "The name of the Business Profile.",
          type = "string",
        },
        type = {
          description = "The type of the Business Profile (User or Business).",
          type = "string",
        },
      },
      type = "object",
    },
    Headers = {
      description = "A non-empty list of row or column headers for a table. Exactly one of `prices`, `weights`, `numItems`, `postalCodeGroupNames`, or `location` must be set.",
      id = "Headers",
      properties = {
        locations = {
          description = "A list of location ID sets. Must be non-empty. Can only be set if all other fields are not set.",
          items = {
            ["$ref"] = "LocationIdSet",
          },
          type = "array",
        },
        numberOfItems = {
          description = "A list of inclusive number of items upper bounds. The last value can be `\"infinity\"`. For example `[\"10\", \"50\", \"infinity\"]` represents the headers \"<= 10 items\", \"<= 50 items\", and \"> 50 items\". Must be non-empty. Can only be set if all other fields are not set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        postalCodeGroupNames = {
          description = "A list of postal group names. The last value can be `\"all other locations\"`. Example: `[\"zone 1\", \"zone 2\", \"all other locations\"]`. The referred postal code groups must match the delivery country of the service. Must be non-empty. Can only be set if all other fields are not set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        prices = {
          description = "A list of inclusive order price upper bounds. The last price's value can be `\"infinity\"`. For example `[{\"value\": \"10\", \"currency\": \"USD\"}, {\"value\": \"500\", \"currency\": \"USD\"}, {\"value\": \"infinity\", \"currency\": \"USD\"}]` represents the headers \"<= $10\", \"<= $500\", and \"> $500\". All prices within a service must have the same currency. Must be non-empty. Can only be set if all other fields are not set.",
          items = {
            ["$ref"] = "Price",
          },
          type = "array",
        },
        weights = {
          description = "A list of inclusive order weight upper bounds. The last weight's value can be `\"infinity\"`. For example `[{\"value\": \"10\", \"unit\": \"kg\"}, {\"value\": \"50\", \"unit\": \"kg\"}, {\"value\": \"infinity\", \"unit\": \"kg\"}]` represents the headers \"<= 10kg\", \"<= 50kg\", and \"> 50kg\". All weights within a service must have the same unit. Must be non-empty. Can only be set if all other fields are not set.",
          items = {
            ["$ref"] = "Weight",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HolidayCutoff = {
      id = "HolidayCutoff",
      properties = {
        deadlineDate = {
          description = "Date of the order deadline, in ISO 8601 format. For example, \"2016-11-29\" for 29th November 2016. Required.",
          type = "string",
        },
        deadlineHour = {
          description = "Hour of the day on the deadline date until which the order has to be placed to qualify for the delivery guarantee. Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Required.",
          format = "uint32",
          type = "integer",
        },
        deadlineTimezone = {
          description = "Timezone identifier for the deadline hour (for example, \"Europe/Zurich\"). List of identifiers. Required.",
          type = "string",
        },
        holidayId = {
          description = "Unique identifier for the holiday. Required.",
          type = "string",
        },
        visibleFromDate = {
          description = "Date on which the deadline will become visible to consumers in ISO 8601 format. For example, \"2016-10-31\" for 31st October 2016. Required.",
          type = "string",
        },
      },
      type = "object",
    },
    HolidaysHoliday = {
      id = "HolidaysHoliday",
      properties = {
        countryCode = {
          description = "The CLDR territory code of the country in which the holiday is available. For example, \"US\", \"DE\", \"GB\". A holiday cutoff can only be configured in a shipping settings service with matching delivery country. Always present.",
          type = "string",
        },
        date = {
          description = "Date of the holiday, in ISO 8601 format. For example, \"2016-12-25\" for Christmas 2016. Always present.",
          type = "string",
        },
        deliveryGuaranteeDate = {
          description = "Date on which the order has to arrive at the customer's, in ISO 8601 format. For example, \"2016-12-24\" for 24th December 2016. Always present.",
          type = "string",
        },
        deliveryGuaranteeHour = {
          description = "Hour of the day in the delivery location's timezone on the guaranteed delivery date by which the order has to arrive at the customer's. Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Always present.",
          format = "uint64",
          type = "string",
        },
        id = {
          description = "Unique identifier for the holiday to be used when configuring holiday cutoffs. Always present.",
          type = "string",
        },
        type = {
          description = "The holiday type. Always present. Acceptable values are: - \"`Christmas`\" - \"`Easter`\" - \"`Father's Day`\" - \"`Halloween`\" - \"`Independence Day (USA)`\" - \"`Mother's Day`\" - \"`Thanksgiving`\" - \"`Valentine's Day`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    InapplicabilityDetails = {
      description = "Map of inapplicability details.",
      id = "InapplicabilityDetails",
      properties = {
        inapplicableCount = {
          description = "Count of this inapplicable reason code.",
          format = "int64",
          type = "string",
        },
        inapplicableReason = {
          description = "Reason code this rule was not applicable.",
          enum = {
            "INAPPLICABLE_REASON_UNSPECIFIED",
            "CANNOT_BEAT_BUYBOX_WINNER",
            "ALREADY_WINNING_BUYBOX",
            "TRIUMPHED_OVER_BY_SAME_TYPE_RULE",
            "TRIUMPHED_OVER_BY_OTHER_RULE_ON_OFFER",
            "RESTRICTIONS_NOT_MET",
            "UNCATEGORIZED",
            "INVALID_AUTO_PRICE_MIN",
            "INVALID_FLOOR_CONFIG",
          },
          enumDescriptions = {
            "Default value. Should not be used.",
            "The rule set for this product cannot beat the buybox winner.",
            "This product can already win the buybox without rule.",
            "Another rule of the same type takes precedence over this one.",
            "Another rule of a different type takes precedence over this one.",
            "The rule restrictions are not met. For example, this may be the case if the calculated rule price is lower than floor price in the restriction.",
            "The reason is not categorized to any known reason.",
            "The auto_pricing_min_price is invalid. For example, it is missing or < 0.",
            "The floor defined in the rule is invalid. For example, it has the wrong sign which results in a floor < 0.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Installment = {
      id = "Installment",
      properties = {
        amount = {
          ["$ref"] = "Price",
          description = "The amount the buyer has to pay per month.",
        },
        months = {
          description = "The number of installments the buyer has to pay.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    InvoiceSummary = {
      id = "InvoiceSummary",
      properties = {
        additionalChargeSummaries = {
          description = "Summary of the total amounts of the additional charges.",
          items = {
            ["$ref"] = "InvoiceSummaryAdditionalChargeSummary",
          },
          type = "array",
        },
        productTotal = {
          ["$ref"] = "Amount",
          description = "[required] Total price for the product.",
        },
      },
      type = "object",
    },
    InvoiceSummaryAdditionalChargeSummary = {
      id = "InvoiceSummaryAdditionalChargeSummary",
      properties = {
        totalAmount = {
          ["$ref"] = "Amount",
          description = "[required] Total additional charge for this type.",
        },
        type = {
          description = "[required] Type of the additional charge. Acceptable values are: - \"`shipping`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    LabelIds = {
      description = "The IDs of labels that should be assigned to the CSS domain.",
      id = "LabelIds",
      properties = {
        labelIds = {
          description = "The list of label IDs.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LiaAboutPageSettings = {
      id = "LiaAboutPageSettings",
      properties = {
        status = {
          description = "The status of the verification process for the About page. Acceptable values are: - \"`active`\" - \"`inactive`\" - \"`pending`\" ",
          type = "string",
        },
        url = {
          description = "The URL for the About page.",
          type = "string",
        },
      },
      type = "object",
    },
    LiaCountrySettings = {
      id = "LiaCountrySettings",
      properties = {
        about = {
          ["$ref"] = "LiaAboutPageSettings",
          description = "The settings for the About page.",
        },
        country = {
          description = "Required. CLDR country code (for example, \"US\").",
          type = "string",
        },
        hostedLocalStorefrontActive = {
          description = "The status of the \"Merchant hosted local storefront\" feature.",
          type = "boolean",
        },
        inventory = {
          ["$ref"] = "LiaInventorySettings",
          description = "LIA inventory verification settings.",
        },
        onDisplayToOrder = {
          ["$ref"] = "LiaOnDisplayToOrderSettings",
          description = "LIA \"On Display To Order\" settings.",
        },
        posDataProvider = {
          ["$ref"] = "LiaPosDataProvider",
          description = "The POS data provider linked with this country.",
        },
        storePickupActive = {
          description = "The status of the \"Store pickup\" feature.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LiaInventorySettings = {
      id = "LiaInventorySettings",
      properties = {
        inventoryVerificationContactEmail = {
          description = "The email of the contact for the inventory verification process.",
          type = "string",
        },
        inventoryVerificationContactName = {
          description = "The name of the contact for the inventory verification process.",
          type = "string",
        },
        inventoryVerificationContactStatus = {
          description = "The status of the verification contact. Acceptable values are: - \"`active`\" - \"`inactive`\" - \"`pending`\" ",
          type = "string",
        },
        status = {
          description = "The status of the inventory verification process. Acceptable values are: - \"`active`\" - \"`inactive`\" - \"`pending`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    LiaOnDisplayToOrderSettings = {
      id = "LiaOnDisplayToOrderSettings",
      properties = {
        shippingCostPolicyUrl = {
          description = "Shipping cost and policy URL.",
          type = "string",
        },
        status = {
          description = "The status of the ?On display to order? feature. Acceptable values are: - \"`active`\" - \"`inactive`\" - \"`pending`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    LiaPosDataProvider = {
      id = "LiaPosDataProvider",
      properties = {
        posDataProviderId = {
          description = "The ID of the POS data provider.",
          format = "uint64",
          type = "string",
        },
        posExternalAccountId = {
          description = "The account ID by which this merchant is known to the POS data provider.",
          type = "string",
        },
      },
      type = "object",
    },
    LiaSettings = {
      description = "Local Inventory ads (LIA) settings. All methods except listposdataproviders require the admin role.",
      id = "LiaSettings",
      properties = {
        accountId = {
          description = "The ID of the account to which these LIA settings belong. Ignored upon update, always present in get request responses.",
          format = "uint64",
          type = "string",
        },
        countrySettings = {
          description = "The LIA settings for each country.",
          items = {
            ["$ref"] = "LiaCountrySettings",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liaSettings`\"",
          type = "string",
        },
      },
      type = "object",
    },
    LiasettingsCustomBatchRequest = {
      id = "LiasettingsCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "LiasettingsCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LiasettingsCustomBatchRequestEntry = {
      id = "LiasettingsCustomBatchRequestEntry",
      properties = {
        accountId = {
          description = "The ID of the account for which to get/update account LIA settings.",
          format = "uint64",
          type = "string",
        },
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        contactEmail = {
          description = "Inventory validation contact email. Required only for SetInventoryValidationContact.",
          type = "string",
        },
        contactName = {
          description = "Inventory validation contact name. Required only for SetInventoryValidationContact.",
          type = "string",
        },
        country = {
          description = "The country code. Required only for RequestInventoryVerification.",
          type = "string",
        },
        gmbEmail = {
          description = "The Business Profile. Required only for RequestGmbAccess.",
          type = "string",
        },
        liaSettings = {
          ["$ref"] = "LiaSettings",
          description = "The account Lia settings to update. Only defined if the method is `update`.",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`get`\" - \"`getAccessibleGmbAccounts`\" - \"`requestGmbAccess`\" - \"`requestInventoryVerification`\" - \"`setInventoryVerificationContact`\" - \"`update`\" ",
          type = "string",
        },
        posDataProviderId = {
          description = "The ID of POS data provider. Required only for SetPosProvider.",
          format = "uint64",
          type = "string",
        },
        posExternalAccountId = {
          description = "The account ID by which this merchant is known to the POS provider.",
          type = "string",
        },
      },
      type = "object",
    },
    LiasettingsCustomBatchResponse = {
      id = "LiasettingsCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "LiasettingsCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    LiasettingsCustomBatchResponseEntry = {
      id = "LiasettingsCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry to which this entry responds.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors defined if, and only if, the request failed.",
        },
        gmbAccounts = {
          ["$ref"] = "GmbAccounts",
          description = "The list of accessible Business Profiles.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsCustomBatchResponseEntry`\"",
          type = "string",
        },
        liaSettings = {
          ["$ref"] = "LiaSettings",
          description = "The retrieved or updated Lia settings.",
        },
        posDataProviders = {
          description = "The list of POS data providers.",
          items = {
            ["$ref"] = "PosDataProviders",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LiasettingsGetAccessibleGmbAccountsResponse = {
      id = "LiasettingsGetAccessibleGmbAccountsResponse",
      properties = {
        accountId = {
          description = "The ID of the Merchant Center account.",
          format = "uint64",
          type = "string",
        },
        gmbAccounts = {
          description = "A list of Business Profiles which are available to the merchant.",
          items = {
            ["$ref"] = "GmbAccountsGmbAccount",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsGetAccessibleGmbAccountsResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    LiasettingsListPosDataProvidersResponse = {
      id = "LiasettingsListPosDataProvidersResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsListPosDataProvidersResponse`\".",
          type = "string",
        },
        posDataProviders = {
          description = "The list of POS data providers for each eligible country",
          items = {
            ["$ref"] = "PosDataProviders",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LiasettingsListResponse = {
      id = "LiasettingsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of LIA settings.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "LiaSettings",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LiasettingsRequestGmbAccessResponse = {
      id = "LiasettingsRequestGmbAccessResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsRequestGmbAccessResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    LiasettingsRequestInventoryVerificationResponse = {
      id = "LiasettingsRequestInventoryVerificationResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsRequestInventoryVerificationResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    LiasettingsSetInventoryVerificationContactResponse = {
      id = "LiasettingsSetInventoryVerificationContactResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsSetInventoryVerificationContactResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    LiasettingsSetPosDataProviderResponse = {
      id = "LiasettingsSetPosDataProviderResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#liasettingsSetPosDataProviderResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    LinkService = {
      id = "LinkService",
      properties = {
        service = {
          description = "Service provided to or by the linked account. Acceptable values are: - \"`shoppingActionsOrderManagement`\" - \"`shoppingActionsProductManagement`\" - \"`shoppingAdsProductManagement`\" - \"`paymentProcessing`\" ",
          type = "string",
        },
        status = {
          description = "Status of the link Acceptable values are: - \"`active`\" - \"`inactive`\" - \"`pending`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    LinkedAccount = {
      id = "LinkedAccount",
      properties = {
        linkedAccountId = {
          description = "The ID of the linked account.",
          type = "string",
        },
        services = {
          description = "List of provided services.",
          items = {
            ["$ref"] = "LinkService",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListAccountLabelsResponse = {
      description = "Response message for the `ListAccountLabels` method.",
      id = "ListAccountLabelsResponse",
      properties = {
        accountLabels = {
          description = "The labels from the specified account.",
          items = {
            ["$ref"] = "AccountLabel",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAccountReturnCarrierResponse = {
      description = "Response for listing account return carriers.",
      id = "ListAccountReturnCarrierResponse",
      properties = {
        accountReturnCarriers = {
          description = "List of all available account return carriers for the merchant.",
          items = {
            ["$ref"] = "AccountReturnCarrier",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCollectionStatusesResponse = {
      description = "Response message for the ListCollectionStatuses method.",
      id = "ListCollectionStatusesResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        resources = {
          description = "The collectionstatuses listed.",
          items = {
            ["$ref"] = "CollectionStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCollectionsResponse = {
      description = "Response message for the ListCollections method.",
      id = "ListCollectionsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        resources = {
          description = "The collections listed.",
          items = {
            ["$ref"] = "Collection",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCssesResponse = {
      description = "The response message for the `ListCsses` method",
      id = "ListCssesResponse",
      properties = {
        csses = {
          description = "The CSS domains affiliated with the specified CSS group.",
          items = {
            ["$ref"] = "Css",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMethodQuotasResponse = {
      description = "Response message for the ListMethodQuotas method.",
      id = "ListMethodQuotasResponse",
      properties = {
        methodQuotas = {
          description = "The current quota usage and limits per each method.",
          items = {
            ["$ref"] = "MethodQuota",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListRegionsResponse = {
      description = "Response message for the `ListRegions` method.",
      id = "ListRegionsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        regions = {
          description = "The regions from the specified merchant.",
          items = {
            ["$ref"] = "Region",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListRepricingProductReportsResponse = {
      description = "Response message for the ListRepricingProductReports method.",
      id = "ListRepricingProductReportsResponse",
      properties = {
        nextPageToken = {
          description = "A token for retrieving the next page. Its absence means there is no subsequent page.",
          type = "string",
        },
        repricingProductReports = {
          description = "Periodic reports for the given Repricing product.",
          items = {
            ["$ref"] = "RepricingProductReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListRepricingRuleReportsResponse = {
      description = "Response message for the ListRepricingRuleReports method.",
      id = "ListRepricingRuleReportsResponse",
      properties = {
        nextPageToken = {
          description = "A token for retrieving the next page. Its absence means there is no subsequent page.",
          type = "string",
        },
        repricingRuleReports = {
          description = "Daily reports for the given Repricing rule.",
          items = {
            ["$ref"] = "RepricingRuleReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListRepricingRulesResponse = {
      description = "Response message for the `ListRepricingRules` method.",
      id = "ListRepricingRulesResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        repricingRules = {
          description = "The rules from the specified merchant.",
          items = {
            ["$ref"] = "RepricingRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListReturnPolicyOnlineResponse = {
      description = "Response message for the `ListReturnPolicyOnline` method.",
      id = "ListReturnPolicyOnlineResponse",
      properties = {
        returnPolicies = {
          description = "The retrieved return policies.",
          items = {
            ["$ref"] = "ReturnPolicyOnline",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocalInventory = {
      description = "Local inventory resource. For accepted attribute values, see the local product inventory feed specification.",
      id = "LocalInventory",
      properties = {
        availability = {
          description = "Availability of the product. For accepted attribute values, see the local product inventory feed specification.",
          type = "string",
        },
        customAttributes = {
          description = "A list of custom (merchant-provided) attributes. Can also be used to submit any attribute of the feed specification in its generic form, for example, `{ \"name\": \"size type\", \"value\": \"regular\" }`.",
          items = {
            ["$ref"] = "CustomAttribute",
          },
          type = "array",
        },
        instoreProductLocation = {
          description = "In-store product location.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#localInventory`\"",
          type = "string",
        },
        pickupMethod = {
          description = "Supported pickup method for this offer. Unless the value is \"not supported\", this field must be submitted together with `pickupSla`. For accepted attribute values, see the local product inventory feed specification.",
          type = "string",
        },
        pickupSla = {
          description = "Expected date that an order will be ready for pickup relative to the order date. Must be submitted together with `pickupMethod`. For accepted attribute values, see the local product inventory feed specification.",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Price of the product.",
        },
        quantity = {
          description = "Quantity of the product. Must be nonnegative.",
          format = "uint32",
          type = "integer",
        },
        salePrice = {
          ["$ref"] = "Price",
          description = "Sale price of the product. Mandatory if `sale_price_effective_date` is defined.",
        },
        salePriceEffectiveDate = {
          description = "A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates may be specified as 'null' if undecided.",
          type = "string",
        },
        storeCode = {
          description = "Required. Store code of this local inventory resource.",
          type = "string",
        },
      },
      type = "object",
    },
    LocalinventoryCustomBatchRequest = {
      id = "LocalinventoryCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "LocalinventoryCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocalinventoryCustomBatchRequestEntry = {
      description = "Batch entry encoding a single local inventory update request.",
      id = "LocalinventoryCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        localInventory = {
          ["$ref"] = "LocalInventory",
          description = "Local inventory of the product.",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "Method of the batch request entry. Acceptable values are: - \"`insert`\" ",
          type = "string",
        },
        productId = {
          description = "The ID of the product for which to update local inventory.",
          type = "string",
        },
      },
      type = "object",
    },
    LocalinventoryCustomBatchResponse = {
      id = "LocalinventoryCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "LocalinventoryCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#localinventoryCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    LocalinventoryCustomBatchResponseEntry = {
      description = "Batch entry encoding a single local inventory update response.",
      id = "LocalinventoryCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#localinventoryCustomBatchResponseEntry`\"",
          type = "string",
        },
      },
      type = "object",
    },
    LocationIdSet = {
      id = "LocationIdSet",
      properties = {
        locationIds = {
          description = "A non-empty list of location IDs. They must all be of the same location type (for example, state).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LoyaltyPoints = {
      id = "LoyaltyPoints",
      properties = {
        name = {
          description = "Name of loyalty points program. It is recommended to limit the name to 12 full-width characters or 24 Roman characters.",
          type = "string",
        },
        pointsValue = {
          description = "The retailer's loyalty points in absolute value.",
          format = "int64",
          type = "string",
        },
        ratio = {
          description = "The ratio of a point when converted to currency. Google assumes currency based on Merchant Center settings. If ratio is left out, it defaults to 1.0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    MerchantOrderReturn = {
      description = "Order return. Production access (all methods) requires the order manager role. Sandbox access does not.",
      id = "MerchantOrderReturn",
      properties = {
        creationDate = {
          description = "The date of creation of the return, in ISO 8601 format.",
          type = "string",
        },
        merchantOrderId = {
          description = "Merchant defined order ID.",
          type = "string",
        },
        orderId = {
          description = "Google order ID.",
          type = "string",
        },
        orderReturnId = {
          description = "Order return ID generated by Google.",
          type = "string",
        },
        returnItems = {
          description = "Items of the return.",
          items = {
            ["$ref"] = "MerchantOrderReturnItem",
          },
          type = "array",
        },
        returnPricingInfo = {
          ["$ref"] = "ReturnPricingInfo",
          description = "Information about shipping costs.",
        },
        returnShipments = {
          description = "Shipments of the return.",
          items = {
            ["$ref"] = "ReturnShipment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MerchantOrderReturnItem = {
      id = "MerchantOrderReturnItem",
      properties = {
        customerReturnReason = {
          ["$ref"] = "CustomerReturnReason",
          description = "The reason that the customer chooses to return an item.",
        },
        itemId = {
          description = "Product level item ID. If the returned items are of the same product, they will have the same ID.",
          type = "string",
        },
        merchantRejectionReason = {
          ["$ref"] = "MerchantRejectionReason",
          description = "The reason that the merchant chose to reject an item return.",
        },
        merchantReturnReason = {
          ["$ref"] = "RefundReason",
          description = "The reason that merchant chooses to accept a return item.",
        },
        product = {
          ["$ref"] = "OrderLineItemProduct",
          description = "Product data from the time of the order placement.",
        },
        refundableAmount = {
          ["$ref"] = "MonetaryAmount",
          description = "Maximum amount that can be refunded for this return item.",
        },
        returnItemId = {
          description = "Unit level ID for the return item. Different units of the same product will have different IDs.",
          type = "string",
        },
        returnShipmentIds = {
          description = "IDs of the return shipments that this return item belongs to.",
          items = {
            type = "string",
          },
          type = "array",
        },
        shipmentGroupId = {
          description = "ID of the original shipment group. Provided for shipments with invoice support.",
          type = "string",
        },
        shipmentUnitId = {
          description = "ID of the shipment unit assigned by the merchant. Provided for shipments with invoice support.",
          type = "string",
        },
        state = {
          description = "State of the item. Acceptable values are: - \"`canceled`\" - \"`new`\" - \"`received`\" - \"`refunded`\" - \"`rejected`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    MerchantRejectionReason = {
      id = "MerchantRejectionReason",
      properties = {
        description = {
          description = "Description of the reason.",
          type = "string",
        },
        reasonCode = {
          description = "Code of the rejection reason.",
          type = "string",
        },
      },
      type = "object",
    },
    MethodQuota = {
      description = "The quota information per method in the Content API. Includes only methods with current usage greater than zero for your account.",
      id = "MethodQuota",
      properties = {
        method = {
          description = "The method name, for example `products.list`. Method name does not contain version because quota can be shared between different API versions of the same method.",
          type = "string",
        },
        quotaLimit = {
          description = "The current quota limit per day, meaning the maximum number of calls for the method.",
          format = "int64",
          type = "string",
        },
        quotaUsage = {
          description = "The current quota usage, meaning the number of calls already made to the method.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Metrics = {
      description = "Performance metrics. Values are only set for metrics requested explicitly in the request's search query.",
      id = "Metrics",
      properties = {
        aos = {
          description = "Average order size - the average number of items in an order. **This metric cannot be segmented by product dimensions and customer_country_code.**",
          format = "double",
          type = "number",
        },
        aovMicros = {
          description = "Average order value in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) - the average value (total price of items) of all placed orders. The currency of the returned value is stored in the currency_code segment. If this metric is selected, 'segments.currency_code' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. **This metric cannot be segmented by product dimensions and customer_country_code.**",
          format = "double",
          type = "number",
        },
        clicks = {
          description = "Number of clicks.",
          format = "int64",
          type = "string",
        },
        conversionRate = {
          description = "Number of conversions divided by the number of clicks, reported on the impression date. The metric is currently available only for the FREE_PRODUCT_LISTING program.",
          format = "double",
          type = "number",
        },
        conversionValueMicros = {
          description = "Value of conversions in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) attributed to the product, reported on the conversion date. The metric is currently available only for the FREE_PRODUCT_LISTING program. The currency of the returned value is stored in the currency_code segment. If this metric is selected, 'segments.currency_code' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response.",
          format = "int64",
          type = "string",
        },
        conversions = {
          description = "Number of conversions attributed to the product, reported on the conversion date. Depending on the attribution model, a conversion might be distributed across multiple clicks, where each click gets its own credit assigned. This metric is a sum of all such credits. The metric is currently available only for the FREE_PRODUCT_LISTING program.",
          format = "double",
          type = "number",
        },
        ctr = {
          description = "Click-through rate - the number of clicks merchant's products receive (clicks) divided by the number of times the products are shown (impressions).",
          format = "double",
          type = "number",
        },
        daysToShip = {
          description = "Average number of days between an order being placed and the order being fully shipped, reported on the last shipment date. **This metric cannot be segmented by product dimensions and customer_country_code.**",
          format = "double",
          type = "number",
        },
        impressions = {
          description = "Number of times merchant's products are shown.",
          format = "int64",
          type = "string",
        },
        itemDaysToShip = {
          description = "Average number of days between an item being ordered and the item being **This metric cannot be segmented by customer_country_code.**",
          format = "double",
          type = "number",
        },
        itemFillRate = {
          description = "Percentage of shipped items in relation to all finalized items (shipped or rejected by the merchant; unshipped items are not taken into account), reported on the order date. Item fill rate is lowered by merchant rejections. **This metric cannot be segmented by customer_country_code.**",
          format = "double",
          type = "number",
        },
        orderedItemSalesMicros = {
          description = "Total price of ordered items in micros (1 millionth of a standard unit, 1 USD = 1000000 micros). Excludes shipping, taxes (US only), and customer cancellations that happened within 30 minutes of placing the order. The currency of the returned value is stored in the currency_code segment. If this metric is selected, 'segments.currency_code' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. **This metric cannot be segmented by customer_country_code.**",
          format = "int64",
          type = "string",
        },
        orderedItems = {
          description = "Number of ordered items. Excludes customer cancellations that happened within 30 minutes of placing the order. **This metric cannot be segmented by customer_country_code.**",
          format = "int64",
          type = "string",
        },
        orders = {
          description = "Number of placed orders. Excludes customer cancellations that happened within 30 minutes of placing the order. **This metric cannot be segmented by product dimensions and customer_country_code.**",
          format = "int64",
          type = "string",
        },
        rejectedItems = {
          description = "Number of ordered items canceled by the merchant, reported on the order date. **This metric cannot be segmented by customer_country_code.**",
          format = "int64",
          type = "string",
        },
        returnRate = {
          description = "Total price of returned items divided by the total price of shipped items, reported on the order date. If this metric is selected, 'segments.currency_code' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. **This metric cannot be segmented by customer_country_code.**",
          format = "double",
          type = "number",
        },
        returnedItems = {
          description = "Number of ordered items sent back for return, reported on the date when the merchant accepted the return. **This metric cannot be segmented by customer_country_code.**",
          format = "int64",
          type = "string",
        },
        returnsMicros = {
          description = "Total price of ordered items sent back for return in micros (1 millionth of a standard unit, 1 USD = 1000000 micros), reported on the date when the merchant accepted the return. The currency of the returned value is stored in the currency_code segment. If this metric is selected, 'segments.currency_code' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. **This metric cannot be segmented by customer_country_code.**",
          format = "int64",
          type = "string",
        },
        shippedItemSalesMicros = {
          description = "Total price of shipped items in micros (1 millionth of a standard unit, 1 USD = 1000000 micros), reported on the order date. Excludes shipping and taxes (US only). The currency of the returned value is stored in the currency_code segment. If this metric is selected, 'segments.currency_code' is automatically added to the SELECT clause in the search query (unless it is explicitly selected by the user) and the currency_code segment is populated in the response. **This metric cannot be segmented by customer_country_code.**",
          format = "int64",
          type = "string",
        },
        shippedItems = {
          description = "Number of shipped items, reported on the shipment date. **This metric cannot be segmented by customer_country_code.**",
          format = "int64",
          type = "string",
        },
        shippedOrders = {
          description = "Number of fully shipped orders, reported on the last shipment date. **This metric cannot be segmented by product dimensions and customer_country_code.**",
          format = "int64",
          type = "string",
        },
        unshippedItems = {
          description = "Number of ordered items not shipped up until the end of the queried day. If a multi-day period is specified in the search query, the returned value is the average number of unshipped items over the days in the queried period. **This metric cannot be segmented by customer_country_code.**",
          format = "double",
          type = "number",
        },
        unshippedOrders = {
          description = "Number of orders not shipped or partially shipped up until the end of the queried day. If a multi-day period is specified in the search query, the returned value is the average number of unshipped orders over the days in the queried period. **This metric cannot be segmented by product dimensions and customer_country_code.**",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    MinimumOrderValueTable = {
      id = "MinimumOrderValueTable",
      properties = {
        storeCodeSetWithMovs = {
          items = {
            ["$ref"] = "MinimumOrderValueTableStoreCodeSetWithMov",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MinimumOrderValueTableStoreCodeSetWithMov = {
      description = "A list of store code sets sharing the same minimum order value. At least two sets are required and the last one must be empty, which signifies 'MOV for all other stores'. Each store code can only appear once across all the sets. All prices within a service must have the same currency.",
      id = "MinimumOrderValueTableStoreCodeSetWithMov",
      properties = {
        storeCodes = {
          description = "A list of unique store codes or empty for the catch all.",
          items = {
            type = "string",
          },
          type = "array",
        },
        value = {
          ["$ref"] = "Price",
          description = "The minimum order value for the given stores.",
        },
      },
      type = "object",
    },
    MonetaryAmount = {
      id = "MonetaryAmount",
      properties = {
        priceAmount = {
          ["$ref"] = "Price",
          description = "The pre-tax or post-tax price depends on the location of the order. - For countries (for example, \"US\". where price attribute excludes tax, this field corresponds to the pre-tax value. - For coutries (for example, \"France\") where price attribute includes tax, this field corresponds to the post-tax value .",
        },
        taxAmount = {
          ["$ref"] = "Price",
          description = "Tax value, present only for countries where price attribute excludes tax (for example, \"US\". No tax is referenced as 0 value with the corresponding `currency`.",
        },
      },
      type = "object",
    },
    OnboardBuyOnGoogleProgramRequest = {
      description = "Request message for the OnboardProgram method.",
      id = "OnboardBuyOnGoogleProgramRequest",
      properties = {
        customerServiceEmail = {
          description = "The customer service email.",
          type = "string",
        },
      },
      type = "object",
    },
    Order = {
      description = "Order. Production access (all methods) requires the order manager role. Sandbox access does not.",
      id = "Order",
      properties = {
        acknowledged = {
          description = "Whether the order was acknowledged.",
          type = "boolean",
        },
        annotations = {
          description = "List of key-value pairs that are attached to a given order.",
          items = {
            ["$ref"] = "OrderOrderAnnotation",
          },
          type = "array",
        },
        billingAddress = {
          ["$ref"] = "OrderAddress",
          description = "The billing address.",
        },
        customer = {
          ["$ref"] = "OrderCustomer",
          description = "The details of the customer who placed the order.",
        },
        deliveryDetails = {
          ["$ref"] = "OrderDeliveryDetails",
          description = "Delivery details for shipments of type `delivery`.",
        },
        id = {
          description = "The REST ID of the order. Globally unique.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#order`\"",
          type = "string",
        },
        lineItems = {
          description = "Line items that are ordered.",
          items = {
            ["$ref"] = "OrderLineItem",
          },
          type = "array",
        },
        merchantId = {
          format = "uint64",
          type = "string",
        },
        merchantOrderId = {
          description = "Merchant-provided ID of the order.",
          type = "string",
        },
        netPriceAmount = {
          ["$ref"] = "Price",
          description = "The net amount for the order (price part). For example, if an order was originally for $100 and a refund was issued for $20, the net amount will be $80.",
        },
        netTaxAmount = {
          ["$ref"] = "Price",
          description = "The net amount for the order (tax part). Note that in certain cases due to taxable base adjustment `netTaxAmount` might not match to a sum of tax field across all lineItems and refunds.",
        },
        paymentStatus = {
          description = "The status of the payment. Acceptable values are: - \"`paymentCaptured`\" - \"`paymentRejected`\" - \"`paymentSecured`\" - \"`pendingAuthorization`\" ",
          type = "string",
        },
        pickupDetails = {
          ["$ref"] = "OrderPickupDetails",
          description = "Pickup details for shipments of type `pickup`.",
        },
        placedDate = {
          description = "The date when the order was placed, in ISO 8601 format.",
          type = "string",
        },
        promotions = {
          description = "Promotions associated with the order. To determine which promotions apply to which products, check the `Promotions[].appliedItems[].lineItemId` field against the `LineItems[].id` field for each promotion. If a promotion is applied to more than 1 offerId, divide the discount value by the number of affected offers to determine how much discount to apply to each offerId. Examples: 1. To calculate price paid by the customer for a single line item including the discount: For each promotion, subtract the `LineItems[].adjustments[].priceAdjustment.value` amount from the `LineItems[].Price.value`. 2. To calculate price paid by the customer for a single line item including the discount in case of multiple quantity: For each promotion, divide the `LineItems[].adjustments[].priceAdjustment.value` by the quantity of products then subtract the resulting value from the `LineItems[].Product.Price.value` for each quantity item. Only 1 promotion can be applied to an offerId in a given order. To refund an item which had a promotion applied to it, make sure to refund the amount after first subtracting the promotion discount from the item price. More details about the program are here.",
          items = {
            ["$ref"] = "OrderPromotion",
          },
          type = "array",
        },
        refunds = {
          description = "Refunds for the order.",
          items = {
            ["$ref"] = "OrderRefund",
          },
          type = "array",
        },
        shipments = {
          description = "Shipments of the order.",
          items = {
            ["$ref"] = "OrderShipment",
          },
          type = "array",
        },
        shippingCost = {
          ["$ref"] = "Price",
          description = "The total cost of shipping for all items.",
        },
        shippingCostTax = {
          ["$ref"] = "Price",
          description = "The tax for the total shipping cost.",
        },
        status = {
          description = "The status of the order. Acceptable values are: - \"`canceled`\" - \"`delivered`\" - \"`inProgress`\" - \"`partiallyDelivered`\" - \"`partiallyReturned`\" - \"`partiallyShipped`\" - \"`pendingShipment`\" - \"`returned`\" - \"`shipped`\" ",
          type = "string",
        },
        taxCollector = {
          description = "The party responsible for collecting and remitting taxes. Acceptable values are: - \"`marketplaceFacilitator`\" - \"`merchant`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    OrderAddress = {
      id = "OrderAddress",
      properties = {
        country = {
          description = "CLDR country code (for example, \"US\").",
          type = "string",
        },
        fullAddress = {
          description = "Strings representing the lines of the printed label for mailing the order, for example: John Smith 1600 Amphitheatre Parkway Mountain View, CA, 94043 United States ",
          items = {
            type = "string",
          },
          type = "array",
        },
        isPostOfficeBox = {
          description = "Whether the address is a post office box.",
          type = "boolean",
        },
        locality = {
          description = "City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).",
          type = "string",
        },
        postalCode = {
          description = "Postal Code or ZIP (for example, \"94043\").",
          type = "string",
        },
        recipientName = {
          description = "Name of the recipient.",
          type = "string",
        },
        region = {
          description = "Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").",
          type = "string",
        },
        streetAddress = {
          description = "Street-level part of the address. Use `\\n` to add a second line.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrderCancellation = {
      id = "OrderCancellation",
      properties = {
        actor = {
          description = "The actor that created the cancellation. Acceptable values are: - \"`customer`\" - \"`googleBot`\" - \"`googleCustomerService`\" - \"`googlePayments`\" - \"`googleSabre`\" - \"`merchant`\" ",
          type = "string",
        },
        creationDate = {
          description = "Date on which the cancellation has been created, in ISO 8601 format.",
          type = "string",
        },
        quantity = {
          description = "The quantity that was canceled.",
          format = "uint32",
          type = "integer",
        },
        reason = {
          description = "The reason for the cancellation. Orders that are canceled with a noInventory reason will lead to the removal of the product from Buy on Google until you make an update to that product. This won't affect your Shopping ads. Acceptable values are: - \"`autoPostInternal`\" - \"`autoPostInvalidBillingAddress`\" - \"`autoPostNoInventory`\" - \"`autoPostPriceError`\" - \"`autoPostUndeliverableShippingAddress`\" - \"`couponAbuse`\" - \"`customerCanceled`\" - \"`customerInitiatedCancel`\" - \"`customerSupportRequested`\" - \"`failToPushOrderGoogleError`\" - \"`failToPushOrderMerchantError`\" - \"`failToPushOrderMerchantFulfillmentError`\" - \"`failToPushOrderToMerchant`\" - \"`failToPushOrderToMerchantOutOfStock`\" - \"`invalidCoupon`\" - \"`malformedShippingAddress`\" - \"`merchantDidNotShipOnTime`\" - \"`noInventory`\" - \"`orderTimeout`\" - \"`other`\" - \"`paymentAbuse`\" - \"`paymentDeclined`\" - \"`priceError`\" - \"`returnRefundAbuse`\" - \"`shippingPriceError`\" - \"`taxError`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`failedToCaptureFunds`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderCustomer = {
      id = "OrderCustomer",
      properties = {
        fullName = {
          description = "Full name of the customer.",
          type = "string",
        },
        invoiceReceivingEmail = {
          description = "Email address for the merchant to send value-added tax or invoice documentation of the order. Only the last document sent is made available to the customer. For more information, see About automated VAT invoicing for Buy on Google.",
          type = "string",
        },
        loyaltyInfo = {
          ["$ref"] = "OrderCustomerLoyaltyInfo",
          description = "Loyalty program information.",
        },
        marketingRightsInfo = {
          ["$ref"] = "OrderCustomerMarketingRightsInfo",
          description = "Customer's marketing preferences. Contains the marketing opt-in information that is current at the time that the merchant call. User preference selections can change from one order to the next so preferences must be checked with every order.",
        },
      },
      type = "object",
    },
    OrderCustomerLoyaltyInfo = {
      id = "OrderCustomerLoyaltyInfo",
      properties = {
        loyaltyNumber = {
          description = "The loyalty card/membership number.",
          type = "string",
        },
        name = {
          description = "Name of card/membership holder, this field will be populated when",
          type = "string",
        },
      },
      type = "object",
    },
    OrderCustomerMarketingRightsInfo = {
      id = "OrderCustomerMarketingRightsInfo",
      properties = {
        explicitMarketingPreference = {
          description = "Last known customer selection regarding marketing preferences. In certain cases this selection might not be known, so this field would be empty. If a customer selected `granted` in their most recent order, they can be subscribed to marketing emails. Customers who have chosen `denied` must not be subscribed, or must be unsubscribed if already opted-in. Acceptable values are: - \"`denied`\" - \"`granted`\" ",
          type = "string",
        },
        lastUpdatedTimestamp = {
          description = "Timestamp when last time marketing preference was updated. Could be empty, if user wasn't offered a selection yet.",
          type = "string",
        },
        marketingEmailAddress = {
          description = "Email address that can be used for marketing purposes. The field may be empty even if `explicitMarketingPreference` is 'granted'. This happens when retrieving an old order from the customer who deleted their account.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderDeliveryDetails = {
      id = "OrderDeliveryDetails",
      properties = {
        address = {
          ["$ref"] = "OrderAddress",
          description = "The delivery address",
        },
        phoneNumber = {
          description = "The phone number of the person receiving the delivery.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderLineItem = {
      id = "OrderLineItem",
      properties = {
        adjustments = {
          description = "Price and tax adjustments applied on the line item.",
          items = {
            ["$ref"] = "OrderLineItemAdjustment",
          },
          type = "array",
        },
        annotations = {
          description = "Annotations that are attached to the line item.",
          items = {
            ["$ref"] = "OrderMerchantProvidedAnnotation",
          },
          type = "array",
        },
        cancellations = {
          description = "Cancellations of the line item.",
          items = {
            ["$ref"] = "OrderCancellation",
          },
          type = "array",
        },
        id = {
          description = "The ID of the line item.",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Total price for the line item. For example, if two items for $10 are purchased, the total price will be $20.",
        },
        product = {
          ["$ref"] = "OrderLineItemProduct",
          description = "Product data as seen by customer from the time of the order placement. Note that certain attributes values (for example, title or gtin) might be reformatted and no longer match values submitted through product feed.",
        },
        quantityCanceled = {
          description = "Number of items canceled.",
          format = "uint32",
          type = "integer",
        },
        quantityDelivered = {
          description = "Number of items delivered.",
          format = "uint32",
          type = "integer",
        },
        quantityOrdered = {
          description = "Number of items ordered.",
          format = "uint32",
          type = "integer",
        },
        quantityPending = {
          description = "Number of items pending.",
          format = "uint32",
          type = "integer",
        },
        quantityReadyForPickup = {
          description = "Number of items ready for pickup.",
          format = "uint32",
          type = "integer",
        },
        quantityReturned = {
          description = "Number of items returned.",
          format = "uint32",
          type = "integer",
        },
        quantityShipped = {
          description = "Number of items shipped.",
          format = "uint32",
          type = "integer",
        },
        quantityUndeliverable = {
          description = "Number of items undeliverable.",
          format = "uint32",
          type = "integer",
        },
        returnInfo = {
          ["$ref"] = "OrderLineItemReturnInfo",
          description = "Details of the return policy for the line item.",
        },
        returns = {
          description = "Returns of the line item.",
          items = {
            ["$ref"] = "OrderReturn",
          },
          type = "array",
        },
        shippingDetails = {
          ["$ref"] = "OrderLineItemShippingDetails",
          description = "Details of the requested shipping for the line item.",
        },
        tax = {
          ["$ref"] = "Price",
          description = "Total tax amount for the line item. For example, if two items are purchased, and each have a cost tax of $2, the total tax amount will be $4.",
        },
      },
      type = "object",
    },
    OrderLineItemAdjustment = {
      id = "OrderLineItemAdjustment",
      properties = {
        priceAdjustment = {
          ["$ref"] = "Price",
          description = "Adjustment for total price of the line item.",
        },
        taxAdjustment = {
          ["$ref"] = "Price",
          description = "Adjustment for total tax of the line item.",
        },
        type = {
          description = "Type of this adjustment. Acceptable values are: - \"`promotion`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    OrderLineItemProduct = {
      id = "OrderLineItemProduct",
      properties = {
        brand = {
          description = "Brand of the item.",
          type = "string",
        },
        condition = {
          description = "Condition or state of the item. Acceptable values are: - \"`new`\" - \"`refurbished`\" - \"`used`\" ",
          type = "string",
        },
        contentLanguage = {
          description = "The two-letter ISO 639-1 language code for the item.",
          type = "string",
        },
        fees = {
          description = "Associated fees at order creation time.",
          items = {
            ["$ref"] = "OrderLineItemProductFee",
          },
          type = "array",
        },
        gtin = {
          description = "Global Trade Item Number (GTIN) of the item.",
          type = "string",
        },
        id = {
          description = "The REST ID of the product.",
          type = "string",
        },
        imageLink = {
          description = "URL of an image of the item.",
          type = "string",
        },
        itemGroupId = {
          description = "Shared identifier for all variants of the same product.",
          type = "string",
        },
        mpn = {
          description = "Manufacturer Part Number (MPN) of the item.",
          type = "string",
        },
        offerId = {
          description = "An identifier of the item.",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Price of the item.",
        },
        shownImage = {
          description = "URL to the cached image shown to the user when order was placed.",
          type = "string",
        },
        targetCountry = {
          description = "The CLDR territory code of the target country of the product.",
          type = "string",
        },
        title = {
          description = "The title of the product.",
          type = "string",
        },
        variantAttributes = {
          description = "Variant attributes for the item. These are dimensions of the product, such as color, gender, material, pattern, and size. You can find a comprehensive list of variant attributes here.",
          items = {
            ["$ref"] = "OrderLineItemProductVariantAttribute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrderLineItemProductFee = {
      id = "OrderLineItemProductFee",
      properties = {
        amount = {
          ["$ref"] = "Price",
          description = "Amount of the fee.",
        },
        name = {
          description = "Name of the fee.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderLineItemProductVariantAttribute = {
      id = "OrderLineItemProductVariantAttribute",
      properties = {
        dimension = {
          description = "The dimension of the variant.",
          type = "string",
        },
        value = {
          description = "The value for the dimension.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderLineItemReturnInfo = {
      id = "OrderLineItemReturnInfo",
      properties = {
        daysToReturn = {
          description = "Required. How many days later the item can be returned.",
          format = "int32",
          type = "integer",
        },
        isReturnable = {
          description = "Required. Whether the item is returnable.",
          type = "boolean",
        },
        policyUrl = {
          description = "Required. URL of the item return policy.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderLineItemShippingDetails = {
      id = "OrderLineItemShippingDetails",
      properties = {
        deliverByDate = {
          description = "Required. The delivery by date, in ISO 8601 format.",
          type = "string",
        },
        method = {
          ["$ref"] = "OrderLineItemShippingDetailsMethod",
          description = "Required. Details of the shipping method.",
        },
        pickupPromiseInMinutes = {
          description = "The promised time in minutes in which the order will be ready for pickup. This only applies to buy-online-pickup-in-store same-day order.",
          format = "uint32",
          type = "integer",
        },
        shipByDate = {
          description = "Required. The ship by date, in ISO 8601 format.",
          type = "string",
        },
        type = {
          description = "Type of shipment. Indicates whether `deliveryDetails` or `pickupDetails` is applicable for this shipment. Acceptable values are: - \"`delivery`\" - \"`pickup`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    OrderLineItemShippingDetailsMethod = {
      id = "OrderLineItemShippingDetailsMethod",
      properties = {
        carrier = {
          description = "The carrier for the shipping. Optional. See `shipments[].carrier` for a list of acceptable values.",
          type = "string",
        },
        maxDaysInTransit = {
          description = "Required. Maximum transit time.",
          format = "uint32",
          type = "integer",
        },
        methodName = {
          description = "Required. The name of the shipping method.",
          type = "string",
        },
        minDaysInTransit = {
          description = "Required. Minimum transit time.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    OrderMerchantProvidedAnnotation = {
      id = "OrderMerchantProvidedAnnotation",
      properties = {
        key = {
          description = "Key for additional merchant provided (as key-value pairs) annotation about the line item.",
          type = "string",
        },
        value = {
          description = "Value for additional merchant provided (as key-value pairs) annotation about the line item.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderOrderAnnotation = {
      id = "OrderOrderAnnotation",
      properties = {
        key = {
          description = "Key for additional google provided (as key-value pairs) annotation.",
          type = "string",
        },
        value = {
          description = "Value for additional google provided (as key-value pairs) annotation.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderPickupDetails = {
      id = "OrderPickupDetails",
      properties = {
        address = {
          ["$ref"] = "OrderAddress",
          description = "Address of the pickup location where the shipment should be sent. Note that `recipientName` in the address is the name of the business at the pickup location.",
        },
        collectors = {
          description = "Collectors authorized to pick up shipment from the pickup location.",
          items = {
            ["$ref"] = "OrderPickupDetailsCollector",
          },
          type = "array",
        },
        locationId = {
          description = "ID of the pickup location.",
          type = "string",
        },
        pickupType = {
          description = "The pickup type of this order. Acceptable values are: - \"`merchantStore`\" - \"`merchantStoreCurbside`\" - \"`merchantStoreLocker`\" - \"`thirdPartyPickupPoint`\" - \"`thirdPartyLocker`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    OrderPickupDetailsCollector = {
      id = "OrderPickupDetailsCollector",
      properties = {
        name = {
          description = "Name of the person picking up the shipment.",
          type = "string",
        },
        phoneNumber = {
          description = "Phone number of the person picking up the shipment.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderPromotion = {
      id = "OrderPromotion",
      properties = {
        applicableItems = {
          description = "Items that this promotion may be applied to. If empty, there are no restrictions on applicable items and quantity. This field will also be empty for shipping promotions because shipping is not tied to any specific item.",
          items = {
            ["$ref"] = "OrderPromotionItem",
          },
          type = "array",
        },
        appliedItems = {
          description = "Items that this promotion have been applied to. Do not provide for `orders.createtestorder`. This field will be empty for shipping promotions because shipping is not tied to any specific item.",
          items = {
            ["$ref"] = "OrderPromotionItem",
          },
          type = "array",
        },
        endTime = {
          description = "Promotion end time in ISO 8601 format. Date, time, and offset required, for example, \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\".",
          type = "string",
        },
        funder = {
          description = "Required. The party funding the promotion. Only `merchant` is supported for `orders.createtestorder`. Acceptable values are: - \"`google`\" - \"`merchant`\" ",
          type = "string",
        },
        merchantPromotionId = {
          description = "Required. This field is used to identify promotions within merchants' own systems.",
          type = "string",
        },
        priceValue = {
          ["$ref"] = "Price",
          description = "Estimated discount applied to price. Amount is pre-tax or post-tax depending on location of order.",
        },
        shortTitle = {
          description = "A short title of the promotion to be shown on the checkout page. Do not provide for `orders.createtestorder`.",
          type = "string",
        },
        startTime = {
          description = "Promotion start time in ISO 8601 format. Date, time, and offset required, for example, \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\".",
          type = "string",
        },
        subtype = {
          description = "Required. The category of the promotion. Only `moneyOff` is supported for `orders.createtestorder`. Acceptable values are: - \"`buyMGetMoneyOff`\" - \"`buyMGetNMoneyOff`\" - \"`buyMGetNPercentOff`\" - \"`buyMGetPercentOff`\" - \"`freeGift`\" - \"`freeGiftWithItemId`\" - \"`freeGiftWithValue`\" - \"`freeShippingOvernight`\" - \"`freeShippingStandard`\" - \"`freeShippingTwoDay`\" - \"`moneyOff`\" - \"`percentOff`\" - \"`rewardPoints`\" - \"`salePrice`\" ",
          type = "string",
        },
        taxValue = {
          ["$ref"] = "Price",
          description = "Estimated discount applied to tax (if allowed by law). Do not provide for `orders.createtestorder`.",
        },
        title = {
          description = "Required. The title of the promotion.",
          type = "string",
        },
        type = {
          description = "Required. The scope of the promotion. Only `product` is supported for `orders.createtestorder`. Acceptable values are: - \"`product`\" - \"`shipping`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    OrderPromotionItem = {
      id = "OrderPromotionItem",
      properties = {
        lineItemId = {
          description = "The line item ID of a product. Do not provide for `orders.createtestorder`.",
          type = "string",
        },
        offerId = {
          description = "Required. Offer ID of a product. Only for `orders.createtestorder`.",
          type = "string",
        },
        productId = {
          description = "`orders.createtestorder`.",
          type = "string",
        },
        quantity = {
          description = "The quantity of the associated product. Do not provide for `orders.createtestorder`.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    OrderRefund = {
      id = "OrderRefund",
      properties = {
        actor = {
          description = "The actor that created the refund. Acceptable values are: - \"`customer`\" - \"`googleBot`\" - \"`googleCustomerService`\" - \"`googlePayments`\" - \"`googleSabre`\" - \"`merchant`\" ",
          type = "string",
        },
        amount = {
          ["$ref"] = "Price",
          description = "The amount that is refunded.",
        },
        creationDate = {
          description = "Date on which the item has been created, in ISO 8601 format.",
          type = "string",
        },
        reason = {
          description = "The reason for the refund. Acceptable values are: - \"`adjustment`\" - \"`autoPostInternal`\" - \"`autoPostInvalidBillingAddress`\" - \"`autoPostNoInventory`\" - \"`autoPostPriceError`\" - \"`autoPostUndeliverableShippingAddress`\" - \"`couponAbuse`\" - \"`courtesyAdjustment`\" - \"`customerCanceled`\" - \"`customerDiscretionaryReturn`\" - \"`customerInitiatedMerchantCancel`\" - \"`customerSupportRequested`\" - \"`deliveredLateByCarrier`\" - \"`deliveredTooLate`\" - \"`expiredItem`\" - \"`failToPushOrderGoogleError`\" - \"`failToPushOrderMerchantError`\" - \"`failToPushOrderMerchantFulfillmentError`\" - \"`failToPushOrderToMerchant`\" - \"`failToPushOrderToMerchantOutOfStock`\" - \"`feeAdjustment`\" - \"`invalidCoupon`\" - \"`lateShipmentCredit`\" - \"`malformedShippingAddress`\" - \"`merchantDidNotShipOnTime`\" - \"`noInventory`\" - \"`orderTimeout`\" - \"`other`\" - \"`paymentAbuse`\" - \"`paymentDeclined`\" - \"`priceAdjustment`\" - \"`priceError`\" - \"`productArrivedDamaged`\" - \"`productNotAsDescribed`\" - \"`promoReallocation`\" - \"`qualityNotAsExpected`\" - \"`returnRefundAbuse`\" - \"`shippingCostAdjustment`\" - \"`shippingPriceError`\" - \"`taxAdjustment`\" - \"`taxError`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`wrongProductShipped`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderReportDisbursement = {
      description = "Order disbursement. All methods require the payment analyst role.",
      id = "OrderReportDisbursement",
      properties = {
        disbursementAmount = {
          ["$ref"] = "Price",
          description = "The disbursement amount.",
        },
        disbursementCreationDate = {
          description = "The disbursement date, in ISO 8601 format.",
          type = "string",
        },
        disbursementDate = {
          description = "The date the disbursement was initiated, in ISO 8601 format.",
          type = "string",
        },
        disbursementId = {
          description = "The ID of the disbursement.",
          type = "string",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    OrderReportTransaction = {
      id = "OrderReportTransaction",
      properties = {
        disbursementAmount = {
          ["$ref"] = "Price",
          description = "The disbursement amount.",
        },
        disbursementCreationDate = {
          description = "The date the disbursement was created, in ISO 8601 format.",
          type = "string",
        },
        disbursementDate = {
          description = "The date the disbursement was initiated, in ISO 8601 format.",
          type = "string",
        },
        disbursementId = {
          description = "The ID of the disbursement.",
          type = "string",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        merchantOrderId = {
          description = "Merchant-provided ID of the order.",
          type = "string",
        },
        orderId = {
          description = "The ID of the order.",
          type = "string",
        },
        productAmount = {
          ["$ref"] = "ProductAmount",
          description = "Total amount for the items.",
        },
        transactionDate = {
          description = "The date of the transaction, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderReturn = {
      id = "OrderReturn",
      properties = {
        actor = {
          description = "The actor that created the refund. Acceptable values are: - \"`customer`\" - \"`googleBot`\" - \"`googleCustomerService`\" - \"`googlePayments`\" - \"`googleSabre`\" - \"`merchant`\" ",
          type = "string",
        },
        creationDate = {
          description = "Date on which the item has been created, in ISO 8601 format.",
          type = "string",
        },
        quantity = {
          description = "Quantity that is returned.",
          format = "uint32",
          type = "integer",
        },
        reason = {
          description = "The reason for the return. Acceptable values are: - \"`customerDiscretionaryReturn`\" - \"`customerInitiatedMerchantCancel`\" - \"`deliveredTooLate`\" - \"`expiredItem`\" - \"`invalidCoupon`\" - \"`malformedShippingAddress`\" - \"`other`\" - \"`productArrivedDamaged`\" - \"`productNotAsDescribed`\" - \"`qualityNotAsExpected`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`wrongProductShipped`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderShipment = {
      id = "OrderShipment",
      properties = {
        carrier = {
          description = "The carrier handling the shipment. For supported carriers, Google includes the carrier name and tracking URL in emails to customers. For select supported carriers, Google also automatically updates the shipment status based on the provided shipment ID. *Note:* You can also use unsupported carriers, but emails to customers won't include the carrier name or tracking URL, and there will be no automatic order status updates. Supported carriers for \"US\" are: - \"`ups`\" (United Parcel Service) *automatic status updates* - \"`usps`\" (United States Postal Service) *automatic status updates* - \"`fedex`\" (FedEx) *automatic status updates * - \"`dhl`\" (DHL eCommerce) *automatic status updates* (US only) - \"`ontrac`\" (OnTrac) *automatic status updates * - \"`dhl express`\" (DHL Express) - \"`deliv`\" (Deliv) - \"`dynamex`\" (TForce) - \"`lasership`\" (LaserShip) - \"`mpx`\" (Military Parcel Xpress) - \"`uds`\" (United Delivery Service) - \"`efw`\" (Estes Forwarding Worldwide) - \"`jd logistics`\" (JD Logistics) - \"`yunexpress`\" (YunExpress) - \"`china post`\" (China Post) - \"`china ems`\" (China Post Express Mail Service) - \"`singapore post`\" (Singapore Post) - \"`pos malaysia`\" (Pos Malaysia) - \"`postnl`\" (PostNL) - \"`ptt`\" (PTT Turkish Post) - \"`eub`\" (ePacket) - \"`chukou1`\" (Chukou1 Logistics) - \"`bestex`\" (Best Express) - \"`canada post`\" (Canada Post) - \"`purolator`\" (Purolator) - \"`canpar`\" (Canpar) - \"`india post`\" (India Post) - \"`blue dart`\" (Blue Dart) - \"`delhivery`\" (Delhivery) - \"`dtdc`\" (DTDC) - \"`tpc india`\" (TPC India) - \"`lso`\" (Lone Star Overnight) - \"`tww`\" (Team Worldwide) - \"`deliver-it`\" (Deliver-IT) - \"`cdl last mile`\" (CDL Last Mile) Supported carriers for FR are: - \"`la poste`\" (La Poste) *automatic status updates * - \"`colissimo`\" (Colissimo by La Poste) *automatic status updates* - \"`ups`\" (United Parcel Service) *automatic status updates * - \"`chronopost`\" (Chronopost by La Poste) - \"`gls`\" (General Logistics Systems France) - \"`dpd`\" (DPD Group by GeoPost) - \"`bpost`\" (Belgian Post Group) - \"`colis prive`\" (Colis Privé) - \"`boxtal`\" (Boxtal) - \"`geodis`\" (GEODIS) - \"`tnt`\" (TNT) - \"`db schenker`\" (DB Schenker) - \"`aramex`\" (Aramex) ",
          type = "string",
        },
        creationDate = {
          description = "Date on which the shipment has been created, in ISO 8601 format.",
          type = "string",
        },
        deliveryDate = {
          description = "Date on which the shipment has been delivered, in ISO 8601 format. Present only if `status` is `delivered`",
          type = "string",
        },
        id = {
          description = "The ID of the shipment.",
          type = "string",
        },
        lineItems = {
          description = "The line items that are shipped.",
          items = {
            ["$ref"] = "OrderShipmentLineItemShipment",
          },
          type = "array",
        },
        scheduledDeliveryDetails = {
          ["$ref"] = "OrderShipmentScheduledDeliveryDetails",
          description = "Delivery details of the shipment if scheduling is needed.",
        },
        shipmentGroupId = {
          description = "The shipment group ID of the shipment. This is set in shiplineitems request.",
          type = "string",
        },
        status = {
          description = "The status of the shipment. Acceptable values are: - \"`delivered`\" - \"`readyForPickup`\" - \"`shipped`\" - \"`undeliverable`\" ",
          type = "string",
        },
        trackingId = {
          description = "The tracking ID for the shipment.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderShipmentLineItemShipment = {
      id = "OrderShipmentLineItemShipment",
      properties = {
        lineItemId = {
          description = "The ID of the line item that is shipped. This value is assigned by Google when an order is created. Either lineItemId or productId is required.",
          type = "string",
        },
        productId = {
          description = "The ID of the product to ship. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
        quantity = {
          description = "The quantity that is shipped.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    OrderShipmentScheduledDeliveryDetails = {
      id = "OrderShipmentScheduledDeliveryDetails",
      properties = {
        carrierPhoneNumber = {
          description = "The phone number of the carrier fulfilling the delivery. The phone number is formatted as the international notation in ITU-T Recommendation E.123 (for example, \"+41 44 668 1800\").",
          type = "string",
        },
        scheduledDate = {
          description = "The date a shipment is scheduled for delivery, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderTrackingSignal = {
      description = "Represents a merchant trade from which signals are extracted, e.g. shipping.",
      id = "OrderTrackingSignal",
      properties = {
        customerShippingFee = {
          ["$ref"] = "PriceAmount",
          description = "The shipping fee of the order; this value should be set to zero in the case of free shipping.",
        },
        deliveryPostalCode = {
          description = "Required. The delivery postal code, as a continuous string without spaces or dashes, e.g. \"95016\". This field will be anonymized in returned OrderTrackingSignal creation response.",
          type = "string",
        },
        deliveryRegionCode = {
          description = "Required. The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) for the shipping destination.",
          type = "string",
        },
        lineItems = {
          description = "Information about line items in the order.",
          items = {
            ["$ref"] = "OrderTrackingSignalLineItemDetails",
          },
          type = "array",
        },
        merchantId = {
          description = "The Google merchant ID of this order tracking signal. This value is optional. If left unset, the caller's merchant ID is used. You must request access in order to provide data on behalf of another merchant. For more information, see [Submitting Order Tracking Signals](/shopping-content/guides/order-tracking-signals).",
          format = "int64",
          type = "string",
        },
        orderCreatedTime = {
          ["$ref"] = "DateTime",
          description = "Required. The time when the order was created on the merchant side. Include the year and timezone string, if available.",
        },
        orderId = {
          description = "Required. The ID of the order on the merchant side. This field will be hashed in returned OrderTrackingSignal creation response.",
          type = "string",
        },
        orderTrackingSignalId = {
          description = "Output only. The ID that uniquely identifies this order tracking signal.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        shipmentLineItemMapping = {
          description = "The mapping of the line items to the shipment information.",
          items = {
            ["$ref"] = "OrderTrackingSignalShipmentLineItemMapping",
          },
          type = "array",
        },
        shippingInfo = {
          description = "The shipping information for the order.",
          items = {
            ["$ref"] = "OrderTrackingSignalShippingInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrderTrackingSignalLineItemDetails = {
      description = "The line items of the order.",
      id = "OrderTrackingSignalLineItemDetails",
      properties = {
        brand = {
          description = "Brand of the product.",
          type = "string",
        },
        gtin = {
          description = "The Global Trade Item Number.",
          type = "string",
        },
        lineItemId = {
          description = "Required. The ID for this line item.",
          type = "string",
        },
        mpn = {
          description = "The manufacturer part number.",
          type = "string",
        },
        productDescription = {
          description = "Plain text description of this product (deprecated: Please use product_title instead).",
          type = "string",
        },
        productId = {
          description = "Required. The Content API REST ID of the product, in the form channel:contentLanguage:targetCountry:offerId.",
          type = "string",
        },
        productTitle = {
          description = "Plain text title of this product.",
          type = "string",
        },
        quantity = {
          description = "The quantity of the line item in the order.",
          format = "int64",
          type = "string",
        },
        sku = {
          description = "Merchant SKU for this item (deprecated).",
          type = "string",
        },
        upc = {
          description = "Universal product code for this item (deprecated: Please use GTIN instead).",
          type = "string",
        },
      },
      type = "object",
    },
    OrderTrackingSignalShipmentLineItemMapping = {
      description = "Represents how many items are in the shipment for the given shipment_id and line_item_id.",
      id = "OrderTrackingSignalShipmentLineItemMapping",
      properties = {
        lineItemId = {
          description = "Required. The line item ID.",
          type = "string",
        },
        quantity = {
          description = "The line item quantity in the shipment.",
          format = "int64",
          type = "string",
        },
        shipmentId = {
          description = "Required. The shipment ID. This field will be hashed in returned OrderTrackingSignal creation response.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderTrackingSignalShippingInfo = {
      description = "The shipping information for the order.",
      id = "OrderTrackingSignalShippingInfo",
      properties = {
        actualDeliveryTime = {
          ["$ref"] = "DateTime",
          description = "The time when the shipment was actually delivered. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking_id or carrier_name.",
        },
        carrierName = {
          description = "The name of the shipping carrier for the delivery. This field is required if one of the following fields is absent: earliest_delivery_promise_time, latest_delivery_promise_time, and actual_delivery_time.",
          type = "string",
        },
        carrierServiceName = {
          description = "The service type for fulfillment, e.g., GROUND, FIRST_CLASS, etc.",
          type = "string",
        },
        earliestDeliveryPromiseTime = {
          ["$ref"] = "DateTime",
          description = "The earliest delivery promised time. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking_id or carrier_name.",
        },
        latestDeliveryPromiseTime = {
          ["$ref"] = "DateTime",
          description = "The latest delivery promised time. Include the year and timezone string, if available. This field is required, if one of the following fields is absent: tracking_id or carrier_name.",
        },
        originPostalCode = {
          description = "The origin postal code, as a continuous string without spaces or dashes, e.g. \"95016\". This field will be anonymized in returned OrderTrackingSignal creation response.",
          type = "string",
        },
        originRegionCode = {
          description = "The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) for the shipping origin.",
          type = "string",
        },
        shipmentId = {
          description = "Required. The shipment ID. This field will be hashed in returned OrderTrackingSignal creation response.",
          type = "string",
        },
        shippedTime = {
          ["$ref"] = "DateTime",
          description = "The time when the shipment was shipped. Include the year and timezone string, if available.",
        },
        shippingStatus = {
          description = "The status of the shipment.",
          enum = {
            "SHIPPING_STATE_UNSPECIFIED",
            "SHIPPED",
            "DELIVERED",
          },
          enumDescriptions = {
            "The shipping status is not known to merchant.",
            "All items are shipped.",
            "The shipment is already delivered.",
          },
          type = "string",
        },
        trackingId = {
          description = "The tracking ID of the shipment. This field is required if one of the following fields is absent: earliest_delivery_promise_time, latest_delivery_promise_time, and actual_delivery_time.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderinvoicesCreateChargeInvoiceRequest = {
      id = "OrderinvoicesCreateChargeInvoiceRequest",
      properties = {
        invoiceId = {
          description = "[required] The ID of the invoice.",
          type = "string",
        },
        invoiceSummary = {
          ["$ref"] = "InvoiceSummary",
          description = "[required] Invoice summary.",
        },
        lineItemInvoices = {
          description = "[required] Invoice details per line item.",
          items = {
            ["$ref"] = "ShipmentInvoiceLineItemInvoice",
          },
          type = "array",
        },
        operationId = {
          description = "[required] The ID of the operation, unique across all operations for a given order.",
          type = "string",
        },
        shipmentGroupId = {
          description = "[required] ID of the shipment group. It is assigned by the merchant in the `shipLineItems` method and is used to group multiple line items that have the same kind of shipping charges.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderinvoicesCreateChargeInvoiceResponse = {
      id = "OrderinvoicesCreateChargeInvoiceResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#orderinvoicesCreateChargeInvoiceResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrderinvoicesCreateRefundInvoiceRequest = {
      id = "OrderinvoicesCreateRefundInvoiceRequest",
      properties = {
        invoiceId = {
          description = "[required] The ID of the invoice.",
          type = "string",
        },
        operationId = {
          description = "[required] The ID of the operation, unique across all operations for a given order.",
          type = "string",
        },
        refundOnlyOption = {
          ["$ref"] = "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption",
          description = "Option to create a refund-only invoice. Exactly one of `refundOnlyOption` or `returnOption` must be provided.",
        },
        returnOption = {
          ["$ref"] = "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption",
          description = "Option to create an invoice for a refund and mark all items within the invoice as returned. Exactly one of `refundOnlyOption` or `returnOption` must be provided.",
        },
        shipmentInvoices = {
          description = "Invoice details for different shipment groups.",
          items = {
            ["$ref"] = "ShipmentInvoice",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrderinvoicesCreateRefundInvoiceResponse = {
      id = "OrderinvoicesCreateRefundInvoiceResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#orderinvoicesCreateRefundInvoiceResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption = {
      id = "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption",
      properties = {
        description = {
          description = "Optional description of the refund reason.",
          type = "string",
        },
        reason = {
          description = "[required] Reason for the refund. Acceptable values are: - \"`adjustment`\" - \"`autoPostInternal`\" - \"`autoPostInvalidBillingAddress`\" - \"`autoPostNoInventory`\" - \"`autoPostPriceError`\" - \"`autoPostUndeliverableShippingAddress`\" - \"`couponAbuse`\" - \"`courtesyAdjustment`\" - \"`customerCanceled`\" - \"`customerDiscretionaryReturn`\" - \"`customerInitiatedMerchantCancel`\" - \"`customerSupportRequested`\" - \"`deliveredLateByCarrier`\" - \"`deliveredTooLate`\" - \"`expiredItem`\" - \"`failToPushOrderGoogleError`\" - \"`failToPushOrderMerchantError`\" - \"`failToPushOrderMerchantFulfillmentError`\" - \"`failToPushOrderToMerchant`\" - \"`failToPushOrderToMerchantOutOfStock`\" - \"`feeAdjustment`\" - \"`invalidCoupon`\" - \"`lateShipmentCredit`\" - \"`malformedShippingAddress`\" - \"`merchantDidNotShipOnTime`\" - \"`noInventory`\" - \"`orderTimeout`\" - \"`other`\" - \"`paymentAbuse`\" - \"`paymentDeclined`\" - \"`priceAdjustment`\" - \"`priceError`\" - \"`productArrivedDamaged`\" - \"`productNotAsDescribed`\" - \"`promoReallocation`\" - \"`qualityNotAsExpected`\" - \"`returnRefundAbuse`\" - \"`shippingCostAdjustment`\" - \"`shippingPriceError`\" - \"`taxAdjustment`\" - \"`taxError`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`wrongProductShipped`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption = {
      id = "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption",
      properties = {
        description = {
          description = "Optional description of the return reason.",
          type = "string",
        },
        reason = {
          description = "[required] Reason for the return. Acceptable values are: - \"`customerDiscretionaryReturn`\" - \"`customerInitiatedMerchantCancel`\" - \"`deliveredTooLate`\" - \"`expiredItem`\" - \"`invalidCoupon`\" - \"`malformedShippingAddress`\" - \"`other`\" - \"`productArrivedDamaged`\" - \"`productNotAsDescribed`\" - \"`qualityNotAsExpected`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`wrongProductShipped`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    OrderreportsListDisbursementsResponse = {
      id = "OrderreportsListDisbursementsResponse",
      properties = {
        disbursements = {
          description = "The list of disbursements.",
          items = {
            ["$ref"] = "OrderReportDisbursement",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#orderreportsListDisbursementsResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of disbursements.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderreportsListTransactionsResponse = {
      id = "OrderreportsListTransactionsResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#orderreportsListTransactionsResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of transactions.",
          type = "string",
        },
        transactions = {
          description = "The list of transactions.",
          items = {
            ["$ref"] = "OrderReportTransaction",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrderreturnsAcknowledgeRequest = {
      id = "OrderreturnsAcknowledgeRequest",
      properties = {
        operationId = {
          description = "[required] The ID of the operation, unique across all operations for a given order return.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderreturnsAcknowledgeResponse = {
      id = "OrderreturnsAcknowledgeResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#orderreturnsAcknowledgeResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrderreturnsCreateOrderReturnRequest = {
      id = "OrderreturnsCreateOrderReturnRequest",
      properties = {
        lineItems = {
          description = "The list of line items to return.",
          items = {
            ["$ref"] = "OrderreturnsLineItem",
          },
          type = "array",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        orderId = {
          description = "The ID of the order.",
          type = "string",
        },
        returnMethodType = {
          description = "The way of the package being returned.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderreturnsCreateOrderReturnResponse = {
      id = "OrderreturnsCreateOrderReturnResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#orderreturnsCreateOrderReturnResponse`\".",
          type = "string",
        },
        orderReturn = {
          ["$ref"] = "MerchantOrderReturn",
          description = "Created order return.",
        },
      },
      type = "object",
    },
    OrderreturnsLineItem = {
      id = "OrderreturnsLineItem",
      properties = {
        lineItemId = {
          description = "The ID of the line item. This value is assigned by Google when an order is created. Either lineItemId or productId is required.",
          type = "string",
        },
        productId = {
          description = "The ID of the product to cancel. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
        quantity = {
          description = "The quantity of this line item.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    OrderreturnsListResponse = {
      id = "OrderreturnsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#orderreturnsListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of returns.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "MerchantOrderReturn",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrderreturnsPartialRefund = {
      id = "OrderreturnsPartialRefund",
      properties = {
        priceAmount = {
          ["$ref"] = "Price",
          description = "The pre-tax or post-tax amount to be refunded, depending on the location of the order.",
        },
        taxAmount = {
          ["$ref"] = "Price",
          description = "Tax amount to be refunded. Note: This has different meaning depending on the location of the order.",
        },
      },
      type = "object",
    },
    OrderreturnsProcessRequest = {
      id = "OrderreturnsProcessRequest",
      properties = {
        fullChargeReturnShippingCost = {
          description = "Option to charge the customer return shipping cost.",
          type = "boolean",
        },
        operationId = {
          description = "[required] The ID of the operation, unique across all operations for a given order return.",
          type = "string",
        },
        refundShippingFee = {
          ["$ref"] = "OrderreturnsRefundOperation",
          description = "Refunds for original shipping fee.",
        },
        returnItems = {
          description = "The list of items to return.",
          items = {
            ["$ref"] = "OrderreturnsReturnItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrderreturnsProcessResponse = {
      id = "OrderreturnsProcessResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#orderreturnsProcessResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrderreturnsRefundOperation = {
      id = "OrderreturnsRefundOperation",
      properties = {
        fullRefund = {
          description = "If true, the item will be fully refunded. Allowed only when payment_type is FOP. Merchant can choose this refund option to indicate the full remaining amount of corresponding object to be refunded to the customer through FOP.",
          type = "boolean",
        },
        partialRefund = {
          ["$ref"] = "OrderreturnsPartialRefund",
          description = "If this is set, the item will be partially refunded. Merchant can choose this refund option to specify the customized amount that to be refunded to the customer.",
        },
        paymentType = {
          description = "The payment way of issuing refund. Default value is ORIGINAL_FOP if not set.",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
        returnRefundReason = {
          description = "Code of the refund reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderreturnsRejectOperation = {
      id = "OrderreturnsRejectOperation",
      properties = {
        reason = {
          description = "The reason for the return.",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderreturnsReturnItem = {
      id = "OrderreturnsReturnItem",
      properties = {
        refund = {
          ["$ref"] = "OrderreturnsRefundOperation",
          description = "Refunds the item.",
        },
        reject = {
          ["$ref"] = "OrderreturnsRejectOperation",
          description = "Rejects the item.",
        },
        returnItemId = {
          description = "Unit level ID for the return item. Different units of the same product will have different IDs.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersAcknowledgeRequest = {
      id = "OrdersAcknowledgeRequest",
      properties = {
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersAcknowledgeResponse = {
      id = "OrdersAcknowledgeResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersAcknowledgeResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersAdvanceTestOrderResponse = {
      id = "OrdersAdvanceTestOrderResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersAdvanceTestOrderResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCancelLineItemRequest = {
      id = "OrdersCancelLineItemRequest",
      properties = {
        lineItemId = {
          description = "The ID of the line item to cancel. Either lineItemId or productId is required.",
          type = "string",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        productId = {
          description = "The ID of the product to cancel. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
        quantity = {
          description = "The quantity to cancel.",
          format = "uint32",
          type = "integer",
        },
        reason = {
          description = "The reason for the cancellation. Acceptable values are: - \"`customerInitiatedCancel`\" - \"`invalidCoupon`\" - \"`malformedShippingAddress`\" - \"`noInventory`\" - \"`other`\" - \"`priceError`\" - \"`shippingPriceError`\" - \"`taxError`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`failedToCaptureFunds`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCancelLineItemResponse = {
      id = "OrdersCancelLineItemResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersCancelLineItemResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCancelRequest = {
      id = "OrdersCancelRequest",
      properties = {
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        reason = {
          description = "The reason for the cancellation. Acceptable values are: - \"`customerInitiatedCancel`\" - \"`invalidCoupon`\" - \"`malformedShippingAddress`\" - \"`noInventory`\" - \"`other`\" - \"`priceError`\" - \"`shippingPriceError`\" - \"`taxError`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`failedToCaptureFunds`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCancelResponse = {
      id = "OrdersCancelResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersCancelResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCancelTestOrderByCustomerRequest = {
      id = "OrdersCancelTestOrderByCustomerRequest",
      properties = {
        reason = {
          description = "The reason for the cancellation. Acceptable values are: - \"`changedMind`\" - \"`orderedWrongItem`\" - \"`other`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCancelTestOrderByCustomerResponse = {
      id = "OrdersCancelTestOrderByCustomerResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersCancelTestOrderByCustomerResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCreateTestOrderRequest = {
      id = "OrdersCreateTestOrderRequest",
      properties = {
        country = {
          description = "The CLDR territory code of the country of the test order to create. Affects the currency and addresses of orders created through `template_name`, or the addresses of orders created through `test_order`. Acceptable values are: - \"`US`\" - \"`FR`\" Defaults to \"`US`\".",
          type = "string",
        },
        templateName = {
          description = "The test order template to use. Specify as an alternative to `testOrder` as a shortcut for retrieving a template and then creating an order using that template. Acceptable values are: - \"`template1`\" - \"`template1a`\" - \"`template1b`\" - \"`template2`\" - \"`template3`\" ",
          type = "string",
        },
        testOrder = {
          ["$ref"] = "TestOrder",
          description = "The test order to create.",
        },
      },
      type = "object",
    },
    OrdersCreateTestOrderResponse = {
      id = "OrdersCreateTestOrderResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersCreateTestOrderResponse`\".",
          type = "string",
        },
        orderId = {
          description = "The ID of the newly created test order.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCreateTestReturnRequest = {
      id = "OrdersCreateTestReturnRequest",
      properties = {
        items = {
          description = "Returned items.",
          items = {
            ["$ref"] = "OrdersCustomBatchRequestEntryCreateTestReturnReturnItem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrdersCreateTestReturnResponse = {
      id = "OrdersCreateTestReturnResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersCreateTestReturnResponse`\".",
          type = "string",
        },
        returnId = {
          description = "The ID of the newly created test order return.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCustomBatchRequestEntryCreateTestReturnReturnItem = {
      id = "OrdersCustomBatchRequestEntryCreateTestReturnReturnItem",
      properties = {
        lineItemId = {
          description = "The ID of the line item to return.",
          type = "string",
        },
        quantity = {
          description = "Quantity that is returned.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    OrdersCustomBatchRequestEntryRefundItemItem = {
      id = "OrdersCustomBatchRequestEntryRefundItemItem",
      properties = {
        amount = {
          ["$ref"] = "MonetaryAmount",
          description = "The total amount that is refunded. (for example, refunding $5 each for 2 products should be done by setting quantity to 2 and amount to 10$) In case of multiple refunds, this should be the amount you currently want to refund to the customer.",
        },
        fullRefund = {
          description = "If true, the full item will be refunded. If this is true, amount shouldn't be provided and will be ignored.",
          type = "boolean",
        },
        lineItemId = {
          description = "The ID of the line item. Either lineItemId or productId is required.",
          type = "string",
        },
        productId = {
          description = "The ID of the product. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
        quantity = {
          description = "The number of products that are refunded.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    OrdersCustomBatchRequestEntryRefundItemShipping = {
      id = "OrdersCustomBatchRequestEntryRefundItemShipping",
      properties = {
        amount = {
          ["$ref"] = "Price",
          description = "The amount that is refunded. If this is not the first refund for the shipment, this should be the newly refunded amount.",
        },
        fullRefund = {
          description = "If set to true, all shipping costs for the order will be refunded. If this is true, amount shouldn't be provided and will be ignored. If set to false, submit the amount of the partial shipping refund, excluding the shipping tax. The shipping tax is calculated and handled on Google's side.",
          type = "boolean",
        },
      },
      type = "object",
    },
    OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo = {
      id = "OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo",
      properties = {
        carrier = {
          description = "The carrier handling the shipment. See `shipments[].carrier` in the Orders resource representation for a list of acceptable values.",
          type = "string",
        },
        shipmentId = {
          description = "Required. The ID of the shipment. This is assigned by the merchant and is unique to each shipment.",
          type = "string",
        },
        trackingId = {
          description = "The tracking ID for the shipment.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails = {
      description = "ScheduledDeliveryDetails used to update the scheduled delivery order.",
      id = "OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails",
      properties = {
        carrierPhoneNumber = {
          description = "The phone number of the carrier fulfilling the delivery. The phone number should be formatted as the international notation in",
          type = "string",
        },
        scheduledDate = {
          description = "The date a shipment is scheduled for delivery, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersGetByMerchantOrderIdResponse = {
      id = "OrdersGetByMerchantOrderIdResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersGetByMerchantOrderIdResponse`\".",
          type = "string",
        },
        order = {
          ["$ref"] = "Order",
          description = "The requested order.",
        },
      },
      type = "object",
    },
    OrdersGetTestOrderTemplateResponse = {
      id = "OrdersGetTestOrderTemplateResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersGetTestOrderTemplateResponse`\".",
          type = "string",
        },
        template = {
          ["$ref"] = "TestOrder",
          description = "The requested test order template.",
        },
      },
      type = "object",
    },
    OrdersInStoreRefundLineItemRequest = {
      id = "OrdersInStoreRefundLineItemRequest",
      properties = {
        lineItemId = {
          description = "The ID of the line item to return. Either lineItemId or productId is required.",
          type = "string",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        priceAmount = {
          ["$ref"] = "Price",
          description = "The amount to be refunded. This may be pre-tax or post-tax depending on the location of the order. Required.",
        },
        productId = {
          description = "The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
        quantity = {
          description = "The quantity to return and refund.",
          format = "uint32",
          type = "integer",
        },
        reason = {
          description = "The reason for the return. Acceptable values are: - \"`customerDiscretionaryReturn`\" - \"`customerInitiatedMerchantCancel`\" - \"`deliveredTooLate`\" - \"`expiredItem`\" - \"`invalidCoupon`\" - \"`malformedShippingAddress`\" - \"`other`\" - \"`productArrivedDamaged`\" - \"`productNotAsDescribed`\" - \"`qualityNotAsExpected`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`wrongProductShipped`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
        taxAmount = {
          ["$ref"] = "Price",
          description = "The amount of tax to be refunded. Required.",
        },
      },
      type = "object",
    },
    OrdersInStoreRefundLineItemResponse = {
      id = "OrdersInStoreRefundLineItemResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersInStoreRefundLineItemResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersListResponse = {
      id = "OrdersListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of orders.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "Order",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrdersRefundItemRequest = {
      id = "OrdersRefundItemRequest",
      properties = {
        items = {
          description = "The items that are refunded. Either Item or Shipping must be provided in the request.",
          items = {
            ["$ref"] = "OrdersCustomBatchRequestEntryRefundItemItem",
          },
          type = "array",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        reason = {
          description = "The reason for the refund. Acceptable values are: - \"`shippingCostAdjustment`\" - \"`priceAdjustment`\" - \"`taxAdjustment`\" - \"`feeAdjustment`\" - \"`courtesyAdjustment`\" - \"`adjustment`\" - \"`customerCancelled`\" - \"`noInventory`\" - \"`productNotAsDescribed`\" - \"`undeliverableShippingAddress`\" - \"`wrongProductShipped`\" - \"`lateShipmentCredit`\" - \"`deliveredLateByCarrier`\" - \"`productArrivedDamaged`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
        shipping = {
          ["$ref"] = "OrdersCustomBatchRequestEntryRefundItemShipping",
          description = "The refund on shipping. Optional, but either Item or Shipping must be provided in the request.",
        },
      },
      type = "object",
    },
    OrdersRefundItemResponse = {
      id = "OrdersRefundItemResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersRefundItemResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersRefundOrderRequest = {
      id = "OrdersRefundOrderRequest",
      properties = {
        amount = {
          ["$ref"] = "MonetaryAmount",
          description = "The amount that is refunded. If this is not the first refund for the order, this should be the newly refunded amount.",
        },
        fullRefund = {
          description = "If true, the full order will be refunded, including shipping. If this is true, amount shouldn't be provided and will be ignored.",
          type = "boolean",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        reason = {
          description = "The reason for the refund. Acceptable values are: - \"`courtesyAdjustment`\" - \"`other`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersRefundOrderResponse = {
      id = "OrdersRefundOrderResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersRefundOrderResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersRejectReturnLineItemRequest = {
      id = "OrdersRejectReturnLineItemRequest",
      properties = {
        lineItemId = {
          description = "The ID of the line item to return. Either lineItemId or productId is required.",
          type = "string",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        productId = {
          description = "The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
        quantity = {
          description = "The quantity to return and refund.",
          format = "uint32",
          type = "integer",
        },
        reason = {
          description = "The reason for the return. Acceptable values are: - \"`damagedOrUsed`\" - \"`missingComponent`\" - \"`notEligible`\" - \"`other`\" - \"`outOfReturnWindow`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersRejectReturnLineItemResponse = {
      id = "OrdersRejectReturnLineItemResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersRejectReturnLineItemResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersReturnRefundLineItemRequest = {
      id = "OrdersReturnRefundLineItemRequest",
      properties = {
        lineItemId = {
          description = "The ID of the line item to return. Either lineItemId or productId is required.",
          type = "string",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        priceAmount = {
          ["$ref"] = "Price",
          description = "The amount to be refunded. This may be pre-tax or post-tax depending on the location of the order. If omitted, refundless return is assumed.",
        },
        productId = {
          description = "The ID of the product to return. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
        quantity = {
          description = "The quantity to return and refund. Quantity is required.",
          format = "uint32",
          type = "integer",
        },
        reason = {
          description = "The reason for the return. Acceptable values are: - \"`customerDiscretionaryReturn`\" - \"`customerInitiatedMerchantCancel`\" - \"`deliveredTooLate`\" - \"`expiredItem`\" - \"`invalidCoupon`\" - \"`malformedShippingAddress`\" - \"`other`\" - \"`productArrivedDamaged`\" - \"`productNotAsDescribed`\" - \"`qualityNotAsExpected`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`wrongProductShipped`\" ",
          type = "string",
        },
        reasonText = {
          description = "The explanation of the reason.",
          type = "string",
        },
        taxAmount = {
          ["$ref"] = "Price",
          description = "The amount of tax to be refunded. Optional, but if filled, then priceAmount must be set. Calculated automatically if not provided.",
        },
      },
      type = "object",
    },
    OrdersReturnRefundLineItemResponse = {
      id = "OrdersReturnRefundLineItemResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersReturnRefundLineItemResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersSetLineItemMetadataRequest = {
      id = "OrdersSetLineItemMetadataRequest",
      properties = {
        annotations = {
          items = {
            ["$ref"] = "OrderMerchantProvidedAnnotation",
          },
          type = "array",
        },
        lineItemId = {
          description = "The ID of the line item to set metadata. Either lineItemId or productId is required.",
          type = "string",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        productId = {
          description = "The ID of the product to set metadata. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersSetLineItemMetadataResponse = {
      id = "OrdersSetLineItemMetadataResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersSetLineItemMetadataResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersShipLineItemsRequest = {
      id = "OrdersShipLineItemsRequest",
      properties = {
        lineItems = {
          description = "Line items to ship.",
          items = {
            ["$ref"] = "OrderShipmentLineItemShipment",
          },
          type = "array",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        shipmentGroupId = {
          description = "ID of the shipment group. Required for orders that use the orderinvoices service.",
          type = "string",
        },
        shipmentInfos = {
          description = "Shipment information. This field is repeated because a single line item can be shipped in several packages (and have several tracking IDs).",
          items = {
            ["$ref"] = "OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrdersShipLineItemsResponse = {
      id = "OrdersShipLineItemsResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersShipLineItemsResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersUpdateLineItemShippingDetailsRequest = {
      id = "OrdersUpdateLineItemShippingDetailsRequest",
      properties = {
        deliverByDate = {
          description = "Updated delivery by date, in ISO 8601 format. If not specified only ship by date is updated. Provided date should be within 1 year timeframe and can't be a date in the past.",
          type = "string",
        },
        lineItemId = {
          description = "The ID of the line item to set metadata. Either lineItemId or productId is required.",
          type = "string",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        productId = {
          description = "The ID of the product to set metadata. This is the REST ID used in the products service. Either lineItemId or productId is required.",
          type = "string",
        },
        shipByDate = {
          description = "Updated ship by date, in ISO 8601 format. If not specified only deliver by date is updated. Provided date should be within 1 year timeframe and can't be a date in the past.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersUpdateLineItemShippingDetailsResponse = {
      id = "OrdersUpdateLineItemShippingDetailsResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersUpdateLineItemShippingDetailsResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersUpdateMerchantOrderIdRequest = {
      id = "OrdersUpdateMerchantOrderIdRequest",
      properties = {
        merchantOrderId = {
          description = "The merchant order id to be assigned to the order. Must be unique per merchant.",
          type = "string",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersUpdateMerchantOrderIdResponse = {
      id = "OrdersUpdateMerchantOrderIdResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersUpdateMerchantOrderIdResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersUpdateShipmentRequest = {
      id = "OrdersUpdateShipmentRequest",
      properties = {
        carrier = {
          description = "The carrier handling the shipment. Not updated if missing. See `shipments[].carrier` in the Orders resource representation for a list of acceptable values.",
          type = "string",
        },
        deliveryDate = {
          description = "Date on which the shipment has been delivered, in ISO 8601 format. Optional and can be provided only if `status` is `delivered`.",
          type = "string",
        },
        lastPickupDate = {
          description = "Date after which the pickup will expire, in ISO 8601 format. Required only when order is buy-online-pickup-in-store(BOPIS) and `status` is `ready for pickup`.",
          type = "string",
        },
        operationId = {
          description = "The ID of the operation. Unique across all operations for a given order.",
          type = "string",
        },
        readyPickupDate = {
          description = "Date on which the shipment has been ready for pickup, in ISO 8601 format. Optional and can be provided only if `status` is `ready for pickup`.",
          type = "string",
        },
        scheduledDeliveryDetails = {
          ["$ref"] = "OrdersCustomBatchRequestEntryUpdateShipmentScheduledDeliveryDetails",
          description = "Delivery details of the shipment if scheduling is needed.",
        },
        shipmentId = {
          description = "The ID of the shipment.",
          type = "string",
        },
        status = {
          description = "New status for the shipment. Not updated if missing. Acceptable values are: - \"`delivered`\" - \"`undeliverable`\" - \"`readyForPickup`\" ",
          type = "string",
        },
        trackingId = {
          description = "The tracking ID for the shipment. Not updated if missing.",
          type = "string",
        },
        undeliveredDate = {
          description = "Date on which the shipment has been undeliverable, in ISO 8601 format. Optional and can be provided only if `status` is `undeliverable`.",
          type = "string",
        },
      },
      type = "object",
    },
    OrdersUpdateShipmentResponse = {
      id = "OrdersUpdateShipmentResponse",
      properties = {
        executionStatus = {
          description = "The status of the execution. Acceptable values are: - \"`duplicate`\" - \"`executed`\" ",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#ordersUpdateShipmentResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    PauseBuyOnGoogleProgramRequest = {
      description = "Request message for the PauseProgram method.",
      id = "PauseBuyOnGoogleProgramRequest",
      properties = {},
      type = "object",
    },
    PaymentServiceProviderLinkInfo = {
      description = "Additional information required for PAYMENT_SERVICE_PROVIDER link type.",
      id = "PaymentServiceProviderLinkInfo",
      properties = {
        externalAccountBusinessCountry = {
          description = "The business country of the merchant account as identified by the third party service provider.",
          type = "string",
        },
        externalAccountId = {
          description = "The id used by the third party service provider to identify the merchant.",
          type = "string",
        },
      },
      type = "object",
    },
    PickupCarrierService = {
      id = "PickupCarrierService",
      properties = {
        carrierName = {
          description = "The name of the pickup carrier (for example, `\"UPS\"`). Required.",
          type = "string",
        },
        serviceName = {
          description = "The name of the pickup service (for example, `\"Access point\"`). Required.",
          type = "string",
        },
      },
      type = "object",
    },
    PickupServicesPickupService = {
      id = "PickupServicesPickupService",
      properties = {
        carrierName = {
          description = "The name of the carrier (for example, `\"UPS\"`). Always present.",
          type = "string",
        },
        country = {
          description = "The CLDR country code of the carrier (for example, \"US\"). Always present.",
          type = "string",
        },
        serviceName = {
          description = "The name of the pickup service (for example, `\"Access point\"`). Always present.",
          type = "string",
        },
      },
      type = "object",
    },
    PosCustomBatchRequest = {
      id = "PosCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "PosCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PosCustomBatchRequestEntry = {
      id = "PosCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        inventory = {
          ["$ref"] = "PosInventory",
          description = "The inventory to submit. This should be set only if the method is `inventory`.",
        },
        merchantId = {
          description = "The ID of the POS data provider.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`delete`\" - \"`get`\" - \"`insert`\" - \"`inventory`\" - \"`sale`\" ",
          type = "string",
        },
        sale = {
          ["$ref"] = "PosSale",
          description = "The sale information to submit. This should be set only if the method is `sale`.",
        },
        store = {
          ["$ref"] = "PosStore",
          description = "The store information to submit. This should be set only if the method is `insert`.",
        },
        storeCode = {
          description = "The store code. This should be set only if the method is `delete` or `get`.",
          type = "string",
        },
        targetMerchantId = {
          description = "The ID of the account for which to get/submit data.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    PosCustomBatchResponse = {
      id = "PosCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "PosCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#posCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    PosCustomBatchResponseEntry = {
      id = "PosCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry to which this entry responds.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors defined if, and only if, the request failed.",
        },
        inventory = {
          ["$ref"] = "PosInventory",
          description = "The updated inventory information.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#posCustomBatchResponseEntry`\"",
          type = "string",
        },
        sale = {
          ["$ref"] = "PosSale",
          description = "The updated sale information.",
        },
        store = {
          ["$ref"] = "PosStore",
          description = "The retrieved or updated store information.",
        },
      },
      type = "object",
    },
    PosDataProviders = {
      id = "PosDataProviders",
      properties = {
        country = {
          description = "Country code.",
          type = "string",
        },
        posDataProviders = {
          description = "A list of POS data providers.",
          items = {
            ["$ref"] = "PosDataProvidersPosDataProvider",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PosDataProvidersPosDataProvider = {
      id = "PosDataProvidersPosDataProvider",
      properties = {
        displayName = {
          description = "The display name of Pos data Provider.",
          type = "string",
        },
        fullName = {
          description = "The full name of this POS data Provider.",
          type = "string",
        },
        providerId = {
          description = "The ID of the account.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    PosInventory = {
      description = "The absolute quantity of an item available at the given store.",
      id = "PosInventory",
      properties = {
        contentLanguage = {
          description = "Required. The two-letter ISO 639-1 language code for the item.",
          type = "string",
        },
        gtin = {
          description = "Global Trade Item Number.",
          type = "string",
        },
        itemId = {
          description = "Required. A unique identifier for the item.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#posInventory`\"",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Required. The current price of the item.",
        },
        quantity = {
          description = "Required. The available quantity of the item.",
          format = "int64",
          type = "string",
        },
        storeCode = {
          description = "Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API or the code of the store in a Business Profile.",
          type = "string",
        },
        targetCountry = {
          description = "Required. The CLDR territory code for the item.",
          type = "string",
        },
        timestamp = {
          description = "Required. The inventory timestamp, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    PosInventoryRequest = {
      id = "PosInventoryRequest",
      properties = {
        contentLanguage = {
          description = "Required. The two-letter ISO 639-1 language code for the item.",
          type = "string",
        },
        gtin = {
          description = "Global Trade Item Number.",
          type = "string",
        },
        itemId = {
          description = "Required. A unique identifier for the item.",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Required. The current price of the item.",
        },
        quantity = {
          description = "Required. The available quantity of the item.",
          format = "int64",
          type = "string",
        },
        storeCode = {
          description = "Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API or the code of the store in a Business Profile.",
          type = "string",
        },
        targetCountry = {
          description = "Required. The CLDR territory code for the item.",
          type = "string",
        },
        timestamp = {
          description = "Required. The inventory timestamp, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    PosInventoryResponse = {
      id = "PosInventoryResponse",
      properties = {
        contentLanguage = {
          description = "Required. The two-letter ISO 639-1 language code for the item.",
          type = "string",
        },
        gtin = {
          description = "Global Trade Item Number.",
          type = "string",
        },
        itemId = {
          description = "Required. A unique identifier for the item.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#posInventoryResponse`\".",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Required. The current price of the item.",
        },
        quantity = {
          description = "Required. The available quantity of the item.",
          format = "int64",
          type = "string",
        },
        storeCode = {
          description = "Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API or the code of the store in a Business Profile.",
          type = "string",
        },
        targetCountry = {
          description = "Required. The CLDR territory code for the item.",
          type = "string",
        },
        timestamp = {
          description = "Required. The inventory timestamp, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    PosListResponse = {
      id = "PosListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#posListResponse`\".",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "PosStore",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PosSale = {
      description = "The change of the available quantity of an item at the given store.",
      id = "PosSale",
      properties = {
        contentLanguage = {
          description = "Required. The two-letter ISO 639-1 language code for the item.",
          type = "string",
        },
        gtin = {
          description = "Global Trade Item Number.",
          type = "string",
        },
        itemId = {
          description = "Required. A unique identifier for the item.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#posSale`\"",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Required. The price of the item.",
        },
        quantity = {
          description = "Required. The relative change of the available quantity. Negative for items returned.",
          format = "int64",
          type = "string",
        },
        saleId = {
          description = "A unique ID to group items from the same sale event.",
          type = "string",
        },
        storeCode = {
          description = "Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API or the code of the store in a Business Profile.",
          type = "string",
        },
        targetCountry = {
          description = "Required. The CLDR territory code for the item.",
          type = "string",
        },
        timestamp = {
          description = "Required. The inventory timestamp, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    PosSaleRequest = {
      id = "PosSaleRequest",
      properties = {
        contentLanguage = {
          description = "Required. The two-letter ISO 639-1 language code for the item.",
          type = "string",
        },
        gtin = {
          description = "Global Trade Item Number.",
          type = "string",
        },
        itemId = {
          description = "Required. A unique identifier for the item.",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Required. The price of the item.",
        },
        quantity = {
          description = "Required. The relative change of the available quantity. Negative for items returned.",
          format = "int64",
          type = "string",
        },
        saleId = {
          description = "A unique ID to group items from the same sale event.",
          type = "string",
        },
        storeCode = {
          description = "Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API or the code of the store in a Business Profile.",
          type = "string",
        },
        targetCountry = {
          description = "Required. The CLDR territory code for the item.",
          type = "string",
        },
        timestamp = {
          description = "Required. The inventory timestamp, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    PosSaleResponse = {
      id = "PosSaleResponse",
      properties = {
        contentLanguage = {
          description = "Required. The two-letter ISO 639-1 language code for the item.",
          type = "string",
        },
        gtin = {
          description = "Global Trade Item Number.",
          type = "string",
        },
        itemId = {
          description = "Required. A unique identifier for the item.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#posSaleResponse`\".",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Required. The price of the item.",
        },
        quantity = {
          description = "Required. The relative change of the available quantity. Negative for items returned.",
          format = "int64",
          type = "string",
        },
        saleId = {
          description = "A unique ID to group items from the same sale event.",
          type = "string",
        },
        storeCode = {
          description = "Required. The identifier of the merchant's store. Either a `storeCode` inserted through the API or the code of the store in a Business Profile.",
          type = "string",
        },
        targetCountry = {
          description = "Required. The CLDR territory code for the item.",
          type = "string",
        },
        timestamp = {
          description = "Required. The inventory timestamp, in ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    PosStore = {
      description = "Store resource.",
      id = "PosStore",
      properties = {
        gcidCategory = {
          description = "The business type of the store.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#posStore`\"",
          type = "string",
        },
        phoneNumber = {
          description = "The store phone number.",
          type = "string",
        },
        placeId = {
          description = "The Google Place Id of the store location.",
          type = "string",
        },
        storeAddress = {
          description = "Required. The street address of the store.",
          type = "string",
        },
        storeCode = {
          description = "Required. A store identifier that is unique for the given merchant.",
          type = "string",
        },
        storeName = {
          description = "The merchant or store name.",
          type = "string",
        },
        websiteUrl = {
          description = "The website url for the store or merchant.",
          type = "string",
        },
      },
      type = "object",
    },
    PostalCodeGroup = {
      id = "PostalCodeGroup",
      properties = {
        country = {
          description = "The CLDR territory code of the country the postal code group applies to. Required.",
          type = "string",
        },
        name = {
          description = "The name of the postal code group, referred to in headers. Required.",
          type = "string",
        },
        postalCodeRanges = {
          description = "A range of postal codes. Required.",
          items = {
            ["$ref"] = "PostalCodeRange",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PostalCodeRange = {
      id = "PostalCodeRange",
      properties = {
        postalCodeRangeBegin = {
          description = "A postal code or a pattern of the form `prefix*` denoting the inclusive lower bound of the range defining the area. Examples values: `\"94108\"`, `\"9410*\"`, `\"9*\"`. Required.",
          type = "string",
        },
        postalCodeRangeEnd = {
          description = "A postal code or a pattern of the form `prefix*` denoting the inclusive upper bound of the range defining the area. It must have the same length as `postalCodeRangeBegin`: if `postalCodeRangeBegin` is a postal code then `postalCodeRangeEnd` must be a postal code too; if `postalCodeRangeBegin` is a pattern then `postalCodeRangeEnd` must be a pattern with the same prefix length. Optional: if not set, then the area is defined as being all the postal codes matching `postalCodeRangeBegin`.",
          type = "string",
        },
      },
      type = "object",
    },
    Price = {
      id = "Price",
      properties = {
        currency = {
          description = "The currency of the price.",
          type = "string",
        },
        value = {
          description = "The price represented as a number.",
          type = "string",
        },
      },
      type = "object",
    },
    PriceAmount = {
      description = "The price represented as a number and currency.",
      id = "PriceAmount",
      properties = {
        currency = {
          description = "The currency of the price.",
          type = "string",
        },
        value = {
          description = "The price represented as a number.",
          type = "string",
        },
      },
      type = "object",
    },
    PriceCompetitiveness = {
      description = "Price Competitiveness fields requested by the merchant in the query. Field values are only set if the merchant queries `PriceCompetitivenessProductView`. https://support.google.com/merchants/answer/9626903",
      id = "PriceCompetitiveness",
      properties = {
        benchmarkPriceCurrencyCode = {
          description = "The price benchmark currency (ISO 4217 code).",
          type = "string",
        },
        benchmarkPriceMicros = {
          description = "The latest available price benchmark in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) for the product's catalog in the benchmark country.",
          format = "int64",
          type = "string",
        },
        countryCode = {
          description = "The country of the price benchmark (ISO 3166 code).",
          type = "string",
        },
      },
      type = "object",
    },
    PriceInsights = {
      description = "Price Insights fields requested by the merchant in the query. Field values are only set if the merchant queries `PriceInsightsProductView`. https://support.google.com/merchants/answer/11916926",
      id = "PriceInsights",
      properties = {
        predictedClicksChangeFraction = {
          description = "The predicted change in clicks as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in clicks.",
          format = "double",
          type = "number",
        },
        predictedConversionsChangeFraction = {
          description = "The predicted change in conversions as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in conversions).",
          format = "double",
          type = "number",
        },
        predictedGrossProfitChangeFraction = {
          description = "The predicted change in gross profit as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in gross profit.",
          format = "double",
          type = "number",
        },
        predictedImpressionsChangeFraction = {
          description = "The predicted change in impressions as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in impressions.",
          format = "double",
          type = "number",
        },
        predictedMonthlyGrossProfitChangeCurrencyCode = {
          description = "The predicted monthly gross profit change currency (ISO 4217 code).",
          type = "string",
        },
        predictedMonthlyGrossProfitChangeMicros = {
          description = "The predicted change in gross profit in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) after introducing the suggested price for a month compared to current active price.",
          format = "int64",
          type = "string",
        },
        suggestedPriceCurrencyCode = {
          description = "The suggested price currency (ISO 4217 code).",
          type = "string",
        },
        suggestedPriceMicros = {
          description = "The latest suggested price in micros (1 millionth of a standard unit, 1 USD = 1000000 micros) for the product.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Product = {
      description = " Required product attributes are primarily defined by the product data specification. See the Product Data Specification Help Center article for information. Product data. After inserting, updating, or deleting a product, it may take several minutes before changes take effect.",
      id = "Product",
      properties = {
        additionalImageLinks = {
          description = "Additional URLs of images of the item.",
          items = {
            type = "string",
          },
          type = "array",
        },
        additionalSizeType = {
          description = "Additional cut of the item. Used together with size_type to represent combined size types for apparel items.",
          type = "string",
        },
        adsGrouping = {
          description = "Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.",
          type = "string",
        },
        adsLabels = {
          description = "Similar to ads_grouping, but only works on CPC.",
          items = {
            type = "string",
          },
          type = "array",
        },
        adsRedirect = {
          description = "Allows advertisers to override the item URL when the product is shown within the context of Product Ads.",
          type = "string",
        },
        adult = {
          description = "Should be set to true if the item is targeted towards adults.",
          type = "boolean",
        },
        ageGroup = {
          description = "Target age group of the item.",
          type = "string",
        },
        availability = {
          description = "Availability status of the item.",
          type = "string",
        },
        availabilityDate = {
          description = "The day a pre-ordered product becomes available for delivery, in ISO 8601 format.",
          type = "string",
        },
        brand = {
          description = "Brand of the item.",
          type = "string",
        },
        canonicalLink = {
          description = "URL for the canonical version of your item's landing page.",
          type = "string",
        },
        channel = {
          description = "Required. The item's channel (online or local). Acceptable values are: - \"`local`\" - \"`online`\" ",
          type = "string",
        },
        color = {
          description = "Color of the item.",
          type = "string",
        },
        condition = {
          description = "Condition or state of the item.",
          type = "string",
        },
        contentLanguage = {
          description = "Required. The two-letter ISO 639-1 language code for the item.",
          type = "string",
        },
        costOfGoodsSold = {
          ["$ref"] = "Price",
          description = "Cost of goods sold. Used for gross profit reporting.",
        },
        customAttributes = {
          description = "A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute of the feed specification in its generic form (for example, `{ \"name\": \"size type\", \"value\": \"regular\" }`). This is useful for submitting attributes not explicitly exposed by the API, such as additional attributes used for Buy on Google (formerly known as Shopping Actions).",
          items = {
            ["$ref"] = "CustomAttribute",
          },
          type = "array",
        },
        customLabel0 = {
          description = "Custom label 0 for custom grouping of items in a Shopping campaign.",
          type = "string",
        },
        customLabel1 = {
          description = "Custom label 1 for custom grouping of items in a Shopping campaign.",
          type = "string",
        },
        customLabel2 = {
          description = "Custom label 2 for custom grouping of items in a Shopping campaign.",
          type = "string",
        },
        customLabel3 = {
          description = "Custom label 3 for custom grouping of items in a Shopping campaign.",
          type = "string",
        },
        customLabel4 = {
          description = "Custom label 4 for custom grouping of items in a Shopping campaign.",
          type = "string",
        },
        description = {
          description = "Description of the item.",
          type = "string",
        },
        displayAdsId = {
          description = "An identifier for an item for dynamic remarketing campaigns.",
          type = "string",
        },
        displayAdsLink = {
          description = "URL directly to your item's landing page for dynamic remarketing campaigns.",
          type = "string",
        },
        displayAdsSimilarIds = {
          description = "Advertiser-specified recommendations.",
          items = {
            type = "string",
          },
          type = "array",
        },
        displayAdsTitle = {
          description = "Title of an item for dynamic remarketing campaigns.",
          type = "string",
        },
        displayAdsValue = {
          description = "Offer margin for dynamic remarketing campaigns.",
          format = "double",
          type = "number",
        },
        energyEfficiencyClass = {
          description = "The energy efficiency class as defined in EU directive 2010/30/EU.",
          type = "string",
        },
        excludedDestinations = {
          description = "The list of destinations to exclude for this target (corresponds to cleared check boxes in Merchant Center). Products that are excluded from all destinations for more than 7 days are automatically deleted.",
          items = {
            type = "string",
          },
          type = "array",
        },
        expirationDate = {
          description = "Date on which the item should expire, as specified upon insertion, in ISO 8601 format. The actual expiration date in Google Shopping is exposed in `productstatuses` as `googleExpirationDate` and might be earlier if `expirationDate` is too far in the future.",
          type = "string",
        },
        externalSellerId = {
          description = "Required for multi-seller accounts. Use this attribute if you're a marketplace uploading products for various sellers to your multi-seller account.",
          type = "string",
        },
        feedLabel = {
          description = "Feed label for the item. Either `targetCountry` or `feedLabel` is required.",
          type = "string",
        },
        gender = {
          description = "Target gender of the item.",
          type = "string",
        },
        googleProductCategory = {
          description = "Google's category of the item (see [Google product taxonomy](https://support.google.com/merchants/answer/1705911)). When querying products, this field will contain the user provided value. There is currently no way to get back the auto assigned google product categories through the API.",
          type = "string",
        },
        gtin = {
          description = "Global Trade Item Number (GTIN) of the item.",
          type = "string",
        },
        id = {
          description = "The REST ID of the product. Content API methods that operate on products take this as their `productId` parameter. The REST ID for a product is of the form channel:contentLanguage: targetCountry: offerId.",
          type = "string",
        },
        identifierExists = {
          description = "False when the item does not have unique product identifiers appropriate to its category, such as GTIN, MPN, and brand. Required according to the Unique Product Identifier Rules for all target countries except for Canada.",
          type = "boolean",
        },
        imageLink = {
          description = "URL of an image of the item.",
          type = "string",
        },
        includedDestinations = {
          description = "The list of destinations to include for this target (corresponds to checked check boxes in Merchant Center). Default destinations are always included unless provided in `excludedDestinations`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        installment = {
          ["$ref"] = "Installment",
          description = "Number and amount of installments to pay for an item.",
        },
        isBundle = {
          description = "Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different products sold by a merchant for a single price.",
          type = "boolean",
        },
        itemGroupId = {
          description = "Shared identifier for all variants of the same product.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#product`\"",
          type = "string",
        },
        lifestyleImageLinks = {
          description = "Additional URLs of lifestyle images of the item, used to explicitly identify images that showcase your item in a real-world context. See the Help Center article for more information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        link = {
          description = "URL directly linking to your item's page on your website.",
          type = "string",
        },
        linkTemplate = {
          description = "URL template for merchant hosted local storefront.",
          type = "string",
        },
        loyaltyPoints = {
          ["$ref"] = "LoyaltyPoints",
          description = "Loyalty points that users receive after purchasing the item. Japan only.",
        },
        material = {
          description = "The material of which the item is made.",
          type = "string",
        },
        maxEnergyEfficiencyClass = {
          description = "The energy efficiency class as defined in EU directive 2010/30/EU.",
          type = "string",
        },
        maxHandlingTime = {
          description = "Maximal product handling time (in business days).",
          format = "int64",
          type = "string",
        },
        minEnergyEfficiencyClass = {
          description = "The energy efficiency class as defined in EU directive 2010/30/EU.",
          type = "string",
        },
        minHandlingTime = {
          description = "Minimal product handling time (in business days).",
          format = "int64",
          type = "string",
        },
        mobileLink = {
          description = "URL for the mobile-optimized version of your item's landing page.",
          type = "string",
        },
        mobileLinkTemplate = {
          description = "URL template for merchant hosted local storefront optimized for mobile devices.",
          type = "string",
        },
        mpn = {
          description = "Manufacturer Part Number (MPN) of the item.",
          type = "string",
        },
        multipack = {
          description = "The number of identical products in a merchant-defined multipack.",
          format = "int64",
          type = "string",
        },
        offerId = {
          description = "Required. A unique identifier for the item. Leading and trailing whitespaces are stripped and multiple whitespaces are replaced by a single whitespace upon submission. Only valid unicode characters are accepted. See the products feed specification for details. *Note:* Content API methods that operate on products take the REST ID of the product, *not* this identifier.",
          type = "string",
        },
        pattern = {
          description = "The item's pattern (for example, polka dots).",
          type = "string",
        },
        pause = {
          description = "Publication of this item should be temporarily paused. Acceptable values are: - \"`ads`\" ",
          type = "string",
        },
        pickupMethod = {
          description = "The pick up option for the item. Acceptable values are: - \"`buy`\" - \"`reserve`\" - \"`ship to store`\" - \"`not supported`\" ",
          type = "string",
        },
        pickupSla = {
          description = "Item store pickup timeline. Acceptable values are: - \"`same day`\" - \"`next day`\" - \"`2-day`\" - \"`3-day`\" - \"`4-day`\" - \"`5-day`\" - \"`6-day`\" - \"`7-day`\" - \"`multi-week`\" ",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Price of the item.",
        },
        productDetails = {
          description = "Technical specification or additional product details.",
          items = {
            ["$ref"] = "ProductProductDetail",
          },
          type = "array",
        },
        productHeight = {
          ["$ref"] = "ProductDimension",
          description = "The height of the product in the units provided. The value must be between 0 (exclusive) and 3000 (inclusive).",
        },
        productHighlights = {
          description = "Bullet points describing the most relevant highlights of a product.",
          items = {
            type = "string",
          },
          type = "array",
        },
        productLength = {
          ["$ref"] = "ProductDimension",
          description = "The length of the product in the units provided. The value must be between 0 (exclusive) and 3000 (inclusive).",
        },
        productTypes = {
          description = "Categories of the item (formatted as in product data specification).",
          items = {
            type = "string",
          },
          type = "array",
        },
        productWeight = {
          ["$ref"] = "ProductWeight",
          description = "The weight of the product in the units provided. The value must be between 0 (exclusive) and 2000 (inclusive).",
        },
        productWidth = {
          ["$ref"] = "ProductDimension",
          description = "The width of the product in the units provided. The value must be between 0 (exclusive) and 3000 (inclusive).",
        },
        promotionIds = {
          description = "The unique ID of a promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        salePrice = {
          ["$ref"] = "Price",
          description = "Advertised sale price of the item.",
        },
        salePriceEffectiveDate = {
          description = "Date range during which the item is on sale (see product data specification ).",
          type = "string",
        },
        sellOnGoogleQuantity = {
          description = "The quantity of the product that is available for selling on Google. Supported only for online products.",
          format = "int64",
          type = "string",
        },
        shipping = {
          description = "Shipping rules.",
          items = {
            ["$ref"] = "ProductShipping",
          },
          type = "array",
        },
        shippingHeight = {
          ["$ref"] = "ProductShippingDimension",
          description = "Height of the item for shipping.",
        },
        shippingLabel = {
          description = "The shipping label of the product, used to group product in account-level shipping rules.",
          type = "string",
        },
        shippingLength = {
          ["$ref"] = "ProductShippingDimension",
          description = "Length of the item for shipping.",
        },
        shippingWeight = {
          ["$ref"] = "ProductShippingWeight",
          description = "Weight of the item for shipping.",
        },
        shippingWidth = {
          ["$ref"] = "ProductShippingDimension",
          description = "Width of the item for shipping.",
        },
        shoppingAdsExcludedCountries = {
          description = "List of country codes (ISO 3166-1 alpha-2) to exclude the offer from Shopping Ads destination. Countries from this list are removed from countries configured in MC feed settings.",
          items = {
            type = "string",
          },
          type = "array",
        },
        sizeSystem = {
          description = "System in which the size is specified. Recommended for apparel items.",
          type = "string",
        },
        sizeType = {
          description = "The cut of the item. Recommended for apparel items.",
          type = "string",
        },
        sizes = {
          description = "Size of the item. Only one value is allowed. For variants with different sizes, insert a separate product for each size with the same `itemGroupId` value (see size definition).",
          items = {
            type = "string",
          },
          type = "array",
        },
        source = {
          description = "The source of the offer, that is, how the offer was created. Acceptable values are: - \"`api`\" - \"`crawl`\" - \"`feed`\" ",
          type = "string",
        },
        subscriptionCost = {
          ["$ref"] = "ProductSubscriptionCost",
          description = "Number of periods (months or years) and amount of payment per period for an item with an associated subscription contract.",
        },
        targetCountry = {
          description = "Required. The CLDR territory code for the item's country of sale.",
          type = "string",
        },
        taxCategory = {
          description = "The tax category of the product, used to configure detailed tax nexus in account-level tax settings.",
          type = "string",
        },
        taxes = {
          description = "Tax information.",
          items = {
            ["$ref"] = "ProductTax",
          },
          type = "array",
        },
        title = {
          description = "Title of the item.",
          type = "string",
        },
        transitTimeLabel = {
          description = "The transit time label of the product, used to group product in account-level transit time tables.",
          type = "string",
        },
        unitPricingBaseMeasure = {
          ["$ref"] = "ProductUnitPricingBaseMeasure",
          description = "The preference of the denominator of the unit price.",
        },
        unitPricingMeasure = {
          ["$ref"] = "ProductUnitPricingMeasure",
          description = "The measure and dimension of an item.",
        },
      },
      type = "object",
    },
    ProductAmount = {
      id = "ProductAmount",
      properties = {
        priceAmount = {
          ["$ref"] = "Price",
          description = "The pre-tax or post-tax price depending on the location of the order.",
        },
        remittedTaxAmount = {
          ["$ref"] = "Price",
          description = "Remitted tax value.",
        },
        taxAmount = {
          ["$ref"] = "Price",
          description = "Tax value.",
        },
      },
      type = "object",
    },
    ProductCluster = {
      description = "Product cluster fields. A product cluster is a grouping for different offers that represent the same product. Values are only set for fields requested explicitly in the request's search query.",
      id = "ProductCluster",
      properties = {
        brand = {
          description = "Brand of the product cluster.",
          type = "string",
        },
        brandInventoryStatus = {
          description = "Tells if there is at least one product of the brand currently `IN_STOCK` in your product feed across multiple countries, all products are `OUT_OF_STOCK` in your product feed, or `NOT_IN_INVENTORY`. The field doesn't take the Best Sellers report country filter into account.",
          enum = {
            "INVENTORY_STATUS_UNSPECIFIED",
            "IN_STOCK",
            "OUT_OF_STOCK",
            "NOT_IN_INVENTORY",
          },
          enumDescriptions = {
            "Inventory status is unknown.",
            "Merchant has a product for this product cluster or brand in stock.",
            "Merchant has a product for this product cluster or brand in inventory but it is currently out of stock.",
            "Merchant does not have a product for this product cluster or brand in inventory.",
          },
          type = "string",
        },
        categoryL1 = {
          description = "Product category (1st level) of the product cluster, represented in Google's product taxonomy.",
          type = "string",
        },
        categoryL2 = {
          description = "Product category (2nd level) of the product cluster, represented in Google's product taxonomy.",
          type = "string",
        },
        categoryL3 = {
          description = "Product category (3rd level) of the product cluster, represented in Google's product taxonomy.",
          type = "string",
        },
        categoryL4 = {
          description = "Product category (4th level) of the product cluster, represented in Google's product taxonomy.",
          type = "string",
        },
        categoryL5 = {
          description = "Product category (5th level) of the product cluster, represented in Google's product taxonomy.",
          type = "string",
        },
        inventoryStatus = {
          description = "Tells whether the product cluster is `IN_STOCK` in your product feed across multiple countries, `OUT_OF_STOCK` in your product feed, or `NOT_IN_INVENTORY` at all. The field doesn't take the Best Sellers report country filter into account.",
          enum = {
            "INVENTORY_STATUS_UNSPECIFIED",
            "IN_STOCK",
            "OUT_OF_STOCK",
            "NOT_IN_INVENTORY",
          },
          enumDescriptions = {
            "Inventory status is unknown.",
            "Merchant has a product for this product cluster or brand in stock.",
            "Merchant has a product for this product cluster or brand in inventory but it is currently out of stock.",
            "Merchant does not have a product for this product cluster or brand in inventory.",
          },
          type = "string",
        },
        title = {
          description = "Title of the product cluster.",
          type = "string",
        },
        variantGtins = {
          description = "GTINs of example variants of the product cluster.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductDeliveryTime = {
      description = "The estimated days to deliver a product after an order is placed. Only authorized shipping signals partners working with a merchant can use this resource. Merchants should use the [`products`](https://developers.google.com/shopping-content/reference/rest/v2.1/products#productshipping) resource instead.",
      id = "ProductDeliveryTime",
      properties = {
        areaDeliveryTimes = {
          description = "Required. A set of associations between `DeliveryArea` and `DeliveryTime` entries. The total number of `areaDeliveryTimes` can be at most 100.",
          items = {
            ["$ref"] = "ProductDeliveryTimeAreaDeliveryTime",
          },
          type = "array",
        },
        productId = {
          ["$ref"] = "ProductId",
          description = "Required. The `id` of the product.",
        },
      },
      type = "object",
    },
    ProductDeliveryTimeAreaDeliveryTime = {
      description = "A pairing of `DeliveryArea` associated with a `DeliveryTime` for this product.",
      id = "ProductDeliveryTimeAreaDeliveryTime",
      properties = {
        deliveryArea = {
          ["$ref"] = "DeliveryArea",
          description = "Required. The delivery area associated with `deliveryTime` for this product.",
        },
        deliveryTime = {
          ["$ref"] = "ProductDeliveryTimeAreaDeliveryTimeDeliveryTime",
          description = "Required. The delivery time associated with `deliveryArea` for this product.",
        },
      },
      type = "object",
    },
    ProductDeliveryTimeAreaDeliveryTimeDeliveryTime = {
      description = "A delivery time for this product.",
      id = "ProductDeliveryTimeAreaDeliveryTimeDeliveryTime",
      properties = {
        maxHandlingTimeDays = {
          description = "Required. The maximum number of business days (inclusive) between when an order is placed and when the product ships. If a product ships in the same day, set this value to 0.",
          format = "int32",
          type = "integer",
        },
        maxTransitTimeDays = {
          description = "Required. The maximum number of business days (inclusive) between when the product ships and when the product is delivered.",
          format = "int32",
          type = "integer",
        },
        minHandlingTimeDays = {
          description = "Required. The minimum number of business days (inclusive) between when an order is placed and when the product ships. If a product ships in the same day, set this value to 0.",
          format = "int32",
          type = "integer",
        },
        minTransitTimeDays = {
          description = "Required. The minimum number of business days (inclusive) between when the product ships and when the product is delivered.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ProductDimension = {
      id = "ProductDimension",
      properties = {
        unit = {
          description = "Required. The length units. Acceptable values are: - \"`in`\" - \"`cm`\" ",
          type = "string",
        },
        value = {
          description = "Required. The length value represented as a number. The value can have a maximum precision of four decimal places.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ProductId = {
      description = "The Content API ID of the product.",
      id = "ProductId",
      properties = {
        productId = {
          description = "The Content API ID of the product, in the form `channel:contentLanguage:targetCountry:offerId`.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductProductDetail = {
      id = "ProductProductDetail",
      properties = {
        attributeName = {
          description = "The name of the product detail.",
          type = "string",
        },
        attributeValue = {
          description = "The value of the product detail.",
          type = "string",
        },
        sectionName = {
          description = "The section header used to group a set of product details.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductShipping = {
      id = "ProductShipping",
      properties = {
        country = {
          description = "The CLDR territory code of the country to which an item will ship.",
          type = "string",
        },
        locationGroupName = {
          description = "The location where the shipping is applicable, represented by a location group name.",
          type = "string",
        },
        locationId = {
          description = "The numeric ID of a location that the shipping rate applies to as defined in the Google Ads API.",
          format = "int64",
          type = "string",
        },
        maxHandlingTime = {
          description = "Maximum handling time (inclusive) between when the order is received and shipped in business days. 0 means that the order is shipped on the same day as it's received if it happens before the cut-off time. Both maxHandlingTime and maxTransitTime are required if providing shipping speeds.",
          format = "int64",
          type = "string",
        },
        maxTransitTime = {
          description = "Maximum transit time (inclusive) between when the order has shipped and when it's delivered in business days. 0 means that the order is delivered on the same day as it ships. Both maxHandlingTime and maxTransitTime are required if providing shipping speeds.",
          format = "int64",
          type = "string",
        },
        minHandlingTime = {
          description = "Minimum handling time (inclusive) between when the order is received and shipped in business days. 0 means that the order is shipped on the same day as it's received if it happens before the cut-off time. minHandlingTime can only be present together with maxHandlingTime; but it's not required if maxHandlingTime is present.",
          format = "int64",
          type = "string",
        },
        minTransitTime = {
          description = "Minimum transit time (inclusive) between when the order has shipped and when it's delivered in business days. 0 means that the order is delivered on the same day as it ships. minTransitTime can only be present together with maxTransitTime; but it's not required if maxTransitTime is present.",
          format = "int64",
          type = "string",
        },
        postalCode = {
          description = "The postal code range that the shipping rate applies to, represented by a postal code, a postal code prefix followed by a * wildcard, a range between two postal codes or two postal code prefixes of equal length.",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Fixed shipping price, represented as a number.",
        },
        region = {
          description = "The geographic region to which a shipping rate applies.",
          type = "string",
        },
        service = {
          description = "A free-form description of the service class or delivery speed.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductShippingDimension = {
      id = "ProductShippingDimension",
      properties = {
        unit = {
          description = "The unit of value.",
          type = "string",
        },
        value = {
          description = "The dimension of the product used to calculate the shipping cost of the item.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ProductShippingWeight = {
      id = "ProductShippingWeight",
      properties = {
        unit = {
          description = "The unit of value.",
          type = "string",
        },
        value = {
          description = "The weight of the product used to calculate the shipping cost of the item.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ProductStatus = {
      description = "The status of a product, that is, information about a product computed asynchronously.",
      id = "ProductStatus",
      properties = {
        creationDate = {
          description = "Date on which the item has been created, in ISO 8601 format.",
          type = "string",
        },
        destinationStatuses = {
          description = "The intended destinations for the product.",
          items = {
            ["$ref"] = "ProductStatusDestinationStatus",
          },
          type = "array",
        },
        googleExpirationDate = {
          description = "Date on which the item expires in Google Shopping, in ISO 8601 format.",
          type = "string",
        },
        itemLevelIssues = {
          description = "A list of all issues associated with the product.",
          items = {
            ["$ref"] = "ProductStatusItemLevelIssue",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#productStatus`\"",
          type = "string",
        },
        lastUpdateDate = {
          description = "Date on which the item has been last updated, in ISO 8601 format.",
          type = "string",
        },
        link = {
          description = "The link to the product.",
          type = "string",
        },
        productId = {
          description = "The ID of the product for which status is reported.",
          type = "string",
        },
        title = {
          description = "The title of the product.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductStatusDestinationStatus = {
      id = "ProductStatusDestinationStatus",
      properties = {
        approvedCountries = {
          description = "List of country codes (ISO 3166-1 alpha-2) where the offer is approved.",
          items = {
            type = "string",
          },
          type = "array",
        },
        destination = {
          description = "The name of the destination",
          type = "string",
        },
        disapprovedCountries = {
          description = "List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved.",
          items = {
            type = "string",
          },
          type = "array",
        },
        pendingCountries = {
          description = "List of country codes (ISO 3166-1 alpha-2) where the offer is pending approval.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Destination approval status in `targetCountry` of the offer.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductStatusItemLevelIssue = {
      id = "ProductStatusItemLevelIssue",
      properties = {
        applicableCountries = {
          description = "List of country codes (ISO 3166-1 alpha-2) where issue applies to the offer.",
          items = {
            type = "string",
          },
          type = "array",
        },
        attributeName = {
          description = "The attribute's name, if the issue is caused by a single attribute.",
          type = "string",
        },
        code = {
          description = "The error code of the issue.",
          type = "string",
        },
        description = {
          description = "A short issue description in English.",
          type = "string",
        },
        destination = {
          description = "The destination the issue applies to.",
          type = "string",
        },
        detail = {
          description = "A detailed issue description in English.",
          type = "string",
        },
        documentation = {
          description = "The URL of a web page to help with resolving this issue.",
          type = "string",
        },
        resolution = {
          description = "Whether the issue can be resolved by the merchant.",
          type = "string",
        },
        servability = {
          description = "How this issue affects serving of the offer.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductSubscriptionCost = {
      id = "ProductSubscriptionCost",
      properties = {
        amount = {
          ["$ref"] = "Price",
          description = "The amount the buyer has to pay per subscription period.",
        },
        period = {
          description = "The type of subscription period.",
          type = "string",
        },
        periodLength = {
          description = "The number of subscription periods the buyer has to pay.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ProductTax = {
      id = "ProductTax",
      properties = {
        country = {
          description = "The country within which the item is taxed, specified as a CLDR territory code.",
          type = "string",
        },
        locationId = {
          description = "The numeric ID of a location that the tax rate applies to as defined in the Google Ads API.",
          format = "int64",
          type = "string",
        },
        postalCode = {
          description = "The postal code range that the tax rate applies to, represented by a ZIP code, a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP code prefixes of equal length. Examples: 94114, 94*, 94002-95460, 94*-95*.",
          type = "string",
        },
        rate = {
          description = "The percentage of tax rate that applies to the item price.",
          format = "double",
          type = "number",
        },
        region = {
          description = "The geographic region to which the tax rate applies.",
          type = "string",
        },
        taxShip = {
          description = "Should be set to true if tax is charged on shipping.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ProductUnitPricingBaseMeasure = {
      id = "ProductUnitPricingBaseMeasure",
      properties = {
        unit = {
          description = "The unit of the denominator.",
          type = "string",
        },
        value = {
          description = "The denominator of the unit price.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ProductUnitPricingMeasure = {
      id = "ProductUnitPricingMeasure",
      properties = {
        unit = {
          description = "The unit of the measure.",
          type = "string",
        },
        value = {
          description = "The measure of an item.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ProductView = {
      description = "Product fields. Values are only set for fields requested explicitly in the request's search query. Available only to selected merchants. Submit the [interest form](https://forms.gle/7Uy8htzAN8oNokz9A) to request access.",
      id = "ProductView",
      properties = {
        aggregatedDestinationStatus = {
          description = "Aggregated destination status.",
          enum = {
            "AGGREGATED_STATUS_UNSPECIFIED",
            "NOT_ELIGIBLE_OR_DISAPPROVED",
            "PENDING",
            "ELIGIBLE_LIMITED",
            "ELIGIBLE",
          },
          enumDescriptions = {
            "Undefined aggregated status.",
            "Offer isn't eligible, or is disapproved for all destinations.",
            "Offer's status is pending in all destinations.",
            "Offer is eligible for some (but not all) destinations.",
            "Offer is eligible for all destinations.",
          },
          type = "string",
        },
        availability = {
          description = "Availability of the product.",
          type = "string",
        },
        brand = {
          description = "Brand of the product.",
          type = "string",
        },
        categoryL1 = {
          description = "First level of the product category in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        categoryL2 = {
          description = "Second level of the product category in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        categoryL3 = {
          description = "Third level of the product category in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        categoryL4 = {
          description = "Fourth level of the product category in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        categoryL5 = {
          description = "Fifth level of the product category in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        channel = {
          description = "Channel of the product (online versus local).",
          enum = {
            "CHANNEL_UNSPECIFIED",
            "LOCAL",
            "ONLINE",
          },
          enumDescriptions = {
            "Indicates that the channel is unspecified.",
            "Indicates that the channel is local.",
            "Indicates that the channel is online.",
          },
          type = "string",
        },
        condition = {
          description = "Condition of the product.",
          type = "string",
        },
        creationTime = {
          description = "The time the merchant created the product in timestamp seconds.",
          format = "google-datetime",
          type = "string",
        },
        currencyCode = {
          description = "Product price currency code (for example, ISO 4217). Absent if product price is not available.",
          type = "string",
        },
        expirationDate = {
          ["$ref"] = "Date",
          description = "Expiration date for the product. Specified on insertion.",
        },
        gtin = {
          description = "GTIN of the product.",
          items = {
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "The REST ID of the product, in the form of channel:contentLanguage:targetCountry:offerId. Content API methods that operate on products take this as their productId parameter. Should always be included in the SELECT clause.",
          type = "string",
        },
        itemGroupId = {
          description = "Item group ID provided by the merchant for grouping variants together.",
          type = "string",
        },
        itemIssues = {
          description = "List of item issues for the product.",
          items = {
            ["$ref"] = "ProductViewItemIssue",
          },
          type = "array",
        },
        languageCode = {
          description = "Language code of the product in BCP 47 format.",
          type = "string",
        },
        offerId = {
          description = "Merchant-provided id of the product.",
          type = "string",
        },
        priceMicros = {
          description = "Product price specified as micros (1 millionth of a standard unit, 1 USD = 1000000 micros) in the product currency. Absent in case the information about the price of the product is not available.",
          format = "int64",
          type = "string",
        },
        productTypeL1 = {
          description = "First level of the product type in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        productTypeL2 = {
          description = "Second level of the product type in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        productTypeL3 = {
          description = "Third level of the product type in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        productTypeL4 = {
          description = "Fourth level of the product type in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        productTypeL5 = {
          description = "Fifth level of the product type in merchant's own [product taxonomy](https://support.google.com/merchants/answer/6324436).",
          type = "string",
        },
        shippingLabel = {
          description = "The normalized shipping label specified in the feed",
          type = "string",
        },
        title = {
          description = "Title of the product.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductViewItemIssue = {
      description = "Item issue associated with the product.",
      id = "ProductViewItemIssue",
      properties = {
        issueType = {
          ["$ref"] = "ProductViewItemIssueItemIssueType",
          description = "Item issue type.",
        },
        resolution = {
          description = "Item issue resolution.",
          enum = {
            "UNKNOWN",
            "MERCHANT_ACTION",
            "PENDING_PROCESSING",
          },
          enumDescriptions = {
            "Unknown resolution type.",
            "The merchant has to fix the issue.",
            "The issue will be resolved automatically (for example, image crawl), or Google review. No merchant action is required now. Resolution might lead to another issue (for example, if crawl fails).",
          },
          type = "string",
        },
        severity = {
          ["$ref"] = "ProductViewItemIssueItemIssueSeverity",
          description = "Item issue severity.",
        },
      },
      type = "object",
    },
    ProductViewItemIssueIssueSeverityPerDestination = {
      description = "Issue severity for all affected regions in a destination.",
      id = "ProductViewItemIssueIssueSeverityPerDestination",
      properties = {
        demotedCountries = {
          description = "List of demoted countries in the destination.",
          items = {
            type = "string",
          },
          type = "array",
        },
        destination = {
          description = "Issue destination.",
          type = "string",
        },
        disapprovedCountries = {
          description = "List of disapproved countries in the destination.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductViewItemIssueItemIssueSeverity = {
      description = "Severity of an issue per destination in a region, and aggregated severity.",
      id = "ProductViewItemIssueItemIssueSeverity",
      properties = {
        aggregatedSeverity = {
          description = "Severity of an issue aggregated for destination.",
          enum = {
            "AGGREGATED_ISSUE_SEVERITY_UNSPECIFIED",
            "DISAPPROVED",
            "DEMOTED",
            "PENDING",
          },
          enumDescriptions = {
            "Undefined Issue severity.",
            "Issue disapproves the product in at least one of the selected destinations.",
            "Issue demotes the product in all selected destinations it affects.",
            "Issue resolution is `PENDING_PROCESSING`.",
          },
          type = "string",
        },
        severityPerDestination = {
          description = "Item issue severity for every destination.",
          items = {
            ["$ref"] = "ProductViewItemIssueIssueSeverityPerDestination",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductViewItemIssueItemIssueType = {
      description = "Type of the item issue.",
      id = "ProductViewItemIssueItemIssueType",
      properties = {
        canonicalAttribute = {
          description = "Canonical attribute name for attribute-specific issues.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductWeight = {
      id = "ProductWeight",
      properties = {
        unit = {
          description = "Required. The weight unit. Acceptable values are: - \"`g`\" - \"`kg`\" - \"`oz`\" - \"`lb`\" ",
          type = "string",
        },
        value = {
          description = "Required. The weight represented as a number. The weight can have a maximum precision of four decimal places.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ProductsCustomBatchRequest = {
      id = "ProductsCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "ProductsCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductsCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch products request.",
      id = "ProductsCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        feedId = {
          description = "The Content API Supplemental Feed ID. If present then product insertion or deletion applies to a supplemental feed instead of primary Content API feed.",
          format = "uint64",
          type = "string",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`delete`\" - \"`get`\" - \"`insert`\" - \"`update`\" ",
          type = "string",
        },
        product = {
          ["$ref"] = "Product",
          description = "The product to insert or update. Only required if the method is `insert` or `update`. If the `update` method is used with `updateMask` only to delete a field, then this isn't required. For example, setting `salePrice` on the `updateMask` and not providing a `product` will result in an existing sale price on the product specified by `productId` being deleted.",
        },
        productId = {
          description = "The ID of the product to get or mutate. Only defined if the method is `get`, `delete`, or `update`.",
          type = "string",
        },
        updateMask = {
          description = "The comma-separated list of product attributes to be updated. Example: `\"title,salePrice\"`. Attributes specified in the update mask without a value specified in the body will be deleted from the product. *You must specify the update mask to delete attributes.* Only top-level product attributes can be updated. If not defined, product attributes with set values will be updated and other attributes will stay unchanged. Only defined if the method is `update`.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    ProductsCustomBatchResponse = {
      id = "ProductsCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "ProductsCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#productsCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    ProductsCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch products response.",
      id = "ProductsCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#productsCustomBatchResponseEntry`\"",
          type = "string",
        },
        product = {
          ["$ref"] = "Product",
          description = "The inserted product. Only defined if the method is `insert` and if the request was successful.",
        },
      },
      type = "object",
    },
    ProductsListResponse = {
      id = "ProductsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#productsListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of products.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "Product",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductstatusesCustomBatchRequest = {
      id = "ProductstatusesCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "ProductstatusesCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductstatusesCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch productstatuses request.",
      id = "ProductstatusesCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        destinations = {
          description = "If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.",
          items = {
            type = "string",
          },
          type = "array",
        },
        includeAttributes = {
          description = "Deprecated: Setting this field has no effect and attributes are never included.",
          type = "boolean",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`get`\" ",
          type = "string",
        },
        productId = {
          description = "The ID of the product whose status to get.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductstatusesCustomBatchResponse = {
      id = "ProductstatusesCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "ProductstatusesCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#productstatusesCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    ProductstatusesCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch productstatuses response.",
      id = "ProductstatusesCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#productstatusesCustomBatchResponseEntry`\"",
          type = "string",
        },
        productStatus = {
          ["$ref"] = "ProductStatus",
          description = "The requested product status. Only defined if the request was successful.",
        },
      },
      type = "object",
    },
    ProductstatusesListResponse = {
      id = "ProductstatusesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#productstatusesListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of products statuses.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "ProductStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Promotion = {
      description = "Represents a promotion. See the following articles for more details. * [Promotions feed specification](https://support.google.com/merchants/answer/2906014) * [Local promotions feed specification](https://support.google.com/merchants/answer/10146130) * [Promotions on Buy on Google product data specification](https://support.google.com/merchants/answer/9173673)",
      id = "Promotion",
      properties = {
        brand = {
          description = "Product filter by brand for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        brandExclusion = {
          description = "Product filter by brand exclusion for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        contentLanguage = {
          description = "Required. The content language used as part of the unique identifier. `en` content language is available for all target countries. `fr` content language is available for `CA` and `FR` target countries, and `de` content language is available for `DE` target country.",
          type = "string",
        },
        couponValueType = {
          description = "Required. Coupon value type for the promotion.",
          enum = {
            "COUPON_VALUE_TYPE_UNSPECIFIED",
            "MONEY_OFF",
            "PERCENT_OFF",
            "BUY_M_GET_N_MONEY_OFF",
            "BUY_M_GET_N_PERCENT_OFF",
            "BUY_M_GET_MONEY_OFF",
            "BUY_M_GET_PERCENT_OFF",
            "FREE_GIFT",
            "FREE_GIFT_WITH_VALUE",
            "FREE_GIFT_WITH_ITEM_ID",
            "FREE_SHIPPING_STANDARD",
            "FREE_SHIPPING_OVERNIGHT",
            "FREE_SHIPPING_TWO_DAY",
          },
          enumDescriptions = {
            "Indicates that the coupon value type is unspecified.",
            "Money off coupon value type.",
            "Percent off coupon value type.",
            "Buy M quantity, get N money off coupon value type. `buy_this_quantity` and `get_this_quantity` must be present. `money_off_amount` must also be present.",
            "Buy M quantity, get N percent off coupon value type. `buy_this_quantity` and `get_this_quantity` must be present. `percent_off_percentage` must also be present.",
            "Buy M quantity, get money off. `buy_this_quantity` and `money_off_amount` must be present.",
            "Buy M quantity, get money off. `buy_this_quantity` and `percent_off_percentage` must be present.",
            "Free gift with description only.",
            "Free gift with value (description is optional).",
            "Free gift with item ID (description is optional).",
            "Standard free shipping coupon value type.",
            "Overnight free shipping coupon value type.",
            "Two day free shipping coupon value type.",
          },
          type = "string",
        },
        freeGiftDescription = {
          description = "Free gift description for the promotion.",
          type = "string",
        },
        freeGiftItemId = {
          description = "Free gift item ID for the promotion.",
          type = "string",
        },
        freeGiftValue = {
          ["$ref"] = "PriceAmount",
          description = "Free gift value for the promotion.",
        },
        genericRedemptionCode = {
          description = "Generic redemption code for the promotion. To be used with the `offerType` field.",
          type = "string",
        },
        getThisQuantityDiscounted = {
          description = "The number of items discounted in the promotion.",
          format = "int32",
          type = "integer",
        },
        id = {
          description = "Required. Output only. The REST promotion ID to uniquely identify the promotion. Content API methods that operate on promotions take this as their `promotionId` parameter. The REST ID for a promotion is of the form channel:contentLanguage:targetCountry:promotionId The `channel` field has a value of `\"online\"`, `\"in_store\"`, or `\"online_in_store\"`.",
          readOnly = true,
          type = "string",
        },
        itemGroupId = {
          description = "Product filter by item group ID for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        itemGroupIdExclusion = {
          description = "Product filter by item group ID exclusion for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        itemId = {
          description = "Product filter by item ID for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        itemIdExclusion = {
          description = "Product filter by item ID exclusion for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        limitQuantity = {
          description = "Maximum purchase quantity for the promotion.",
          format = "int32",
          type = "integer",
        },
        limitValue = {
          ["$ref"] = "PriceAmount",
          description = "Maximum purchase value for the promotion.",
        },
        longTitle = {
          description = "Required. Long title for the promotion.",
          type = "string",
        },
        minimumPurchaseAmount = {
          ["$ref"] = "PriceAmount",
          description = "Minimum purchase amount for the promotion.",
        },
        minimumPurchaseQuantity = {
          description = "Minimum purchase quantity for the promotion.",
          format = "int32",
          type = "integer",
        },
        moneyBudget = {
          ["$ref"] = "PriceAmount",
          description = "Cost cap for the promotion.",
        },
        moneyOffAmount = {
          ["$ref"] = "PriceAmount",
          description = "The money off amount offered in the promotion.",
        },
        offerType = {
          description = "Required. Type of the promotion.",
          enum = {
            "OFFER_TYPE_UNSPECIFIED",
            "NO_CODE",
            "GENERIC_CODE",
          },
          enumDescriptions = {
            "Unknown offer type.",
            "Offer type without a code.",
            "Offer type with a code.",
          },
          type = "string",
        },
        orderLimit = {
          description = "Order limit for the promotion.",
          format = "int32",
          type = "integer",
        },
        percentOff = {
          description = "The percentage discount offered in the promotion.",
          format = "int32",
          type = "integer",
        },
        productApplicability = {
          description = "Required. Applicability of the promotion to either all products or only specific products.",
          enum = {
            "PRODUCT_APPLICABILITY_UNSPECIFIED",
            "ALL_PRODUCTS",
            "SPECIFIC_PRODUCTS",
          },
          enumDescriptions = {
            "Which products the promotion applies to is unknown.",
            "Applicable to all products.",
            "Applicable to only a single product or list of products.",
          },
          type = "string",
        },
        productType = {
          description = "Product filter by product type for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        productTypeExclusion = {
          description = "Product filter by product type exclusion for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        promotionDestinationIds = {
          description = "Destination ID for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        promotionDisplayDates = {
          description = "String representation of the promotion display dates. Deprecated. Use `promotion_display_time_period` instead.",
          type = "string",
        },
        promotionDisplayTimePeriod = {
          ["$ref"] = "TimePeriod",
          description = "`TimePeriod` representation of the promotion's display dates.",
        },
        promotionEffectiveDates = {
          description = "String representation of the promotion effective dates. Deprecated. Use `promotion_effective_time_period` instead.",
          type = "string",
        },
        promotionEffectiveTimePeriod = {
          ["$ref"] = "TimePeriod",
          description = "Required. `TimePeriod` representation of the promotion's effective dates.",
        },
        promotionId = {
          description = "Required. The user provided promotion ID to uniquely identify the promotion.",
          type = "string",
        },
        promotionStatus = {
          ["$ref"] = "PromotionPromotionStatus",
          description = "Output only. The current status of the promotion.",
          readOnly = true,
        },
        promotionUrl = {
          description = "URL to the page on the merchant's site where the promotion shows. Local Inventory ads promotions throw an error if no promo url is included. URL is used to confirm that the promotion is valid and can be redeemed.",
          type = "string",
        },
        redemptionChannel = {
          description = "Required. Redemption channel for the promotion. At least one channel is required.",
          items = {
            enum = {
              "REDEMPTION_CHANNEL_UNSPECIFIED",
              "IN_STORE",
              "ONLINE",
            },
            enumDescriptions = {
              "Indicates that the channel is unspecified.",
              "Indicates that the channel is in store.",
              "Indicates that the channel is online.",
            },
            type = "string",
          },
          type = "array",
        },
        shippingServiceNames = {
          description = "Shipping service names for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        storeApplicability = {
          description = "Whether the promotion applies to all stores, or only specified stores. Local Inventory ads promotions throw an error if no store applicability is included. An INVALID_ARGUMENT error is thrown if store_applicability is set to ALL_STORES and store_code or score_code_exclusion is set to a value.",
          enum = {
            "STORE_APPLICABILITY_UNSPECIFIED",
            "ALL_STORES",
            "SPECIFIC_STORES",
          },
          enumDescriptions = {
            "Which store codes the promotion applies to is unknown.",
            "Promotion applies to all stores.",
            "Promotion applies to only the specified stores.",
          },
          type = "string",
        },
        storeCode = {
          description = "Store codes to include for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        storeCodeExclusion = {
          description = "Store codes to exclude for the promotion.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetCountry = {
          description = "Required. The target country used as part of the unique identifier. Can be `AU`, `CA`, `DE`, `FR`, `GB`, `IN` or `US`.",
          type = "string",
        },
      },
      type = "object",
    },
    PromotionPromotionStatus = {
      description = "The status of the promotion.",
      id = "PromotionPromotionStatus",
      properties = {
        creationDate = {
          description = "Date on which the promotion has been created in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and offset, for example \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"",
          type = "string",
        },
        destinationStatuses = {
          description = "The intended destinations for the promotion.",
          items = {
            ["$ref"] = "PromotionPromotionStatusDestinationStatus",
          },
          type = "array",
        },
        lastUpdateDate = {
          description = "Date on which the promotion status has been last updated in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format: Date, time, and offset, for example \"2020-01-02T09:00:00+01:00\" or \"2020-01-02T09:00:00Z\"",
          type = "string",
        },
        promotionIssue = {
          description = "A list of issues associated with the promotion.",
          items = {
            ["$ref"] = "PromotionPromotionStatusPromotionIssue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PromotionPromotionStatusDestinationStatus = {
      description = "The destination status of the promotion.",
      id = "PromotionPromotionStatusDestinationStatus",
      properties = {
        destination = {
          description = "The name of the destination.",
          type = "string",
        },
        status = {
          description = "The status for the specified destination.",
          enum = {
            "STATE_UNSPECIFIED",
            "IN_REVIEW",
            "REJECTED",
            "LIVE",
            "STOPPED",
            "EXPIRED",
            "PENDING",
          },
          enumDescriptions = {
            "Unknown promotion state.",
            "The promotion is under review.",
            "The promotion is disapproved",
            "The promotion is approved and active.",
            "The promotion is stopped by merchant.",
            "The promotion is no longer active.",
            "The promotion is not stopped, and all reviews are approved, but the active date is in the future.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PromotionPromotionStatusPromotionIssue = {
      description = "The issue associated with the promotion.",
      id = "PromotionPromotionStatusPromotionIssue",
      properties = {
        code = {
          description = "Code of the issue.",
          type = "string",
        },
        detail = {
          description = "Explanation of the issue.",
          type = "string",
        },
      },
      type = "object",
    },
    PubsubNotificationSettings = {
      description = "Settings for Pub/Sub notifications, all methods require that the caller is a direct user of the merchant center account.",
      id = "PubsubNotificationSettings",
      properties = {
        cloudTopicName = {
          description = "Cloud pub/sub topic to which notifications are sent (read-only).",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#pubsubNotificationSettings`\"",
          type = "string",
        },
        registeredEvents = {
          description = "List of event types. Acceptable values are: - \"`orderPendingShipment`\" ",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RateGroup = {
      id = "RateGroup",
      properties = {
        applicableShippingLabels = {
          description = "A list of shipping labels defining the products to which this rate group applies to. This is a disjunction: only one of the labels has to match for the rate group to apply. May only be empty for the last rate group of a service. Required.",
          items = {
            type = "string",
          },
          type = "array",
        },
        carrierRates = {
          description = "A list of carrier rates that can be referred to by `mainTable` or `singleValue`.",
          items = {
            ["$ref"] = "CarrierRate",
          },
          type = "array",
        },
        mainTable = {
          ["$ref"] = "Table",
          description = "A table defining the rate group, when `singleValue` is not expressive enough. Can only be set if `singleValue` is not set.",
        },
        name = {
          description = "Name of the rate group. Optional. If set has to be unique within shipping service.",
          type = "string",
        },
        singleValue = {
          ["$ref"] = "Value",
          description = "The value of the rate group (for example, flat rate $10). Can only be set if `mainTable` and `subtables` are not set.",
        },
        subtables = {
          description = "A list of subtables referred to by `mainTable`. Can only be set if `mainTable` is set.",
          items = {
            ["$ref"] = "Table",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RefundReason = {
      id = "RefundReason",
      properties = {
        description = {
          description = "Description of the reason.",
          type = "string",
        },
        reasonCode = {
          description = "Code of the refund reason. Acceptable values are: - \"`adjustment`\" - \"`autoPostInternal`\" - \"`autoPostInvalidBillingAddress`\" - \"`autoPostNoInventory`\" - \"`autoPostPriceError`\" - \"`autoPostUndeliverableShippingAddress`\" - \"`couponAbuse`\" - \"`courtesyAdjustment`\" - \"`customerCanceled`\" - \"`customerDiscretionaryReturn`\" - \"`customerInitiatedMerchantCancel`\" - \"`customerSupportRequested`\" - \"`deliveredLateByCarrier`\" - \"`deliveredTooLate`\" - \"`expiredItem`\" - \"`failToPushOrderGoogleError`\" - \"`failToPushOrderMerchantError`\" - \"`failToPushOrderMerchantFulfillmentError`\" - \"`failToPushOrderToMerchant`\" - \"`failToPushOrderToMerchantOutOfStock`\" - \"`feeAdjustment`\" - \"`invalidCoupon`\" - \"`lateShipmentCredit`\" - \"`malformedShippingAddress`\" - \"`merchantDidNotShipOnTime`\" - \"`noInventory`\" - \"`orderTimeout`\" - \"`other`\" - \"`paymentAbuse`\" - \"`paymentDeclined`\" - \"`priceAdjustment`\" - \"`priceError`\" - \"`productArrivedDamaged`\" - \"`productNotAsDescribed`\" - \"`promoReallocation`\" - \"`qualityNotAsExpected`\" - \"`returnRefundAbuse`\" - \"`shippingCostAdjustment`\" - \"`shippingPriceError`\" - \"`taxAdjustment`\" - \"`taxError`\" - \"`undeliverableShippingAddress`\" - \"`unsupportedPoBoxAddress`\" - \"`wrongProductShipped`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    Region = {
      description = "Represents a geographic region that you can use as a target with both the `RegionalInventory` and `ShippingSettings` services. You can define regions as collections of either postal codes or, in some countries, using predefined geotargets.",
      id = "Region",
      properties = {
        displayName = {
          description = "The display name of the region.",
          type = "string",
        },
        geotargetArea = {
          ["$ref"] = "RegionGeoTargetArea",
          description = "A list of geotargets that defines the region area.",
        },
        merchantId = {
          description = "Output only. Immutable. Merchant that owns the region.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        postalCodeArea = {
          ["$ref"] = "RegionPostalCodeArea",
          description = "A list of postal codes that defines the region area.",
        },
        regionId = {
          description = "Output only. Immutable. The ID uniquely identifying each region.",
          readOnly = true,
          type = "string",
        },
        regionalInventoryEligible = {
          description = "Output only. Indicates if the region is eligible to use in the Regional Inventory configuration.",
          readOnly = true,
          type = "boolean",
        },
        shippingEligible = {
          description = "Output only. Indicates if the region is eligible to use in the Shipping Services configuration.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    RegionGeoTargetArea = {
      description = "A list of geotargets that defines the region area.",
      id = "RegionGeoTargetArea",
      properties = {
        geotargetCriteriaIds = {
          description = "Required. A non-empty list of [location IDs](https://developers.google.com/adwords/api/docs/appendix/geotargeting). They must all be of the same location type (e.g., state).",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RegionPostalCodeArea = {
      description = "A list of postal codes that defines the region area. Note: All regions defined using postal codes are accessible via the account's `ShippingSettings.postalCodeGroups` resource.",
      id = "RegionPostalCodeArea",
      properties = {
        postalCodes = {
          description = "Required. A range of postal codes.",
          items = {
            ["$ref"] = "RegionPostalCodeAreaPostalCodeRange",
          },
          type = "array",
        },
        regionCode = {
          description = "Required. CLDR territory code or the country the postal code group applies to.",
          type = "string",
        },
      },
      type = "object",
    },
    RegionPostalCodeAreaPostalCodeRange = {
      description = "A range of postal codes that defines the region area.",
      id = "RegionPostalCodeAreaPostalCodeRange",
      properties = {
        begin = {
          description = "Required. A postal code or a pattern of the form prefix* denoting the inclusive lower bound of the range defining the area. Examples values: \"94108\", \"9410*\", \"9*\".",
          type = "string",
        },
        ["end"] = {
          description = "Optional. A postal code or a pattern of the form prefix* denoting the inclusive upper bound of the range defining the area. It must have the same length as postalCodeRangeBegin: if postalCodeRangeBegin is a postal code then postalCodeRangeEnd must be a postal code too; if postalCodeRangeBegin is a pattern then postalCodeRangeEnd must be a pattern with the same prefix length. Optional: if not set, then the area is defined as being all the postal codes matching postalCodeRangeBegin.",
          type = "string",
        },
      },
      type = "object",
    },
    RegionalInventory = {
      description = "Regional inventory resource. contains the regional name and all attributes which are overridden for the specified region.",
      id = "RegionalInventory",
      properties = {
        availability = {
          description = "The availability of the product.",
          type = "string",
        },
        customAttributes = {
          description = "A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute of the feed specification in its generic form.",
          items = {
            ["$ref"] = "CustomAttribute",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#regionalInventory`\".",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "The price of the product.",
        },
        regionId = {
          description = "The ID uniquely identifying each region.",
          type = "string",
        },
        salePrice = {
          ["$ref"] = "Price",
          description = "The sale price of the product. Mandatory if `sale_price_effective_date` is defined.",
        },
        salePriceEffectiveDate = {
          description = "A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates might be specified as 'null' if undecided.",
          type = "string",
        },
      },
      type = "object",
    },
    RegionalinventoryCustomBatchRequest = {
      id = "RegionalinventoryCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "RegionalinventoryCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RegionalinventoryCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch regional inventory request.",
      id = "RegionalinventoryCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "Method of the batch request entry. Acceptable values are: - \"`insert`\" ",
          type = "string",
        },
        productId = {
          description = "The ID of the product for which to update price and availability.",
          type = "string",
        },
        regionalInventory = {
          ["$ref"] = "RegionalInventory",
          description = "Price and availability of the product.",
        },
      },
      type = "object",
    },
    RegionalinventoryCustomBatchResponse = {
      id = "RegionalinventoryCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "RegionalinventoryCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#regionalinventoryCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    RegionalinventoryCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch regional inventory response.",
      id = "RegionalinventoryCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry this entry responds to.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#regionalinventoryCustomBatchResponseEntry`\".",
          type = "string",
        },
        regionalInventory = {
          ["$ref"] = "RegionalInventory",
          description = "Price and availability of the product.",
        },
      },
      type = "object",
    },
    ReportRow = {
      description = "Result row returned from the search query.",
      id = "ReportRow",
      properties = {
        bestSellers = {
          ["$ref"] = "BestSellers",
          description = "Best Sellers fields requested by the merchant in the query. Field values are only set if the merchant queries `BestSellersProductClusterView` or `BestSellersBrandView`.",
        },
        brand = {
          ["$ref"] = "Brand",
          description = "Brand fields requested by the merchant in the query. Field values are only set if the merchant queries `BestSellersBrandView`.",
        },
        metrics = {
          ["$ref"] = "Metrics",
          description = "Metrics requested by the merchant in the query. Metric values are only set for metrics requested explicitly in the query.",
        },
        priceCompetitiveness = {
          ["$ref"] = "PriceCompetitiveness",
          description = "Price Competitiveness fields requested by the merchant in the query. Field values are only set if the merchant queries `PriceCompetitivenessProductView`.",
        },
        priceInsights = {
          ["$ref"] = "PriceInsights",
          description = "Price Insights fields requested by the merchant in the query. Field values are only set if the merchant queries `PriceInsightsProductView`.",
        },
        productCluster = {
          ["$ref"] = "ProductCluster",
          description = "Product cluster fields requested by the merchant in the query. Field values are only set if the merchant queries `BestSellersProductClusterView`.",
        },
        productView = {
          ["$ref"] = "ProductView",
          description = "Product fields requested by the merchant in the query. Field values are only set if the merchant queries `ProductView`. Available only to selected merchants. Submit the [interest form](https://forms.gle/7Uy8htzAN8oNokz9A) to request access.",
        },
        segments = {
          ["$ref"] = "Segments",
          description = "Segmentation dimensions requested by the merchant in the query. Dimension values are only set for dimensions requested explicitly in the query.",
        },
      },
      type = "object",
    },
    RepricingProductReport = {
      description = "Resource that represents a daily Repricing product report. Each report contains stats for a single type of Repricing rule for a single product on a given day. If there are multiple rules of the same type for the product on that day, the report lists all the rules by rule ids, combines the stats, and paginates the results by date. To retrieve the stats of a particular rule, provide the rule_id in the request.",
      id = "RepricingProductReport",
      properties = {
        applicationCount = {
          description = "Total count of Repricer applications. This value captures how many times the rule of this type was applied to this product during this reporting period.",
          format = "int64",
          type = "string",
        },
        buyboxWinningProductStats = {
          ["$ref"] = "RepricingProductReportBuyboxWinningProductStats",
          description = "Stats specific to buybox winning rules for product report (deprecated).",
        },
        date = {
          ["$ref"] = "Date",
          description = "Date of the stats in this report. The report starts and ends according to the merchant's timezone.",
        },
        highWatermark = {
          ["$ref"] = "PriceAmount",
          description = "Maximum displayed price after repriced during this reporting period.",
        },
        inapplicabilityDetails = {
          description = "List of all reasons the rule did not apply to the product during the specified reporting period.",
          items = {
            ["$ref"] = "InapplicabilityDetails",
          },
          type = "array",
        },
        lowWatermark = {
          ["$ref"] = "PriceAmount",
          description = "Minimum displayed price after repriced during this reporting period.",
        },
        orderItemCount = {
          description = "Total unit count of impacted products ordered while the rule was active on the date of the report. This count includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.",
          format = "int32",
          type = "integer",
        },
        ruleIds = {
          description = "Ids of the Repricing rule for this report.",
          items = {
            type = "string",
          },
          type = "array",
        },
        totalGmv = {
          ["$ref"] = "PriceAmount",
          description = "Total GMV generated by impacted products while the rule was active on the date of the report. This value includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.",
        },
        type = {
          description = "Type of the rule.",
          enum = {
            "REPRICING_RULE_TYPE_UNSPECIFIED",
            "TYPE_STATS_BASED",
            "TYPE_COGS_BASED",
            "TYPE_SALES_VOLUME_BASED",
            "TYPE_COMPETITIVE_PRICE",
          },
          enumDescriptions = {
            "Unused.",
            "Statistical measurement based rules among Google SA merchants. If this rule is chosen, repricer will adjust the offer price based on statistical metrics (currently only min is available) among other merchants who sell the same product. Details need to be provdided in the RuleDefinition.",
            "Cost of goods sale based rule. Repricer will adjust the offer price based on the offer's sale cost which is provided by the merchant.",
            "Sales volume based rule. Repricer will adjust the offer price based on the offer's sales volume in the past period of time defined within the rule.",
            "Competitive price rule. Repricer will adjust the offer price based on the min price from a list of unnamed big competitors.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RepricingProductReportBuyboxWinningProductStats = {
      description = "Stats specific to buybox winning rules for product report.",
      id = "RepricingProductReportBuyboxWinningProductStats",
      properties = {
        buyboxWinsCount = {
          description = "Number of times this product won the buybox with these rules during this time period.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    RepricingRule = {
      description = "Represents a repricing rule. A repricing rule is used by shopping serving to adjust transactable offer prices if conditions are met.",
      id = "RepricingRule",
      properties = {
        cogsBasedRule = {
          ["$ref"] = "RepricingRuleCostOfGoodsSaleRule",
          description = "The rule definition for TYPE_COGS_BASED. Required when the rule type is TYPE_COGS_BASED.",
        },
        countryCode = {
          description = "Required. Immutable. [CLDR country code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml) (e.g. \"US\").",
          type = "string",
        },
        effectiveTimePeriod = {
          ["$ref"] = "RepricingRuleEffectiveTime",
          description = "Required. Time period when the rule should take effect.",
        },
        eligibleOfferMatcher = {
          ["$ref"] = "RepricingRuleEligibleOfferMatcher",
          description = "Required. Match criteria for the eligible offers.",
        },
        languageCode = {
          description = "Required. Immutable. The two-letter ISO 639-1 language code associated with the repricing rule.",
          type = "string",
        },
        merchantId = {
          description = "Output only. Immutable. Merchant that owns the repricing rule.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        paused = {
          description = "Represents whether a rule is paused. A paused rule will behave like a non-paused rule within CRUD operations, with the major difference that a paused rule will not be evaluated and will have no effect on offers.",
          type = "boolean",
        },
        restriction = {
          ["$ref"] = "RepricingRuleRestriction",
          description = "Required. Restriction of the rule appliance.",
        },
        ruleId = {
          description = "Output only. Immutable. The ID to uniquely identify each repricing rule.",
          readOnly = true,
          type = "string",
        },
        statsBasedRule = {
          ["$ref"] = "RepricingRuleStatsBasedRule",
          description = "The rule definition for TYPE_STATS_BASED. Required when the rule type is TYPE_STATS_BASED.",
        },
        title = {
          description = "The title for the rule.",
          type = "string",
        },
        type = {
          description = "Required. Immutable. The type of the rule.",
          enum = {
            "REPRICING_RULE_TYPE_UNSPECIFIED",
            "TYPE_STATS_BASED",
            "TYPE_COGS_BASED",
            "TYPE_SALES_VOLUME_BASED",
            "TYPE_COMPETITIVE_PRICE",
          },
          enumDescriptions = {
            "Unused.",
            "Statistical measurement based rules among Google SA merchants. If this rule is chosen, repricer will adjust the offer price based on statistical metrics (currently only min is available) among other merchants who sell the same product. Details need to be provdided in the RuleDefinition.",
            "Cost of goods sale based rule. Repricer will adjust the offer price based on the offer's sale cost which is provided by the merchant.",
            "Sales volume based rule. Repricer will adjust the offer price based on the offer's sales volume in the past period of time defined within the rule.",
            "Competitive price rule. Repricer will adjust the offer price based on the min price from a list of unnamed big competitors.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RepricingRuleCostOfGoodsSaleRule = {
      description = "A repricing rule that changes the sale price based on cost of goods sale.",
      id = "RepricingRuleCostOfGoodsSaleRule",
      properties = {
        percentageDelta = {
          description = "The percent change against the COGS. Ex: 20 would mean to set the adjusted price 1.2X of the COGS data.",
          format = "int32",
          type = "integer",
        },
        priceDelta = {
          description = "The price delta against the COGS. E.g. 2 means $2 more of the COGS.",
          type = "string",
        },
      },
      type = "object",
    },
    RepricingRuleEffectiveTime = {
      id = "RepricingRuleEffectiveTime",
      properties = {
        fixedTimePeriods = {
          description = "A list of fixed time periods combined with OR. The maximum number of entries is limited to 5.",
          items = {
            ["$ref"] = "RepricingRuleEffectiveTimeFixedTimePeriod",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RepricingRuleEffectiveTimeFixedTimePeriod = {
      description = "Definition of a fixed time period.",
      id = "RepricingRuleEffectiveTimeFixedTimePeriod",
      properties = {
        endTime = {
          description = "The end time (exclusive) of the period. It can only be hour granularity.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The start time (inclusive) of the period. It can only be hour granularity.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    RepricingRuleEligibleOfferMatcher = {
      description = "Matcher that specifies eligible offers. When the USE_FEED_ATTRIBUTE option is selected, only the repricing_rule_id attribute on the product feed is used to specify offer-rule mapping. When the CUSTOM_FILTER option is selected, only the *_matcher fields are used to filter the offers for offer-rule mapping. If the CUSTOM_FILTER option is selected, an offer needs to satisfy each custom filter matcher to be eligible for a rule. Size limit: the sum of the number of entries in all the matchers should not exceed 20. For example, there can be 15 product ids and 5 brands, but not 10 product ids and 11 brands.",
      id = "RepricingRuleEligibleOfferMatcher",
      properties = {
        brandMatcher = {
          ["$ref"] = "RepricingRuleEligibleOfferMatcherStringMatcher",
          description = "Filter by the brand.",
        },
        itemGroupIdMatcher = {
          ["$ref"] = "RepricingRuleEligibleOfferMatcherStringMatcher",
          description = "Filter by the item group id.",
        },
        matcherOption = {
          description = "Determines whether to use the custom matchers or the product feed attribute \"repricing_rule_id\" to specify offer-rule mapping.",
          enum = {
            "MATCHER_OPTION_UNSPECIFIED",
            "MATCHER_OPTION_CUSTOM_FILTER",
            "MATCHER_OPTION_USE_FEED_ATTRIBUTE",
            "MATCHER_OPTION_ALL_PRODUCTS",
          },
          enumDescriptions = {
            "Unused.",
            "Use custom filters.",
            "Use repricing_rule_id feed attribute on the product resource to specify offer-rule mapping.",
            "Matching all products.",
          },
          type = "string",
        },
        offerIdMatcher = {
          ["$ref"] = "RepricingRuleEligibleOfferMatcherStringMatcher",
          description = "Filter by the offer id.",
        },
        skipWhenOnPromotion = {
          description = "When true, the rule won't be applied to offers with active promotions.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RepricingRuleEligibleOfferMatcherStringMatcher = {
      description = "Matcher by string attributes.",
      id = "RepricingRuleEligibleOfferMatcherStringMatcher",
      properties = {
        strAttributes = {
          description = "String attributes, as long as such attribute of an offer is one of the string attribute values, the offer is considered as passing the matcher. The string matcher checks an offer for inclusivity in the string attributes, not equality. Only literal string matching is supported, no regex.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RepricingRuleReport = {
      description = "Resource that represents a daily Repricing rule report. Next ID: 11",
      id = "RepricingRuleReport",
      properties = {
        buyboxWinningRuleStats = {
          ["$ref"] = "RepricingRuleReportBuyboxWinningRuleStats",
          description = "Stats specific to buybox winning rules for rule report (deprecated).",
        },
        date = {
          ["$ref"] = "Date",
          description = "Date of the stats in this report. The report starts and ends according to the merchant's timezone.",
        },
        impactedProducts = {
          description = "List of product ids that are impacted by this rule during this reporting period. Out of stock products and products not searched for by customers are examples of non-impacted products.",
          items = {
            type = "string",
          },
          type = "array",
        },
        inapplicabilityDetails = {
          description = "List of all reasons the rule did not apply to the inapplicable products during the specified reporting period.",
          items = {
            ["$ref"] = "InapplicabilityDetails",
          },
          type = "array",
        },
        inapplicableProducts = {
          description = "List of product ids that are inapplicable to this rule during this reporting period. To get the inapplicable reason for a specific product, see RepricingProductReport.",
          items = {
            type = "string",
          },
          type = "array",
        },
        orderItemCount = {
          description = "Total unit count of impacted products ordered while the rule was active on the date of the report. This count includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.",
          format = "int32",
          type = "integer",
        },
        ruleId = {
          description = "Id of the Repricing rule for this report.",
          type = "string",
        },
        totalGmv = {
          ["$ref"] = "PriceAmount",
          description = "Total GMV generated by impacted products while the rule was active on the date of the report. This value includes all orders that were started while the rule was active, even if the rule was no longer active when the order was completed.",
        },
        type = {
          description = "Type of the rule.",
          enum = {
            "REPRICING_RULE_TYPE_UNSPECIFIED",
            "TYPE_STATS_BASED",
            "TYPE_COGS_BASED",
            "TYPE_SALES_VOLUME_BASED",
            "TYPE_COMPETITIVE_PRICE",
          },
          enumDescriptions = {
            "Unused.",
            "Statistical measurement based rules among Google SA merchants. If this rule is chosen, repricer will adjust the offer price based on statistical metrics (currently only min is available) among other merchants who sell the same product. Details need to be provdided in the RuleDefinition.",
            "Cost of goods sale based rule. Repricer will adjust the offer price based on the offer's sale cost which is provided by the merchant.",
            "Sales volume based rule. Repricer will adjust the offer price based on the offer's sales volume in the past period of time defined within the rule.",
            "Competitive price rule. Repricer will adjust the offer price based on the min price from a list of unnamed big competitors.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RepricingRuleReportBuyboxWinningRuleStats = {
      description = "Stats specific to buybox winning rules for rule report.",
      id = "RepricingRuleReportBuyboxWinningRuleStats",
      properties = {
        buyboxWonProductCount = {
          description = "Number of unique products that won the buybox with this rule during this period of time.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    RepricingRuleRestriction = {
      description = "Definition of a rule restriction. At least one of the following needs to be true: (1) use_auto_pricing_min_price is true (2) floor.price_delta exists (3) floor.percentage_delta exists If floor.price_delta and floor.percentage_delta are both set on a rule, the highest value will be chosen by the Repricer. In other words, for a product with a price of $50, if the `floor.percentage_delta` is \"-10\" and the floor.price_delta is \"-12\", the offer price will only be lowered $5 (10% lower than the original offer price).",
      id = "RepricingRuleRestriction",
      properties = {
        floor = {
          ["$ref"] = "RepricingRuleRestrictionBoundary",
          description = "The inclusive floor lower bound. The repricing rule only applies when new price >= floor.",
        },
        useAutoPricingMinPrice = {
          description = "If true, use the AUTO_PRICING_MIN_PRICE offer attribute as the lower bound of the rule. If use_auto_pricing_min_price is true, then only offers with `AUTO_PRICING_MIN_PRICE` existing on the offer will get Repricer treatment, even if a floor value is set on the rule. Also, if use_auto_pricing_min_price is true, the floor restriction will be ignored.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RepricingRuleRestrictionBoundary = {
      description = "Definition of a boundary.",
      id = "RepricingRuleRestrictionBoundary",
      properties = {
        percentageDelta = {
          description = "The percentage delta relative to the offer selling price. This field is signed. It must be negative in floor. When it is used in floor, it should be > -100. For example, if an offer is selling at $10 and this field is -30 in floor, the repricing rule only applies if the calculated new price is >= $7.",
          format = "int32",
          type = "integer",
        },
        priceDelta = {
          description = "The price micros relative to the offer selling price. This field is signed. It must be negative in floor. For example, if an offer is selling at $10 and this field is -$2 in floor, the repricing rule only applies if the calculated new price is >= $8.",
          type = "string",
        },
      },
      type = "object",
    },
    RepricingRuleStatsBasedRule = {
      description = "Definition of stats based rule.",
      id = "RepricingRuleStatsBasedRule",
      properties = {
        percentageDelta = {
          description = "The percent change against the price target. Valid from 0 to 100 inclusively.",
          format = "int32",
          type = "integer",
        },
        priceDelta = {
          description = "The price delta against the above price target. A positive value means the price should be adjusted to be above statistical measure, and a negative value means below. Currency code must not be included.",
          type = "string",
        },
      },
      type = "object",
    },
    RequestPhoneVerificationRequest = {
      description = "Request message for the RequestPhoneVerification method.",
      id = "RequestPhoneVerificationRequest",
      properties = {
        languageCode = {
          description = "Language code [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47) (for example, en-US). Language code is used to provide localized `SMS` and `PHONE_CALL`. Default language used is en-US if not provided.",
          type = "string",
        },
        phoneNumber = {
          description = "Phone number to be verified.",
          type = "string",
        },
        phoneRegionCode = {
          description = "Required. Two letter country code for the phone number, for example `CA` for Canadian numbers. See the [ISO 3166-1 alpha-2](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) officially assigned codes.",
          type = "string",
        },
        phoneVerificationMethod = {
          description = "Verification method to receive verification code.",
          enum = {
            "PHONE_VERIFICATION_METHOD_UNSPECIFIED",
            "SMS",
            "PHONE_CALL",
          },
          enumDescriptions = {
            "Unknown method.",
            "Receive verification code by SMS.",
            "Receive verification code by phone call.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RequestPhoneVerificationResponse = {
      description = "Response message for the RequestPhoneVerification method.",
      id = "RequestPhoneVerificationResponse",
      properties = {
        verificationId = {
          description = "The verification ID to use in subsequent calls to `verifyphonenumber`.",
          type = "string",
        },
      },
      type = "object",
    },
    RequestReviewBuyOnGoogleProgramRequest = {
      description = "Request message for the RequestReviewProgram method.",
      id = "RequestReviewBuyOnGoogleProgramRequest",
      properties = {},
      type = "object",
    },
    RequestReviewFreeListingsRequest = {
      description = "Request message for the RequestReviewFreeListings Program method.",
      id = "RequestReviewFreeListingsRequest",
      properties = {
        regionCode = {
          description = "The code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country for which review is to be requested.",
          type = "string",
        },
      },
      type = "object",
    },
    RequestReviewShoppingAdsRequest = {
      description = "Request message for the RequestReviewShoppingAds program method.",
      id = "RequestReviewShoppingAdsRequest",
      properties = {
        regionCode = {
          description = "The code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country for which review is to be requested.",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnAddress = {
      description = "Return address resource.",
      id = "ReturnAddress",
      properties = {
        address = {
          ["$ref"] = "ReturnAddressAddress",
          description = "Required. The address.",
        },
        country = {
          description = "Required. The country of sale where the return address is applicable.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#returnAddress`\"",
          type = "string",
        },
        label = {
          description = "Required. The user-defined label of the return address. For the default address, use the label \"default\".",
          type = "string",
        },
        phoneNumber = {
          description = "Required. The merchant's contact phone number regarding the return.",
          type = "string",
        },
        returnAddressId = {
          description = "Return address ID generated by Google.",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnAddressAddress = {
      id = "ReturnAddressAddress",
      properties = {
        country = {
          description = "CLDR country code (for example, \"US\").",
          type = "string",
        },
        locality = {
          description = "City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).",
          type = "string",
        },
        postalCode = {
          description = "Postal code or ZIP (for example, \"94043\").",
          type = "string",
        },
        recipientName = {
          description = "Name of the recipient to address returns to.",
          type = "string",
        },
        region = {
          description = "Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").",
          type = "string",
        },
        streetAddress = {
          description = "Street-level part of the address. May be up to two lines, each line specified as an array element.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReturnPolicy = {
      description = "Return policy resource.",
      id = "ReturnPolicy",
      properties = {
        country = {
          description = "Required. The country of sale where the return policy is applicable.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#returnPolicy`\"",
          type = "string",
        },
        label = {
          description = "Required. The user-defined label of the return policy. For the default policy, use the label \"default\".",
          type = "string",
        },
        name = {
          description = "Required. The name of the policy as shown in Merchant Center.",
          type = "string",
        },
        nonFreeReturnReasons = {
          description = "Return reasons that will incur return fees.",
          items = {
            type = "string",
          },
          type = "array",
        },
        policy = {
          ["$ref"] = "ReturnPolicyPolicy",
          description = "Required. The policy.",
        },
        returnPolicyId = {
          description = "Return policy ID generated by Google.",
          type = "string",
        },
        returnShippingFee = {
          ["$ref"] = "Price",
          description = "The return shipping fee that will apply to non free return reasons.",
        },
        seasonalOverrides = {
          description = "An optional list of seasonal overrides.",
          items = {
            ["$ref"] = "ReturnPolicySeasonalOverride",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReturnPolicyOnline = {
      description = "Return policy online object. This is currently used to represent return policies for ads and free listings programs.",
      id = "ReturnPolicyOnline",
      properties = {
        countries = {
          description = "The countries of sale where the return policy is applicable. The values must be a valid 2 letter ISO 3166 code, e.g. \"US\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        itemConditions = {
          description = "The item conditions that are accepted for returns. This is required to not be empty unless the type of return policy is noReturns.",
          items = {
            enum = {
              "ITEM_CONDITION_UNSPECIFIED",
              "NEW",
              "USED",
            },
            enumDescriptions = {
              "Default value. This value is unused.",
              "New.",
              "Used.",
            },
            type = "string",
          },
          type = "array",
        },
        label = {
          description = "The unique user-defined label of the return policy. The same label cannot be used in different return policies for the same country. Policies with the label 'default' will apply to all products, unless a product specifies a return_policy_label attribute.",
          type = "string",
        },
        name = {
          description = "The name of the policy as shown in Merchant Center.",
          type = "string",
        },
        policy = {
          ["$ref"] = "ReturnPolicyOnlinePolicy",
          description = "The return policy.",
        },
        restockingFee = {
          ["$ref"] = "ReturnPolicyOnlineRestockingFee",
          description = "The restocking fee that applies to all return reason categories. This would be treated as a free restocking fee if the value is not set.",
        },
        returnMethods = {
          description = "The return methods of how customers can return an item. This value is required to not be empty unless the type of return policy is noReturns.",
          items = {
            enum = {
              "RETURN_METHOD_UNSPECIFIED",
              "BY_MAIL",
              "IN_STORE",
              "AT_A_KIOSK",
            },
            enumDescriptions = {
              "Default value. This value is unused.",
              "By mail.",
              "In store.",
              "At a kiosk.",
            },
            type = "string",
          },
          type = "array",
        },
        returnPolicyId = {
          description = "Output only. Return policy ID generated by Google.",
          readOnly = true,
          type = "string",
        },
        returnPolicyUri = {
          description = "The return policy uri. This can used by Google to do a sanity check for the policy.",
          type = "string",
        },
        returnReasonCategoryInfo = {
          description = "The return reason category information. This required to not be empty unless the type of return policy is noReturns.",
          items = {
            ["$ref"] = "ReturnPolicyOnlineReturnReasonCategoryInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReturnPolicyOnlinePolicy = {
      description = "The available policies.",
      id = "ReturnPolicyOnlinePolicy",
      properties = {
        days = {
          description = "The number of days items can be returned after delivery, where one day is defined to be 24 hours after the delivery timestamp. Required for `numberOfDaysAfterDelivery` returns.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Policy type.",
          enum = {
            "TYPE_UNSPECIFIED",
            "NUMBER_OF_DAYS_AFTER_DELIVERY",
            "NO_RETURNS",
            "LIFETIME_RETURNS",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Number of days after a return is delivered.",
            "No returns.",
            "Life time returns.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ReturnPolicyOnlineRestockingFee = {
      description = "The restocking fee. This can either be a fixed fee or a micro percent.",
      id = "ReturnPolicyOnlineRestockingFee",
      properties = {
        fixedFee = {
          ["$ref"] = "PriceAmount",
          description = "Fixed restocking fee.",
        },
        microPercent = {
          description = "Percent of total price in micros. 15,000,000 means 15% of the total price would be charged.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ReturnPolicyOnlineReturnReasonCategoryInfo = {
      description = "The return reason category info wrapper.",
      id = "ReturnPolicyOnlineReturnReasonCategoryInfo",
      properties = {
        returnLabelSource = {
          description = "The corresponding return label source.",
          enum = {
            "RETURN_LABEL_SOURCE_UNSPECIFIED",
            "DOWNLOAD_AND_PRINT",
            "IN_THE_BOX",
            "CUSTOMER_RESPONSIBILITY",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Download and print the label.",
            "Label in the box.",
            "Customers' responsibility to get the label.",
          },
          type = "string",
        },
        returnReasonCategory = {
          description = "The return reason category.",
          enum = {
            "RETURN_REASON_CATEGORY_UNSPECIFIED",
            "BUYER_REMORSE",
            "ITEM_DEFECT",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Buyer remorse.",
            "Item defect.",
          },
          type = "string",
        },
        returnShippingFee = {
          ["$ref"] = "ReturnPolicyOnlineReturnShippingFee",
          description = "The corresponding return shipping fee. This is only applicable when returnLabelSource is not the customer's responsibility.",
        },
      },
      type = "object",
    },
    ReturnPolicyOnlineReturnShippingFee = {
      description = "The return shipping fee. This can either be a fixed fee or a boolean to indicate that the customer pays the actual shipping cost.",
      id = "ReturnPolicyOnlineReturnShippingFee",
      properties = {
        fixedFee = {
          ["$ref"] = "PriceAmount",
          description = "Fixed return shipping fee amount. This value is only applicable when type is FIXED. We will treat the return shipping fee as free if type is FIXED and this value is not set.",
        },
        type = {
          description = "Type of return shipping fee.",
          enum = {
            "TYPE_UNSPECIFIED",
            "FIXED",
            "CUSTOMER_PAYING_ACTUAL_FEE",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "The return shipping fee is a fixed value.",
            "Customer will pay the actual return shipping fee.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ReturnPolicyPolicy = {
      id = "ReturnPolicyPolicy",
      properties = {
        lastReturnDate = {
          description = "Required. Last day for returning the items. In ISO 8601 format. When specifying the return window like this, set the policy type to \"lastReturnDate\". Use this for seasonal overrides only.",
          type = "string",
        },
        numberOfDays = {
          description = "The number of days items can be returned after delivery, where one day is defined to be 24 hours after the delivery timestamp. When specifying the return window like this, set the policy type to \"numberOfDaysAfterDelivery\". Acceptable values are 30, 45, 60, 90, 100, 180, 270 and 365 for the default policy. Additional policies further allow 14, 15, 21 and 28 days, but note that for most items a minimum of 30 days is required for returns. Exceptions may be made for electronics. A policy of less than 30 days can only be applied to those items.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Policy type. Use \"lastReturnDate\" for seasonal overrides only. Note that for most items a minimum of 30 days is required for returns. Exceptions may be made for electronics or non-returnable items such as food, perishables, and living things. A policy of less than 30 days can only be applied to those items. Acceptable values are: - \"`lastReturnDate`\" - \"`lifetimeReturns`\" - \"`noReturns`\" - \"`numberOfDaysAfterDelivery`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnPolicySeasonalOverride = {
      id = "ReturnPolicySeasonalOverride",
      properties = {
        endDate = {
          description = "Required. Last day on which the override applies. In ISO 8601 format.",
          type = "string",
        },
        name = {
          description = "Required. The name of the seasonal override as shown in Merchant Center.",
          type = "string",
        },
        policy = {
          ["$ref"] = "ReturnPolicyPolicy",
          description = "Required. The policy which is in effect during that time.",
        },
        startDate = {
          description = "Required. First day on which the override applies. In ISO 8601 format.",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnPricingInfo = {
      id = "ReturnPricingInfo",
      properties = {
        chargeReturnShippingFee = {
          description = "Default option for whether merchant should charge the customer for return shipping costs, based on customer selected return reason and merchant's return policy for the items being returned.",
          type = "boolean",
        },
        maxReturnShippingFee = {
          ["$ref"] = "MonetaryAmount",
          description = "Maximum return shipping costs that may be charged to the customer depending on merchant's assessment of the return reason and the merchant's return policy for the items being returned.",
        },
        refundableItemsTotalAmount = {
          ["$ref"] = "MonetaryAmount",
          description = "Total amount that can be refunded for the items in this return. It represents the total amount received by the merchant for the items, after applying merchant coupons.",
        },
        refundableShippingAmount = {
          ["$ref"] = "MonetaryAmount",
          description = "Maximum amount that can be refunded for the original shipping fee.",
        },
        totalRefundedAmount = {
          ["$ref"] = "MonetaryAmount",
          description = "Total amount already refunded by the merchant. It includes all types of refunds (items, shipping, etc.) Not provided if no refund has been applied yet.",
        },
      },
      type = "object",
    },
    ReturnShipment = {
      id = "ReturnShipment",
      properties = {
        creationDate = {
          description = "The date of creation of the shipment, in ISO 8601 format.",
          type = "string",
        },
        deliveryDate = {
          description = "The date of delivery of the shipment, in ISO 8601 format.",
          type = "string",
        },
        returnMethodType = {
          description = "Type of the return method. Acceptable values are: - \"`byMail`\" - \"`contactCustomerSupport`\" - \"`returnless`\" - \"`inStore`\" ",
          type = "string",
        },
        shipmentId = {
          description = "Shipment ID generated by Google.",
          type = "string",
        },
        shipmentTrackingInfos = {
          description = "Tracking information of the shipment. One return shipment might be handled by several shipping carriers sequentially.",
          items = {
            ["$ref"] = "ShipmentTrackingInfo",
          },
          type = "array",
        },
        shippingDate = {
          description = "The date of shipping of the shipment, in ISO 8601 format.",
          type = "string",
        },
        state = {
          description = "State of the shipment. Acceptable values are: - \"`completed`\" - \"`new`\" - \"`shipped`\" - \"`undeliverable`\" - \"`pending`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnShippingLabel = {
      description = "Return shipping label for a Buy on Google merchant-managed return.",
      id = "ReturnShippingLabel",
      properties = {
        carrier = {
          description = "Name of the carrier.",
          type = "string",
        },
        labelUri = {
          description = "The URL for the return shipping label in PDF format",
          type = "string",
        },
        trackingId = {
          description = "The tracking id of this return label.",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnaddressCustomBatchRequest = {
      id = "ReturnaddressCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "ReturnaddressCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReturnaddressCustomBatchRequestEntry = {
      id = "ReturnaddressCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        merchantId = {
          description = "The Merchant Center account ID.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "Method of the batch request entry. Acceptable values are: - \"`delete`\" - \"`get`\" - \"`insert`\" ",
          type = "string",
        },
        returnAddress = {
          ["$ref"] = "ReturnAddress",
          description = "The return address to submit. This should be set only if the method is `insert`.",
        },
        returnAddressId = {
          description = "The return address ID. This should be set only if the method is `delete` or `get`.",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnaddressCustomBatchResponse = {
      id = "ReturnaddressCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "ReturnaddressCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#returnaddressCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnaddressCustomBatchResponseEntry = {
      id = "ReturnaddressCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry to which this entry responds.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors defined if, and only if, the request failed.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#returnaddressCustomBatchResponseEntry`\"",
          type = "string",
        },
        returnAddress = {
          ["$ref"] = "ReturnAddress",
          description = "The retrieved return address.",
        },
      },
      type = "object",
    },
    ReturnaddressListResponse = {
      id = "ReturnaddressListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#returnaddressListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of addresses.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "ReturnAddress",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReturnpolicyCustomBatchRequest = {
      id = "ReturnpolicyCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "ReturnpolicyCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReturnpolicyCustomBatchRequestEntry = {
      id = "ReturnpolicyCustomBatchRequestEntry",
      properties = {
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        merchantId = {
          description = "The Merchant Center account ID.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "Method of the batch request entry. Acceptable values are: - \"`delete`\" - \"`get`\" - \"`insert`\" ",
          type = "string",
        },
        returnPolicy = {
          ["$ref"] = "ReturnPolicy",
          description = "The return policy to submit. This should be set only if the method is `insert`.",
        },
        returnPolicyId = {
          description = "The return policy ID. This should be set only if the method is `delete` or `get`.",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnpolicyCustomBatchResponse = {
      id = "ReturnpolicyCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "ReturnpolicyCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#returnpolicyCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    ReturnpolicyCustomBatchResponseEntry = {
      id = "ReturnpolicyCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry to which this entry responds.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors defined if, and only if, the request failed.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#returnpolicyCustomBatchResponseEntry`\"",
          type = "string",
        },
        returnPolicy = {
          ["$ref"] = "ReturnPolicy",
          description = "The retrieved return policy.",
        },
      },
      type = "object",
    },
    ReturnpolicyListResponse = {
      id = "ReturnpolicyListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#returnpolicyListResponse`\".",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "ReturnPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Row = {
      id = "Row",
      properties = {
        cells = {
          description = "The list of cells that constitute the row. Must have the same length as `columnHeaders` for two-dimensional tables, a length of 1 for one-dimensional tables. Required.",
          items = {
            ["$ref"] = "Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchRequest = {
      description = "Request message for the ReportService.Search method.",
      id = "SearchRequest",
      properties = {
        pageSize = {
          description = "Number of ReportRows to retrieve in a single page. Defaults to the maximum of 1000. Values above 1000 are coerced to 1000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Token of the page to retrieve. If not specified, the first page of results is returned. In order to request the next page of results, the value obtained from `next_page_token` in the previous response should be used.",
          type = "string",
        },
        query = {
          description = "Required. Query that defines performance metrics to retrieve and dimensions according to which the metrics are to be segmented. For details on how to construct your query, see the [Query Language guide](https://developers.google.com/shopping-content/guides/reports/query-language/overview).",
          type = "string",
        },
      },
      type = "object",
    },
    SearchResponse = {
      description = "Response message for the ReportService.Search method.",
      id = "SearchResponse",
      properties = {
        nextPageToken = {
          description = "Token which can be sent as `page_token` to retrieve the next page. If omitted, there are no subsequent pages.",
          type = "string",
        },
        results = {
          description = "Rows that matched the search query.",
          items = {
            ["$ref"] = "ReportRow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Segments = {
      description = "Dimensions according to which metrics are segmented in the response. Values of product dimensions, such as `offer_id`, reflect the state of a product at the time of the corresponding event, for example, impression or order. Segment fields cannot be selected in queries without also selecting at least one metric field. Values are only set for dimensions requested explicitly in the request's search query.",
      id = "Segments",
      properties = {
        brand = {
          description = "Brand of the product.",
          type = "string",
        },
        categoryL1 = {
          description = "[Product category (1st level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in Google's product taxonomy.",
          type = "string",
        },
        categoryL2 = {
          description = "[Product category (2nd level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in Google's product taxonomy.",
          type = "string",
        },
        categoryL3 = {
          description = "[Product category (3rd level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in Google's product taxonomy.",
          type = "string",
        },
        categoryL4 = {
          description = "[Product category (4th level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in Google's product taxonomy.",
          type = "string",
        },
        categoryL5 = {
          description = "[Product category (5th level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in Google's product taxonomy.",
          type = "string",
        },
        currencyCode = {
          description = "Currency in which price metrics are represented, for example, if you select `ordered_item_sales_micros`, the returned value will be represented by this currency.",
          type = "string",
        },
        customLabel0 = {
          description = "Custom label 0 for custom grouping of products.",
          type = "string",
        },
        customLabel1 = {
          description = "Custom label 1 for custom grouping of products.",
          type = "string",
        },
        customLabel2 = {
          description = "Custom label 2 for custom grouping of products.",
          type = "string",
        },
        customLabel3 = {
          description = "Custom label 3 for custom grouping of products.",
          type = "string",
        },
        customLabel4 = {
          description = "Custom label 4 for custom grouping of products.",
          type = "string",
        },
        customerCountryCode = {
          description = "Code of the country where the customer is located at the time of the event. Represented in the ISO 3166 format. If the customer country cannot be determined, a special 'ZZ' code is returned.",
          type = "string",
        },
        date = {
          ["$ref"] = "Date",
          description = "Date in the merchant timezone to which metrics apply.",
        },
        offerId = {
          description = "Merchant-provided id of the product.",
          type = "string",
        },
        productTypeL1 = {
          description = "[Product type (1st level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in merchant's own product taxonomy.",
          type = "string",
        },
        productTypeL2 = {
          description = "[Product type (2nd level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in merchant's own product taxonomy.",
          type = "string",
        },
        productTypeL3 = {
          description = "[Product type (3rd level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in merchant's own product taxonomy.",
          type = "string",
        },
        productTypeL4 = {
          description = "[Product type (4th level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in merchant's own product taxonomy.",
          type = "string",
        },
        productTypeL5 = {
          description = "[Product type (5th level)](https://developers.google.com/shopping-content/guides/reports/segmentation#category_and_product_type) in merchant's own product taxonomy.",
          type = "string",
        },
        program = {
          description = "Program to which metrics apply, for example, Free Product Listing.",
          enum = {
            "PROGRAM_UNSPECIFIED",
            "SHOPPING_ADS",
            "FREE_PRODUCT_LISTING",
            "FREE_LOCAL_PRODUCT_LISTING",
            "BUY_ON_GOOGLE_LISTING",
          },
          enumDescriptions = {
            "Not specified.",
            "Shopping Ads.",
            "Free Product Listing.",
            "Free Local Product Listing.",
            "Buy on Google Listing.",
          },
          type = "string",
        },
        title = {
          description = "Title of the product.",
          type = "string",
        },
        week = {
          ["$ref"] = "Date",
          description = "First day of the week (Monday) of the metrics date in the merchant timezone.",
        },
      },
      type = "object",
    },
    Service = {
      id = "Service",
      properties = {
        active = {
          description = "A boolean exposing the active status of the shipping service. Required.",
          type = "boolean",
        },
        currency = {
          description = "The CLDR code of the currency to which this service applies. Must match that of the prices in rate groups.",
          type = "string",
        },
        deliveryCountry = {
          description = "The CLDR territory code of the country to which the service applies. Required.",
          type = "string",
        },
        deliveryTime = {
          ["$ref"] = "DeliveryTime",
          description = "Time spent in various aspects from order to the delivery of the product. Required.",
        },
        eligibility = {
          description = "Eligibility for this service. Acceptable values are: - \"`All scenarios`\" - \"`All scenarios except Shopping Actions`\" - \"`Shopping Actions`\" ",
          type = "string",
        },
        minimumOrderValue = {
          ["$ref"] = "Price",
          description = "Minimum order value for this service. If set, indicates that customers will have to spend at least this amount. All prices within a service must have the same currency. Cannot be set together with minimum_order_value_table.",
        },
        minimumOrderValueTable = {
          ["$ref"] = "MinimumOrderValueTable",
          description = "Table of per store minimum order values for the pickup fulfillment type. Cannot be set together with minimum_order_value.",
        },
        name = {
          description = "Free-form name of the service. Must be unique within target account. Required.",
          type = "string",
        },
        pickupService = {
          ["$ref"] = "PickupCarrierService",
          description = "The carrier-service pair delivering items to collection points. The list of supported pickup services can be retrieved through the `getSupportedPickupServices` method. Required if and only if the service delivery type is `pickup`.",
        },
        rateGroups = {
          description = "Shipping rate group definitions. Only the last one is allowed to have an empty `applicableShippingLabels`, which means \"everything else\". The other `applicableShippingLabels` must not overlap.",
          items = {
            ["$ref"] = "RateGroup",
          },
          type = "array",
        },
        shipmentType = {
          description = "Type of locations this service ships orders to. Acceptable values are: - \"`delivery`\" - \"`pickup`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    SettlementReport = {
      description = " Settlement reports detail order-level and item-level credits and debits between you and Google.",
      id = "SettlementReport",
      properties = {
        endDate = {
          description = "The end date on which all transactions are included in the report, in ISO 8601 format.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#settlementReport`\"",
          type = "string",
        },
        previousBalance = {
          ["$ref"] = "Price",
          description = "The residual amount from the previous invoice. This is set only if the previous invoices are not paid because of negative balance.",
        },
        settlementId = {
          description = "The ID of the settlement report.",
          type = "string",
        },
        startDate = {
          description = "The start date on which all transactions are included in the report, in ISO 8601 format.",
          type = "string",
        },
        transferAmount = {
          ["$ref"] = "Price",
          description = "The money due to the merchant.",
        },
        transferDate = {
          description = "Date on which transfer for this payment was initiated by Google, in ISO 8601 format.",
          type = "string",
        },
        transferIds = {
          description = "The list of bank identifiers used for the transfer. For example, Trace ID for Federal Automated Clearing House (ACH). This may also be known as the Wire ID.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SettlementTransaction = {
      description = "Settlement transactions give a detailed breakdown of the settlement report.",
      id = "SettlementTransaction",
      properties = {
        amount = {
          ["$ref"] = "SettlementTransactionAmount",
          description = "The amount for the transaction.",
        },
        identifiers = {
          ["$ref"] = "SettlementTransactionIdentifiers",
          description = "Identifiers of the transaction.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#settlementTransaction`\"",
          type = "string",
        },
        transaction = {
          ["$ref"] = "SettlementTransactionTransaction",
          description = "Details of the transaction.",
        },
      },
      type = "object",
    },
    SettlementTransactionAmount = {
      id = "SettlementTransactionAmount",
      properties = {
        commission = {
          ["$ref"] = "SettlementTransactionAmountCommission",
        },
        description = {
          description = "The description of the event. Acceptable values are: - \"`taxWithhold`\" - \"`principal`\" - \"`principalAdjustment`\" - \"`shippingFee`\" - \"`merchantRemittedSalesTax`\" - \"`googleRemittedSalesTax`\" - \"`merchantCoupon`\" - \"`merchantCouponTax`\" - \"`merchantRemittedDisposalTax`\" - \"`googleRemittedDisposalTax`\" - \"`merchantRemittedRedemptionFee`\" - \"`googleRemittedRedemptionFee`\" - \"`eeeEcoFee`\" - \"`furnitureEcoFee`\" - \"`copyPrivateFee`\" - \"`eeeEcoFeeCommission`\" - \"`furnitureEcoFeeCommission`\" - \"`copyPrivateFeeCommission`\" - \"`principalRefund`\" - \"`principalRefundTax`\" - \"`itemCommission`\" - \"`adjustmentCommission`\" - \"`shippingFeeCommission`\" - \"`commissionRefund`\" - \"`damaged`\" - \"`damagedOrDefectiveItem`\" - \"`expiredItem`\" - \"`faultyItem`\" - \"`incorrectItemReceived`\" - \"`itemMissing`\" - \"`qualityNotExpected`\" - \"`receivedTooLate`\" - \"`storePackageMissing`\" - \"`transitPackageMissing`\" - \"`unsuccessfulDeliveryUndeliverable`\" - \"`wrongChargeInStore`\" - \"`wrongItem`\" - \"`returns`\" - \"`undeliverable`\" - \"`issueRelatedRefundAndReplacementAmountDescription`\" - \"`refundFromMerchant`\" - \"`returnLabelShippingFee`\" - \"`lumpSumCorrection`\" - \"`pspFee`\" - \"`principalRefundDoesNotFit`\" - \"`principalRefundOrderedWrongItem`\" - \"`principalRefundQualityNotExpected`\" - \"`principalRefundBetterPriceFound`\" - \"`principalRefundNoLongerNeeded`\" - \"`principalRefundChangedMind`\" - \"`principalRefundReceivedTooLate`\" - \"`principalRefundIncorrectItemReceived`\" - \"`principalRefundDamagedOrDefectiveItem`\" - \"`principalRefundDidNotMatchDescription`\" - \"`principalRefundExpiredItem`\" ",
          type = "string",
        },
        transactionAmount = {
          ["$ref"] = "Price",
          description = "The amount that contributes to the line item price.",
        },
        type = {
          description = "The type of the amount. Acceptable values are: - \"`itemPrice`\" - \"`orderPrice`\" - \"`refund`\" - \"`earlyRefund`\" - \"`courtesyRefund`\" - \"`returnRefund`\" - \"`returnLabelShippingFeeAmount`\" - \"`lumpSumCorrectionAmount`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    SettlementTransactionAmountCommission = {
      id = "SettlementTransactionAmountCommission",
      properties = {
        category = {
          description = "The category of the commission. Acceptable values are: - \"`animalsAndPetSupplies`\" - \"`dogCatFoodAndCatLitter`\" - \"`apparelAndAccessories`\" - \"`shoesHandbagsAndSunglasses`\" - \"`costumesAndAccessories`\" - \"`jewelry`\" - \"`watches`\" - \"`hobbiesArtsAndCrafts`\" - \"`homeAndGarden`\" - \"`entertainmentCollectibles`\" - \"`collectibleCoins`\" - \"`sportsCollectibles`\" - \"`sportingGoods`\" - \"`toysAndGames`\" - \"`musicalInstruments`\" - \"`giftCards`\" - \"`babyAndToddler`\" - \"`babyFoodWipesAndDiapers`\" - \"`businessAndIndustrial`\" - \"`camerasOpticsAndPhotography`\" - \"`consumerElectronics`\" - \"`electronicsAccessories`\" - \"`personalComputers`\" - \"`videoGameConsoles`\" - \"`foodAndGrocery`\" - \"`beverages`\" - \"`tobaccoProducts`\" - \"`furniture`\" - \"`hardware`\" - \"`buildingMaterials`\" - \"`tools`\" - \"`healthAndPersonalCare`\" - \"`beauty`\" - \"`householdSupplies`\" - \"`kitchenAndDining`\" - \"`majorAppliances`\" - \"`luggageAndBags`\" - \"`media`\" - \"`officeSupplies`\" - \"`softwareAndVideoGames`\" - \"`vehiclePartsAndAccessories`\" - \"`vehicleTiresAndWheels`\" - \"`vehicles`\" - \"`everythingElse`\" ",
          type = "string",
        },
        rate = {
          description = "Rate of the commission in percentage.",
          type = "string",
        },
      },
      type = "object",
    },
    SettlementTransactionIdentifiers = {
      id = "SettlementTransactionIdentifiers",
      properties = {
        adjustmentId = {
          description = "The identifier of the adjustments, if it's available.",
          type = "string",
        },
        merchantOrderId = {
          description = "The merchant provided order ID.",
          type = "string",
        },
        orderItemId = {
          description = "The identifier of the item.",
          type = "string",
        },
        settlementEntryId = {
          description = "The unique ID of the settlement transaction entry.",
          type = "string",
        },
        shipmentIds = {
          description = "The shipment ids for the item.",
          items = {
            type = "string",
          },
          type = "array",
        },
        transactionId = {
          description = "The Google transaction ID.",
          type = "string",
        },
      },
      type = "object",
    },
    SettlementTransactionTransaction = {
      id = "SettlementTransactionTransaction",
      properties = {
        postDate = {
          description = "The time on which the event occurred in ISO 8601 format.",
          type = "string",
        },
        type = {
          description = "The type of the transaction that occurred. Acceptable values are: - \"`order`\" - \"`reversal`\" - \"`orderRefund`\" - \"`reversalRefund`\" - \"`issueRelatedRefundAndReplacement`\" - \"`returnLabelShippingFeeTransaction`\" - \"`reversalIssueRelatedRefundAndReplacement`\" - \"`reversalReturnLabelShippingFeeTransaction`\" - \"`lumpSumCorrectionTransaction`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    SettlementreportsListResponse = {
      id = "SettlementreportsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#settlementreportsListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of returns.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "SettlementReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SettlementtransactionsListResponse = {
      id = "SettlementtransactionsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#settlementtransactionsListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of returns.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "SettlementTransaction",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ShipmentInvoice = {
      id = "ShipmentInvoice",
      properties = {
        invoiceSummary = {
          ["$ref"] = "InvoiceSummary",
          description = "[required] Invoice summary.",
        },
        lineItemInvoices = {
          description = "[required] Invoice details per line item.",
          items = {
            ["$ref"] = "ShipmentInvoiceLineItemInvoice",
          },
          type = "array",
        },
        shipmentGroupId = {
          description = "[required] ID of the shipment group. It is assigned by the merchant in the `shipLineItems` method and is used to group multiple line items that have the same kind of shipping charges.",
          type = "string",
        },
      },
      type = "object",
    },
    ShipmentInvoiceLineItemInvoice = {
      id = "ShipmentInvoiceLineItemInvoice",
      properties = {
        lineItemId = {
          description = "ID of the line item. Either lineItemId or productId must be set.",
          type = "string",
        },
        productId = {
          description = "ID of the product. This is the REST ID used in the products service. Either lineItemId or productId must be set.",
          type = "string",
        },
        shipmentUnitIds = {
          description = "[required] The shipment unit ID is assigned by the merchant and defines individual quantities within a line item. The same ID can be assigned to units that are the same while units that differ must be assigned a different ID (for example: free or promotional units).",
          items = {
            type = "string",
          },
          type = "array",
        },
        unitInvoice = {
          ["$ref"] = "UnitInvoice",
          description = "[required] Invoice details for a single unit.",
        },
      },
      type = "object",
    },
    ShipmentTrackingInfo = {
      id = "ShipmentTrackingInfo",
      properties = {
        carrier = {
          description = "The shipping carrier that handles the package. Acceptable values are: - \"`boxtal`\" - \"`bpost`\" - \"`chronopost`\" - \"`colisPrive`\" - \"`colissimo`\" - \"`cxt`\" - \"`deliv`\" - \"`dhl`\" - \"`dpd`\" - \"`dynamex`\" - \"`eCourier`\" - \"`easypost`\" - \"`efw`\" - \"`fedex`\" - \"`fedexSmartpost`\" - \"`geodis`\" - \"`gls`\" - \"`googleCourier`\" - \"`gsx`\" - \"`jdLogistics`\" - \"`laPoste`\" - \"`lasership`\" - \"`manual`\" - \"`mpx`\" - \"`onTrac`\" - \"`other`\" - \"`tnt`\" - \"`uds`\" - \"`ups`\" - \"`usps`\" ",
          type = "string",
        },
        trackingNumber = {
          description = "The tracking number for the package.",
          type = "string",
        },
      },
      type = "object",
    },
    ShippingSettings = {
      description = "The merchant account's shipping settings. All methods except getsupportedcarriers and getsupportedholidays require the admin role.",
      id = "ShippingSettings",
      properties = {
        accountId = {
          description = "The ID of the account to which these account shipping settings belong. Ignored upon update, always present in get request responses.",
          format = "uint64",
          type = "string",
        },
        postalCodeGroups = {
          description = "A list of postal code groups that can be referred to in `services`. Optional.",
          items = {
            ["$ref"] = "PostalCodeGroup",
          },
          type = "array",
        },
        services = {
          description = "The target account's list of services. Optional.",
          items = {
            ["$ref"] = "Service",
          },
          type = "array",
        },
        warehouses = {
          description = "Optional. A list of warehouses which can be referred to in `services`.",
          items = {
            ["$ref"] = "Warehouse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ShippingsettingsCustomBatchRequest = {
      id = "ShippingsettingsCustomBatchRequest",
      properties = {
        entries = {
          description = "The request entries to be processed in the batch.",
          items = {
            ["$ref"] = "ShippingsettingsCustomBatchRequestEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ShippingsettingsCustomBatchRequestEntry = {
      description = "A batch entry encoding a single non-batch shippingsettings request.",
      id = "ShippingsettingsCustomBatchRequestEntry",
      properties = {
        accountId = {
          description = "The ID of the account for which to get/update account shipping settings.",
          format = "uint64",
          type = "string",
        },
        batchId = {
          description = "An entry ID, unique within the batch request.",
          format = "uint32",
          type = "integer",
        },
        merchantId = {
          description = "The ID of the managing account.",
          format = "uint64",
          type = "string",
        },
        method = {
          description = "The method of the batch entry. Acceptable values are: - \"`get`\" - \"`update`\" ",
          type = "string",
        },
        shippingSettings = {
          ["$ref"] = "ShippingSettings",
          description = "The account shipping settings to update. Only defined if the method is `update`.",
        },
      },
      type = "object",
    },
    ShippingsettingsCustomBatchResponse = {
      id = "ShippingsettingsCustomBatchResponse",
      properties = {
        entries = {
          description = "The result of the execution of the batch requests.",
          items = {
            ["$ref"] = "ShippingsettingsCustomBatchResponseEntry",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#shippingsettingsCustomBatchResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    ShippingsettingsCustomBatchResponseEntry = {
      description = "A batch entry encoding a single non-batch shipping settings response.",
      id = "ShippingsettingsCustomBatchResponseEntry",
      properties = {
        batchId = {
          description = "The ID of the request entry to which this entry responds.",
          format = "uint32",
          type = "integer",
        },
        errors = {
          ["$ref"] = "Errors",
          description = "A list of errors for failed custombatch entries. *Note:* Schema errors fail the whole request.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#shippingsettingsCustomBatchResponseEntry`\"",
          type = "string",
        },
        shippingSettings = {
          ["$ref"] = "ShippingSettings",
          description = "The retrieved or updated account shipping settings.",
        },
      },
      type = "object",
    },
    ShippingsettingsGetSupportedCarriersResponse = {
      id = "ShippingsettingsGetSupportedCarriersResponse",
      properties = {
        carriers = {
          description = "A list of supported carriers. May be empty.",
          items = {
            ["$ref"] = "CarriersCarrier",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#shippingsettingsGetSupportedCarriersResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    ShippingsettingsGetSupportedHolidaysResponse = {
      id = "ShippingsettingsGetSupportedHolidaysResponse",
      properties = {
        holidays = {
          description = "A list of holidays applicable for delivery guarantees. May be empty.",
          items = {
            ["$ref"] = "HolidaysHoliday",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#shippingsettingsGetSupportedHolidaysResponse`\".",
          type = "string",
        },
      },
      type = "object",
    },
    ShippingsettingsGetSupportedPickupServicesResponse = {
      id = "ShippingsettingsGetSupportedPickupServicesResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#shippingsettingsGetSupportedPickupServicesResponse`\".",
          type = "string",
        },
        pickupServices = {
          description = "A list of supported pickup services. May be empty.",
          items = {
            ["$ref"] = "PickupServicesPickupService",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ShippingsettingsListResponse = {
      id = "ShippingsettingsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#shippingsettingsListResponse`\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token for the retrieval of the next page of shipping settings.",
          type = "string",
        },
        resources = {
          items = {
            ["$ref"] = "ShippingSettings",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ShoppingAdsProgramStatus = {
      description = "Response message for GetShoppingAdsProgramStatus.",
      id = "ShoppingAdsProgramStatus",
      properties = {
        globalState = {
          description = "State of the program. `ENABLED` if there are offers for at least one region.",
          enum = {
            "PROGRAM_STATE_UNSPECIFIED",
            "NOT_ENABLED",
            "NO_OFFERS_UPLOADED",
            "ENABLED",
          },
          enumDescriptions = {
            "State is unknown.",
            "Program is not enabled for any country.",
            "No products have been uploaded for any region. Upload products to Merchant Center.",
            "Program is enabled and offers are uploaded for at least one country.",
          },
          type = "string",
        },
        regionStatuses = {
          description = "Status of the program in each region. Regions with the same status and review eligibility are grouped together in `regionCodes`.",
          items = {
            ["$ref"] = "ShoppingAdsProgramStatusRegionStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ShoppingAdsProgramStatusRegionStatus = {
      description = "Status of program and region.",
      id = "ShoppingAdsProgramStatusRegionStatus",
      properties = {
        disapprovalDate = {
          description = "Date by which eligibilityStatus will go from `WARNING` to `DISAPPROVED`. Only visible when your eligibilityStatus is WARNING. In [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DD`.",
          type = "string",
        },
        eligibilityStatus = {
          description = "Eligibility status of the Shopping Ads program.",
          enum = {
            "STATE_UNSPECIFIED",
            "APPROVED",
            "DISAPPROVED",
            "WARNING",
            "UNDER_REVIEW",
            "PENDING_REVIEW",
            "ONBOARDING",
          },
          enumDescriptions = {
            "State is not known.",
            "If the account has no issues and review is completed successfully.",
            "There are one or more issues that needs to be resolved for account to be active for the program. Detailed list of account issues are available in [accountstatuses](https://developers.google.com/shopping-content/reference/rest/v2.1/accountstatuses) API.",
            "If account has issues but offers are servable. Some of the issue can make account DISAPPROVED after a certain deadline.",
            "Account is under review.",
            "Account is waiting for review to start.",
            "Program is currently onboarding. Upload valid offers to complete onboarding.",
          },
          type = "string",
        },
        onboardingIssues = {
          description = "Issues that must be fixed to be eligible for review.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regionCodes = {
          description = "The two-letter [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) codes for all the regions with the same `eligibilityStatus` and `reviewEligibility`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        reviewEligibilityStatus = {
          description = "If a program is eligible for review in a specific region. Only visible if `eligibilityStatus` is `DISAPPROVED`.",
          enum = {
            "REVIEW_ELIGIBILITY_UNSPECIFIED",
            "ELIGIBLE",
            "INELIGIBLE",
          },
          enumDescriptions = {
            "Review eligibility state is unknown.",
            "Account is eligible for review for a specified region code.",
            "Account is not eligible for review for a specified region code.",
          },
          type = "string",
        },
        reviewIneligibilityReason = {
          description = "Review ineligibility reason if account is not eligible for review.",
          enum = {
            "REVIEW_INELIGIBILITY_REASON_UNSPECIFIED",
            "ONBOARDING_ISSUES",
            "NOT_ENOUGH_OFFERS",
            "IN_COOLDOWN_PERIOD",
            "ALREADY_UNDER_REVIEW",
            "NO_REVIEW_REQUIRED",
            "WILL_BE_REVIEWED_AUTOMATICALLY",
            "IS_RETIRED",
            "ALREADY_REVIEWED",
          },
          enumDescriptions = {
            "Requesting a review from Google is not possible.",
            "All onboarding issues needs to be fixed.",
            "Not enough offers uploaded for this country.",
            "Cooldown period applies. Wait until cooldown period ends.",
            "Account is already under review.",
            "No issues available to review.",
            "Account will be automatically reviewed at the end of the grace period.",
            "Account is retired. Should not appear in MC.",
            "Account was already reviewd.",
          },
          type = "string",
        },
        reviewIneligibilityReasonDescription = {
          description = "Reason a program in a specific region isn’t eligible for review. Only visible if `reviewEligibilityStatus` is `INELIGIBLE`.",
          type = "string",
        },
        reviewIneligibilityReasonDetails = {
          ["$ref"] = "ShoppingAdsProgramStatusReviewIneligibilityReasonDetails",
          description = "Additional information for ineligibility. If `reviewIneligibilityReason` is `IN_COOLDOWN_PERIOD`, a timestamp for the end of the cooldown period is provided.",
        },
        reviewIssues = {
          description = "Issues evaluated in the review process. Fix all issues before requesting a review.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ShoppingAdsProgramStatusReviewIneligibilityReasonDetails = {
      description = "Additional details for review ineligibility reasons.",
      id = "ShoppingAdsProgramStatusReviewIneligibilityReasonDetails",
      properties = {
        cooldownTime = {
          description = "This timestamp represents end of cooldown period for review ineligbility reason `IN_COOLDOWN_PERIOD`.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Table = {
      id = "Table",
      properties = {
        columnHeaders = {
          ["$ref"] = "Headers",
          description = "Headers of the table's columns. Optional: if not set then the table has only one dimension.",
        },
        name = {
          description = "Name of the table. Required for subtables, ignored for the main table.",
          type = "string",
        },
        rowHeaders = {
          ["$ref"] = "Headers",
          description = "Headers of the table's rows. Required.",
        },
        rows = {
          description = "The list of rows that constitute the table. Must have the same length as `rowHeaders`. Required.",
          items = {
            ["$ref"] = "Row",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestOrder = {
      id = "TestOrder",
      properties = {
        deliveryDetails = {
          ["$ref"] = "TestOrderDeliveryDetails",
          description = "Overrides the predefined delivery details if provided.",
        },
        enableOrderinvoices = {
          description = "Whether the orderinvoices service should support this order.",
          type = "boolean",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"`content#testOrder`\"",
          type = "string",
        },
        lineItems = {
          description = "Required. Line items that are ordered. At least one line item must be provided.",
          items = {
            ["$ref"] = "TestOrderLineItem",
          },
          type = "array",
        },
        notificationMode = {
          description = "Restricted. Do not use.",
          type = "string",
        },
        pickupDetails = {
          ["$ref"] = "TestOrderPickupDetails",
          description = "Overrides the predefined pickup details if provided.",
        },
        predefinedBillingAddress = {
          description = "Required. The billing address. Acceptable values are: - \"`dwight`\" - \"`jim`\" - \"`pam`\" ",
          type = "string",
        },
        predefinedDeliveryAddress = {
          description = "Required. Identifier of one of the predefined delivery addresses for the delivery. Acceptable values are: - \"`dwight`\" - \"`jim`\" - \"`pam`\" ",
          type = "string",
        },
        predefinedEmail = {
          description = "Required. Email address of the customer. Acceptable values are: - \"`pog.dwight.schrute@gmail.com`\" - \"`pog.jim.halpert@gmail.com`\" - \"`penpog.pam.beesly@gmail.comding`\" ",
          type = "string",
        },
        predefinedPickupDetails = {
          description = "Identifier of one of the predefined pickup details. Required for orders containing line items with shipping type `pickup`. Acceptable values are: - \"`dwight`\" - \"`jim`\" - \"`pam`\" ",
          type = "string",
        },
        promotions = {
          description = "Promotions associated with the order.",
          items = {
            ["$ref"] = "OrderPromotion",
          },
          type = "array",
        },
        shippingCost = {
          ["$ref"] = "Price",
          description = "Required. The price of shipping for all items. Shipping tax is automatically calculated for orders where marketplace facilitator tax laws are applicable. Otherwise, tax settings from Merchant Center are applied. Note that shipping is not taxed in certain states.",
        },
        shippingOption = {
          description = "Required. The requested shipping option. Acceptable values are: - \"`economy`\" - \"`expedited`\" - \"`oneDay`\" - \"`sameDay`\" - \"`standard`\" - \"`twoDay`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    TestOrderAddress = {
      id = "TestOrderAddress",
      properties = {
        country = {
          description = "CLDR country code (for example, \"US\").",
          type = "string",
        },
        fullAddress = {
          description = "Strings representing the lines of the printed label for mailing the order, for example: John Smith 1600 Amphitheatre Parkway Mountain View, CA, 94043 United States ",
          items = {
            type = "string",
          },
          type = "array",
        },
        isPostOfficeBox = {
          description = "Whether the address is a post office box.",
          type = "boolean",
        },
        locality = {
          description = "City, town or commune. May also include dependent localities or sublocalities (for example, neighborhoods or suburbs).",
          type = "string",
        },
        postalCode = {
          description = "Postal Code or ZIP (for example, \"94043\").",
          type = "string",
        },
        recipientName = {
          description = "Name of the recipient.",
          type = "string",
        },
        region = {
          description = "Top-level administrative subdivision of the country. For example, a state like California (\"CA\") or a province like Quebec (\"QC\").",
          type = "string",
        },
        streetAddress = {
          description = "Street-level part of the address. Use `\\n` to add a second line.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestOrderDeliveryDetails = {
      id = "TestOrderDeliveryDetails",
      properties = {
        address = {
          ["$ref"] = "TestOrderAddress",
          description = "The delivery address",
        },
        isScheduledDelivery = {
          description = "Whether the order is scheduled delivery order.",
          type = "boolean",
        },
        phoneNumber = {
          description = "The phone number of the person receiving the delivery.",
          type = "string",
        },
      },
      type = "object",
    },
    TestOrderLineItem = {
      id = "TestOrderLineItem",
      properties = {
        product = {
          ["$ref"] = "TestOrderLineItemProduct",
          description = "Required. Product data from the time of the order placement.",
        },
        quantityOrdered = {
          description = "Required. Number of items ordered.",
          format = "uint32",
          type = "integer",
        },
        returnInfo = {
          ["$ref"] = "OrderLineItemReturnInfo",
          description = "Required. Details of the return policy for the line item.",
        },
        shippingDetails = {
          ["$ref"] = "OrderLineItemShippingDetails",
          description = "Required. Details of the requested shipping for the line item.",
        },
      },
      type = "object",
    },
    TestOrderLineItemProduct = {
      id = "TestOrderLineItemProduct",
      properties = {
        brand = {
          description = "Required. Brand of the item.",
          type = "string",
        },
        condition = {
          description = "Required. Condition or state of the item. Acceptable values are: - \"`new`\" ",
          type = "string",
        },
        contentLanguage = {
          description = "Required. The two-letter ISO 639-1 language code for the item. Acceptable values are: - \"`en`\" - \"`fr`\" ",
          type = "string",
        },
        fees = {
          description = "Fees for the item. Optional.",
          items = {
            ["$ref"] = "OrderLineItemProductFee",
          },
          type = "array",
        },
        gtin = {
          description = "Global Trade Item Number (GTIN) of the item. Optional.",
          type = "string",
        },
        imageLink = {
          description = "Required. URL of an image of the item.",
          type = "string",
        },
        itemGroupId = {
          description = "Shared identifier for all variants of the same product. Optional.",
          type = "string",
        },
        mpn = {
          description = "Manufacturer Part Number (MPN) of the item. Optional.",
          type = "string",
        },
        offerId = {
          description = "Required. An identifier of the item.",
          type = "string",
        },
        price = {
          ["$ref"] = "Price",
          description = "Required. The price for the product. Tax is automatically calculated for orders where marketplace facilitator tax laws are applicable. Otherwise, tax settings from Merchant Center are applied.",
        },
        targetCountry = {
          description = "Required. The CLDR territory code of the target country of the product.",
          type = "string",
        },
        title = {
          description = "Required. The title of the product.",
          type = "string",
        },
        variantAttributes = {
          description = "Variant attributes for the item. Optional.",
          items = {
            ["$ref"] = "OrderLineItemProductVariantAttribute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestOrderPickupDetails = {
      id = "TestOrderPickupDetails",
      properties = {
        locationCode = {
          description = "Required. Code of the location defined by provider or merchant.",
          type = "string",
        },
        pickupLocationAddress = {
          ["$ref"] = "TestOrderAddress",
          description = "Required. Pickup location address.",
        },
        pickupLocationType = {
          description = "Pickup location type. Acceptable values are: - \"`locker`\" - \"`store`\" - \"`curbside`\" ",
          type = "string",
        },
        pickupPersons = {
          description = "Required. all pickup persons set by users.",
          items = {
            ["$ref"] = "TestOrderPickupDetailsPickupPerson",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestOrderPickupDetailsPickupPerson = {
      id = "TestOrderPickupDetailsPickupPerson",
      properties = {
        name = {
          description = "Required. Full name of the pickup person.",
          type = "string",
        },
        phoneNumber = {
          description = "Required. The phone number of the person picking up the items.",
          type = "string",
        },
      },
      type = "object",
    },
    TimePeriod = {
      description = "A message that represents a time period.",
      id = "TimePeriod",
      properties = {
        endTime = {
          description = "The ending timestamp.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The starting timestamp.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TimeZone = {
      description = "Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).",
      id = "TimeZone",
      properties = {
        id = {
          description = "IANA Time Zone Database time zone, e.g. \"America/New_York\".",
          type = "string",
        },
        version = {
          description = "Optional. IANA Time Zone Database version number, e.g. \"2019a\".",
          type = "string",
        },
      },
      type = "object",
    },
    TransitTable = {
      id = "TransitTable",
      properties = {
        postalCodeGroupNames = {
          description = "A list of postal group names. The last value can be `\"all other locations\"`. Example: `[\"zone 1\", \"zone 2\", \"all other locations\"]`. The referred postal code groups must match the delivery country of the service.",
          items = {
            type = "string",
          },
          type = "array",
        },
        rows = {
          items = {
            ["$ref"] = "TransitTableTransitTimeRow",
          },
          type = "array",
        },
        transitTimeLabels = {
          description = "A list of transit time labels. The last value can be `\"all other labels\"`. Example: `[\"food\", \"electronics\", \"all other labels\"]`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TransitTableTransitTimeRow = {
      id = "TransitTableTransitTimeRow",
      properties = {
        values = {
          items = {
            ["$ref"] = "TransitTableTransitTimeRowTransitTimeValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TransitTableTransitTimeRowTransitTimeValue = {
      id = "TransitTableTransitTimeRowTransitTimeValue",
      properties = {
        maxTransitTimeInDays = {
          description = "Must be greater than or equal to `minTransitTimeInDays`.",
          format = "uint32",
          type = "integer",
        },
        minTransitTimeInDays = {
          description = "Transit time range (min-max) in business days. 0 means same day delivery, 1 means next day delivery.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    UnitInvoice = {
      id = "UnitInvoice",
      properties = {
        additionalCharges = {
          description = "Additional charges for a unit, for example, shipping costs.",
          items = {
            ["$ref"] = "UnitInvoiceAdditionalCharge",
          },
          type = "array",
        },
        unitPrice = {
          ["$ref"] = "Price",
          description = "[required] Pre-tax or post-tax price of one unit depending on the locality of the order. *Note:* Invoicing works on a per unit basis. The `unitPrice` is the price of a single unit, and will be multiplied by the number of entries in `shipmentUnitId`.",
        },
        unitPriceTaxes = {
          description = "Tax amounts to apply to the unit price.",
          items = {
            ["$ref"] = "UnitInvoiceTaxLine",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UnitInvoiceAdditionalCharge = {
      id = "UnitInvoiceAdditionalCharge",
      properties = {
        additionalChargeAmount = {
          ["$ref"] = "Amount",
          description = "[required] Amount of the additional charge per unit. *Note:* Invoicing works on a per unit bases. The `additionalChargeAmount` is the amount charged per unit, and will be multiplied by the number of entries in `shipmentUnitID`.",
        },
        type = {
          description = "[required] Type of the additional charge. Acceptable values are: - \"`shipping`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    UnitInvoiceTaxLine = {
      id = "UnitInvoiceTaxLine",
      properties = {
        taxAmount = {
          ["$ref"] = "Price",
          description = "[required] Tax amount for the tax type.",
        },
        taxName = {
          description = "Optional name of the tax type. This should only be provided if `taxType` is `otherFeeTax`.",
          type = "string",
        },
        taxType = {
          description = "[required] Type of the tax. Acceptable values are: - \"`otherFee`\" - \"`otherFeeTax`\" - \"`sales`\" ",
          type = "string",
        },
      },
      type = "object",
    },
    Value = {
      description = "The single value of a rate group or the value of a rate group table's cell. Exactly one of `noShipping`, `flatRate`, `pricePercentage`, `carrierRateName`, `subtableName` must be set.",
      id = "Value",
      properties = {
        carrierRateName = {
          description = "The name of a carrier rate referring to a carrier rate defined in the same rate group. Can only be set if all other fields are not set.",
          type = "string",
        },
        flatRate = {
          ["$ref"] = "Price",
          description = "A flat rate. Can only be set if all other fields are not set.",
        },
        noShipping = {
          description = "If true, then the product can't ship. Must be true when set, can only be set if all other fields are not set.",
          type = "boolean",
        },
        pricePercentage = {
          description = "A percentage of the price represented as a number in decimal notation (for example, `\"5.4\"`). Can only be set if all other fields are not set.",
          type = "string",
        },
        subtableName = {
          description = "The name of a subtable. Can only be set in table cells (not for single values), and only if all other fields are not set.",
          type = "string",
        },
      },
      type = "object",
    },
    VerifyPhoneNumberRequest = {
      description = "Request message for the VerifyPhoneNumber method.",
      id = "VerifyPhoneNumberRequest",
      properties = {
        phoneVerificationMethod = {
          description = "Verification method used to receive verification code.",
          enum = {
            "PHONE_VERIFICATION_METHOD_UNSPECIFIED",
            "SMS",
            "PHONE_CALL",
          },
          enumDescriptions = {
            "Unknown method.",
            "Receive verification code by SMS.",
            "Receive verification code by phone call.",
          },
          type = "string",
        },
        verificationCode = {
          description = "The verification code that was sent to the phone number for validation.",
          type = "string",
        },
        verificationId = {
          description = "The verification ID returned by `requestphoneverification`.",
          type = "string",
        },
      },
      type = "object",
    },
    VerifyPhoneNumberResponse = {
      description = "Response message for the VerifyPhoneNumber method.",
      id = "VerifyPhoneNumberResponse",
      properties = {
        verifiedPhoneNumber = {
          description = "Verified phone number if verification is successful. This phone number can only be replaced by another verified phone number.",
          type = "string",
        },
      },
      type = "object",
    },
    Warehouse = {
      description = "A fulfillment warehouse, which stores and handles inventory.",
      id = "Warehouse",
      properties = {
        businessDayConfig = {
          ["$ref"] = "BusinessDayConfig",
          description = "Business days of the warehouse. If not set, will be Monday to Friday by default.",
        },
        cutoffTime = {
          ["$ref"] = "WarehouseCutoffTime",
          description = "Required. The latest time of day that an order can be accepted and begin processing. Later orders will be processed in the next day. The time is based on the warehouse postal code.",
        },
        handlingDays = {
          description = "Required. The number of days it takes for this warehouse to pack up and ship an item. This is on the warehouse level, but can be overridden on the offer level based on the attributes of an item.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Required. The name of the warehouse. Must be unique within account.",
          type = "string",
        },
        shippingAddress = {
          ["$ref"] = "Address",
          description = "Required. Shipping address of the warehouse.",
        },
      },
      type = "object",
    },
    WarehouseBasedDeliveryTime = {
      id = "WarehouseBasedDeliveryTime",
      properties = {
        carrier = {
          description = "Required. Carrier, such as `\"UPS\"` or `\"Fedex\"`. The list of supported carriers can be retrieved through the `listSupportedCarriers` method.",
          type = "string",
        },
        carrierService = {
          description = "Required. Carrier service, such as `\"ground\"` or `\"2 days\"`. The list of supported services for a carrier can be retrieved through the `listSupportedCarriers` method. The name of the service must be in the eddSupportedServices list.",
          type = "string",
        },
        originAdministrativeArea = {
          description = "Shipping origin's state.",
          type = "string",
        },
        originCity = {
          description = "Shipping origin's city.",
          type = "string",
        },
        originCountry = {
          description = "Shipping origin's country represented as a [CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml).",
          type = "string",
        },
        originPostalCode = {
          description = "Shipping origin.",
          type = "string",
        },
        originStreetAddress = {
          description = "Shipping origin's street address.",
          type = "string",
        },
        warehouseName = {
          description = "The name of the warehouse. Warehouse name need to be matched with name. If warehouseName is set, the below fields will be ignored. The warehouse info will be read from warehouse.",
          type = "string",
        },
      },
      type = "object",
    },
    WarehouseCutoffTime = {
      id = "WarehouseCutoffTime",
      properties = {
        hour = {
          description = "Required. Hour (24-hour clock) of the cutoff time until which an order has to be placed to be processed in the same day by the warehouse. Hour is based on the timezone of warehouse.",
          format = "int32",
          type = "integer",
        },
        minute = {
          description = "Required. Minute of the cutoff time until which an order has to be placed to be processed in the same day by the warehouse. Minute is based on the timezone of warehouse.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Weight = {
      id = "Weight",
      properties = {
        unit = {
          description = "Required. The weight unit. Acceptable values are: - \"`kg`\" - \"`lb`\" ",
          type = "string",
        },
        value = {
          description = "Required. The weight represented as a number. The weight can have a maximum precision of four decimal places.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "content/v2.1/",
  title = "Content API for Shopping",
  version = "v2.1",
}