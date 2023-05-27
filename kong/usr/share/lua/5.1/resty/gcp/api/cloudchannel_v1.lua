return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/apps.order"] = {
          description = "Manage users on your domain",
        },
        ["https://www.googleapis.com/auth/apps.reports.usage.readonly"] = {
          description = "View usage reports for your G Suite domain",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudchannel.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloudchannel",
  description = "The Cloud Channel API enables Google Cloud partners to have a single unified resale platform and APIs across all of Google Cloud including GCP, Workspace, Maps and Chrome.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/channel",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudchannel:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudchannel.mtls.googleapis.com/",
  name = "cloudchannel",
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
        checkCloudIdentityAccountsExist = {
          description = "Confirms the existence of Cloud Identity accounts based on the domain and if the Cloud Identity accounts are owned by the reseller. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * INVALID_VALUE: Invalid domain value in the request. Return value: A list of CloudIdentityCustomerAccount resources for the domain (may be empty) Note: in the v1alpha1 version of the API, a NOT_FOUND error returns if no CloudIdentityCustomerAccount resources match the domain.",
          flatPath = "v1/accounts/{accountsId}:checkCloudIdentityAccountsExist",
          httpMethod = "POST",
          id = "cloudchannel.accounts.checkCloudIdentityAccountsExist",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The reseller account's resource name. Parent uses the format: accounts/{account_id}",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:checkCloudIdentityAccountsExist",
          request = {
            ["$ref"] = "GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        listSubscribers = {
          description = "Lists service accounts with subscriber privileges on the Cloud Pub/Sub topic created for this Channel Services account. Possible error codes: * PERMISSION_DENIED: The reseller account making the request and the provided reseller account are different, or the impersonated user is not a super admin. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The topic resource doesn't exist. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: A list of service email addresses.",
          flatPath = "v1/accounts/{accountsId}:listSubscribers",
          httpMethod = "GET",
          id = "cloudchannel.accounts.listSubscribers",
          parameterOrder = {
            "account",
          },
          parameters = {
            account = {
              description = "Required. Resource name of the account.",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "Optional. The maximum number of service accounts to return. The service may return fewer than this value. If unspecified, returns at most 100 service accounts. The maximum value is 1000; the server will coerce values above 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A page token, received from a previous `ListSubscribers` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListSubscribers` must match the call that provided the page token.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+account}:listSubscribers",
          response = {
            ["$ref"] = "GoogleCloudChannelV1ListSubscribersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        listTransferableOffers = {
          description = "List TransferableOffers of a customer based on Cloud Identity ID or Customer Name in the request. Use this method when a reseller gets the entitlement information of an unowned customer. The reseller should provide the customer's Cloud Identity ID or Customer Name. Possible error codes: * PERMISSION_DENIED: * The customer doesn't belong to the reseller and has no auth token. * The customer provided incorrect reseller information when generating auth token. * The reseller account making the request is different from the reseller account in the query. * INVALID_ARGUMENT: Required request parameters are missing or invalid. Return value: List of TransferableOffer for the given customer and SKU.",
          flatPath = "v1/accounts/{accountsId}:listTransferableOffers",
          httpMethod = "POST",
          id = "cloudchannel.accounts.listTransferableOffers",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The resource name of the reseller's account.",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:listTransferableOffers",
          request = {
            ["$ref"] = "GoogleCloudChannelV1ListTransferableOffersRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudChannelV1ListTransferableOffersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        listTransferableSkus = {
          description = "List TransferableSkus of a customer based on the Cloud Identity ID or Customer Name in the request. Use this method to list the entitlements information of an unowned customer. You should provide the customer's Cloud Identity ID or Customer Name. Possible error codes: * PERMISSION_DENIED: * The customer doesn't belong to the reseller and has no auth token. * The supplied auth token is invalid. * The reseller account making the request is different from the reseller account in the query. * INVALID_ARGUMENT: Required request parameters are missing or invalid. Return value: A list of the customer's TransferableSku.",
          flatPath = "v1/accounts/{accountsId}:listTransferableSkus",
          httpMethod = "POST",
          id = "cloudchannel.accounts.listTransferableSkus",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The reseller account's resource name. Parent uses the format: accounts/{account_id}",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:listTransferableSkus",
          request = {
            ["$ref"] = "GoogleCloudChannelV1ListTransferableSkusRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudChannelV1ListTransferableSkusResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        register = {
          description = "Registers a service account with subscriber privileges on the Cloud Pub/Sub topic for this Channel Services account. After you create a subscriber, you get the events through SubscriberEvent Possible error codes: * PERMISSION_DENIED: The reseller account making the request and the provided reseller account are different, or the impersonated user is not a super admin. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The topic name with the registered service email address.",
          flatPath = "v1/accounts/{accountsId}:register",
          httpMethod = "POST",
          id = "cloudchannel.accounts.register",
          parameterOrder = {
            "account",
          },
          parameters = {
            account = {
              description = "Required. Resource name of the account.",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+account}:register",
          request = {
            ["$ref"] = "GoogleCloudChannelV1RegisterSubscriberRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudChannelV1RegisterSubscriberResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        unregister = {
          description = "Unregisters a service account with subscriber privileges on the Cloud Pub/Sub topic created for this Channel Services account. If there are no service accounts left with subscriber privileges, this deletes the topic. You can call ListSubscribers to check for these accounts. Possible error codes: * PERMISSION_DENIED: The reseller account making the request and the provided reseller account are different, or the impersonated user is not a super admin. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The topic resource doesn't exist. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The topic name that unregistered the service email address. Returns a success response if the service email address wasn't registered with the topic.",
          flatPath = "v1/accounts/{accountsId}:unregister",
          httpMethod = "POST",
          id = "cloudchannel.accounts.unregister",
          parameterOrder = {
            "account",
          },
          parameters = {
            account = {
              description = "Required. Resource name of the account.",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+account}:unregister",
          request = {
            ["$ref"] = "GoogleCloudChannelV1UnregisterSubscriberRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudChannelV1UnregisterSubscriberResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
      },
      resources = {
        channelPartnerLinks = {
          methods = {
            create = {
              description = "Initiates a channel partner link between a distributor and a reseller, or between resellers in an n-tier reseller channel. Invited partners need to follow the invite_link_uri provided in the response to accept. After accepting the invitation, a link is set up between the two parties. You must be a distributor to call this method. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * ALREADY_EXISTS: The ChannelPartnerLink sent in the request already exists. * NOT_FOUND: No Cloud Identity customer exists for provided domain. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The new ChannelPartnerLink resource.",
              flatPath = "v1/accounts/{accountsId}/channelPartnerLinks",
              httpMethod = "POST",
              id = "cloudchannel.accounts.channelPartnerLinks.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Create a channel partner link for the provided reseller account's resource name. Parent uses the format: accounts/{account_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/channelPartnerLinks",
              request = {
                ["$ref"] = "GoogleCloudChannelV1ChannelPartnerLink",
              },
              response = {
                ["$ref"] = "GoogleCloudChannelV1ChannelPartnerLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            get = {
              description = "Returns the requested ChannelPartnerLink resource. You must be a distributor to call this method. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: ChannelPartnerLink resource not found because of an invalid channel partner link name. Return value: The ChannelPartnerLink resource.",
              flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}",
              httpMethod = "GET",
              id = "cloudchannel.accounts.channelPartnerLinks.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the channel partner link to retrieve. Name uses the format: accounts/{account_id}/channelPartnerLinks/{id} where {id} is the Cloud Identity ID of the partner.",
                  location = "path",
                  pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "Optional. The level of granularity the ChannelPartnerLink will display.",
                  enum = {
                    "UNSPECIFIED",
                    "BASIC",
                    "FULL",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the BASIC view.",
                    "Includes all fields except the ChannelPartnerLink.channel_partner_cloud_identity_info.",
                    "Includes all fields.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudChannelV1ChannelPartnerLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            list = {
              description = "List ChannelPartnerLinks belonging to a distributor. You must be a distributor to call this method. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. Return value: The list of the distributor account's ChannelPartnerLink resources.",
              flatPath = "v1/accounts/{accountsId}/channelPartnerLinks",
              httpMethod = "GET",
              id = "cloudchannel.accounts.channelPartnerLinks.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. Requested page size. Server might return fewer results than requested. If unspecified, server will pick a default size (25). The maximum value is 200; the server will coerce values above 200.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A token for a page of results other than the first page. Obtained using ListChannelPartnerLinksResponse.next_page_token of the previous CloudChannelService.ListChannelPartnerLinks call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the reseller account for listing channel partner links. Parent uses the format: accounts/{account_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "Optional. The level of granularity the ChannelPartnerLink will display.",
                  enum = {
                    "UNSPECIFIED",
                    "BASIC",
                    "FULL",
                  },
                  enumDescriptions = {
                    "The default / unset value. The API will default to the BASIC view.",
                    "Includes all fields except the ChannelPartnerLink.channel_partner_cloud_identity_info.",
                    "Includes all fields.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/channelPartnerLinks",
              response = {
                ["$ref"] = "GoogleCloudChannelV1ListChannelPartnerLinksResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            patch = {
              description = "Updates a channel partner link. Distributors call this method to change a link's status. For example, to suspend a partner link. You must be a distributor to call this method. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: * Required request parameters are missing or invalid. * Link state cannot change from invited to active or suspended. * Cannot send reseller_cloud_identity_id, invite_url, or name in update mask. * NOT_FOUND: ChannelPartnerLink resource not found. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The updated ChannelPartnerLink resource.",
              flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}",
              httpMethod = "PATCH",
              id = "cloudchannel.accounts.channelPartnerLinks.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the channel partner link to cancel. Name uses the format: accounts/{account_id}/channelPartnerLinks/{id} where {id} is the Cloud Identity ID of the partner.",
                  location = "path",
                  pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudChannelV1UpdateChannelPartnerLinkRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudChannelV1ChannelPartnerLink",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
          },
          resources = {
            channelPartnerRepricingConfigs = {
              methods = {
                create = {
                  description = "Creates a ChannelPartnerRepricingConfig. Call this method to set modifications for a specific ChannelPartner's bill. You can only create configs if the RepricingConfig.effective_invoice_month is a future month. If needed, you can create a config for the current month, with some restrictions. When creating a config for a future month, make sure there are no existing configs for that RepricingConfig.effective_invoice_month. The following restrictions are for creating configs in the current month. * This functionality is reserved for recovering from an erroneous config, and should not be used for regular business cases. * The new config will not modify exports used with other configs. Changes to the config may be immediate, but may take up to 24 hours. * There is a limit of ten configs for any ChannelPartner or RepricingConfig.effective_invoice_month. * The contained ChannelPartnerRepricingConfig.repricing_config vaule must be different from the value used in the current config for a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * INVALID_ARGUMENT: Missing or invalid required parameters in the request. Also displays if the updated config is for the current month or past months. * NOT_FOUND: The ChannelPartnerRepricingConfig specified does not exist or is not associated with the given account. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the updated ChannelPartnerRepricingConfig resource, otherwise returns an error.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/channelPartnerRepricingConfigs",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.channelPartnerLinks.channelPartnerRepricingConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of the ChannelPartner that will receive the repricing config. Parent uses the format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/channelPartnerRepricingConfigs",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1ChannelPartnerRepricingConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1ChannelPartnerRepricingConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                delete = {
                  description = "Deletes the given ChannelPartnerRepricingConfig permanently. You can only delete configs if their RepricingConfig.effective_invoice_month is set to a date after the current month. Possible error codes: * PERMISSION_DENIED: The account making the request does not own this customer. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * FAILED_PRECONDITION: The ChannelPartnerRepricingConfig is active or in the past. * NOT_FOUND: No ChannelPartnerRepricingConfig found for the name in the request.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/channelPartnerRepricingConfigs/{channelPartnerRepricingConfigsId}",
                  httpMethod = "DELETE",
                  id = "cloudchannel.accounts.channelPartnerLinks.channelPartnerRepricingConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the channel partner repricing config rule to delete.",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+/channelPartnerRepricingConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                get = {
                  description = "Gets information about how a Distributor modifies their bill before sending it to a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * NOT_FOUND: The ChannelPartnerRepricingConfig was not found. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the ChannelPartnerRepricingConfig resource, otherwise returns an error.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/channelPartnerRepricingConfigs/{channelPartnerRepricingConfigsId}",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.channelPartnerLinks.channelPartnerRepricingConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the ChannelPartnerRepricingConfig Format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+/channelPartnerRepricingConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1ChannelPartnerRepricingConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                list = {
                  description = "Lists information about how a Reseller modifies their bill before sending it to a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * NOT_FOUND: The ChannelPartnerRepricingConfig specified does not exist or is not associated with the given account. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the ChannelPartnerRepricingConfig resources. The data for each resource is displayed in the ascending order of: * channel partner ID * RepricingConfig.effective_invoice_month * ChannelPartnerRepricingConfig.update_time If unsuccessful, returns an error.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/channelPartnerRepricingConfigs",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.channelPartnerLinks.channelPartnerRepricingConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. A filter for [CloudChannelService.ListChannelPartnerRepricingConfigs] results (channel_partner_link only). You can use this filter when you support a BatchGet-like query. To use the filter, you must set `parent=accounts/{account_id}/channelPartnerLinks/-`. Example: `channel_partner_link = accounts/account_id/channelPartnerLinks/c1` OR `channel_partner_link = accounts/account_id/channelPartnerLinks/c2`.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of repricing configs to return. The service may return fewer than this value. If unspecified, returns a maximum of 50 rules. The maximum value is 100; values above 100 will be coerced to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token identifying a page of results beyond the first page. Obtained through ListChannelPartnerRepricingConfigsResponse.next_page_token of the previous CloudChannelService.ListChannelPartnerRepricingConfigs call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the account's ChannelPartnerLink. Parent uses the format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}. Supports accounts/{account_id}/channelPartnerLinks/- to retrieve configs for all channel partners.",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/channelPartnerRepricingConfigs",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                patch = {
                  description = "Updates a ChannelPartnerRepricingConfig. Call this method to set modifications for a specific ChannelPartner's bill. This method overwrites the existing CustomerRepricingConfig. You can only update configs if the RepricingConfig.effective_invoice_month is a future month. To make changes to configs for the current month, use CreateChannelPartnerRepricingConfig, taking note of its restrictions. You cannot update the RepricingConfig.effective_invoice_month. When updating a config in the future: * This config must already exist. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * INVALID_ARGUMENT: Missing or invalid required parameters in the request. Also displays if the updated config is for the current month or past months. * NOT_FOUND: The ChannelPartnerRepricingConfig specified does not exist or is not associated with the given account. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the updated ChannelPartnerRepricingConfig resource, otherwise returns an error.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/channelPartnerRepricingConfigs/{channelPartnerRepricingConfigsId}",
                  httpMethod = "PATCH",
                  id = "cloudchannel.accounts.channelPartnerLinks.channelPartnerRepricingConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. Resource name of the ChannelPartnerRepricingConfig. Format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+/channelPartnerRepricingConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1ChannelPartnerRepricingConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1ChannelPartnerRepricingConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
              },
            },
            customers = {
              methods = {
                create = {
                  description = "Creates a new Customer resource under the reseller or distributor account. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: * Required request parameters are missing or invalid. * Domain field value doesn't match the primary email domain. Return value: The newly created Customer resource.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/customers",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.channelPartnerLinks.customers.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of reseller account in which to create the customer. Parent uses the format: accounts/{account_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/customers",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1Customer",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1Customer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                delete = {
                  description = "Deletes the given Customer permanently. Possible error codes: * PERMISSION_DENIED: The account making the request does not own this customer. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * FAILED_PRECONDITION: The customer has existing entitlements. * NOT_FOUND: No Customer resource found for the name in the request.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/customers/{customersId}",
                  httpMethod = "DELETE",
                  id = "cloudchannel.accounts.channelPartnerLinks.customers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the customer to delete.",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+/customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                get = {
                  description = "Returns the requested Customer resource. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer resource doesn't exist. Usually the result of an invalid name parameter. Return value: The Customer resource.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/customers/{customersId}",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.channelPartnerLinks.customers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the customer to retrieve. Name uses the format: accounts/{account_id}/customers/{customer_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+/customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1Customer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                import = {
                  description = "Imports a Customer from the Cloud Identity associated with the provided Cloud Identity ID or domain before a TransferEntitlements call. If a linked Customer already exists and overwrite_if_exists is true, it will update that Customer's data. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * NOT_FOUND: Cloud Identity doesn't exist or was deleted. * INVALID_ARGUMENT: Required parameters are missing, or the auth_token is expired or invalid. * ALREADY_EXISTS: A customer already exists and has conflicting critical fields. Requires an overwrite. Return value: The Customer.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/customers:import",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.channelPartnerLinks.customers.import",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of the reseller's account. Parent takes the format: accounts/{account_id} or accounts/{account_id}/channelPartnerLinks/{channel_partner_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/customers:import",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1ImportCustomerRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1Customer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                list = {
                  description = "List Customers. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. Return value: List of Customers, or an empty list if there are no customers.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/customers",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.channelPartnerLinks.customers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. Filters applied to the [CloudChannelService.ListCustomers] results. See https://cloud.google.com/channel/docs/concepts/google-cloud/filter-customers for more information.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of customers to return. The service may return fewer than this value. If unspecified, returns at most 10 customers. The maximum value is 50.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token identifying a page of results other than the first page. Obtained through ListCustomersResponse.next_page_token of the previous CloudChannelService.ListCustomers call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the reseller account to list customers from. Parent uses the format: accounts/{account_id}.",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/customers",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1ListCustomersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                patch = {
                  description = "Updates an existing Customer resource for the reseller or distributor. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: No Customer resource found for the name in the request. Return value: The updated Customer resource.",
                  flatPath = "v1/accounts/{accountsId}/channelPartnerLinks/{channelPartnerLinksId}/customers/{customersId}",
                  httpMethod = "PATCH",
                  id = "cloudchannel.accounts.channelPartnerLinks.customers.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/channelPartnerLinks/[^/]+/customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The update mask that applies to the resource. Optional.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1Customer",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1Customer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
              },
            },
          },
        },
        customers = {
          methods = {
            create = {
              description = "Creates a new Customer resource under the reseller or distributor account. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: * Required request parameters are missing or invalid. * Domain field value doesn't match the primary email domain. Return value: The newly created Customer resource.",
              flatPath = "v1/accounts/{accountsId}/customers",
              httpMethod = "POST",
              id = "cloudchannel.accounts.customers.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of reseller account in which to create the customer. Parent uses the format: accounts/{account_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/customers",
              request = {
                ["$ref"] = "GoogleCloudChannelV1Customer",
              },
              response = {
                ["$ref"] = "GoogleCloudChannelV1Customer",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            delete = {
              description = "Deletes the given Customer permanently. Possible error codes: * PERMISSION_DENIED: The account making the request does not own this customer. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * FAILED_PRECONDITION: The customer has existing entitlements. * NOT_FOUND: No Customer resource found for the name in the request.",
              flatPath = "v1/accounts/{accountsId}/customers/{customersId}",
              httpMethod = "DELETE",
              id = "cloudchannel.accounts.customers.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the customer to delete.",
                  location = "path",
                  pattern = "^accounts/[^/]+/customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            get = {
              description = "Returns the requested Customer resource. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer resource doesn't exist. Usually the result of an invalid name parameter. Return value: The Customer resource.",
              flatPath = "v1/accounts/{accountsId}/customers/{customersId}",
              httpMethod = "GET",
              id = "cloudchannel.accounts.customers.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the customer to retrieve. Name uses the format: accounts/{account_id}/customers/{customer_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudChannelV1Customer",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            import = {
              description = "Imports a Customer from the Cloud Identity associated with the provided Cloud Identity ID or domain before a TransferEntitlements call. If a linked Customer already exists and overwrite_if_exists is true, it will update that Customer's data. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * NOT_FOUND: Cloud Identity doesn't exist or was deleted. * INVALID_ARGUMENT: Required parameters are missing, or the auth_token is expired or invalid. * ALREADY_EXISTS: A customer already exists and has conflicting critical fields. Requires an overwrite. Return value: The Customer.",
              flatPath = "v1/accounts/{accountsId}/customers:import",
              httpMethod = "POST",
              id = "cloudchannel.accounts.customers.import",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the reseller's account. Parent takes the format: accounts/{account_id} or accounts/{account_id}/channelPartnerLinks/{channel_partner_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/customers:import",
              request = {
                ["$ref"] = "GoogleCloudChannelV1ImportCustomerRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudChannelV1Customer",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            list = {
              description = "List Customers. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. Return value: List of Customers, or an empty list if there are no customers.",
              flatPath = "v1/accounts/{accountsId}/customers",
              httpMethod = "GET",
              id = "cloudchannel.accounts.customers.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Filters applied to the [CloudChannelService.ListCustomers] results. See https://cloud.google.com/channel/docs/concepts/google-cloud/filter-customers for more information.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of customers to return. The service may return fewer than this value. If unspecified, returns at most 10 customers. The maximum value is 50.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A token identifying a page of results other than the first page. Obtained through ListCustomersResponse.next_page_token of the previous CloudChannelService.ListCustomers call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the reseller account to list customers from. Parent uses the format: accounts/{account_id}.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/customers",
              response = {
                ["$ref"] = "GoogleCloudChannelV1ListCustomersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            listPurchasableOffers = {
              description = "Lists the following: * Offers that you can purchase for a customer. * Offers that you can change for an entitlement. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller * INVALID_ARGUMENT: Required request parameters are missing or invalid.",
              flatPath = "v1/accounts/{accountsId}/customers/{customersId}:listPurchasableOffers",
              httpMethod = "GET",
              id = "cloudchannel.accounts.customers.listPurchasableOffers",
              parameterOrder = {
                "customer",
              },
              parameters = {
                ["changeOfferPurchase.entitlement"] = {
                  description = "Required. Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                  location = "query",
                  type = "string",
                },
                ["changeOfferPurchase.newSku"] = {
                  description = "Optional. Resource name of the new target SKU. Provide this SKU when upgrading or downgrading an entitlement. Format: products/{product_id}/skus/{sku_id}",
                  location = "query",
                  type = "string",
                },
                ["createEntitlementPurchase.sku"] = {
                  description = "Required. SKU that the result should be restricted to. Format: products/{product_id}/skus/{sku_id}.",
                  location = "query",
                  type = "string",
                },
                customer = {
                  description = "Required. The resource name of the customer to list Offers for. Format: accounts/{account_id}/customers/{customer_id}.",
                  location = "path",
                  pattern = "^accounts/[^/]+/customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                languageCode = {
                  description = "Optional. The BCP-47 language code. For example, \"en-US\". The response will localize in the corresponding language code, if specified. The default value is \"en-US\".",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. Requested page size. Server might return fewer results than requested. If unspecified, returns at most 100 Offers. The maximum value is 1000; the server will coerce values above 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A token for a page of results other than the first page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}:listPurchasableOffers",
              response = {
                ["$ref"] = "GoogleCloudChannelV1ListPurchasableOffersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            listPurchasableSkus = {
              description = "Lists the following: * SKUs that you can purchase for a customer * SKUs that you can upgrade or downgrade for an entitlement. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid.",
              flatPath = "v1/accounts/{accountsId}/customers/{customersId}:listPurchasableSkus",
              httpMethod = "GET",
              id = "cloudchannel.accounts.customers.listPurchasableSkus",
              parameterOrder = {
                "customer",
              },
              parameters = {
                ["changeOfferPurchase.changeType"] = {
                  description = "Required. Change Type for the entitlement.",
                  enum = {
                    "CHANGE_TYPE_UNSPECIFIED",
                    "UPGRADE",
                    "DOWNGRADE",
                  },
                  enumDescriptions = {
                    "Not used.",
                    "SKU is an upgrade on the current entitlement.",
                    "SKU is a downgrade on the current entitlement.",
                  },
                  location = "query",
                  type = "string",
                },
                ["changeOfferPurchase.entitlement"] = {
                  description = "Required. Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                  location = "query",
                  type = "string",
                },
                ["createEntitlementPurchase.product"] = {
                  description = "Required. List SKUs belonging to this Product. Format: products/{product_id}. Supports products/- to retrieve SKUs for all products.",
                  location = "query",
                  type = "string",
                },
                customer = {
                  description = "Required. The resource name of the customer to list SKUs for. Format: accounts/{account_id}/customers/{customer_id}.",
                  location = "path",
                  pattern = "^accounts/[^/]+/customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                languageCode = {
                  description = "Optional. The BCP-47 language code. For example, \"en-US\". The response will localize in the corresponding language code, if specified. The default value is \"en-US\".",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. Requested page size. Server might return fewer results than requested. If unspecified, returns at most 100 SKUs. The maximum value is 1000; the server will coerce values above 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A token for a page of results other than the first page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+customer}:listPurchasableSkus",
              response = {
                ["$ref"] = "GoogleCloudChannelV1ListPurchasableSkusResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            patch = {
              description = "Updates an existing Customer resource for the reseller or distributor. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: No Customer resource found for the name in the request. Return value: The updated Customer resource.",
              flatPath = "v1/accounts/{accountsId}/customers/{customersId}",
              httpMethod = "PATCH",
              id = "cloudchannel.accounts.customers.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/customers/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "The update mask that applies to the resource. Optional.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudChannelV1Customer",
              },
              response = {
                ["$ref"] = "GoogleCloudChannelV1Customer",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            provisionCloudIdentity = {
              description = "Creates a Cloud Identity for the given customer using the customer's information, or the information provided here. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer was not found. * ALREADY_EXISTS: The customer's primary email already exists. Retry after changing the customer's primary contact email. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata contains an instance of OperationMetadata.",
              flatPath = "v1/accounts/{accountsId}/customers/{customersId}:provisionCloudIdentity",
              httpMethod = "POST",
              id = "cloudchannel.accounts.customers.provisionCloudIdentity",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "Required. Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+customer}:provisionCloudIdentity",
              request = {
                ["$ref"] = "GoogleCloudChannelV1ProvisionCloudIdentityRequest",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            transferEntitlements = {
              description = "Transfers customer entitlements to new reseller. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer or offer resource was not found. * ALREADY_EXISTS: The SKU was already transferred for the customer. * CONDITION_NOT_MET or FAILED_PRECONDITION: * The SKU requires domain verification to transfer, but the domain is not verified. * An Add-On SKU (example, Vault or Drive) is missing the pre-requisite SKU (example, G Suite Basic). * (Developer accounts only) Reseller and resold domain must meet the following naming requirements: * Domain names must start with goog-test. * Domain names must include the reseller domain. * Specify all transferring entitlements. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.",
              flatPath = "v1/accounts/{accountsId}/customers/{customersId}:transferEntitlements",
              httpMethod = "POST",
              id = "cloudchannel.accounts.customers.transferEntitlements",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the reseller's customer account that will receive transferred entitlements. Parent uses the format: accounts/{account_id}/customers/{customer_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:transferEntitlements",
              request = {
                ["$ref"] = "GoogleCloudChannelV1TransferEntitlementsRequest",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
            transferEntitlementsToGoogle = {
              description = "Transfers customer entitlements from their current reseller to Google. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer or offer resource was not found. * ALREADY_EXISTS: The SKU was already transferred for the customer. * CONDITION_NOT_MET or FAILED_PRECONDITION: * The SKU requires domain verification to transfer, but the domain is not verified. * An Add-On SKU (example, Vault or Drive) is missing the pre-requisite SKU (example, G Suite Basic). * (Developer accounts only) Reseller and resold domain must meet the following naming requirements: * Domain names must start with goog-test. * Domain names must include the reseller domain. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The response will contain google.protobuf.Empty on success. The Operation metadata will contain an instance of OperationMetadata.",
              flatPath = "v1/accounts/{accountsId}/customers/{customersId}:transferEntitlementsToGoogle",
              httpMethod = "POST",
              id = "cloudchannel.accounts.customers.transferEntitlementsToGoogle",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the reseller's customer account where the entitlements transfer from. Parent uses the format: accounts/{account_id}/customers/{customer_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:transferEntitlementsToGoogle",
              request = {
                ["$ref"] = "GoogleCloudChannelV1TransferEntitlementsToGoogleRequest",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
          },
          resources = {
            customerRepricingConfigs = {
              methods = {
                create = {
                  description = "Creates a CustomerRepricingConfig. Call this method to set modifications for a specific customer's bill. You can only create configs if the RepricingConfig.effective_invoice_month is a future month. If needed, you can create a config for the current month, with some restrictions. When creating a config for a future month, make sure there are no existing configs for that RepricingConfig.effective_invoice_month. The following restrictions are for creating configs in the current month. * This functionality is reserved for recovering from an erroneous config, and should not be used for regular business cases. * The new config will not modify exports used with other configs. Changes to the config may be immediate, but may take up to 24 hours. * There is a limit of ten configs for any RepricingConfig.EntitlementGranularity.entitlement or RepricingConfig.effective_invoice_month. * The contained CustomerRepricingConfig.repricing_config vaule must be different from the value used in the current config for a RepricingConfig.EntitlementGranularity.entitlement. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * INVALID_ARGUMENT: Missing or invalid required parameters in the request. Also displays if the updated config is for the current month or past months. * NOT_FOUND: The CustomerRepricingConfig specified does not exist or is not associated with the given account. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the updated CustomerRepricingConfig resource, otherwise returns an error.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/customerRepricingConfigs",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.customerRepricingConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of the customer that will receive this repricing config. Parent uses the format: accounts/{account_id}/customers/{customer_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/customerRepricingConfigs",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1CustomerRepricingConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1CustomerRepricingConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                delete = {
                  description = "Deletes the given CustomerRepricingConfig permanently. You can only delete configs if their RepricingConfig.effective_invoice_month is set to a date after the current month. Possible error codes: * PERMISSION_DENIED: The account making the request does not own this customer. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * FAILED_PRECONDITION: The CustomerRepricingConfig is active or in the past. * NOT_FOUND: No CustomerRepricingConfig found for the name in the request.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/customerRepricingConfigs/{customerRepricingConfigsId}",
                  httpMethod = "DELETE",
                  id = "cloudchannel.accounts.customers.customerRepricingConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the customer repricing config rule to delete. Format: accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/customerRepricingConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                get = {
                  description = "Gets information about how a Reseller modifies their bill before sending it to a Customer. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * NOT_FOUND: The CustomerRepricingConfig was not found. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the CustomerRepricingConfig resource, otherwise returns an error.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/customerRepricingConfigs/{customerRepricingConfigsId}",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.customers.customerRepricingConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the CustomerRepricingConfig. Format: accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/customerRepricingConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1CustomerRepricingConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                list = {
                  description = "Lists information about how a Reseller modifies their bill before sending it to a Customer. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * NOT_FOUND: The CustomerRepricingConfig specified does not exist or is not associated with the given account. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the CustomerRepricingConfig resources. The data for each resource is displayed in the ascending order of: * customer ID * RepricingConfig.EntitlementGranularity.entitlement * RepricingConfig.effective_invoice_month * CustomerRepricingConfig.update_time If unsuccessful, returns an error.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/customerRepricingConfigs",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.customers.customerRepricingConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. A filter for [CloudChannelService.ListCustomerRepricingConfigs] results (customer only). You can use this filter when you support a BatchGet-like query. To use the filter, you must set `parent=accounts/{account_id}/customers/-`. Example: customer = accounts/account_id/customers/c1 OR customer = accounts/account_id/customers/c2.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of repricing configs to return. The service may return fewer than this value. If unspecified, returns a maximum of 50 rules. The maximum value is 100; values above 100 will be coerced to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token identifying a page of results beyond the first page. Obtained through ListCustomerRepricingConfigsResponse.next_page_token of the previous CloudChannelService.ListCustomerRepricingConfigs call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the customer. Parent uses the format: accounts/{account_id}/customers/{customer_id}. Supports accounts/{account_id}/customers/- to retrieve configs for all customers.",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/customerRepricingConfigs",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1ListCustomerRepricingConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                patch = {
                  description = "Updates a CustomerRepricingConfig. Call this method to set modifications for a specific customer's bill. This method overwrites the existing CustomerRepricingConfig. You can only update configs if the RepricingConfig.effective_invoice_month is a future month. To make changes to configs for the current month, use CreateCustomerRepricingConfig, taking note of its restrictions. You cannot update the RepricingConfig.effective_invoice_month. When updating a config in the future: * This config must already exist. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * INVALID_ARGUMENT: Missing or invalid required parameters in the request. Also displays if the updated config is for the current month or past months. * NOT_FOUND: The CustomerRepricingConfig specified does not exist or is not associated with the given account. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the updated CustomerRepricingConfig resource, otherwise returns an error.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/customerRepricingConfigs/{customerRepricingConfigsId}",
                  httpMethod = "PATCH",
                  id = "cloudchannel.accounts.customers.customerRepricingConfigs.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. Resource name of the CustomerRepricingConfig. Format: accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/customerRepricingConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1CustomerRepricingConfig",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1CustomerRepricingConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
              },
            },
            entitlements = {
              methods = {
                activate = {
                  description = "Activates a previously suspended entitlement. Entitlements suspended for pending ToS acceptance can't be activated using this method. An entitlement activation is a long-running operation and it updates the state of the customer entitlement. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: Entitlement resource not found. * SUSPENSION_NOT_RESELLER_INITIATED: Can only activate reseller-initiated suspensions and entitlements that have accepted the TOS. * NOT_SUSPENDED: Can only activate suspended entitlements not in an ACTIVE state. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}:activate",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.entitlements.activate",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the entitlement to activate. Name uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:activate",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1ActivateEntitlementRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                cancel = {
                  description = "Cancels a previously fulfilled entitlement. An entitlement cancellation is a long-running operation. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * FAILED_PRECONDITION: There are Google Cloud projects linked to the Google Cloud entitlement's Cloud Billing subaccount. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: Entitlement resource not found. * DELETION_TYPE_NOT_ALLOWED: Cancel is only allowed for Google Workspace add-ons, or entitlements for Google Cloud's development platform. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The response will contain google.protobuf.Empty on success. The Operation metadata will contain an instance of OperationMetadata.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}:cancel",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.entitlements.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the entitlement to cancel. Name uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1CancelEntitlementRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                changeOffer = {
                  description = "Updates the Offer for an existing customer entitlement. An entitlement update is a long-running operation and it updates the entitlement as a result of fulfillment. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: Offer or Entitlement resource not found. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}:changeOffer",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.entitlements.changeOffer",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the entitlement to update. Name uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:changeOffer",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1ChangeOfferRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                changeParameters = {
                  description = "Change parameters of the entitlement. An entitlement update is a long-running operation and it updates the entitlement as a result of fulfillment. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. For example, the number of seats being changed is greater than the allowed number of max seats, or decreasing seats for a commitment based plan. * NOT_FOUND: Entitlement resource not found. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}:changeParameters",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.entitlements.changeParameters",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the entitlement to update. Name uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:changeParameters",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1ChangeParametersRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                changeRenewalSettings = {
                  description = "Updates the renewal settings for an existing customer entitlement. An entitlement update is a long-running operation and it updates the entitlement as a result of fulfillment. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: Entitlement resource not found. * NOT_COMMITMENT_PLAN: Renewal Settings are only applicable for a commitment plan. Can't enable or disable renewals for non-commitment plans. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}:changeRenewalSettings",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.entitlements.changeRenewalSettings",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the entitlement to update. Name uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:changeRenewalSettings",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1ChangeRenewalSettingsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                create = {
                  description = "Creates an entitlement for a customer. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: * Required request parameters are missing or invalid. * There is already a customer entitlement for a SKU from the same product family. * INVALID_VALUE: Make sure the OfferId is valid. If it is, contact Google Channel support for further troubleshooting. * NOT_FOUND: The customer or offer resource was not found. * ALREADY_EXISTS: * The SKU was already purchased for the customer. * The customer's primary email already exists. Retry after changing the customer's primary contact email. * CONDITION_NOT_MET or FAILED_PRECONDITION: * The domain required for purchasing a SKU has not been verified. * A pre-requisite SKU required to purchase an Add-On SKU is missing. For example, Google Workspace Business Starter is required to purchase Vault or Drive. * (Developer accounts only) Reseller and resold domain must meet the following naming requirements: * Domain names must start with goog-test. * Domain names must include the reseller domain. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.entitlements.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The resource name of the reseller's customer account in which to create the entitlement. Parent uses the format: accounts/{account_id}/customers/{customer_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/entitlements",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1CreateEntitlementRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                get = {
                  description = "Returns the requested Entitlement resource. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer entitlement was not found. Return value: The requested Entitlement resource.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.customers.entitlements.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the entitlement to retrieve. Name uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1Entitlement",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                list = {
                  description = "Lists Entitlements belonging to a customer. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. Return value: A list of the customer's Entitlements.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.customers.entitlements.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. Requested page size. Server might return fewer results than requested. If unspecified, return at most 50 entitlements. The maximum value is 100; the server will coerce values above 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. A token for a page of results other than the first page. Obtained using ListEntitlementsResponse.next_page_token of the previous CloudChannelService.ListEntitlements call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the reseller's customer account to list entitlements for. Parent uses the format: accounts/{account_id}/customers/{customer_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/entitlements",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1ListEntitlementsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                lookupOffer = {
                  description = "Returns the requested Offer resource. Possible error codes: * PERMISSION_DENIED: The entitlement doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: Entitlement or offer was not found. Return value: The Offer resource.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}:lookupOffer",
                  httpMethod = "GET",
                  id = "cloudchannel.accounts.customers.entitlements.lookupOffer",
                  parameterOrder = {
                    "entitlement",
                  },
                  parameters = {
                    entitlement = {
                      description = "Required. The resource name of the entitlement to retrieve the Offer. Entitlement uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+entitlement}:lookupOffer",
                  response = {
                    ["$ref"] = "GoogleCloudChannelV1Offer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                startPaidService = {
                  description = "Starts paid service for a trial entitlement. Starts paid service for a trial entitlement immediately. This method is only applicable if a plan is set up for a trial entitlement but has some trial days remaining. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: Entitlement resource not found. * FAILED_PRECONDITION/NOT_IN_TRIAL: This method only works for entitlement on trial plans. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}:startPaidService",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.entitlements.startPaidService",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the entitlement to start a paid service for. Name uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:startPaidService",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1StartPaidServiceRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
                suspend = {
                  description = "Suspends a previously fulfilled entitlement. An entitlement suspension is a long-running operation. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: Entitlement resource not found. * NOT_ACTIVE: Entitlement is not active. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.",
                  flatPath = "v1/accounts/{accountsId}/customers/{customersId}/entitlements/{entitlementsId}:suspend",
                  httpMethod = "POST",
                  id = "cloudchannel.accounts.customers.entitlements.suspend",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the entitlement to suspend. Name uses the format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
                      location = "path",
                      pattern = "^accounts/[^/]+/customers/[^/]+/entitlements/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:suspend",
                  request = {
                    ["$ref"] = "GoogleCloudChannelV1SuspendEntitlementRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/apps.order",
                  },
                },
              },
            },
          },
        },
        offers = {
          methods = {
            list = {
              description = "Lists the Offers the reseller can sell. Possible error codes: * INVALID_ARGUMENT: Required request parameters are missing or invalid.",
              flatPath = "v1/accounts/{accountsId}/offers",
              httpMethod = "GET",
              id = "cloudchannel.accounts.offers.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. The expression to filter results by name (name of the Offer), sku.name (name of the SKU), or sku.product.name (name of the Product). Example 1: sku.product.name=products/p1 AND sku.name!=products/p1/skus/s1 Example 2: name=accounts/a1/offers/o1",
                  location = "query",
                  type = "string",
                },
                languageCode = {
                  description = "Optional. The BCP-47 language code. For example, \"en-US\". The response will localize in the corresponding language code, if specified. The default value is \"en-US\".",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. Requested page size. Server might return fewer results than requested. If unspecified, returns at most 500 Offers. The maximum value is 1000; the server will coerce values above 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A token for a page of results other than the first page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the reseller account from which to list Offers. Parent uses the format: accounts/{account_id}.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/offers",
              response = {
                ["$ref"] = "GoogleCloudChannelV1ListOffersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
          },
        },
        reportJobs = {
          methods = {
            fetchReportResults = {
              description = "Retrieves data generated by CloudChannelReportsService.RunReportJob.",
              flatPath = "v1/accounts/{accountsId}/reportJobs/{reportJobsId}:fetchReportResults",
              httpMethod = "POST",
              id = "cloudchannel.accounts.reportJobs.fetchReportResults",
              parameterOrder = {
                "reportJob",
              },
              parameters = {
                reportJob = {
                  description = "Required. The report job created by CloudChannelReportsService.RunReportJob. Report_job uses the format: accounts/{account_id}/reportJobs/{report_job_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/reportJobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+reportJob}:fetchReportResults",
              request = {
                ["$ref"] = "GoogleCloudChannelV1FetchReportResultsRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudChannelV1FetchReportResultsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.reports.usage.readonly",
              },
            },
          },
        },
        reports = {
          methods = {
            list = {
              description = "Lists the reports that RunReportJob can run. These reports include an ID, a description, and the list of columns that will be in the result.",
              flatPath = "v1/accounts/{accountsId}/reports",
              httpMethod = "GET",
              id = "cloudchannel.accounts.reports.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                languageCode = {
                  description = "Optional. The BCP-47 language code, such as \"en-US\". If specified, the response is localized to the corresponding language code if the original data sources support it. Default is \"en-US\".",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. Requested page size of the report. The server might return fewer results than requested. If unspecified, returns 20 reports. The maximum value is 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A token that specifies a page of results beyond the first page. Obtained through ListReportsResponse.next_page_token of the previous CloudChannelReportsService.ListReports call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the partner account to list available reports for. Parent uses the format: accounts/{account_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/reports",
              response = {
                ["$ref"] = "GoogleCloudChannelV1ListReportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.reports.usage.readonly",
              },
            },
            run = {
              description = "Begins generation of data for a given report. The report identifier is a UID (for example, `613bf59q`). Possible error codes: * PERMISSION_DENIED: The user doesn't have access to this report. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The report identifier was not found. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata contains an instance of OperationMetadata. To get the results of report generation, call CloudChannelReportsService.FetchReportResults with the RunReportJobResponse.report_job.",
              flatPath = "v1/accounts/{accountsId}/reports/{reportsId}:run",
              httpMethod = "POST",
              id = "cloudchannel.accounts.reports.run",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The report's resource name. Specifies the account and report used to generate report data. The report_id identifier is a UID (for example, `613bf59q`). Name uses the format: accounts/{account_id}/reports/{report_id}",
                  location = "path",
                  pattern = "^accounts/[^/]+/reports/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:run",
              request = {
                ["$ref"] = "GoogleCloudChannelV1RunReportJobRequest",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.reports.usage.readonly",
              },
            },
          },
        },
      },
    },
    operations = {
      methods = {
        cancel = {
          description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          flatPath = "v1/operations/{operationsId}:cancel",
          httpMethod = "POST",
          id = "cloudchannel.operations.cancel",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be cancelled.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:cancel",
          request = {
            ["$ref"] = "GoogleLongrunningCancelOperationRequest",
          },
          response = {
            ["$ref"] = "GoogleProtobufEmpty",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        delete = {
          description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "DELETE",
          id = "cloudchannel.operations.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be deleted.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleProtobufEmpty",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "cloudchannel.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        list = {
          description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
          flatPath = "v1/operations",
          httpMethod = "GET",
          id = "cloudchannel.operations.list",
          parameterOrder = {
            "name",
          },
          parameters = {
            filter = {
              description = "The standard list filter.",
              location = "query",
              type = "string",
            },
            name = {
              description = "The name of the operation's parent resource.",
              location = "path",
              pattern = "^operations$",
              required = true,
              type = "string",
            },
            pageSize = {
              description = "The standard list page size.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The standard list page token.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleLongrunningListOperationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
      },
    },
    products = {
      methods = {
        list = {
          description = "Lists the Products the reseller is authorized to sell. Possible error codes: * INVALID_ARGUMENT: Required request parameters are missing or invalid.",
          flatPath = "v1/products",
          httpMethod = "GET",
          id = "cloudchannel.products.list",
          parameterOrder = {},
          parameters = {
            account = {
              description = "Required. The resource name of the reseller account. Format: accounts/{account_id}.",
              location = "query",
              type = "string",
            },
            languageCode = {
              description = "Optional. The BCP-47 language code. For example, \"en-US\". The response will localize in the corresponding language code, if specified. The default value is \"en-US\".",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. Requested page size. Server might return fewer results than requested. If unspecified, returns at most 100 Products. The maximum value is 1000; the server will coerce values above 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A token for a page of results other than the first page.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/products",
          response = {
            ["$ref"] = "GoogleCloudChannelV1ListProductsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
      },
      resources = {
        skus = {
          methods = {
            list = {
              description = "Lists the SKUs for a product the reseller is authorized to sell. Possible error codes: * INVALID_ARGUMENT: Required request parameters are missing or invalid.",
              flatPath = "v1/products/{productsId}/skus",
              httpMethod = "GET",
              id = "cloudchannel.products.skus.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                account = {
                  description = "Required. Resource name of the reseller. Format: accounts/{account_id}.",
                  location = "query",
                  type = "string",
                },
                languageCode = {
                  description = "Optional. The BCP-47 language code. For example, \"en-US\". The response will localize in the corresponding language code, if specified. The default value is \"en-US\".",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. Requested page size. Server might return fewer results than requested. If unspecified, returns at most 100 SKUs. The maximum value is 1000; the server will coerce values above 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A token for a page of results other than the first page. Optional.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the Product to list SKUs for. Parent uses the format: products/{product_id}. Supports products/- to retrieve SKUs for all products.",
                  location = "path",
                  pattern = "^products/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/skus",
              response = {
                ["$ref"] = "GoogleCloudChannelV1ListSkusResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/apps.order",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://cloudchannel.googleapis.com/",
  schemas = {
    GoogleCloudChannelV1ActivateEntitlementRequest = {
      description = "Request message for CloudChannelService.ActivateEntitlement.",
      id = "GoogleCloudChannelV1ActivateEntitlementRequest",
      properties = {
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1AdminUser = {
      description = "Information needed to create an Admin User for Google Workspace.",
      id = "GoogleCloudChannelV1AdminUser",
      properties = {
        email = {
          description = "Primary email of the admin user.",
          type = "string",
        },
        familyName = {
          description = "Family name of the admin user.",
          type = "string",
        },
        givenName = {
          description = "Given name of the admin user.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1AssociationInfo = {
      description = "Association links that an entitlement has to other entitlements.",
      id = "GoogleCloudChannelV1AssociationInfo",
      properties = {
        baseEntitlement = {
          description = "The name of the base entitlement, for which this entitlement is an add-on.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CancelEntitlementRequest = {
      description = "Request message for CloudChannelService.CancelEntitlement.",
      id = "GoogleCloudChannelV1CancelEntitlementRequest",
      properties = {
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ChangeOfferRequest = {
      description = "Request message for CloudChannelService.ChangeOffer.",
      id = "GoogleCloudChannelV1ChangeOfferRequest",
      properties = {
        offer = {
          description = "Required. New Offer. Format: accounts/{account_id}/offers/{offer_id}.",
          type = "string",
        },
        parameters = {
          description = "Optional. Parameters needed to purchase the Offer. To view the available Parameters refer to the Offer.parameter_definitions from the desired offer.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Parameter",
          },
          type = "array",
        },
        purchaseOrderId = {
          description = "Optional. Purchase order id provided by the reseller.",
          type = "string",
        },
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ChangeParametersRequest = {
      description = "Request message for CloudChannelService.ChangeParametersRequest.",
      id = "GoogleCloudChannelV1ChangeParametersRequest",
      properties = {
        parameters = {
          description = "Required. Entitlement parameters to update. You can only change editable parameters. To view the available Parameters for a request, refer to the Offer.parameter_definitions from the desired offer.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Parameter",
          },
          type = "array",
        },
        purchaseOrderId = {
          description = "Optional. Purchase order ID provided by the reseller.",
          type = "string",
        },
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ChangeRenewalSettingsRequest = {
      description = "Request message for CloudChannelService.ChangeRenewalSettings.",
      id = "GoogleCloudChannelV1ChangeRenewalSettingsRequest",
      properties = {
        renewalSettings = {
          ["$ref"] = "GoogleCloudChannelV1RenewalSettings",
          description = "Required. New renewal settings.",
        },
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ChannelPartnerLink = {
      description = "Entity representing a link between distributors and their indirect resellers in an n-tier resale channel.",
      id = "GoogleCloudChannelV1ChannelPartnerLink",
      properties = {
        channelPartnerCloudIdentityInfo = {
          ["$ref"] = "GoogleCloudChannelV1CloudIdentityInfo",
          description = "Output only. Cloud Identity info of the channel partner (IR).",
          readOnly = true,
        },
        createTime = {
          description = "Output only. Timestamp of when the channel partner link is created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        inviteLinkUri = {
          description = "Output only. URI of the web page where partner accepts the link invitation.",
          readOnly = true,
          type = "string",
        },
        linkState = {
          description = "Required. State of the channel partner link.",
          enum = {
            "CHANNEL_PARTNER_LINK_STATE_UNSPECIFIED",
            "INVITED",
            "ACTIVE",
            "REVOKED",
            "SUSPENDED",
          },
          enumDescriptions = {
            "Not used.",
            "An invitation has been sent to the reseller to create a channel partner link.",
            "Status when the reseller is active.",
            "Status when the reseller has been revoked by the distributor.",
            "Status when the reseller is suspended by Google or distributor.",
          },
          type = "string",
        },
        name = {
          description = "Output only. Resource name for the channel partner link, in the format accounts/{account_id}/channelPartnerLinks/{id}.",
          readOnly = true,
          type = "string",
        },
        publicId = {
          description = "Output only. Public identifier that a customer must use to generate a transfer token to move to this distributor-reseller combination.",
          readOnly = true,
          type = "string",
        },
        resellerCloudIdentityId = {
          description = "Required. Cloud Identity ID of the linked reseller.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Timestamp of when the channel partner link is updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ChannelPartnerRepricingConfig = {
      description = "Configuration for how a distributor will rebill a channel partner (also known as a distributor-authorized reseller).",
      id = "GoogleCloudChannelV1ChannelPartnerRepricingConfig",
      properties = {
        name = {
          description = "Output only. Resource name of the ChannelPartnerRepricingConfig. Format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.",
          readOnly = true,
          type = "string",
        },
        repricingConfig = {
          ["$ref"] = "GoogleCloudChannelV1RepricingConfig",
          description = "Required. The configuration for bill modifications made by a reseller before sending it to ChannelPartner.",
        },
        updateTime = {
          description = "Output only. Timestamp of an update to the repricing rule. If `update_time` is after RepricingConfig.effective_invoice_month then it indicates this was set mid-month.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest = {
      description = "Request message for CloudChannelService.CheckCloudIdentityAccountsExist.",
      id = "GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest",
      properties = {
        domain = {
          description = "Required. Domain to fetch for Cloud Identity account customer.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse = {
      description = "Response message for CloudChannelService.CheckCloudIdentityAccountsExist.",
      id = "GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse",
      properties = {
        cloudIdentityAccounts = {
          description = "The Cloud Identity accounts associated with the domain.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1CloudIdentityCustomerAccount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CloudIdentityCustomerAccount = {
      description = "Entity representing a Cloud Identity account that may be associated with a Channel Services API partner.",
      id = "GoogleCloudChannelV1CloudIdentityCustomerAccount",
      properties = {
        customerCloudIdentityId = {
          description = "If existing = true, the Cloud Identity ID of the customer.",
          type = "string",
        },
        customerName = {
          description = "If owned = true, the name of the customer that owns the Cloud Identity account. Customer_name uses the format: accounts/{account_id}/customers/{customer_id}",
          type = "string",
        },
        existing = {
          description = "Returns true if a Cloud Identity account exists for a specific domain.",
          type = "boolean",
        },
        owned = {
          description = "Returns true if the Cloud Identity account is associated with a customer of the Channel Services partner.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CloudIdentityInfo = {
      description = "Cloud Identity information for the Cloud Channel Customer.",
      id = "GoogleCloudChannelV1CloudIdentityInfo",
      properties = {
        adminConsoleUri = {
          description = "Output only. URI of Customer's Admin console dashboard.",
          readOnly = true,
          type = "string",
        },
        alternateEmail = {
          description = "The alternate email.",
          type = "string",
        },
        customerType = {
          description = "CustomerType indicates verification type needed for using services.",
          enum = {
            "CUSTOMER_TYPE_UNSPECIFIED",
            "DOMAIN",
            "TEAM",
          },
          enumDescriptions = {
            "Not used.",
            "Domain-owning customer which needs domain verification to use services.",
            "Team customer which needs email verification to use services.",
          },
          type = "string",
        },
        eduData = {
          ["$ref"] = "GoogleCloudChannelV1EduData",
          description = "Edu information about the customer.",
        },
        isDomainVerified = {
          description = "Output only. Whether the domain is verified. This field is not returned for a Customer's cloud_identity_info resource. Partners can use the domains.get() method of the Workspace SDK's Directory API, or listen to the PRIMARY_DOMAIN_VERIFIED Pub/Sub event in to track domain verification of their resolve Workspace customers.",
          readOnly = true,
          type = "boolean",
        },
        languageCode = {
          description = "Language code.",
          type = "string",
        },
        phoneNumber = {
          description = "Phone number associated with the Cloud Identity.",
          type = "string",
        },
        primaryDomain = {
          description = "Output only. The primary domain name.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Column = {
      description = "The definition of a report column. Specifies the data properties in the corresponding position of the report rows.",
      id = "GoogleCloudChannelV1Column",
      properties = {
        columnId = {
          description = "The unique name of the column (for example, customer_domain, channel_partner, customer_cost). You can use column IDs in RunReportJobRequest.filter. To see all reports and their columns, call CloudChannelReportsService.ListReports.",
          type = "string",
        },
        dataType = {
          description = "The type of the values for this column.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING",
            "INT",
            "DECIMAL",
            "MONEY",
            "DATE",
            "DATE_TIME",
          },
          enumDescriptions = {
            "Not used.",
            "ReportValues for this column will use string_value.",
            "ReportValues for this column will use int_value.",
            "ReportValues for this column will use decimal_value.",
            "ReportValues for this column will use money_value.",
            "ReportValues for this column will use date_value.",
            "ReportValues for this column will use date_time_value.",
          },
          type = "string",
        },
        displayName = {
          description = "The column's display name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CommitmentSettings = {
      description = "Commitment settings for commitment-based offers.",
      id = "GoogleCloudChannelV1CommitmentSettings",
      properties = {
        endTime = {
          description = "Output only. Commitment end timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        renewalSettings = {
          ["$ref"] = "GoogleCloudChannelV1RenewalSettings",
          description = "Optional. Renewal settings applicable for a commitment-based Offer.",
        },
        startTime = {
          description = "Output only. Commitment start timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ConditionalOverride = {
      description = "Specifies the override to conditionally apply.",
      id = "GoogleCloudChannelV1ConditionalOverride",
      properties = {
        adjustment = {
          ["$ref"] = "GoogleCloudChannelV1RepricingAdjustment",
          description = "Required. Information about the applied override's adjustment.",
        },
        rebillingBasis = {
          description = "Required. The RebillingBasis to use for the applied override. Shows the relative cost based on your repricing costs.",
          enum = {
            "REBILLING_BASIS_UNSPECIFIED",
            "COST_AT_LIST",
            "DIRECT_CUSTOMER_COST",
          },
          enumDescriptions = {
            "Not used.",
            "Use the list cost, also known as the MSRP.",
            "Pass through all discounts except the Reseller Program Discount. If this is the default cost base and no adjustments are specified, the output cost will be exactly what the customer would see if they viewed the bill in the Google Cloud Console.",
          },
          type = "string",
        },
        repricingCondition = {
          ["$ref"] = "GoogleCloudChannelV1RepricingCondition",
          description = "Required. Specifies the condition which, if met, will apply the override.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Constraints = {
      description = "Represents the constraints for buying the Offer.",
      id = "GoogleCloudChannelV1Constraints",
      properties = {
        customerConstraints = {
          ["$ref"] = "GoogleCloudChannelV1CustomerConstraints",
          description = "Represents constraints required to purchase the Offer for a customer.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ContactInfo = {
      description = "Contact information for a customer account.",
      id = "GoogleCloudChannelV1ContactInfo",
      properties = {
        displayName = {
          description = "Output only. The customer account contact's display name, formatted as a combination of the customer's first and last name.",
          readOnly = true,
          type = "string",
        },
        email = {
          description = "The customer account's contact email. Required for entitlements that create admin.google.com accounts, and serves as the customer's username for those accounts. Use this email to invite Team customers.",
          type = "string",
        },
        firstName = {
          description = "The customer account contact's first name. Optional for Team customers.",
          type = "string",
        },
        lastName = {
          description = "The customer account contact's last name. Optional for Team customers.",
          type = "string",
        },
        phone = {
          description = "The customer account's contact phone number.",
          type = "string",
        },
        title = {
          description = "Optional. The customer account contact's job title.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CreateEntitlementRequest = {
      description = "Request message for CloudChannelService.CreateEntitlement",
      id = "GoogleCloudChannelV1CreateEntitlementRequest",
      properties = {
        entitlement = {
          ["$ref"] = "GoogleCloudChannelV1Entitlement",
          description = "Required. The entitlement to create.",
        },
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Customer = {
      description = "Entity representing a customer of a reseller or distributor.",
      id = "GoogleCloudChannelV1Customer",
      properties = {
        alternateEmail = {
          description = "Secondary contact email. You need to provide an alternate email to create different domains if a primary contact email already exists. Users will receive a notification with credentials when you create an admin.google.com account. Secondary emails are also recovery email addresses. Alternate emails are optional when you create Team customers.",
          type = "string",
        },
        channelPartnerId = {
          description = "Cloud Identity ID of the customer's channel partner. Populated only if a channel partner exists for this customer.",
          type = "string",
        },
        cloudIdentityId = {
          description = "Output only. The customer's Cloud Identity ID if the customer has a Cloud Identity resource.",
          readOnly = true,
          type = "string",
        },
        cloudIdentityInfo = {
          ["$ref"] = "GoogleCloudChannelV1CloudIdentityInfo",
          description = "Output only. Cloud Identity information for the customer. Populated only if a Cloud Identity account exists for this customer.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. Time when the customer was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        domain = {
          description = "Required. The customer's primary domain. Must match the primary contact email's domain.",
          type = "string",
        },
        languageCode = {
          description = "Optional. The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.",
          type = "string",
        },
        name = {
          description = "Output only. Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}",
          readOnly = true,
          type = "string",
        },
        orgDisplayName = {
          description = "Required. Name of the organization that the customer entity represents.",
          type = "string",
        },
        orgPostalAddress = {
          ["$ref"] = "GoogleTypePostalAddress",
          description = "Required. The organization address for the customer. To enforce US laws and embargoes, we require a region and zip code. You must provide valid addresses for every customer. To set the customer's language, use the Customer-level language code.",
        },
        primaryContactInfo = {
          ["$ref"] = "GoogleCloudChannelV1ContactInfo",
          description = "Primary contact info.",
        },
        updateTime = {
          description = "Output only. Time when the customer was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CustomerConstraints = {
      description = "Represents constraints required to purchase the Offer for a customer.",
      id = "GoogleCloudChannelV1CustomerConstraints",
      properties = {
        allowedCustomerTypes = {
          description = "Allowed Customer Type.",
          items = {
            enum = {
              "CUSTOMER_TYPE_UNSPECIFIED",
              "DOMAIN",
              "TEAM",
            },
            enumDescriptions = {
              "Not used.",
              "Domain-owning customer which needs domain verification to use services.",
              "Team customer which needs email verification to use services.",
            },
            type = "string",
          },
          type = "array",
        },
        allowedRegions = {
          description = "Allowed geographical regions of the customer.",
          items = {
            type = "string",
          },
          type = "array",
        },
        promotionalOrderTypes = {
          description = "Allowed Promotional Order Type. Present for Promotional offers.",
          items = {
            enum = {
              "PROMOTIONAL_TYPE_UNSPECIFIED",
              "NEW_UPGRADE",
              "TRANSFER",
              "PROMOTION_SWITCH",
            },
            enumDescriptions = {
              "Not used.",
              "Order used for new customers, trial conversions and upgrades.",
              "All orders for transferring an existing customer.",
              "Orders for modifying an existing customer's promotion on the same SKU.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CustomerEvent = {
      description = "Represents Pub/Sub message content describing customer update.",
      id = "GoogleCloudChannelV1CustomerEvent",
      properties = {
        customer = {
          description = "Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}",
          type = "string",
        },
        eventType = {
          description = "Type of event which happened on the customer.",
          enum = {
            "TYPE_UNSPECIFIED",
            "PRIMARY_DOMAIN_CHANGED",
            "PRIMARY_DOMAIN_VERIFIED",
          },
          enumDescriptions = {
            "Not used.",
            "Primary domain for customer was changed.",
            "Primary domain of the customer has been verified.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1CustomerRepricingConfig = {
      description = "Configuration for how a reseller will reprice a Customer.",
      id = "GoogleCloudChannelV1CustomerRepricingConfig",
      properties = {
        name = {
          description = "Output only. Resource name of the CustomerRepricingConfig. Format: accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.",
          readOnly = true,
          type = "string",
        },
        repricingConfig = {
          ["$ref"] = "GoogleCloudChannelV1RepricingConfig",
          description = "Required. The configuration for bill modifications made by a reseller before sending it to customers.",
        },
        updateTime = {
          description = "Output only. Timestamp of an update to the repricing rule. If `update_time` is after RepricingConfig.effective_invoice_month then it indicates this was set mid-month.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1DateRange = {
      description = "A representation of usage or invoice date ranges.",
      id = "GoogleCloudChannelV1DateRange",
      properties = {
        invoiceEndDate = {
          ["$ref"] = "GoogleTypeDate",
          description = "The latest invoice date (exclusive). If your product uses monthly invoices, and this value is not the beginning of a month, this will adjust the date to the first day of the following month.",
        },
        invoiceStartDate = {
          ["$ref"] = "GoogleTypeDate",
          description = "The earliest invoice date (inclusive). If your product uses monthly invoices, and this value is not the beginning of a month, this will adjust the date to the first day of the given month.",
        },
        usageEndDateTime = {
          ["$ref"] = "GoogleTypeDateTime",
          description = "The latest usage date time (exclusive). If you use time groupings (daily, weekly, etc), each group uses midnight to midnight (Pacific time). The usage end date is rounded down to include all usage from the specified date. We recommend that clients pass `usage_start_date_time` in Pacific time.",
        },
        usageStartDateTime = {
          ["$ref"] = "GoogleTypeDateTime",
          description = "The earliest usage date time (inclusive). If you use time groupings (daily, weekly, etc), each group uses midnight to midnight (Pacific time). The usage start date is rounded down to include all usage from the specified date. We recommend that clients pass `usage_start_date_time` in Pacific time.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1EduData = {
      description = "Required Edu Attributes",
      id = "GoogleCloudChannelV1EduData",
      properties = {
        instituteSize = {
          description = "Size of the institute.",
          enum = {
            "INSTITUTE_SIZE_UNSPECIFIED",
            "SIZE_1_100",
            "SIZE_101_500",
            "SIZE_501_1000",
            "SIZE_1001_2000",
            "SIZE_2001_5000",
            "SIZE_5001_10000",
            "SIZE_10001_OR_MORE",
          },
          enumDescriptions = {
            "Not used.",
            "1 - 100",
            "101 - 500",
            "501 - 1,000",
            "1,001 - 2,000",
            "2,001 - 5,000",
            "5,001 - 10,000",
            "10,001 +",
          },
          type = "string",
        },
        instituteType = {
          description = "Designated institute type of customer.",
          enum = {
            "INSTITUTE_TYPE_UNSPECIFIED",
            "K12",
            "UNIVERSITY",
          },
          enumDescriptions = {
            "Not used.",
            "Elementary/Secondary Schools & Districts",
            "Higher Education Universities & Colleges",
          },
          type = "string",
        },
        website = {
          description = "Web address for the edu customer's institution.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Entitlement = {
      description = "An entitlement is a representation of a customer's ability to use a service.",
      id = "GoogleCloudChannelV1Entitlement",
      properties = {
        associationInfo = {
          ["$ref"] = "GoogleCloudChannelV1AssociationInfo",
          description = "Association information to other entitlements.",
        },
        commitmentSettings = {
          ["$ref"] = "GoogleCloudChannelV1CommitmentSettings",
          description = "Commitment settings for a commitment-based Offer. Required for commitment based offers.",
        },
        createTime = {
          description = "Output only. The time at which the entitlement is created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Resource name of an entitlement in the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}.",
          readOnly = true,
          type = "string",
        },
        offer = {
          description = "Required. The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.",
          type = "string",
        },
        parameters = {
          description = "Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. The response may include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. - max_units: The maximum assignable units for a flexible offer. - num_units: The total commitment for commitment-based offers.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Parameter",
          },
          type = "array",
        },
        provisionedService = {
          ["$ref"] = "GoogleCloudChannelV1ProvisionedService",
          description = "Output only. Service provisioning details for the entitlement.",
          readOnly = true,
        },
        provisioningState = {
          description = "Output only. Current provisioning state of the entitlement.",
          enum = {
            "PROVISIONING_STATE_UNSPECIFIED",
            "ACTIVE",
            "SUSPENDED",
          },
          enumDescriptions = {
            "Not used.",
            "The entitlement is currently active.",
            "The entitlement is currently suspended.",
          },
          readOnly = true,
          type = "string",
        },
        purchaseOrderId = {
          description = "Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.",
          type = "string",
        },
        suspensionReasons = {
          description = "Output only. Enumerable of all current suspension reasons for an entitlement.",
          items = {
            enum = {
              "SUSPENSION_REASON_UNSPECIFIED",
              "RESELLER_INITIATED",
              "TRIAL_ENDED",
              "RENEWAL_WITH_TYPE_CANCEL",
              "PENDING_TOS_ACCEPTANCE",
              "OTHER",
            },
            enumDescriptions = {
              "Not used.",
              "Entitlement was manually suspended by the Reseller.",
              "Trial ended.",
              "Entitlement renewal was canceled.",
              "Entitlement was automatically suspended on creation for pending ToS acceptance on customer.",
              "Other reasons (internal reasons, abuse, etc.).",
            },
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        trialSettings = {
          ["$ref"] = "GoogleCloudChannelV1TrialSettings",
          description = "Output only. Settings for trial offers.",
          readOnly = true,
        },
        updateTime = {
          description = "Output only. The time at which the entitlement is updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1EntitlementEvent = {
      description = "Represents Pub/Sub message content describing entitlement update.",
      id = "GoogleCloudChannelV1EntitlementEvent",
      properties = {
        entitlement = {
          description = "Resource name of an entitlement of the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
          type = "string",
        },
        eventType = {
          description = "Type of event which happened on the entitlement.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CREATED",
            "PRICE_PLAN_SWITCHED",
            "COMMITMENT_CHANGED",
            "RENEWED",
            "SUSPENDED",
            "ACTIVATED",
            "CANCELLED",
            "SKU_CHANGED",
            "RENEWAL_SETTING_CHANGED",
            "PAID_SERVICE_STARTED",
            "LICENSE_ASSIGNMENT_CHANGED",
            "LICENSE_CAP_CHANGED",
          },
          enumDescriptions = {
            "Not used.",
            "A new entitlement was created.",
            "The offer type associated with an entitlement was changed. This is not triggered if an entitlement converts from a commit offer to a flexible offer as part of a renewal.",
            "Annual commitment for a commit plan was changed.",
            "An annual entitlement was renewed.",
            "Entitlement was suspended.",
            "Entitlement was unsuspended.",
            "Entitlement was cancelled.",
            "Entitlement was upgraded or downgraded (e.g. from Google Workspace Business Standard to Google Workspace Business Plus).",
            "The renewal settings of an entitlement has changed.",
            "Paid service has started on trial entitlement.",
            "License was assigned to or revoked from a user.",
            "License cap was changed for the entitlement.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1FetchReportResultsRequest = {
      description = "Request message for CloudChannelReportsService.FetchReportResults.",
      id = "GoogleCloudChannelV1FetchReportResultsRequest",
      properties = {
        pageSize = {
          description = "Optional. Requested page size of the report. The server may return fewer results than requested. If you don't specify a page size, the server uses a sensible default (may change over time). The maximum value is 30,000; the server will change larger values to 30,000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. A token that specifies a page of results beyond the first page. Obtained through FetchReportResultsResponse.next_page_token of the previous CloudChannelReportsService.FetchReportResults call.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1FetchReportResultsResponse = {
      description = "Response message for CloudChannelReportsService.FetchReportResults. Contains a tabular representation of the report results.",
      id = "GoogleCloudChannelV1FetchReportResultsResponse",
      properties = {
        nextPageToken = {
          description = "Pass this token to FetchReportResultsRequest.page_token to retrieve the next page of results.",
          type = "string",
        },
        reportMetadata = {
          ["$ref"] = "GoogleCloudChannelV1ReportResultsMetadata",
          description = "The metadata for the report results (display name, columns, row count, and date ranges).",
        },
        rows = {
          description = "The report's lists of values. Each row follows the settings and ordering of the columns from `report_metadata`.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Row",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ImportCustomerRequest = {
      description = "Request message for CloudChannelService.ImportCustomer",
      id = "GoogleCloudChannelV1ImportCustomerRequest",
      properties = {
        authToken = {
          description = "Optional. The super admin of the resold customer generates this token to authorize a reseller to access their Cloud Identity and purchase entitlements on their behalf. You can omit this token after authorization. See https://support.google.com/a/answer/7643790 for more details.",
          type = "string",
        },
        channelPartnerId = {
          description = "Optional. Cloud Identity ID of a channel partner who will be the direct reseller for the customer's order. This field is required for 2-tier transfer scenarios and can be provided via the request Parent binding as well.",
          type = "string",
        },
        cloudIdentityId = {
          description = "Required. Customer's Cloud Identity ID",
          type = "string",
        },
        customer = {
          description = "Optional. Specifies the customer that will receive imported Cloud Identity information. Format: accounts/{account_id}/customers/{customer_id}",
          type = "string",
        },
        domain = {
          description = "Required. Customer domain.",
          type = "string",
        },
        overwriteIfExists = {
          description = "Required. Choose to overwrite an existing customer if found. This must be set to true if there is an existing customer with a conflicting region code or domain.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListChannelPartnerLinksResponse = {
      description = "Response message for CloudChannelService.ListChannelPartnerLinks.",
      id = "GoogleCloudChannelV1ListChannelPartnerLinksResponse",
      properties = {
        channelPartnerLinks = {
          description = "The Channel partner links for a reseller.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1ChannelPartnerLink",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass to ListChannelPartnerLinksRequest.page_token to obtain that page.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse = {
      description = "Response message for CloudChannelService.ListChannelPartnerRepricingConfigs.",
      id = "GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse",
      properties = {
        channelPartnerRepricingConfigs = {
          description = "The repricing configs for this channel partner.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1ChannelPartnerRepricingConfig",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass to ListChannelPartnerRepricingConfigsRequest.page_token to obtain that page.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListCustomerRepricingConfigsResponse = {
      description = "Response message for CloudChannelService.ListCustomerRepricingConfigs.",
      id = "GoogleCloudChannelV1ListCustomerRepricingConfigsResponse",
      properties = {
        customerRepricingConfigs = {
          description = "The repricing configs for this channel partner.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1CustomerRepricingConfig",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass to ListCustomerRepricingConfigsRequest.page_token to obtain that page.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListCustomersResponse = {
      description = "Response message for CloudChannelService.ListCustomers.",
      id = "GoogleCloudChannelV1ListCustomersResponse",
      properties = {
        customers = {
          description = "The customers belonging to a reseller or distributor.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Customer",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass to ListCustomersRequest.page_token to obtain that page.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListEntitlementsResponse = {
      description = "Response message for CloudChannelService.ListEntitlements.",
      id = "GoogleCloudChannelV1ListEntitlementsResponse",
      properties = {
        entitlements = {
          description = "The reseller customer's entitlements.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Entitlement",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to list the next page of results. Pass to ListEntitlementsRequest.page_token to obtain that page.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListOffersResponse = {
      description = "Response message for ListOffers.",
      id = "GoogleCloudChannelV1ListOffersResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results.",
          type = "string",
        },
        offers = {
          description = "The list of Offers requested.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Offer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListProductsResponse = {
      description = "Response message for ListProducts.",
      id = "GoogleCloudChannelV1ListProductsResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results.",
          type = "string",
        },
        products = {
          description = "List of Products requested.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Product",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListPurchasableOffersResponse = {
      description = "Response message for ListPurchasableOffers.",
      id = "GoogleCloudChannelV1ListPurchasableOffersResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results.",
          type = "string",
        },
        purchasableOffers = {
          description = "The list of Offers requested.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1PurchasableOffer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListPurchasableSkusResponse = {
      description = "Response message for ListPurchasableSkus.",
      id = "GoogleCloudChannelV1ListPurchasableSkusResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results.",
          type = "string",
        },
        purchasableSkus = {
          description = "The list of SKUs requested.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1PurchasableSku",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListReportsResponse = {
      description = "Response message for CloudChannelReportsService.ListReports.",
      id = "GoogleCloudChannelV1ListReportsResponse",
      properties = {
        nextPageToken = {
          description = "Pass this token to FetchReportResultsRequest.page_token to retrieve the next page of results.",
          type = "string",
        },
        reports = {
          description = "The reports available to the partner.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Report",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListSkusResponse = {
      description = "Response message for ListSkus.",
      id = "GoogleCloudChannelV1ListSkusResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results.",
          type = "string",
        },
        skus = {
          description = "The list of SKUs requested.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Sku",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListSubscribersResponse = {
      description = "Response Message for ListSubscribers.",
      id = "GoogleCloudChannelV1ListSubscribersResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        serviceAccounts = {
          description = "List of service accounts which have subscriber access to the topic.",
          items = {
            type = "string",
          },
          type = "array",
        },
        topic = {
          description = "Name of the topic registered with the reseller.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListTransferableOffersRequest = {
      description = "Request message for CloudChannelService.ListTransferableOffers",
      id = "GoogleCloudChannelV1ListTransferableOffersRequest",
      properties = {
        cloudIdentityId = {
          description = "Customer's Cloud Identity ID",
          type = "string",
        },
        customerName = {
          description = "A reseller should create a customer and use the resource name of that customer here.",
          type = "string",
        },
        languageCode = {
          description = "Optional. The BCP-47 language code. For example, \"en-US\". The response will localize in the corresponding language code, if specified. The default value is \"en-US\".",
          type = "string",
        },
        pageSize = {
          description = "Requested page size. Server might return fewer results than requested. If unspecified, returns at most 100 offers. The maximum value is 1000; the server will coerce values above 1000.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "A token for a page of results other than the first page. Obtained using ListTransferableOffersResponse.next_page_token of the previous CloudChannelService.ListTransferableOffers call.",
          type = "string",
        },
        sku = {
          description = "Required. The SKU to look up Offers for.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListTransferableOffersResponse = {
      description = "Response message for CloudChannelService.ListTransferableOffers.",
      id = "GoogleCloudChannelV1ListTransferableOffersResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass to ListTransferableOffersRequest.page_token to obtain that page.",
          type = "string",
        },
        transferableOffers = {
          description = "Information about Offers for a customer that can be used for transfer.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1TransferableOffer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListTransferableSkusRequest = {
      description = "Request message for CloudChannelService.ListTransferableSkus",
      id = "GoogleCloudChannelV1ListTransferableSkusRequest",
      properties = {
        authToken = {
          description = "Optional. The super admin of the resold customer generates this token to authorize a reseller to access their Cloud Identity and purchase entitlements on their behalf. You can omit this token after authorization. See https://support.google.com/a/answer/7643790 for more details.",
          type = "string",
        },
        cloudIdentityId = {
          description = "Customer's Cloud Identity ID",
          type = "string",
        },
        customerName = {
          description = "A reseller is required to create a customer and use the resource name of the created customer here. Customer_name uses the format: accounts/{account_id}/customers/{customer_id}",
          type = "string",
        },
        languageCode = {
          description = "The BCP-47 language code. For example, \"en-US\". The response will localize in the corresponding language code, if specified. The default value is \"en-US\". Optional.",
          type = "string",
        },
        pageSize = {
          description = "The requested page size. Server might return fewer results than requested. If unspecified, returns at most 100 SKUs. The maximum value is 1000; the server will coerce values above 1000. Optional.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "A token for a page of results other than the first page. Obtained using ListTransferableSkusResponse.next_page_token of the previous CloudChannelService.ListTransferableSkus call. Optional.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ListTransferableSkusResponse = {
      description = "Response message for CloudChannelService.ListTransferableSkus.",
      id = "GoogleCloudChannelV1ListTransferableSkusResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass to ListTransferableSkusRequest.page_token to obtain that page.",
          type = "string",
        },
        transferableSkus = {
          description = "Information about existing SKUs for a customer that needs a transfer.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1TransferableSku",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1MarketingInfo = {
      description = "Represents the marketing information for a Product, SKU or Offer.",
      id = "GoogleCloudChannelV1MarketingInfo",
      properties = {
        defaultLogo = {
          ["$ref"] = "GoogleCloudChannelV1Media",
          description = "Default logo.",
        },
        description = {
          description = "Human readable description. Description can contain HTML.",
          type = "string",
        },
        displayName = {
          description = "Human readable name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Media = {
      description = "Represents media information.",
      id = "GoogleCloudChannelV1Media",
      properties = {
        content = {
          description = "URL of the media.",
          type = "string",
        },
        title = {
          description = "Title of the media.",
          type = "string",
        },
        type = {
          description = "Type of the media.",
          enum = {
            "MEDIA_TYPE_UNSPECIFIED",
            "MEDIA_TYPE_IMAGE",
          },
          enumDescriptions = {
            "Not used.",
            "Type of image.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Offer = {
      description = "Represents an offer made to resellers for purchase. An offer is associated with a Sku, has a plan for payment, a price, and defines the constraints for buying.",
      id = "GoogleCloudChannelV1Offer",
      properties = {
        constraints = {
          ["$ref"] = "GoogleCloudChannelV1Constraints",
          description = "Constraints on transacting the Offer.",
        },
        dealCode = {
          description = "The deal code of the offer to get a special promotion or discount.",
          type = "string",
        },
        endTime = {
          description = "Output only. End of the Offer validity time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        marketingInfo = {
          ["$ref"] = "GoogleCloudChannelV1MarketingInfo",
          description = "Marketing information for the Offer.",
        },
        name = {
          description = "Resource Name of the Offer. Format: accounts/{account_id}/offers/{offer_id}",
          type = "string",
        },
        parameterDefinitions = {
          description = "Parameters required to use current Offer to purchase.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1ParameterDefinition",
          },
          type = "array",
        },
        plan = {
          ["$ref"] = "GoogleCloudChannelV1Plan",
          description = "Describes the payment plan for the Offer.",
        },
        priceByResources = {
          description = "Price for each monetizable resource type.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1PriceByResource",
          },
          type = "array",
        },
        sku = {
          ["$ref"] = "GoogleCloudChannelV1Sku",
          description = "SKU the offer is associated with.",
        },
        startTime = {
          description = "Start of the Offer validity time.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1OperationMetadata = {
      description = "Provides contextual information about a google.longrunning.Operation.",
      id = "GoogleCloudChannelV1OperationMetadata",
      properties = {
        operationType = {
          description = "The RPC that initiated this Long Running Operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE_ENTITLEMENT",
            "CHANGE_RENEWAL_SETTINGS",
            "START_PAID_SERVICE",
            "ACTIVATE_ENTITLEMENT",
            "SUSPEND_ENTITLEMENT",
            "CANCEL_ENTITLEMENT",
            "TRANSFER_ENTITLEMENTS",
            "TRANSFER_ENTITLEMENTS_TO_GOOGLE",
            "CHANGE_OFFER",
            "CHANGE_PARAMETERS",
            "PROVISION_CLOUD_IDENTITY",
          },
          enumDescriptions = {
            "Not used.",
            "Long Running Operation was triggered by CreateEntitlement.",
            "Long Running Operation was triggered by ChangeRenewalSettings.",
            "Long Running Operation was triggered by StartPaidService.",
            "Long Running Operation was triggered by ActivateEntitlement.",
            "Long Running Operation was triggered by SuspendEntitlement.",
            "Long Running Operation was triggered by CancelEntitlement.",
            "Long Running Operation was triggered by TransferEntitlements.",
            "Long Running Operation was triggered by TransferEntitlementsToGoogle.",
            "Long Running Operation was triggered by ChangeOffer.",
            "Long Running Operation was triggered by ChangeParameters.",
            "Long Running Operation was triggered by ProvisionCloudIdentity.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Parameter = {
      description = "Definition for extended entitlement parameters.",
      id = "GoogleCloudChannelV1Parameter",
      properties = {
        editable = {
          description = "Output only. Specifies whether this parameter is allowed to be changed. For example, for a Google Workspace Business Starter entitlement in commitment plan, num_units is editable when entitlement is active.",
          readOnly = true,
          type = "boolean",
        },
        name = {
          description = "Name of the parameter.",
          type = "string",
        },
        value = {
          ["$ref"] = "GoogleCloudChannelV1Value",
          description = "Value of the parameter.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ParameterDefinition = {
      description = "Parameter's definition. Specifies what parameter is required to use the current Offer to purchase.",
      id = "GoogleCloudChannelV1ParameterDefinition",
      properties = {
        allowedValues = {
          description = "If not empty, parameter values must be drawn from this list. For example, [us-west1, us-west2, ...] Applicable to STRING parameter type.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Value",
          },
          type = "array",
        },
        maxValue = {
          ["$ref"] = "GoogleCloudChannelV1Value",
          description = "Maximum value of the parameter, if applicable. Inclusive. For example, maximum seats when purchasing Google Workspace Business Standard. Applicable to INT64 and DOUBLE parameter types.",
        },
        minValue = {
          ["$ref"] = "GoogleCloudChannelV1Value",
          description = "Minimal value of the parameter, if applicable. Inclusive. For example, minimal commitment when purchasing Anthos is 0.01. Applicable to INT64 and DOUBLE parameter types.",
        },
        name = {
          description = "Name of the parameter.",
          type = "string",
        },
        optional = {
          description = "If set to true, parameter is optional to purchase this Offer.",
          type = "boolean",
        },
        parameterType = {
          description = "Data type of the parameter. Minimal value, Maximum value and allowed values will use specified data type here.",
          enum = {
            "PARAMETER_TYPE_UNSPECIFIED",
            "INT64",
            "STRING",
            "DOUBLE",
          },
          enumDescriptions = {
            "Not used.",
            "Int64 type.",
            "String type.",
            "Double type.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1PercentageAdjustment = {
      description = "An adjustment that applies a flat markup or markdown to an entire bill.",
      id = "GoogleCloudChannelV1PercentageAdjustment",
      properties = {
        percentage = {
          ["$ref"] = "GoogleTypeDecimal",
          description = "The percentage of the bill to adjust. For example: Mark down by 1% => \"-1.00\" Mark up by 1% => \"1.00\" Pass-Through => \"0.00\"",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Period = {
      description = "Represents period in days/months/years.",
      id = "GoogleCloudChannelV1Period",
      properties = {
        duration = {
          description = "Total duration of Period Type defined.",
          format = "int32",
          type = "integer",
        },
        periodType = {
          description = "Period Type.",
          enum = {
            "PERIOD_TYPE_UNSPECIFIED",
            "DAY",
            "MONTH",
            "YEAR",
          },
          enumDescriptions = {
            "Not used.",
            "Day.",
            "Month.",
            "Year.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Plan = {
      description = "The payment plan for the Offer. Describes how to make a payment.",
      id = "GoogleCloudChannelV1Plan",
      properties = {
        billingAccount = {
          description = "Reseller Billing account to charge after an offer transaction. Only present for Google Cloud Platform offers.",
          type = "string",
        },
        paymentCycle = {
          ["$ref"] = "GoogleCloudChannelV1Period",
          description = "Describes how frequently the reseller will be billed, such as once per month.",
        },
        paymentPlan = {
          description = "Describes how a reseller will be billed.",
          enum = {
            "PAYMENT_PLAN_UNSPECIFIED",
            "COMMITMENT",
            "FLEXIBLE",
            "FREE",
            "TRIAL",
            "OFFLINE",
          },
          enumDescriptions = {
            "Not used.",
            "Commitment.",
            "No commitment.",
            "Free.",
            "Trial.",
            "Price and ordering not available through API.",
          },
          type = "string",
        },
        paymentType = {
          description = "Specifies when the payment needs to happen.",
          enum = {
            "PAYMENT_TYPE_UNSPECIFIED",
            "PREPAY",
            "POSTPAY",
          },
          enumDescriptions = {
            "Not used.",
            "Prepay. Amount has to be paid before service is rendered.",
            "Postpay. Reseller is charged at the end of the Payment cycle.",
          },
          type = "string",
        },
        trialPeriod = {
          ["$ref"] = "GoogleCloudChannelV1Period",
          description = "Present for Offers with a trial period. For trial-only Offers, a paid service needs to start before the trial period ends for continued service. For Regular Offers with a trial period, the regular pricing goes into effect when trial period ends, or if paid service is started before the end of the trial period.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Price = {
      description = "Represents the price of the Offer.",
      id = "GoogleCloudChannelV1Price",
      properties = {
        basePrice = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Base price.",
        },
        discount = {
          description = "Discount percentage, represented as decimal. For example, a 20% discount will be represent as 0.2.",
          format = "double",
          type = "number",
        },
        effectivePrice = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Effective Price after applying the discounts.",
        },
        externalPriceUri = {
          description = "Link to external price list, such as link to Google Voice rate card.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1PriceByResource = {
      description = "Represents price by resource type.",
      id = "GoogleCloudChannelV1PriceByResource",
      properties = {
        price = {
          ["$ref"] = "GoogleCloudChannelV1Price",
          description = "Price of the Offer. Present if there are no price phases.",
        },
        pricePhases = {
          description = "Specifies the price by time range.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1PricePhase",
          },
          type = "array",
        },
        resourceType = {
          description = "Resource Type. Example: SEAT",
          enum = {
            "RESOURCE_TYPE_UNSPECIFIED",
            "SEAT",
            "MAU",
            "GB",
            "LICENSED_USER",
            "MINUTES",
            "IAAS_USAGE",
            "SUBSCRIPTION",
          },
          enumDescriptions = {
            "Not used.",
            "Seat.",
            "Monthly active user.",
            "GB (used for storage SKUs).",
            "Active licensed users(for Voice SKUs).",
            "Voice usage.",
            "For IaaS SKUs like Google Cloud Platform, monetization is based on usage accrued on your billing account irrespective of the type of monetizable resource. This enum represents an aggregated resource/container for all usage SKUs on a billing account. Currently, only applicable to Google Cloud Platform.",
            "For Google Cloud Platform subscriptions like Anthos or SAP.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1PricePhase = {
      description = "Specifies the price by the duration of months. For example, a 20% discount for the first six months, then a 10% discount starting on the seventh month.",
      id = "GoogleCloudChannelV1PricePhase",
      properties = {
        firstPeriod = {
          description = "Defines first period for the phase.",
          format = "int32",
          type = "integer",
        },
        lastPeriod = {
          description = "Defines first period for the phase.",
          format = "int32",
          type = "integer",
        },
        periodType = {
          description = "Defines the phase period type.",
          enum = {
            "PERIOD_TYPE_UNSPECIFIED",
            "DAY",
            "MONTH",
            "YEAR",
          },
          enumDescriptions = {
            "Not used.",
            "Day.",
            "Month.",
            "Year.",
          },
          type = "string",
        },
        price = {
          ["$ref"] = "GoogleCloudChannelV1Price",
          description = "Price of the phase. Present if there are no price tiers.",
        },
        priceTiers = {
          description = "Price by the resource tiers.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1PriceTier",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1PriceTier = {
      description = "Defines price at resource tier level. For example, an offer with following definition : * Tier 1: Provide 25% discount for all seats between 1 and 25. * Tier 2: Provide 10% discount for all seats between 26 and 100. * Tier 3: Provide flat 15% discount for all seats above 100. Each of these tiers is represented as a PriceTier.",
      id = "GoogleCloudChannelV1PriceTier",
      properties = {
        firstResource = {
          description = "First resource for which the tier price applies.",
          format = "int32",
          type = "integer",
        },
        lastResource = {
          description = "Last resource for which the tier price applies.",
          format = "int32",
          type = "integer",
        },
        price = {
          ["$ref"] = "GoogleCloudChannelV1Price",
          description = "Price of the tier.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Product = {
      description = "A Product is the entity a customer uses when placing an order. For example, Google Workspace, Google Voice, etc.",
      id = "GoogleCloudChannelV1Product",
      properties = {
        marketingInfo = {
          ["$ref"] = "GoogleCloudChannelV1MarketingInfo",
          description = "Marketing information for the product.",
        },
        name = {
          description = "Resource Name of the Product. Format: products/{product_id}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ProvisionCloudIdentityRequest = {
      description = "Request message for CloudChannelService.ProvisionCloudIdentity",
      id = "GoogleCloudChannelV1ProvisionCloudIdentityRequest",
      properties = {
        cloudIdentityInfo = {
          ["$ref"] = "GoogleCloudChannelV1CloudIdentityInfo",
          description = "CloudIdentity-specific customer information.",
        },
        user = {
          ["$ref"] = "GoogleCloudChannelV1AdminUser",
          description = "Admin user information.",
        },
        validateOnly = {
          description = "Validate the request and preview the review, but do not post it.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ProvisionedService = {
      description = "Service provisioned for an entitlement.",
      id = "GoogleCloudChannelV1ProvisionedService",
      properties = {
        productId = {
          description = "Output only. The product pertaining to the provisioning resource as specified in the Offer.",
          readOnly = true,
          type = "string",
        },
        provisioningId = {
          description = "Output only. Provisioning ID of the entitlement. For Google Workspace, this is the underlying Subscription ID. For Google Cloud Platform, this is the Billing Account ID of the billing subaccount.\"",
          readOnly = true,
          type = "string",
        },
        skuId = {
          description = "Output only. The SKU pertaining to the provisioning resource as specified in the Offer.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1PurchasableOffer = {
      description = "Offer that you can purchase for a customer. This is used in the ListPurchasableOffer API response.",
      id = "GoogleCloudChannelV1PurchasableOffer",
      properties = {
        offer = {
          ["$ref"] = "GoogleCloudChannelV1Offer",
          description = "Offer.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1PurchasableSku = {
      description = "SKU that you can purchase. This is used in ListPurchasableSku API response.",
      id = "GoogleCloudChannelV1PurchasableSku",
      properties = {
        sku = {
          ["$ref"] = "GoogleCloudChannelV1Sku",
          description = "SKU",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RegisterSubscriberRequest = {
      description = "Request Message for RegisterSubscriber.",
      id = "GoogleCloudChannelV1RegisterSubscriberRequest",
      properties = {
        serviceAccount = {
          description = "Required. Service account that provides subscriber access to the registered topic.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RegisterSubscriberResponse = {
      description = "Response Message for RegisterSubscriber.",
      id = "GoogleCloudChannelV1RegisterSubscriberResponse",
      properties = {
        topic = {
          description = "Name of the topic the subscriber will listen to.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RenewalSettings = {
      description = "Renewal settings for renewable Offers.",
      id = "GoogleCloudChannelV1RenewalSettings",
      properties = {
        enableRenewal = {
          description = "If false, the plan will be completed at the end date.",
          type = "boolean",
        },
        paymentCycle = {
          ["$ref"] = "GoogleCloudChannelV1Period",
          description = "Describes how frequently the reseller will be billed, such as once per month.",
        },
        paymentPlan = {
          description = "Describes how a reseller will be billed.",
          enum = {
            "PAYMENT_PLAN_UNSPECIFIED",
            "COMMITMENT",
            "FLEXIBLE",
            "FREE",
            "TRIAL",
            "OFFLINE",
          },
          enumDescriptions = {
            "Not used.",
            "Commitment.",
            "No commitment.",
            "Free.",
            "Trial.",
            "Price and ordering not available through API.",
          },
          type = "string",
        },
        resizeUnitCount = {
          description = "If true and enable_renewal = true, the unit (for example seats or licenses) will be set to the number of active units at renewal time.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Report = {
      description = "The ID and description of a report that was used to generate report data. For example, \"GCP Daily Spend\", \"Google Workspace License Activity\", etc.",
      id = "GoogleCloudChannelV1Report",
      properties = {
        columns = {
          description = "The list of columns included in the report. This defines the schema of the report results.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Column",
          },
          type = "array",
        },
        description = {
          description = "A description of other aspects of the report, such as the products it supports.",
          type = "string",
        },
        displayName = {
          description = "A human-readable name for this report.",
          type = "string",
        },
        name = {
          description = "Required. The report's resource name. Specifies the account and report used to generate report data. The report_id identifier is a UID (for example, `613bf59q`). Name uses the format: accounts/{account_id}/reports/{report_id}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ReportJob = {
      description = "The result of a RunReportJob operation. Contains the name to use in FetchReportResultsRequest.report_job and the status of the operation.",
      id = "GoogleCloudChannelV1ReportJob",
      properties = {
        name = {
          description = "Required. The resource name of a report job. Name uses the format: `accounts/{account_id}/reportJobs/{report_job_id}`",
          type = "string",
        },
        reportStatus = {
          ["$ref"] = "GoogleCloudChannelV1ReportStatus",
          description = "The current status of report generation.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ReportResultsMetadata = {
      description = "The features describing the data. Returned by CloudChannelReportsService.RunReportJob and CloudChannelReportsService.FetchReportResults.",
      id = "GoogleCloudChannelV1ReportResultsMetadata",
      properties = {
        dateRange = {
          ["$ref"] = "GoogleCloudChannelV1DateRange",
          description = "The date range of reported usage.",
        },
        precedingDateRange = {
          ["$ref"] = "GoogleCloudChannelV1DateRange",
          description = "The usage dates immediately preceding `date_range` with the same duration. Use this to calculate trending usage and costs. This is only populated if you request trending data. For example, if `date_range` is July 1-15, `preceding_date_range` will be June 16-30.",
        },
        report = {
          ["$ref"] = "GoogleCloudChannelV1Report",
          description = "Details of the completed report.",
        },
        rowCount = {
          description = "The total number of rows of data in the final report.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ReportStatus = {
      description = "Status of a report generation process.",
      id = "GoogleCloudChannelV1ReportStatus",
      properties = {
        endTime = {
          description = "The report generation's completion time.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The report generation's start time.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the report generation process.",
          enum = {
            "STATE_UNSPECIFIED",
            "STARTED",
            "WRITING",
            "AVAILABLE",
            "FAILED",
          },
          enumDescriptions = {
            "Not used.",
            "Report processing started.",
            "Data generated from the report is being staged.",
            "Report data is available for access.",
            "Report failed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1ReportValue = {
      description = "A single report value.",
      id = "GoogleCloudChannelV1ReportValue",
      properties = {
        dateTimeValue = {
          ["$ref"] = "GoogleTypeDateTime",
          description = "A value of type `google.type.DateTime` (year, month, day, hour, minute, second, and UTC offset or timezone.)",
        },
        dateValue = {
          ["$ref"] = "GoogleTypeDate",
          description = "A value of type `google.type.Date` (year, month, day).",
        },
        decimalValue = {
          ["$ref"] = "GoogleTypeDecimal",
          description = "A value of type `google.type.Decimal`, representing non-integer numeric values.",
        },
        intValue = {
          description = "A value of type `int`.",
          format = "int64",
          type = "string",
        },
        moneyValue = {
          ["$ref"] = "GoogleTypeMoney",
          description = "A value of type `google.type.Money` (currency code, whole units, decimal units).",
        },
        stringValue = {
          description = "A value of type `string`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RepricingAdjustment = {
      description = "A type that represents the various adjustments you can apply to a bill.",
      id = "GoogleCloudChannelV1RepricingAdjustment",
      properties = {
        percentageAdjustment = {
          ["$ref"] = "GoogleCloudChannelV1PercentageAdjustment",
          description = "Flat markup or markdown on an entire bill.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RepricingCondition = {
      description = "Represents the various repricing conditions you can use for a conditional override.",
      id = "GoogleCloudChannelV1RepricingCondition",
      properties = {
        skuGroupCondition = {
          ["$ref"] = "GoogleCloudChannelV1SkuGroupCondition",
          description = "SKU Group condition for override.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RepricingConfig = {
      description = "Configuration for repricing a Google bill over a period of time.",
      id = "GoogleCloudChannelV1RepricingConfig",
      properties = {
        adjustment = {
          ["$ref"] = "GoogleCloudChannelV1RepricingAdjustment",
          description = "Required. Information about the adjustment.",
        },
        channelPartnerGranularity = {
          ["$ref"] = "GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity",
          description = "Applies the repricing configuration at the channel partner level. This is the only supported value for ChannelPartnerRepricingConfig.",
        },
        conditionalOverrides = {
          description = "The conditional overrides to apply for this configuration. If you list multiple overrides, only the first valid override is used. If you don't list any overrides, the API uses the normal adjustment and rebilling basis.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1ConditionalOverride",
          },
          type = "array",
        },
        effectiveInvoiceMonth = {
          ["$ref"] = "GoogleTypeDate",
          description = "Required. The YearMonth when these adjustments activate. The Day field needs to be \"0\" since we only accept YearMonth repricing boundaries.",
        },
        entitlementGranularity = {
          ["$ref"] = "GoogleCloudChannelV1RepricingConfigEntitlementGranularity",
          description = "Applies the repricing configuration at the entitlement level. This is the only supported value for CustomerRepricingConfig.",
        },
        rebillingBasis = {
          description = "Required. The RebillingBasis to use for this bill. Specifies the relative cost based on repricing costs you will apply.",
          enum = {
            "REBILLING_BASIS_UNSPECIFIED",
            "COST_AT_LIST",
            "DIRECT_CUSTOMER_COST",
          },
          enumDescriptions = {
            "Not used.",
            "Use the list cost, also known as the MSRP.",
            "Pass through all discounts except the Reseller Program Discount. If this is the default cost base and no adjustments are specified, the output cost will be exactly what the customer would see if they viewed the bill in the Google Cloud Console.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity = {
      description = "Applies the repricing configuration at the channel partner level. The channel partner value is derived from the resource name. Takes an empty json object.",
      id = "GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity",
      properties = {},
      type = "object",
    },
    GoogleCloudChannelV1RepricingConfigEntitlementGranularity = {
      description = "Applies the repricing configuration at the entitlement level.",
      id = "GoogleCloudChannelV1RepricingConfigEntitlementGranularity",
      properties = {
        entitlement = {
          description = "Resource name of the entitlement. Format: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Row = {
      description = "A row of report values.",
      id = "GoogleCloudChannelV1Row",
      properties = {
        values = {
          description = "The list of values in the row.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1ReportValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RunReportJobRequest = {
      description = "Request message for CloudChannelReportsService.RunReportJob.",
      id = "GoogleCloudChannelV1RunReportJobRequest",
      properties = {
        dateRange = {
          ["$ref"] = "GoogleCloudChannelV1DateRange",
          description = "Optional. The range of usage or invoice dates to include in the result.",
        },
        filter = {
          description = "Optional. A structured string that defines conditions on dimension columns to restrict the report output. Filters support logical operators (AND, OR, NOT) and conditional operators (=, !=, <, >, <=, and >=) using `column_id` as keys. For example: `(customer:\"accounts/C123abc/customers/S456def\" OR customer:\"accounts/C123abc/customers/S789ghi\") AND invoice_start_date.year >= 2022`",
          type = "string",
        },
        languageCode = {
          description = "Optional. The BCP-47 language code, such as \"en-US\". If specified, the response is localized to the corresponding language code if the original data sources support it. Default is \"en-US\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1RunReportJobResponse = {
      description = "Response message for CloudChannelReportsService.RunReportJob.",
      id = "GoogleCloudChannelV1RunReportJobResponse",
      properties = {
        reportJob = {
          ["$ref"] = "GoogleCloudChannelV1ReportJob",
          description = "Pass `report_job.name` to FetchReportResultsRequest.report_job to retrieve the report's results.",
        },
        reportMetadata = {
          ["$ref"] = "GoogleCloudChannelV1ReportResultsMetadata",
          description = "The metadata for the report's results (display name, columns, row count, and date range). If you view this before the operation finishes, you may see incomplete data.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Sku = {
      description = "Represents a product's purchasable Stock Keeping Unit (SKU). SKUs represent the different variations of the product. For example, Google Workspace Business Standard and Google Workspace Business Plus are Google Workspace product SKUs.",
      id = "GoogleCloudChannelV1Sku",
      properties = {
        marketingInfo = {
          ["$ref"] = "GoogleCloudChannelV1MarketingInfo",
          description = "Marketing information for the SKU.",
        },
        name = {
          description = "Resource Name of the SKU. Format: products/{product_id}/skus/{sku_id}",
          type = "string",
        },
        product = {
          ["$ref"] = "GoogleCloudChannelV1Product",
          description = "Product the SKU is associated with.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1SkuGroupCondition = {
      description = "A condition that applies the override if a line item SKU is found in the SKU group.",
      id = "GoogleCloudChannelV1SkuGroupCondition",
      properties = {
        skuGroup = {
          description = "Specifies a SKU group (https://cloud.google.com/skus/sku-groups). Resource name of SKU group. Format: accounts/{account}/skuGroups/{sku_group}. Example: \"accounts/C01234/skuGroups/3d50fd57-3157-4577-a5a9-a219b8490041\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1StartPaidServiceRequest = {
      description = "Request message for CloudChannelService.StartPaidService.",
      id = "GoogleCloudChannelV1StartPaidServiceRequest",
      properties = {
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1SubscriberEvent = {
      description = "Represents information which resellers will get as part of notification from Pub/Sub.",
      id = "GoogleCloudChannelV1SubscriberEvent",
      properties = {
        customerEvent = {
          ["$ref"] = "GoogleCloudChannelV1CustomerEvent",
          description = "Customer event sent as part of Pub/Sub event to partners.",
        },
        entitlementEvent = {
          ["$ref"] = "GoogleCloudChannelV1EntitlementEvent",
          description = "Entitlement event sent as part of Pub/Sub event to partners.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1SuspendEntitlementRequest = {
      description = "Request message for CloudChannelService.SuspendEntitlement.",
      id = "GoogleCloudChannelV1SuspendEntitlementRequest",
      properties = {
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1TransferEligibility = {
      description = "Specifies transfer eligibility of a SKU.",
      id = "GoogleCloudChannelV1TransferEligibility",
      properties = {
        description = {
          description = "Localized description if reseller is not eligible to transfer the SKU.",
          type = "string",
        },
        ineligibilityReason = {
          description = "Specified the reason for ineligibility.",
          enum = {
            "REASON_UNSPECIFIED",
            "PENDING_TOS_ACCEPTANCE",
            "SKU_NOT_ELIGIBLE",
            "SKU_SUSPENDED",
          },
          enumDescriptions = {
            "Not used.",
            "Reseller needs to accept TOS before transferring the SKU.",
            "Reseller not eligible to sell the SKU.",
            "SKU subscription is suspended",
          },
          type = "string",
        },
        isEligible = {
          description = "Whether reseller is eligible to transfer the SKU.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1TransferEntitlementsRequest = {
      description = "Request message for CloudChannelService.TransferEntitlements.",
      id = "GoogleCloudChannelV1TransferEntitlementsRequest",
      properties = {
        authToken = {
          description = "The super admin of the resold customer generates this token to authorize a reseller to access their Cloud Identity and purchase entitlements on their behalf. You can omit this token after authorization. See https://support.google.com/a/answer/7643790 for more details.",
          type = "string",
        },
        entitlements = {
          description = "Required. The new entitlements to create or transfer.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Entitlement",
          },
          type = "array",
        },
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1TransferEntitlementsResponse = {
      description = "Response message for CloudChannelService.TransferEntitlements. This is put in the response field of google.longrunning.Operation.",
      id = "GoogleCloudChannelV1TransferEntitlementsResponse",
      properties = {
        entitlements = {
          description = "The transferred entitlements.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Entitlement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1TransferEntitlementsToGoogleRequest = {
      description = "Request message for CloudChannelService.TransferEntitlementsToGoogle.",
      id = "GoogleCloudChannelV1TransferEntitlementsToGoogleRequest",
      properties = {
        entitlements = {
          description = "Required. The entitlements to transfer to Google.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1Entitlement",
          },
          type = "array",
        },
        requestId = {
          description = "Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1TransferableOffer = {
      description = "TransferableOffer represents an Offer that can be used in Transfer. Read-only.",
      id = "GoogleCloudChannelV1TransferableOffer",
      properties = {
        offer = {
          ["$ref"] = "GoogleCloudChannelV1Offer",
          description = "Offer with parameter constraints updated to allow the Transfer.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1TransferableSku = {
      description = "TransferableSku represents information a reseller needs to view existing provisioned services for a customer that they do not own. Read-only.",
      id = "GoogleCloudChannelV1TransferableSku",
      properties = {
        legacySku = {
          ["$ref"] = "GoogleCloudChannelV1Sku",
          description = "Optional. The customer to transfer has an entitlement with the populated legacy SKU.",
        },
        sku = {
          ["$ref"] = "GoogleCloudChannelV1Sku",
          description = "The SKU pertaining to the provisioning resource as specified in the Offer.",
        },
        transferEligibility = {
          ["$ref"] = "GoogleCloudChannelV1TransferEligibility",
          description = "Describes the transfer eligibility of a SKU.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1TrialSettings = {
      description = "Settings for trial offers.",
      id = "GoogleCloudChannelV1TrialSettings",
      properties = {
        endTime = {
          description = "Date when the trial ends. The value is in milliseconds using the UNIX Epoch format. See an example [Epoch converter](https://www.epochconverter.com).",
          format = "google-datetime",
          type = "string",
        },
        trial = {
          description = "Determines if the entitlement is in a trial or not: * `true` - The entitlement is in trial. * `false` - The entitlement is not in trial.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1UnregisterSubscriberRequest = {
      description = "Request Message for UnregisterSubscriber.",
      id = "GoogleCloudChannelV1UnregisterSubscriberRequest",
      properties = {
        serviceAccount = {
          description = "Required. Service account to unregister from subscriber access to the topic.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1UnregisterSubscriberResponse = {
      description = "Response Message for UnregisterSubscriber.",
      id = "GoogleCloudChannelV1UnregisterSubscriberResponse",
      properties = {
        topic = {
          description = "Name of the topic the service account subscriber access was removed from.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1UpdateChannelPartnerLinkRequest = {
      description = "Request message for CloudChannelService.UpdateChannelPartnerLink",
      id = "GoogleCloudChannelV1UpdateChannelPartnerLinkRequest",
      properties = {
        channelPartnerLink = {
          ["$ref"] = "GoogleCloudChannelV1ChannelPartnerLink",
          description = "Required. The channel partner link to update. Only channel_partner_link.link_state is allowed for updates.",
        },
        updateMask = {
          description = "Required. The update mask that applies to the resource. The only allowable value for an update mask is channel_partner_link.link_state.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1Value = {
      description = "Data type and value of a parameter.",
      id = "GoogleCloudChannelV1Value",
      properties = {
        boolValue = {
          description = "Represents a boolean value.",
          type = "boolean",
        },
        doubleValue = {
          description = "Represents a double value.",
          format = "double",
          type = "number",
        },
        int64Value = {
          description = "Represents an int64 value.",
          format = "int64",
          type = "string",
        },
        protoValue = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Represents an 'Any' proto value.",
          type = "object",
        },
        stringValue = {
          description = "Represents a string value.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1AssociationInfo = {
      description = "Association links that an entitlement has to other entitlements.",
      id = "GoogleCloudChannelV1alpha1AssociationInfo",
      properties = {
        baseEntitlement = {
          description = "The name of the base entitlement, for which this entitlement is an add-on.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1ChannelPartnerEvent = {
      description = "Represents Pub/Sub messages about updates to a Channel Partner. You can retrieve updated values through the ChannelPartnerLinks API.",
      id = "GoogleCloudChannelV1alpha1ChannelPartnerEvent",
      properties = {
        channelPartner = {
          description = "Resource name for the Channel Partner Link. Channel_partner uses the format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}",
          type = "string",
        },
        eventType = {
          description = "Type of event performed on the Channel Partner.",
          enum = {
            "TYPE_UNSPECIFIED",
            "LINK_STATE_CHANGED",
            "PARTNER_ADVANTAGE_INFO_CHANGED",
          },
          enumDescriptions = {
            "Default value. Does not display if there are no errors.",
            "The Channel Partner link state changed.",
            "The Channel Partner's Partner Advantage information changed. This can entail the Channel Partner's authorization to sell a product in a particular region.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1Column = {
      description = "The definition of a report column. Specifies the data properties in the corresponding position of the report rows.",
      id = "GoogleCloudChannelV1alpha1Column",
      properties = {
        columnId = {
          description = "The unique name of the column (for example, customer_domain, channel_partner, customer_cost). You can use column IDs in RunReportJobRequest.filter. To see all reports and their columns, call CloudChannelReportsService.ListReports.",
          type = "string",
        },
        dataType = {
          description = "The type of the values for this column.",
          enum = {
            "DATA_TYPE_UNSPECIFIED",
            "STRING",
            "INT",
            "DECIMAL",
            "MONEY",
            "DATE",
            "DATE_TIME",
          },
          enumDescriptions = {
            "Not used.",
            "ReportValues for this column will use string_value.",
            "ReportValues for this column will use int_value.",
            "ReportValues for this column will use decimal_value.",
            "ReportValues for this column will use money_value.",
            "ReportValues for this column will use date_value.",
            "ReportValues for this column will use date_time_value.",
          },
          type = "string",
        },
        displayName = {
          description = "The column's display name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1CommitmentSettings = {
      description = "Commitment settings for commitment-based offers.",
      id = "GoogleCloudChannelV1alpha1CommitmentSettings",
      properties = {
        endTime = {
          description = "Output only. Commitment end timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        renewalSettings = {
          ["$ref"] = "GoogleCloudChannelV1alpha1RenewalSettings",
          description = "Optional. Renewal settings applicable for a commitment-based Offer.",
        },
        startTime = {
          description = "Output only. Commitment start timestamp.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1CustomerEvent = {
      description = "Represents Pub/Sub message content describing customer update.",
      id = "GoogleCloudChannelV1alpha1CustomerEvent",
      properties = {
        customer = {
          description = "Resource name of the customer. Format: accounts/{account_id}/customers/{customer_id}",
          type = "string",
        },
        eventType = {
          description = "Type of event which happened on the customer.",
          enum = {
            "TYPE_UNSPECIFIED",
            "PRIMARY_DOMAIN_CHANGED",
            "PRIMARY_DOMAIN_VERIFIED",
          },
          enumDescriptions = {
            "Not used.",
            "Primary domain for customer was changed.",
            "Primary domain of the customer has been verified.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1DateRange = {
      description = "A representation of usage or invoice date ranges.",
      id = "GoogleCloudChannelV1alpha1DateRange",
      properties = {
        invoiceEndDate = {
          ["$ref"] = "GoogleTypeDate",
          description = "The latest invoice date (exclusive). If your product uses monthly invoices, and this value is not the beginning of a month, this will adjust the date to the first day of the following month.",
        },
        invoiceStartDate = {
          ["$ref"] = "GoogleTypeDate",
          description = "The earliest invoice date (inclusive). If your product uses monthly invoices, and this value is not the beginning of a month, this will adjust the date to the first day of the given month.",
        },
        usageEndDateTime = {
          ["$ref"] = "GoogleTypeDateTime",
          description = "The latest usage date time (exclusive). If you use time groupings (daily, weekly, etc), each group uses midnight to midnight (Pacific time). The usage end date is rounded down to include all usage from the specified date. We recommend that clients pass `usage_start_date_time` in Pacific time.",
        },
        usageStartDateTime = {
          ["$ref"] = "GoogleTypeDateTime",
          description = "The earliest usage date time (inclusive). If you use time groupings (daily, weekly, etc), each group uses midnight to midnight (Pacific time). The usage start date is rounded down to include all usage from the specified date. We recommend that clients pass `usage_start_date_time` in Pacific time.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1Entitlement = {
      description = "An entitlement is a representation of a customer's ability to use a service.",
      id = "GoogleCloudChannelV1alpha1Entitlement",
      properties = {
        assignedUnits = {
          description = "The current number of users that are assigned a license for the product defined in provisioned_service.skuId. Read-only. Deprecated: Use `parameters` instead.",
          format = "int32",
          type = "integer",
        },
        associationInfo = {
          ["$ref"] = "GoogleCloudChannelV1alpha1AssociationInfo",
          description = "Association information to other entitlements.",
        },
        channelPartnerId = {
          description = "Cloud Identity ID of a channel partner who will be the direct reseller for the customer's order. This field is generally used in 2-tier ordering, where the order is placed by a top-level distributor on behalf of their channel partner or reseller. Required for distributors. Deprecated: `channel_partner_id` has been moved to the Customer.",
          type = "string",
        },
        commitmentSettings = {
          ["$ref"] = "GoogleCloudChannelV1alpha1CommitmentSettings",
          description = "Commitment settings for a commitment-based Offer. Required for commitment based offers.",
        },
        createTime = {
          description = "Output only. The time at which the entitlement is created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        maxUnits = {
          description = "Maximum number of units for a non commitment-based Offer, such as Flexible, Trial or Free entitlements. For commitment-based entitlements, this is a read-only field, which only the internal support team can update. Deprecated: Use `parameters` instead.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Output only. Resource name of an entitlement in the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}.",
          readOnly = true,
          type = "string",
        },
        numUnits = {
          description = "Number of units for a commitment-based Offer. For example, for seat-based Offers, this would be the number of seats; for license-based Offers, this would be the number of licenses. Required for creating commitment-based Offers. Deprecated: Use `parameters` instead.",
          format = "int32",
          type = "integer",
        },
        offer = {
          description = "Required. The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.",
          type = "string",
        },
        parameters = {
          description = "Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. The response may include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. - max_units: The maximum assignable units for a flexible offer. - num_units: The total commitment for commitment-based offers.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1alpha1Parameter",
          },
          type = "array",
        },
        provisionedService = {
          ["$ref"] = "GoogleCloudChannelV1alpha1ProvisionedService",
          description = "Output only. Service provisioning details for the entitlement.",
          readOnly = true,
        },
        provisioningState = {
          description = "Output only. Current provisioning state of the entitlement.",
          enum = {
            "PROVISIONING_STATE_UNSPECIFIED",
            "ACTIVE",
            "CANCELED",
            "COMPLETE",
            "PENDING",
            "SUSPENDED",
          },
          enumDescriptions = {
            "Not used.",
            "The entitlement is currently active.",
            "The entitlement was canceled. After an entitlement is `CANCELED`, its status will not change. Deprecated: Canceled entitlements will no longer be visible.",
            "The entitlement reached end of term and was not renewed. After an entitlement is `COMPLETE`, its status will not change. Deprecated: This is represented as ProvisioningState=SUSPENDED and suspensionReason in (TRIAL_ENDED, RENEWAL_WITH_TYPE_CANCEL)",
            "The entitlement is pending. Deprecated: This is represented as ProvisioningState=SUSPENDED and suspensionReason=PENDING_TOS_ACCEPTANCE",
            "The entitlement is currently suspended.",
          },
          readOnly = true,
          type = "string",
        },
        purchaseOrderId = {
          description = "Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.",
          type = "string",
        },
        suspensionReasons = {
          description = "Output only. Enumerable of all current suspension reasons for an entitlement.",
          items = {
            enum = {
              "SUSPENSION_REASON_UNSPECIFIED",
              "RESELLER_INITIATED",
              "TRIAL_ENDED",
              "RENEWAL_WITH_TYPE_CANCEL",
              "PENDING_TOS_ACCEPTANCE",
              "OTHER",
            },
            enumDescriptions = {
              "Not used.",
              "Entitlement was manually suspended by the Reseller.",
              "Trial ended.",
              "Entitlement renewal was canceled.",
              "Entitlement was automatically suspended on creation for pending ToS acceptance on customer.",
              "Other reasons (internal reasons, abuse, etc.).",
            },
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        trialSettings = {
          ["$ref"] = "GoogleCloudChannelV1alpha1TrialSettings",
          description = "Output only. Settings for trial offers.",
          readOnly = true,
        },
        updateTime = {
          description = "Output only. The time at which the entitlement is updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1EntitlementEvent = {
      description = "Represents Pub/Sub message content describing entitlement update.",
      id = "GoogleCloudChannelV1alpha1EntitlementEvent",
      properties = {
        entitlement = {
          description = "Resource name of an entitlement of the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}",
          type = "string",
        },
        eventType = {
          description = "Type of event which happened on the entitlement.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CREATED",
            "PRICE_PLAN_SWITCHED",
            "COMMITMENT_CHANGED",
            "RENEWED",
            "SUSPENDED",
            "ACTIVATED",
            "CANCELLED",
            "SKU_CHANGED",
            "RENEWAL_SETTING_CHANGED",
            "PAID_SERVICE_STARTED",
            "LICENSE_ASSIGNMENT_CHANGED",
            "LICENSE_CAP_CHANGED",
          },
          enumDescriptions = {
            "Not used.",
            "A new entitlement was created.",
            "The offer type associated with an entitlement was changed. This is not triggered if an entitlement converts from a commit offer to a flexible offer as part of a renewal.",
            "Annual commitment for a commit plan was changed.",
            "An annual entitlement was renewed.",
            "Entitlement was suspended.",
            "Entitlement was unsuspended.",
            "Entitlement was cancelled.",
            "Entitlement was upgraded or downgraded (e.g. from Google Workspace Business Standard to Google Workspace Business Plus).",
            "The renewal settings of an entitlement has changed.",
            "Paid service has started on trial entitlement.",
            "License was assigned to or revoked from a user.",
            "License cap was changed for the entitlement.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1OperationMetadata = {
      description = "Provides contextual information about a google.longrunning.Operation.",
      id = "GoogleCloudChannelV1alpha1OperationMetadata",
      properties = {
        operationType = {
          description = "The RPC that initiated this Long Running Operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE_ENTITLEMENT",
            "CHANGE_QUANTITY",
            "CHANGE_RENEWAL_SETTINGS",
            "CHANGE_PLAN",
            "START_PAID_SERVICE",
            "CHANGE_SKU",
            "ACTIVATE_ENTITLEMENT",
            "SUSPEND_ENTITLEMENT",
            "CANCEL_ENTITLEMENT",
            "TRANSFER_ENTITLEMENTS",
            "TRANSFER_ENTITLEMENTS_TO_GOOGLE",
            "CHANGE_OFFER",
            "CHANGE_PARAMETERS",
            "PROVISION_CLOUD_IDENTITY",
          },
          enumDescriptions = {
            "Not used.",
            "Long Running Operation was triggered by CreateEntitlement.",
            "Long Running Operation was triggered by ChangeQuantity.",
            "Long Running Operation was triggered by ChangeRenewalSettings.",
            "Long Running Operation was triggered by ChangePlan.",
            "Long Running Operation was triggered by StartPaidService.",
            "Long Running Operation was triggered by ChangeSku.",
            "Long Running Operation was triggered by ActivateEntitlement.",
            "Long Running Operation was triggered by SuspendEntitlement.",
            "Long Running Operation was triggered by CancelEntitlement.",
            "Long Running Operation was triggered by TransferEntitlements.",
            "Long Running Operation was triggered by TransferEntitlementsToGoogle.",
            "Long Running Operation was triggered by ChangeOffer.",
            "Long Running Operation was triggered by ChangeParameters.",
            "Long Running Operation was triggered by ProvisionCloudIdentity.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1Parameter = {
      description = "Definition for extended entitlement parameters.",
      id = "GoogleCloudChannelV1alpha1Parameter",
      properties = {
        editable = {
          description = "Output only. Specifies whether this parameter is allowed to be changed. For example, for a Google Workspace Business Starter entitlement in commitment plan, num_units is editable when entitlement is active.",
          readOnly = true,
          type = "boolean",
        },
        name = {
          description = "Name of the parameter.",
          type = "string",
        },
        value = {
          ["$ref"] = "GoogleCloudChannelV1alpha1Value",
          description = "Value of the parameter.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1Period = {
      description = "Represents period in days/months/years.",
      id = "GoogleCloudChannelV1alpha1Period",
      properties = {
        duration = {
          description = "Total duration of Period Type defined.",
          format = "int32",
          type = "integer",
        },
        periodType = {
          description = "Period Type.",
          enum = {
            "PERIOD_TYPE_UNSPECIFIED",
            "DAY",
            "MONTH",
            "YEAR",
          },
          enumDescriptions = {
            "Not used.",
            "Day.",
            "Month.",
            "Year.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1ProvisionedService = {
      description = "Service provisioned for an entitlement.",
      id = "GoogleCloudChannelV1alpha1ProvisionedService",
      properties = {
        productId = {
          description = "Output only. The product pertaining to the provisioning resource as specified in the Offer.",
          readOnly = true,
          type = "string",
        },
        provisioningId = {
          description = "Output only. Provisioning ID of the entitlement. For Google Workspace, this is the underlying Subscription ID. For Google Cloud Platform, this is the Billing Account ID of the billing subaccount.\"",
          readOnly = true,
          type = "string",
        },
        skuId = {
          description = "Output only. The SKU pertaining to the provisioning resource as specified in the Offer.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1RenewalSettings = {
      description = "Renewal settings for renewable Offers.",
      id = "GoogleCloudChannelV1alpha1RenewalSettings",
      properties = {
        disableCommitment = {
          description = "If true, disables commitment-based offer on renewal and switches to flexible or pay as you go. Deprecated: Use `payment_plan` instead.",
          type = "boolean",
        },
        enableRenewal = {
          description = "If false, the plan will be completed at the end date.",
          type = "boolean",
        },
        paymentCycle = {
          ["$ref"] = "GoogleCloudChannelV1alpha1Period",
          description = "Describes how frequently the reseller will be billed, such as once per month.",
        },
        paymentOption = {
          description = "Set if enable_renewal=true. Deprecated: Use `payment_cycle` instead.",
          enum = {
            "PAYMENT_OPTION_UNSPECIFIED",
            "ANNUAL",
            "MONTHLY",
          },
          enumDescriptions = {
            "Not used.",
            "Paid in yearly installments.",
            "Paid in monthly installments.",
          },
          type = "string",
        },
        paymentPlan = {
          description = "Describes how a reseller will be billed.",
          enum = {
            "PAYMENT_PLAN_UNSPECIFIED",
            "COMMITMENT",
            "FLEXIBLE",
            "FREE",
            "TRIAL",
            "OFFLINE",
          },
          enumDescriptions = {
            "Not used.",
            "Commitment.",
            "No commitment.",
            "Free.",
            "Trial.",
            "Price and ordering not available through API.",
          },
          type = "string",
        },
        resizeUnitCount = {
          description = "If true and enable_renewal = true, the unit (for example seats or licenses) will be set to the number of active units at renewal time.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1Report = {
      description = "The ID and description of a report that was used to generate report data. For example, \"GCP Daily Spend\", \"Google Workspace License Activity\", etc.",
      id = "GoogleCloudChannelV1alpha1Report",
      properties = {
        columns = {
          description = "The list of columns included in the report. This defines the schema of the report results.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1alpha1Column",
          },
          type = "array",
        },
        description = {
          description = "A description of other aspects of the report, such as the products it supports.",
          type = "string",
        },
        displayName = {
          description = "A human-readable name for this report.",
          type = "string",
        },
        name = {
          description = "Required. The report's resource name. Specifies the account and report used to generate report data. The report_id identifier is a UID (for example, `613bf59q`). Name uses the format: accounts/{account_id}/reports/{report_id}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1ReportJob = {
      description = "The result of a RunReportJob operation. Contains the name to use in FetchReportResultsRequest.report_job and the status of the operation.",
      id = "GoogleCloudChannelV1alpha1ReportJob",
      properties = {
        name = {
          description = "Required. The resource name of a report job. Name uses the format: `accounts/{account_id}/reportJobs/{report_job_id}`",
          type = "string",
        },
        reportStatus = {
          ["$ref"] = "GoogleCloudChannelV1alpha1ReportStatus",
          description = "The current status of report generation.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1ReportResultsMetadata = {
      description = "The features describing the data. Returned by CloudChannelReportsService.RunReportJob and CloudChannelReportsService.FetchReportResults.",
      id = "GoogleCloudChannelV1alpha1ReportResultsMetadata",
      properties = {
        dateRange = {
          ["$ref"] = "GoogleCloudChannelV1alpha1DateRange",
          description = "The date range of reported usage.",
        },
        precedingDateRange = {
          ["$ref"] = "GoogleCloudChannelV1alpha1DateRange",
          description = "The usage dates immediately preceding `date_range` with the same duration. Use this to calculate trending usage and costs. This is only populated if you request trending data. For example, if `date_range` is July 1-15, `preceding_date_range` will be June 16-30.",
        },
        report = {
          ["$ref"] = "GoogleCloudChannelV1alpha1Report",
          description = "Details of the completed report.",
        },
        rowCount = {
          description = "The total number of rows of data in the final report.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1ReportStatus = {
      description = "Status of a report generation process.",
      id = "GoogleCloudChannelV1alpha1ReportStatus",
      properties = {
        endTime = {
          description = "The report generation's completion time.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The report generation's start time.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "The current state of the report generation process.",
          enum = {
            "STATE_UNSPECIFIED",
            "STARTED",
            "WRITING",
            "AVAILABLE",
            "FAILED",
          },
          enumDescriptions = {
            "Not used.",
            "Report processing started.",
            "Data generated from the report is being staged.",
            "Report data is available for access.",
            "Report failed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1RunReportJobResponse = {
      description = "Response message for CloudChannelReportsService.RunReportJob.",
      id = "GoogleCloudChannelV1alpha1RunReportJobResponse",
      properties = {
        reportJob = {
          ["$ref"] = "GoogleCloudChannelV1alpha1ReportJob",
          description = "Pass `report_job.name` to FetchReportResultsRequest.report_job to retrieve the report's results.",
        },
        reportMetadata = {
          ["$ref"] = "GoogleCloudChannelV1alpha1ReportResultsMetadata",
          description = "The metadata for the report's results (display name, columns, row count, and date range). If you view this before the operation finishes, you may see incomplete data.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1SubscriberEvent = {
      description = "Represents information which resellers will get as part of notification from Pub/Sub.",
      id = "GoogleCloudChannelV1alpha1SubscriberEvent",
      properties = {
        channelPartnerEvent = {
          ["$ref"] = "GoogleCloudChannelV1alpha1ChannelPartnerEvent",
          description = "Channel Partner event sent as part of Pub/Sub event to partners.",
        },
        customerEvent = {
          ["$ref"] = "GoogleCloudChannelV1alpha1CustomerEvent",
          description = "Customer event sent as part of Pub/Sub event to partners.",
        },
        entitlementEvent = {
          ["$ref"] = "GoogleCloudChannelV1alpha1EntitlementEvent",
          description = "Entitlement event sent as part of Pub/Sub event to partners.",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1TransferEntitlementsResponse = {
      description = "Response message for CloudChannelService.TransferEntitlements. This is put in the response field of google.longrunning.Operation.",
      id = "GoogleCloudChannelV1alpha1TransferEntitlementsResponse",
      properties = {
        entitlements = {
          description = "The transferred entitlements.",
          items = {
            ["$ref"] = "GoogleCloudChannelV1alpha1Entitlement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1TrialSettings = {
      description = "Settings for trial offers.",
      id = "GoogleCloudChannelV1alpha1TrialSettings",
      properties = {
        endTime = {
          description = "Date when the trial ends. The value is in milliseconds using the UNIX Epoch format. See an example [Epoch converter](https://www.epochconverter.com).",
          format = "google-datetime",
          type = "string",
        },
        trial = {
          description = "Determines if the entitlement is in a trial or not: * `true` - The entitlement is in trial. * `false` - The entitlement is not in trial.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudChannelV1alpha1Value = {
      description = "Data type and value of a parameter.",
      id = "GoogleCloudChannelV1alpha1Value",
      properties = {
        boolValue = {
          description = "Represents a boolean value.",
          type = "boolean",
        },
        doubleValue = {
          description = "Represents a double value.",
          format = "double",
          type = "number",
        },
        int64Value = {
          description = "Represents an int64 value.",
          format = "int64",
          type = "string",
        },
        protoValue = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Represents an 'Any' proto value.",
          type = "object",
        },
        stringValue = {
          description = "Represents a string value.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleLongrunningCancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "GoogleLongrunningCancelOperationRequest",
      properties = {},
      type = "object",
    },
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
          description = "The error result of the operation in case of failure or cancellation.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.",
          type = "object",
        },
        name = {
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.",
          type = "object",
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
    GoogleRpcStatus = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpcStatus",
      properties = {
        code = {
          description = "The status code, which should be an enum value of google.rpc.Code.",
          format = "int32",
          type = "integer",
        },
        details = {
          description = "A list of messages that carry the error details. There is a common set of message types for APIs to use.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        message = {
          description = "A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypeDate = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "GoogleTypeDate",
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
    GoogleTypeDateTime = {
      description = "Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year, month, or day are 0, the DateTime is considered not to have a specific year, month, or day respectively. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.",
      id = "GoogleTypeDateTime",
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
          ["$ref"] = "GoogleTypeTimeZone",
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
    GoogleTypeDecimal = {
      description = "A representation of a decimal value, such as 2.5. Clients may convert values into language-native decimal formats, such as Java's BigDecimal or Python's decimal.Decimal. [BigDecimal]: https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html [decimal.Decimal]: https://docs.python.org/3/library/decimal.html",
      id = "GoogleTypeDecimal",
      properties = {
        value = {
          description = "The decimal value, as a string. The string representation consists of an optional sign, `+` (`U+002B`) or `-` (`U+002D`), followed by a sequence of zero or more decimal digits (\"the integer\"), optionally followed by a fraction, optionally followed by an exponent. An empty string **should** be interpreted as `0`. The fraction consists of a decimal point followed by zero or more decimal digits. The string must contain at least one digit in either the integer or the fraction. The number formed by the sign, the integer and the fraction is referred to as the significand. The exponent consists of the character `e` (`U+0065`) or `E` (`U+0045`) followed by one or more decimal digits. Services **should** normalize decimal values before storing them by: - Removing an explicitly-provided `+` sign (`+2.5` -> `2.5`). - Replacing a zero-length integer value with `0` (`.5` -> `0.5`). - Coercing the exponent character to upper-case, with explicit sign (`2.5e8` -> `2.5E+8`). - Removing an explicitly-provided zero exponent (`2.5E0` -> `2.5`). Services **may** perform additional normalization based on its own needs and the internal decimal implementation selected, such as shifting the decimal point and exponent value together (example: `2.5E-1` <-> `0.25`). Additionally, services **may** preserve trailing zeroes in the fraction to indicate increased precision, but are not required to do so. Note that only the `.` character is supported to divide the integer and the fraction; `,` **should not** be supported regardless of locale. Additionally, thousand separators **should not** be supported. If a service does support them, values **must** be normalized. The ENBF grammar is: DecimalString = '' | [Sign] Significand [Exponent]; Sign = '+' | '-'; Significand = Digits '.' | [Digits] '.' Digits; Exponent = ('e' | 'E') [Sign] Digits; Digits = { '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' }; Services **should** clearly document the range of supported values, the maximum supported precision (total number of digits), and, if applicable, the scale (number of digits after the decimal point), as well as how it behaves when receiving out-of-bounds values. Services **may** choose to accept values passed as input even when the value has a higher precision or scale than the service supports, and **should** round the value to fit the supported scale. Alternatively, the service **may** error with `400 Bad Request` (`INVALID_ARGUMENT` in gRPC) if precision would be lost. Services **should** error with `400 Bad Request` (`INVALID_ARGUMENT` in gRPC) if the service receives a value outside of the supported range.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypeMoney = {
      description = "Represents an amount of money with its currency type.",
      id = "GoogleTypeMoney",
      properties = {
        currencyCode = {
          description = "The three-letter currency code defined in ISO 4217.",
          type = "string",
        },
        nanos = {
          description = "Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.",
          format = "int32",
          type = "integer",
        },
        units = {
          description = "The whole units of the amount. For example if `currencyCode` is `\"USD\"`, then 1 unit is one US dollar.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypePostalAddress = {
      description = "Represents a postal address, e.g. for postal delivery or payments addresses. Given a postal address, a postal service can deliver items to a premise, P.O. Box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage an address would be created via user input or from importing existing data, depending on the type of process. Advice on address input / editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput) - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, please see: https://support.google.com/business/answer/6397478",
      id = "GoogleTypePostalAddress",
      properties = {
        addressLines = {
          description = "Unstructured address lines describing the lower levels of an address. Because values in address_lines do not have type information and may sometimes contain multiple values in a single field (e.g. \"Austin, TX\"), it is important that the line order is clear. The order of address lines should be \"envelope order\" for the country/region of the address. In places where this can vary (e.g. Japan), address_language is used to make it explicit (e.g. \"ja\" for large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large). This way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a region_code with all remaining information placed in the address_lines. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an address only containing a region_code and address_lines, and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).",
          items = {
            type = "string",
          },
          type = "array",
        },
        administrativeArea = {
          description = "Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community (e.g. \"Barcelona\" and not \"Catalonia\"). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland this should be left unpopulated.",
          type = "string",
        },
        languageCode = {
          description = "Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address' country/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: \"zh-Hant\", \"ja\", \"ja-Latn\", \"en\".",
          type = "string",
        },
        locality = {
          description = "Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use address_lines.",
          type = "string",
        },
        organization = {
          description = "Optional. The name of the organization at the address.",
          type = "string",
        },
        postalCode = {
          description = "Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.).",
          type = "string",
        },
        recipients = {
          description = "Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain \"care of\" information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regionCode = {
          description = "Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https://cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: \"CH\" for Switzerland.",
          type = "string",
        },
        revision = {
          description = "The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. All new revisions **must** be backward compatible with old revisions.",
          format = "int32",
          type = "integer",
        },
        sortingCode = {
          description = "Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like \"CEDEX\", optionally followed by a number (e.g. \"CEDEX 7\"), or just a number alone, representing the \"sector code\" (Jamaica), \"delivery area indicator\" (Malawi) or \"post office indicator\" (e.g. Côte d'Ivoire).",
          type = "string",
        },
        sublocality = {
          description = "Optional. Sublocality of the address. For example, this can be neighborhoods, boroughs, districts.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypeTimeZone = {
      description = "Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).",
      id = "GoogleTypeTimeZone",
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
  },
  servicePath = "",
  title = "Cloud Channel API",
  version = "v1",
  version_module = true,
}